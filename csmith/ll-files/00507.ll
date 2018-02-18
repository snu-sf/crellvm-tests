; ModuleID = '00507.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_12 = internal global [8 x i32] [i32 1498735601, i32 1498735601, i32 1498735601, i32 1498735601, i32 1498735601, i32 1498735601, i32 1498735601, i32 1498735601], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"g_12[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_23 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_23\00", align 1
@g_39 = internal global i32 1559665581, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_39\00", align 1
@g_41 = internal global i32 -1847438079, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_41\00", align 1
@g_54 = internal global [4 x [7 x i32]] [[7 x i32] [i32 172571580, i32 -1, i32 172571580, i32 -1, i32 -1139756575, i32 -1139756575, i32 -1], [7 x i32] [i32 172571580, i32 -1, i32 172571580, i32 -1, i32 -1139756575, i32 -1139756575, i32 -1], [7 x i32] [i32 172571580, i32 -1, i32 172571580, i32 -1, i32 -1139756575, i32 -1139756575, i32 -1], [7 x i32] [i32 172571580, i32 -1, i32 172571580, i32 -1, i32 -1139756575, i32 -1139756575, i32 -1]], align 16
@.str.7 = private unnamed_addr constant [11 x i8] c"g_54[i][j]\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_56 = internal global i8 20, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_56\00", align 1
@g_73 = internal global [1 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 -1, i32 -358171515, i32 353339756, i32 -358171515], [4 x i32] [i32 -358171515, i32 -1362383220, i32 353339756, i32 353339756], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1362383220], [4 x i32] [i32 353339756, i32 -1, i32 353339756, i32 0], [4 x i32] [i32 353339756, i32 0, i32 0, i32 353339756]]], align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"g_73[i][j][k]\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_80 = internal global i32 -513143555, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_94 = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_112 = internal global i32 -5, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_143 = internal global i16 8025, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@g_146 = internal global i64 -3, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_155 = internal global i8 -1, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_163 = internal global i8 2, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_219 = internal global i8 8, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_219\00", align 1
@g_287 = internal global i8 0, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_287\00", align 1
@g_307 = internal global i16 1, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_307\00", align 1
@g_309 = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_309\00", align 1
@g_311 = internal global i32 -5, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_311\00", align 1
@g_341 = internal global i32 6, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_341\00", align 1
@g_360 = internal global i8 1, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_360\00", align 1
@g_367 = internal global i8 -27, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_367\00", align 1
@g_375 = internal global [3 x [4 x [5 x i64]]] [[4 x [5 x i64]] [[5 x i64] [i64 1, i64 1, i64 1, i64 4242248241711549225, i64 1], [5 x i64] [i64 587895441630531870, i64 -2, i64 4709314275577035060, i64 0, i64 0], [5 x i64] [i64 1, i64 -1, i64 -8896374545926492537, i64 -8896374545926492537, i64 -1], [5 x i64] [i64 -3664261199924882488, i64 -10, i64 4709314275577035060, i64 0, i64 8123566183440120263]], [4 x [5 x i64]] [[5 x i64] [i64 1, i64 2009714052764437615, i64 1, i64 -8636907128461916115, i64 0], [5 x i64] [i64 3048292771975449080, i64 -3664261199924882488, i64 -3664261199924882488, i64 3048292771975449080, i64 -5], [5 x i64] [i64 1, i64 -8896374545926492537, i64 -5439990042559897342, i64 -8595224823452789282, i64 -8636907128461916115], [5 x i64] [i64 -3664261199924882488, i64 -7495734971813608979, i64 -4619796146626653967, i64 4709314275577035060, i64 -4619796146626653967]], [4 x [5 x i64]] [[5 x i64] [i64 1, i64 1, i64 -8636907128461916115, i64 -8595224823452789282, i64 -5439990042559897342], [5 x i64] [i64 587895441630531870, i64 0, i64 -5, i64 3048292771975449080, i64 -3664261199924882488], [5 x i64] [i64 1, i64 -8636907128461916115, i64 0, i64 -8636907128461916115, i64 1], [5 x i64] [i64 5061669688012939001, i64 0, i64 8123566183440120263, i64 0, i64 4709314275577035060]]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_375[i][j][k]\00", align 1
@g_392 = internal global i32 -10, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_392\00", align 1
@g_393 = internal global i16 -18262, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_393\00", align 1
@g_396 = internal global i16 7, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_396\00", align 1
@g_397 = internal global [7 x [7 x i32]] [[7 x i32] [i32 969203751, i32 -1, i32 994163593, i32 -1, i32 994163593, i32 -1, i32 969203751], [7 x i32] [i32 -730535945, i32 0, i32 994163593, i32 2, i32 -2053941336, i32 -1, i32 -730535945], [7 x i32] [i32 969203751, i32 0, i32 0, i32 -1, i32 -2053941336, i32 0, i32 969203751], [7 x i32] [i32 969203751, i32 -1, i32 994163593, i32 -1, i32 994163593, i32 -1, i32 969203751], [7 x i32] [i32 -730535945, i32 0, i32 994163593, i32 2, i32 -2053941336, i32 -1, i32 -730535945], [7 x i32] [i32 969203751, i32 0, i32 0, i32 -1, i32 -2053941336, i32 0, i32 969203751], [7 x i32] [i32 969203751, i32 -1, i32 994163593, i32 -1, i32 994163593, i32 -1, i32 969203751]], align 16
@.str.31 = private unnamed_addr constant [12 x i8] c"g_397[i][j]\00", align 1
@g_512 = internal global i8 -1, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_512\00", align 1
@g_689 = internal global i32 5, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_689\00", align 1
@g_691 = internal global i8 89, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_691\00", align 1
@g_692 = internal global i16 0, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_692\00", align 1
@g_693 = internal global i16 4, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_693\00", align 1
@g_843 = internal global i8 -1, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_843\00", align 1
@g_846 = internal global i32 -6, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_846\00", align 1
@g_847 = internal global i32 1, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_847\00", align 1
@g_849 = internal global [10 x [5 x [5 x i8]]] [[5 x [5 x i8]] [[5 x i8] c"\BBWb\E1\93", [5 x i8] c"\FF\09&~\FB", [5 x i8] c"\93\00\FF\00\93", [5 x i8] c"\00\01\FA\84\FB", [5 x i8] c"\09R'\07\93"], [5 x [5 x i8]] [[5 x i8] c"\AA~\A3\01\FB", [5 x i8] c"\14\07\D8W\93", [5 x i8] c"\FB\BFK\BF\FB", [5 x i8] c"\00\E1@R\93", [5 x i8] c"\01\84\D7\09\FB"], [5 x [5 x i8]] [[5 x i8] c"\BBWb\E1\93", [5 x i8] c"\FF\09&~\FB", [5 x i8] c"\93\00\FF\00\93", [5 x i8] c"\00\01\FA\84\FB", [5 x i8] c"\09R'\07\93"], [5 x [5 x i8]] [[5 x i8] c"\AA~\A3\01\FB", [5 x i8] c"\14\07\D8W\93", [5 x i8] c"\FB\BFK\BF\FB", [5 x i8] c"\00\E1@R\93", [5 x i8] c"\01\84\D7\09\FB"], [5 x [5 x i8]] [[5 x i8] c"\BBWb\E1\93", [5 x i8] c"\FF\09&~\FB", [5 x i8] c"\93\00\FF\00\93", [5 x i8] c"\00\01\FA\84\FB", [5 x i8] c"\09R'\07\93"], [5 x [5 x i8]] [[5 x i8] c"\AA\01\01\01~", [5 x i8] c"\02\F4\FB\FE\F8", [5 x i8] c"~\01\FF\01~", [5 x i8] c"\0Dm\EFg\F8", [5 x i8] c"\09\00p\03~"], [5 x [5 x i8]] [[5 x i8] c"7\FE\FFm\F8", [5 x i8] c"\BF\03\01\01~", [5 x i8] c"\F8\04\F9\04\F8", [5 x i8] c"\01\01\9D\00~", [5 x i8] c"\F8g\AB\F4\F8"], [5 x [5 x i8]] [[5 x i8] c"\84\01\01\01~", [5 x i8] c"\02\F4\FB\FE\F8", [5 x i8] c"~\01\FF\01~", [5 x i8] c"\0Dm\EFg\F8", [5 x i8] c"\09\00p\03~"], [5 x [5 x i8]] [[5 x i8] c"7\FE\FFm\F8", [5 x i8] c"\BF\03\01\01~", [5 x i8] c"\F8\04\F9\04\F8", [5 x i8] c"\01\01\9D\00~", [5 x i8] c"\F8g\AB\F4\F8"], [5 x [5 x i8]] [[5 x i8] c"\84\01\01\01~", [5 x i8] c"\02\F4\FB\FE\F8", [5 x i8] c"~\01\FF\01~", [5 x i8] c"\0Dm\EFg\F8", [5 x i8] c"\09\00p\03~"]], align 16
@.str.40 = private unnamed_addr constant [15 x i8] c"g_849[i][j][k]\00", align 1
@g_850 = internal global i64 1920840144976711180, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"g_850\00", align 1
@g_851 = internal global i32 -493003193, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_851\00", align 1
@g_852 = internal global i8 1, align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"g_852\00", align 1
@g_853 = internal global i32 9, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"g_853\00", align 1
@g_913 = internal global i16 -1, align 2
@.str.45 = private unnamed_addr constant [6 x i8] c"g_913\00", align 1
@g_934 = internal global [6 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] zeroinitializer, [1 x i32] [i32 -1], [1 x i32] zeroinitializer, [1 x i32] [i32 -1], [1 x i32] zeroinitializer], align 16
@.str.46 = private unnamed_addr constant [12 x i8] c"g_934[i][j]\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"g_943\00", align 1
@g_970 = internal global i32 8, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_970\00", align 1
@g_971 = internal global i8 -116, align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"g_971\00", align 1
@g_976 = internal global i32 -459549214, align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"g_976\00", align 1
@g_977 = internal global [8 x i32] [i32 -807325691, i32 -807325691, i32 -807325691, i32 -807325691, i32 -807325691, i32 -807325691, i32 -807325691, i32 -807325691], align 16
@.str.51 = private unnamed_addr constant [9 x i8] c"g_977[i]\00", align 1
@g_1053 = internal global i64 4544303943887213595, align 8
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1053\00", align 1
@g_1067 = internal global i32 1890159457, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1067\00", align 1
@g_1132 = internal global i64 -7838037903304843965, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1132\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1278\00", align 1
@g_1492 = internal global i64 2398619809871756226, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1492\00", align 1
@g_1571 = internal global [6 x [6 x i32]] [[6 x i32] [i32 1, i32 -1596098774, i32 -1596098774, i32 1, i32 130039383, i32 1], [6 x i32] [i32 1, i32 130039383, i32 1, i32 -1596098774, i32 -1596098774, i32 1], [6 x i32] [i32 7, i32 7, i32 -1596098774, i32 1, i32 -1596098774, i32 7], [6 x i32] [i32 -1596098774, i32 130039383, i32 1, i32 1, i32 130039383, i32 -1596098774], [6 x i32] [i32 7, i32 -1596098774, i32 1, i32 -1596098774, i32 7, i32 7], [6 x i32] [i32 1, i32 -1596098774, i32 -1596098774, i32 1, i32 130039383, i32 1]], align 16
@.str.57 = private unnamed_addr constant [13 x i8] c"g_1571[i][j]\00", align 1
@g_1610 = internal global i16 -21109, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1610\00", align 1
@g_1827 = internal global [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1827[i]\00", align 1
@g_2150 = internal global i8 7, align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"g_2150\00", align 1
@g_2321 = internal global i16 5648, align 2
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2321\00", align 1
@g_2349 = internal global i64 8949356513449789107, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2349\00", align 1
@g_2385 = internal global [6 x [9 x i32]] [[9 x i32] [i32 1538969121, i32 -1, i32 2, i32 2, i32 -1, i32 1538969121, i32 -1, i32 2, i32 2], [9 x i32] [i32 0, i32 0, i32 1538969121, i32 2, i32 1538969121, i32 0, i32 0, i32 1538969121, i32 2], [9 x i32] [i32 7, i32 -1, i32 7, i32 1538969121, i32 1538969121, i32 7, i32 -1, i32 7, i32 1538969121], [9 x i32] [i32 7, i32 1538969121, i32 1538969121, i32 7, i32 -1, i32 7, i32 1538969121, i32 1538969121, i32 7], [9 x i32] [i32 0, i32 1538969121, i32 2, i32 1538969121, i32 0, i32 0, i32 1538969121, i32 2, i32 1538969121], [9 x i32] [i32 1538969121, i32 -1, i32 2, i32 2, i32 -1, i32 1538969121, i32 -1, i32 2, i32 2]], align 16
@.str.63 = private unnamed_addr constant [13 x i8] c"g_2385[i][j]\00", align 1
@g_2672 = internal global i32 0, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_2672\00", align 1
@g_2747 = internal global [8 x i32] [i32 -945944877, i32 -945944877, i32 -945944877, i32 -945944877, i32 -945944877, i32 -945944877, i32 -945944877, i32 -945944877], align 16
@.str.65 = private unnamed_addr constant [10 x i8] c"g_2747[i]\00", align 1
@g_2753 = internal global i8 -100, align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"g_2753\00", align 1
@g_2771 = internal global i16 -12045, align 2
@.str.67 = private unnamed_addr constant [7 x i8] c"g_2771\00", align 1
@g_2949 = internal global i8 9, align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"g_2949\00", align 1
@g_2978 = internal global [9 x i8] c"\F6\FD\FD\F6\FD\FD\F6\FD\FD", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"g_2978[i]\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"g_3035\00", align 1
@g_3140 = internal global i64 -526207019174095067, align 8
@.str.71 = private unnamed_addr constant [7 x i8] c"g_3140\00", align 1
@g_3185 = internal global i16 29821, align 2
@.str.72 = private unnamed_addr constant [7 x i8] c"g_3185\00", align 1
@g_3382 = internal global i16 0, align 2
@.str.73 = private unnamed_addr constant [7 x i8] c"g_3382\00", align 1
@g_3533 = internal global i64 6624655129637001888, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"g_3533\00", align 1
@g_3617 = internal constant [7 x [1 x [7 x i8]]] [[1 x [7 x i8]] [[7 x i8] c"\01\91g\00\FF\FF\FF"], [1 x [7 x i8]] [[7 x i8] c"\01\FF\FF\01\14\FF\03"], [1 x [7 x i8]] [[7 x i8] c"0\FFg\14\14g\FF"], [1 x [7 x i8]] [[7 x i8] c"\140\FF\91\FF\03\03"], [1 x [7 x i8]] [[7 x i8] c"\FF0\140\FF\91\FF"], [1 x [7 x i8]] [[7 x i8] c"g\FF\13\01\FF\01\13"], [1 x [7 x i8]] [[7 x i8] c"\03\03\FF\91\FF0\14"]], align 16
@.str.75 = private unnamed_addr constant [16 x i8] c"g_3617[i][j][k]\00", align 1
@g_3631 = internal global i8 0, align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"g_3631\00", align 1
@g_3632 = internal global i8 0, align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"g_3632\00", align 1
@g_3849 = internal global i8 -81, align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"g_3849\00", align 1
@g_3876 = internal global i8 1, align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"g_3876\00", align 1
@g_4036 = internal global [5 x i16] [i16 -18233, i16 -18233, i16 -18233, i16 -18233, i16 -18233], align 2
@.str.80 = private unnamed_addr constant [10 x i8] c"g_4036[i]\00", align 1
@g_4066 = internal global i8 96, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"g_4066\00", align 1
@g_4080 = internal global i16 6, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_4080\00", align 1
@g_4084 = internal global [8 x i64] [i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652, i64 8624213677852057652], align 16
@.str.83 = private unnamed_addr constant [10 x i8] c"g_4084[i]\00", align 1
@g_4086 = internal global i16 0, align 2
@.str.84 = private unnamed_addr constant [7 x i8] c"g_4086\00", align 1
@g_4153 = internal global i64 -7, align 8
@.str.85 = private unnamed_addr constant [7 x i8] c"g_4153\00", align 1
@g_4205 = internal global i16 22694, align 2
@.str.86 = private unnamed_addr constant [7 x i8] c"g_4205\00", align 1
@g_4302 = internal global i16 1, align 2
@.str.87 = private unnamed_addr constant [7 x i8] c"g_4302\00", align 1
@g_4307 = internal global i32 -2052316732, align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"g_4307\00", align 1
@g_4431 = internal global i16 1, align 2
@.str.89 = private unnamed_addr constant [7 x i8] c"g_4431\00", align 1
@g_4528 = internal global i32 786681352, align 4
@.str.90 = private unnamed_addr constant [7 x i8] c"g_4528\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_11 = private unnamed_addr constant [3 x [2 x i32*]] [[2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3], [2 x i32*] [i32* @g_3, i32* @g_3]], align 16
@g_3101 = internal global [9 x [10 x i32**]] [[10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686], [10 x i32**] [i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686, i32** @g_1686]], align 16
@g_3550 = internal global i32* @g_943, align 8
@func_1.l_4015 = private unnamed_addr constant [4 x i32**] [i32** @g_3550, i32** @g_3550, i32** @g_3550, i32** @g_3550], align 16
@func_1.l_4301 = private unnamed_addr constant [10 x i8] c"\93\93e\93\93e\93\93e\93", align 1
@func_1.l_4329 = private unnamed_addr constant [10 x i32] [i32 1, i32 1926299755, i32 1, i32 1926299755, i32 1, i32 1926299755, i32 1, i32 1926299755, i32 1, i32 1926299755], align 16
@g_3729 = internal global i32* @g_847, align 8
@func_1.l_4444 = private unnamed_addr constant [9 x i32*] [i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3, i32* null, i32* @g_3], align 16
@func_1.l_4477 = private unnamed_addr constant [2 x [6 x i8]] [[6 x i8] c"\01\01\01\01\01\01", [6 x i8] c"\01\01\01\01\01\01"], align 1
@g_614 = internal global i8* @g_219, align 8
@func_1.l_4598 = private unnamed_addr constant [1 x [9 x [1 x i8**]]] [[9 x [1 x i8**]] [[1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614], [1 x i8**] [i8** @g_614]]], align 16
@g_1686 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_934 to i8*), i64 12) to i32*), align 8
@g_943 = internal constant i32 -2039033634, align 4
@.str.91 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %110, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %113

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @g_12, i32 0, i64 %99
  %101 = load volatile i32, i32* %100, align 4, !tbaa !1
  %102 = zext i32 %101 to i64
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %103)
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %97
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %107)
  br label %109

