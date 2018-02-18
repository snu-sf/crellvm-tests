; ModuleID = '00555.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 -377557536, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_7 = internal global [10 x [4 x i64]] [[4 x i64] [i64 6624691567940851697, i64 -6, i64 -4799388699009404463, i64 5], [4 x i64] [i64 5, i64 -6, i64 -6, i64 5], [4 x i64] [i64 6624691567940851697, i64 -6, i64 -4799388699009404463, i64 5], [4 x i64] [i64 5, i64 -6, i64 -6, i64 5], [4 x i64] [i64 6624691567940851697, i64 -6, i64 -4799388699009404463, i64 5], [4 x i64] [i64 5, i64 -6, i64 -6, i64 5], [4 x i64] [i64 6624691567940851697, i64 -6, i64 -4799388699009404463, i64 5], [4 x i64] [i64 5, i64 -6, i64 -6, i64 5], [4 x i64] [i64 6624691567940851697, i64 -6, i64 -4799388699009404463, i64 5], [4 x i64] [i64 5, i64 -6, i64 -6, i64 5]], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"g_7[i][j]\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_18 = internal global [1 x i16] [i16 24979], align 2
@.str.4 = private unnamed_addr constant [8 x i8] c"g_18[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_70 = internal global i32 -747169586, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_70\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_72.f0\00", align 1
@g_90 = internal global [8 x [5 x [6 x i16]]] [[5 x [6 x i16]] [[6 x i16] [i16 9236, i16 -31397, i16 10584, i16 1, i16 -5, i16 2334], [6 x i16] [i16 28389, i16 2334, i16 -31397, i16 13355, i16 8894, i16 28528], [6 x i16] [i16 13877, i16 -1, i16 8082, i16 32479, i16 -1, i16 6398], [6 x i16] [i16 0, i16 13355, i16 1, i16 0, i16 3538, i16 -27774], [6 x i16] [i16 -24283, i16 29586, i16 -1, i16 -1, i16 32479, i16 24979]], [5 x [6 x i16]] [[6 x i16] [i16 6184, i16 8082, i16 -18867, i16 1, i16 -25152, i16 1], [6 x i16] [i16 9236, i16 20851, i16 -5, i16 -9, i16 -18867, i16 -1], [6 x i16] [i16 -1, i16 -24283, i16 4983, i16 7044, i16 7044, i16 4983], [6 x i16] [i16 -13280, i16 -13280, i16 -1, i16 -1, i16 -1, i16 23372], [6 x i16] [i16 10584, i16 -1, i16 -9, i16 -4877, i16 -29448, i16 -1]], [5 x [6 x i16]] [[6 x i16] [i16 24837, i16 10584, i16 -9, i16 1, i16 -13280, i16 23372], [6 x i16] [i16 -1, i16 1, i16 -1, i16 -5, i16 28528, i16 4983], [6 x i16] [i16 -5, i16 28528, i16 4983, i16 -1, i16 1, i16 -1], [6 x i16] [i16 0, i16 0, i16 -5, i16 -10, i16 6398, i16 1], [6 x i16] [i16 6398, i16 22934, i16 -18867, i16 0, i16 7039, i16 24979]], [5 x [6 x i16]] [[6 x i16] [i16 0, i16 -29448, i16 -1, i16 -24283, i16 17677, i16 -27774], [6 x i16] [i16 0, i16 3538, i16 1, i16 -25152, i16 2334, i16 6398], [6 x i16] [i16 4983, i16 4, i16 8082, i16 -1, i16 6, i16 28528], [6 x i16] [i16 20851, i16 6398, i16 -31397, i16 22261, i16 4, i16 2334], [6 x i16] [i16 12512, i16 13877, i16 -1, i16 2695, i16 0, i16 0]], [5 x [6 x i16]] [[6 x i16] [i16 22261, i16 -4877, i16 0, i16 17677, i16 9236, i16 17677], [6 x i16] [i16 22934, i16 0, i16 22934, i16 29586, i16 30528, i16 1], [6 x i16] [i16 2695, i16 -1, i16 15101, i16 -27774, i16 5, i16 2909], [6 x i16] [i16 -10, i16 0, i16 8894, i16 -27774, i16 -29502, i16 29586], [6 x i16] [i16 2695, i16 -26928, i16 -22026, i16 29586, i16 -31397, i16 -1]], [5 x [6 x i16]] [[6 x i16] [i16 22934, i16 4983, i16 23372, i16 17677, i16 2695, i16 25413], [6 x i16] [i16 22261, i16 -1, i16 -1, i16 2695, i16 -1, i16 0], [6 x i16] [i16 12512, i16 6, i16 -1, i16 22261, i16 -5, i16 -29448], [6 x i16] [i16 20851, i16 1, i16 13355, i16 -1, i16 9, i16 -18297], [6 x i16] [i16 4983, i16 2909, i16 -1, i16 -25152, i16 -1, i16 7039]], [5 x [6 x i16]] [[6 x i16] [i16 0, i16 -9, i16 -10146, i16 -24283, i16 -10, i16 3538], [6 x i16] [i16 0, i16 -1, i16 1, i16 0, i16 -1, i16 -5], [6 x i16] [i16 6398, i16 28389, i16 5, i16 -10, i16 0, i16 24837], [6 x i16] [i16 -9, i16 -14150, i16 -1, i16 -31397, i16 1, i16 1], [6 x i16] [i16 -24283, i16 2695, i16 2695, i16 -24283, i16 8894, i16 15101]], [5 x [6 x i16]] [[6 x i16] [i16 -27774, i16 -18297, i16 25413, i16 -1, i16 9236, i16 -10], [6 x i16] [i16 32479, i16 17355, i16 -9, i16 12512, i16 9236, i16 0], [6 x i16] [i16 -1, i16 -18297, i16 3538, i16 -1, i16 8894, i16 28099], [6 x i16] [i16 29586, i16 2695, i16 -10146, i16 17677, i16 1, i16 8082], [6 x i16] [i16 30528, i16 -14150, i16 2334, i16 -9, i16 0, i16 1]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_90[i][j][k]\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_114 = internal global i32 8, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_114\00", align 1
@g_117 = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_142 = internal global i16 0, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_159 = internal global i64 -4, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_159\00", align 1
@g_179 = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_201 = internal global [9 x i8] c"\EA\FF\FF\EA\FF\FF\EA\FF\FF", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_201[i]\00", align 1
@g_270 = internal global i16 -15596, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_270\00", align 1
@g_273 = internal global i64 -7519326927388278955, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_273\00", align 1
@g_274 = internal global i64 -8448428084548289004, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_274\00", align 1
@g_319 = internal global [7 x i64] [i64 -1, i64 0, i64 0, i64 -1, i64 0, i64 0, i64 -1], align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"g_319[i]\00", align 1
@g_392 = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_392\00", align 1
@g_393 = internal global i32 -1, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_393\00", align 1
@g_467 = internal global [5 x [9 x [5 x i16]]] [[9 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -5, i16 44, i16 15576], [5 x i16] [i16 5, i16 0, i16 -103, i16 -29575, i16 0], [5 x i16] [i16 -13685, i16 -29575, i16 -4, i16 26720, i16 1], [5 x i16] [i16 44, i16 1, i16 29934, i16 1, i16 0], [5 x i16] [i16 1, i16 1, i16 0, i16 4, i16 0], [5 x i16] [i16 -12008, i16 -1, i16 -10, i16 1, i16 -10], [5 x i16] [i16 -2811, i16 30032, i16 -29421, i16 29934, i16 23955], [5 x i16] [i16 5, i16 32708, i16 -31375, i16 0, i16 -3], [5 x i16] [i16 -26926, i16 -8, i16 -10, i16 -14635, i16 -14635]], [9 x [5 x i16]] [[5 x i16] [i16 13458, i16 30032, i16 13458, i16 -31117, i16 -1], [5 x i16] [i16 -1, i16 1, i16 0, i16 -7811, i16 -19742], [5 x i16] [i16 4, i16 1, i16 18216, i16 23955, i16 -13685], [5 x i16] [i16 1, i16 1, i16 0, i16 -19742, i16 1], [5 x i16] [i16 3576, i16 -103, i16 13458, i16 -21198, i16 32708], [5 x i16] [i16 1, i16 31186, i16 -10, i16 -10, i16 -2], [5 x i16] [i16 -103, i16 -1, i16 -31375, i16 -1657, i16 -12008], [5 x i16] [i16 -7811, i16 -17694, i16 -29421, i16 -21198, i16 0], [5 x i16] [i16 26720, i16 -7811, i16 -10, i16 30032, i16 -7]], [9 x [5 x i16]] [[5 x i16] [i16 29934, i16 -26926, i16 0, i16 13458, i16 1], [5 x i16] [i16 0, i16 44, i16 29934, i16 -7811, i16 -29275], [5 x i16] [i16 21624, i16 23955, i16 -4, i16 5619, i16 -7811], [5 x i16] [i16 -29275, i16 1, i16 -103, i16 -31226, i16 -12008], [5 x i16] [i16 1, i16 -29994, i16 -5, i16 0, i16 1], [5 x i16] [i16 1, i16 2, i16 -9645, i16 8113, i16 -8], [5 x i16] [i16 -29275, i16 -7, i16 -29994, i16 1, i16 1], [5 x i16] [i16 21624, i16 1, i16 1, i16 4, i16 -2811], [5 x i16] [i16 -19742, i16 -29994, i16 0, i16 -1657, i16 0]], [9 x [5 x i16]] [[5 x i16] [i16 9, i16 -31117, i16 6, i16 1, i16 -17694], [5 x i16] [i16 -31375, i16 0, i16 -10, i16 0, i16 6], [5 x i16] [i16 31372, i16 16929, i16 1, i16 32708, i16 -31226], [5 x i16] [i16 -3576, i16 24333, i16 -4, i16 11029, i16 -2811], [5 x i16] [i16 -29994, i16 -10, i16 -10, i16 -29994, i16 25802], [5 x i16] [i16 1, i16 -2811, i16 21624, i16 -3, i16 -19742], [5 x i16] [i16 -4, i16 32708, i16 1, i16 18892, i16 29934], [5 x i16] [i16 1, i16 14245, i16 1, i16 -3, i16 -1], [5 x i16] [i16 -17694, i16 31372, i16 26720, i16 -29994, i16 44]], [9 x [5 x i16]] [[5 x i16] [i16 -8, i16 -5, i16 -19137, i16 11029, i16 -24759], [5 x i16] [i16 1, i16 10457, i16 11029, i16 32708, i16 4139], [5 x i16] [i16 13458, i16 44, i16 1, i16 0, i16 44], [5 x i16] [i16 -10, i16 0, i16 11642, i16 1, i16 -29994], [5 x i16] [i16 32708, i16 28000, i16 9, i16 -1657, i16 1], [5 x i16] [i16 -1, i16 1, i16 4, i16 1, i16 -19742], [5 x i16] [i16 -9645, i16 -3, i16 4139, i16 7705, i16 1], [5 x i16] [i16 0, i16 -5, i16 0, i16 1, i16 -8], [5 x i16] [i16 13458, i16 0, i16 -26926, i16 29934, i16 -31226]]], align 16
@.str.22 = private unnamed_addr constant [15 x i8] c"g_467[i][j][k]\00", align 1
@g_471 = internal global i16 -1, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_471\00", align 1
@g_472 = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_472\00", align 1
@g_479 = internal global [4 x [4 x i8]] [[4 x i8] c"\FA\FA\FA\FA", [4 x i8] c"\FA\FA\FA\FA", [4 x i8] c"\FA\FA\FA\FA", [4 x i8] c"\FA\FA\FA\FA"], align 16
@.str.25 = private unnamed_addr constant [12 x i8] c"g_479[i][j]\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"g_536[i].f0\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_542\00", align 1
@g_546 = internal global [3 x i16] [i16 -1854, i16 -1854, i16 -1854], align 2
@.str.28 = private unnamed_addr constant [9 x i8] c"g_546[i]\00", align 1
@g_548 = internal global i64 867060043195825615, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_548\00", align 1
@g_572 = internal global [2 x [8 x [9 x i64]]] [[8 x [9 x i64]] [[9 x i64] [i64 7667421789312926660, i64 -8837177185799725835, i64 -8837177185799725835, i64 7667421789312926660, i64 -1, i64 6430608933116221317, i64 107940734377960937, i64 -10, i64 -2528591732553849499], [9 x i64] [i64 -10, i64 -3674129110879858002, i64 4438920912563104788, i64 -7704447151742736708, i64 -7704447151742736708, i64 4438920912563104788, i64 -3674129110879858002, i64 -10, i64 -6876242771017043216], [9 x i64] [i64 -7554955300069446429, i64 5, i64 -2528591732553849499, i64 -604078944851582228, i64 -1, i64 -10, i64 -10, i64 -1, i64 -604078944851582228], [9 x i64] [i64 -6205864265692787620, i64 4, i64 -6205864265692787620, i64 -7765016958008054403, i64 -3674129110879858002, i64 -7704447151742736708, i64 -4475397987688188747, i64 -6876242771017043216, i64 -6876242771017043216], [9 x i64] [i64 -8837177185799725835, i64 -7554955300069446429, i64 1, i64 -10, i64 1, i64 -7554955300069446429, i64 -8837177185799725835, i64 -1, i64 1], [9 x i64] [i64 -6205864265692787620, i64 4438920912563104788, i64 9, i64 -5, i64 -7704447151742736708, i64 -10, i64 -7704447151742736708, i64 -5, i64 9], [9 x i64] [i64 -1, i64 -1, i64 -7554955300069446429, i64 6430608933116221317, i64 1, i64 -8837177185799725835, i64 -604078944851582228, i64 -1, i64 -604078944851582228], [9 x i64] [i64 9, i64 -2, i64 4438920912563104788, i64 4438920912563104788, i64 -2, i64 9, i64 -7765016958008054403, i64 -4475397987688188747, i64 -3674129110879858002]], [8 x [9 x i64]] [[9 x i64] [i64 -1, i64 9616841228136693, i64 -7554955300069446429, i64 -10, i64 7667421789312926660, i64 7667421789312926660, i64 -10, i64 -7554955300069446429, i64 9616841228136693], [9 x i64] [i64 -2, i64 -6771223741564684671, i64 9, i64 -7704447151742736708, i64 -6876242771017043216, i64 -5, i64 -7765016958008054403, i64 -7765016958008054403, i64 -5], [9 x i64] [i64 5, i64 -7554955300069446429, i64 107940734377960937, i64 -7554955300069446429, i64 5, i64 -2528591732553849499, i64 -604078944851582228, i64 -1, i64 -10], [9 x i64] [i64 -10, i64 -6771223741564684671, i64 -7704447151742736708, i64 4, i64 -4475397987688188747, i64 4, i64 -7704447151742736708, i64 -6771223741564684671, i64 -10], [9 x i64] [i64 6430608933116221317, i64 9616841228136693, i64 1, i64 5, i64 -1, i64 -2528591732553849499, i64 7667421789312926660, i64 -2528591732553849499, i64 -1], [9 x i64] [i64 -3674129110879858002, i64 -2, i64 -2, i64 -3674129110879858002, i64 4, i64 -5, i64 -6205864265692787620, i64 9, i64 -6876242771017043216], [9 x i64] [i64 6430608933116221317, i64 -1, i64 7667421789312926660, i64 -8837177185799725835, i64 -8837177185799725835, i64 7667421789312926660, i64 -1, i64 6430608933116221317, i64 107940734377960937], [9 x i64] [i64 -10, i64 4438920912563104788, i64 -6876242771017043216, i64 -7765016958008054403, i64 4, i64 9, i64 9, i64 4, i64 -7765016958008054403]]], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"g_572[i][j][k]\00", align 1
@g_573 = internal global i32 223937625, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_573\00", align 1
@g_589 = internal global i8 -8, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_589\00", align 1
@g_646 = internal global i32 -1, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_646\00", align 1
@g_699 = internal global i64 1, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_699\00", align 1
@g_721 = internal global i16 1, align 2
@.str.35 = private unnamed_addr constant [6 x i8] c"g_721\00", align 1
@g_854 = internal global i32 -1, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_854\00", align 1
@g_855 = internal global i64 7326543266181714981, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"g_855\00", align 1
@g_856 = internal global [7 x i32] [i32 -417472932, i32 -417472932, i32 -417472932, i32 -417472932, i32 -417472932, i32 -417472932, i32 -417472932], align 16
@.str.38 = private unnamed_addr constant [9 x i8] c"g_856[i]\00", align 1
@g_903 = internal global i32 -10, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_903\00", align 1
@g_904 = internal global [7 x [1 x i32]] [[1 x i32] [i32 -89219957], [1 x i32] [i32 3], [1 x i32] [i32 3], [1 x i32] [i32 -89219957], [1 x i32] [i32 3], [1 x i32] [i32 3], [1 x i32] [i32 -89219957]], align 16
@.str.40 = private unnamed_addr constant [12 x i8] c"g_904[i][j]\00", align 1
@g_958 = internal global i16 -3, align 2
@.str.41 = private unnamed_addr constant [6 x i8] c"g_958\00", align 1
@g_983 = internal global i16 4, align 2
@.str.42 = private unnamed_addr constant [6 x i8] c"g_983\00", align 1
@g_1141 = internal global i32 -2090290497, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1141\00", align 1
@g_1210 = internal global i8 56, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1210\00", align 1
@g_1281 = internal global i64 8698287638224540449, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1281\00", align 1
@g_1286 = internal global i16 4, align 2
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1286\00", align 1
@g_1289 = internal global i64 1, align 8
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1289\00", align 1
@g_1291 = internal global i32 -2, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1291\00", align 1
@g_1490 = internal global i16 1, align 2
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1490\00", align 1
@g_1968 = internal global i32 -1671482730, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1968\00", align 1
@g_2035 = internal global i32 1, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2035\00", align 1
@g_2089 = internal global [3 x i16] [i16 2330, i16 2330, i16 2330], align 2
@.str.52 = private unnamed_addr constant [10 x i8] c"g_2089[i]\00", align 1
@g_2096 = internal global i64 -10, align 8
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2096\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_6 = private unnamed_addr constant [7 x i32*] [i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4, i32* @g_4], align 16
@func_1.l_1527 = private unnamed_addr constant [7 x i8] c"\01\01\01\01\01\01\01", align 1
@func_1.l_1717 = private unnamed_addr constant { i8, [3 x i8] } { i8 -5, [3 x i8] undef }, align 4
@g_1027 = internal global [5 x i16**] zeroinitializer, align 16
@g_1672 = internal global i8** @g_1673, align 8
@g_1673 = internal constant i8* @g_1210, align 8
@.str.54 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_72 = internal global { i8, [3 x i8] } { i8 -17, [3 x i8] undef }, align 4
@g_536 = internal global <{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }> <{ { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef }, { i8, [3 x i8] } { i8 0, [3 x i8] undef } }>, align 16
@.str.55 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_4, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %121, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 10
  br i1 %96, label %97, label %124

; <label>:97                                      ; preds = %94
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %117, %97
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %120

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x [4 x i64]], [10 x [4 x i64]]* @g_7, i32 0, i64 %105
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i32 0, i64 %103
  %108 = load volatile i64, i64* %107, align 8, !tbaa !7
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %109)
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

