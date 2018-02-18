; ModuleID = '00959.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [2 x [5 x i16]] [[5 x i16] [i16 5, i16 0, i16 -843, i16 -843, i16 0], [5 x i16] [i16 5, i16 0, i16 -843, i16 -843, i16 0]], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"g_2[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_5 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global [5 x [8 x [5 x i32]]] [[8 x [5 x i32]] [[5 x i32] [i32 -2037079527, i32 -7, i32 -926235874, i32 -5, i32 0], [5 x i32] [i32 -1265275276, i32 -1, i32 -2000333294, i32 -8, i32 -9], [5 x i32] [i32 -7, i32 -1552721114, i32 1, i32 -323812689, i32 -1], [5 x i32] [i32 865830978, i32 0, i32 351990081, i32 -9, i32 0], [5 x i32] [i32 998777193, i32 0, i32 -202936741, i32 -202936741, i32 0], [5 x i32] [i32 505953567, i32 68515638, i32 -8, i32 0, i32 1017436581], [5 x i32] [i32 -8, i32 0, i32 0, i32 -7, i32 -5], [5 x i32] [i32 -2000333294, i32 68515638, i32 6, i32 1290938910, i32 -1]], [8 x [5 x i32]] [[5 x i32] [i32 -1, i32 -6, i32 1, i32 -202936741, i32 -1357592307], [5 x i32] [i32 5, i32 -1758867664, i32 0, i32 5, i32 -1013146220], [5 x i32] [i32 -926235874, i32 0, i32 -6, i32 6, i32 -1], [5 x i32] [i32 -765033391, i32 6, i32 -5, i32 1846827508, i32 2028829755], [5 x i32] [i32 -1758867664, i32 998777193, i32 -8, i32 -1, i32 1184381975], [5 x i32] [i32 380924383, i32 -1013146220, i32 2, i32 1, i32 1], [5 x i32] [i32 1017436581, i32 164656084, i32 2, i32 -202936741, i32 -7], [5 x i32] [i32 6, i32 1846827508, i32 -8, i32 -765033391, i32 5]], [8 x [5 x i32]] [[5 x i32] [i32 1, i32 0, i32 -5, i32 -862149863, i32 6], [5 x i32] [i32 -1013146220, i32 -396064402, i32 -6, i32 -7, i32 -5], [5 x i32] [i32 -2000333294, i32 1017436581, i32 0, i32 1017436581, i32 -2000333294], [5 x i32] [i32 351990081, i32 -1013146220, i32 1, i32 1, i32 1017436581], [5 x i32] [i32 -1013146220, i32 -7, i32 6, i32 0, i32 -862149863], [5 x i32] [i32 0, i32 -1, i32 -861988498, i32 -1013146220, i32 1017436581], [5 x i32] [i32 1, i32 0, i32 -1357592307, i32 351990081, i32 -2000333294], [5 x i32] [i32 1017436581, i32 -862149863, i32 164656084, i32 -2000333294, i32 -5]], [8 x [5 x i32]] [[5 x i32] [i32 -7, i32 -1552721114, i32 -1, i32 -1013146220, i32 6], [5 x i32] [i32 -862149863, i32 68515638, i32 -3, i32 1, i32 5], [5 x i32] [i32 -765033391, i32 1, i32 -396064402, i32 6, i32 -7], [5 x i32] [i32 -202936741, i32 1, i32 1330542965, i32 1017436581, i32 1], [5 x i32] [i32 1, i32 1, i32 -1357592307, i32 380924383, i32 1184381975], [5 x i32] [i32 -1, i32 1, i32 -7, i32 -1758867664, i32 2028829755], [5 x i32] [i32 1846827508, i32 68515638, i32 -9, i32 -765033391, i32 -1], [5 x i32] [i32 6, i32 -1552721114, i32 1, i32 -926235874, i32 -1013146220]], [8 x [5 x i32]] [[5 x i32] [i32 5, i32 -862149863, i32 -862149863, i32 5, i32 -1357592307], [5 x i32] [i32 -202936741, i32 0, i32 0, i32 -1, i32 -1], [5 x i32] [i32 1290938910, i32 -1, i32 -5, i32 -396064402, i32 -8], [5 x i32] [i32 -1758867664, i32 -7, i32 1, i32 -1, i32 1], [5 x i32] [i32 -7, i32 -1013146220, i32 202498115, i32 5, i32 1], [5 x i32] [i32 164656084, i32 1017436581, i32 2, i32 -926235874, i32 998777193], [5 x i32] [i32 6, i32 -396064402, i32 1, i32 -765033391, i32 1], [5 x i32] [i32 0, i32 0, i32 0, i32 -1758867664, i32 6]]], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"g_7[i][j][k]\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_8 = internal global i32 -1397566203, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_9 = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"g_9[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_10 = internal global i32 -1, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_11 = internal global [7 x [4 x i32]] [[4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794], [4 x i32] [i32 525448247, i32 1803053794, i32 525448247, i32 1803053794]], align 16
@.str.11 = private unnamed_addr constant [11 x i8] c"g_11[i][j]\00", align 1
@g_12 = internal global i32 -2117894306, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_13 = internal global i32 -10, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@g_14 = internal global i32 -8, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_50 = internal global [10 x [10 x i64]] [[10 x i64] [i64 -7573034513031353632, i64 4610341016939614477, i64 1, i64 4610341016939614477, i64 -7573034513031353632, i64 6924557939699988313, i64 -8, i64 1, i64 -888764328235814143, i64 -7573034513031353632], [10 x i64] [i64 -7573034513031353632, i64 -165456539497246644, i64 6161010066809101071, i64 -7297438340385317772, i64 6623448828276687792, i64 2970833239628156529, i64 -7297438340385317772, i64 3881460467491013432, i64 -6653231360216263536, i64 -7573034513031353632], [10 x i64] [i64 2970833239628156529, i64 -7297438340385317772, i64 3881460467491013432, i64 -6653231360216263536, i64 -7573034513031353632, i64 9, i64 -165456539497246644, i64 0, i64 -6653231360216263536, i64 2970833239628156529], [10 x i64] [i64 5352745115150990302, i64 -8, i64 1, i64 -7297438340385317772, i64 -1800646690771833557, i64 6924557939699988313, i64 4610341016939614477, i64 0, i64 -888764328235814143, i64 5352745115150990302], [10 x i64] [i64 -1800646690771833557, i64 -165456539497246644, i64 3881460467491013432, i64 4610341016939614477, i64 6623448828276687792, i64 6623448828276687792, i64 4610341016939614477, i64 3881460467491013432, i64 -165456539497246644, i64 -1800646690771833557], [10 x i64] [i64 2970833239628156529, i64 -8, i64 6161010066809101071, i64 -6653231360216263536, i64 5352745115150990302, i64 6623448828276687792, i64 -165456539497246644, i64 1, i64 8, i64 2970833239628156529], [10 x i64] [i64 -1800646690771833557, i64 -7297438340385317772, i64 1, i64 -8, i64 5352745115150990302, i64 6924557939699988313, i64 -7297438340385317772, i64 0, i64 -888764328235814143, i64 -1800646690771833557], [10 x i64] [i64 5352745115150990302, i64 -165456539497246644, i64 -8838686653778208496, i64 -8, i64 6623448828276687792, i64 9, i64 -8, i64 3881460467491013432, i64 8, i64 5352745115150990302], [10 x i64] [i64 2970833239628156529, i64 4610341016939614477, i64 -8838686653778208496, i64 -6653231360216263536, i64 -1800646690771833557, i64 2970833239628156529, i64 -165456539497246644, i64 0, i64 -165456539497246644, i64 2970833239628156529], [10 x i64] [i64 -7573034513031353632, i64 4610341016939614477, i64 1, i64 4610341016939614477, i64 -7573034513031353632, i64 6924557939699988313, i64 -8, i64 1, i64 -888764328235814143, i64 -7573034513031353632]], align 16
@.str.15 = private unnamed_addr constant [11 x i8] c"g_50[i][j]\00", align 1
@g_74 = internal global i32 -15202654, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"g_74\00", align 1
@g_76 = internal global [10 x i32] [i32 8, i32 -659339458, i32 -659339458, i32 8, i32 -659339458, i32 -659339458, i32 8, i32 -659339458, i32 -659339458, i32 8], align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"g_76[i]\00", align 1
@g_100 = internal constant [3 x [10 x [8 x i32]]] [[10 x [8 x i32]] [[8 x i32] [i32 1627995635, i32 -1599204229, i32 18227851, i32 -1386517148, i32 -1813321389, i32 -8, i32 542187627, i32 -1385431494], [8 x i32] [i32 -1599204229, i32 -1, i32 1, i32 -6, i32 -45387071, i32 1895919974, i32 -1137072616, i32 1], [8 x i32] [i32 9, i32 -1817033895, i32 113674986, i32 7, i32 1, i32 7, i32 1, i32 1], [8 x i32] [i32 6, i32 0, i32 -8, i32 0, i32 -1137072616, i32 0, i32 6, i32 1273431473], [8 x i32] [i32 1827425531, i32 8, i32 -1404486060, i32 -1385431494, i32 -857763226, i32 1559528514, i32 11233431, i32 2075128778], [8 x i32] [i32 -1, i32 -6, i32 -114790170, i32 -964174773, i32 2119135710, i32 336334879, i32 -4, i32 -2138764270], [8 x i32] [i32 639753424, i32 -1005948388, i32 8, i32 2075128778, i32 -1137072616, i32 1864967847, i32 1, i32 -4], [8 x i32] [i32 1, i32 -1612629867, i32 1864967847, i32 -1813321389, i32 2096698464, i32 -1, i32 1273431473, i32 2096698464], [8 x i32] [i32 9, i32 511273261, i32 800752005, i32 9, i32 7, i32 -1, i32 -1385431494, i32 2138159600], [8 x i32] [i32 -10, i32 -1, i32 0, i32 -38209491, i32 0, i32 -1, i32 336334879, i32 -857763226]], [10 x [8 x i32]] [[8 x i32] [i32 5, i32 259229720, i32 -262414780, i32 0, i32 2075754561, i32 0, i32 18227851, i32 -4], [8 x i32] [i32 1895919974, i32 848475443, i32 9, i32 -38209491, i32 -8, i32 -964174773, i32 1, i32 -10], [8 x i32] [i32 0, i32 416833989, i32 0, i32 -3, i32 -2050211520, i32 -3, i32 0, i32 416833989], [8 x i32] [i32 1, i32 0, i32 2075754561, i32 1, i32 -1, i32 -120232132, i32 542187627, i32 1835330702], [8 x i32] [i32 6, i32 2096698464, i32 -1, i32 -2050211520, i32 1, i32 -2138764270, i32 542187627, i32 -9], [8 x i32] [i32 348669986, i32 -2050211520, i32 2075754561, i32 -120232132, i32 0, i32 800752005, i32 0, i32 -8], [8 x i32] [i32 0, i32 800752005, i32 0, i32 -8, i32 1835330702, i32 0, i32 1, i32 -611733970], [8 x i32] [i32 8, i32 -10, i32 9, i32 0, i32 -10, i32 1, i32 18227851, i32 0], [8 x i32] [i32 7, i32 1513295546, i32 -262414780, i32 -1, i32 0, i32 -114790170, i32 336334879, i32 6], [8 x i32] [i32 1, i32 0, i32 -624293037, i32 0, i32 0, i32 1835330702, i32 1513295546, i32 -390940689]], [10 x [8 x i32]] [[8 x i32] [i32 1, i32 1895919974, i32 -1823393229, i32 0, i32 -38209491, i32 -1137072616, i32 0, i32 1], [8 x i32] [i32 -4, i32 2075128778, i32 -3, i32 0, i32 1, i32 113674986, i32 6, i32 -8], [8 x i32] [i32 -2050211520, i32 -390940689, i32 -533633524, i32 -1386517148, i32 7, i32 539088949, i32 1, i32 -8], [8 x i32] [i32 1627995635, i32 1559528514, i32 -964174773, i32 -2050211520, i32 2096698464, i32 4, i32 2075128778, i32 -1404486060], [8 x i32] [i32 -624293037, i32 5, i32 -2, i32 -1, i32 2075128778, i32 -1, i32 2075754561, i32 416833989], [8 x i32] [i32 -2050211520, i32 0, i32 -114790170, i32 -1136727674, i32 6, i32 -1, i32 -45387071, i32 -262414780], [8 x i32] [i32 1559528514, i32 -1, i32 2138159600, i32 -38209491, i32 -38209491, i32 2138159600, i32 -1, i32 1559528514], [8 x i32] [i32 -1, i32 0, i32 6, i32 -390940689, i32 1895919974, i32 -4, i32 113674986, i32 -857763226], [8 x i32] [i32 1, i32 -1, i32 -1, i32 -45387071, i32 -390940689, i32 -4, i32 -2050211520, i32 -1269191302], [8 x i32] [i32 2075128778, i32 0, i32 -4, i32 -1612629867, i32 -10, i32 2138159600, i32 -9, i32 18227851]]], align 16
@.str.18 = private unnamed_addr constant [15 x i8] c"g_100[i][j][k]\00", align 1
@g_109 = internal global i8 0, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_109\00", align 1
@g_132 = internal global i8 -3, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_159 = internal global i16 -22383, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_159\00", align 1
@g_179 = internal global [1 x [1 x i8]] [[1 x i8] c"\01"], align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"g_179[i][j]\00", align 1
@g_194 = internal global [6 x [4 x [10 x i8]]] [[4 x [10 x i8]] [[10 x i8] c"\FA\BC\BC\FA\CF\FA\BC\BC\FA\CF", [10 x i8] c"\FA\BC\BC\FA\CF\FA\BC\BC\FA\CF", [10 x i8] c"\FA\BC\BC\FA\CF\FA\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{"], [4 x [10 x i8]] [[10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{"], [4 x [10 x i8]] [[10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{"], [4 x [10 x i8]] [[10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{"], [4 x [10 x i8]] [[10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{"], [4 x [10 x i8]] [[10 x i8] c"\FF\FA\FA\FF{\FF\FA\FA\FF{", [10 x i8] c"\FF\FA\FA\FF{\FF\FA\FF\CF\BC", [10 x i8] c"\CF\FF\FF\CF\BC\CF\FF\FF\CF\BC", [10 x i8] c"\CF\FF\FF\CF\BC\CF\FF\FF\CF\BC"]], align 16
@.str.23 = private unnamed_addr constant [15 x i8] c"g_194[i][j][k]\00", align 1
@g_214 = internal global i8 -10, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_214\00", align 1
@g_227 = internal global i32 -7, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_242 = internal global i16 -5, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_242\00", align 1
@g_279 = internal global i64 -9076774233526774540, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_279\00", align 1
@g_303 = internal global i32 -1677591198, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_303\00", align 1
@g_430 = internal global i8 71, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_430\00", align 1
@g_431 = internal global i16 -31247, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_431\00", align 1
@g_444 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_444\00", align 1
@g_503 = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_503\00", align 1
@g_668 = internal global [10 x [6 x i32]] [[6 x i32] [i32 1244037947, i32 -882956450, i32 151137267, i32 151137267, i32 -882956450, i32 1244037947], [6 x i32] [i32 1244037947, i32 1, i32 151137267, i32 1244037947, i32 -882956450, i32 151137267], [6 x i32] [i32 1244037947, i32 -882956450, i32 151137267, i32 151137267, i32 -882956450, i32 1244037947], [6 x i32] [i32 1244037947, i32 1, i32 151137267, i32 1244037947, i32 -882956450, i32 151137267], [6 x i32] [i32 1244037947, i32 -882956450, i32 151137267, i32 151137267, i32 -882956450, i32 1244037947], [6 x i32] [i32 1244037947, i32 1, i32 151137267, i32 1244037947, i32 -882956450, i32 151137267], [6 x i32] [i32 1244037947, i32 -882956450, i32 151137267, i32 151137267, i32 -882956450, i32 1244037947], [6 x i32] [i32 1244037947, i32 1, i32 151137267, i32 1244037947, i32 -882956450, i32 151137267], [6 x i32] [i32 1244037947, i32 -882956450, i32 151137267, i32 151137267, i32 -882956450, i32 1244037947], [6 x i32] [i32 1244037947, i32 1, i32 151137267, i32 1244037947, i32 -882956450, i32 151137267]], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_668[i][j]\00", align 1
@g_700 = internal global i32 -1, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_700\00", align 1
@g_743 = internal global [7 x i32] [i32 654881255, i32 654881255, i32 654881255, i32 654881255, i32 654881255, i32 654881255, i32 654881255], align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"g_743[i]\00", align 1
@g_780 = internal global i32 1035732006, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_780\00", align 1
@g_919 = internal global [1 x i32] [i32 1636736841], align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"g_919[i]\00", align 1
@g_942 = internal global [4 x i16] [i16 -25335, i16 -25335, i16 -25335, i16 -25335], align 2
@.str.38 = private unnamed_addr constant [9 x i8] c"g_942[i]\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_975\00", align 1
@g_1021 = internal global [7 x i16] [i16 -18446, i16 -18446, i16 -18446, i16 -18446, i16 -18446, i16 -18446, i16 -18446], align 2
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1021[i]\00", align 1
@g_1041 = internal global i8 4, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1041\00", align 1
@g_1066 = internal global [5 x [1 x [6 x i8]]] [[1 x [6 x i8]] [[6 x i8] c"\00\00\FF\FF\00\00"], [1 x [6 x i8]] [[6 x i8] c"\06\00\01\00\01\00"], [1 x [6 x i8]] [[6 x i8] c"\01\06\FF\0D\0D\FF"], [1 x [6 x i8]] [[6 x i8] c"\01\01\0D\00\01\00"], [1 x [6 x i8]] [[6 x i8] c"\06\01\06\FF\0D\0D"]], align 16
@.str.42 = private unnamed_addr constant [16 x i8] c"g_1066[i][j][k]\00", align 1
@g_1144 = internal global [4 x [7 x [1 x i64]]] [[7 x [1 x i64]] [[1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734]], [7 x [1 x i64]] [[1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7]], [7 x [1 x i64]] [[1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734]], [7 x [1 x i64]] [[1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7], [1 x i64] [i64 2190744358797809734], [1 x i64] [i64 -7]]], align 16
@.str.43 = private unnamed_addr constant [16 x i8] c"g_1144[i][j][k]\00", align 1
@g_1147 = internal global i8 1, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1147\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1165\00", align 1
@g_1241 = internal global [1 x [1 x i16]] [[1 x i16] [i16 7]], align 2
@.str.46 = private unnamed_addr constant [13 x i8] c"g_1241[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_135 = internal global i32** @g_136, align 8
@func_1.l_1204 = private unnamed_addr constant [4 x [1 x [5 x i32*]]] [[1 x [5 x i32*]] [[5 x i32*] [i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32]* @g_9 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0), i32* @g_5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0)]], [1 x [5 x i32*]] [[5 x i32*] [i32* null, i32* @g_5, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0), i32* @g_5, i32* null]], [1 x [5 x i32*]] [[5 x i32*] [i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0), i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32]* @g_9 to i8*), i64 8) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32]* @g_9 to i8*), i64 8) to i32*)]], [1 x [5 x i32*]] [[5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32]* @g_9 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i32]* @g_9 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i32 0), i32* null, i32* @g_5]]], align 16
@func_1.l_1274 = private unnamed_addr constant [5 x [9 x [5 x i16]]] [[9 x [5 x i16]] [[5 x i16] [i16 -5741, i16 9, i16 -17469, i16 -1, i16 -1], [5 x i16] [i16 -11189, i16 -10364, i16 -1, i16 -1, i16 -5741], [5 x i16] [i16 -1, i16 -12572, i16 7, i16 7, i16 -12572], [5 x i16] [i16 -12572, i16 558, i16 -1, i16 -5741, i16 -25583], [5 x i16] [i16 -10936, i16 -19973, i16 -12751, i16 -24101, i16 9], [5 x i16] [i16 -20320, i16 -12572, i16 2, i16 -20320, i16 -24101], [5 x i16] [i16 -10936, i16 7, i16 -25583, i16 -3219, i16 0], [5 x i16] [i16 -12572, i16 -10936, i16 4, i16 26459, i16 9], [5 x i16] [i16 -1, i16 26459, i16 -3733, i16 -5671, i16 -28427]], [9 x [5 x i16]] [[5 x i16] [i16 -17469, i16 9, i16 -3733, i16 -1, i16 0], [5 x i16] [i16 7, i16 9, i16 -11189, i16 9, i16 7], [5 x i16] [i16 -5671, i16 558, i16 4, i16 8546, i16 0], [5 x i16] [i16 -1, i16 -445, i16 0, i16 2, i16 17211], [5 x i16] [i16 7, i16 25013, i16 -10364, i16 558, i16 0], [5 x i16] [i16 -12751, i16 2, i16 -445, i16 9, i16 7], [5 x i16] [i16 0, i16 0, i16 17211, i16 2, i16 0], [5 x i16] [i16 -20320, i16 -25583, i16 -24101, i16 7, i16 -28427], [5 x i16] [i16 -6, i16 -25583, i16 8546, i16 -3733, i16 17478]], [9 x [5 x i16]] [[5 x i16] [i16 -1, i16 0, i16 0, i16 -1, i16 -3733], [5 x i16] [i16 25013, i16 2, i16 9, i16 -1, i16 9], [5 x i16] [i16 0, i16 25013, i16 0, i16 -445, i16 17478], [5 x i16] [i16 0, i16 -445, i16 -3733, i16 -1, i16 4], [5 x i16] [i16 -17469, i16 558, i16 -10936, i16 -1, i16 -20320], [5 x i16] [i16 8546, i16 9, i16 0, i16 -3733, i16 7], [5 x i16] [i16 -1, i16 9, i16 4, i16 7, i16 -445], [5 x i16] [i16 -1, i16 0, i16 -1, i16 2, i16 2], [5 x i16] [i16 8546, i16 25013, i16 8546, i16 9, i16 0]], [9 x [5 x i16]] [[5 x i16] [i16 -17469, i16 17211, i16 -445, i16 558, i16 8546], [5 x i16] [i16 0, i16 -20320, i16 -12572, i16 2, i16 -20320], [5 x i16] [i16 0, i16 -25583, i16 -445, i16 8546, i16 -28427], [5 x i16] [i16 25013, i16 -6, i16 8546, i16 9, i16 0], [5 x i16] [i16 -1, i16 -20320, i16 -1, i16 -1, i16 9], [5 x i16] [i16 -6, i16 2, i16 4, i16 -5671, i16 9], [5 x i16] [i16 -20320, i16 -6, i16 0, i16 0, i16 0], [5 x i16] [i16 0, i16 0, i16 -10936, i16 -1, i16 -28427], [5 x i16] [i16 -12751, i16 558, i16 -3733, i16 -1, i16 -20320]], [9 x [5 x i16]] [[5 x i16] [i16 7, i16 -3733, i16 0, i16 9, i16 8546], [5 x i16] [i16 -1, i16 558, i16 9, i16 7, i16 0], [5 x i16] [i16 -5671, i16 0, i16 0, i16 17211, i16 2], [5 x i16] [i16 7, i16 -6, i16 8546, i16 558, i16 -445], [5 x i16] [i16 -17469, i16 2, i16 -24101, i16 558, i16 7], [5 x i16] [i16 -445, i16 -20320, i16 17211, i16 17211, i16 -20320], [5 x i16] [i16 -20320, i16 -6, i16 -445, i16 7, i16 4], [5 x i16] [i16 25013, i16 -25583, i16 -10364, i16 9, i16 17478], [5 x i16] [i16 -1, i16 -20320, i16 0, i16 -1, i16 9]]], align 16
@func_1.l_1141 = private unnamed_addr constant [6 x [4 x i8*]] [[4 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 172), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 78)], [4 x i8*] [i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @g_179, i32 0, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 78), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 78)], [4 x i8*] [i8* null, i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 172), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 78)], [4 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 78), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 172), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194)], [4 x i8*] [i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @g_179, i32 0, i32 0, i32 0), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 172)], [4 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194), i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i32 0, i32 0, i32 0), i64 194)]], align 16
@g_966 = internal global i32* @g_780, align 8
@g_546 = internal global i8* @g_109, align 8
@g_296 = internal global i32**** @g_297, align 8
@g_136 = internal global i32* @g_14, align 8
@g_297 = internal global i32*** @g_135, align 8
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
  %90 = call signext i8 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %119, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %122

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %115, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %118

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @g_2, i32 0, i64 %102
  %104 = getelementptr inbounds [5 x i16], [5 x i16]* %103, i32 0, i64 %100
  %105 = load volatile i16, i16* %104, align 2, !tbaa !10
  %106 = zext i16 %105 to i64
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
  %123 = load i32, i32* @g_5, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %125)
  %126 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %128)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %169, %122
  %130 = load i32, i32* %i, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 5
  br i1 %131, label %132, label %172

