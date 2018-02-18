; ModuleID = '00322.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1199071997, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 -2, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_12 = internal global i32 -15406260, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_86 = internal global [3 x i64] [i64 -8, i64 -8, i64 -8], align 16
@.str.5 = private unnamed_addr constant [8 x i8] c"g_86[i]\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_88 = internal global i64 2, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_88\00", align 1
@g_96 = internal global [5 x [10 x [4 x i16]]] [[10 x [4 x i16]] [[4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969]], [10 x [4 x i16]] [[4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969]], [10 x [4 x i16]] [[4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969]], [10 x [4 x i16]] [[4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969]], [10 x [4 x i16]] [[4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969], [4 x i16] [i16 -23329, i16 -19969, i16 -23329, i16 -4], [4 x i16] [i16 -23329, i16 -4, i16 -23329, i16 -19969]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_96[i][j][k]\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_104 = internal global i16 -17420, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_107 = internal global [2 x i16] [i16 -1, i16 -1], align 2
@.str.11 = private unnamed_addr constant [9 x i8] c"g_107[i]\00", align 1
@g_115 = internal global i8 -8, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_115\00", align 1
@g_117 = internal global i64 9121467387276548912, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_135 = internal global [5 x [9 x i32]] [[9 x i32] [i32 -4, i32 -1471203552, i32 -1, i32 -929558842, i32 0, i32 -1783798874, i32 -1434006314, i32 -1783798874, i32 0], [9 x i32] [i32 1601552540, i32 -1434006314, i32 -1434006314, i32 1601552540, i32 -1058614273, i32 -1471203552, i32 1935296120, i32 0, i32 -1], [9 x i32] [i32 -4, i32 0, i32 -1434006314, i32 1, i32 1, i32 -1434006314, i32 0, i32 -4, i32 7], [9 x i32] [i32 1, i32 1, i32 -1, i32 -4, i32 -1058614273, i32 0, i32 0, i32 -1058614273, i32 -4], [9 x i32] [i32 -929558842, i32 1, i32 -929558842, i32 -1471203552, i32 0, i32 1, i32 1935296120, i32 7, i32 7]], align 16
@.str.14 = private unnamed_addr constant [12 x i8] c"g_135[i][j]\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_156\00", align 1
@g_159 = internal global [7 x [5 x [1 x i16]]] [[5 x [1 x i16]] [[1 x i16] [i16 -20468], [1 x i16] [i16 17468], [1 x i16] [i16 17468], [1 x i16] [i16 -20468], [1 x i16] [i16 28634]], [5 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] zeroinitializer, [1 x i16] [i16 17468], [1 x i16] zeroinitializer, [1 x i16] [i16 1]], [5 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17468], [1 x i16] zeroinitializer, [1 x i16] zeroinitializer, [1 x i16] [i16 28634]], [5 x [1 x i16]] [[1 x i16] [i16 -20468], [1 x i16] [i16 17468], [1 x i16] [i16 17468], [1 x i16] [i16 -20468], [1 x i16] [i16 28634]], [5 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] zeroinitializer, [1 x i16] [i16 17468], [1 x i16] zeroinitializer, [1 x i16] [i16 1]], [5 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 17468], [1 x i16] zeroinitializer, [1 x i16] zeroinitializer, [1 x i16] [i16 28634]], [5 x [1 x i16]] [[1 x i16] [i16 -20468], [1 x i16] [i16 17468], [1 x i16] [i16 17468], [1 x i16] [i16 -20468], [1 x i16] [i16 28634]]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_159[i][j][k]\00", align 1
@g_283 = internal global i8 -4, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_283\00", align 1
@g_293 = internal global [4 x [7 x [3 x i32]]] [[7 x [3 x i32]] [[3 x i32] [i32 -1, i32 -2, i32 -1170437645], [3 x i32] [i32 -1080817176, i32 0, i32 466041189], [3 x i32] [i32 -1942530751, i32 -2, i32 -1], [3 x i32] [i32 792941697, i32 -1394543362, i32 792941697], [3 x i32] [i32 -2, i32 -1, i32 1], [3 x i32] [i32 1, i32 267927226, i32 -7], [3 x i32] [i32 -1, i32 1, i32 -1]], [7 x [3 x i32]] [[3 x i32] [i32 2118633772, i32 -1426602381, i32 -1330446154], [3 x i32] [i32 -1, i32 0, i32 1013456311], [3 x i32] [i32 1, i32 1, i32 -1394543362], [3 x i32] [i32 -503244458, i32 1013456311, i32 -1], [3 x i32] [i32 -1, i32 1, i32 -1080817176], [3 x i32] [i32 0, i32 -1942530751, i32 -1], [3 x i32] [i32 2118633772, i32 -1, i32 -1080817176]], [7 x [3 x i32]] [[3 x i32] [i32 -9, i32 -1, i32 -1], [3 x i32] [i32 -1330446154, i32 746536629, i32 -1426602381], [3 x i32] [i32 -1170437645, i32 4, i32 -1], [3 x i32] [i32 1906717138, i32 267927226, i32 438213357], [3 x i32] [i32 -1, i32 0, i32 0], [3 x i32] [i32 8, i32 267927226, i32 792941697], [3 x i32] [i32 0, i32 4, i32 0]], [7 x [3 x i32]] [[3 x i32] [i32 267927226, i32 746536629, i32 -1], [3 x i32] [i32 1013456311, i32 -1, i32 1], [3 x i32] [i32 792941697, i32 -1, i32 1029834171], [3 x i32] [i32 -1, i32 -1942530751, i32 -2], [3 x i32] [i32 792941697, i32 1, i32 2118633772], [3 x i32] [i32 1013456311, i32 1013456311, i32 4], [3 x i32] [i32 267927226, i32 -1080817176, i32 466041189]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_293[i][j][k]\00", align 1
@g_355 = internal global i32 331414441, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_355\00", align 1
@g_357 = internal global i64 -6, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_357\00", align 1
@g_416 = internal global i64 -9002761007885088823, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_416\00", align 1
@g_541 = internal global i32 -1054600797, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_541\00", align 1
@g_649 = internal global i32 1204915884, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_649\00", align 1
@g_694 = internal global i8 126, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_694\00", align 1
@g_705 = internal global i8 97, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_705\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_762\00", align 1
@g_815 = internal global i32 1833843608, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_815\00", align 1
@g_874 = internal global i8 -1, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_874\00", align 1
@g_1255 = internal global i64 -1874524572857396502, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1255\00", align 1
@g_1258 = internal global i16 -7, align 2
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1258\00", align 1
@g_1495 = internal global i64 -7867071708110289568, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1495\00", align 1
@g_1497 = internal global [5 x i8] c"\01\01\01\01\01", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"g_1497[i]\00", align 1
@g_1602 = internal global i32 1, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1602\00", align 1
@g_1757 = internal global i32 1, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1757\00", align 1
@g_1802 = internal global i64 -1269137918466571589, align 8
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1802\00", align 1
@g_1832 = internal global i8 5, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1832\00", align 1
@g_1835 = internal global i16 -3, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1835\00", align 1
@g_2036 = internal global i32 -255566181, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_2036\00", align 1
@g_2131 = internal global i16 -19089, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2131\00", align 1
@g_2230 = internal global i16 5, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2230\00", align 1
@g_2290 = internal global i32 920904968, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2290\00", align 1
@g_2308 = internal global i32 -2139233578, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2308\00", align 1
@g_2374 = internal global i64 -2, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2374\00", align 1
@g_2655 = internal global i64 3141278769567236708, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2655\00", align 1
@g_2677 = internal global [5 x [6 x [7 x i64]]] [[6 x [7 x i64]] [[7 x i64] [i64 -1, i64 1802713253729686879, i64 -7551727388702236220, i64 3536508444148323321, i64 3536508444148323321, i64 -7551727388702236220, i64 1802713253729686879], [7 x i64] [i64 9170858347451530715, i64 0, i64 -3, i64 5615271936669826756, i64 1802713253729686879, i64 8167194468645447484, i64 0], [7 x i64] [i64 7, i64 -3, i64 1802713253729686879, i64 -1, i64 -10, i64 9170858347451530715, i64 8796153650924608223], [7 x i64] [i64 1802713253729686879, i64 -4874071018550347503, i64 -3199657296846571872, i64 5615271936669826756, i64 0, i64 -2226189170086237244, i64 -2], [7 x i64] [i64 8167194468645447484, i64 8796153650924608223, i64 -10, i64 3536508444148323321, i64 5615271936669826756, i64 3536508444148323321, i64 -10], [7 x i64] [i64 8167194468645447484, i64 8167194468645447484, i64 7, i64 -4874071018550347503, i64 3816791765855588617, i64 1802713253729686879, i64 6]], [6 x [7 x i64]] [[7 x i64] [i64 1802713253729686879, i64 2753665213179876066, i64 0, i64 -503870171633402352, i64 7, i64 -10, i64 0], [7 x i64] [i64 7, i64 -7551727388702236220, i64 -1, i64 -8, i64 3816791765855588617, i64 0, i64 8167194468645447484], [7 x i64] [i64 9170858347451530715, i64 4, i64 0, i64 -2362754778476965011, i64 5615271936669826756, i64 5615271936669826756, i64 -2362754778476965011], [7 x i64] [i64 -1, i64 4, i64 -1, i64 8167194468645447484, i64 0, i64 3816791765855588617, i64 -8], [7 x i64] [i64 -3, i64 -7551727388702236220, i64 -2, i64 0, i64 -10, i64 7, i64 -503870171633402352], [7 x i64] [i64 3536508444148323321, i64 2753665213179876066, i64 5615271936669826756, i64 6, i64 3816791765855588617, i64 9170858347451530715, i64 2753665213179876066]], [6 x [7 x i64]] [[7 x i64] [i64 6, i64 -8, i64 3536508444148323321, i64 -5, i64 -4874071018550347503, i64 0, i64 -4874071018550347503], [7 x i64] [i64 -7551727388702236220, i64 3536508444148323321, i64 3536508444148323321, i64 -7551727388702236220, i64 1802713253729686879, i64 -1, i64 0], [7 x i64] [i64 8796153650924608223, i64 2753665213179876066, i64 0, i64 3536508444148323321, i64 4, i64 -5, i64 -2], [7 x i64] [i64 0, i64 7, i64 -7551727388702236220, i64 -1, i64 -8, i64 3816791765855588617, i64 0], [7 x i64] [i64 0, i64 -1, i64 -503870171633402352, i64 3816791765855588617, i64 -3, i64 -4874071018550347503, i64 -4874071018550347503], [7 x i64] [i64 -2362754778476965011, i64 3816791765855588617, i64 0, i64 3816791765855588617, i64 -2362754778476965011, i64 1802713253729686879, i64 2753665213179876066]], [6 x [7 x i64]] [[7 x i64] [i64 3536508444148323321, i64 -503870171633402352, i64 -2, i64 -1, i64 5615271936669826756, i64 4, i64 -3], [7 x i64] [i64 9170858347451530715, i64 -2362754778476965011, i64 -2226189170086237244, i64 3536508444148323321, i64 7, i64 -8, i64 5615271936669826756], [7 x i64] [i64 3536508444148323321, i64 -1, i64 -3199657296846571872, i64 -7551727388702236220, i64 0, i64 -3, i64 0], [7 x i64] [i64 -2362754778476965011, i64 0, i64 -5, i64 -5, i64 0, i64 -2362754778476965011, i64 -8], [7 x i64] [i64 0, i64 -3, i64 -2362754778476965011, i64 8796153650924608223, i64 7, i64 5615271936669826756, i64 -1], [7 x i64] [i64 0, i64 8167194468645447484, i64 3816791765855588617, i64 -1, i64 5615271936669826756, i64 7, i64 8796153650924608223]], [6 x [7 x i64]] [[7 x i64] [i64 8796153650924608223, i64 -3, i64 8167194468645447484, i64 -8, i64 -2362754778476965011, i64 0, i64 -5], [7 x i64] [i64 -7551727388702236220, i64 0, i64 -3, i64 0, i64 -3, i64 0, i64 -7551727388702236220], [7 x i64] [i64 6, i64 -1, i64 0, i64 5615271936669826756, i64 -8, i64 7, i64 3536508444148323321], [7 x i64] [i64 -4874071018550347503, i64 -2362754778476965011, i64 -1, i64 -3, i64 4, i64 5615271936669826756, i64 -1], [7 x i64] [i64 7, i64 -503870171633402352, i64 0, i64 2753665213179876066, i64 1802713253729686879, i64 -2362754778476965011, i64 3816791765855588617], [7 x i64] [i64 -503870171633402352, i64 3816791765855588617, i64 -3, i64 -4874071018550347503, i64 -4874071018550347503, i64 -3, i64 3816791765855588617]]], align 16
@.str.46 = private unnamed_addr constant [16 x i8] c"g_2677[i][j][k]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1229 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [7 x [3 x i32]]]* @g_293 to i8*), i64 224) to i32*), align 8
@g_2373 = internal global i64* @g_2374, align 8
@g_2372 = internal global i64** @g_2373, align 8
@g_2589 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [9 x i32]]* @g_135 to i8*), i64 12) to i32*), align 8
@g_1310 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [5 x [1 x i16]]]* @g_159 to i8*), i64 14) to i16*), align 8
@g_428 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i16]* @g_107 to i8*), i64 2) to i16*), align 8
@g_1309 = internal global i16** @g_1310, align 8
@g_2035 = internal global i32* @g_2036, align 8
@g_179 = internal global [3 x i32***] [i32*** @g_180, i32*** @g_180, i32*** @g_180], align 16
@func_7.l_2479 = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 -630107898, i32 -630107898], [2 x i32] [i32 -630107898, i32 -630107898]], align 16
@func_7.l_2503 = internal constant [7 x [7 x i32**]] [[7 x i32**] [i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** null, i32** @g_1229, i32** null, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** null, i32** @g_1229, i32** null, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** null, i32** @g_1229, i32** null, i32** @g_1229, i32** @g_1229], [7 x i32**] [i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229, i32** @g_1229]], align 16
@g_2291 = internal global [3 x [3 x i32**]] [[3 x i32**] [i32** @g_2292, i32** @g_2292, i32** @g_2292], [3 x i32**] [i32** @g_2292, i32** @g_2292, i32** @g_2292], [3 x i32**] [i32** @g_2292, i32** @g_2292, i32** @g_2292]], align 16
@g_11 = internal global [2 x i32*] [i32* @g_12, i32* @g_12], align 16
@func_7.l_28 = private unnamed_addr constant [8 x [6 x i8]] [[6 x i8] c"\03\03\01\01\09\01", [6 x i8] c"\01\09\01\01\01\03", [6 x i8] c"\01\01\03\AC\AC\03", [6 x i8] c"\AC\AC\03\01\01\03", [6 x i8] c"\01\01\03\01\01\03", [6 x i8] c"\01\01\03\AC\AC\03", [6 x i8] c"\AC\AC\03\01\01\03", [6 x i8] c"\01\01\03\01\01\03"], align 16
@func_7.l_294 = private unnamed_addr constant [7 x i8*] [i8* @g_283, i8* @g_283, i8* @g_283, i8* @g_283, i8* @g_283, i8* @g_283, i8* @g_283], align 16
@func_7.l_2426 = private unnamed_addr constant [7 x i32*] [i32* null, i32* @g_12, i32* @g_12, i32* null, i32* @g_12, i32* @g_12, i32* null], align 16
@func_7.l_2433 = private unnamed_addr constant [9 x [10 x [2 x i8]]] [[10 x [2 x i8]] [[2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd"], [10 x [2 x i8]] [[2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89"], [10 x [2 x i8]] [[2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd"], [10 x [2 x i8]] [[2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC"], [10 x [2 x i8]] [[2 x i8] c"d\89", [2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89"], [10 x [2 x i8]] [[2 x i8] c"\EB\EB", [2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\EB"], [10 x [2 x i8]] [[2 x i8] c"\DB\EB", [2 x i8] c"\EB\89", [2 x i8] c"d\BC", [2 x i8] c"\DBd", [2 x i8] c"\BC\89", [2 x i8] c"\BCd", [2 x i8] c"\DB\BC", [2 x i8] c"d\89", [2 x i8] c"\EB\DB", [2 x i8] c"\E3\DB"], [10 x [2 x i8]] [[2 x i8] c"\DB\FF", [2 x i8] c"\89d", [2 x i8] c"\E3\89", [2 x i8] c"d\FF", [2 x i8] c"d\89", [2 x i8] c"\E3d", [2 x i8] c"\89\FF", [2 x i8] c"\DB\DB", [2 x i8] c"\E3\DB", [2 x i8] c"\DB\FF"], [10 x [2 x i8]] [[2 x i8] c"\89d", [2 x i8] c"\E3\89", [2 x i8] c"d\FF", [2 x i8] c"d\89", [2 x i8] c"\E3d", [2 x i8] c"\89\FF", [2 x i8] c"\DB\DB", [2 x i8] c"\E3\DB", [2 x i8] c"\DB\FF", [2 x i8] c"\89d"]], align 16
@g_180 = internal global i32** null, align 8
@g_2292 = internal global i32* @g_355, align 8
@.str.47 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %100 = load i32, i32* @g_12, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %118, %89
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = icmp slt i32 %104, 3
  br i1 %105, label %106, label %121

; <label>:106                                     ; preds = %103
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x i64], [3 x i64]* @g_86, i32 0, i64 %108
  %110 = load i64, i64* %109, align 8, !tbaa !7
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %106
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %115)
  br label %117

; <label>:117                                     ; preds = %114, %106
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %i, align 4, !tbaa !1
  br label %103

; <label>:121                                     ; preds = %103
  %122 = load i64, i64* @g_88, align 8, !tbaa !7
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %123)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %164, %121
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = icmp slt i32 %125, 5
  br i1 %126, label %127, label %167