; <label>:112                                     ; preds = %101
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %113, i32 %114)
  br label %116

; <label>:116                                     ; preds = %112, %101
  br label %117

; <label>:117                                     ; preds = %116
  %118 = load i32, i32* %j, align 4, !tbaa !1
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %j, align 4, !tbaa !1
  br label %98

; <label>:120                                     ; preds = %98
  br label %121

; <label>:121                                     ; preds = %120
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:124                                     ; preds = %94
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:125                                     ; preds = %141, %124
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %144

; <label>:128                                     ; preds = %125
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1 x i16], [1 x i16]* @g_18, i32 0, i64 %130
  %132 = load i16, i16* %131, align 2, !tbaa !10
  %133 = zext i16 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %134)
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

; <label>:137                                     ; preds = %128
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %138)
  br label %140

; <label>:140                                     ; preds = %137, %128
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:144                                     ; preds = %125
  %145 = load volatile i32, i32* @g_70, align 4, !tbaa !1
  %146 = sext i32 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %147)
  %148 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_72, i32 0, i32 0), align 1, !tbaa !9
  %149 = zext i8 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %150)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %151

; <label>:151                                     ; preds = %191, %144
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %194

; <label>:154                                     ; preds = %151
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %187, %154
  %156 = load i32, i32* %j, align 4, !tbaa !1
  %157 = icmp slt i32 %156, 5
  br i1 %157, label %158, label %190