; <label>:109                                     ; preds = %106, %97
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:113                                     ; preds = %94
  %114 = load i32, i32* @g_23, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* @g_39, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i32, i32* @g_41, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %151, %113
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %154

; <label>:126                                     ; preds = %123
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %147, %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 7
  br i1 %129, label %130, label %150

; <label>:130                                     ; preds = %127
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %i, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x [7 x i32]], [4 x [7 x i32]]* @g_54, i32 0, i64 %134
  %136 = getelementptr inbounds [7 x i32], [7 x i32]* %135, i32 0, i64 %132
  %137 = load volatile i32, i32* %136, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

; <label>:142                                     ; preds = %130
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = load i32, i32* %j, align 4, !tbaa !1
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %143, i32 %144)
  br label %146

; <label>:146                                     ; preds = %142, %130
  br label %147

; <label>:147                                     ; preds = %146
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %j, align 4, !tbaa !1
  br label %127

; <label>:150                                     ; preds = %127
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:154                                     ; preds = %123
  %155 = load volatile i8, i8* @g_56, align 1, !tbaa !9
  %156 = zext i8 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %157)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %158

; <label>:158                                     ; preds = %198, %154
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %201

; <label>:161                                     ; preds = %158
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %162

; <label>:162                                     ; preds = %194, %161
  %163 = load i32, i32* %j, align 4, !tbaa !1
  %164 = icmp slt i32 %163, 5
  br i1 %164, label %165, label %197