; <label>:132                                     ; preds = %129
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %133

; <label>:133                                     ; preds = %165, %132
  %134 = load i32, i32* %j, align 4, !tbaa !1
  %135 = icmp slt i32 %134, 8
  br i1 %135, label %136, label %168

; <label>:136                                     ; preds = %133
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %161, %136
  %138 = load i32, i32* %k, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 5
  br i1 %139, label %140, label %164

; <label>:140                                     ; preds = %137
  %141 = load i32, i32* %k, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %j, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [5 x [8 x [5 x i32]]], [5 x [8 x [5 x i32]]]* @g_7, i32 0, i64 %146
  %148 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %147, i32 0, i64 %144
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %148, i32 0, i64 %142
  %150 = load volatile i32, i32* %149, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 %152)
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

; <label>:155                                     ; preds = %140
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = load i32, i32* %j, align 4, !tbaa !1
  %158 = load i32, i32* %k, align 4, !tbaa !1
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %156, i32 %157, i32 %158)
  br label %160

; <label>:160                                     ; preds = %155, %140
  br label %161

; <label>:161                                     ; preds = %160
  %162 = load i32, i32* %k, align 4, !tbaa !1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %k, align 4, !tbaa !1
  br label %137

; <label>:164                                     ; preds = %137
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %j, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %j, align 4, !tbaa !1
  br label %133