; <label>:158                                     ; preds = %155
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %183, %158
  %160 = load i32, i32* %k, align 4, !tbaa !1
  %161 = icmp slt i32 %160, 6
  br i1 %161, label %162, label %186

; <label>:162                                     ; preds = %159
  %163 = load i32, i32* %k, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %j, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x [5 x [6 x i16]]], [8 x [5 x [6 x i16]]]* @g_90, i32 0, i64 %168
  %170 = getelementptr inbounds [5 x [6 x i16]], [5 x [6 x i16]]* %169, i32 0, i64 %166
  %171 = getelementptr inbounds [6 x i16], [6 x i16]* %170, i32 0, i64 %164
  %172 = load i16, i16* %171, align 2, !tbaa !10
  %173 = sext i16 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

; <label>:177                                     ; preds = %162
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = load i32, i32* %j, align 4, !tbaa !1
  %180 = load i32, i32* %k, align 4, !tbaa !1
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %178, i32 %179, i32 %180)
  br label %182

; <label>:182                                     ; preds = %177, %162
  br label %183

; <label>:183                                     ; preds = %182
  %184 = load i32, i32* %k, align 4, !tbaa !1
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %k, align 4, !tbaa !1
  br label %159

; <label>:186                                     ; preds = %159
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load i32, i32* %j, align 4, !tbaa !1
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %j, align 4, !tbaa !1
  br label %155

