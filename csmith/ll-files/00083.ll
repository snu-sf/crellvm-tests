; ModuleID = '00083.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -10, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_18 = internal global [3 x [10 x [1 x i8]]] [[10 x [1 x i8]] [[1 x i8] c"\A5", [1 x i8] c"\F8", [1 x i8] c"\01", [1 x i8] c"u", [1 x i8] c"\F8", [1 x i8] c"\94", [1 x i8] c"s", [1 x i8] c"\01", [1 x i8] c"\01", [1 x i8] c"s"], [10 x [1 x i8]] [[1 x i8] c"\94", [1 x i8] c"\F8", [1 x i8] c"u", [1 x i8] c"\01", [1 x i8] c"\F8", [1 x i8] c"\A5", [1 x i8] c"\F8", [1 x i8] c"\01", [1 x i8] c"u", [1 x i8] c"\F8"], [10 x [1 x i8]] [[1 x i8] c"\94", [1 x i8] c"s", [1 x i8] c"\01", [1 x i8] c"\01", [1 x i8] c"s", [1 x i8] c"\94", [1 x i8] c"\F8", [1 x i8] c"u", [1 x i8] c"\01", [1 x i8] c"\F8"]], align 16
@.str.2 = private unnamed_addr constant [14 x i8] c"g_18[i][j][k]\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_59 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_63 = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_63\00", align 1
@g_100 = internal global i64 4810185061551294833, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_103 = internal global i8 37, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"g_103\00", align 1
@g_123 = internal global i32 -1774427943, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@g_126 = internal global i8 1, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@g_142 = internal global [9 x [4 x [4 x i64]]] [[4 x [4 x i64]] [[4 x i64] [i64 8, i64 -7699154416953838348, i64 7812350301958359545, i64 -2696664509754872037], [4 x i64] [i64 8630246080960831433, i64 0, i64 8630246080960831433, i64 6], [4 x i64] [i64 765211838143324656, i64 0, i64 6, i64 1811469215144002538], [4 x i64] [i64 -1, i64 1490116749874209067, i64 0, i64 0]], [4 x [4 x i64]] [[4 x i64] [i64 0, i64 8, i64 0, i64 6913915801233957651], [4 x i64] [i64 -1, i64 -6762991908279908848, i64 6, i64 0], [4 x i64] [i64 765211838143324656, i64 8896009715586368061, i64 -2696664509754872037, i64 8630246080960831433], [4 x i64] [i64 -2696664509754872037, i64 8630246080960831433, i64 1490116749874209067, i64 1]], [4 x [4 x i64]] [[4 x i64] [i64 -6762991908279908848, i64 1490116749874209067, i64 -1, i64 6], [4 x i64] [i64 8630246080960831433, i64 2907140626912430453, i64 -5857553951550310661, i64 -5857553951550310661], [4 x i64] [i64 -1, i64 -1, i64 1, i64 4744813374493530600], [4 x i64] [i64 1, i64 8, i64 1, i64 8630246080960831433]], [4 x [4 x i64]] [[4 x i64] [i64 -1, i64 -9, i64 6, i64 1], [4 x i64] [i64 -6663290151526470499, i64 -9, i64 -1, i64 8630246080960831433], [4 x i64] [i64 -9, i64 8, i64 1600568031022231677, i64 4744813374493530600], [4 x i64] [i64 -6762991908279908848, i64 -1, i64 -9, i64 -5857553951550310661]], [4 x [4 x i64]] [[4 x i64] [i64 765211838143324656, i64 2907140626912430453, i64 1811469215144002538, i64 6], [4 x i64] [i64 -1, i64 1490116749874209067, i64 1, i64 1], [4 x i64] [i64 3671666433641715069, i64 8630246080960831433, i64 0, i64 8630246080960831433], [4 x i64] [i64 1490116749874209067, i64 8896009715586368061, i64 -5857553951550310661, i64 0]], [4 x [4 x i64]] [[4 x i64] [i64 -6663290151526470499, i64 -6762991908279908848, i64 -9, i64 6913915801233957651], [4 x i64] [i64 -2696664509754872037, i64 8, i64 -1, i64 0], [4 x i64] [i64 -2696664509754872037, i64 1490116749874209067, i64 -9, i64 1811469215144002538], [4 x i64] [i64 -6663290151526470499, i64 0, i64 -5857553951550310661, i64 6]], [4 x [4 x i64]] [[4 x i64] [i64 1490116749874209067, i64 6244588519681019623, i64 0, i64 4744813374493530600], [4 x i64] [i64 3671666433641715069, i64 -6663290151526470499, i64 1, i64 6913915801233957651], [4 x i64] [i64 -1, i64 8896009715586368061, i64 1811469215144002538, i64 1], [4 x i64] [i64 765211838143324656, i64 -9, i64 -9, i64 765211838143324656]], [4 x [4 x i64]] [[4 x i64] [i64 -6762991908279908848, i64 8630246080960831433, i64 1600568031022231677, i64 0], [4 x i64] [i64 -9, i64 6244588519681019623, i64 -1, i64 -5857553951550310661], [4 x i64] [i64 -6663290151526470499, i64 3671666433641715069, i64 6, i64 -5857553951550310661], [4 x i64] [i64 -1, i64 6244588519681019623, i64 1, i64 0]], [4 x [4 x i64]] [[4 x i64] [i64 1, i64 8630246080960831433, i64 1, i64 765211838143324656], [4 x i64] [i64 -1, i64 -9, i64 -5857553951550310661, i64 1], [4 x i64] [i64 8630246080960831433, i64 8896009715586368061, i64 -1, i64 6913915801233957651], [4 x i64] [i64 -6762991908279908848, i64 -6663290151526470499, i64 1490116749874209067, i64 4744813374493530600]]], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"g_142[i][j][k]\00", align 1
@g_159 = internal global [1 x [2 x i32]] [[2 x i32] [i32 -944693791, i32 -944693791]], align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"g_159[i][j]\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_163 = internal global i16 -23471, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_203 = internal global i64 -1, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_203\00", align 1
@g_215 = internal global i8 1, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_215\00", align 1
@g_225 = internal global [3 x i16] [i16 16671, i16 16671, i16 16671], align 2
@.str.16 = private unnamed_addr constant [9 x i8] c"g_225[i]\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_227 = internal global i16 -1, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_269 = internal global i32 310933673, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_269\00", align 1
@g_290 = internal global i8 -54, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_290\00", align 1
@g_291 = internal global [1 x [1 x [7 x i64]]] [[1 x [7 x i64]] [[7 x i64] [i64 -5386082181486677265, i64 -5386082181486677265, i64 -5386082181486677265, i64 -5386082181486677265, i64 -5386082181486677265, i64 -5386082181486677265, i64 -5386082181486677265]]], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"g_291[i][j][k]\00", align 1
@g_456 = internal global i8 1, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_456\00", align 1
@g_662 = internal global i8 -4, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_662\00", align 1
@g_758 = internal global i64 1, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_758\00", align 1
@g_798 = internal global i32 -1, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_798\00", align 1
@g_834 = internal global i16 1, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_834\00", align 1
@g_895 = internal global i16 -25250, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_895\00", align 1
@g_896 = internal global [5 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4], align 2
@.str.28 = private unnamed_addr constant [9 x i8] c"g_896[i]\00", align 1
@g_897 = internal global i16 5876, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_897\00", align 1
@g_898 = internal global i16 0, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_898\00", align 1
@g_899 = internal global [2 x i16] [i16 1, i16 1], align 2
@.str.31 = private unnamed_addr constant [9 x i8] c"g_899[i]\00", align 1
@g_900 = internal global [10 x i16] [i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522, i16 522], align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"g_900[i]\00", align 1
@g_918 = internal global i16 0, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_918\00", align 1
@g_973 = internal global i64 1, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_973\00", align 1
@g_981 = internal global i8 0, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_981\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1110\00", align 1
@g_1160 = internal global i32 -10, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1160\00", align 1
@g_1190 = internal global i64 -8227714527569822338, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1190\00", align 1
@g_1286 = internal global i32 -1, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1286\00", align 1
@g_1368 = internal global [6 x i16] [i16 19228, i16 19228, i16 19228, i16 19228, i16 19228, i16 19228], align 2
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1368[i]\00", align 1
@g_1476 = internal global i16 -8305, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1476\00", align 1
@g_1743 = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1743\00", align 1
@g_1767 = internal global i32 -8, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1767\00", align 1
@g_1920 = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str.44 = private unnamed_addr constant [10 x i8] c"g_1920[i]\00", align 1
@g_1954 = internal global i32 1, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1954\00", align 1
@g_2045 = internal global [3 x i8] c"\1A\1A\1A", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"g_2045[i]\00", align 1
@g_2073 = internal global i64 -5533571353690465709, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2073\00", align 1
@g_2292 = internal global i8 -64, align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2292\00", align 1
@g_2384 = internal global i64 3, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2384\00", align 1
@g_2702 = internal global i8 -96, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2702\00", align 1
@g_2934 = internal global i32 0, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2934\00", align 1
@g_2982 = internal global [9 x i8] c"\05\05\05\05\05\05\05\05\05", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"g_2982[i]\00", align 1
@g_3242 = internal global i8 42, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_3242\00", align 1
@g_3315 = internal constant i32 1, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_3315\00", align 1
@g_3404 = internal global i16 9, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_3404\00", align 1
@g_3410 = internal constant [8 x i8] c"ffffffff", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"g_3410[i]\00", align 1
@g_3413 = internal global i8 8, align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_3413\00", align 1
@g_3414 = internal global i8 0, align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_3414\00", align 1
@g_3415 = internal global [7 x [8 x [1 x i8]]] [[8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"], [8 x [1 x i8]] [[1 x i8] c"\F8", [1 x i8] c"\E4", [1 x i8] c"\F8", [1 x i8] c"\8D", [1 x i8] c"\85", [1 x i8] c"\E4", [1 x i8] c"\85", [1 x i8] c"\8D"]], align 16
@.str.59 = private unnamed_addr constant [16 x i8] c"g_3415[i][j][k]\00", align 1
@g_3416 = internal global i8 -86, align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"g_3416\00", align 1
@g_3417 = internal global i8 53, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_3417\00", align 1
@g_3418 = internal global i8 4, align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"g_3418\00", align 1
@g_3419 = internal global i8 124, align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"g_3419\00", align 1
@g_3420 = internal global i8 -8, align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"g_3420\00", align 1
@g_3421 = internal global i8 1, align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"g_3421\00", align 1
@g_3422 = internal global i8 0, align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"g_3422\00", align 1
@g_3423 = internal global i8 24, align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"g_3423\00", align 1
@g_3424 = internal global i8 -1, align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"g_3424\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"g_3529\00", align 1
@g_3806 = internal global i64 3240213039500134921, align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"g_3806\00", align 1
@g_3989 = internal global i8 -48, align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"g_3989\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"g_4040\00", align 1
@g_4075 = internal global i8 -6, align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"g_4075\00", align 1
@g_4222 = internal global i16 1, align 2
@.str.74 = private unnamed_addr constant [7 x i8] c"g_4222\00", align 1
@g_4242 = internal global i16 -3, align 2
@.str.75 = private unnamed_addr constant [7 x i8] c"g_4242\00", align 1
@g_4367 = internal global i16 -3, align 2
@.str.76 = private unnamed_addr constant [7 x i8] c"g_4367\00", align 1
@g_4371 = internal global [10 x [8 x i32]] [[8 x i32] [i32 -1, i32 4, i32 1, i32 -825406304, i32 -1, i32 -825406304, i32 1, i32 858346419], [8 x i32] [i32 -1, i32 -825406304, i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304], [8 x i32] [i32 -1, i32 858346419, i32 -1680689037, i32 858346419, i32 -1, i32 4, i32 -1, i32 858346419], [8 x i32] [i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304, i32 1, i32 858346419], [8 x i32] [i32 -1, i32 -825406304, i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304], [8 x i32] [i32 -1, i32 858346419, i32 -1680689037, i32 858346419, i32 -1, i32 4, i32 -1, i32 858346419], [8 x i32] [i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304, i32 1, i32 858346419], [8 x i32] [i32 -1, i32 -825406304, i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304], [8 x i32] [i32 -1, i32 858346419, i32 -1680689037, i32 858346419, i32 -1, i32 4, i32 -1, i32 858346419], [8 x i32] [i32 1, i32 858346419, i32 1, i32 -825406304, i32 -1, i32 -825406304, i32 1, i32 858346419]], align 16
@.str.77 = private unnamed_addr constant [13 x i8] c"g_4371[i][j]\00", align 1
@g_4597 = internal global i16 0, align 2
@.str.78 = private unnamed_addr constant [7 x i8] c"g_4597\00", align 1
@g_4648 = internal global i8 4, align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"g_4648\00", align 1
@g_4658 = internal global i32 920493283, align 4
@.str.80 = private unnamed_addr constant [7 x i8] c"g_4658\00", align 1
@g_4738 = internal global i32 -1, align 4
@.str.81 = private unnamed_addr constant [7 x i8] c"g_4738\00", align 1
@g_4739 = internal global i64 0, align 8
@.str.82 = private unnamed_addr constant [7 x i8] c"g_4739\00", align 1
@g_4744 = internal global i16 6840, align 2
@.str.83 = private unnamed_addr constant [7 x i8] c"g_4744\00", align 1
@g_4929 = internal global [7 x i64] [i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3, i64 -3], align 16
@.str.84 = private unnamed_addr constant [10 x i8] c"g_4929[i]\00", align 1
@g_4958 = internal global i32 -2125074300, align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"g_4958\00", align 1
@g_5183 = internal global i32 0, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"g_5183\00", align 1
@g_5211 = internal global i32 -6, align 4
@.str.87 = private unnamed_addr constant [7 x i8] c"g_5211\00", align 1
@g_5230 = internal global i32 -737293638, align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"g_5230\00", align 1
@g_5366 = internal global i16 -2, align 2
@.str.89 = private unnamed_addr constant [7 x i8] c"g_5366\00", align 1
@g_5479 = internal global i32 1, align 4
@.str.90 = private unnamed_addr constant [7 x i8] c"g_5479\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1774 = internal global i8*** @g_479, align 8
@func_1.l_4600 = private unnamed_addr constant [7 x [10 x i8****]] [[10 x i8****] [i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** null, i8**** null], [10 x i8****] [i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** null], [10 x i8****] [i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** @g_1774], [10 x i8****] [i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** null, i8**** @g_1774], [10 x i8****] [i8**** null, i8**** null, i8**** null, i8**** null, i8**** @g_1774, i8**** null, i8**** null, i8**** @g_1774, i8**** @g_1774, i8**** @g_1774], [10 x i8****] [i8**** null, i8**** null, i8**** null, i8**** @g_1774, i8**** null, i8**** null, i8**** null, i8**** null, i8**** @g_1774, i8**** @g_1774], [10 x i8****] [i8**** null, i8**** null, i8**** @g_1774, i8**** null, i8**** null, i8**** null, i8**** null, i8**** @g_1774, i8**** null, i8**** null]], align 16
@g_1581 = internal global i64*** null, align 8
@g_421 = internal global i16** @g_422, align 8
@func_1.l_4632 = private unnamed_addr constant [2 x [7 x i16***]] [[7 x i16***] [i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421], [7 x i16***] [i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421, i16*** @g_421]], align 16
@g_1232 = internal global i64** @g_507, align 8
@func_1.l_5418 = private unnamed_addr constant [5 x i32] [i32 -620924169, i32 -620924169, i32 -620924169, i32 -620924169, i32 -620924169], align 16
@g_998 = internal global i16** @g_422, align 8
@g_479 = internal global i8** @g_480, align 8
@g_480 = internal global i8* @g_215, align 8
@g_422 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i16]* @g_225 to i8*), i64 2) to i16*), align 8
@g_507 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [4 x [4 x i64]]]* @g_142 to i8*), i64 128) to i64*), align 8
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
  %90 = call zeroext i16 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %134, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %137

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %130, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 10
  br i1 %100, label %101, label %133