; <label>:168                                     ; preds = %133
  br label %169

; <label>:169                                     ; preds = %168
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %i, align 4, !tbaa !1
  br label %129

; <label>:172                                     ; preds = %129
  %173 = load volatile i32, i32* @g_8, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %175)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %192, %172
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 3
  br i1 %178, label %179, label %195

; <label>:179                                     ; preds = %176
  %180 = load i32, i32* %i, align 4, !tbaa !1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* @g_9, i32 0, i64 %181
  %183 = load i32, i32* %182, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

; <label>:188                                     ; preds = %179
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %189)
  br label %191

; <label>:191                                     ; preds = %188, %179
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %i, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %i, align 4, !tbaa !1
  br label %176

; <label>:195                                     ; preds = %176
  %196 = load volatile i32, i32* @g_10, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %198)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %227, %195
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 7
  br i1 %201, label %202, label %230

; <label>:202                                     ; preds = %199
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %223, %202
  %204 = load i32, i32* %j, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 4
  br i1 %205, label %206, label %226

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* @g_11, i32 0, i64 %210
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %211, i32 0, i64 %208
  %213 = load volatile i32, i32* %212, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

; <label>:218                                     ; preds = %206
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = load i32, i32* %j, align 4, !tbaa !1
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %219, i32 %220)
  br label %222