; <label>:165                                     ; preds = %162
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %166

; <label>:166                                     ; preds = %190, %165
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %193

; <label>:169                                     ; preds = %166
  %170 = load i32, i32* %k, align 4, !tbaa !1
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %i, align 4, !tbaa !1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1 x [5 x [4 x i32]]], [1 x [5 x [4 x i32]]]* @g_73, i32 0, i64 %175
  %177 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %176, i32 0, i64 %173
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %177, i32 0, i64 %171
  %179 = load volatile i32, i32* %178, align 4, !tbaa !1
  %180 = zext i32 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %181)
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

; <label>:184                                     ; preds = %169
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = load i32, i32* %j, align 4, !tbaa !1
  %187 = load i32, i32* %k, align 4, !tbaa !1
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %185, i32 %186, i32 %187)
  br label %189

; <label>:189                                     ; preds = %184, %169
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load i32, i32* %k, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %k, align 4, !tbaa !1
  br label %166

; <label>:193                                     ; preds = %166
  br label %194

; <label>:194                                     ; preds = %193
  %195 = load i32, i32* %j, align 4, !tbaa !1
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %j, align 4, !tbaa !1
  br label %162

; <label>:197                                     ; preds = %162
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %i, align 4, !tbaa !1
  br label %158

; <label>:201                                     ; preds = %158
  %202 = load volatile i32, i32* @g_80, align 4, !tbaa !1
  %203 = zext i32 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %204)
  %205 = load volatile i32, i32* @g_94, align 4, !tbaa !1
  %206 = zext i32 %205 to i64
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %207)
  %208 = load i32, i32* @g_112, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %210)
  %211 = load i16, i16* @g_143, align 2, !tbaa !10
  %212 = zext i16 %211 to i64
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %213)
  %214 = load i64, i64* @g_146, align 8, !tbaa !7
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %215)
  %216 = load i8, i8* @g_155, align 1, !tbaa !9
  %217 = zext i8 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %218)
  %219 = load i8, i8* @g_163, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %221)
  %222 = load i8, i8* @g_219, align 1, !tbaa !9
  %223 = zext i8 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %224)
  %225 = load i8, i8* @g_287, align 1, !tbaa !9
  %226 = sext i8 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %227)
  %228 = load i16, i16* @g_307, align 2, !tbaa !10
  %229 = sext i16 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %230)
  %231 = load i32, i32* @g_309, align 4, !tbaa !1
  %232 = zext i32 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %233)
  %234 = load i32, i32* @g_311, align 4, !tbaa !1
  %235 = zext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* @g_341, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %239)
  %240 = load i8, i8* @g_360, align 1, !tbaa !9
  %241 = zext i8 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %242)
  %243 = load i8, i8* @g_367, align 1, !tbaa !9
  %244 = zext i8 %243 to i64
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %245)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %246