; <label>:127                                     ; preds = %124
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %128

; <label>:128                                     ; preds = %160, %127
  %129 = load i32, i32* %j, align 4, !tbaa !1
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %163

; <label>:131                                     ; preds = %128
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %132

; <label>:132                                     ; preds = %156, %131
  %133 = load i32, i32* %k, align 4, !tbaa !1
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %159

; <label>:135                                     ; preds = %132
  %136 = load i32, i32* %k, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %j, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [5 x [10 x [4 x i16]]], [5 x [10 x [4 x i16]]]* @g_96, i32 0, i64 %141
  %143 = getelementptr inbounds [10 x [4 x i16]], [10 x [4 x i16]]* %142, i32 0, i64 %139
  %144 = getelementptr inbounds [4 x i16], [4 x i16]* %143, i32 0, i64 %137
  %145 = load i16, i16* %144, align 2, !tbaa !10
  %146 = zext i16 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %147)
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

; <label>:150                                     ; preds = %135
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = load i32, i32* %j, align 4, !tbaa !1
  %153 = load i32, i32* %k, align 4, !tbaa !1
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %151, i32 %152, i32 %153)
  br label %155

; <label>:155                                     ; preds = %150, %135
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i32, i32* %k, align 4, !tbaa !1
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %k, align 4, !tbaa !1
  br label %132