; <label>:222                                     ; preds = %218, %206
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:226                                     ; preds = %203
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:230                                     ; preds = %199
  %231 = load volatile i32, i32* @g_12, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %233)
  %234 = load volatile i32, i32* @g_13, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* @g_14, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %239)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:240                                     ; preds = %267, %230
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = icmp slt i32 %241, 10
  br i1 %242, label %243, label %270

; <label>:243                                     ; preds = %240
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %244

; <label>:244                                     ; preds = %263, %243
  %245 = load i32, i32* %j, align 4, !tbaa !1
  %246 = icmp slt i32 %245, 10
  br i1 %246, label %247, label %266

; <label>:247                                     ; preds = %244
  %248 = load i32, i32* %j, align 4, !tbaa !1
  %249 = sext i32 %248 to i64
  %250 = load i32, i32* %i, align 4, !tbaa !1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @g_50, i32 0, i64 %251
  %253 = getelementptr inbounds [10 x i64], [10 x i64]* %252, i32 0, i64 %249
  %254 = load i64, i64* %253, align 8, !tbaa !7
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

; <label>:258                                     ; preds = %247
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %259, i32 %260)
  br label %262

; <label>:262                                     ; preds = %258, %247
  br label %263

; <label>:263                                     ; preds = %262
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %j, align 4, !tbaa !1
  br label %244

; <label>:266                                     ; preds = %244
  br label %267

; <label>:267                                     ; preds = %266
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %i, align 4, !tbaa !1
  br label %240

; <label>:270                                     ; preds = %240
  %271 = load i32, i32* @g_74, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %273)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:274                                     ; preds = %290, %270
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = icmp slt i32 %275, 10
  br i1 %276, label %277, label %293

; <label>:277                                     ; preds = %274
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [10 x i32], [10 x i32]* @g_76, i32 0, i64 %279
  %281 = load i32, i32* %280, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

; <label>:286                                     ; preds = %277
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %287)
  br label %289

; <label>:289                                     ; preds = %286, %277
  br label %290

; <label>:290                                     ; preds = %289
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %i, align 4, !tbaa !1
  br label %274

; <label>:293                                     ; preds = %274
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %334, %293
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 3
  br i1 %296, label %297, label %337

; <label>:297                                     ; preds = %294
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %330, %297
  %299 = load i32, i32* %j, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 10
  br i1 %300, label %301, label %333

; <label>:301                                     ; preds = %298
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:302                                     ; preds = %326, %301
  %303 = load i32, i32* %k, align 4, !tbaa !1
  %304 = icmp slt i32 %303, 8
  br i1 %304, label %305, label %329

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %k, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [3 x [10 x [8 x i32]]], [3 x [10 x [8 x i32]]]* @g_100, i32 0, i64 %311
  %313 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* %312, i32 0, i64 %309
  %314 = getelementptr inbounds [8 x i32], [8 x i32]* %313, i32 0, i64 %307
  %315 = load i32, i32* %314, align 4, !tbaa !1
  %316 = sext i32 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