; <label>:246                                     ; preds = %285, %201
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = icmp slt i32 %247, 3
  br i1 %248, label %249, label %288

; <label>:249                                     ; preds = %246
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %250

; <label>:250                                     ; preds = %281, %249
  %251 = load i32, i32* %j, align 4, !tbaa !1
  %252 = icmp slt i32 %251, 4
  br i1 %252, label %253, label %284

; <label>:253                                     ; preds = %250
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %277, %253
  %255 = load i32, i32* %k, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 5
  br i1 %256, label %257, label %280

; <label>:257                                     ; preds = %254
  %258 = load i32, i32* %k, align 4, !tbaa !1
  %259 = sext i32 %258 to i64
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [3 x [4 x [5 x i64]]], [3 x [4 x [5 x i64]]]* @g_375, i32 0, i64 %263
  %265 = getelementptr inbounds [4 x [5 x i64]], [4 x [5 x i64]]* %264, i32 0, i64 %261
  %266 = getelementptr inbounds [5 x i64], [5 x i64]* %265, i32 0, i64 %259
  %267 = load i64, i64* %266, align 8, !tbaa !7
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %268)
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

; <label>:271                                     ; preds = %257
  %272 = load i32, i32* %i, align 4, !tbaa !1
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = load i32, i32* %k, align 4, !tbaa !1
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %272, i32 %273, i32 %274)
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
  %289 = load i32, i32* @g_392, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %291)
  %292 = load i16, i16* @g_393, align 2, !tbaa !10
  %293 = sext i16 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %294)
  %295 = load i16, i16* @g_396, align 2, !tbaa !10
  %296 = sext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %297)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %326, %288
  %299 = load i32, i32* %i, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 7
  br i1 %300, label %301, label %329

; <label>:301                                     ; preds = %298
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %302

; <label>:302                                     ; preds = %322, %301
  %303 = load i32, i32* %j, align 4, !tbaa !1
  %304 = icmp slt i32 %303, 7
  br i1 %304, label %305, label %325

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %j, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* @g_397, i32 0, i64 %309
  %311 = getelementptr inbounds [7 x i32], [7 x i32]* %310, i32 0, i64 %307
  %312 = load i32, i32* %311, align 4, !tbaa !1
  %313 = zext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

; <label>:317                                     ; preds = %305
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = load i32, i32* %j, align 4, !tbaa !1
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %318, i32 %319)
  br label %321

; <label>:321                                     ; preds = %317, %305
  br label %322

; <label>:322                                     ; preds = %321
  %323 = load i32, i32* %j, align 4, !tbaa !1
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %j, align 4, !tbaa !1
  br label %302

; <label>:325                                     ; preds = %302
  br label %326

; <label>:326                                     ; preds = %325
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %i, align 4, !tbaa !1
  br label %298

; <label>:329                                     ; preds = %298
  %330 = load i8, i8* @g_512, align 1, !tbaa !9
  %331 = sext i8 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %332)
  %333 = load i32, i32* @g_689, align 4, !tbaa !1
  %334 = sext i32 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %335)
  %336 = load i8, i8* @g_691, align 1, !tbaa !9
  %337 = sext i8 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %338)
  %339 = load i16, i16* @g_692, align 2, !tbaa !10
  %340 = sext i16 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %341)
  %342 = load i16, i16* @g_693, align 2, !tbaa !10
  %343 = zext i16 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %344)
  %345 = load i8, i8* @g_843, align 1, !tbaa !9
  %346 = zext i8 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %347)
  %348 = load i32, i32* @g_846, align 4, !tbaa !1
  %349 = sext i32 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* @g_847, align 4, !tbaa !1
  %352 = sext i32 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %353)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:354                                     ; preds = %394, %329
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = icmp slt i32 %355, 10
  br i1 %356, label %357, label %397

; <label>:357                                     ; preds = %354
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %390, %357
  %359 = load i32, i32* %j, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 5
  br i1 %360, label %361, label %393

; <label>:361                                     ; preds = %358
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %362

; <label>:362                                     ; preds = %386, %361
  %363 = load i32, i32* %k, align 4, !tbaa !1
  %364 = icmp slt i32 %363, 5
  br i1 %364, label %365, label %389

; <label>:365                                     ; preds = %362
  %366 = load i32, i32* %k, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = load i32, i32* %j, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [10 x [5 x [5 x i8]]], [10 x [5 x [5 x i8]]]* @g_849, i32 0, i64 %371
  %373 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %372, i32 0, i64 %369
  %374 = getelementptr inbounds [5 x i8], [5 x i8]* %373, i32 0, i64 %367
  %375 = load i8, i8* %374, align 1, !tbaa !9
  %376 = sext i8 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

; <label>:380                                     ; preds = %365
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = load i32, i32* %j, align 4, !tbaa !1
  %383 = load i32, i32* %k, align 4, !tbaa !1
  %384 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %381, i32 %382, i32 %383)
  br label %385

; <label>:385                                     ; preds = %380, %365
  br label %386

; <label>:386                                     ; preds = %385
  %387 = load i32, i32* %k, align 4, !tbaa !1
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %k, align 4, !tbaa !1
  br label %362

; <label>:389                                     ; preds = %362
  br label %390

; <label>:390                                     ; preds = %389
  %391 = load i32, i32* %j, align 4, !tbaa !1
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:393                                     ; preds = %358
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:397                                     ; preds = %354
  %398 = load i64, i64* @g_850, align 8, !tbaa !7
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %399)
  %400 = load i32, i32* @g_851, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %402)
  %403 = load i8, i8* @g_852, align 1, !tbaa !9
  %404 = sext i8 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %405)
  %406 = load i32, i32* @g_853, align 4, !tbaa !1
  %407 = zext i32 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %408)
  %409 = load i16, i16* @g_913, align 2, !tbaa !10
  %410 = zext i16 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %411)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %412

; <label>:412                                     ; preds = %440, %397
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = icmp slt i32 %413, 6
  br i1 %414, label %415, label %443

; <label>:415                                     ; preds = %412
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %416

; <label>:416                                     ; preds = %436, %415
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = icmp slt i32 %417, 1
  br i1 %418, label %419, label %439