; <label>:190                                     ; preds = %155
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4, !tbaa !1
  br label %151

; <label>:194                                     ; preds = %151
  %195 = load i32, i32* @g_114, align 4, !tbaa !1
  %196 = zext i32 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %197)
  %198 = load i32, i32* @g_117, align 4, !tbaa !1
  %199 = zext i32 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %200)
  %201 = load i16, i16* @g_142, align 2, !tbaa !10
  %202 = zext i16 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %203)
  %204 = load i64, i64* @g_159, align 8, !tbaa !7
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %205)
  %206 = load i64, i64* @g_179, align 8, !tbaa !7
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %207)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %224, %194
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 9
  br i1 %210, label %211, label %227

; <label>:211                                     ; preds = %208
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [9 x i8], [9 x i8]* @g_201, i32 0, i64 %213
  %215 = load i8, i8* %214, align 1, !tbaa !9
  %216 = sext i8 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %217)
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

; <label>:220                                     ; preds = %211
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %221)
  br label %223

; <label>:223                                     ; preds = %220, %211
  br label %224

; <label>:224                                     ; preds = %223
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %i, align 4, !tbaa !1
  br label %208

; <label>:227                                     ; preds = %208
  %228 = load i16, i16* @g_270, align 2, !tbaa !10
  %229 = zext i16 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %230)
  %231 = load volatile i64, i64* @g_273, align 8, !tbaa !7
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %232)
  %233 = load volatile i64, i64* @g_274, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %234)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %235