; <label>:320                                     ; preds = %305
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = load i32, i32* %j, align 4, !tbaa !1
  %323 = load i32, i32* %k, align 4, !tbaa !1
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %321, i32 %322, i32 %323)
  br label %325

; <label>:325                                     ; preds = %320, %305
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32, i32* %k, align 4, !tbaa !1
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:329                                     ; preds = %302
  br label %330

; <label>:330                                     ; preds = %329
  %331 = load i32, i32* %j, align 4, !tbaa !1
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:333                                     ; preds = %298
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:337                                     ; preds = %294
  %338 = load i8, i8* @g_109, align 1, !tbaa !9
  %339 = sext i8 %338 to i64
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %340)
  %341 = load i8, i8* @g_132, align 1, !tbaa !9
  %342 = sext i8 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %343)
  %344 = load i16, i16* @g_159, align 2, !tbaa !10
  %345 = zext i16 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %346)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %375, %337
  %348 = load i32, i32* %i, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 1
  br i1 %349, label %350, label %378

; <label>:350                                     ; preds = %347
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %371, %350
  %352 = load i32, i32* %j, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %354, label %374

; <label>:354                                     ; preds = %351
  %355 = load i32, i32* %j, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [1 x [1 x i8]], [1 x [1 x i8]]* @g_179, i32 0, i64 %358
  %360 = getelementptr inbounds [1 x i8], [1 x i8]* %359, i32 0, i64 %356
  %361 = load i8, i8* %360, align 1, !tbaa !9
  %362 = zext i8 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

; <label>:366                                     ; preds = %354
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %367, i32 %368)
  br label %370

; <label>:370                                     ; preds = %366, %354
  br label %371

; <label>:371                                     ; preds = %370
  %372 = load i32, i32* %j, align 4, !tbaa !1
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %j, align 4, !tbaa !1
  br label %351

; <label>:374                                     ; preds = %351
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %i, align 4, !tbaa !1
  br label %347

; <label>:378                                     ; preds = %347
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:379                                     ; preds = %419, %378
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = icmp slt i32 %380, 6
  br i1 %381, label %382, label %422

; <label>:382                                     ; preds = %379
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:383                                     ; preds = %415, %382
  %384 = load i32, i32* %j, align 4, !tbaa !1
  %385 = icmp slt i32 %384, 4
  br i1 %385, label %386, label %418

; <label>:386                                     ; preds = %383
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %387

; <label>:387                                     ; preds = %411, %386
  %388 = load i32, i32* %k, align 4, !tbaa !1
  %389 = icmp slt i32 %388, 10
  br i1 %389, label %390, label %414

; <label>:390                                     ; preds = %387
  %391 = load i32, i32* %k, align 4, !tbaa !1
  %392 = sext i32 %391 to i64
  %393 = load i32, i32* %j, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [6 x [4 x [10 x i8]]], [6 x [4 x [10 x i8]]]* @g_194, i32 0, i64 %396
  %398 = getelementptr inbounds [4 x [10 x i8]], [4 x [10 x i8]]* %397, i32 0, i64 %394
  %399 = getelementptr inbounds [10 x i8], [10 x i8]* %398, i32 0, i64 %392
  %400 = load i8, i8* %399, align 1, !tbaa !9
  %401 = zext i8 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 %402)
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %410

; <label>:405                                     ; preds = %390
  %406 = load i32, i32* %i, align 4, !tbaa !1
  %407 = load i32, i32* %j, align 4, !tbaa !1
  %408 = load i32, i32* %k, align 4, !tbaa !1
  %409 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %406, i32 %407, i32 %408)
  br label %410

; <label>:410                                     ; preds = %405, %390
  br label %411

; <label>:411                                     ; preds = %410
  %412 = load i32, i32* %k, align 4, !tbaa !1
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %k, align 4, !tbaa !1
  br label %387

; <label>:414                                     ; preds = %387
  br label %415

; <label>:415                                     ; preds = %414
  %416 = load i32, i32* %j, align 4, !tbaa !1
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %j, align 4, !tbaa !1
  br label %383

; <label>:418                                     ; preds = %383
  br label %419

; <label>:419                                     ; preds = %418
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %i, align 4, !tbaa !1
  br label %379

; <label>:422                                     ; preds = %379
  %423 = load i8, i8* @g_214, align 1, !tbaa !9
  %424 = sext i8 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %425)
  %426 = load i32, i32* @g_227, align 4, !tbaa !1
  %427 = zext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %428)
  %429 = load i16, i16* @g_242, align 2, !tbaa !10
  %430 = sext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %431)
  %432 = load i64, i64* @g_279, align 8, !tbaa !7
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %433)
  %434 = load i32, i32* @g_303, align 4, !tbaa !1
  %435 = zext i32 %434 to i64
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %436)
  %437 = load i8, i8* @g_430, align 1, !tbaa !9
  %438 = zext i8 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %439)
  %440 = load i16, i16* @g_431, align 2, !tbaa !10
  %441 = sext i16 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %442)
  %443 = load i32, i32* @g_444, align 4, !tbaa !1
  %444 = sext i32 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %445)
  %446 = load i64, i64* @g_503, align 8, !tbaa !7
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %447)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %448

; <label>:448                                     ; preds = %476, %422
  %449 = load i32, i32* %i, align 4, !tbaa !1
  %450 = icmp slt i32 %449, 10
  br i1 %450, label %451, label %479

; <label>:451                                     ; preds = %448
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %452

; <label>:452                                     ; preds = %472, %451
  %453 = load i32, i32* %j, align 4, !tbaa !1
  %454 = icmp slt i32 %453, 6
  br i1 %454, label %455, label %475

; <label>:455                                     ; preds = %452
  %456 = load i32, i32* %j, align 4, !tbaa !1
  %457 = sext i32 %456 to i64
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [10 x [6 x i32]], [10 x [6 x i32]]* @g_668, i32 0, i64 %459
  %461 = getelementptr inbounds [6 x i32], [6 x i32]* %460, i32 0, i64 %457
  %462 = load i32, i32* %461, align 4, !tbaa !1
  %463 = sext i32 %462 to i64
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %464)
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %471

; <label>:467                                     ; preds = %455
  %468 = load i32, i32* %i, align 4, !tbaa !1
  %469 = load i32, i32* %j, align 4, !tbaa !1
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %468, i32 %469)
  br label %471

; <label>:471                                     ; preds = %467, %455
  br label %472

; <label>:472                                     ; preds = %471
  %473 = load i32, i32* %j, align 4, !tbaa !1
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %j, align 4, !tbaa !1
  br label %452

; <label>:475                                     ; preds = %452
  br label %476

; <label>:476                                     ; preds = %475
  %477 = load i32, i32* %i, align 4, !tbaa !1
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %i, align 4, !tbaa !1
  br label %448

; <label>:479                                     ; preds = %448
  %480 = load i32, i32* @g_700, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %482)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %483

; <label>:483                                     ; preds = %499, %479
  %484 = load i32, i32* %i, align 4, !tbaa !1
  %485 = icmp slt i32 %484, 7
  br i1 %485, label %486, label %502

; <label>:486                                     ; preds = %483
  %487 = load i32, i32* %i, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [7 x i32], [7 x i32]* @g_743, i32 0, i64 %488
  %490 = load i32, i32* %489, align 4, !tbaa !1
  %491 = zext i32 %490 to i64
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %492)
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %498

; <label>:495                                     ; preds = %486
  %496 = load i32, i32* %i, align 4, !tbaa !1
  %497 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %496)
  br label %498

; <label>:498                                     ; preds = %495, %486
  br label %499

; <label>:499                                     ; preds = %498
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %i, align 4, !tbaa !1
  br label %483