; <label>:419                                     ; preds = %416
  %420 = load i32, i32* %j, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* @g_934, i32 0, i64 %423
  %425 = getelementptr inbounds [1 x i32], [1 x i32]* %424, i32 0, i64 %421
  %426 = load i32, i32* %425, align 4, !tbaa !1
  %427 = zext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %428)
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

; <label>:431                                     ; preds = %419
  %432 = load i32, i32* %i, align 4, !tbaa !1
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %432, i32 %433)
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
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 2255933662, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* @g_970, align 4, !tbaa !1
  %446 = sext i32 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %447)
  %448 = load i8, i8* @g_971, align 1, !tbaa !9
  %449 = sext i8 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %450)
  %451 = load i32, i32* @g_976, align 4, !tbaa !1
  %452 = sext i32 %451 to i64
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %453)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %454

; <label>:454                                     ; preds = %470, %443
  %455 = load i32, i32* %i, align 4, !tbaa !1
  %456 = icmp slt i32 %455, 8
  br i1 %456, label %457, label %473

; <label>:457                                     ; preds = %454
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [8 x i32], [8 x i32]* @g_977, i32 0, i64 %459
  %461 = load i32, i32* %460, align 4, !tbaa !1
  %462 = zext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %469

; <label>:466                                     ; preds = %457
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %467)
  br label %469

; <label>:469                                     ; preds = %466, %457
  br label %470

; <label>:470                                     ; preds = %469
  %471 = load i32, i32* %i, align 4, !tbaa !1
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %i, align 4, !tbaa !1
  br label %454

; <label>:473                                     ; preds = %454
  %474 = load i64, i64* @g_1053, align 8, !tbaa !7
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %475)
  %476 = load i32, i32* @g_1067, align 4, !tbaa !1
  %477 = zext i32 %476 to i64
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %477, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %478)
  %479 = load volatile i64, i64* @g_1132, align 8, !tbaa !7
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %480)
  %481 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %481)
  %482 = load volatile i64, i64* @g_1492, align 8, !tbaa !7
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %483)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:484                                     ; preds = %512, %473
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = icmp slt i32 %485, 6
  br i1 %486, label %487, label %515

; <label>:487                                     ; preds = %484
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %488

; <label>:488                                     ; preds = %508, %487
  %489 = load i32, i32* %j, align 4, !tbaa !1
  %490 = icmp slt i32 %489, 6
  br i1 %490, label %491, label %511

; <label>:491                                     ; preds = %488
  %492 = load i32, i32* %j, align 4, !tbaa !1
  %493 = sext i32 %492 to i64
  %494 = load i32, i32* %i, align 4, !tbaa !1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @g_1571, i32 0, i64 %495
  %497 = getelementptr inbounds [6 x i32], [6 x i32]* %496, i32 0, i64 %493
  %498 = load i32, i32* %497, align 4, !tbaa !1
  %499 = zext i32 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 %500)
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

; <label>:503                                     ; preds = %491
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = load i32, i32* %j, align 4, !tbaa !1
  %506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %504, i32 %505)
  br label %507

; <label>:507                                     ; preds = %503, %491
  br label %508

; <label>:508                                     ; preds = %507
  %509 = load i32, i32* %j, align 4, !tbaa !1
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %j, align 4, !tbaa !1
  br label %488

; <label>:511                                     ; preds = %488
  br label %512

; <label>:512                                     ; preds = %511
  %513 = load i32, i32* %i, align 4, !tbaa !1
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:515                                     ; preds = %484
  %516 = load i16, i16* @g_1610, align 2, !tbaa !10
  %517 = zext i16 %516 to i64
  %518 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %517, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %518)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:519                                     ; preds = %535, %515
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = icmp slt i32 %520, 7
  br i1 %521, label %522, label %538

; <label>:522                                     ; preds = %519
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [7 x i32], [7 x i32]* @g_1827, i32 0, i64 %524
  %526 = load i32, i32* %525, align 4, !tbaa !1
  %527 = sext i32 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %528)
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

; <label>:531                                     ; preds = %522
  %532 = load i32, i32* %i, align 4, !tbaa !1
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %532)
  br label %534

; <label>:534                                     ; preds = %531, %522
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:538                                     ; preds = %519
  %539 = load i8, i8* @g_2150, align 1, !tbaa !9
  %540 = zext i8 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %541)
  %542 = load i16, i16* @g_2321, align 2, !tbaa !10
  %543 = sext i16 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %544)
  %545 = load i64, i64* @g_2349, align 8, !tbaa !7
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %546)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %547

; <label>:547                                     ; preds = %575, %538
  %548 = load i32, i32* %i, align 4, !tbaa !1
  %549 = icmp slt i32 %548, 6
  br i1 %549, label %550, label %578

; <label>:550                                     ; preds = %547
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %551

; <label>:551                                     ; preds = %571, %550
  %552 = load i32, i32* %j, align 4, !tbaa !1
  %553 = icmp slt i32 %552, 9
  br i1 %553, label %554, label %574

; <label>:554                                     ; preds = %551
  %555 = load i32, i32* %j, align 4, !tbaa !1
  %556 = sext i32 %555 to i64
  %557 = load i32, i32* %i, align 4, !tbaa !1
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [6 x [9 x i32]], [6 x [9 x i32]]* @g_2385, i32 0, i64 %558
  %560 = getelementptr inbounds [9 x i32], [9 x i32]* %559, i32 0, i64 %556
  %561 = load i32, i32* %560, align 4, !tbaa !1
  %562 = sext i32 %561 to i64
  %563 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %562, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i32 %563)
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %570

; <label>:566                                     ; preds = %554
  %567 = load i32, i32* %i, align 4, !tbaa !1
  %568 = load i32, i32* %j, align 4, !tbaa !1
  %569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 %567, i32 %568)
  br label %570

; <label>:570                                     ; preds = %566, %554
  br label %571

; <label>:571                                     ; preds = %570
  %572 = load i32, i32* %j, align 4, !tbaa !1
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %j, align 4, !tbaa !1
  br label %551

; <label>:574                                     ; preds = %551
  br label %575

; <label>:575                                     ; preds = %574
  %576 = load i32, i32* %i, align 4, !tbaa !1
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %i, align 4, !tbaa !1
  br label %547

; <label>:578                                     ; preds = %547
  %579 = load volatile i32, i32* @g_2672, align 4, !tbaa !1
  %580 = zext i32 %579 to i64
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %580, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %581)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %582

; <label>:582                                     ; preds = %598, %578
  %583 = load i32, i32* %i, align 4, !tbaa !1
  %584 = icmp slt i32 %583, 8
  br i1 %584, label %585, label %601

; <label>:585                                     ; preds = %582
  %586 = load i32, i32* %i, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [8 x i32], [8 x i32]* @g_2747, i32 0, i64 %587
  %589 = load volatile i32, i32* %588, align 4, !tbaa !1
  %590 = sext i32 %589 to i64
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %591)
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %597

; <label>:594                                     ; preds = %585
  %595 = load i32, i32* %i, align 4, !tbaa !1
  %596 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %595)
  br label %597

; <label>:597                                     ; preds = %594, %585
  br label %598

; <label>:598                                     ; preds = %597
  %599 = load i32, i32* %i, align 4, !tbaa !1
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %i, align 4, !tbaa !1
  br label %582