; <label>:235                                     ; preds = %250, %227
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = icmp slt i32 %236, 7
  br i1 %237, label %238, label %253

; <label>:238                                     ; preds = %235
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [7 x i64], [7 x i64]* @g_319, i32 0, i64 %240
  %242 = load i64, i64* %241, align 8, !tbaa !7
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %243)
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

; <label>:246                                     ; preds = %238
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %247)
  br label %249

; <label>:249                                     ; preds = %246, %238
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %i, align 4, !tbaa !1
  br label %235

; <label>:253                                     ; preds = %235
  %254 = load volatile i32, i32* @g_392, align 4, !tbaa !1
  %255 = sext i32 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %256)
  %257 = load volatile i32, i32* @g_393, align 4, !tbaa !1
  %258 = zext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %259)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %300, %253
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 5
  br i1 %262, label %263, label %303

; <label>:263                                     ; preds = %260
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %296, %263
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 9
  br i1 %266, label %267, label %299

; <label>:267                                     ; preds = %264
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %292, %267
  %269 = load i32, i32* %k, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 5
  br i1 %270, label %271, label %295

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %k, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %j, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [5 x [9 x [5 x i16]]], [5 x [9 x [5 x i16]]]* @g_467, i32 0, i64 %277
  %279 = getelementptr inbounds [9 x [5 x i16]], [9 x [5 x i16]]* %278, i32 0, i64 %275
  %280 = getelementptr inbounds [5 x i16], [5 x i16]* %279, i32 0, i64 %273
  %281 = load i16, i16* %280, align 2, !tbaa !10
  %282 = zext i16 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %283)
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

; <label>:286                                     ; preds = %271
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = load i32, i32* %k, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %287, i32 %288, i32 %289)
  br label %291

; <label>:291                                     ; preds = %286, %271
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %k, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %k, align 4, !tbaa !1
  br label %268

; <label>:295                                     ; preds = %268
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %j, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:299                                     ; preds = %264
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:303                                     ; preds = %260
  %304 = load volatile i16, i16* @g_471, align 2, !tbaa !10
  %305 = sext i16 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %306)
  %307 = load volatile i32, i32* @g_472, align 4, !tbaa !1
  %308 = zext i32 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %309)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:310                                     ; preds = %338, %303
  %311 = load i32, i32* %i, align 4, !tbaa !1
  %312 = icmp slt i32 %311, 4
  br i1 %312, label %313, label %341

; <label>:313                                     ; preds = %310
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %314

; <label>:314                                     ; preds = %334, %313
  %315 = load i32, i32* %j, align 4, !tbaa !1
  %316 = icmp slt i32 %315, 4
  br i1 %316, label %317, label %337

; <label>:317                                     ; preds = %314
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* @g_479, i32 0, i64 %321
  %323 = getelementptr inbounds [4 x i8], [4 x i8]* %322, i32 0, i64 %319
  %324 = load volatile i8, i8* %323, align 1, !tbaa !9
  %325 = zext i8 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

