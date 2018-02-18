; ModuleID = '00436.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [2 x [8 x i32]] [[8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1]], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"g_2[i][j]\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_5 = internal global [4 x [9 x [3 x i64]]] [[9 x [3 x i64]] [[3 x i64] [i64 -1, i64 9, i64 -6], [3 x i64] [i64 -1, i64 -1, i64 -6], [3 x i64] [i64 9, i64 -1, i64 -6], [3 x i64] [i64 -1, i64 9, i64 -6], [3 x i64] [i64 -1, i64 -1, i64 -6], [3 x i64] [i64 9, i64 -1, i64 -6], [3 x i64] [i64 -1, i64 9, i64 -6], [3 x i64] [i64 -1, i64 -1, i64 -6], [3 x i64] [i64 9, i64 -1, i64 -6]], [9 x [3 x i64]] [[3 x i64] [i64 -1, i64 9, i64 -6], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1]], [9 x [3 x i64]] [[3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1]], [9 x [3 x i64]] [[3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1], [3 x i64] [i64 -1, i64 6, i64 -1], [3 x i64] [i64 5055099023723849701, i64 5055099023723849701, i64 -1], [3 x i64] [i64 6, i64 -1, i64 -1]]], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"g_5[i][j][k]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_6 = internal global i32 164901991, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_9 = internal global i32 -1, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_52 = internal global [2 x i8] c"oo", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_52[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_82 = internal global i16 0, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_90 = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_90\00", align 1
@g_130 = internal global i8 2, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_130\00", align 1
@g_131 = internal global [9 x [1 x [9 x i32]]] [[1 x [9 x i32]] [[9 x i32] [i32 -1, i32 1, i32 5, i32 -514360345, i32 -1322276451, i32 704837939, i32 717075391, i32 826850121, i32 -535945666]], [1 x [9 x i32]] [[9 x i32] [i32 1, i32 1, i32 6, i32 681675099, i32 1, i32 -514360345, i32 704837939, i32 9, i32 9]], [1 x [9 x i32]] [[9 x i32] [i32 1006262628, i32 826850121, i32 -1423465620, i32 -7, i32 1, i32 1, i32 -1, i32 6, i32 6]], [1 x [9 x i32]] [[9 x i32] [i32 1, i32 -465706385, i32 -1423465620, i32 -796802183, i32 -1423465620, i32 -465706385, i32 1, i32 -1528119793, i32 -395925704]], [1 x [9 x i32]] [[9 x i32] [i32 9, i32 2077488751, i32 6, i32 -1528119793, i32 681675099, i32 -1423465620, i32 1, i32 -514360345, i32 1461130092]], [1 x [9 x i32]] [[9 x i32] [i32 -514360345, i32 9, i32 5, i32 2077488751, i32 -33394019, i32 -1322276451, i32 -7, i32 -1528119793, i32 -459827995]], [1 x [9 x i32]] [[9 x i32] [i32 595641662, i32 6, i32 -459827995, i32 -535945666, i32 1619991197, i32 -1528119793, i32 4, i32 6, i32 9]], [1 x [9 x i32]] [[9 x i32] [i32 9, i32 -1423465620, i32 595641662, i32 -535945666, i32 -535945666, i32 595641662, i32 -1423465620, i32 9, i32 1]], [1 x [9 x i32]] [[9 x i32] [i32 -999611535, i32 1006262628, i32 -535945666, i32 2077488751, i32 4, i32 5, i32 9, i32 826850121, i32 2]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_131[i][j][k]\00", align 1
@g_136 = internal global i16 -17898, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_153 = internal global i32 1, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_153\00", align 1
@g_155 = internal global i16 7, align 2
@.str.16 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_157 = internal global i64 1, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_157\00", align 1
@g_159 = internal global i32 1, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_159\00", align 1
@g_190 = internal global i8 1, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_190\00", align 1
@g_193 = internal global i64 849084088253829574, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_193\00", align 1
@g_196 = internal global [3 x i16] [i16 31894, i16 31894, i16 31894], align 2
@.str.21 = private unnamed_addr constant [9 x i8] c"g_196[i]\00", align 1
@g_210 = internal global i64 -3, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_210\00", align 1
@g_236 = internal global i32 1, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_236\00", align 1
@g_237 = internal global i8 1, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_237\00", align 1
@g_238 = internal global i16 -3534, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_238\00", align 1
@g_243 = internal global i8 -24, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_268\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_270\00", align 1
@g_297 = internal global i32 -4, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_297\00", align 1
@g_308 = internal global i8 -7, align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_308\00", align 1
@g_309 = internal global [2 x [4 x i8]] [[4 x i8] c"\01\C1\01\01", [4 x i8] c"\C1\C15\C1"], align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"g_309[i][j]\00", align 1
@g_314 = internal global [10 x i64] [i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1], align 16
@.str.32 = private unnamed_addr constant [9 x i8] c"g_314[i]\00", align 1
@g_330 = internal global i8 111, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_330\00", align 1
@g_359 = internal global i8 56, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_359\00", align 1
@g_360 = internal global i32 619693249, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_360\00", align 1
@g_443 = internal global i32 760882438, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_443\00", align 1
@g_457 = internal global [10 x [7 x i16]] [[7 x i16] [i16 -23130, i16 26178, i16 -1, i16 26178, i16 -23130, i16 26178, i16 -1], [7 x i16] [i16 1716, i16 7209, i16 -24358, i16 -24358, i16 7209, i16 1716, i16 8], [7 x i16] [i16 7, i16 28838, i16 7, i16 26178, i16 7, i16 28838, i16 7], [7 x i16] [i16 1716, i16 -24358, i16 8, i16 7209, i16 7209, i16 8, i16 -24358], [7 x i16] [i16 -23130, i16 28838, i16 -1, i16 28838, i16 -23130, i16 28838, i16 -1], [7 x i16] [i16 7209, i16 7209, i16 8, i16 -24358, i16 1716, i16 1716, i16 -24358], [7 x i16] [i16 7, i16 26178, i16 7, i16 28838, i16 7, i16 26178, i16 7], [7 x i16] [i16 7209, i16 -24358, i16 -24358, i16 7209, i16 1716, i16 8, i16 8], [7 x i16] [i16 -23130, i16 26178, i16 -1, i16 26178, i16 -23130, i16 26178, i16 -1], [7 x i16] [i16 1716, i16 7209, i16 -24358, i16 -24358, i16 7209, i16 1716, i16 8]], align 16
@.str.37 = private unnamed_addr constant [12 x i8] c"g_457[i][j]\00", align 1
@g_459 = internal global [3 x i8] c"\FF\FF\FF", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_459[i]\00", align 1
@g_461 = internal global i32 -1288665780, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_461\00", align 1
@g_514 = internal global [5 x [10 x i32]] [[10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1]], align 16
@.str.40 = private unnamed_addr constant [12 x i8] c"g_514[i][j]\00", align 1
@g_548 = internal global [5 x [2 x [1 x i32]]] [[2 x [1 x i32]] [[1 x i32] [i32 1852836615], [1 x i32] [i32 -2020540215]], [2 x [1 x i32]] [[1 x i32] [i32 1852836615], [1 x i32] [i32 -2020540215]], [2 x [1 x i32]] [[1 x i32] [i32 1852836615], [1 x i32] [i32 -2020540215]], [2 x [1 x i32]] [[1 x i32] [i32 1852836615], [1 x i32] [i32 -2020540215]], [2 x [1 x i32]] [[1 x i32] [i32 1852836615], [1 x i32] [i32 -2020540215]]], align 16
@.str.41 = private unnamed_addr constant [15 x i8] c"g_548[i][j][k]\00", align 1
@g_587 = internal global [9 x i8] c">>6>>6\FB\FB>", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_587[i]\00", align 1
@g_647 = internal global [1 x i8] c"\09", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_647[i]\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_655\00", align 1
@g_661 = internal global i8 113, align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_661\00", align 1
@g_662 = internal global i64 -1, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"g_662\00", align 1
@g_663 = internal global i16 0, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_663\00", align 1
@g_664 = internal global i16 -7158, align 2
@.str.48 = private unnamed_addr constant [6 x i8] c"g_664\00", align 1
@g_681 = internal global i16 -1, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c"g_681\00", align 1
@g_712 = internal global i32 1, align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"g_712\00", align 1
@g_713 = internal global i64 5816745527288418929, align 8
@.str.51 = private unnamed_addr constant [6 x i8] c"g_713\00", align 1
@g_748 = internal global [7 x [6 x i32]] [[6 x i32] [i32 -1665518761, i32 286323179, i32 286323179, i32 -1665518761, i32 -1471348998, i32 0], [6 x i32] [i32 -127651411, i32 286323179, i32 -1471348998, i32 -127651411, i32 -1471348998, i32 286323179], [6 x i32] [i32 133848835, i32 286323179, i32 0, i32 133848835, i32 -1471348998, i32 -1471348998], [6 x i32] [i32 -1665518761, i32 286323179, i32 286323179, i32 -1665518761, i32 -1471348998, i32 0], [6 x i32] [i32 -127651411, i32 286323179, i32 -1471348998, i32 -127651411, i32 -1471348998, i32 286323179], [6 x i32] [i32 133848835, i32 286323179, i32 0, i32 133848835, i32 -1471348998, i32 -1471348998], [6 x i32] [i32 -1665518761, i32 286323179, i32 286323179, i32 -1665518761, i32 -1471348998, i32 0]], align 16
@.str.52 = private unnamed_addr constant [12 x i8] c"g_748[i][j]\00", align 1
@g_905 = internal global i32 0, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"g_905\00", align 1
@g_974 = internal global [7 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], align 16
@.str.54 = private unnamed_addr constant [9 x i8] c"g_974[i]\00", align 1
@g_1003 = internal global [8 x [7 x [4 x i32]]] [[7 x [4 x i32]] [[4 x i32] [i32 1223480707, i32 1181991363, i32 -10, i32 -1], [4 x i32] [i32 1643467795, i32 1181991363, i32 -1, i32 -1587464104], [4 x i32] [i32 1181991363, i32 -4, i32 -8, i32 1181991363], [4 x i32] [i32 983852641, i32 -1, i32 -4, i32 1], [4 x i32] [i32 -825379679, i32 1643467795, i32 -1, i32 1643467795], [4 x i32] [i32 -1, i32 6, i32 983852641, i32 1059887505], [4 x i32] [i32 1223480707, i32 -1, i32 6, i32 1]], [7 x [4 x i32]] [[4 x i32] [i32 -1587464104, i32 -707738597, i32 252030299, i32 -4], [4 x i32] [i32 -1587464104, i32 -4, i32 6, i32 -1], [4 x i32] [i32 1223480707, i32 -4, i32 983852641, i32 -1], [4 x i32] [i32 -1, i32 -825379679, i32 -1, i32 -707738597], [4 x i32] [i32 -825379679, i32 -4, i32 -4, i32 -825379679], [4 x i32] [i32 983852641, i32 -1587464104, i32 -8, i32 1], [4 x i32] [i32 1181991363, i32 1059887505, i32 -1, i32 -1]], [7 x [4 x i32]] [[4 x i32] [i32 1643467795, i32 6, i32 -10, i32 -1], [4 x i32] [i32 1223480707, i32 1059887505, i32 -1, i32 1], [4 x i32] [i32 -707738597, i32 -1587464104, i32 252030299, i32 -825379679], [4 x i32] [i32 -1, i32 -4, i32 1, i32 -707738597], [4 x i32] [i32 1223480707, i32 -825379679, i32 1223480707, i32 -1], [4 x i32] [i32 1059887505, i32 -4, i32 -1, i32 -1], [4 x i32] [i32 -4, i32 -4, i32 6, i32 -4]], [7 x [4 x i32]] [[4 x i32] [i32 983852641, i32 -707738597, i32 6, i32 1], [4 x i32] [i32 -4, i32 -1, i32 -1, i32 1059887505], [4 x i32] [i32 1059887505, i32 6, i32 1223480707, i32 1643467795], [4 x i32] [i32 1223480707, i32 1643467795, i32 1, i32 1], [4 x i32] [i32 -1, i32 -1, i32 252030299, i32 1181991363], [4 x i32] [i32 -707738597, i32 -4, i32 -1, i32 -1587464104], [4 x i32] [i32 1223480707, i32 1181991363, i32 -10, i32 -1]], [7 x [4 x i32]] [[4 x i32] [i32 1643467795, i32 1181991363, i32 -1, i32 -1587464104], [4 x i32] [i32 1181991363, i32 -4, i32 -8, i32 1181991363], [4 x i32] [i32 983852641, i32 -1, i32 -4, i32 1], [4 x i32] [i32 -825379679, i32 1643467795, i32 -1, i32 1643467795], [4 x i32] [i32 -1, i32 6, i32 983852641, i32 1059887505], [4 x i32] [i32 0, i32 1, i32 1154520785, i32 -1], [4 x i32] [i32 1223480707, i32 983852641, i32 -707738597, i32 6]], [7 x [4 x i32]] [[4 x i32] [i32 1223480707, i32 -612339970, i32 1154520785, i32 -10], [4 x i32] [i32 0, i32 6, i32 0, i32 -1288973995], [4 x i32] [i32 1, i32 -8, i32 -1587464104, i32 983852641], [4 x i32] [i32 -8, i32 -612339970, i32 -612339970, i32 -8], [4 x i32] [i32 0, i32 1223480707, i32 252030299, i32 -1], [4 x i32] [i32 -4, i32 -1, i32 -1587464104, i32 1], [4 x i32] [i32 6, i32 -1, i32 -1613537362, i32 1]], [7 x [4 x i32]] [[4 x i32] [i32 0, i32 -1, i32 -1288973995, i32 -1], [4 x i32] [i32 983852641, i32 1223480707, i32 -707738597, i32 -8], [4 x i32] [i32 -10, i32 -612339970, i32 -1, i32 983852641], [4 x i32] [i32 0, i32 -8, i32 0, i32 -1288973995], [4 x i32] [i32 -1, i32 6, i32 -1587464104, i32 -10], [4 x i32] [i32 6, i32 -612339970, i32 -1, i32 6], [4 x i32] [i32 0, i32 983852641, i32 -1, i32 -1]], [7 x [4 x i32]] [[4 x i32] [i32 6, i32 1, i32 -1587464104, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 0, i32 6], [4 x i32] [i32 0, i32 6, i32 -1, i32 -1], [4 x i32] [i32 -10, i32 -10, i32 -707738597, i32 -4], [4 x i32] [i32 983852641, i32 -612339970, i32 -1288973995, i32 1223480707], [4 x i32] [i32 0, i32 -4, i32 -1613537362, i32 -1288973995], [4 x i32] [i32 6, i32 -4, i32 -1587464104, i32 1223480707]]], align 16
@.str.55 = private unnamed_addr constant [16 x i8] c"g_1003[i][j][k]\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1060\00", align 1
@g_1158 = internal global i16 28972, align 2
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1158\00", align 1
@g_1169 = internal global [10 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"g_1169[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1233 = private unnamed_addr constant [5 x [3 x i8]] [[3 x i8] c"\83\FA\FA", [3 x i8] c"\83\FA\FA", [3 x i8] c"\83\FA\FA", [3 x i8] c"\83\FA\FA", [3 x i8] c"\83\FA\FA"], align 1
@func_1.l_1107 = private unnamed_addr constant [5 x [8 x [6 x i8]]] [[8 x [6 x i8]] [[6 x i8] c"\08\98g\D5\98\FF", [6 x i8] c"hP\19\01\FF\02", [6 x i8] c"e\FE\05\EE\05\FE", [6 x i8] c"e\02\01gh\00", [6 x i8] c"P\01\DA\98\AB\DA", [6 x i8] c"\EE\01 Ph\AB", [6 x i8] c"\FF\02\FF\06\05 ", [6 x i8] c"g\FE\FF\01\01\AB"], [8 x [6 x i8]] [[6 x i8] c"\C2\00 \FF\DA\DA", [6 x i8] c"\FF\DA\DA\FF \00", [6 x i8] c"\C2\AB\01\01\FF\FE", [6 x i8] c"g \05\06\FF\02", [6 x i8] c"\FF\ABhP \01", [6 x i8] c"\EE\DA\AB\98\DA\01", [6 x i8] c"P\00hg\01\02", [6 x i8] c"e\FE\05\EE\05\FE"], [8 x [6 x i8]] [[6 x i8] c"e\02\01gh\00", [6 x i8] c"P\01\DA\98\AB\DA", [6 x i8] c"\EE\01 Ph\AB", [6 x i8] c"\FF\02\FF\06\05 ", [6 x i8] c"g\FE\FF\01\01\AB", [6 x i8] c"\C2\00 \FF\DA\DA", [6 x i8] c"\FF\DA\DA\FF \00", [6 x i8] c"\C2\AB\01\01\FF\FE"], [8 x [6 x i8]] [[6 x i8] c"g \05\06\FF\02", [6 x i8] c"\FF\ABhP \01", [6 x i8] c"\EE\DA\AB\98\DA\01", [6 x i8] c"P\00hg\01\02", [6 x i8] c"e\FE\05\EE\05\FE", [6 x i8] c"e\02\01gh\00", [6 x i8] c"P\01\DA\98\AB\DA", [6 x i8] c"\EE\01 Ph\AB"], [8 x [6 x i8]] [[6 x i8] c"\FF\02\FF\06\05 ", [6 x i8] c"g\FE\FF\02\F9\00", [6 x i8] c"\FF\B9h\01\08\08", [6 x i8] c"\01\08\08\01h\B9", [6 x i8] c"\FF\00\F9\02\F6\FF", [6 x i8] c"\ABh\01\FE\F6\01", [6 x i8] c"\01\00\08\00h\F9", [6 x i8] c" \08\00\DA\08\F9"]], align 16
@g_335 = internal global i32*** @g_336, align 8
@g_1238 = internal global i16*** @g_1239, align 8
@g_336 = internal global i32** @g_158, align 8
@g_158 = internal global i32* @g_159, align 8
@g_1239 = internal global i16** @g_1240, align 8
@g_1240 = internal global i16* @g_664, align 8
@.str.59 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %118

; <label>:98                                      ; preds = %95
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @g_2, i32 0, i64 %102
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i32 0, i64 %100
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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %162, %122
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %165

; <label>:126                                     ; preds = %123
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %127

; <label>:127                                     ; preds = %158, %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = icmp slt i32 %128, 9
  br i1 %129, label %130, label %161

; <label>:130                                     ; preds = %127
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %131

; <label>:131                                     ; preds = %154, %130
  %132 = load i32, i32* %k, align 4, !tbaa !1
  %133 = icmp slt i32 %132, 3
  br i1 %133, label %134, label %157

; <label>:134                                     ; preds = %131
  %135 = load i32, i32* %k, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x [9 x [3 x i64]]], [4 x [9 x [3 x i64]]]* @g_5, i32 0, i64 %140
  %142 = getelementptr inbounds [9 x [3 x i64]], [9 x [3 x i64]]* %141, i32 0, i64 %138
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %142, i32 0, i64 %136
  %144 = load i64, i64* %143, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

; <label>:148                                     ; preds = %134
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = load i32, i32* %j, align 4, !tbaa !1
  %151 = load i32, i32* %k, align 4, !tbaa !1
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %149, i32 %150, i32 %151)
  br label %153

; <label>:153                                     ; preds = %148, %134
  br label %154

; <label>:154                                     ; preds = %153
  %155 = load i32, i32* %k, align 4, !tbaa !1
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %k, align 4, !tbaa !1
  br label %131

; <label>:157                                     ; preds = %131
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i32, i32* %j, align 4, !tbaa !1
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %j, align 4, !tbaa !1
  br label %127

; <label>:161                                     ; preds = %127
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:165                                     ; preds = %123
  %166 = load i32, i32* @g_6, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* @g_7, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* @g_9, align 4, !tbaa !1
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 %174)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %191, %165
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %178, label %194

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x i8], [2 x i8]* @g_52, i32 0, i64 %180
  %182 = load i8, i8* %181, align 1, !tbaa !9
  %183 = sext i8 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