; <label>:159                                     ; preds = %132
  br label %160

; <label>:160                                     ; preds = %159
  %161 = load i32, i32* %j, align 4, !tbaa !1
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %j, align 4, !tbaa !1
  br label %128

; <label>:163                                     ; preds = %128
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:167                                     ; preds = %124
  %168 = load i16, i16* @g_104, align 2, !tbaa !10
  %169 = sext i16 %168 to i64
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %170)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %187, %167
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %190

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i16], [2 x i16]* @g_107, i32 0, i64 %176
  %178 = load i16, i16* %177, align 2, !tbaa !10
  %179 = sext i16 %178 to i64
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %180)
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

; <label>:183                                     ; preds = %174
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %184)
  br label %186

; <label>:186                                     ; preds = %183, %174
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %i, align 4, !tbaa !1
  br label %171

; <label>:190                                     ; preds = %171
  %191 = load i8, i8* @g_115, align 1, !tbaa !9
  %192 = zext i8 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %193)
  %194 = load i64, i64* @g_117, align 8, !tbaa !7
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %195)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %224, %190
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = icmp slt i32 %197, 5
  br i1 %198, label %199, label %227

; <label>:199                                     ; preds = %196
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %200

; <label>:200                                     ; preds = %220, %199
  %201 = load i32, i32* %j, align 4, !tbaa !1
  %202 = icmp slt i32 %201, 9
  br i1 %202, label %203, label %223

; <label>:203                                     ; preds = %200
  %204 = load i32, i32* %j, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [5 x [9 x i32]], [5 x [9 x i32]]* @g_135, i32 0, i64 %207
  %209 = getelementptr inbounds [9 x i32], [9 x i32]* %208, i32 0, i64 %205
  %210 = load i32, i32* %209, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 %212)
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

; <label>:215                                     ; preds = %203
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = load i32, i32* %j, align 4, !tbaa !1
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %216, i32 %217)
  br label %219

; <label>:219                                     ; preds = %215, %203
  br label %220

; <label>:220                                     ; preds = %219
  %221 = load i32, i32* %j, align 4, !tbaa !1
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %j, align 4, !tbaa !1
  br label %200