; <label>:502                                     ; preds = %483
  %503 = load i32, i32* @g_780, align 4, !tbaa !1
  %504 = sext i32 %503 to i64
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %505)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %506

; <label>:506                                     ; preds = %522, %502
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = icmp slt i32 %507, 1
  br i1 %508, label %509, label %525

; <label>:509                                     ; preds = %506
  %510 = load i32, i32* %i, align 4, !tbaa !1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [1 x i32], [1 x i32]* @g_919, i32 0, i64 %511
  %513 = load i32, i32* %512, align 4, !tbaa !1
  %514 = sext i32 %513 to i64
  %515 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %514, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %515)
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %521

; <label>:518                                     ; preds = %509
  %519 = load i32, i32* %i, align 4, !tbaa !1
  %520 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %519)
  br label %521

; <label>:521                                     ; preds = %518, %509
  br label %522

; <label>:522                                     ; preds = %521
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %i, align 4, !tbaa !1
  br label %506

; <label>:525                                     ; preds = %506
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %526

; <label>:526                                     ; preds = %542, %525
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = icmp slt i32 %527, 4
  br i1 %528, label %529, label %545

; <label>:529                                     ; preds = %526
  %530 = load i32, i32* %i, align 4, !tbaa !1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [4 x i16], [4 x i16]* @g_942, i32 0, i64 %531
  %533 = load i16, i16* %532, align 2, !tbaa !10
  %534 = sext i16 %533 to i64
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %534, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %535)
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %541

; <label>:538                                     ; preds = %529
  %539 = load i32, i32* %i, align 4, !tbaa !1
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %539)
  br label %541

; <label>:541                                     ; preds = %538, %529
  br label %542

; <label>:542                                     ; preds = %541
  %543 = load i32, i32* %i, align 4, !tbaa !1
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %i, align 4, !tbaa !1
  br label %526

; <label>:545                                     ; preds = %526
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 23708, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %546)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %547

; <label>:547                                     ; preds = %563, %545
  %548 = load i32, i32* %i, align 4, !tbaa !1
  %549 = icmp slt i32 %548, 7
  br i1 %549, label %550, label %566

; <label>:550                                     ; preds = %547
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [7 x i16], [7 x i16]* @g_1021, i32 0, i64 %552
  %554 = load i16, i16* %553, align 2, !tbaa !10
  %555 = sext i16 %554 to i64
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %556)
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %562

; <label>:559                                     ; preds = %550
  %560 = load i32, i32* %i, align 4, !tbaa !1
  %561 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %560)
  br label %562

; <label>:562                                     ; preds = %559, %550
  br label %563

; <label>:563                                     ; preds = %562
  %564 = load i32, i32* %i, align 4, !tbaa !1
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %i, align 4, !tbaa !1
  br label %547

; <label>:566                                     ; preds = %547
  %567 = load volatile i8, i8* @g_1041, align 1, !tbaa !9
  %568 = zext i8 %567 to i64
  %569 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %568, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %569)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %570

; <label>:570                                     ; preds = %610, %566
  %571 = load i32, i32* %i, align 4, !tbaa !1
  %572 = icmp slt i32 %571, 5
  br i1 %572, label %573, label %613

; <label>:573                                     ; preds = %570
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %574

; <label>:574                                     ; preds = %606, %573
  %575 = load i32, i32* %j, align 4, !tbaa !1
  %576 = icmp slt i32 %575, 1
  br i1 %576, label %577, label %609

; <label>:577                                     ; preds = %574
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %578

; <label>:578                                     ; preds = %602, %577
  %579 = load i32, i32* %k, align 4, !tbaa !1
  %580 = icmp slt i32 %579, 6
  br i1 %580, label %581, label %605

; <label>:581                                     ; preds = %578
  %582 = load i32, i32* %k, align 4, !tbaa !1
  %583 = sext i32 %582 to i64
  %584 = load i32, i32* %j, align 4, !tbaa !1
  %585 = sext i32 %584 to i64
  %586 = load i32, i32* %i, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [5 x [1 x [6 x i8]]], [5 x [1 x [6 x i8]]]* @g_1066, i32 0, i64 %587
  %589 = getelementptr inbounds [1 x [6 x i8]], [1 x [6 x i8]]* %588, i32 0, i64 %585
  %590 = getelementptr inbounds [6 x i8], [6 x i8]* %589, i32 0, i64 %583
  %591 = load i8, i8* %590, align 1, !tbaa !9
  %592 = zext i8 %591 to i64
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %592, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i32 %593)
  %594 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %601

; <label>:596                                     ; preds = %581
  %597 = load i32, i32* %i, align 4, !tbaa !1
  %598 = load i32, i32* %j, align 4, !tbaa !1
  %599 = load i32, i32* %k, align 4, !tbaa !1
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %597, i32 %598, i32 %599)
  br label %601

; <label>:601                                     ; preds = %596, %581
  br label %602

; <label>:602                                     ; preds = %601
  %603 = load i32, i32* %k, align 4, !tbaa !1
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %k, align 4, !tbaa !1
  br label %578

; <label>:605                                     ; preds = %578
  br label %606

; <label>:606                                     ; preds = %605
  %607 = load i32, i32* %j, align 4, !tbaa !1
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %j, align 4, !tbaa !1
  br label %574

; <label>:609                                     ; preds = %574
  br label %610

; <label>:610                                     ; preds = %609
  %611 = load i32, i32* %i, align 4, !tbaa !1
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %i, align 4, !tbaa !1
  br label %570

; <label>:613                                     ; preds = %570
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:614                                     ; preds = %653, %613
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = icmp slt i32 %615, 4
  br i1 %616, label %617, label %656

; <label>:617                                     ; preds = %614
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %649, %617
  %619 = load i32, i32* %j, align 4, !tbaa !1
  %620 = icmp slt i32 %619, 7
  br i1 %620, label %621, label %652

; <label>:621                                     ; preds = %618
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %622

; <label>:622                                     ; preds = %645, %621
  %623 = load i32, i32* %k, align 4, !tbaa !1
  %624 = icmp slt i32 %623, 1
  br i1 %624, label %625, label %648

; <label>:625                                     ; preds = %622
  %626 = load i32, i32* %k, align 4, !tbaa !1
  %627 = sext i32 %626 to i64
  %628 = load i32, i32* %j, align 4, !tbaa !1
  %629 = sext i32 %628 to i64
  %630 = load i32, i32* %i, align 4, !tbaa !1
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [4 x [7 x [1 x i64]]], [4 x [7 x [1 x i64]]]* @g_1144, i32 0, i64 %631
  %633 = getelementptr inbounds [7 x [1 x i64]], [7 x [1 x i64]]* %632, i32 0, i64 %629
  %634 = getelementptr inbounds [1 x i64], [1 x i64]* %633, i32 0, i64 %627
  %635 = load i64, i64* %634, align 8, !tbaa !7
  %636 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %635, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0), i32 %636)
  %637 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %644

; <label>:639                                     ; preds = %625
  %640 = load i32, i32* %i, align 4, !tbaa !1
  %641 = load i32, i32* %j, align 4, !tbaa !1
  %642 = load i32, i32* %k, align 4, !tbaa !1
  %643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %640, i32 %641, i32 %642)
  br label %644

; <label>:644                                     ; preds = %639, %625
  br label %645

; <label>:645                                     ; preds = %644
  %646 = load i32, i32* %k, align 4, !tbaa !1
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %k, align 4, !tbaa !1
  br label %622

; <label>:648                                     ; preds = %622
  br label %649

; <label>:649                                     ; preds = %648
  %650 = load i32, i32* %j, align 4, !tbaa !1
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %j, align 4, !tbaa !1
  br label %618