; <label>:601                                     ; preds = %582
  %602 = load i8, i8* @g_2753, align 1, !tbaa !9
  %603 = sext i8 %602 to i64
  %604 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %603, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %604)
  %605 = load i16, i16* @g_2771, align 2, !tbaa !10
  %606 = zext i16 %605 to i64
  %607 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %606, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %607)
  %608 = load i8, i8* @g_2949, align 1, !tbaa !9
  %609 = zext i8 %608 to i64
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %610)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %611

; <label>:611                                     ; preds = %627, %601
  %612 = load i32, i32* %i, align 4, !tbaa !1
  %613 = icmp slt i32 %612, 9
  br i1 %613, label %614, label %630

; <label>:614                                     ; preds = %611
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [9 x i8], [9 x i8]* @g_2978, i32 0, i64 %616
  %618 = load i8, i8* %617, align 1, !tbaa !9
  %619 = sext i8 %618 to i64
  %620 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %619, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %620)
  %621 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %626

; <label>:623                                     ; preds = %614
  %624 = load i32, i32* %i, align 4, !tbaa !1
  %625 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %624)
  br label %626

; <label>:626                                     ; preds = %623, %614
  br label %627

; <label>:627                                     ; preds = %626
  %628 = load i32, i32* %i, align 4, !tbaa !1
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %i, align 4, !tbaa !1
  br label %611

; <label>:630                                     ; preds = %611
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 28114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %631)
  %632 = load i64, i64* @g_3140, align 8, !tbaa !7
  %633 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %632, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %633)
  %634 = load i16, i16* @g_3185, align 2, !tbaa !10
  %635 = sext i16 %634 to i64
  %636 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %635, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %636)
  %637 = load i16, i16* @g_3382, align 2, !tbaa !10
  %638 = sext i16 %637 to i64
  %639 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %638, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %639)
  %640 = load volatile i64, i64* @g_3533, align 8, !tbaa !7
  %641 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %640, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %641)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %642

; <label>:642                                     ; preds = %682, %630
  %643 = load i32, i32* %i, align 4, !tbaa !1
  %644 = icmp slt i32 %643, 7
  br i1 %644, label %645, label %685

; <label>:645                                     ; preds = %642
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %646

; <label>:646                                     ; preds = %678, %645
  %647 = load i32, i32* %j, align 4, !tbaa !1
  %648 = icmp slt i32 %647, 1
  br i1 %648, label %649, label %681

; <label>:649                                     ; preds = %646
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %650

; <label>:650                                     ; preds = %674, %649
  %651 = load i32, i32* %k, align 4, !tbaa !1
  %652 = icmp slt i32 %651, 7
  br i1 %652, label %653, label %677

; <label>:653                                     ; preds = %650
  %654 = load i32, i32* %k, align 4, !tbaa !1
  %655 = sext i32 %654 to i64
  %656 = load i32, i32* %j, align 4, !tbaa !1
  %657 = sext i32 %656 to i64
  %658 = load i32, i32* %i, align 4, !tbaa !1
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [7 x [1 x [7 x i8]]], [7 x [1 x [7 x i8]]]* @g_3617, i32 0, i64 %659
  %661 = getelementptr inbounds [1 x [7 x i8]], [1 x [7 x i8]]* %660, i32 0, i64 %657
  %662 = getelementptr inbounds [7 x i8], [7 x i8]* %661, i32 0, i64 %655
  %663 = load i8, i8* %662, align 1, !tbaa !9
  %664 = sext i8 %663 to i64
  %665 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %664, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 %665)
  %666 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %673

; <label>:668                                     ; preds = %653
  %669 = load i32, i32* %i, align 4, !tbaa !1
  %670 = load i32, i32* %j, align 4, !tbaa !1
  %671 = load i32, i32* %k, align 4, !tbaa !1
  %672 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 %669, i32 %670, i32 %671)
  br label %673

; <label>:673                                     ; preds = %668, %653
  br label %674

; <label>:674                                     ; preds = %673
  %675 = load i32, i32* %k, align 4, !tbaa !1
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %k, align 4, !tbaa !1
  br label %650

; <label>:677                                     ; preds = %650
  br label %678

; <label>:678                                     ; preds = %677
  %679 = load i32, i32* %j, align 4, !tbaa !1
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %j, align 4, !tbaa !1
  br label %646

; <label>:681                                     ; preds = %646
  br label %682

; <label>:682                                     ; preds = %681
  %683 = load i32, i32* %i, align 4, !tbaa !1
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %i, align 4, !tbaa !1
  br label %642

; <label>:685                                     ; preds = %642
  %686 = load i8, i8* @g_3631, align 1, !tbaa !9
  %687 = zext i8 %686 to i64
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %687, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %688)
  %689 = load i8, i8* @g_3632, align 1, !tbaa !9
  %690 = zext i8 %689 to i64
  %691 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %690, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %691)
  %692 = load volatile i8, i8* @g_3849, align 1, !tbaa !9
  %693 = sext i8 %692 to i64
  %694 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %693, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %694)
  %695 = load i8, i8* @g_3876, align 1, !tbaa !9
  %696 = zext i8 %695 to i64
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %697)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %698

; <label>:698                                     ; preds = %714, %685
  %699 = load i32, i32* %i, align 4, !tbaa !1
  %700 = icmp slt i32 %699, 5
  br i1 %700, label %701, label %717

; <label>:701                                     ; preds = %698
  %702 = load i32, i32* %i, align 4, !tbaa !1
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [5 x i16], [5 x i16]* @g_4036, i32 0, i64 %703
  %705 = load volatile i16, i16* %704, align 2, !tbaa !10
  %706 = sext i16 %705 to i64
  %707 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %706, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %707)
  %708 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %713

; <label>:710                                     ; preds = %701
  %711 = load i32, i32* %i, align 4, !tbaa !1
  %712 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %711)
  br label %713

; <label>:713                                     ; preds = %710, %701
  br label %714

; <label>:714                                     ; preds = %713
  %715 = load i32, i32* %i, align 4, !tbaa !1
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %i, align 4, !tbaa !1
  br label %698

; <label>:717                                     ; preds = %698
  %718 = load volatile i8, i8* @g_4066, align 1, !tbaa !9
  %719 = sext i8 %718 to i64
  %720 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %719, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %720)
  %721 = load volatile i16, i16* @g_4080, align 2, !tbaa !10
  %722 = zext i16 %721 to i64
  %723 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %722, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %723)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %724

; <label>:724                                     ; preds = %739, %717
  %725 = load i32, i32* %i, align 4, !tbaa !1
  %726 = icmp slt i32 %725, 8
  br i1 %726, label %727, label %742

; <label>:727                                     ; preds = %724
  %728 = load i32, i32* %i, align 4, !tbaa !1
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [8 x i64], [8 x i64]* @g_4084, i32 0, i64 %729
  %731 = load volatile i64, i64* %730, align 8, !tbaa !7
  %732 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %731, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %732)
  %733 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %738

; <label>:735                                     ; preds = %727
  %736 = load i32, i32* %i, align 4, !tbaa !1
  %737 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %736)
  br label %738

; <label>:738                                     ; preds = %735, %727
  br label %739

; <label>:739                                     ; preds = %738
  %740 = load i32, i32* %i, align 4, !tbaa !1
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %i, align 4, !tbaa !1
  br label %724