; <label>:223                                     ; preds = %200
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:227                                     ; preds = %196
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1982513279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %228)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:229                                     ; preds = %269, %227
  %230 = load i32, i32* %i, align 4, !tbaa !1
  %231 = icmp slt i32 %230, 7
  br i1 %231, label %232, label %272

; <label>:232                                     ; preds = %229
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %233

; <label>:233                                     ; preds = %265, %232
  %234 = load i32, i32* %j, align 4, !tbaa !1
  %235 = icmp slt i32 %234, 5
  br i1 %235, label %236, label %268

; <label>:236                                     ; preds = %233
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %237

; <label>:237                                     ; preds = %261, %236
  %238 = load i32, i32* %k, align 4, !tbaa !1
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %240, label %264

; <label>:240                                     ; preds = %237
  %241 = load i32, i32* %k, align 4, !tbaa !1
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %j, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [7 x [5 x [1 x i16]]], [7 x [5 x [1 x i16]]]* @g_159, i32 0, i64 %246
  %248 = getelementptr inbounds [5 x [1 x i16]], [5 x [1 x i16]]* %247, i32 0, i64 %244
  %249 = getelementptr inbounds [1 x i16], [1 x i16]* %248, i32 0, i64 %242
  %250 = load i16, i16* %249, align 2, !tbaa !10
  %251 = zext i16 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %252)
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

; <label>:255                                     ; preds = %240
  %256 = load i32, i32* %i, align 4, !tbaa !1
  %257 = load i32, i32* %j, align 4, !tbaa !1
  %258 = load i32, i32* %k, align 4, !tbaa !1
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %256, i32 %257, i32 %258)
  br label %260

; <label>:260                                     ; preds = %255, %240
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32, i32* %k, align 4, !tbaa !1
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %k, align 4, !tbaa !1
  br label %237

; <label>:264                                     ; preds = %237
  br label %265

; <label>:265                                     ; preds = %264
  %266 = load i32, i32* %j, align 4, !tbaa !1
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %j, align 4, !tbaa !1
  br label %233

; <label>:268                                     ; preds = %233
  br label %269

; <label>:269                                     ; preds = %268
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %i, align 4, !tbaa !1
  br label %229

; <label>:272                                     ; preds = %229
  %273 = load i8, i8* @g_283, align 1, !tbaa !9
  %274 = sext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %275)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %316, %272
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %319

; <label>:279                                     ; preds = %276
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %280

; <label>:280                                     ; preds = %312, %279
  %281 = load i32, i32* %j, align 4, !tbaa !1
  %282 = icmp slt i32 %281, 7
  br i1 %282, label %283, label %315

; <label>:283                                     ; preds = %280
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %284

; <label>:284                                     ; preds = %308, %283
  %285 = load i32, i32* %k, align 4, !tbaa !1
  %286 = icmp slt i32 %285, 3
  br i1 %286, label %287, label %311

; <label>:287                                     ; preds = %284
  %288 = load i32, i32* %k, align 4, !tbaa !1
  %289 = sext i32 %288 to i64
  %290 = load i32, i32* %j, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [4 x [7 x [3 x i32]]], [4 x [7 x [3 x i32]]]* @g_293, i32 0, i64 %293
  %295 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* %294, i32 0, i64 %291
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %295, i32 0, i64 %289
  %297 = load i32, i32* %296, align 4, !tbaa !1
  %298 = zext i32 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %299)
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

; <label>:302                                     ; preds = %287
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = load i32, i32* %k, align 4, !tbaa !1
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %303, i32 %304, i32 %305)
  br label %307

; <label>:307                                     ; preds = %302, %287
  br label %308

; <label>:308                                     ; preds = %307
  %309 = load i32, i32* %k, align 4, !tbaa !1
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %k, align 4, !tbaa !1
  br label %284

; <label>:311                                     ; preds = %284
  br label %312

; <label>:312                                     ; preds = %311
  %313 = load i32, i32* %j, align 4, !tbaa !1
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %j, align 4, !tbaa !1
  br label %280

; <label>:315                                     ; preds = %280
  br label %316

; <label>:316                                     ; preds = %315
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:319                                     ; preds = %276
  %320 = load i32, i32* @g_355, align 4, !tbaa !1
  %321 = zext i32 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %322)
  %323 = load i64, i64* @g_357, align 8, !tbaa !7
  %324 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %324)
  %325 = load i64, i64* @g_416, align 8, !tbaa !7
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* @g_541, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* @g_649, align 4, !tbaa !1
  %331 = zext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %332)
  %333 = load i8, i8* @g_694, align 1, !tbaa !9
  %334 = sext i8 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %335)
  %336 = load i8, i8* @g_705, align 1, !tbaa !9
  %337 = zext i8 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %339)
  %340 = load i32, i32* @g_815, align 4, !tbaa !1
  %341 = zext i32 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %342)
  %343 = load i8, i8* @g_874, align 1, !tbaa !9
  %344 = zext i8 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %345)
  %346 = load i64, i64* @g_1255, align 8, !tbaa !7
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %347)
  %348 = load i16, i16* @g_1258, align 2, !tbaa !10
  %349 = sext i16 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %350)
  %351 = load i64, i64* @g_1495, align 8, !tbaa !7
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %352)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %353

; <label>:353                                     ; preds = %369, %319
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = icmp slt i32 %354, 5
  br i1 %355, label %356, label %372

; <label>:356                                     ; preds = %353
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [5 x i8], [5 x i8]* @g_1497, i32 0, i64 %358
  %360 = load i8, i8* %359, align 1, !tbaa !9
  %361 = sext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 %362)
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

; <label>:365                                     ; preds = %356
  %366 = load i32, i32* %i, align 4, !tbaa !1
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %366)
  br label %368

; <label>:368                                     ; preds = %365, %356
  br label %369

; <label>:369                                     ; preds = %368
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %i, align 4, !tbaa !1
  br label %353

; <label>:372                                     ; preds = %353
  %373 = load i32, i32* @g_1602, align 4, !tbaa !1
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* @g_1757, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %378)
  %379 = load i64, i64* @g_1802, align 8, !tbaa !7
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %380)
  %381 = load i8, i8* @g_1832, align 1, !tbaa !9
  %382 = sext i8 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %383)
  %384 = load i16, i16* @g_1835, align 2, !tbaa !10
  %385 = sext i16 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %386)
  %387 = load volatile i32, i32* @g_2036, align 4, !tbaa !1
  %388 = sext i32 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %389)
  %390 = load i16, i16* @g_2131, align 2, !tbaa !10
  %391 = sext i16 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %392)
  %393 = load i16, i16* @g_2230, align 2, !tbaa !10
  %394 = sext i16 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %395)
  %396 = load volatile i32, i32* @g_2290, align 4, !tbaa !1
  %397 = zext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %398)
  %399 = load i32, i32* @g_2308, align 4, !tbaa !1
  %400 = zext i32 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %401)
  %402 = load volatile i64, i64* @g_2374, align 8, !tbaa !7
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %403)
  %404 = load volatile i64, i64* @g_2655, align 8, !tbaa !7
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %405)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:406                                     ; preds = %445, %372
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = icmp slt i32 %407, 5
  br i1 %408, label %409, label %448