; <label>:329                                     ; preds = %317
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = load i32, i32* %j, align 4, !tbaa !1
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %330, i32 %331)
  br label %333

; <label>:333                                     ; preds = %329, %317
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load i32, i32* %j, align 4, !tbaa !1
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %j, align 4, !tbaa !1
  br label %314

; <label>:337                                     ; preds = %314
  br label %338

; <label>:338                                     ; preds = %337
  %339 = load i32, i32* %i, align 4, !tbaa !1
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:341                                     ; preds = %310
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %342

; <label>:342                                     ; preds = %359, %341
  %343 = load i32, i32* %i, align 4, !tbaa !1
  %344 = icmp slt i32 %343, 4
  br i1 %344, label %345, label %362

; <label>:345                                     ; preds = %342
  %346 = load i32, i32* %i, align 4, !tbaa !1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* bitcast (<{ { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] }, { i8, [3 x i8] } }>* @g_536 to [4 x %union.U0]*), i32 0, i64 %347
  %349 = bitcast %union.U0* %348 to i8*
  %350 = load volatile i8, i8* %349, align 1, !tbaa !9
  %351 = zext i8 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

; <label>:355                                     ; preds = %345
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %356)
  br label %358

; <label>:358                                     ; preds = %355, %345
  br label %359

; <label>:359                                     ; preds = %358
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %i, align 4, !tbaa !1
  br label %342

; <label>:362                                     ; preds = %342
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %363)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %380, %362
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = icmp slt i32 %365, 3
  br i1 %366, label %367, label %383

; <label>:367                                     ; preds = %364
  %368 = load i32, i32* %i, align 4, !tbaa !1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [3 x i16], [3 x i16]* @g_546, i32 0, i64 %369
  %371 = load volatile i16, i16* %370, align 2, !tbaa !10
  %372 = sext i16 %371 to i64
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %373)
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %379

; <label>:376                                     ; preds = %367
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %377)
  br label %379

; <label>:379                                     ; preds = %376, %367
  br label %380

; <label>:380                                     ; preds = %379
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:383                                     ; preds = %364
  %384 = load volatile i64, i64* @g_548, align 8, !tbaa !7
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %385)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %386

; <label>:386                                     ; preds = %425, %383
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = icmp slt i32 %387, 2
  br i1 %388, label %389, label %428

; <label>:389                                     ; preds = %386
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %390

; <label>:390                                     ; preds = %421, %389
  %391 = load i32, i32* %j, align 4, !tbaa !1
  %392 = icmp slt i32 %391, 8
  br i1 %392, label %393, label %424

; <label>:393                                     ; preds = %390
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %394

; <label>:394                                     ; preds = %417, %393
  %395 = load i32, i32* %k, align 4, !tbaa !1
  %396 = icmp slt i32 %395, 9
  br i1 %396, label %397, label %420

; <label>:397                                     ; preds = %394
  %398 = load i32, i32* %k, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = load i32, i32* %j, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [2 x [8 x [9 x i64]]], [2 x [8 x [9 x i64]]]* @g_572, i32 0, i64 %403
  %405 = getelementptr inbounds [8 x [9 x i64]], [8 x [9 x i64]]* %404, i32 0, i64 %401
  %406 = getelementptr inbounds [9 x i64], [9 x i64]* %405, i32 0, i64 %399
  %407 = load i64, i64* %406, align 8, !tbaa !7
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %408)
  %409 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %416

; <label>:411                                     ; preds = %397
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = load i32, i32* %j, align 4, !tbaa !1
  %414 = load i32, i32* %k, align 4, !tbaa !1
  %415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %412, i32 %413, i32 %414)
  br label %416

; <label>:416                                     ; preds = %411, %397
  br label %417

; <label>:417                                     ; preds = %416
  %418 = load i32, i32* %k, align 4, !tbaa !1
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %k, align 4, !tbaa !1
  br label %394

; <label>:420                                     ; preds = %394
  br label %421

; <label>:421                                     ; preds = %420
  %422 = load i32, i32* %j, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %j, align 4, !tbaa !1
  br label %390

; <label>:424                                     ; preds = %390
  br label %425

; <label>:425                                     ; preds = %424
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %i, align 4, !tbaa !1
  br label %386

; <label>:428                                     ; preds = %386
  %429 = load i32, i32* @g_573, align 4, !tbaa !1
  %430 = sext i32 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %431)
  %432 = load i8, i8* @g_589, align 1, !tbaa !9
  %433 = zext i8 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %434)
  %435 = load i32, i32* @g_646, align 4, !tbaa !1
  %436 = sext i32 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %437)
  %438 = load i64, i64* @g_699, align 8, !tbaa !7
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %439)
  %440 = load volatile i16, i16* @g_721, align 2, !tbaa !10
  %441 = zext i16 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %442)
  %443 = load i32, i32* @g_854, align 4, !tbaa !1
  %444 = sext i32 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %445)
  %446 = load i64, i64* @g_855, align 8, !tbaa !7
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %447)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %448

; <label>:448                                     ; preds = %464, %428
  %449 = load i32, i32* %i, align 4, !tbaa !1
  %450 = icmp slt i32 %449, 7
  br i1 %450, label %451, label %467