; <label>:101                                     ; preds = %98
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %126, %101
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %129

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x [10 x [1 x i8]]], [3 x [10 x [1 x i8]]]* @g_18, i32 0, i64 %111
  %113 = getelementptr inbounds [10 x [1 x i8]], [10 x [1 x i8]]* %112, i32 0, i64 %109
  %114 = getelementptr inbounds [1 x i8], [1 x i8]* %113, i32 0, i64 %107
  %115 = load i8, i8* %114, align 1, !tbaa !9
  %116 = sext i8 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

; <label>:120                                     ; preds = %105
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = load i32, i32* %k, align 4, !tbaa !1
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %121, i32 %122, i32 %123)
  br label %125

; <label>:125                                     ; preds = %120, %105
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32, i32* %k, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %k, align 4, !tbaa !1
  br label %102

; <label>:129                                     ; preds = %102
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load i32, i32* %j, align 4, !tbaa !1
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:133                                     ; preds = %98
  br label %134

; <label>:134                                     ; preds = %133
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:137                                     ; preds = %94
  %138 = load i32, i32* @g_59, align 4, !tbaa !1
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  %141 = load i32, i32* @g_63, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %143)
  %144 = load i64, i64* @g_100, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %145)
  %146 = load i8, i8* @g_103, align 1, !tbaa !9
  %147 = zext i8 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_123, align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %151)
  %152 = load i8, i8* @g_126, align 1, !tbaa !9
  %153 = zext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %154)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %194, %137
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = icmp slt i32 %156, 9
  br i1 %157, label %158, label %197