; <label>:187                                     ; preds = %178
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %188)
  br label %190

; <label>:190                                     ; preds = %187, %178
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:194                                     ; preds = %175
  %195 = load i16, i16* @g_82, align 2, !tbaa !10
  %196 = sext i16 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %197)
  %198 = load i32, i32* @g_90, align 4, !tbaa !1
  %199 = zext i32 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %200)
  %201 = load i8, i8* @g_130, align 1, !tbaa !9
  %202 = sext i8 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %203)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %204

; <label>:204                                     ; preds = %244, %194
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = icmp slt i32 %205, 9
  br i1 %206, label %207, label %247

; <label>:207                                     ; preds = %204
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %240, %207
  %209 = load i32, i32* %j, align 4, !tbaa !1
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %211, label %243

; <label>:211                                     ; preds = %208
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %236, %211
  %213 = load i32, i32* %k, align 4, !tbaa !1
  %214 = icmp slt i32 %213, 9
  br i1 %214, label %215, label %239

; <label>:215                                     ; preds = %212
  %216 = load i32, i32* %k, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %j, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [9 x [1 x [9 x i32]]], [9 x [1 x [9 x i32]]]* @g_131, i32 0, i64 %221
  %223 = getelementptr inbounds [1 x [9 x i32]], [1 x [9 x i32]]* %222, i32 0, i64 %219
  %224 = getelementptr inbounds [9 x i32], [9 x i32]* %223, i32 0, i64 %217
  %225 = load i32, i32* %224, align 4, !tbaa !1
  %226 = zext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %227)
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