; <label>:451                                     ; preds = %448
  %452 = load i32, i32* %i, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [7 x i32], [7 x i32]* @g_856, i32 0, i64 %453
  %455 = load i32, i32* %454, align 4, !tbaa !1
  %456 = zext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %457)
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %463

; <label>:460                                     ; preds = %451
  %461 = load i32, i32* %i, align 4, !tbaa !1
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %461)
  br label %463

; <label>:463                                     ; preds = %460, %451
  br label %464

; <label>:464                                     ; preds = %463
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %i, align 4, !tbaa !1
  br label %448

; <label>:467                                     ; preds = %448
  %468 = load i32, i32* @g_903, align 4, !tbaa !1
  %469 = sext i32 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %470)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %471

; <label>:471                                     ; preds = %499, %467
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = icmp slt i32 %472, 7
  br i1 %473, label %474, label %502

; <label>:474                                     ; preds = %471
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %475

; <label>:475                                     ; preds = %495, %474
  %476 = load i32, i32* %j, align 4, !tbaa !1
  %477 = icmp slt i32 %476, 1
  br i1 %477, label %478, label %498

; <label>:478                                     ; preds = %475
  %479 = load i32, i32* %j, align 4, !tbaa !1
  %480 = sext i32 %479 to i64
  %481 = load i32, i32* %i, align 4, !tbaa !1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [7 x [1 x i32]], [7 x [1 x i32]]* @g_904, i32 0, i64 %482
  %484 = getelementptr inbounds [1 x i32], [1 x i32]* %483, i32 0, i64 %480
  %485 = load volatile i32, i32* %484, align 4, !tbaa !1
  %486 = zext i32 %485 to i64
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %487)
  %488 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %494

; <label>:490                                     ; preds = %478
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = load i32, i32* %j, align 4, !tbaa !1
  %493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %491, i32 %492)
  br label %494

; <label>:494                                     ; preds = %490, %478
  br label %495

; <label>:495                                     ; preds = %494
  %496 = load i32, i32* %j, align 4, !tbaa !1
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %j, align 4, !tbaa !1
  br label %475

; <label>:498                                     ; preds = %475
  br label %499

; <label>:499                                     ; preds = %498
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %i, align 4, !tbaa !1
  br label %471

; <label>:502                                     ; preds = %471
  %503 = load i16, i16* @g_958, align 2, !tbaa !10
  %504 = sext i16 %503 to i64
  %505 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %504, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %505)
  %506 = load i16, i16* @g_983, align 2, !tbaa !10
  %507 = sext i16 %506 to i64
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %507, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %508)
  %509 = load i32, i32* @g_1141, align 4, !tbaa !1
  %510 = zext i32 %509 to i64
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %511)
  %512 = load i8, i8* @g_1210, align 1, !tbaa !9
  %513 = sext i8 %512 to i64
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %513, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %514)
  %515 = load i64, i64* @g_1281, align 8, !tbaa !7
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %516)
  %517 = load i16, i16* @g_1286, align 2, !tbaa !10
  %518 = zext i16 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %519)
  %520 = load i64, i64* @g_1289, align 8, !tbaa !7
  %521 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %520, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %521)
  %522 = load i32, i32* @g_1291, align 4, !tbaa !1
  %523 = zext i32 %522 to i64
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %523, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %524)
  %525 = load volatile i16, i16* @g_1490, align 2, !tbaa !10
  %526 = sext i16 %525 to i64
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %527)
  %528 = load volatile i32, i32* @g_1968, align 4, !tbaa !1
  %529 = sext i32 %528 to i64
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %529, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %530)
  %531 = load i32, i32* @g_2035, align 4, !tbaa !1
  %532 = zext i32 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %533)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %534

; <label>:534                                     ; preds = %550, %502
  %535 = load i32, i32* %i, align 4, !tbaa !1
  %536 = icmp slt i32 %535, 3
  br i1 %536, label %537, label %553

; <label>:537                                     ; preds = %534
  %538 = load i32, i32* %i, align 4, !tbaa !1
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [3 x i16], [3 x i16]* @g_2089, i32 0, i64 %539
  %541 = load i16, i16* %540, align 2, !tbaa !10
  %542 = zext i16 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 %543)
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %549

; <label>:546                                     ; preds = %537
  %547 = load i32, i32* %i, align 4, !tbaa !1
  %548 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %547)
  br label %549

; <label>:549                                     ; preds = %546, %537
  br label %550

; <label>:550                                     ; preds = %549
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %i, align 4, !tbaa !1
  br label %534