; <label>:742                                     ; preds = %724
  %743 = load volatile i16, i16* @g_4086, align 2, !tbaa !10
  %744 = zext i16 %743 to i64
  %745 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %744, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %745)
  %746 = load volatile i64, i64* @g_4153, align 8, !tbaa !7
  %747 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %746, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %747)
  %748 = load i16, i16* @g_4205, align 2, !tbaa !10
  %749 = sext i16 %748 to i64
  %750 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %749, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %750)
  %751 = load volatile i16, i16* @g_4302, align 2, !tbaa !10
  %752 = zext i16 %751 to i64
  %753 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %752, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %753)
  %754 = load i32, i32* @g_4307, align 4, !tbaa !1
  %755 = zext i32 %754 to i64
  %756 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %755, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %756)
  %757 = load volatile i16, i16* @g_4431, align 2, !tbaa !10
  %758 = zext i16 %757 to i64
  %759 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %758, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %759)
  %760 = load i32, i32* @g_4528, align 4, !tbaa !1
  %761 = zext i32 %760 to i64
  %762 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %761, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 %762)
  %763 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %764 = zext i32 %763 to i64
  %765 = xor i64 %764, 4294967295
  %766 = trunc i64 %765 to i32
  %767 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %766, i32 %767)
  %768 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %768) #1
  %769 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %769) #1
  %770 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %770) #1
  %771 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %771) #1
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
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32*, align 8
  %l_7 = alloca i32*, align 8
  %l_8 = alloca i32*, align 8
  %l_9 = alloca i32*, align 8
  %l_10 = alloca i32*, align 8
  %l_11 = alloca [3 x [2 x i32*]], align 16
  %l_3762 = alloca i16*, align 8
  %l_3946 = alloca i32***, align 8
  %l_3959 = alloca i8, align 1
  %l_3984 = alloca i32, align 4
  %l_3998 = alloca i32, align 4
  %l_4015 = alloca [4 x i32**], align 16
  %l_4014 = alloca i32***, align 8
  %l_4013 = alloca i32****, align 8
  %l_4012 = alloca i32*****, align 8
  %l_4029 = alloca [9 x i16**], align 16
  %l_4028 = alloca [1 x [4 x [5 x i16***]]], align 16
  %l_4030 = alloca i64, align 8
  %l_4104 = alloca i8, align 1
  %l_4157 = alloca i64, align 8
  %l_4173 = alloca i32, align 4
  %l_4300 = alloca i16, align 2
  %l_4301 = alloca [10 x i8], align 1
  %l_4323 = alloca [5 x i64], align 16
  %l_4329 = alloca [10 x i32], align 16
  %l_4331 = alloca i8*, align 8
  %l_4330 = alloca i8**, align 8
  %l_4401 = alloca i32**, align 8
  %l_4400 = alloca i32***, align 8
  %l_4399 = alloca i32****, align 8
  %l_4444 = alloca [9 x i32*], align 16
  %l_4477 = alloca [2 x [6 x i8]], align 1
  %l_4534 = alloca i32, align 4
  %l_4540 = alloca i32*, align 8
  %l_4587 = alloca i8, align 1
  %l_4598 = alloca [1 x [9 x [1 x i8**]]], align 16
  %l_4597 = alloca i8***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_3, i32** %l_4, align 8, !tbaa !5
  %3 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_5, align 8, !tbaa !5
  %4 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_3, i32** %l_6, align 8, !tbaa !5
  %5 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_3, i32** %l_7, align 8, !tbaa !5
  %6 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_3, i32** %l_8, align 8, !tbaa !5
  %7 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_3, i32** %l_9, align 8, !tbaa !5
  %8 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_3, i32** %l_10, align 8, !tbaa !5
  %9 = bitcast [3 x [2 x i32*]]* %l_11 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast [3 x [2 x i32*]]* %l_11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([3 x [2 x i32*]]* @func_1.l_11 to i8*), i64 48, i32 16, i1 false)
  %11 = bitcast i16** %l_3762 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* @g_2321, i16** %l_3762, align 8, !tbaa !5
  %12 = bitcast i32**** %l_3946 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32*** getelementptr inbounds ([9 x [10 x i32**]], [9 x [10 x i32**]]* @g_3101, i32 0, i64 5, i64 3), i32**** %l_3946, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3959) #1
  store i8 1, i8* %l_3959, align 1, !tbaa !9
  %13 = bitcast i32* %l_3984 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1, i32* %l_3984, align 4, !tbaa !1
  %14 = bitcast i32* %l_3998 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1211320411, i32* %l_3998, align 4, !tbaa !1
  %15 = bitcast [4 x i32**]* %l_4015 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast [4 x i32**]* %l_4015 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x i32**]* @func_1.l_4015 to i8*), i64 32, i32 16, i1 false)
  %17 = bitcast i32**** %l_4014 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = getelementptr inbounds [4 x i32**], [4 x i32**]* %l_4015, i32 0, i64 0
  store i32*** %18, i32**** %l_4014, align 8, !tbaa !5
  %19 = bitcast i32***** %l_4013 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32**** %l_4014, i32***** %l_4013, align 8, !tbaa !5
  %20 = bitcast i32****** %l_4012 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32***** %l_4013, i32****** %l_4012, align 8, !tbaa !5
  %21 = bitcast [9 x i16**]* %l_4029 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %21) #1
  %22 = bitcast [1 x [4 x [5 x i16***]]]* %l_4028 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %22) #1
  %23 = getelementptr inbounds [1 x [4 x [5 x i16***]]], [1 x [4 x [5 x i16***]]]* %l_4028, i64 0, i64 0
  %24 = getelementptr inbounds [4 x [5 x i16***]], [4 x [5 x i16***]]* %23, i64 0, i64 0
  %25 = getelementptr inbounds [5 x i16***], [5 x i16***]* %24, i64 0, i64 0
  %26 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %26, i16**** %25, !tbaa !5
  %27 = getelementptr inbounds i16***, i16**** %25, i64 1
  %28 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 2
  store i16*** %28, i16**** %27, !tbaa !5
  %29 = getelementptr inbounds i16***, i16**** %27, i64 1
  %30 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %30, i16**** %29, !tbaa !5
  %31 = getelementptr inbounds i16***, i16**** %29, i64 1
  %32 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 2
  store i16*** %32, i16**** %31, !tbaa !5
  %33 = getelementptr inbounds i16***, i16**** %31, i64 1
  %34 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %34, i16**** %33, !tbaa !5
  %35 = getelementptr inbounds [5 x i16***], [5 x i16***]* %24, i64 1
  %36 = getelementptr inbounds [5 x i16***], [5 x i16***]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %37, i16**** %36, !tbaa !5
  %38 = getelementptr inbounds i16***, i16**** %36, i64 1
  %39 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %39, i16**** %38, !tbaa !5
  %40 = getelementptr inbounds i16***, i16**** %38, i64 1
  %41 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %41, i16**** %40, !tbaa !5
  %42 = getelementptr inbounds i16***, i16**** %40, i64 1
  %43 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %43, i16**** %42, !tbaa !5
  %44 = getelementptr inbounds i16***, i16**** %42, i64 1
  %45 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %45, i16**** %44, !tbaa !5
  %46 = getelementptr inbounds [5 x i16***], [5 x i16***]* %35, i64 1
  %47 = getelementptr inbounds [5 x i16***], [5 x i16***]* %46, i64 0, i64 0
  %48 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %48, i16**** %47, !tbaa !5
  %49 = getelementptr inbounds i16***, i16**** %47, i64 1
  %50 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 2
  store i16*** %50, i16**** %49, !tbaa !5
  %51 = getelementptr inbounds i16***, i16**** %49, i64 1
  %52 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %52, i16**** %51, !tbaa !5
  %53 = getelementptr inbounds i16***, i16**** %51, i64 1
  %54 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 2
  store i16*** %54, i16**** %53, !tbaa !5
  %55 = getelementptr inbounds i16***, i16**** %53, i64 1
  %56 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %56, i16**** %55, !tbaa !5
  %57 = getelementptr inbounds [5 x i16***], [5 x i16***]* %46, i64 1
  %58 = getelementptr inbounds [5 x i16***], [5 x i16***]* %57, i64 0, i64 0
  %59 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %59, i16**** %58, !tbaa !5
  %60 = getelementptr inbounds i16***, i16**** %58, i64 1
  %61 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %61, i16**** %60, !tbaa !5
  %62 = getelementptr inbounds i16***, i16**** %60, i64 1
  %63 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %63, i16**** %62, !tbaa !5
  %64 = getelementptr inbounds i16***, i16**** %62, i64 1
  %65 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %65, i16**** %64, !tbaa !5
  %66 = getelementptr inbounds i16***, i16**** %64, i64 1
  %67 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 8
  store i16*** %67, i16**** %66, !tbaa !5
  %68 = bitcast i64* %l_4030 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i64 1, i64* %l_4030, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_4104) #1
  store i8 -8, i8* %l_4104, align 1, !tbaa !9
  %69 = bitcast i64* %l_4157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  store i64 -5017588615711192023, i64* %l_4157, align 8, !tbaa !7
  %70 = bitcast i32* %l_4173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  store i32 -1, i32* %l_4173, align 4, !tbaa !1
  %71 = bitcast i16* %l_4300 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %71) #1
  store i16 13547, i16* %l_4300, align 2, !tbaa !10
  %72 = bitcast [10 x i8]* %l_4301 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %72) #1
  %73 = bitcast [10 x i8]* %l_4301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @func_1.l_4301, i32 0, i32 0), i64 10, i32 1, i1 false)
  %74 = bitcast [5 x i64]* %l_4323 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %74) #1
  %75 = bitcast [10 x i32]* %l_4329 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %75) #1
  %76 = bitcast [10 x i32]* %l_4329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* bitcast ([10 x i32]* @func_1.l_4329 to i8*), i64 40, i32 16, i1 false)
  %77 = bitcast i8** %l_4331 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %l_4301, i32 0, i64 0
  store i8* %78, i8** %l_4331, align 8, !tbaa !5
  %79 = bitcast i8*** %l_4330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i8** %l_4331, i8*** %l_4330, align 8, !tbaa !5
  %80 = bitcast i32*** %l_4401 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i32** @g_3729, i32*** %l_4401, align 8, !tbaa !5
  %81 = bitcast i32**** %l_4400 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store i32*** %l_4401, i32**** %l_4400, align 8, !tbaa !5
  %82 = bitcast i32***** %l_4399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  store i32**** %l_4400, i32***** %l_4399, align 8, !tbaa !5
  %83 = bitcast [9 x i32*]* %l_4444 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %83) #1
  %84 = bitcast [9 x i32*]* %l_4444 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* bitcast ([9 x i32*]* @func_1.l_4444 to i8*), i64 72, i32 16, i1 false)
  %85 = bitcast [2 x [6 x i8]]* %l_4477 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %85) #1
  %86 = bitcast [2 x [6 x i8]]* %l_4477 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* getelementptr inbounds ([2 x [6 x i8]], [2 x [6 x i8]]* @func_1.l_4477, i32 0, i32 0, i32 0), i64 12, i32 1, i1 false)
  %87 = bitcast i32* %l_4534 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 788665746, i32* %l_4534, align 4, !tbaa !1
  %88 = bitcast i32** %l_4540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store volatile i32* @g_851, i32** %l_4540, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_4587) #1
  store i8 78, i8* %l_4587, align 1, !tbaa !9
  %89 = bitcast [1 x [9 x [1 x i8**]]]* %l_4598 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %89) #1
  %90 = bitcast [1 x [9 x [1 x i8**]]]* %l_4598 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* bitcast ([1 x [9 x [1 x i8**]]]* @func_1.l_4598 to i8*), i64 72, i32 16, i1 false)
  %91 = bitcast i8**** %l_4597 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  %92 = getelementptr inbounds [1 x [9 x [1 x i8**]]], [1 x [9 x [1 x i8**]]]* %l_4598, i32 0, i64 0
  %93 = getelementptr inbounds [9 x [1 x i8**]], [9 x [1 x i8**]]* %92, i32 0, i64 1
  %94 = getelementptr inbounds [1 x i8**], [1 x i8**]* %93, i32 0, i64 0
  store i8*** %94, i8**** %l_4597, align 8, !tbaa !5
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %105, %0
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 9
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [9 x i16**], [9 x i16**]* %l_4029, i32 0, i64 %103
  store i16** %l_3762, i16*** %104, align 8, !tbaa !5
  br label %105

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:108                                     ; preds = %98
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %116, %108
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 5
  br i1 %111, label %112, label %119

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x i64], [5 x i64]* %l_4323, i32 0, i64 %114
  store i64 1736802928043729987, i64* %115, align 8, !tbaa !7
  br label %116