; <label>:652                                     ; preds = %618
  br label %653

; <label>:653                                     ; preds = %652
  %654 = load i32, i32* %i, align 4, !tbaa !1
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %i, align 4, !tbaa !1
  br label %614

; <label>:656                                     ; preds = %614
  %657 = load i8, i8* @g_1147, align 1, !tbaa !9
  %658 = sext i8 %657 to i64
  %659 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %658, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %659)
  %660 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -8144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %660)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %661

; <label>:661                                     ; preds = %689, %656
  %662 = load i32, i32* %i, align 4, !tbaa !1
  %663 = icmp slt i32 %662, 1
  br i1 %663, label %664, label %692

; <label>:664                                     ; preds = %661
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %665

; <label>:665                                     ; preds = %685, %664
  %666 = load i32, i32* %j, align 4, !tbaa !1
  %667 = icmp slt i32 %666, 1
  br i1 %667, label %668, label %688

; <label>:668                                     ; preds = %665
  %669 = load i32, i32* %j, align 4, !tbaa !1
  %670 = sext i32 %669 to i64
  %671 = load i32, i32* %i, align 4, !tbaa !1
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds [1 x [1 x i16]], [1 x [1 x i16]]* @g_1241, i32 0, i64 %672
  %674 = getelementptr inbounds [1 x i16], [1 x i16]* %673, i32 0, i64 %670
  %675 = load i16, i16* %674, align 2, !tbaa !10
  %676 = zext i16 %675 to i64
  %677 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %676, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 %677)
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %684

; <label>:680                                     ; preds = %668
  %681 = load i32, i32* %i, align 4, !tbaa !1
  %682 = load i32, i32* %j, align 4, !tbaa !1
  %683 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %681, i32 %682)
  br label %684

; <label>:684                                     ; preds = %680, %668
  br label %685

; <label>:685                                     ; preds = %684
  %686 = load i32, i32* %j, align 4, !tbaa !1
  %687 = add nsw i32 %686, 1
  store i32 %687, i32* %j, align 4, !tbaa !1
  br label %665

; <label>:688                                     ; preds = %665
  br label %689

; <label>:689                                     ; preds = %688
  %690 = load i32, i32* %i, align 4, !tbaa !1
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %i, align 4, !tbaa !1
  br label %661

; <label>:692                                     ; preds = %661
  %693 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %694 = zext i32 %693 to i64
  %695 = xor i64 %694, 4294967295
  %696 = trunc i64 %695 to i32
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %696, i32 %697)
  %698 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  %700 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %701) #1
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
define internal signext i8 @func_1() #0 {
  %1 = alloca i8, align 1
  %l_21 = alloca i8, align 1
  %l_1148 = alloca i32, align 4
  %l_1205 = alloca i32*, align 8
  %l_1245 = alloca i8**, align 8
  %l_1272 = alloca i32***, align 8
  %l_1292 = alloca i8****, align 8
  %l_1301 = alloca i32, align 4
  %l_1304 = alloca i16, align 2
  %l_1145 = alloca i8, align 1
  %l_1184 = alloca i32*, align 8
  %l_1204 = alloca [4 x [1 x [5 x i32*]]], align 16
  %l_1274 = alloca [5 x [9 x [5 x i16]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1141 = alloca [6 x [4 x i8*]], align 16
  %l_1140 = alloca i8**, align 8
  %l_1142 = alloca i32, align 4
  %l_1143 = alloca i64*, align 8
  %l_1146 = alloca i8*, align 8
  %l_1183 = alloca i32, align 4
  %l_1242 = alloca i32*, align 8
  %l_1248 = alloca i32**, align 8
  %l_1251 = alloca i64*, align 8
  %l_1252 = alloca i64*, align 8
  %l_1253 = alloca i64*, align 8
  %l_1259 = alloca i8, align 1
  %l_1275 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %2 = alloca i32
  call void @llvm.lifetime.start(i64 1, i8* %l_21) #1
  store i8 -30, i8* %l_21, align 1, !tbaa !9
  %3 = bitcast i32* %l_1148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1, i32* %l_1148, align 4, !tbaa !1
  %4 = bitcast i32** %l_1205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* null, i32** %l_1205, align 8, !tbaa !5
  %5 = bitcast i8*** %l_1245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8** null, i8*** %l_1245, align 8, !tbaa !5
  %6 = bitcast i32**** %l_1272 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32*** @g_135, i32**** %l_1272, align 8, !tbaa !5
  %7 = bitcast i8***** %l_1292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8**** null, i8***** %l_1292, align 8, !tbaa !5
  %8 = bitcast i32* %l_1301 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %l_1301, align 4, !tbaa !1
  %9 = bitcast i16* %l_1304 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 1, i16* %l_1304, align 2, !tbaa !10
  br label %10

; <label>:10                                      ; preds = %104, %0
  %11 = load volatile i16, i16* getelementptr inbounds ([2 x [5 x i16]], [2 x [5 x i16]]* @g_2, i32 0, i64 0, i64 2), align 2, !tbaa !10
  %12 = add i16 %11, 1
  store volatile i16 %12, i16* getelementptr inbounds ([2 x [5 x i16]], [2 x [5 x i16]]* @g_2, i32 0, i64 0, i64 2), align 2, !tbaa !10
  store i32 1, i32* @g_5, align 4, !tbaa !1
  br label %13

; <label>:13                                      ; preds = %112, %10
  %14 = load i32, i32* @g_5, align 4, !tbaa !1
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %115

; <label>:16                                      ; preds = %13
  call void @llvm.lifetime.start(i64 1, i8* %l_1145) #1
  store i8 -1, i8* %l_1145, align 1, !tbaa !9
  %17 = bitcast i32** %l_1184 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* @g_5, i32** %l_1184, align 8, !tbaa !5
  %18 = bitcast [4 x [1 x [5 x i32*]]]* %l_1204 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %18) #1
  %19 = bitcast [4 x [1 x [5 x i32*]]]* %l_1204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([4 x [1 x [5 x i32*]]]* @func_1.l_1204 to i8*), i64 160, i32 16, i1 false)
  %20 = bitcast [5 x [9 x [5 x i16]]]* %l_1274 to i8*
  call void @llvm.lifetime.start(i64 450, i8* %20) #1
  %21 = bitcast [5 x [9 x [5 x i16]]]* %l_1274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([5 x [9 x [5 x i16]]]* @func_1.l_1274 to i8*), i64 450, i32 16, i1 false)
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i64 2), align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %83, %16
  %26 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i64 2), align 4, !tbaa !1
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %86

; <label>:28                                      ; preds = %25
  %29 = bitcast [6 x [4 x i8*]]* %l_1141 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %29) #1
  %30 = bitcast [6 x [4 x i8*]]* %l_1141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast ([6 x [4 x i8*]]* @func_1.l_1141 to i8*), i64 192, i32 16, i1 false)
  %31 = bitcast i8*** %l_1140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %l_1141, i32 0, i64 4
  %33 = getelementptr inbounds [4 x i8*], [4 x i8*]* %32, i32 0, i64 1
  store i8** %33, i8*** %l_1140, align 8, !tbaa !5
  %34 = bitcast i32* %l_1142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -1601700384, i32* %l_1142, align 4, !tbaa !1
  %35 = bitcast i64** %l_1143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i64* getelementptr inbounds ([4 x [7 x [1 x i64]]], [4 x [7 x [1 x i64]]]* @g_1144, i32 0, i64 2, i64 3, i64 0), i64** %l_1143, align 8, !tbaa !5
  %36 = bitcast i8** %l_1146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8* @g_1147, i8** %l_1146, align 8, !tbaa !5
  %37 = bitcast i32* %l_1183 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 -1, i32* %l_1183, align 4, !tbaa !1
  %38 = bitcast i32** %l_1242 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_76, i32 0, i64 2), i32** %l_1242, align 8, !tbaa !5
  %39 = bitcast i32*** %l_1248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i32** @g_966, i32*** %l_1248, align 8, !tbaa !5
  %40 = bitcast i64** %l_1251 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64* null, i64** %l_1251, align 8, !tbaa !5
  %41 = bitcast i64** %l_1252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i64* null, i64** %l_1252, align 8, !tbaa !5
  %42 = bitcast i64** %l_1253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i64* @g_279, i64** %l_1253, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1259) #1
  store i8 79, i8* %l_1259, align 1, !tbaa !9
  %43 = bitcast i32* %l_1275 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %l_1275, align 4, !tbaa !1
  %44 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 1, i32* @g_14, align 4, !tbaa !1
  br label %46