; <label>:158                                     ; preds = %155
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %190, %158
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %193

; <label>:162                                     ; preds = %159
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %163

; <label>:163                                     ; preds = %186, %162
  %164 = load i32, i32* %k, align 4, !tbaa !1
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %189

; <label>:166                                     ; preds = %163
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = load i32, i32* %j, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %i, align 4, !tbaa !1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [9 x [4 x [4 x i64]]], [9 x [4 x [4 x i64]]]* @g_142, i32 0, i64 %172
  %174 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %173, i32 0, i64 %170
  %175 = getelementptr inbounds [4 x i64], [4 x i64]* %174, i32 0, i64 %168
  %176 = load i64, i64* %175, align 8, !tbaa !7
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %177)
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

; <label>:180                                     ; preds = %166
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = load i32, i32* %k, align 4, !tbaa !1
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %181, i32 %182, i32 %183)
  br label %185

; <label>:185                                     ; preds = %180, %166
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load i32, i32* %k, align 4, !tbaa !1
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %k, align 4, !tbaa !1
  br label %163

; <label>:189                                     ; preds = %163
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load i32, i32* %j, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:193                                     ; preds = %159
  br label %194

; <label>:194                                     ; preds = %193
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:197                                     ; preds = %155
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %226, %197
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %201, label %229

; <label>:201                                     ; preds = %198
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %202

; <label>:202                                     ; preds = %222, %201
  %203 = load i32, i32* %j, align 4, !tbaa !1
  %204 = icmp slt i32 %203, 2
  br i1 %204, label %205, label %225

; <label>:205                                     ; preds = %202
  %206 = load i32, i32* %j, align 4, !tbaa !1
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* @g_159, i32 0, i64 %209
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %210, i32 0, i64 %207
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = zext i32 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 %214)
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

; <label>:217                                     ; preds = %205
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = load i32, i32* %j, align 4, !tbaa !1
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %218, i32 %219)
  br label %221

; <label>:221                                     ; preds = %217, %205
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %j, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %j, align 4, !tbaa !1
  br label %202

; <label>:225                                     ; preds = %202
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:229                                     ; preds = %198
  %230 = load i16, i16* @g_163, align 2, !tbaa !10
  %231 = sext i16 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %232)
  %233 = load i64, i64* @g_203, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %234)
  %235 = load i8, i8* @g_215, align 1, !tbaa !9
  %236 = sext i8 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %237)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %238

; <label>:238                                     ; preds = %254, %229
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %240 = icmp slt i32 %239, 3
  br i1 %240, label %241, label %257

; <label>:241                                     ; preds = %238
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x i16], [3 x i16]* @g_225, i32 0, i64 %243
  %245 = load i16, i16* %244, align 2, !tbaa !10
  %246 = zext i16 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %247)
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