; <label>:230                                     ; preds = %215
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = load i32, i32* %j, align 4, !tbaa !1
  %233 = load i32, i32* %k, align 4, !tbaa !1
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %231, i32 %232, i32 %233)
  br label %235

; <label>:235                                     ; preds = %230, %215
  br label %236

; <label>:236                                     ; preds = %235
  %237 = load i32, i32* %k, align 4, !tbaa !1
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %k, align 4, !tbaa !1
  br label %212

; <label>:239                                     ; preds = %212
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load i32, i32* %j, align 4, !tbaa !1
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %j, align 4, !tbaa !1
  br label %208

; <label>:243                                     ; preds = %208
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %i, align 4, !tbaa !1
  br label %204

; <label>:247                                     ; preds = %204
  %248 = load i16, i16* @g_136, align 2, !tbaa !10
  %249 = sext i16 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* @g_153, align 4, !tbaa !1
  %252 = zext i32 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %253)
  %254 = load i16, i16* @g_155, align 2, !tbaa !10
  %255 = sext i16 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %256)
  %257 = load i64, i64* @g_157, align 8, !tbaa !7
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* @g_159, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %261)
  %262 = load i8, i8* @g_190, align 1, !tbaa !9
  %263 = zext i8 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %264)
  %265 = load i64, i64* @g_193, align 8, !tbaa !7
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %266)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %267