; <label>:46                                      ; preds = %63, %28
  %47 = load i32, i32* @g_14, align 4, !tbaa !1
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %66

; <label>:49                                      ; preds = %46
  %50 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* @g_5, align 4, !tbaa !1
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* @g_5, align 4, !tbaa !1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x [5 x i16]], [2 x [5 x i16]]* @g_2, i32 0, i64 %56
  %58 = getelementptr inbounds [5 x i16], [5 x i16]* %57, i32 0, i64 %54
  %59 = load volatile i16, i16* %58, align 2, !tbaa !10
  %60 = trunc i16 %59 to i8
  store i8 %60, i8* %1
  store i32 1, i32* %2
  %61 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  br label %67
                                                  ; No predecessors!
  %64 = load i32, i32* @g_14, align 4, !tbaa !1
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* @g_14, align 4, !tbaa !1
  br label %46

; <label>:66                                      ; preds = %46
  store i32 0, i32* %2
  br label %67

; <label>:67                                      ; preds = %66, %49
  %68 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %l_1275 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1259) #1
  %71 = bitcast i64** %l_1253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i64** %l_1252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast i64** %l_1251 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32*** %l_1248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32** %l_1242 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %l_1183 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i8** %l_1146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i64** %l_1143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %l_1142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i8*** %l_1140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast [6 x [4 x i8*]]* %l_1141 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %81) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %104 [
    i32 0, label %82
  ]

; <label>:82                                      ; preds = %67
  br label %83

; <label>:83                                      ; preds = %82
  %84 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i64 2), align 4, !tbaa !1
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_9, i32 0, i64 2), align 4, !tbaa !1
  br label %25

; <label>:86                                      ; preds = %25
  %87 = load i32, i32* @g_5, align 4, !tbaa !1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %86
  store i32 2, i32* %2
  br label %104

; <label>:90                                      ; preds = %86
  store i8 0, i8* @g_214, align 1, !tbaa !9
  br label %91

; <label>:91                                      ; preds = %98, %90
  %92 = load i8, i8* @g_214, align 1, !tbaa !9
  %93 = sext i8 %92 to i32
  %94 = icmp sle i32 %93, 1
  br i1 %94, label %95, label %103

; <label>:95                                      ; preds = %91
  %96 = load i8*, i8** @g_546, align 8, !tbaa !5
  %97 = load i8, i8* %96, align 1, !tbaa !9
  store i8 %97, i8* %1
  store i32 1, i32* %2
  br label %104
                                                  ; No predecessors!
  %99 = load i8, i8* @g_214, align 1, !tbaa !9
  %100 = sext i8 %99 to i32
  %101 = add nsw i32 %100, 1
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* @g_214, align 1, !tbaa !9
  br label %91

; <label>:103                                     ; preds = %91
  store i32 0, i32* %2
  br label %104

; <label>:104                                     ; preds = %103, %95, %89, %67
  %105 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast [5 x [9 x [5 x i16]]]* %l_1274 to i8*
  call void @llvm.lifetime.end(i64 450, i8* %108) #1
  %109 = bitcast [4 x [1 x [5 x i32*]]]* %l_1204 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %109) #1
  %110 = bitcast i32** %l_1184 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1145) #1
  %cleanup.dest.5 = load i32, i32* %2
  switch i32 %cleanup.dest.5, label %171 [
    i32 0, label %111
    i32 2, label %10
  ]

; <label>:111                                     ; preds = %104
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load i32, i32* @g_5, align 4, !tbaa !1
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* @g_5, align 4, !tbaa !1
  br label %13

; <label>:115                                     ; preds = %13
  %116 = load i32, i32* %l_1301, align 4, !tbaa !1
  %117 = load volatile i32, i32* @g_10, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = and i64 -1, %118
  %120 = load i32***, i32**** %l_1272, align 8, !tbaa !5
  %121 = load i32**, i32*** %120, align 8, !tbaa !5
  %122 = load i32*, i32** %121, align 8, !tbaa !5
  %123 = load i32, i32* %122, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = icmp ne i64 %119, %124
  %126 = zext i1 %125 to i32
  %127 = load i32***, i32**** %l_1272, align 8, !tbaa !5
  %128 = load i32**, i32*** %127, align 8, !tbaa !5
  %129 = load i32*, i32** %128, align 8, !tbaa !5
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = trunc i32 %130 to i8
  %132 = load i16, i16* %l_1304, align 2, !tbaa !10
  %133 = zext i16 %132 to i32
  %134 = load i8*, i8** @g_546, align 8, !tbaa !5
  %135 = load i8, i8* %134, align 1, !tbaa !9
  %136 = sext i8 %135 to i32
  %137 = or i32 %136, %133
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1, !tbaa !9
  %139 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %131, i8 zeroext %138)
  %140 = icmp eq i8* %l_21, null
  %141 = zext i1 %140 to i32
  %142 = call i32 @safe_sub_func_uint32_t_u_u(i32 %126, i32 %141)
  %143 = load i16, i16* @g_242, align 2, !tbaa !10
  %144 = sext i16 %143 to i32
  %145 = call i32 @safe_mod_func_int32_t_s_s(i32 %142, i32 %144)
  %146 = load i32***, i32**** %l_1272, align 8, !tbaa !5
  %147 = load i32**, i32*** %146, align 8, !tbaa !5
  %148 = load i32*, i32** %147, align 8, !tbaa !5
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = icmp sgt i64 3490395949647453894, %150
  %152 = zext i1 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = icmp ne i64 -2410870344812360490, %153
  %155 = zext i1 %154 to i32
  %156 = load i32***, i32**** %l_1272, align 8, !tbaa !5
  %157 = load i32**, i32*** %156, align 8, !tbaa !5
  %158 = load i32*, i32** %157, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = or i32 %155, %159
  %161 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext -29877, i32 15)
  %162 = trunc i16 %161 to i8
  %163 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %162)
  %164 = zext i8 %163 to i32
  %165 = load i32****, i32***** @g_296, align 8, !tbaa !5
  %166 = load i32***, i32**** %165, align 8, !tbaa !5
  %167 = load i32**, i32*** %166, align 8, !tbaa !5
  %168 = load i32*, i32** %167, align 8, !tbaa !5
  store i32 %164, i32* %168, align 4, !tbaa !1
  %169 = load i8*, i8** @g_546, align 8, !tbaa !5
  %170 = load i8, i8* %169, align 1, !tbaa !9
  store i8 %170, i8* %1
  store i32 1, i32* %2
  br label %171

; <label>:171                                     ; preds = %115, %104
  %172 = bitcast i16* %l_1304 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %172) #1
  %173 = bitcast i32* %l_1301 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i8***** %l_1292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i32**** %l_1272 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %175) #1
  %176 = bitcast i8*** %l_1245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32** %l_1205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %l_1148 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_21) #1
  %179 = load i8, i8* %1
  ret i8 %179
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
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
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