; <label>:250                                     ; preds = %241
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %251)
  br label %253

; <label>:253                                     ; preds = %250, %241
  br label %254

; <label>:254                                     ; preds = %253
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %i, align 4, !tbaa !1
  br label %238

; <label>:257                                     ; preds = %238
  %258 = load i16, i16* @g_227, align 2, !tbaa !10
  %259 = zext i16 %258 to i64
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %260)
  %261 = load i32, i32* @g_269, align 4, !tbaa !1
  %262 = sext i32 %261 to i64
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %263)
  %264 = load i8, i8* @g_290, align 1, !tbaa !9
  %265 = sext i8 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %266)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %267

; <label>:267                                     ; preds = %306, %257
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %270, label %309

; <label>:270                                     ; preds = %267
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %271

; <label>:271                                     ; preds = %302, %270
  %272 = load i32, i32* %j, align 4, !tbaa !1
  %273 = icmp slt i32 %272, 1
  br i1 %273, label %274, label %305

; <label>:274                                     ; preds = %271
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %275

; <label>:275                                     ; preds = %298, %274
  %276 = load i32, i32* %k, align 4, !tbaa !1
  %277 = icmp slt i32 %276, 7
  br i1 %277, label %278, label %301

; <label>:278                                     ; preds = %275
  %279 = load i32, i32* %k, align 4, !tbaa !1
  %280 = sext i32 %279 to i64
  %281 = load i32, i32* %j, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [1 x [1 x [7 x i64]]], [1 x [1 x [7 x i64]]]* @g_291, i32 0, i64 %284
  %286 = getelementptr inbounds [1 x [7 x i64]], [1 x [7 x i64]]* %285, i32 0, i64 %282
  %287 = getelementptr inbounds [7 x i64], [7 x i64]* %286, i32 0, i64 %280
  %288 = load i64, i64* %287, align 8, !tbaa !7
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

; <label>:292                                     ; preds = %278
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = load i32, i32* %j, align 4, !tbaa !1
  %295 = load i32, i32* %k, align 4, !tbaa !1
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %293, i32 %294, i32 %295)
  br label %297

; <label>:297                                     ; preds = %292, %278
  br label %298

; <label>:298                                     ; preds = %297
  %299 = load i32, i32* %k, align 4, !tbaa !1
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %k, align 4, !tbaa !1
  br label %275

; <label>:301                                     ; preds = %275
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load i32, i32* %j, align 4, !tbaa !1
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %j, align 4, !tbaa !1
  br label %271

; <label>:305                                     ; preds = %271
  br label %306

; <label>:306                                     ; preds = %305
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %i, align 4, !tbaa !1
  br label %267

; <label>:309                                     ; preds = %267
  %310 = load i8, i8* @g_456, align 1, !tbaa !9
  %311 = zext i8 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %312)
  %313 = load i8, i8* @g_662, align 1, !tbaa !9
  %314 = zext i8 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %315)
  %316 = load i64, i64* @g_758, align 8, !tbaa !7
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* @g_798, align 4, !tbaa !1
  %319 = zext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %320)
  %321 = load i16, i16* @g_834, align 2, !tbaa !10
  %322 = sext i16 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %323)
  %324 = load volatile i16, i16* @g_895, align 2, !tbaa !10
  %325 = sext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %326)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %327

; <label>:327                                     ; preds = %343, %309
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = icmp slt i32 %328, 5
  br i1 %329, label %330, label %346

; <label>:330                                     ; preds = %327
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [5 x i16], [5 x i16]* @g_896, i32 0, i64 %332
  %334 = load volatile i16, i16* %333, align 2, !tbaa !10
  %335 = sext i16 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %336)
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %342

; <label>:339                                     ; preds = %330
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %340)
  br label %342

; <label>:342                                     ; preds = %339, %330
  br label %343

; <label>:343                                     ; preds = %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %i, align 4, !tbaa !1
  br label %327

; <label>:346                                     ; preds = %327
  %347 = load volatile i16, i16* @g_897, align 2, !tbaa !10
  %348 = sext i16 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %349)
  %350 = load volatile i16, i16* @g_898, align 2, !tbaa !10
  %351 = sext i16 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %352)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %353

; <label>:353                                     ; preds = %369, %346
  %354 = load i32, i32* %i, align 4, !tbaa !1
  %355 = icmp slt i32 %354, 2
  br i1 %355, label %356, label %372

; <label>:356                                     ; preds = %353
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [2 x i16], [2 x i16]* @g_899, i32 0, i64 %358
  %360 = load volatile i16, i16* %359, align 2, !tbaa !10
  %361 = sext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %362)
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

; <label>:365                                     ; preds = %356
  %366 = load i32, i32* %i, align 4, !tbaa !1
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %366)
  br label %368

; <label>:368                                     ; preds = %365, %356
  br label %369

; <label>:369                                     ; preds = %368
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %i, align 4, !tbaa !1
  br label %353

; <label>:372                                     ; preds = %353
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %373

; <label>:373                                     ; preds = %389, %372
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %375 = icmp slt i32 %374, 10
  br i1 %375, label %376, label %392

; <label>:376                                     ; preds = %373
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [10 x i16], [10 x i16]* @g_900, i32 0, i64 %378
  %380 = load volatile i16, i16* %379, align 2, !tbaa !10
  %381 = sext i16 %380 to i64
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %382)
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %388

; <label>:385                                     ; preds = %376
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %386)
  br label %388

; <label>:388                                     ; preds = %385, %376
  br label %389

; <label>:389                                     ; preds = %388
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %i, align 4, !tbaa !1
  br label %373

; <label>:392                                     ; preds = %373
  %393 = load i16, i16* @g_918, align 2, !tbaa !10
  %394 = sext i16 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %395)
  %396 = load i64, i64* @g_973, align 8, !tbaa !7
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %397)
  %398 = load i8, i8* @g_981, align 1, !tbaa !9
  %399 = zext i8 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 30318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %401)
  %402 = load i32, i32* @g_1160, align 4, !tbaa !1
  %403 = zext i32 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %404)
  %405 = load i64, i64* @g_1190, align 8, !tbaa !7
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %406)
  %407 = load i32, i32* @g_1286, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %409)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:410                                     ; preds = %426, %392
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = icmp slt i32 %411, 6
  br i1 %412, label %413, label %429

; <label>:413                                     ; preds = %410
  %414 = load i32, i32* %i, align 4, !tbaa !1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [6 x i16], [6 x i16]* @g_1368, i32 0, i64 %415
  %417 = load i16, i16* %416, align 2, !tbaa !10
  %418 = sext i16 %417 to i64
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %419)
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

; <label>:422                                     ; preds = %413
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %423)
  br label %425

; <label>:425                                     ; preds = %422, %413
  br label %426