; <label>:409                                     ; preds = %406
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %410

; <label>:410                                     ; preds = %441, %409
  %411 = load i32, i32* %j, align 4, !tbaa !1
  %412 = icmp slt i32 %411, 6
  br i1 %412, label %413, label %444

; <label>:413                                     ; preds = %410
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %414

; <label>:414                                     ; preds = %437, %413
  %415 = load i32, i32* %k, align 4, !tbaa !1
  %416 = icmp slt i32 %415, 7
  br i1 %416, label %417, label %440

; <label>:417                                     ; preds = %414
  %418 = load i32, i32* %k, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [5 x [6 x [7 x i64]]], [5 x [6 x [7 x i64]]]* @g_2677, i32 0, i64 %423
  %425 = getelementptr inbounds [6 x [7 x i64]], [6 x [7 x i64]]* %424, i32 0, i64 %421
  %426 = getelementptr inbounds [7 x i64], [7 x i64]* %425, i32 0, i64 %419
  %427 = load i64, i64* %426, align 8, !tbaa !7
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i32 %428)
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

; <label>:431                                     ; preds = %417
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = load i32, i32* %k, align 4, !tbaa !1
  %435 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %432, i32 %433, i32 %434)
  br label %436

; <label>:436                                     ; preds = %431, %417
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %k, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %k, align 4, !tbaa !1
  br label %414

; <label>:440                                     ; preds = %414
  br label %441

; <label>:441                                     ; preds = %440
  %442 = load i32, i32* %j, align 4, !tbaa !1
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %j, align 4, !tbaa !1
  br label %410

; <label>:444                                     ; preds = %410
  br label %445

; <label>:445                                     ; preds = %444
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %i, align 4, !tbaa !1
  br label %406

; <label>:448                                     ; preds = %406
  %449 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %450 = zext i32 %449 to i64
  %451 = xor i64 %450, 4294967295
  %452 = trunc i64 %451 to i32
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %452, i32 %453)
  %454 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %454) #1
  %455 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %455) #1
  %456 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %456) #1
  %457 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %457) #1
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
  %l_2675 = alloca i64, align 8
  %l_2680 = alloca i32, align 4
  %l_2700 = alloca [5 x i16*], align 16
  %l_2710 = alloca i64*, align 8
  %l_2711 = alloca i64*, align 8
  %l_2712 = alloca i64*, align 8
  %l_2713 = alloca i8*, align 8
  %l_2714 = alloca i32, align 4
  %l_2715 = alloca i32, align 4
  %l_2737 = alloca i64, align 8
  %l_2738 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_2676 = alloca i32, align 4
  %1 = bitcast i64* %l_2675 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64 -2973316178722874210, i64* %l_2675, align 8, !tbaa !7
  %2 = bitcast i32* %l_2680 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 1284758728, i32* %l_2680, align 4, !tbaa !1
  %3 = bitcast [5 x i16*]* %l_2700 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast i64** %l_2710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_86, i32 0, i64 0), i64** %l_2710, align 8, !tbaa !5
  %5 = bitcast i64** %l_2711 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* null, i64** %l_2711, align 8, !tbaa !5
  %6 = bitcast i64** %l_2712 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64* getelementptr inbounds ([5 x [6 x [7 x i64]]], [5 x [6 x [7 x i64]]]* @g_2677, i32 0, i64 3, i64 2, i64 1), i64** %l_2712, align 8, !tbaa !5
  %7 = bitcast i8** %l_2713 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* @g_705, i8** %l_2713, align 8, !tbaa !5
  %8 = bitcast i32* %l_2714 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 4, i32* %l_2714, align 4, !tbaa !1
  %9 = bitcast i32* %l_2715 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -491199323, i32* %l_2715, align 4, !tbaa !1
  %10 = bitcast i64* %l_2737 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -154571980921202757, i64* %l_2737, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_2738) #1
  store i8 0, i8* %l_2738, align 1, !tbaa !9
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i16*], [5 x i16*]* %l_2700, i32 0, i64 %17
  store i16* null, i16** %18, align 8, !tbaa !5
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  store i32 11, i32* @g_4, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %56, %22
  %24 = load i32, i32* @g_4, align 4, !tbaa !1
  %25 = icmp sgt i32 %24, -19
  br i1 %25, label %26, label %61

; <label>:26                                      ; preds = %23
  %27 = bitcast i32* %l_2676 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 4, i32* %l_2676, align 4, !tbaa !1
  %28 = load i32, i32* @g_4, align 4, !tbaa !1
  %29 = call i32 @func_7(i32 %28)
  %30 = load i32*, i32** @g_1229, align 8, !tbaa !5
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = icmp ule i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %l_2675, align 8, !tbaa !7
  %35 = load i64, i64* %l_2675, align 8, !tbaa !7
  %36 = and i64 %34, %35
  %37 = load i16, i16* @g_104, align 2, !tbaa !10
  %38 = sext i16 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = xor i64 %36, %39
  %41 = load i64**, i64*** @g_2372, align 8, !tbaa !5
  %42 = load volatile i64*, i64** %41, align 8, !tbaa !5
  %43 = load volatile i64, i64* %42, align 8, !tbaa !7
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

; <label>:45                                      ; preds = %26
  br label %46

; <label>:46                                      ; preds = %45, %26
  %47 = phi i1 [ true, %26 ], [ true, %45 ]
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* getelementptr inbounds ([5 x [6 x [7 x i64]]], [5 x [6 x [7 x i64]]]* @g_2677, i32 0, i64 3, i64 2, i64 1), align 8, !tbaa !7
  %50 = trunc i64 %49 to i32
  %51 = call i32 @safe_mod_func_int32_t_s_s(i32 1179064962, i32 %50)
  %52 = load i32*, i32** @g_2589, align 8, !tbaa !5
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4, !tbaa !1
  %55 = bitcast i32* %l_2676 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %56

; <label>:56                                      ; preds = %46
  %57 = load i32, i32* @g_4, align 4, !tbaa !1
  %58 = sext i32 %57 to i64
  %59 = call i64 @safe_sub_func_uint64_t_u_u(i64 %58, i64 1)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @g_4, align 4, !tbaa !1
  br label %23

; <label>:61                                      ; preds = %23
  %62 = load i16*, i16** @g_1310, align 8, !tbaa !5
  %63 = load i16, i16* %62, align 2, !tbaa !10
  %64 = zext i16 %63 to i32
  %65 = load i32, i32* %l_2680, align 4, !tbaa !1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %l_2675, align 8, !tbaa !7
  %68 = trunc i64 %67 to i16
  %69 = load i16*, i16** @g_1310, align 8, !tbaa !5
  %70 = load i16, i16* %69, align 2, !tbaa !10
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* getelementptr inbounds ([5 x [10 x [4 x i16]]], [5 x [10 x [4 x i16]]]* @g_96, i32 0, i64 2, i64 8, i64 0), align 2, !tbaa !10
  %73 = add i16 %72, -1
  store i16 %73, i16* getelementptr inbounds ([5 x [10 x [4 x i16]]], [5 x [10 x [4 x i16]]]* @g_96, i32 0, i64 2, i64 8, i64 0), align 2, !tbaa !10
  %74 = zext i16 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