; <label>:267                                     ; preds = %283, %247
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = icmp slt i32 %268, 3
  br i1 %269, label %270, label %286

; <label>:270                                     ; preds = %267
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [3 x i16], [3 x i16]* @g_196, i32 0, i64 %272
  %274 = load volatile i16, i16* %273, align 2, !tbaa !10
  %275 = zext i16 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %276)
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

; <label>:279                                     ; preds = %270
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %280)
  br label %282

; <label>:282                                     ; preds = %279, %270
  br label %283

; <label>:283                                     ; preds = %282
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %i, align 4, !tbaa !1
  br label %267

; <label>:286                                     ; preds = %267
  %287 = load i64, i64* @g_210, align 8, !tbaa !7
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* @g_236, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %291)
  %292 = load i8, i8* @g_237, align 1, !tbaa !9
  %293 = sext i8 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %294)
  %295 = load i16, i16* @g_238, align 2, !tbaa !10
  %296 = zext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %297)
  %298 = load volatile i8, i8* @g_243, align 1, !tbaa !9
  %299 = zext i8 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %301)
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %302)
  %303 = load volatile i32, i32* @g_297, align 4, !tbaa !1
  %304 = zext i32 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %305)
  %306 = load volatile i8, i8* @g_308, align 1, !tbaa !9
  %307 = sext i8 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %308)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %337, %286
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = icmp slt i32 %310, 2
  br i1 %311, label %312, label %340

; <label>:312                                     ; preds = %309
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %313

; <label>:313                                     ; preds = %333, %312
  %314 = load i32, i32* %j, align 4, !tbaa !1
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %336