; <label>:426                                     ; preds = %425
  %427 = load i32, i32* %i, align 4, !tbaa !1
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %i, align 4, !tbaa !1
  br label %410

; <label>:429                                     ; preds = %410
  %430 = load i16, i16* @g_1476, align 2, !tbaa !10
  %431 = sext i16 %430 to i64
  %432 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %431, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %432)
  %433 = load i32, i32* @g_1743, align 4, !tbaa !1
  %434 = zext i32 %433 to i64
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %435)
  %436 = load volatile i32, i32* @g_1767, align 4, !tbaa !1
  %437 = zext i32 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %438)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %439

; <label>:439                                     ; preds = %455, %429
  %440 = load i32, i32* %i, align 4, !tbaa !1
  %441 = icmp slt i32 %440, 3
  br i1 %441, label %442, label %458

; <label>:442                                     ; preds = %439
  %443 = load i32, i32* %i, align 4, !tbaa !1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [3 x i32], [3 x i32]* @g_1920, i32 0, i64 %444
  %446 = load i32, i32* %445, align 4, !tbaa !1
  %447 = zext i32 %446 to i64
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %448)
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

; <label>:451                                     ; preds = %442
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %452)
  br label %454

; <label>:454                                     ; preds = %451, %442
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %i, align 4, !tbaa !1
  br label %439

; <label>:458                                     ; preds = %439
  %459 = load i32, i32* @g_1954, align 4, !tbaa !1
  %460 = sext i32 %459 to i64
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %461)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %462

; <label>:462                                     ; preds = %478, %458
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = icmp slt i32 %463, 3
  br i1 %464, label %465, label %481

; <label>:465                                     ; preds = %462
  %466 = load i32, i32* %i, align 4, !tbaa !1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [3 x i8], [3 x i8]* @g_2045, i32 0, i64 %467
  %469 = load i8, i8* %468, align 1, !tbaa !9
  %470 = sext i8 %469 to i64
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %470, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %471)
  %472 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %477

; <label>:474                                     ; preds = %465
  %475 = load i32, i32* %i, align 4, !tbaa !1
  %476 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %475)
  br label %477

; <label>:477                                     ; preds = %474, %465
  br label %478

; <label>:478                                     ; preds = %477
  %479 = load i32, i32* %i, align 4, !tbaa !1
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %i, align 4, !tbaa !1
  br label %462

; <label>:481                                     ; preds = %462
  %482 = load i64, i64* @g_2073, align 8, !tbaa !7
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %483)
  %484 = load volatile i8, i8* @g_2292, align 1, !tbaa !9
  %485 = sext i8 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %486)
  %487 = load i64, i64* @g_2384, align 8, !tbaa !7
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %487, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %488)
  %489 = load i8, i8* @g_2702, align 1, !tbaa !9
  %490 = sext i8 %489 to i64
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %490, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %491)
  %492 = load i32, i32* @g_2934, align 4, !tbaa !1
  %493 = zext i32 %492 to i64
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %494)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %495

; <label>:495                                     ; preds = %511, %481
  %496 = load i32, i32* %i, align 4, !tbaa !1
  %497 = icmp slt i32 %496, 9
  br i1 %497, label %498, label %514

; <label>:498                                     ; preds = %495
  %499 = load i32, i32* %i, align 4, !tbaa !1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [9 x i8], [9 x i8]* @g_2982, i32 0, i64 %500
  %502 = load i8, i8* %501, align 1, !tbaa !9
  %503 = sext i8 %502 to i64
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %503, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %504)
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %510

; <label>:507                                     ; preds = %498
  %508 = load i32, i32* %i, align 4, !tbaa !1
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %508)
  br label %510

; <label>:510                                     ; preds = %507, %498
  br label %511

; <label>:511                                     ; preds = %510
  %512 = load i32, i32* %i, align 4, !tbaa !1
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %i, align 4, !tbaa !1
  br label %495

; <label>:514                                     ; preds = %495
  %515 = load i8, i8* @g_3242, align 1, !tbaa !9
  %516 = zext i8 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %517)
  %518 = load volatile i32, i32* @g_3315, align 4, !tbaa !1
  %519 = sext i32 %518 to i64
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %520)
  %521 = load volatile i16, i16* @g_3404, align 2, !tbaa !10
  %522 = zext i16 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %523)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %524

; <label>:524                                     ; preds = %540, %514
  %525 = load i32, i32* %i, align 4, !tbaa !1
  %526 = icmp slt i32 %525, 8
  br i1 %526, label %527, label %543

; <label>:527                                     ; preds = %524
  %528 = load i32, i32* %i, align 4, !tbaa !1
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [8 x i8], [8 x i8]* @g_3410, i32 0, i64 %529
  %531 = load i8, i8* %530, align 1, !tbaa !9
  %532 = zext i8 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %533)
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %539

; <label>:536                                     ; preds = %527
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %537)
  br label %539

; <label>:539                                     ; preds = %536, %527
  br label %540

; <label>:540                                     ; preds = %539
  %541 = load i32, i32* %i, align 4, !tbaa !1
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %i, align 4, !tbaa !1
  br label %524

; <label>:543                                     ; preds = %524
  %544 = load volatile i8, i8* @g_3413, align 1, !tbaa !9
  %545 = zext i8 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %546)
  %547 = load volatile i8, i8* @g_3414, align 1, !tbaa !9
  %548 = zext i8 %547 to i64
  %549 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %548, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %549)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %550

; <label>:550                                     ; preds = %590, %543
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = icmp slt i32 %551, 7
  br i1 %552, label %553, label %593

; <label>:553                                     ; preds = %550
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %554

; <label>:554                                     ; preds = %586, %553
  %555 = load i32, i32* %j, align 4, !tbaa !1
  %556 = icmp slt i32 %555, 8
  br i1 %556, label %557, label %589

; <label>:557                                     ; preds = %554
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %558

; <label>:558                                     ; preds = %582, %557
  %559 = load i32, i32* %k, align 4, !tbaa !1
  %560 = icmp slt i32 %559, 1
  br i1 %560, label %561, label %585

; <label>:561                                     ; preds = %558
  %562 = load i32, i32* %k, align 4, !tbaa !1
  %563 = sext i32 %562 to i64
  %564 = load i32, i32* %j, align 4, !tbaa !1
  %565 = sext i32 %564 to i64
  %566 = load i32, i32* %i, align 4, !tbaa !1
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [7 x [8 x [1 x i8]]], [7 x [8 x [1 x i8]]]* @g_3415, i32 0, i64 %567
  %569 = getelementptr inbounds [8 x [1 x i8]], [8 x [1 x i8]]* %568, i32 0, i64 %565
  %570 = getelementptr inbounds [1 x i8], [1 x i8]* %569, i32 0, i64 %563
  %571 = load volatile i8, i8* %570, align 1, !tbaa !9
  %572 = zext i8 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i32 %573)
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %581