; <label>:76                                      ; preds = %61
  %77 = load i32, i32* %l_2680, align 4, !tbaa !1
  %78 = load i32, i32* %l_2680, align 4, !tbaa !1
  %79 = trunc i32 %78 to i16
  %80 = load i32, i32* %l_2680, align 4, !tbaa !1
  %81 = trunc i32 %80 to i16
  %82 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %79, i16 signext %81)
  %83 = sext i16 %82 to i64
  %84 = load i64*, i64** %l_2710, align 8, !tbaa !5
  store i64 %83, i64* %84, align 8, !tbaa !7
  %85 = or i64 %83, 4
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = xor i32 %89, -1
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** @g_1310, align 8, !tbaa !5
  %93 = load i16, i16* %92, align 2, !tbaa !10
  %94 = zext i16 %93 to i32
  %95 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %91, i32 %94)
  %96 = sext i16 %95 to i32
  %97 = icmp ne i32 %96, 0
  br label %98

; <label>:98                                      ; preds = %76, %61
  %99 = phi i1 [ false, %61 ], [ %97, %76 ]
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = and i64 %101, 0
  %103 = trunc i64 %102 to i8
  %104 = load i64, i64* %l_2675, align 8, !tbaa !7
  %105 = trunc i64 %104 to i8
  %106 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %103, i8 signext %105)
  %107 = sext i8 %106 to i32
  %108 = load i64, i64* %l_2675, align 8, !tbaa !7
  %109 = trunc i64 %108 to i32
  %110 = call i32 @safe_sub_func_int32_t_s_s(i32 %107, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %98
  %113 = load i32, i32* %l_2680, align 4, !tbaa !1
  %114 = icmp ne i32 %113, 0
  br label %115

; <label>:115                                     ; preds = %112, %98
  %116 = phi i1 [ false, %98 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %l_2712, align 8, !tbaa !5
  %120 = load i64, i64* %119, align 8, !tbaa !7
  %121 = and i64 %120, %118
  store i64 %121, i64* %119, align 8, !tbaa !7
  %122 = call i64 @safe_mod_func_int64_t_s_s(i64 %121, i64 1)
  %123 = and i64 -4, %122
  %124 = load i16*, i16** @g_1310, align 8, !tbaa !5
  %125 = load i16, i16* %124, align 2, !tbaa !10
  %126 = zext i16 %125 to i64
  %127 = icmp sgt i64 %123, %126
  %128 = zext i1 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = icmp sgt i64 %129, -4
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %l_2675, align 8, !tbaa !7
  %133 = trunc i64 %132 to i8
  %134 = load i64, i64* %l_2675, align 8, !tbaa !7
  %135 = trunc i64 %134 to i32
  %136 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %133, i32 %135)
  %137 = zext i8 %136 to i64
  %138 = icmp uge i64 -5130627459466220674, %137
  %139 = zext i1 %138 to i32
  %140 = trunc i32 %139 to i16
  %141 = load i16*, i16** @g_428, align 8, !tbaa !5
  store i16 %140, i16* %141, align 2, !tbaa !10
  %142 = sext i16 %140 to i32
  %143 = load i16**, i16*** @g_1309, align 8, !tbaa !5
  %144 = load i16*, i16** %143, align 8, !tbaa !5
  %145 = load i16, i16* %144, align 2, !tbaa !10
  %146 = zext i16 %145 to i32
  %147 = icmp sge i32 %142, %146
  %148 = zext i1 %147 to i32
  %149 = load i8*, i8** %l_2713, align 8, !tbaa !5
  %150 = load i8, i8* %149, align 1, !tbaa !9
  %151 = zext i8 %150 to i32
  %152 = xor i32 %151, %148
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %149, align 1, !tbaa !9
  %154 = load i64, i64* %l_2675, align 8, !tbaa !7
  %155 = trunc i64 %154 to i8
  %156 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %153, i8 zeroext %155)
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* %l_2714, align 4, !tbaa !1
  %159 = xor i32 %158, %157
  store i32 %159, i32* %l_2714, align 4, !tbaa !1
  %160 = trunc i32 %159 to i16
  %161 = load i16**, i16*** @g_1309, align 8, !tbaa !5
  %162 = load i16*, i16** %161, align 8, !tbaa !5
  %163 = load i16, i16* %162, align 2, !tbaa !10
  %164 = zext i16 %163 to i32
  %165 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %160, i32 %164)
  %166 = sext i16 %165 to i64
  %167 = icmp ne i64 %166, 6
  %168 = zext i1 %167 to i32
  %169 = icmp sgt i32 %71, %168
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %l_2715, align 4, !tbaa !1
  %172 = or i32 %171, %170
  store i32 %172, i32* %l_2715, align 4, !tbaa !1
  %173 = load i64, i64* %l_2675, align 8, !tbaa !7
  %174 = trunc i64 %173 to i16
  %175 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %68, i16 signext %174)
  %176 = load i64, i64* %l_2675, align 8, !tbaa !7
  %177 = xor i64 1, %176
  %178 = trunc i64 %177 to i8
  %179 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %178, i32 3)
  %180 = zext i8 %179 to i64
  %181 = load volatile i64, i64* @g_2655, align 8, !tbaa !7
  %182 = xor i64 %180, %181
  %183 = or i64 %66, %182
  %184 = load i64, i64* %l_2675, align 8, !tbaa !7
  %185 = call i64 @safe_add_func_int64_t_s_s(i64 %183, i64 %184)
  %186 = icmp ule i64 %185, -5830756287231733599
  %187 = zext i1 %186 to i32
  %188 = icmp slt i32 %64, %187
  %189 = zext i1 %188 to i32
  %190 = load i32*, i32** @g_2589, align 8, !tbaa !5
  store i32 %189, i32* %190, align 4, !tbaa !1
  %191 = load i32, i32* %l_2715, align 4, !tbaa !1
  %192 = trunc i32 %191 to i16
  %193 = load i32, i32* %l_2714, align 4, !tbaa !1
  %194 = xor i32 %193, -1
  %195 = trunc i32 %194 to i16
  %196 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %192, i16 signext %195)
  %197 = sext i16 %196 to i64
  %198 = icmp eq i64 %197, 3984895619
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %l_2680, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* %l_2675, align 8, !tbaa !7
  %203 = getelementptr inbounds [5 x i16*], [5 x i16*]* %l_2700, i32 0, i64 4
  %204 = load i16*, i16** %203, align 8, !tbaa !5
  %205 = icmp ne i16* null, %204
  %206 = zext i1 %205 to i32
  %207 = icmp eq i64 %201, 42361
  %208 = zext i1 %207 to i32
  %209 = trunc i32 %208 to i16
  %210 = load i16*, i16** @g_428, align 8, !tbaa !5
  store i16 %209, i16* %210, align 2, !tbaa !10
  %211 = sext i16 %209 to i64
  store i64 %211, i64* %l_2737, align 8, !tbaa !7
  %212 = trunc i64 %211 to i16
  %213 = load i16**, i16*** @g_1309, align 8, !tbaa !5
  %214 = load i16*, i16** %213, align 8, !tbaa !5
  %215 = load i16, i16* %214, align 2, !tbaa !10
  %216 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %212, i16 signext %215)
  %217 = trunc i16 %216 to i8
  %218 = load i32, i32* %l_2714, align 4, !tbaa !1
  %219 = trunc i32 %218 to i8
  %220 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %217, i8 zeroext %219)
  %221 = zext i8 %220 to i32
  %222 = icmp slt i32 %199, %221
  %223 = zext i1 %222 to i32
  %224 = load i32*, i32** @g_1229, align 8, !tbaa !5
  %225 = load i32, i32* %224, align 4, !tbaa !1
  %226 = call i32 @safe_div_func_uint32_t_u_u(i32 %223, i32 %225)
  %227 = load i32, i32* %l_2680, align 4, !tbaa !1
  %228 = trunc i32 %227 to i16
  %229 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %228, i16 zeroext -1253)
  %230 = zext i16 %229 to i32
  %231 = load i32, i32* %l_2714, align 4, !tbaa !1
  %232 = icmp sgt i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = trunc i32 %233 to i16
  %235 = load i8, i8* %l_2738, align 1, !tbaa !9
  %236 = zext i8 %235 to i16
  %237 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %234, i16 signext %236)
  %238 = sext i16 %237 to i64
  %239 = load i64, i64* @g_88, align 8, !tbaa !7
  %240 = call i64 @safe_add_func_uint64_t_u_u(i64 %238, i64 %239)
  %241 = trunc i64 %240 to i16
  %242 = load i16**, i16*** @g_1309, align 8, !tbaa !5
  %243 = load i16*, i16** %242, align 8, !tbaa !5
  %244 = load i16, i16* %243, align 2, !tbaa !10
  %245 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %241, i16 signext %244)
  %246 = sext i16 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