; <label>:553                                     ; preds = %534
  %554 = load i64, i64* @g_2096, align 8, !tbaa !7
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %555)
  %556 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %557 = zext i32 %556 to i64
  %558 = xor i64 %557, 4294967295
  %559 = trunc i64 %558 to i32
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %559, i32 %560)
  %561 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %561) #1
  %562 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %563 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %563) #1
  %564 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %564) #1
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
  %l_2 = alloca i32*, align 8
  %l_3 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca [7 x i32*], align 16
  %l_1285 = alloca i16*, align 8
  %l_1284 = alloca i16**, align 8
  %l_1527 = alloca [7 x i8], align 1
  %l_1666 = alloca i32, align 4
  %l_1717 = alloca %union.U0, align 4
  %l_1748 = alloca [6 x %union.U0***], align 16
  %l_1775 = alloca i16**, align 8
  %l_1796 = alloca i8, align 1
  %l_1797 = alloca i32, align 4
  %l_1819 = alloca i16, align 2
  %l_1840 = alloca i16***, align 8
  %l_1854 = alloca i32****, align 8
  %l_1864 = alloca i32, align 4
  %l_1868 = alloca i16***, align 8
  %l_1898 = alloca i64, align 8
  %l_1929 = alloca i32, align 4
  %l_1999 = alloca i8, align 1
  %l_2000 = alloca [6 x i32], align 16
  %l_2111 = alloca i64, align 8
  %l_2113 = alloca i16, align 2
  %l_2125 = alloca i64, align 8
  %i = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* null, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_4, i32** %l_3, align 8, !tbaa !5
  %3 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_4, i32** %l_5, align 8, !tbaa !5
  %4 = bitcast [7 x i32*]* %l_6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast [7 x i32*]* %l_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([7 x i32*]* @func_1.l_6 to i8*), i64 56, i32 16, i1 false)
  %6 = bitcast i16** %l_1285 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_1286, i16** %l_1285, align 8, !tbaa !5
  %7 = bitcast i16*** %l_1284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** %l_1285, i16*** %l_1284, align 8, !tbaa !5
  %8 = bitcast [7 x i8]* %l_1527 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %8) #1
  %9 = bitcast [7 x i8]* %l_1527 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @func_1.l_1527, i32 0, i32 0), i64 7, i32 1, i1 false)
  %10 = bitcast i32* %l_1666 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 707923675, i32* %l_1666, align 4, !tbaa !1
  %11 = bitcast %union.U0* %l_1717 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %union.U0* %l_1717 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @func_1.l_1717, i32 0, i32 0), i64 4, i32 4, i1 false)
  %13 = bitcast [6 x %union.U0***]* %l_1748 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %13) #1
  %14 = bitcast [6 x %union.U0***]* %l_1748 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 48, i32 16, i1 false)
  %15 = bitcast i16*** %l_1775 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16** %l_1285, i16*** %l_1775, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1796) #1
  store i8 41, i8* %l_1796, align 1, !tbaa !9
  %16 = bitcast i32* %l_1797 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 331803376, i32* %l_1797, align 4, !tbaa !1
  %17 = bitcast i16* %l_1819 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 5, i16* %l_1819, align 2, !tbaa !10
  %18 = bitcast i16**** %l_1840 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i16*** null, i16**** %l_1840, align 8, !tbaa !5
  %19 = bitcast i32***** %l_1854 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32**** null, i32***** %l_1854, align 8, !tbaa !5
  %20 = bitcast i32* %l_1864 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 -559880828, i32* %l_1864, align 4, !tbaa !1
  %21 = bitcast i16**** %l_1868 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i16*** getelementptr inbounds ([5 x i16**], [5 x i16**]* @g_1027, i32 0, i64 3), i16**** %l_1868, align 8, !tbaa !5
  %22 = bitcast i64* %l_1898 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64 5893498684634718427, i64* %l_1898, align 8, !tbaa !7
  %23 = bitcast i32* %l_1929 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %l_1929, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1999) #1
  store i8 -31, i8* %l_1999, align 1, !tbaa !9
  %24 = bitcast [6 x i32]* %l_2000 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %24) #1
  %25 = bitcast i64* %l_2111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i64 -1, i64* %l_2111, align 8, !tbaa !7
  %26 = bitcast i16* %l_2113 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %26) #1
  store i16 17403, i16* %l_2113, align 2, !tbaa !10
  %27 = bitcast i64* %l_2125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64 -1, i64* %l_2125, align 8, !tbaa !7
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %36, %0
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %i, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %l_2000, i32 0, i64 %34
  store i32 73901740, i32* %35, align 4, !tbaa !1
  br label %36

; <label>:36                                      ; preds = %32
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:39                                      ; preds = %29
  %40 = load volatile i64, i64* getelementptr inbounds ([10 x [4 x i64]], [10 x [4 x i64]]* @g_7, i32 0, i64 0, i64 2), align 8, !tbaa !7
  %41 = add i64 %40, -1
  store volatile i64 %41, i64* getelementptr inbounds ([10 x [4 x i64]], [10 x [4 x i64]]* @g_7, i32 0, i64 0, i64 2), align 8, !tbaa !7
  %42 = load i8**, i8*** @g_1672, align 8, !tbaa !5
  %43 = load volatile i8*, i8** %42, align 8, !tbaa !5
  %44 = load i8, i8* %43, align 1, !tbaa !9
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i64* %l_2125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i16* %l_2113 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %47) #1
  %48 = bitcast i64* %l_2111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast [6 x i32]* %l_2000 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %49) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1999) #1
  %50 = bitcast i32* %l_1929 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i64* %l_1898 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i16**** %l_1868 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %l_1864 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32***** %l_1854 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i16**** %l_1840 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i16* %l_1819 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %56) #1
  %57 = bitcast i32* %l_1797 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1796) #1
  %58 = bitcast i16*** %l_1775 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast [6 x %union.U0***]* %l_1748 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %59) #1
  %60 = bitcast %union.U0* %l_1717 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %l_1666 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast [7 x i8]* %l_1527 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %62) #1
  %63 = bitcast i16*** %l_1284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i16** %l_1285 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast [7 x i32*]* %l_6 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %65) #1
  %66 = bitcast i32** %l_5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret i8 %44
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