; <label>:576                                     ; preds = %561
  %577 = load i32, i32* %i, align 4, !tbaa !1
  %578 = load i32, i32* %j, align 4, !tbaa !1
  %579 = load i32, i32* %k, align 4, !tbaa !1
  %580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %577, i32 %578, i32 %579)
  br label %581

; <label>:581                                     ; preds = %576, %561
  br label %582

; <label>:582                                     ; preds = %581
  %583 = load i32, i32* %k, align 4, !tbaa !1
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %k, align 4, !tbaa !1
  br label %558

; <label>:585                                     ; preds = %558
  br label %586

; <label>:586                                     ; preds = %585
  %587 = load i32, i32* %j, align 4, !tbaa !1
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %j, align 4, !tbaa !1
  br label %554

; <label>:589                                     ; preds = %554
  br label %590

; <label>:590                                     ; preds = %589
  %591 = load i32, i32* %i, align 4, !tbaa !1
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %i, align 4, !tbaa !1
  br label %550

; <label>:593                                     ; preds = %550
  %594 = load volatile i8, i8* @g_3416, align 1, !tbaa !9
  %595 = zext i8 %594 to i64
  %596 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %595, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %596)
  %597 = load volatile i8, i8* @g_3417, align 1, !tbaa !9
  %598 = zext i8 %597 to i64
  %599 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %598, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %599)
  %600 = load volatile i8, i8* @g_3418, align 1, !tbaa !9
  %601 = zext i8 %600 to i64
  %602 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %601, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %602)
  %603 = load volatile i8, i8* @g_3419, align 1, !tbaa !9
  %604 = zext i8 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %605)
  %606 = load volatile i8, i8* @g_3420, align 1, !tbaa !9
  %607 = zext i8 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %608)
  %609 = load volatile i8, i8* @g_3421, align 1, !tbaa !9
  %610 = zext i8 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %611)
  %612 = load volatile i8, i8* @g_3422, align 1, !tbaa !9
  %613 = zext i8 %612 to i64
  %614 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %613, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %614)
  %615 = load volatile i8, i8* @g_3423, align 1, !tbaa !9
  %616 = zext i8 %615 to i64
  %617 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %617)
  %618 = load volatile i8, i8* @g_3424, align 1, !tbaa !9
  %619 = zext i8 %618 to i64
  %620 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %619, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %620)
  %621 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %621)
  %622 = load volatile i64, i64* @g_3806, align 8, !tbaa !7
  %623 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %622, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %623)
  %624 = load i8, i8* @g_3989, align 1, !tbaa !9
  %625 = zext i8 %624 to i64
  %626 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %625, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %626)
  %627 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 684048272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %627)
  %628 = load i8, i8* @g_4075, align 1, !tbaa !9
  %629 = zext i8 %628 to i64
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %630)
  %631 = load volatile i16, i16* @g_4222, align 2, !tbaa !10
  %632 = sext i16 %631 to i64
  %633 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %632, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %633)
  %634 = load volatile i16, i16* @g_4242, align 2, !tbaa !10
  %635 = sext i16 %634 to i64
  %636 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %635, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 %636)
  %637 = load i16, i16* @g_4367, align 2, !tbaa !10
  %638 = sext i16 %637 to i64
  %639 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %638, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %639)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %640

; <label>:640                                     ; preds = %668, %593
  %641 = load i32, i32* %i, align 4, !tbaa !1
  %642 = icmp slt i32 %641, 10
  br i1 %642, label %643, label %671

; <label>:643                                     ; preds = %640
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %644

; <label>:644                                     ; preds = %664, %643
  %645 = load i32, i32* %j, align 4, !tbaa !1
  %646 = icmp slt i32 %645, 8
  br i1 %646, label %647, label %667

; <label>:647                                     ; preds = %644
  %648 = load i32, i32* %j, align 4, !tbaa !1
  %649 = sext i32 %648 to i64
  %650 = load i32, i32* %i, align 4, !tbaa !1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [10 x [8 x i32]], [10 x [8 x i32]]* @g_4371, i32 0, i64 %651
  %653 = getelementptr inbounds [8 x i32], [8 x i32]* %652, i32 0, i64 %649
  %654 = load i32, i32* %653, align 4, !tbaa !1
  %655 = sext i32 %654 to i64
  %656 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %655, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i32 %656)
  %657 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %663

; <label>:659                                     ; preds = %647
  %660 = load i32, i32* %i, align 4, !tbaa !1
  %661 = load i32, i32* %j, align 4, !tbaa !1
  %662 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %660, i32 %661)
  br label %663

; <label>:663                                     ; preds = %659, %647
  br label %664

; <label>:664                                     ; preds = %663
  %665 = load i32, i32* %j, align 4, !tbaa !1
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %j, align 4, !tbaa !1
  br label %644

; <label>:667                                     ; preds = %644
  br label %668

; <label>:668                                     ; preds = %667
  %669 = load i32, i32* %i, align 4, !tbaa !1
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %i, align 4, !tbaa !1
  br label %640

; <label>:671                                     ; preds = %640
  %672 = load i16, i16* @g_4597, align 2, !tbaa !10
  %673 = sext i16 %672 to i64
  %674 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %673, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %674)
  %675 = load i8, i8* @g_4648, align 1, !tbaa !9
  %676 = zext i8 %675 to i64
  %677 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %676, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %677)
  %678 = load volatile i32, i32* @g_4658, align 4, !tbaa !1
  %679 = zext i32 %678 to i64
  %680 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %679, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %680)
  %681 = load volatile i32, i32* @g_4738, align 4, !tbaa !1
  %682 = sext i32 %681 to i64
  %683 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %682, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %683)
  %684 = load volatile i64, i64* @g_4739, align 8, !tbaa !7
  %685 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %684, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %685)
  %686 = load i16, i16* @g_4744, align 2, !tbaa !10
  %687 = sext i16 %686 to i64
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %687, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %688)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %689

; <label>:689                                     ; preds = %704, %671
  %690 = load i32, i32* %i, align 4, !tbaa !1
  %691 = icmp slt i32 %690, 7
  br i1 %691, label %692, label %707

; <label>:692                                     ; preds = %689
  %693 = load i32, i32* %i, align 4, !tbaa !1
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [7 x i64], [7 x i64]* @g_4929, i32 0, i64 %694
  %696 = load volatile i64, i64* %695, align 8, !tbaa !7
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %697)
  %698 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %703

; <label>:700                                     ; preds = %692
  %701 = load i32, i32* %i, align 4, !tbaa !1
  %702 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 %701)
  br label %703

; <label>:703                                     ; preds = %700, %692
  br label %704

; <label>:704                                     ; preds = %703
  %705 = load i32, i32* %i, align 4, !tbaa !1
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %i, align 4, !tbaa !1
  br label %689