; <label>:248                                     ; preds = %115
  br label %249

; <label>:249                                     ; preds = %248, %115
  %250 = phi i1 [ false, %115 ], [ true, %248 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %l_2714, align 4, !tbaa !1
  %252 = sext i32 %251 to i64
  %253 = and i64 %252, 0
  %254 = trunc i64 %253 to i8
  %255 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %254, i32 2)
  %256 = zext i8 %255 to i32
  %257 = load i32*, i32** @g_2035, align 8, !tbaa !5
  %258 = load volatile i32, i32* %257, align 4, !tbaa !1
  %259 = icmp slt i32 %256, %258
  %260 = zext i1 %259 to i32
  %261 = sext i32 %260 to i64
  %262 = load i64*, i64** %l_2712, align 8, !tbaa !5
  %263 = load i64, i64* %262, align 8, !tbaa !7
  %264 = xor i64 %263, %261
  store i64 %264, i64* %262, align 8, !tbaa !7
  %265 = call i64 @safe_add_func_int64_t_s_s(i64 %264, i64 -8411534870401043811)
  %266 = icmp sle i64 -3, %265
  %267 = zext i1 %266 to i32
  %268 = sext i32 %267 to i64
  %269 = icmp ne i64 -1, %268
  %270 = zext i1 %269 to i32
  %271 = load i32*, i32** @g_2589, align 8, !tbaa !5
  %272 = load i32, i32* %271, align 4, !tbaa !1
  %273 = or i32 %272, %270
  store i32 %273, i32* %271, align 4, !tbaa !1
  %274 = load i32, i32* %l_2714, align 4, !tbaa !1
  %275 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2738) #1
  %276 = bitcast i64* %l_2737 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i32* %l_2715 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %l_2714 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i8** %l_2713 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = bitcast i64** %l_2712 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i64** %l_2711 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i64** %l_2710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast [5 x i16*]* %l_2700 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %283) #1
  %284 = bitcast i32* %l_2680 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i64* %l_2675 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %285) #1
  ret i32 %274
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_7(i32 %p_8) #0 {
  %1 = alloca i32, align 4
  %l_10 = alloca i32*, align 8
  %l_9 = alloca [1 x [1 x i32**]], align 8
  %l_2444 = alloca i16**, align 8
  %l_2446 = alloca i32, align 4
  %l_2473 = alloca i32****, align 8
  %l_2478 = alloca i32, align 4
  %l_2479 = alloca [2 x [2 x i32]], align 16
  %l_2541 = alloca i32***, align 8
  %l_2559 = alloca i32*, align 8
  %l_2598 = alloca i8, align 1
  %l_2606 = alloca i64*, align 8
  %l_2605 = alloca i64**, align 8
  %l_2610 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_28 = alloca [8 x [6 x i8]], align 16
  %l_294 = alloca [7 x i8*], align 16
  %l_295 = alloca i32, align 4
  %l_552 = alloca i32*, align 8
  %l_820 = alloca i32, align 4
  %l_821 = alloca i32*, align 8
  %l_822 = alloca i32, align 4
  %l_2421 = alloca i32*, align 8
  %l_2426 = alloca [7 x i32*], align 16
  %l_2433 = alloca [9 x [10 x [2 x i8]]], align 16
  %l_2445 = alloca i16*, align 8
  %l_2461 = alloca [6 x i32***], align 16
  %l_2498 = alloca i32*****, align 8
  %l_2505 = alloca i64*, align 8
  %l_2512 = alloca i64**, align 8
  %l_2568 = alloca i16, align 2
  %l_2583 = alloca i64**, align 8
  %l_2600 = alloca i32**, align 8
  %l_2616 = alloca i64***, align 8
  %l_2669 = alloca i8, align 1
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_8, i32* %1, align 4, !tbaa !1
  %2 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* null, i32** %l_10, align 8, !tbaa !5
  %3 = bitcast [1 x [1 x i32**]]* %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i16*** %l_2444 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16** null, i16*** %l_2444, align 8, !tbaa !5
  %5 = bitcast i32* %l_2446 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -7, i32* %l_2446, align 4, !tbaa !1
  %6 = bitcast i32***** %l_2473 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32**** getelementptr inbounds ([3 x i32***], [3 x i32***]* @g_179, i32 0, i64 1), i32***** %l_2473, align 8, !tbaa !5
  %7 = bitcast i32* %l_2478 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -40543261, i32* %l_2478, align 4, !tbaa !1
  %8 = bitcast [2 x [2 x i32]]* %l_2479 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast [2 x [2 x i32]]* %l_2479 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([2 x [2 x i32]]* @func_7.l_2479 to i8*), i64 16, i32 16, i1 false)
  %10 = bitcast i32**** %l_2541 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32*** getelementptr inbounds ([3 x [3 x i32**]], [3 x [3 x i32**]]* @g_2291, i32 0, i64 1, i64 1), i32**** %l_2541, align 8, !tbaa !5
  %11 = bitcast i32** %l_2559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_2559, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2598) #1
  store i8 6, i8* %l_2598, align 1, !tbaa !9
  %12 = bitcast i64** %l_2606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_117, i64** %l_2606, align 8, !tbaa !5
  %13 = bitcast i64*** %l_2605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64** %l_2606, i64*** %l_2605, align 8, !tbaa !5
  %14 = bitcast i64* %l_2610 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 529030768473323032, i64* %l_2610, align 8, !tbaa !7
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %17