; <label>:316                                     ; preds = %313
  %317 = load i32, i32* %j, align 4, !tbaa !1
  %318 = sext i32 %317 to i64
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @g_309, i32 0, i64 %320
  %322 = getelementptr inbounds [4 x i8], [4 x i8]* %321, i32 0, i64 %318
  %323 = load volatile i8, i8* %322, align 1, !tbaa !9
  %324 = sext i8 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 %325)
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

; <label>:328                                     ; preds = %316
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = load i32, i32* %j, align 4, !tbaa !1
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %329, i32 %330)
  br label %332

; <label>:332                                     ; preds = %328, %316
  br label %333

; <label>:333                                     ; preds = %332
  %334 = load i32, i32* %j, align 4, !tbaa !1
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %j, align 4, !tbaa !1
  br label %313

; <label>:336                                     ; preds = %313
  br label %337

; <label>:337                                     ; preds = %336
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:340                                     ; preds = %309
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:341                                     ; preds = %356, %340
  %342 = load i32, i32* %i, align 4, !tbaa !1
  %343 = icmp slt i32 %342, 10
  br i1 %343, label %344, label %359

; <label>:344                                     ; preds = %341
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [10 x i64], [10 x i64]* @g_314, i32 0, i64 %346
  %348 = load i64, i64* %347, align 8, !tbaa !7
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %349)
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %355

; <label>:352                                     ; preds = %344
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %353)
  br label %355

; <label>:355                                     ; preds = %352, %344
  br label %356

; <label>:356                                     ; preds = %355
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %i, align 4, !tbaa !1
  br label %341

; <label>:359                                     ; preds = %341
  %360 = load i8, i8* @g_330, align 1, !tbaa !9
  %361 = zext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %362)
  %363 = load i8, i8* @g_359, align 1, !tbaa !9
  %364 = sext i8 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %365)
  %366 = load volatile i32, i32* @g_360, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_443, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %371)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %400, %359
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 10
  br i1 %374, label %375, label %403

; <label>:375                                     ; preds = %372
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %376

; <label>:376                                     ; preds = %396, %375
  %377 = load i32, i32* %j, align 4, !tbaa !1
  %378 = icmp slt i32 %377, 7
  br i1 %378, label %379, label %399

; <label>:379                                     ; preds = %376
  %380 = load i32, i32* %j, align 4, !tbaa !1
  %381 = sext i32 %380 to i64
  %382 = load i32, i32* %i, align 4, !tbaa !1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [10 x [7 x i16]], [10 x [7 x i16]]* @g_457, i32 0, i64 %383
  %385 = getelementptr inbounds [7 x i16], [7 x i16]* %384, i32 0, i64 %381
  %386 = load i16, i16* %385, align 2, !tbaa !10
  %387 = sext i16 %386 to i64
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %387, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 %388)
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

; <label>:391                                     ; preds = %379
  %392 = load i32, i32* %i, align 4, !tbaa !1
  %393 = load i32, i32* %j, align 4, !tbaa !1
  %394 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %392, i32 %393)
  br label %395

; <label>:395                                     ; preds = %391, %379
  br label %396

; <label>:396                                     ; preds = %395
  %397 = load i32, i32* %j, align 4, !tbaa !1
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %j, align 4, !tbaa !1
  br label %376

; <label>:399                                     ; preds = %376
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %i, align 4, !tbaa !1
  br label %372

; <label>:403                                     ; preds = %372
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %404

; <label>:404                                     ; preds = %420, %403
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = icmp slt i32 %405, 3
  br i1 %406, label %407, label %423

; <label>:407                                     ; preds = %404
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [3 x i8], [3 x i8]* @g_459, i32 0, i64 %409
  %411 = load i8, i8* %410, align 1, !tbaa !9
  %412 = sext i8 %411 to i64
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %413)
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

; <label>:416                                     ; preds = %407
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %417)
  br label %419

; <label>:419                                     ; preds = %416, %407
  br label %420

; <label>:420                                     ; preds = %419
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %i, align 4, !tbaa !1
  br label %404

; <label>:423                                     ; preds = %404
  %424 = load i32, i32* @g_461, align 4, !tbaa !1
  %425 = zext i32 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %426)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %427

; <label>:427                                     ; preds = %455, %423
  %428 = load i32, i32* %i, align 4, !tbaa !1
  %429 = icmp slt i32 %428, 5
  br i1 %429, label %430, label %458

; <label>:430                                     ; preds = %427
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %431

; <label>:431                                     ; preds = %451, %430
  %432 = load i32, i32* %j, align 4, !tbaa !1
  %433 = icmp slt i32 %432, 10
  br i1 %433, label %434, label %454

; <label>:434                                     ; preds = %431
  %435 = load i32, i32* %j, align 4, !tbaa !1
  %436 = sext i32 %435 to i64
  %437 = load i32, i32* %i, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [5 x [10 x i32]], [5 x [10 x i32]]* @g_514, i32 0, i64 %438
  %440 = getelementptr inbounds [10 x i32], [10 x i32]* %439, i32 0, i64 %436
  %441 = load i32, i32* %440, align 4, !tbaa !1
  %442 = sext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 %443)
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

; <label>:446                                     ; preds = %434
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = load i32, i32* %j, align 4, !tbaa !1
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %447, i32 %448)
  br label %450

; <label>:450                                     ; preds = %446, %434
  br label %451

; <label>:451                                     ; preds = %450
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %j, align 4, !tbaa !1
  br label %431

; <label>:454                                     ; preds = %431
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %i, align 4, !tbaa !1
  br label %427

; <label>:458                                     ; preds = %427
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:459                                     ; preds = %499, %458
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = icmp slt i32 %460, 5
  br i1 %461, label %462, label %502

; <label>:462                                     ; preds = %459
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %463

; <label>:463                                     ; preds = %495, %462
  %464 = load i32, i32* %j, align 4, !tbaa !1
  %465 = icmp slt i32 %464, 2
  br i1 %465, label %466, label %498

; <label>:466                                     ; preds = %463
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %467

; <label>:467                                     ; preds = %491, %466
  %468 = load i32, i32* %k, align 4, !tbaa !1
  %469 = icmp slt i32 %468, 1
  br i1 %469, label %470, label %494