; <label>:707                                     ; preds = %689
  %708 = load i32, i32* @g_4958, align 4, !tbaa !1
  %709 = zext i32 %708 to i64
  %710 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %709, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %710)
  %711 = load i32, i32* @g_5183, align 4, !tbaa !1
  %712 = zext i32 %711 to i64
  %713 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %712, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %713)
  %714 = load volatile i32, i32* @g_5211, align 4, !tbaa !1
  %715 = zext i32 %714 to i64
  %716 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %715, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %716)
  %717 = load i32, i32* @g_5230, align 4, !tbaa !1
  %718 = zext i32 %717 to i64
  %719 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %718, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %719)
  %720 = load i16, i16* @g_5366, align 2, !tbaa !10
  %721 = zext i16 %720 to i64
  %722 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %721, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %722)
  %723 = load i32, i32* @g_5479, align 4, !tbaa !1
  %724 = zext i32 %723 to i64
  %725 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %724, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 %725)
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
define internal zeroext i16 @func_1() #0 {
  %l_2 = alloca i32*, align 8
  %l_23 = alloca i32**, align 8
  %l_24 = alloca i32**, align 8
  %l_2355 = alloca [2 x i32], align 4
  %l_2356 = alloca [3 x i8], align 1
  %l_2357 = alloca i16*, align 8
  %l_2358 = alloca i16*, align 8
  %l_3245 = alloca i8*, align 8
  %l_3255 = alloca %union.U0, align 8
  %l_4600 = alloca [7 x [10 x i8****]], align 16
  %l_4620 = alloca [3 x i64***], align 16
  %l_4621 = alloca i64****, align 8
  %l_4622 = alloca i16, align 2
  %l_4632 = alloca [2 x [7 x i16***]], align 16
  %l_4644 = alloca i64***, align 8
  %l_4643 = alloca i64****, align 8
  %l_4642 = alloca i64*****, align 8
  %l_4654 = alloca i32, align 4
  %l_4704 = alloca i8, align 1
  %l_4715 = alloca i32, align 4
  %l_4737 = alloca i16, align 2
  %l_4743 = alloca i16*, align 8
  %l_4742 = alloca i16**, align 8
  %l_4741 = alloca i16***, align 8
  %l_4889 = alloca i32, align 4
  %l_4914 = alloca i8, align 1
  %l_5001 = alloca i64, align 8
  %l_5002 = alloca i16*****, align 8
  %l_5024 = alloca i16, align 2
  %l_5029 = alloca i32, align 4
  %l_5112 = alloca i32, align 4
  %l_5168 = alloca i32, align 4
  %l_5172 = alloca [3 x i8], align 1
  %l_5175 = alloca i32, align 4
  %l_5176 = alloca i32, align 4
  %l_5178 = alloca i32, align 4
  %l_5179 = alloca i32, align 4
  %l_5195 = alloca i32, align 4
  %l_5210 = alloca i8, align 1
  %l_5279 = alloca i64, align 8
  %l_5313 = alloca i32, align 4
  %l_5413 = alloca i16, align 2
  %l_5416 = alloca i32, align 4
  %l_5417 = alloca [8 x i8*], align 16
  %l_5418 = alloca [5 x i32], align 16
  %l_5419 = alloca i32, align 4
  %l_5420 = alloca i32, align 4
  %l_5425 = alloca i32, align 4
  %l_5436 = alloca i64****, align 8
  %l_5467 = alloca i32****, align 8
  %l_5475 = alloca i32, align 4
  %l_5476 = alloca i32, align 4
  %l_5480 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32*** %l_23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32** null, i32*** %l_23, align 8, !tbaa !5
  %3 = bitcast i32*** %l_24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** %l_2, i32*** %l_24, align 8, !tbaa !5
  %4 = bitcast [2 x i32]* %l_2355 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast [3 x i8]* %l_2356 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %5) #1
  %6 = bitcast i16** %l_2357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* null, i16** %l_2357, align 8, !tbaa !5
  %7 = bitcast i16** %l_2358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* @g_227, i16** %l_2358, align 8, !tbaa !5
  %8 = bitcast i8** %l_3245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* @g_215, i8** %l_3245, align 8, !tbaa !5
  %9 = bitcast %union.U0* %l_3255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %union.U0* %l_3255 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 8, i32 8, i1 false)
  %11 = bitcast [7 x [10 x i8****]]* %l_4600 to i8*
  call void @llvm.lifetime.start(i64 560, i8* %11) #1
  %12 = bitcast [7 x [10 x i8****]]* %l_4600 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([7 x [10 x i8****]]* @func_1.l_4600 to i8*), i64 560, i32 16, i1 false)
  %13 = bitcast [3 x i64***]* %l_4620 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %13) #1
  %14 = bitcast i64***** %l_4621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64**** @g_1581, i64***** %l_4621, align 8, !tbaa !5
  %15 = bitcast i16* %l_4622 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 1, i16* %l_4622, align 2, !tbaa !10
  %16 = bitcast [2 x [7 x i16***]]* %l_4632 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %16) #1
  %17 = bitcast [2 x [7 x i16***]]* %l_4632 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([2 x [7 x i16***]]* @func_1.l_4632 to i8*), i64 112, i32 16, i1 false)
  %18 = bitcast i64**** %l_4644 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64*** @g_1232, i64**** %l_4644, align 8, !tbaa !5
  %19 = bitcast i64***** %l_4643 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64**** %l_4644, i64***** %l_4643, align 8, !tbaa !5
  %20 = bitcast i64****** %l_4642 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64***** %l_4643, i64****** %l_4642, align 8, !tbaa !5
  %21 = bitcast i32* %l_4654 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 7, i32* %l_4654, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_4704) #1
  store i8 3, i8* %l_4704, align 1, !tbaa !9
  %22 = bitcast i32* %l_4715 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 5, i32* %l_4715, align 4, !tbaa !1
  %23 = bitcast i16* %l_4737 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 24897, i16* %l_4737, align 2, !tbaa !10
  %24 = bitcast i16** %l_4743 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i16* @g_4744, i16** %l_4743, align 8, !tbaa !5
  %25 = bitcast i16*** %l_4742 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i16** %l_4743, i16*** %l_4742, align 8, !tbaa !5
  %26 = bitcast i16**** %l_4741 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i16*** %l_4742, i16**** %l_4741, align 8, !tbaa !5
  %27 = bitcast i32* %l_4889 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 1549370172, i32* %l_4889, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_4914) #1
  store i8 4, i8* %l_4914, align 1, !tbaa !9
  %28 = bitcast i64* %l_5001 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i64 200709757581311127, i64* %l_5001, align 8, !tbaa !7
  %29 = bitcast i16****** %l_5002 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i16***** null, i16****** %l_5002, align 8, !tbaa !5
  %30 = bitcast i16* %l_5024 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %30) #1
  store i16 -10, i16* %l_5024, align 2, !tbaa !10
  %31 = bitcast i32* %l_5029 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 795895020, i32* %l_5029, align 4, !tbaa !1
  %32 = bitcast i32* %l_5112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 -7, i32* %l_5112, align 4, !tbaa !1
  %33 = bitcast i32* %l_5168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %l_5168, align 4, !tbaa !1
  %34 = bitcast [3 x i8]* %l_5172 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %34) #1
  %35 = bitcast i32* %l_5175 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 -1304643941, i32* %l_5175, align 4, !tbaa !1
  %36 = bitcast i32* %l_5176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 1, i32* %l_5176, align 4, !tbaa !1
  %37 = bitcast i32* %l_5178 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 2096702197, i32* %l_5178, align 4, !tbaa !1
  %38 = bitcast i32* %l_5179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 -1102916066, i32* %l_5179, align 4, !tbaa !1
  %39 = bitcast i32* %l_5195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 -1583228151, i32* %l_5195, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_5210) #1
  store i8 16, i8* %l_5210, align 1, !tbaa !9
  %40 = bitcast i64* %l_5279 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64 -1, i64* %l_5279, align 8, !tbaa !7
  %41 = bitcast i32* %l_5313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 9, i32* %l_5313, align 4, !tbaa !1
  %42 = bitcast i16* %l_5413 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %42) #1
  store i16 -1, i16* %l_5413, align 2, !tbaa !10
  %43 = bitcast i32* %l_5416 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 -1, i32* %l_5416, align 4, !tbaa !1
  %44 = bitcast [8 x i8*]* %l_5417 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %44) #1
  %45 = bitcast [8 x i8*]* %l_5417 to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 64, i32 16, i1 false)
  %46 = bitcast [5 x i32]* %l_5418 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %46) #1
  %47 = bitcast [5 x i32]* %l_5418 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([5 x i32]* @func_1.l_5418 to i8*), i64 20, i32 16, i1 false)
  %48 = bitcast i32* %l_5419 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 -3, i32* %l_5419, align 4, !tbaa !1
  %49 = bitcast i32* %l_5420 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 -7, i32* %l_5420, align 4, !tbaa !1
  %50 = bitcast i32* %l_5425 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 1, i32* %l_5425, align 4, !tbaa !1
  %51 = bitcast i64***** %l_5436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  store i64**** null, i64***** %l_5436, align 8, !tbaa !5
  %52 = bitcast i32***** %l_5467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32**** null, i32***** %l_5467, align 8, !tbaa !5
  %53 = bitcast i32* %l_5475 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 7, i32* %l_5475, align 4, !tbaa !1
  %54 = bitcast i32* %l_5476 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 0, i32* %l_5476, align 4, !tbaa !1
  %55 = bitcast i32* %l_5480 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 156503394, i32* %l_5480, align 4, !tbaa !1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %58