; <label>:17                                      ; preds = %35, %0
  %18 = load i32, i32* %i, align 4, !tbaa !1
  %19 = icmp slt i32 %18, 1
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
  %29 = getelementptr inbounds [1 x [1 x i32**]], [1 x [1 x i32**]]* %l_9, i32 0, i64 %28
  %30 = getelementptr inbounds [1 x i32**], [1 x i32**]* %29, i32 0, i64 %26
  store i32** %l_10, i32*** %30, align 8, !tbaa !5
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
  store i32* null, i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_11, i32 0, i64 1), align 8, !tbaa !5
  store i32 10, i32* %1, align 4, !tbaa !1
  br label %39

; <label>:39                                      ; preds = %101, %38
  %40 = load i32, i32* %1, align 4, !tbaa !1
  %41 = icmp sle i32 %40, -12
  br i1 %41, label %42, label %106

; <label>:42                                      ; preds = %39
  %43 = bitcast [8 x [6 x i8]]* %l_28 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %43) #1
  %44 = bitcast [8 x [6 x i8]]* %l_28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* getelementptr inbounds ([8 x [6 x i8]], [8 x [6 x i8]]* @func_7.l_28, i32 0, i32 0, i32 0), i64 48, i32 16, i1 false)
  %45 = bitcast [7 x i8*]* %l_294 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %45) #1
  %46 = bitcast [7 x i8*]* %l_294 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* bitcast ([7 x i8*]* @func_7.l_294 to i8*), i64 56, i32 16, i1 false)
  %47 = bitcast i32* %l_295 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 7, i32* %l_295, align 4, !tbaa !1
  %48 = bitcast i32** %l_552 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i32* %l_295, i32** %l_552, align 8, !tbaa !5
  %49 = bitcast i32* %l_820 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 -1, i32* %l_820, align 4, !tbaa !1
  %50 = bitcast i32** %l_821 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32* null, i32** %l_821, align 8, !tbaa !5
  %51 = bitcast i32* %l_822 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 844827008, i32* %l_822, align 4, !tbaa !1
  %52 = bitcast i32** %l_2421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32* @g_12, i32** %l_2421, align 8, !tbaa !5
  %53 = bitcast [7 x i32*]* %l_2426 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %53) #1
  %54 = bitcast [7 x i32*]* %l_2426 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast ([7 x i32*]* @func_7.l_2426 to i8*), i64 56, i32 16, i1 false)
  %55 = bitcast [9 x [10 x [2 x i8]]]* %l_2433 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %55) #1
  %56 = bitcast [9 x [10 x [2 x i8]]]* %l_2433 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* getelementptr inbounds ([9 x [10 x [2 x i8]]], [9 x [10 x [2 x i8]]]* @func_7.l_2433, i32 0, i32 0, i32 0, i32 0), i64 180, i32 16, i1 false)
  %57 = bitcast i16** %l_2445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i16* @g_2230, i16** %l_2445, align 8, !tbaa !5
  %58 = bitcast [6 x i32***]* %l_2461 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %58) #1
  %59 = getelementptr inbounds [6 x i32***], [6 x i32***]* %l_2461, i64 0, i64 0
  store i32*** @g_180, i32**** %59, !tbaa !5
  %60 = getelementptr inbounds i32***, i32**** %59, i64 1
  %61 = getelementptr inbounds [1 x [1 x i32**]], [1 x [1 x i32**]]* %l_9, i32 0, i64 0
  %62 = getelementptr inbounds [1 x i32**], [1 x i32**]* %61, i32 0, i64 0
  store i32*** %62, i32**** %60, !tbaa !5
  %63 = getelementptr inbounds i32***, i32**** %60, i64 1
  store i32*** @g_180, i32**** %63, !tbaa !5
  %64 = getelementptr inbounds i32***, i32**** %63, i64 1
  store i32*** @g_180, i32**** %64, !tbaa !5
  %65 = getelementptr inbounds i32***, i32**** %64, i64 1
  %66 = getelementptr inbounds [1 x [1 x i32**]], [1 x [1 x i32**]]* %l_9, i32 0, i64 0
  %67 = getelementptr inbounds [1 x i32**], [1 x i32**]* %66, i32 0, i64 0
  store i32*** %67, i32**** %65, !tbaa !5
  %68 = getelementptr inbounds i32***, i32**** %65, i64 1
  store i32*** @g_180, i32**** %68, !tbaa !5
  %69 = bitcast i32****** %l_2498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  store i32***** %l_2473, i32****** %l_2498, align 8, !tbaa !5
  %70 = bitcast i64** %l_2505 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i64* @g_416, i64** %l_2505, align 8, !tbaa !5
  %71 = bitcast i64*** %l_2512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store i64** %l_2505, i64*** %l_2512, align 8, !tbaa !5
  %72 = bitcast i16* %l_2568 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %72) #1
  store i16 4, i16* %l_2568, align 2, !tbaa !10
  %73 = bitcast i64*** %l_2583 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i64** %l_2505, i64*** %l_2583, align 8, !tbaa !5
  %74 = bitcast i32*** %l_2600 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i32** @g_2292, i32*** %l_2600, align 8, !tbaa !5
  %75 = bitcast i64**** %l_2616 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i64*** null, i64**** %l_2616, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2669) #1
  store i8 0, i8* %l_2669, align 1, !tbaa !9
  %76 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2669) #1
  %82 = bitcast i64**** %l_2616 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32*** %l_2600 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64*** %l_2583 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i16* %l_2568 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %85) #1
  %86 = bitcast i64*** %l_2512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i64** %l_2505 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32****** %l_2498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast [6 x i32***]* %l_2461 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %89) #1
  %90 = bitcast i16** %l_2445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast [9 x [10 x [2 x i8]]]* %l_2433 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %91) #1
  %92 = bitcast [7 x i32*]* %l_2426 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %92) #1
  %93 = bitcast i32** %l_2421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i32* %l_822 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32** %l_821 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i32* %l_820 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32** %l_552 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %l_295 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast [7 x i8*]* %l_294 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %99) #1
  %100 = bitcast [8 x [6 x i8]]* %l_28 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %100) #1
  br label %101

; <label>:101                                     ; preds = %42
  %102 = load i32, i32* %1, align 4, !tbaa !1
  %103 = trunc i32 %102 to i16
  %104 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %103, i16 signext 1)
  %105 = sext i16 %104 to i32
  store i32 %105, i32* %1, align 4, !tbaa !1
  br label %39

; <label>:106                                     ; preds = %39
  %107 = load i32, i32* %1, align 4, !tbaa !1
  %108 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i64* %l_2610 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i64*** %l_2605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i64** %l_2606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2598) #1
  %113 = bitcast i32** %l_2559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32**** %l_2541 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast [2 x [2 x i32]]* %l_2479 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #1
  %116 = bitcast i32* %l_2478 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32***** %l_2473 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %l_2446 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i16*** %l_2444 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast [1 x [1 x i32**]]* %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  ret i32 %107
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
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
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
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
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = add i64 %3, %4
  ret i64 %5
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
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
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