; <label>:470                                     ; preds = %467
  %471 = load i32, i32* %k, align 4, !tbaa !1
  %472 = sext i32 %471 to i64
  %473 = load i32, i32* %j, align 4, !tbaa !1
  %474 = sext i32 %473 to i64
  %475 = load i32, i32* %i, align 4, !tbaa !1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [5 x [2 x [1 x i32]]], [5 x [2 x [1 x i32]]]* @g_548, i32 0, i64 %476
  %478 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %477, i32 0, i64 %474
  %479 = getelementptr inbounds [1 x i32], [1 x i32]* %478, i32 0, i64 %472
  %480 = load volatile i32, i32* %479, align 4, !tbaa !1
  %481 = zext i32 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 %482)
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %490

; <label>:485                                     ; preds = %470
  %486 = load i32, i32* %i, align 4, !tbaa !1
  %487 = load i32, i32* %j, align 4, !tbaa !1
  %488 = load i32, i32* %k, align 4, !tbaa !1
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %486, i32 %487, i32 %488)
  br label %490

; <label>:490                                     ; preds = %485, %470
  br label %491

; <label>:491                                     ; preds = %490
  %492 = load i32, i32* %k, align 4, !tbaa !1
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %k, align 4, !tbaa !1
  br label %467

; <label>:494                                     ; preds = %467
  br label %495

; <label>:495                                     ; preds = %494
  %496 = load i32, i32* %j, align 4, !tbaa !1
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %j, align 4, !tbaa !1
  br label %463

; <label>:498                                     ; preds = %463
  br label %499

; <label>:499                                     ; preds = %498
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:502                                     ; preds = %459
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %519, %502
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = icmp slt i32 %504, 9
  br i1 %505, label %506, label %522

; <label>:506                                     ; preds = %503
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [9 x i8], [9 x i8]* @g_587, i32 0, i64 %508
  %510 = load i8, i8* %509, align 1, !tbaa !9
  %511 = sext i8 %510 to i64
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %512)
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %518

; <label>:515                                     ; preds = %506
  %516 = load i32, i32* %i, align 4, !tbaa !1
  %517 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %516)
  br label %518

; <label>:518                                     ; preds = %515, %506
  br label %519

; <label>:519                                     ; preds = %518
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:522                                     ; preds = %503
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %523

; <label>:523                                     ; preds = %539, %522
  %524 = load i32, i32* %i, align 4, !tbaa !1
  %525 = icmp slt i32 %524, 1
  br i1 %525, label %526, label %542

; <label>:526                                     ; preds = %523
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [1 x i8], [1 x i8]* @g_647, i32 0, i64 %528
  %530 = load volatile i8, i8* %529, align 1, !tbaa !9
  %531 = zext i8 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %532)
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %538

; <label>:535                                     ; preds = %526
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %536)
  br label %538

; <label>:538                                     ; preds = %535, %526
  br label %539

; <label>:539                                     ; preds = %538
  %540 = load i32, i32* %i, align 4, !tbaa !1
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %i, align 4, !tbaa !1
  br label %523

; <label>:542                                     ; preds = %523
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 731884353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %543)
  %544 = load i8, i8* @g_661, align 1, !tbaa !9
  %545 = sext i8 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %546)
  %547 = load i64, i64* @g_662, align 8, !tbaa !7
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %547, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %548)
  %549 = load i16, i16* @g_663, align 2, !tbaa !10
  %550 = sext i16 %549 to i64
  %551 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %550, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %551)
  %552 = load i16, i16* @g_664, align 2, !tbaa !10
  %553 = zext i16 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %554)
  %555 = load i16, i16* @g_681, align 2, !tbaa !10
  %556 = sext i16 %555 to i64
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %556, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %557)
  %558 = load i32, i32* @g_712, align 4, !tbaa !1
  %559 = sext i32 %558 to i64
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %559, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %560)
  %561 = load i64, i64* @g_713, align 8, !tbaa !7
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %562)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %563

; <label>:563                                     ; preds = %591, %542
  %564 = load i32, i32* %i, align 4, !tbaa !1
  %565 = icmp slt i32 %564, 7
  br i1 %565, label %566, label %594

; <label>:566                                     ; preds = %563
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %567

; <label>:567                                     ; preds = %587, %566
  %568 = load i32, i32* %j, align 4, !tbaa !1
  %569 = icmp slt i32 %568, 6
  br i1 %569, label %570, label %590

; <label>:570                                     ; preds = %567
  %571 = load i32, i32* %j, align 4, !tbaa !1
  %572 = sext i32 %571 to i64
  %573 = load i32, i32* %i, align 4, !tbaa !1
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [7 x [6 x i32]], [7 x [6 x i32]]* @g_748, i32 0, i64 %574
  %576 = getelementptr inbounds [6 x i32], [6 x i32]* %575, i32 0, i64 %572
  %577 = load i32, i32* %576, align 4, !tbaa !1
  %578 = zext i32 %577 to i64
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 %579)
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %586

; <label>:582                                     ; preds = %570
  %583 = load i32, i32* %i, align 4, !tbaa !1
  %584 = load i32, i32* %j, align 4, !tbaa !1
  %585 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %583, i32 %584)
  br label %586

; <label>:586                                     ; preds = %582, %570
  br label %587

; <label>:587                                     ; preds = %586
  %588 = load i32, i32* %j, align 4, !tbaa !1
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %j, align 4, !tbaa !1
  br label %567

; <label>:590                                     ; preds = %567
  br label %591

; <label>:591                                     ; preds = %590
  %592 = load i32, i32* %i, align 4, !tbaa !1
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %i, align 4, !tbaa !1
  br label %563

; <label>:594                                     ; preds = %563
  %595 = load i32, i32* @g_905, align 4, !tbaa !1
  %596 = sext i32 %595 to i64
  %597 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %596, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %597)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %598

; <label>:598                                     ; preds = %614, %594
  %599 = load i32, i32* %i, align 4, !tbaa !1
  %600 = icmp slt i32 %599, 7
  br i1 %600, label %601, label %617

; <label>:601                                     ; preds = %598
  %602 = load i32, i32* %i, align 4, !tbaa !1
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [7 x i32], [7 x i32]* @g_974, i32 0, i64 %603
  %605 = load i32, i32* %604, align 4, !tbaa !1
  %606 = sext i32 %605 to i64
  %607 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %606, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %607)
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %613