; <label>:58                                      ; preds = %65, %0
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %68

; <label>:61                                      ; preds = %58
  %62 = load i32, i32* %i, align 4, !tbaa !1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %l_2355, i32 0, i64 %63
  store i32 919184591, i32* %64, align 4, !tbaa !1
  br label %65

; <label>:65                                      ; preds = %61
  %66 = load i32, i32* %i, align 4, !tbaa !1
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %i, align 4, !tbaa !1
  br label %58

; <label>:68                                      ; preds = %58
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %69

; <label>:69                                      ; preds = %76, %68
  %70 = load i32, i32* %i, align 4, !tbaa !1
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %79

; <label>:72                                      ; preds = %69
  %73 = load i32, i32* %i, align 4, !tbaa !1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %l_2356, i32 0, i64 %74
  store i8 0, i8* %75, align 1, !tbaa !9
  br label %76

; <label>:76                                      ; preds = %72
  %77 = load i32, i32* %i, align 4, !tbaa !1
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %i, align 4, !tbaa !1
  br label %69

; <label>:79                                      ; preds = %69
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %80

; <label>:80                                      ; preds = %87, %79
  %81 = load i32, i32* %i, align 4, !tbaa !1
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %90

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* %i, align 4, !tbaa !1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x i64***], [3 x i64***]* %l_4620, i32 0, i64 %85
  store i64*** null, i64**** %86, align 8, !tbaa !5
  br label %87

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* %i, align 4, !tbaa !1
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i, align 4, !tbaa !1
  br label %80

; <label>:90                                      ; preds = %80
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %98, %90
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 3
  br i1 %93, label %94, label %101

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i8], [3 x i8]* %l_5172, i32 0, i64 %96
  store i8 -38, i8* %97, align 1, !tbaa !9
  br label %98

; <label>:98                                      ; preds = %94
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:101                                     ; preds = %91
  %102 = load volatile i16**, i16*** @g_998, align 8, !tbaa !5
  %103 = load volatile i16*, i16** %102, align 8, !tbaa !5
  %104 = load i16, i16* %103, align 2, !tbaa !10
  %105 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %l_5480 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %l_5476 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %l_5475 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32***** %l_5467 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i64***** %l_5436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %l_5425 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %l_5420 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %l_5419 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast [5 x i32]* %l_5418 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %115) #1
  %116 = bitcast [8 x i8*]* %l_5417 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %116) #1
  %117 = bitcast i32* %l_5416 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i16* %l_5413 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %118) #1
  %119 = bitcast i32* %l_5313 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i64* %l_5279 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5210) #1
  %121 = bitcast i32* %l_5195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %l_5179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %l_5178 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %l_5176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %l_5175 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast [3 x i8]* %l_5172 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %126) #1
  %127 = bitcast i32* %l_5168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %l_5112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %l_5029 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i16* %l_5024 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %130) #1
  %131 = bitcast i16****** %l_5002 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i64* %l_5001 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4914) #1
  %133 = bitcast i32* %l_4889 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i16**** %l_4741 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i16*** %l_4742 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i16** %l_4743 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i16* %l_4737 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %137) #1
  %138 = bitcast i32* %l_4715 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_4704) #1
  %139 = bitcast i32* %l_4654 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i64****** %l_4642 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i64***** %l_4643 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i64**** %l_4644 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast [2 x [7 x i16***]]* %l_4632 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %143) #1
  %144 = bitcast i16* %l_4622 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %144) #1
  %145 = bitcast i64***** %l_4621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast [3 x i64***]* %l_4620 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %146) #1
  %147 = bitcast [7 x [10 x i8****]]* %l_4600 to i8*
  call void @llvm.lifetime.end(i64 560, i8* %147) #1
  %148 = bitcast %union.U0* %l_3255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %l_3245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i16** %l_2358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i16** %l_2357 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast [3 x i8]* %l_2356 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %152) #1
  %153 = bitcast [2 x i32]* %l_2355 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32*** %l_24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32*** %l_23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  ret i16 %104
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
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