; <label>:116                                     ; preds = %112
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:119                                     ; preds = %109
  %120 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_12, i32 0, i64 2), align 4, !tbaa !1
  %121 = add i32 %120, -1
  store volatile i32 %121, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_12, i32 0, i64 2), align 4, !tbaa !1
  %122 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i8**** %l_4597 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast [1 x [9 x [1 x i8**]]]* %l_4598 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %126) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4587) #1
  %127 = bitcast i32** %l_4540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %l_4534 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast [2 x [6 x i8]]* %l_4477 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %129) #1
  %130 = bitcast [9 x i32*]* %l_4444 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %130) #1
  %131 = bitcast i32***** %l_4399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32**** %l_4400 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32*** %l_4401 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i8*** %l_4330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i8** %l_4331 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast [10 x i32]* %l_4329 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %136) #1
  %137 = bitcast [5 x i64]* %l_4323 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %137) #1
  %138 = bitcast [10 x i8]* %l_4301 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %138) #1
  %139 = bitcast i16* %l_4300 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %139) #1
  %140 = bitcast i32* %l_4173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i64* %l_4157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4104) #1
  %142 = bitcast i64* %l_4030 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast [1 x [4 x [5 x i16***]]]* %l_4028 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %143) #1
  %144 = bitcast [9 x i16**]* %l_4029 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %144) #1
  %145 = bitcast i32****** %l_4012 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32***** %l_4013 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32**** %l_4014 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast [4 x i32**]* %l_4015 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %149 = bitcast i32* %l_3998 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %l_3984 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3959) #1
  %151 = bitcast i32**** %l_3946 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i16** %l_3762 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast [3 x [2 x i32*]]* %l_11 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %153) #1
  %154 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32** %l_7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #1
  %159 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  ret i64 28114
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.91, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0), i32 %3)
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