; <label>:610                                     ; preds = %601
  %611 = load i32, i32* %i, align 4, !tbaa !1
  %612 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %611)
  br label %613

; <label>:613                                     ; preds = %610, %601
  br label %614

; <label>:614                                     ; preds = %613
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %i, align 4, !tbaa !1
  br label %598

; <label>:617                                     ; preds = %598
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %618

; <label>:618                                     ; preds = %658, %617
  %619 = load i32, i32* %i, align 4, !tbaa !1
  %620 = icmp slt i32 %619, 8
  br i1 %620, label %621, label %661

; <label>:621                                     ; preds = %618
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %622

; <label>:622                                     ; preds = %654, %621
  %623 = load i32, i32* %j, align 4, !tbaa !1
  %624 = icmp slt i32 %623, 7
  br i1 %624, label %625, label %657

; <label>:625                                     ; preds = %622
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %626

; <label>:626                                     ; preds = %650, %625
  %627 = load i32, i32* %k, align 4, !tbaa !1
  %628 = icmp slt i32 %627, 4
  br i1 %628, label %629, label %653

; <label>:629                                     ; preds = %626
  %630 = load i32, i32* %k, align 4, !tbaa !1
  %631 = sext i32 %630 to i64
  %632 = load i32, i32* %j, align 4, !tbaa !1
  %633 = sext i32 %632 to i64
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [8 x [7 x [4 x i32]]], [8 x [7 x [4 x i32]]]* @g_1003, i32 0, i64 %635
  %637 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* %636, i32 0, i64 %633
  %638 = getelementptr inbounds [4 x i32], [4 x i32]* %637, i32 0, i64 %631
  %639 = load i32, i32* %638, align 4, !tbaa !1
  %640 = zext i32 %639 to i64
  %641 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %640, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 %641)
  %642 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %649

; <label>:644                                     ; preds = %629
  %645 = load i32, i32* %i, align 4, !tbaa !1
  %646 = load i32, i32* %j, align 4, !tbaa !1
  %647 = load i32, i32* %k, align 4, !tbaa !1
  %648 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %645, i32 %646, i32 %647)
  br label %649

; <label>:649                                     ; preds = %644, %629
  br label %650

; <label>:650                                     ; preds = %649
  %651 = load i32, i32* %k, align 4, !tbaa !1
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %k, align 4, !tbaa !1
  br label %626

; <label>:653                                     ; preds = %626
  br label %654

; <label>:654                                     ; preds = %653
  %655 = load i32, i32* %j, align 4, !tbaa !1
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %j, align 4, !tbaa !1
  br label %622

; <label>:657                                     ; preds = %622
  br label %658

; <label>:658                                     ; preds = %657
  %659 = load i32, i32* %i, align 4, !tbaa !1
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* %i, align 4, !tbaa !1
  br label %618

; <label>:661                                     ; preds = %618
  %662 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %662)
  %663 = load volatile i16, i16* @g_1158, align 2, !tbaa !10
  %664 = zext i16 %663 to i64
  %665 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %664, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %665)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %666

; <label>:666                                     ; preds = %682, %661
  %667 = load i32, i32* %i, align 4, !tbaa !1
  %668 = icmp slt i32 %667, 10
  br i1 %668, label %669, label %685

; <label>:669                                     ; preds = %666
  %670 = load i32, i32* %i, align 4, !tbaa !1
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [10 x i8], [10 x i8]* @g_1169, i32 0, i64 %671
  %673 = load volatile i8, i8* %672, align 1, !tbaa !9
  %674 = zext i8 %673 to i64
  %675 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %674, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %675)
  %676 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %681

; <label>:678                                     ; preds = %669
  %679 = load i32, i32* %i, align 4, !tbaa !1
  %680 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %679)
  br label %681

; <label>:681                                     ; preds = %678, %669
  br label %682

; <label>:682                                     ; preds = %681
  %683 = load i32, i32* %i, align 4, !tbaa !1
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %i, align 4, !tbaa !1
  br label %666

; <label>:685                                     ; preds = %666
  %686 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %687 = zext i32 %686 to i64
  %688 = xor i64 %687, 4294967295
  %689 = trunc i64 %688 to i32
  %690 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %689, i32 %690)
  %691 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  %692 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
  %693 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %693) #1
  %694 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
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
  %l_11 = alloca i32, align 4
  %l_684 = alloca i32*, align 8
  %l_1152 = alloca i32, align 4
  %l_1236 = alloca i16*, align 8
  %l_1235 = alloca i16**, align 8
  %l_1237 = alloca i16***, align 8
  %l_10 = alloca i16, align 2
  %l_1044 = alloca i32, align 4
  %l_1062 = alloca i32, align 4
  %l_1083 = alloca [3 x i16], align 2
  %l_1097 = alloca i16, align 2
  %l_1140 = alloca i64*, align 8
  %l_1155 = alloca i32, align 4
  %l_1212 = alloca [6 x i32*], align 16
  %l_1233 = alloca [5 x [3 x i8]], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_43 = alloca i32*, align 8
  %l_576 = alloca [1 x i32*], align 8
  %l_1046 = alloca i32, align 4
  %l_1082 = alloca i8, align 1
  %l_1107 = alloca [5 x [8 x [6 x i8]]], align 16
  %l_1164 = alloca i32, align 4
  %l_1224 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 1707948128, i32* %l_11, align 4, !tbaa !1
  %2 = bitcast i32** %l_684 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_6, i32** %l_684, align 8, !tbaa !5
  %3 = bitcast i32* %l_1152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -132639382, i32* %l_1152, align 4, !tbaa !1
  %4 = bitcast i16** %l_1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* null, i16** %l_1236, align 8, !tbaa !5
  %5 = bitcast i16*** %l_1235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16** %l_1236, i16*** %l_1235, align 8, !tbaa !5
  %6 = bitcast i16**** %l_1237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16*** %l_1235, i16**** %l_1237, align 8, !tbaa !5
  store i32 0, i32* getelementptr inbounds ([2 x [8 x i32]], [2 x [8 x i32]]* @g_2, i32 0, i64 0, i64 7), align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %94, %0
  %8 = load i32, i32* getelementptr inbounds ([2 x [8 x i32]], [2 x [8 x i32]]* @g_2, i32 0, i64 0, i64 7), align 4, !tbaa !1
  %9 = icmp ne i32 %8, 29
  br i1 %9, label %10, label %97

; <label>:10                                      ; preds = %7
  %11 = bitcast i16* %l_10 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 -13090, i16* %l_10, align 2, !tbaa !10
  %12 = bitcast i32* %l_1044 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -3, i32* %l_1044, align 4, !tbaa !1
  %13 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1161713755, i32* %l_1062, align 4, !tbaa !1
  %14 = bitcast [3 x i16]* %l_1083 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %14) #1
  %15 = bitcast i16* %l_1097 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 3, i16* %l_1097, align 2, !tbaa !10
  %16 = bitcast i64** %l_1140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* @g_662, i64** %l_1140, align 8, !tbaa !5
  %17 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 1, i32* %l_1155, align 4, !tbaa !1
  %18 = bitcast [6 x i32*]* %l_1212 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %18) #1
  %19 = bitcast [5 x [3 x i8]]* %l_1233 to i8*
  call void @llvm.lifetime.start(i64 15, i8* %19) #1
  %20 = bitcast [5 x [3 x i8]]* %l_1233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* getelementptr inbounds ([5 x [3 x i8]], [5 x [3 x i8]]* @func_1.l_1233, i32 0, i32 0, i32 0), i64 15, i32 1, i1 false)
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %30, %10
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %33

; <label>:26                                      ; preds = %23
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i16], [3 x i16]* %l_1083, i32 0, i64 %28
  store i16 -15176, i16* %29, align 2, !tbaa !10
  br label %30

; <label>:30                                      ; preds = %26
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %i, align 4, !tbaa !1
  br label %23

; <label>:33                                      ; preds = %23
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:34                                      ; preds = %41, %33
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_1212, i32 0, i64 %39
  store i32* @g_7, i32** %40, align 8, !tbaa !5
  br label %41

; <label>:41                                      ; preds = %37
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %i, align 4, !tbaa !1
  br label %34

; <label>:44                                      ; preds = %34
  store i32 0, i32* @g_6, align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %79, %44
  %46 = load i32, i32* @g_6, align 4, !tbaa !1
  %47 = icmp sle i32 %46, 2
  br i1 %47, label %48, label %82

; <label>:48                                      ; preds = %45
  %49 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i32* @g_7, i32** %l_43, align 8, !tbaa !5
  %50 = bitcast [1 x i32*]* %l_576 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = bitcast i32* %l_1046 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 1, i32* %l_1046, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1082) #1
  store i8 1, i8* %l_1082, align 1, !tbaa !9
  %52 = bitcast [5 x [8 x [6 x i8]]]* %l_1107 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %52) #1
  %53 = bitcast [5 x [8 x [6 x i8]]]* %l_1107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @func_1.l_1107, i32 0, i32 0, i32 0, i32 0), i64 240, i32 16, i1 false)
  %54 = bitcast i32* %l_1164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 -1, i32* %l_1164, align 4, !tbaa !1
  %55 = bitcast i64* %l_1224 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i64 -5673582223903743224, i64* %l_1224, align 8, !tbaa !7
  %56 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %66, %48
  %60 = load i32, i32* %i1, align 4, !tbaa !1
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %69

; <label>:62                                      ; preds = %59
  %63 = load i32, i32* %i1, align 4, !tbaa !1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_576, i32 0, i64 %64
  store i32* @g_7, i32** %65, align 8, !tbaa !5
  br label %66

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %i1, align 4, !tbaa !1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i1, align 4, !tbaa !1
  br label %59

; <label>:69                                      ; preds = %59
  %70 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i64* %l_1224 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %l_1164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [5 x [8 x [6 x i8]]]* %l_1107 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %75) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1082) #1
  %76 = bitcast i32* %l_1046 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast [1 x i32*]* %l_576 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32** %l_43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  br label %79

; <label>:79                                      ; preds = %69
  %80 = load i32, i32* @g_6, align 4, !tbaa !1
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @g_6, align 4, !tbaa !1
  br label %45

; <label>:82                                      ; preds = %45
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast [5 x [3 x i8]]* %l_1233 to i8*
  call void @llvm.lifetime.end(i64 15, i8* %85) #1
  %86 = bitcast [6 x i32*]* %l_1212 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %86) #1
  %87 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i64** %l_1140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i16* %l_1097 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %89) #1
  %90 = bitcast [3 x i16]* %l_1083 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %90) #1
  %91 = bitcast i32* %l_1062 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %l_1044 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i16* %l_10 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %93) #1
  br label %94

; <label>:94                                      ; preds = %82
  %95 = load i32, i32* getelementptr inbounds ([2 x [8 x i32]], [2 x [8 x i32]]* @g_2, i32 0, i64 0, i64 7), align 4, !tbaa !1
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds ([2 x [8 x i32]], [2 x [8 x i32]]* @g_2, i32 0, i64 0, i64 7), align 4, !tbaa !1
  br label %7

; <label>:97                                      ; preds = %7
  %98 = load i32***, i32**** @g_335, align 8, !tbaa !5
  %99 = load i32**, i32*** %98, align 8, !tbaa !5
  %100 = load i32*, i32** %99, align 8, !tbaa !5
  %101 = load i32***, i32**** @g_335, align 8, !tbaa !5
  %102 = load i32**, i32*** %101, align 8, !tbaa !5
  store i32* %100, i32** %102, align 8, !tbaa !5
  %103 = load i16**, i16*** %l_1235, align 8, !tbaa !5
  %104 = load i16***, i16**** %l_1237, align 8, !tbaa !5
  store i16** %103, i16*** %104, align 8, !tbaa !5
  %105 = load volatile i16***, i16**** @g_1238, align 8, !tbaa !5
  store i16** %103, i16*** %105, align 8, !tbaa !5
  %106 = load i32*, i32** %l_684, align 8, !tbaa !5
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = trunc i32 %107 to i16
  %109 = bitcast i16**** %l_1237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast i16*** %l_1235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i16** %l_1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %l_1152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32** %l_684 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %l_11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  ret i16 %108
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i32 0, i32 0), i32 %3)
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
