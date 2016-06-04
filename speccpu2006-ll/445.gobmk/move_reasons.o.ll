; ModuleID = 'engine/move_reasons.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_data = type { float, float, float, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, [120 x i32], i32, i32, float }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.move_reason = type { i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.Reason_set = type { i32, i32, i32, i32 }
%struct.discard_rule = type { [120 x i32], i32 (i32, i32)*, i32, [160 x i8] }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }

@next_reason = common global i32 0, align 4
@next_connection = common global i32 0, align 4
@next_either = common global i32 0, align 4
@next_all = common global i32 0, align 4
@next_eye = common global i32 0, align 4
@next_lunch = common global i32 0, align 4
@board = external global [421 x i8], align 16
@move = common global [400 x %struct.move_data] zeroinitializer, align 16
@replacement_map = common global [400 x i32] zeroinitializer, align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@worm = external global [400 x %struct.worm_data], align 16
@.str = private unnamed_addr constant [22 x i8] c"engine/move_reasons.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ON_BOARD1(eater)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(food)\00", align 1
@lunch_dragon = common global [240 x i32] zeroinitializer, align 16
@lunch_worm = common global [240 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"next_lunch < 2*19*19/3\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@move_reasons = common global [1000 x %struct.move_reason] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"IS_STONE(board[what])\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(ww)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(w1)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(w2)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"worm[w1].color == worm[w2].color\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(dr)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ON_BOARD1(eyespace)\00", align 1
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"ON_BOARD1(target1)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"ON_BOARD1(target2)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"reason1 == 1\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"reason2 == 1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"reason1 == 2\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"reason2 == 2\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"target2 != NO_MOVE\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(from)\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(to)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"board[to] == EMPTY\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"dd == to || to == replacement_map[dd]\00", align 1
@verbose = external global i32, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"Move at %1m is replaced by %1m.\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Cyclic point redistribution detected.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"board[pos] == EMPTY\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"IS_STONE(board[affected])\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"board[affected] == OTHER_COLOR(color)\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"board[affected] == color\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"mark-changed-dragon\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"((board[affected]) == 1 || (board[affected]) == 2)\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"new_status == 2\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"\0AMove reasons:\0A\00", align 1
@board_size = external global i32, align 4
@.str.34 = private unnamed_addr constant [27 x i8] c"Move at %1m attacks %1m%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c" (defenseless)\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Move at %1m attacks %1m%s with good ko\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Move at %1m attacks %1m%s with bad ko\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Move at %1m defends %1m\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Move at %1m defends %1m with good ko\0A\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Move at %1m defends %1m with bad ko\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Move at %1m threatens to attack %1m\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Move at %1m threatens to defend %1m\0A\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"%1m found alive but not certainly, %1m defends it again\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"%1m found dead but not certainly, %1m attacks it again\0A\00", align 1
@conn_worm1 = common global [962 x i32] zeroinitializer, align 16
@conn_worm2 = common global [962 x i32] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [34 x i8] c"Move at %1m connects %1m and %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Move at %1m cuts %1m and %1m\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Move at %1m is an antisuji\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Move at %1m wins semeai for %1m\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"Move at %1m threatens to win semeai for %1m\0A\00", align 1
@eyes = common global [180 x i32] zeroinitializer, align 16
@eyecolor = common global [180 x i32] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [41 x i8] c"Move at %1m vital eye point for eye %1m\0A\00", align 1
@either_data = common global [100 x %struct.Reason_set] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [37 x i8] c"Move at %1m either %s %1m or %s %1m\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"attacks\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"defends\00", align 1
@all_data = common global [100 x %struct.Reason_set] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"Move at %1m both %s %1m and %s %1m\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Move at %1m owl-attacks %1m\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"Move at %1m owl-attacks %1m with good ko\0A\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-attacks %1m with bad ko\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"Move at %1m owl-attacks %1m (captures %1m)\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"Move at %1m owl-defends %1m\0A\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Move at %1m owl-defends %1m with good ko\0A\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-defends %1m with bad ko\0A\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-defends %1m (loses %1m)\0A\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-threatens to attack %1m\0A\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-threatens to defend %1m\0A\00", align 1
@.str.66 = private unnamed_addr constant [59 x i8] c"Move at %1m owl-prevents a threat to attack or defend %1m\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Move at %1m expands territory\0A\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"Move at %1m expands moyo\0A\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Move at %1m is an invasion\0A\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"Move at %1m strategically attacks %1m\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"Move at %1m strategically defends %1m\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"Move at %1m captures something\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"Move at %1m defends against combination attack\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"Move at %1m strategically or tactically unsafe\0A\00", align 1
@discard_rules = internal global [9 x %struct.discard_rule] [%struct.discard_rule { [120 x i32] [i32 2, i32 4, i32 6, i32 3, i32 8, i32 10, i32 12, i32 9, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @owl_move_vs_worm_known, i32 1, [160 x i8] c"  %1m: 0.0 - (threat of) attack/defense of %1m (owl attack/defense as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 18, i32 19, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @owl_move_reason_known, i32 3, [160 x i8] c"  %1m: 0.0 - (threat to) win semai involving %1m (owl move as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 18, i32 19, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @tactical_move_vs_whole_dragon_known, i32 3, [160 x i8] c"  %1m: 0.0 - (threat to) win semai involving %1m (tactical move as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 100, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @either_worm_attackable, i32 3, [160 x i8] c"  %1m: 0.0 - 'attack either' is redundant at %1m (direct att./def. as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 102, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @one_of_both_attackable, i32 3, [160 x i8] c"  %1m: 0.0 - 'defend both' is redundant at %1m (direct att./def. as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 2, i32 4, i32 6, i32 3, i32 8, i32 10, i32 12, i32 9, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @concerns_inessential_worm, i32 1, [160 x i8] c"  %1m: 0.0 - attack/defense of %1m (inessential)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 26, i32 28, i32 30, i32 27, i32 32, i32 34, i32 36, i32 42, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @concerns_inessential_dragon, i32 3, [160 x i8] c"  %1m: 0.0 - (uncertain) owl attack/defense of %1m (inessential)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* @move_is_marked_unsafe, i32 3, [160 x i8] c"  %1m: 0.0 - tactical move vs %1m (unsafe move)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.discard_rule { [120 x i32] [i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 (i32, i32)* null, i32 0, [160 x i8] zeroinitializer }], align 16
@debug = external global i32, align 4
@stackp = external global i32, align 4
@.str.75 = private unnamed_addr constant [66 x i8] c"Move reason at %1m (type=%d, what=%d) dropped because list full.\0A\00", align 1
@.str.76 = private unnamed_addr constant [73 x i8] c"Move reason at %1m (type=%d, what=%d) dropped because global list full.\0A\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"next_connection < 4*2*19*19/3\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(eye)\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"next_eye < 19*19/2\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"next_either < 100\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"next_all < 100\00", align 1
@dragon2 = external global %struct.dragon_data2*, align 8

; Function Attrs: nounwind uwtable
define void @clear_move_reasons() #0 {
entry:
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* @next_reason, align 4
  store i32 0, i32* @next_connection, align 4
  store i32 0, i32* @next_either, align 4
  store i32 0, i32* @next_all, align 4
  store i32 0, i32* @next_eye, align 4
  store i32 0, i32* @next_lunch, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom3
  %value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx4, i32 0, i32 0
  store float 0.000000e+00, float* %value, align 4
  %4 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom5
  %final_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx6, i32 0, i32 1
  store float 0.000000e+00, float* %final_value, align 4
  %5 = load i32, i32* %pos, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom7
  %additional_ko_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx8, i32 0, i32 2
  store float 0.000000e+00, float* %additional_ko_value, align 4
  %6 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %territorial_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 3
  store float 0.000000e+00, float* %territorial_value, align 4
  %7 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom11
  %strategical_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx12, i32 0, i32 4
  store float 0.000000e+00, float* %strategical_value, align 4
  %8 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom13
  %maxpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx14, i32 0, i32 5
  store float 0.000000e+00, float* %maxpos_shape, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom15
  %numpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx16, i32 0, i32 7
  store i32 0, i32* %numpos_shape, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom17
  %maxneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx18, i32 0, i32 6
  store float 0.000000e+00, float* %maxneg_shape, align 4
  %11 = load i32, i32* %pos, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom19
  %numneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx20, i32 0, i32 8
  store i32 0, i32* %numneg_shape, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom21
  %followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx22, i32 0, i32 9
  store float 0.000000e+00, float* %followup_value, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom23
  %influence_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx24, i32 0, i32 10
  store float 0.000000e+00, float* %influence_followup_value, align 4
  %14 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom25
  %reverse_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx26, i32 0, i32 11
  store float 0.000000e+00, float* %reverse_followup_value, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom27
  %secondary_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx28, i32 0, i32 12
  store float 0.000000e+00, float* %secondary_value, align 4
  %16 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom29
  %min_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx30, i32 0, i32 13
  store float 0.000000e+00, float* %min_value, align 4
  %17 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %17 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom31
  %max_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx32, i32 0, i32 14
  store float 3.610000e+03, float* %max_value, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom33
  %min_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx34, i32 0, i32 15
  store float 0.000000e+00, float* %min_territory, align 4
  %19 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom35
  %max_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx36, i32 0, i32 16
  store float 3.610000e+03, float* %max_territory, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.then
  %20 = load i32, i32* %k, align 4
  %cmp38 = icmp slt i32 %20, 120
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %21 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %21 to i64
  %22 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom42
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx43, i32 0, i32 18
  %arrayidx44 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom41
  store i32 -1, i32* %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.40
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  %24 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom45
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx46, i32 0, i32 19
  store i32 0, i32* %move_safety, align 4
  %25 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %25 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom47
  %worthwhile_threat = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx48, i32 0, i32 20
  store i32 0, i32* %worthwhile_threat, align 4
  %26 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom49
  %randomness_scaling = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx50, i32 0, i32 17
  store float 1.000000e+00, float* %randomness_scaling, align 4
  %call = call double @gg_drand()
  %conv51 = fptrunc double %call to float
  %27 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %27 to i64
  %arrayidx53 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom52
  %random_number = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx53, i32 0, i32 21
  store float %conv51, float* %random_number, align 4
  %28 = load i32, i32* %pos, align 4
  %idxprom54 = sext i32 %28 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom54
  store i32 0, i32* %arrayidx55, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end
  %29 = load i32, i32* %pos, align 4
  %inc57 = add nsw i32 %29, 1
  store i32 %inc57, i32* %pos, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  ret void
}

declare double @gg_drand() #1

; Function Attrs: nounwind uwtable
define void @add_lunch(i32 %eater, i32 %food) #0 {
entry:
  %eater.addr = alloca i32, align 4
  %food.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %dragon1 = alloca i32, align 4
  %worm1 = alloca i32, align 4
  store i32 %eater, i32* %eater.addr, align 4
  store i32 %food, i32* %food.addr, align 4
  %0 = load i32, i32* %eater.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dragon1, align 4
  %2 = load i32, i32* %food.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %origin3, align 4
  store i32 %3, i32* %worm1, align 4
  %4 = load i32, i32* %eater.addr, align 4
  %cmp = icmp ult i32 %4, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %eater.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %eater.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %eater.addr, align 4
  %rem = srem i32 %8, 20
  %sub8 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %food.addr, align 4
  %cmp9 = icmp ult i32 %9, 421
  br i1 %cmp9, label %land.lhs.true.11, label %if.else.18

land.lhs.true.11:                                 ; preds = %if.end
  %10 = load i32, i32* %food.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp ne i32 %conv14, 3
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.11
  br label %if.end.23

if.else.18:                                       ; preds = %land.lhs.true.11, %if.end
  %12 = load i32, i32* %food.addr, align 4
  %div19 = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div19, 1
  %13 = load i32, i32* %food.addr, align 4
  %rem21 = srem i32 %13, 20
  %sub22 = sub nsw i32 %rem21, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 339, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %sub20, i32 %sub22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.18, %if.then.17
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* @next_lunch, align 4
  %cmp24 = icmp slt i32 %14, %15
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom26
  %17 = load i32, i32* %arrayidx27, align 4
  %18 = load i32, i32* %dragon1, align 4
  %cmp28 = icmp eq i32 %17, %18
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %for.body
  %19 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom31
  %20 = load i32, i32* %arrayidx32, align 4
  %21 = load i32, i32* %worm1, align 4
  %cmp33 = icmp eq i32 %20, %21
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.30
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* @next_lunch, align 4
  %cmp37 = icmp slt i32 %23, 240
  br i1 %cmp37, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %for.end
  br label %if.end.41

if.else.40:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  %24 = load i32, i32* %dragon1, align 4
  %25 = load i32, i32* @next_lunch, align 4
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom42
  store i32 %24, i32* %arrayidx43, align 4
  %26 = load i32, i32* %worm1, align 4
  %27 = load i32, i32* @next_lunch, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom44
  store i32 %26, i32* %arrayidx45, align 4
  %28 = load i32, i32* @next_lunch, align 4
  %inc46 = add nsw i32 %28, 1
  store i32 %inc46, i32* @next_lunch, align 4
  br label %return

return:                                           ; preds = %if.end.41, %if.then.35
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @remove_lunch(i32 %eater, i32 %food) #0 {
entry:
  %eater.addr = alloca i32, align 4
  %food.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %dragon1 = alloca i32, align 4
  %worm1 = alloca i32, align 4
  store i32 %eater, i32* %eater.addr, align 4
  store i32 %food, i32* %food.addr, align 4
  %0 = load i32, i32* %eater.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dragon1, align 4
  %2 = load i32, i32* %food.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %origin3, align 4
  store i32 %3, i32* %worm1, align 4
  %4 = load i32, i32* %eater.addr, align 4
  %cmp = icmp ult i32 %4, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %eater.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp ne i32 %conv, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %eater.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %eater.addr, align 4
  %rem = srem i32 %8, 20
  %sub8 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 363, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %food.addr, align 4
  %cmp9 = icmp ult i32 %9, 421
  br i1 %cmp9, label %land.lhs.true.11, label %if.else.18

land.lhs.true.11:                                 ; preds = %if.end
  %10 = load i32, i32* %food.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp ne i32 %conv14, 3
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %land.lhs.true.11
  br label %if.end.23

if.else.18:                                       ; preds = %land.lhs.true.11, %if.end
  %12 = load i32, i32* %food.addr, align 4
  %div19 = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div19, 1
  %13 = load i32, i32* %food.addr, align 4
  %rem21 = srem i32 %13, 20
  %sub22 = sub nsw i32 %rem21, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 364, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i32 %sub20, i32 %sub22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.18, %if.then.17
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* @next_lunch, align 4
  %cmp24 = icmp slt i32 %14, %15
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom26
  %17 = load i32, i32* %arrayidx27, align 4
  %18 = load i32, i32* %dragon1, align 4
  %cmp28 = icmp eq i32 %17, %18
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %for.body
  %19 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom31
  %20 = load i32, i32* %arrayidx32, align 4
  %21 = load i32, i32* %worm1, align 4
  %cmp33 = icmp eq i32 %20, %21
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.30
  br label %for.end

if.end.36:                                        ; preds = %land.lhs.true.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %22 = load i32, i32* %k, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* @next_lunch, align 4
  %cmp37 = icmp eq i32 %23, %24
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  br label %return

if.end.40:                                        ; preds = %for.end
  %25 = load i32, i32* @next_lunch, align 4
  %sub41 = sub nsw i32 %25, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom42
  %26 = load i32, i32* %arrayidx43, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom44
  store i32 %26, i32* %arrayidx45, align 4
  %28 = load i32, i32* @next_lunch, align 4
  %sub46 = sub nsw i32 %28, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom47
  %29 = load i32, i32* %arrayidx48, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %30 to i64
  %arrayidx50 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom49
  store i32 %29, i32* %arrayidx50, align 4
  %31 = load i32, i32* @next_lunch, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* @next_lunch, align 4
  br label %return

return:                                           ; preds = %if.end.40, %if.then.39
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @move_reason_known(i32 %pos, i32 %type, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 471, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %5, 120
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom7
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx9, align 4
  store i32 %8, i32* %r, align 4
  %9 = load i32, i32* %r, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  %10 = load i32, i32* %r, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom14
  %type16 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx15, i32 0, i32 0
  %11 = load i32, i32* %type16, align 4
  %12 = load i32, i32* %type.addr, align 4
  %cmp17 = icmp eq i32 %11, %12
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.28

land.lhs.true.19:                                 ; preds = %if.end.13
  %13 = load i32, i32* %what.addr, align 4
  %cmp20 = icmp slt i32 %13, 0
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %14 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom22
  %what24 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx23, i32 0, i32 1
  %15 = load i32, i32* %what24, align 4
  %16 = load i32, i32* %what.addr, align 4
  %cmp25 = icmp eq i32 %15, %16
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %land.lhs.true.19
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.27
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @attack_move_reason_known(i32 %pos, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %what.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %what.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %what.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 495, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %what.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  store i32 %7, i32* %what.addr, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %what.addr, align 4
  %call = call i32 @move_reason_known(i32 %8, i32 2, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 5, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load i32, i32* %pos.addr, align 4
  %11 = load i32, i32* %what.addr, align 4
  %call12 = call i32 @move_reason_known(i32 %10, i32 4, i32 %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 4, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %what.addr, align 4
  %call16 = call i32 @move_reason_known(i32 %12, i32 6, i32 %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.14, %if.then.10
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @defense_move_reason_known(i32 %pos, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %what.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %what.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %what.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 513, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %what.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  store i32 %7, i32* %what.addr, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %what.addr, align 4
  %call = call i32 @move_reason_known(i32 %8, i32 8, i32 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 5, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %10 = load i32, i32* %pos.addr, align 4
  %11 = load i32, i32* %what.addr, align 4
  %call12 = call i32 @move_reason_known(i32 %10, i32 10, i32 %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 4, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %what.addr, align 4
  %call16 = call i32 @move_reason_known(i32 %12, i32 12, i32 %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.14, %if.then.10
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @owl_attack_move_reason_known(i32 %pos, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %call = call i32 @move_reason_known(i32 %0, i32 26, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %what.addr, align 4
  %call1 = call i32 @move_reason_known(i32 %2, i32 28, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %what.addr, align 4
  %call5 = call i32 @move_reason_known(i32 %4, i32 30, i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @owl_defense_move_reason_known(i32 %pos, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %call = call i32 @move_reason_known(i32 %0, i32 32, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %what.addr, align 4
  %call1 = call i32 @move_reason_known(i32 %2, i32 34, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 4, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %what.addr, align 4
  %call5 = call i32 @move_reason_known(i32 %4, i32 36, i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @owl_move_reason_known(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %call = call i32 @owl_attack_move_reason_known(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %what.addr, align 4
  %call1 = call i32 @owl_defense_move_reason_known(i32 %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define void @add_attack_move(i32 %pos, i32 %ww, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %ww.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %ww.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %ww.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 652, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %ww.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 3
  %6 = load i32, i32* %origin, align 4
  store i32 %6, i32* %ww.addr, align 4
  %7 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %8, i32 2, i32 %9)
  br label %if.end.19

if.else.9:                                        ; preds = %if.end
  %10 = load i32, i32* %code.addr, align 4
  %cmp10 = icmp eq i32 %10, 4
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %11, i32 4, i32 %12)
  br label %if.end.18

if.else.13:                                       ; preds = %if.else.9
  %13 = load i32, i32* %code.addr, align 4
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.13
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %14, i32 6, i32 %15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_move_reason(i32 %pos, i32 %type, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* @stackp, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.6
  br label %if.end.18

if.else.13:                                       ; preds = %if.then.6
  %8 = load i32, i32* %pos.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 394, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %10 = load i32, i32* %k, align 4
  %cmp20 = icmp slt i32 %10, 120
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %11 to i64
  %12 = load i32, i32* %pos.addr, align 4
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom23
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx24, i32 0, i32 18
  %arrayidx25 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom22
  %13 = load i32, i32* %arrayidx25, align 4
  store i32 %13, i32* %r, align 4
  %14 = load i32, i32* %r, align 4
  %cmp26 = icmp slt i32 %14, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.end

if.end.29:                                        ; preds = %for.body
  %15 = load i32, i32* %r, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom30
  %type32 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx31, i32 0, i32 0
  %16 = load i32, i32* %type32, align 4
  %17 = load i32, i32* %type.addr, align 4
  %cmp33 = icmp eq i32 %16, %17
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.42

land.lhs.true.35:                                 ; preds = %if.end.29
  %18 = load i32, i32* %r, align 4
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom36
  %what38 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx37, i32 0, i32 1
  %19 = load i32, i32* %what38, align 4
  %20 = load i32, i32* %what.addr, align 4
  %cmp39 = icmp eq i32 %19, %20
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.35
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.35, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.28, %for.cond
  %22 = load i32, i32* %k, align 4
  %cmp43 = icmp sge i32 %22, 120
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  %23 = load i32, i32* @debug, align 4
  %and = and i32 %23, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.45
  br label %cond.end

cond.false:                                       ; preds = %if.then.45
  %24 = load i32, i32* %pos.addr, align 4
  %25 = load i32, i32* %type.addr, align 4
  %26 = load i32, i32* %what.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i32 0, i32 0), i32 %24, i32 %25, i32 %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %return

if.end.46:                                        ; preds = %for.end
  %27 = load i32, i32* @next_reason, align 4
  %cmp47 = icmp sge i32 %27, 1000
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %if.end.46
  %28 = load i32, i32* @debug, align 4
  %and50 = and i32 %28, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %cond.false.53, label %cond.true.52

cond.true.52:                                     ; preds = %if.then.49
  br label %cond.end.55

cond.false.53:                                    ; preds = %if.then.49
  %29 = load i32, i32* %pos.addr, align 4
  %30 = load i32, i32* %type.addr, align 4
  %31 = load i32, i32* %what.addr, align 4
  %call54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.76, i32 0, i32 0), i32 %29, i32 %30, i32 %31)
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  br label %return

if.end.56:                                        ; preds = %if.end.46
  %32 = load i32, i32* @next_reason, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %33 to i64
  %34 = load i32, i32* %pos.addr, align 4
  %idxprom58 = sext i32 %34 to i64
  %arrayidx59 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom58
  %reason60 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx59, i32 0, i32 18
  %arrayidx61 = getelementptr inbounds [120 x i32], [120 x i32]* %reason60, i32 0, i64 %idxprom57
  store i32 %32, i32* %arrayidx61, align 4
  %35 = load i32, i32* %type.addr, align 4
  %36 = load i32, i32* @next_reason, align 4
  %idxprom62 = sext i32 %36 to i64
  %arrayidx63 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom62
  %type64 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx63, i32 0, i32 0
  store i32 %35, i32* %type64, align 4
  %37 = load i32, i32* %what.addr, align 4
  %38 = load i32, i32* @next_reason, align 4
  %idxprom65 = sext i32 %38 to i64
  %arrayidx66 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom65
  %what67 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx66, i32 0, i32 1
  store i32 %37, i32* %what67, align 4
  %39 = load i32, i32* @next_reason, align 4
  %idxprom68 = sext i32 %39 to i64
  %arrayidx69 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom68
  %status = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx69, i32 0, i32 2
  store i32 0, i32* %status, align 4
  %40 = load i32, i32* @next_reason, align 4
  %inc70 = add nsw i32 %40, 1
  store i32 %inc70, i32* @next_reason, align 4
  br label %return

return:                                           ; preds = %if.end.56, %cond.end.55, %cond.end, %if.then.41
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_defense_move(i32 %pos, i32 %ww, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %ww.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %ww.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %ww.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 670, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %ww.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 3
  %6 = load i32, i32* %origin, align 4
  store i32 %6, i32* %ww.addr, align 4
  %7 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %8, i32 8, i32 %9)
  br label %if.end.19

if.else.9:                                        ; preds = %if.end
  %10 = load i32, i32* %code.addr, align 4
  %cmp10 = icmp eq i32 %10, 4
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %11, i32 10, i32 %12)
  br label %if.end.18

if.else.13:                                       ; preds = %if.else.9
  %13 = load i32, i32* %code.addr, align 4
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.13
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %ww.addr, align 4
  call void @add_move_reason(i32 %14, i32 12, i32 %15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_attack_threat_move(i32 %pos, i32 %ww, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %ww.addr, align 4
  %cmp = icmp ult i32 %1, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %ww.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %ww.addr, align 4
  %rem = srem i32 %5, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 690, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %ww.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 3
  %8 = load i32, i32* %origin, align 4
  call void @add_move_reason(i32 %6, i32 3, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_attack_threat_move(i32 %pos, i32 %ww) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  %0 = load i32, i32* %ww.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %ww.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %ww.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 699, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load i32, i32* %ww.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  call void @remove_move_reason(i32 %5, i32 3, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_move_reason(i32 %pos, i32 %type, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  store i32 -1, i32* %n, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 439, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %5, 120
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom7
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx9, align 4
  store i32 %8, i32* %r, align 4
  %9 = load i32, i32* %r, align 4
  %cmp10 = icmp slt i32 %9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  %10 = load i32, i32* %r, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom14
  %type16 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx15, i32 0, i32 0
  %11 = load i32, i32* %type16, align 4
  %12 = load i32, i32* %type.addr, align 4
  %cmp17 = icmp eq i32 %11, %12
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %if.end.13
  %13 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom20
  %what22 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx21, i32 0, i32 1
  %14 = load i32, i32* %what22, align 4
  %15 = load i32, i32* %what.addr, align 4
  %cmp23 = icmp eq i32 %14, %15
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.19
  %16 = load i32, i32* %k, align 4
  store i32 %16, i32* %n, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true.19, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %18 = load i32, i32* %n, align 4
  %cmp27 = icmp eq i32 %18, -1
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.end
  br label %return

if.end.30:                                        ; preds = %for.end
  %19 = load i32, i32* %k, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %k, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %20 to i64
  %21 = load i32, i32* %pos.addr, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom32
  %reason34 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx33, i32 0, i32 18
  %arrayidx35 = getelementptr inbounds [120 x i32], [120 x i32]* %reason34, i32 0, i64 %idxprom31
  %22 = load i32, i32* %arrayidx35, align 4
  %23 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %23 to i64
  %24 = load i32, i32* %pos.addr, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom37
  %reason39 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx38, i32 0, i32 18
  %arrayidx40 = getelementptr inbounds [120 x i32], [120 x i32]* %reason39, i32 0, i64 %idxprom36
  store i32 %22, i32* %arrayidx40, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %25 to i64
  %26 = load i32, i32* %pos.addr, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom42
  %reason44 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx43, i32 0, i32 18
  %arrayidx45 = getelementptr inbounds [120 x i32], [120 x i32]* %reason44, i32 0, i64 %idxprom41
  store i32 -1, i32* %arrayidx45, align 4
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_defense_threat_move(i32 %pos, i32 %ww, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %ww.addr, align 4
  %cmp = icmp ult i32 %1, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %ww.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %ww.addr, align 4
  %rem = srem i32 %5, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 712, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %ww.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 3
  %8 = load i32, i32* %origin, align 4
  call void @add_move_reason(i32 %6, i32 9, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_attack_threats(i32 %pos, i32 %max_strings, i32* %strings) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %max_strings.addr = alloca i32, align 4
  %strings.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %num_strings = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %max_strings, i32* %max_strings.addr, align 4
  store i32* %strings, i32** %strings.addr, align 8
  store i32 0, i32* %num_strings, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 120
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %6, 3
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom8
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx9, i32 0, i32 1
  %8 = load i32, i32* %what, align 4
  %9 = load i32, i32* %num_strings, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_strings, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32*, i32** %strings.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %10, i64 %idxprom10
  store i32 %8, i32* %arrayidx11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %11 = load i32, i32* %num_strings, align 4
  %12 = load i32, i32* %max_strings.addr, align 4
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  br label %for.end

if.end.15:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %13 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %if.then, %for.cond
  %14 = load i32, i32* %num_strings, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @get_defense_threats(i32 %pos, i32 %max_strings, i32* %strings) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %max_strings.addr = alloca i32, align 4
  %strings.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %num_strings = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %max_strings, i32* %max_strings.addr, align 4
  store i32* %strings, i32** %strings.addr, align 8
  store i32 0, i32* %num_strings, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 120
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %6, 9
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom8
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx9, i32 0, i32 1
  %8 = load i32, i32* %what, align 4
  %9 = load i32, i32* %num_strings, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_strings, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32*, i32** %strings.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %10, i64 %idxprom10
  store i32 %8, i32* %arrayidx11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  %11 = load i32, i32* %num_strings, align 4
  %12 = load i32, i32* %max_strings.addr, align 4
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  br label %for.end

if.end.15:                                        ; preds = %if.end.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %13 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %if.then, %for.cond
  %14 = load i32, i32* %num_strings, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @get_biggest_owl_target(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %biggest_target = alloca i32, align 4
  %target_size = alloca float, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 -1, i32* %biggest_target, align 4
  store float 0.000000e+00, float* %target_size, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 120
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  switch i32 %6, label %sw.epilog [
    i32 26, label %sw.bb
    i32 28, label %sw.bb
    i32 30, label %sw.bb
    i32 27, label %sw.bb
    i32 32, label %sw.bb
    i32 34, label %sw.bb
    i32 36, label %sw.bb
    i32 33, label %sw.bb
    i32 38, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %7 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom6
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx7, i32 0, i32 1
  %8 = load i32, i32* %what, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 4
  %9 = load float, float* %effective_size, align 4
  %10 = load float, float* %target_size, align 4
  %cmp10 = fcmp ogt float %9, %10
  br i1 %cmp10, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %sw.bb
  %11 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom12
  %what14 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx13, i32 0, i32 1
  %12 = load i32, i32* %what14, align 4
  store i32 %12, i32* %biggest_target, align 4
  %13 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom15
  %what17 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx16, i32 0, i32 1
  %14 = load i32, i32* %what17, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom18
  %effective_size20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx19, i32 0, i32 4
  %15 = load float, float* %effective_size20, align 4
  store float %15, float* %target_size, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.11, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load i32, i32* %biggest_target, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @add_connection_move(i32 %pos, i32 %w1, i32 %w2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %w1.addr = alloca i32, align 4
  %w2.addr = alloca i32, align 4
  %connection = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i32 %w2, i32* %w2.addr, align 4
  %0 = load i32, i32* %w1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %w1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %w1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %w1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 811, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %w2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %w2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %w2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %w2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 812, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %w1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom19
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx20, i32 0, i32 0
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %w2.addr, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %color23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 0
  %13 = load i32, i32* %color23, align 4
  %cmp24 = icmp eq i32 %11, %13
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.18
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.18
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 813, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %14 = load i32, i32* %w1.addr, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 3
  %15 = load i32, i32* %origin, align 4
  %16 = load i32, i32* %w2.addr, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom31
  %origin33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx32, i32 0, i32 3
  %17 = load i32, i32* %origin33, align 4
  %cmp34 = icmp eq i32 %15, %17
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.28
  br label %return

if.end.37:                                        ; preds = %if.end.28
  %18 = load i32, i32* %w1.addr, align 4
  %idxprom38 = sext i32 %18 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %origin40 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 3
  %19 = load i32, i32* %origin40, align 4
  %20 = load i32, i32* %w2.addr, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom41
  %origin43 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx42, i32 0, i32 3
  %21 = load i32, i32* %origin43, align 4
  %call = call i32 @find_connection(i32 %19, i32 %21)
  store i32 %call, i32* %connection, align 4
  %22 = load i32, i32* %pos.addr, align 4
  %23 = load i32, i32* %connection, align 4
  call void @add_move_reason(i32 %22, i32 14, i32 %23)
  br label %return

return:                                           ; preds = %if.end.37, %if.then.36
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_connection(i32 %worm1, i32 %worm2) #0 {
entry:
  %retval = alloca i32, align 4
  %worm1.addr = alloca i32, align 4
  %worm2.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %worm1, i32* %worm1.addr, align 4
  store i32 %worm2, i32* %worm2.addr, align 4
  %0 = load i32, i32* %worm1.addr, align 4
  %1 = load i32, i32* %worm2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %worm1.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %worm2.addr, align 4
  store i32 %3, i32* %worm1.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %worm2.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* @next_connection, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32, i32* %worm1.addr, align 4
  %cmp2 = icmp eq i32 %8, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %12 = load i32, i32* %worm2.addr, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %k, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* @next_connection, align 4
  %cmp8 = icmp slt i32 %15, 962
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.end
  br label %if.end.10

if.else:                                          ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %16 = load i32, i32* %worm1.addr, align 4
  %17 = load i32, i32* @next_connection, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom11
  store i32 %16, i32* %arrayidx12, align 4
  %18 = load i32, i32* %worm2.addr, align 4
  %19 = load i32, i32* @next_connection, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom13
  store i32 %18, i32* %arrayidx14, align 4
  %20 = load i32, i32* @next_connection, align 4
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* @next_connection, align 4
  %21 = load i32, i32* @next_connection, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @add_cut_move(i32 %pos, i32 %w1, i32 %w2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %w1.addr = alloca i32, align 4
  %w2.addr = alloca i32, align 4
  %connection = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i32 %w2, i32* %w2.addr, align 4
  %0 = load i32, i32* %w1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %w1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %w1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %w1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 831, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %w2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %w2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %w2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %w2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 832, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %w1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom19
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx20, i32 0, i32 0
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %w2.addr, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %color23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 0
  %13 = load i32, i32* %color23, align 4
  %cmp24 = icmp eq i32 %11, %13
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.end.18
  br label %if.end.28

if.else.27:                                       ; preds = %if.end.18
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 833, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %14 = load i32, i32* %w1.addr, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 3
  %15 = load i32, i32* %origin, align 4
  %16 = load i32, i32* %w2.addr, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom31
  %origin33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx32, i32 0, i32 3
  %17 = load i32, i32* %origin33, align 4
  %cmp34 = icmp eq i32 %15, %17
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.28
  br label %return

if.end.37:                                        ; preds = %if.end.28
  %18 = load i32, i32* %w1.addr, align 4
  %idxprom38 = sext i32 %18 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %origin40 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 3
  %19 = load i32, i32* %origin40, align 4
  %20 = load i32, i32* %w2.addr, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom41
  %origin43 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx42, i32 0, i32 3
  %21 = load i32, i32* %origin43, align 4
  %call = call i32 @find_connection(i32 %19, i32 %21)
  store i32 %call, i32* %connection, align 4
  %22 = load i32, i32* %w1.addr, align 4
  %idxprom44 = sext i32 %22 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom44
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx45, i32 0, i32 16
  %arrayidx46 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %23 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp ne i32 %23, 0
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false

land.lhs.true.49:                                 ; preds = %if.end.37
  %24 = load i32, i32* %w1.addr, align 4
  %idxprom50 = sext i32 %24 to i64
  %arrayidx51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom50
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx51, i32 0, i32 18
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %25 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp eq i32 %25, 0
  br i1 %cmp53, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.49, %if.end.37
  %26 = load i32, i32* %w2.addr, align 4
  %idxprom55 = sext i32 %26 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom55
  %attack_codes57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx56, i32 0, i32 16
  %arrayidx58 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes57, i32 0, i64 0
  %27 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp ne i32 %27, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.69

land.lhs.true.61:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %w2.addr, align 4
  %idxprom62 = sext i32 %28 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom62
  %defense_codes64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx63, i32 0, i32 18
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes64, i32 0, i64 0
  %29 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %29, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.61, %land.lhs.true.49
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.61, %lor.lhs.false
  %30 = load i32, i32* %pos.addr, align 4
  %31 = load i32, i32* %connection, align 4
  call void @add_move_reason(i32 %30, i32 16, i32 %31)
  br label %return

return:                                           ; preds = %if.end.69, %if.then.68, %if.then.36
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_antisuji_move(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  call void @add_move_reason(i32 %0, i32 70, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_semeai_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 873, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load i32, i32* %dr.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 2
  %7 = load i32, i32* %origin, align 4
  call void @add_move_reason(i32 %5, i32 18, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_semeai_threat(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 887, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load i32, i32* %dr.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 2
  %7 = load i32, i32* %origin, align 4
  call void @add_move_reason(i32 %5, i32 19, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_vital_eye_move(i32 %pos, i32 %eyespace, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %eyespace.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %eye = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %eyespace, i32* %eyespace.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %eyespace.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %eyespace.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %eyespace.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %eyespace.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 900, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.6, label %if.else.9

if.then.6:                                        ; preds = %if.end
  %6 = load i32, i32* %eyespace.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom7
  %origin = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx8, i32 0, i32 3
  %7 = load i32, i32* %origin, align 4
  %8 = load i32, i32* %color.addr, align 4
  %call = call i32 @find_eye(i32 %7, i32 %8)
  store i32 %call, i32* %eye, align 4
  br label %if.end.14

if.else.9:                                        ; preds = %if.end
  %9 = load i32, i32* %eyespace.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom10
  %origin12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx11, i32 0, i32 3
  %10 = load i32, i32* %origin12, align 4
  %11 = load i32, i32* %color.addr, align 4
  %call13 = call i32 @find_eye(i32 %10, i32 %11)
  store i32 %call13, i32* %eye, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.6
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %eye, align 4
  call void @add_move_reason(i32 %12, i32 54, i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_eye(i32 %eye, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %eye.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %eye, i32* %eye.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %eye.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %eye.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %eye.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %eye.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* @next_eye, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %eye.addr, align 4
  %cmp8 = icmp eq i32 %8, %9
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %12 = load i32, i32* %color.addr, align 4
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.10
  %13 = load i32, i32* %k, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* @next_eye, align 4
  %cmp17 = icmp slt i32 %15, 180
  br i1 %cmp17, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %for.end
  br label %if.end.21

if.else.20:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  %16 = load i32, i32* %eye.addr, align 4
  %17 = load i32, i32* @next_eye, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i32 0, i64 %idxprom22
  store i32 %16, i32* %arrayidx23, align 4
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* @next_eye, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i32 0, i64 %idxprom24
  store i32 %18, i32* %arrayidx25, align 4
  %20 = load i32, i32* @next_eye, align 4
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, i32* @next_eye, align 4
  %21 = load i32, i32* @next_eye, align 4
  %sub27 = sub nsw i32 %21, 1
  store i32 %sub27, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.15
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @add_either_move(i32 %pos, i32 %reason1, i32 %target1, i32 %reason2, i32 %target2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %reason1.addr = alloca i32, align 4
  %target1.addr = alloca i32, align 4
  %reason2.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %what1 = alloca i32, align 4
  %what2 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %reason1, i32* %reason1.addr, align 4
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %reason2, i32* %reason2.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  store i32 0, i32* %what1, align 4
  store i32 0, i32* %what2, align 4
  %0 = load i32, i32* %target1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %target1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %target1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %target1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 931, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %target2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %target2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %target2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %target2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 932, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %reason1.addr, align 4
  %11 = load i32, i32* %reason2.addr, align 4
  %cmp19 = icmp eq i32 %10, %11
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %if.end.18
  %12 = load i32, i32* %target1.addr, align 4
  %13 = load i32, i32* %target2.addr, align 4
  %cmp22 = icmp eq i32 %12, %13
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.21, %if.end.18
  %14 = load i32, i32* %reason1.addr, align 4
  %cmp26 = icmp eq i32 %14, 1
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  br label %if.end.30

if.else.29:                                       ; preds = %if.end.25
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 937, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %15 = load i32, i32* %reason2.addr, align 4
  %cmp31 = icmp eq i32 %15, 1
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.30
  br label %if.end.35

if.else.34:                                       ; preds = %if.end.30
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 938, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  %16 = load i32, i32* %reason1.addr, align 4
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.35
  %17 = load i32, i32* %target1.addr, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 3
  %18 = load i32, i32* %origin, align 4
  store i32 %18, i32* %what1, align 4
  %19 = load i32, i32* %target1.addr, align 4
  %idxprom38 = sext i32 %19 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 16
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %20 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp ne i32 %20, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.50

land.lhs.true.43:                                 ; preds = %sw.bb
  %21 = load i32, i32* %target1.addr, align 4
  %idxprom44 = sext i32 %21 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom44
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx45, i32 0, i32 18
  %arrayidx46 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %22 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %22, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.43
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.43, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.50
  %23 = load i32, i32* %reason2.addr, align 4
  switch i32 %23, label %sw.default.70 [
    i32 1, label %sw.bb.51
  ]

sw.bb.51:                                         ; preds = %sw.epilog
  %24 = load i32, i32* %target2.addr, align 4
  %idxprom52 = sext i32 %24 to i64
  %arrayidx53 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom52
  %origin54 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx53, i32 0, i32 3
  %25 = load i32, i32* %origin54, align 4
  store i32 %25, i32* %what2, align 4
  %26 = load i32, i32* %target2.addr, align 4
  %idxprom55 = sext i32 %26 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom55
  %attack_codes57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx56, i32 0, i32 16
  %arrayidx58 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes57, i32 0, i64 0
  %27 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp ne i32 %27, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.69

land.lhs.true.61:                                 ; preds = %sw.bb.51
  %28 = load i32, i32* %target2.addr, align 4
  %idxprom62 = sext i32 %28 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom62
  %defense_codes64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx63, i32 0, i32 18
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes64, i32 0, i64 0
  %29 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %29, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.61
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.61, %sw.bb.51
  br label %sw.epilog.71

sw.default.70:                                    ; preds = %sw.epilog
  br label %sw.epilog.71

sw.epilog.71:                                     ; preds = %sw.default.70, %if.end.69
  %30 = load i32, i32* %reason1.addr, align 4
  %31 = load i32, i32* %what1, align 4
  %32 = load i32, i32* %reason2.addr, align 4
  %33 = load i32, i32* %what2, align 4
  %call = call i32 @find_either_data(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %call, i32* %index, align 4
  %34 = load i32, i32* %pos.addr, align 4
  %35 = load i32, i32* %index, align 4
  call void @add_move_reason(i32 %34, i32 100, i32 %35)
  br label %return

return:                                           ; preds = %sw.epilog.71, %if.then.68, %if.then.49, %if.then.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_either_data(i32 %reason1, i32 %what1, i32 %reason2, i32 %what2) #0 {
entry:
  %retval = alloca i32, align 4
  %reason1.addr = alloca i32, align 4
  %what1.addr = alloca i32, align 4
  %reason2.addr = alloca i32, align 4
  %what2.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %reason1, i32* %reason1.addr, align 4
  store i32 %what1, i32* %what1.addr, align 4
  store i32 %reason2, i32* %reason2.addr, align 4
  store i32 %what2, i32* %what2.addr, align 4
  %0 = load i32, i32* %what1.addr, align 4
  %1 = load i32, i32* %what2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %what1.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %what2.addr, align 4
  store i32 %3, i32* %what1.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %what2.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* @next_either, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom
  %reason12 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %reason12, align 4
  %9 = load i32, i32* %reason1.addr, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom4
  %what16 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx5, i32 0, i32 1
  %11 = load i32, i32* %what16, align 4
  %12 = load i32, i32* %what1.addr, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.19

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom9
  %reason211 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %reason211, align 4
  %15 = load i32, i32* %reason2.addr, align 4
  %cmp12 = icmp eq i32 %14, %15
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom14
  %what216 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx15, i32 0, i32 3
  %17 = load i32, i32* %what216, align 4
  %18 = load i32, i32* %what2.addr, align 4
  %cmp17 = icmp eq i32 %17, %18
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %k, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* @next_either, align 4
  %cmp20 = icmp slt i32 %21, 100
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.end
  br label %if.end.22

if.else:                                          ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %22 = load i32, i32* %reason1.addr, align 4
  %23 = load i32, i32* @next_either, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom23
  %reason125 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx24, i32 0, i32 0
  store i32 %22, i32* %reason125, align 4
  %24 = load i32, i32* %what1.addr, align 4
  %25 = load i32, i32* @next_either, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom26
  %what128 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx27, i32 0, i32 1
  store i32 %24, i32* %what128, align 4
  %26 = load i32, i32* %reason2.addr, align 4
  %27 = load i32, i32* @next_either, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom29
  %reason231 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx30, i32 0, i32 2
  store i32 %26, i32* %reason231, align 4
  %28 = load i32, i32* %what2.addr, align 4
  %29 = load i32, i32* @next_either, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom32
  %what234 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx33, i32 0, i32 3
  store i32 %28, i32* %what234, align 4
  %30 = load i32, i32* @next_either, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* @next_either, align 4
  %31 = load i32, i32* @next_either, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @add_all_move(i32 %pos, i32 %reason1, i32 %target1, i32 %reason2, i32 %target2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %reason1.addr = alloca i32, align 4
  %target1.addr = alloca i32, align 4
  %reason2.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %what1 = alloca i32, align 4
  %what2 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %reason1, i32* %reason1.addr, align 4
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %reason2, i32* %reason2.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  store i32 0, i32* %what1, align 4
  store i32 0, i32* %what2, align 4
  %0 = load i32, i32* %target1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %target1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %target1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %target1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1002, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %target2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %target2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %target2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %target2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1003, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %reason1.addr, align 4
  %11 = load i32, i32* %reason2.addr, align 4
  %cmp19 = icmp eq i32 %10, %11
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %if.end.18
  %12 = load i32, i32* %target1.addr, align 4
  %13 = load i32, i32* %target2.addr, align 4
  %cmp22 = icmp eq i32 %12, %13
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.21, %if.end.18
  %14 = load i32, i32* %reason1.addr, align 4
  %cmp26 = icmp eq i32 %14, 2
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.end.25
  br label %if.end.30

if.else.29:                                       ; preds = %if.end.25
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1008, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.then.28
  %15 = load i32, i32* %reason2.addr, align 4
  %cmp31 = icmp eq i32 %15, 2
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.30
  br label %if.end.35

if.else.34:                                       ; preds = %if.end.30
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1009, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  %16 = load i32, i32* %reason1.addr, align 4
  switch i32 %16, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.35
  %17 = load i32, i32* %target1.addr, align 4
  %idxprom36 = sext i32 %17 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 3
  %18 = load i32, i32* %origin, align 4
  store i32 %18, i32* %what1, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load i32, i32* %reason2.addr, align 4
  switch i32 %19, label %sw.default.42 [
    i32 2, label %sw.bb.38
  ]

sw.bb.38:                                         ; preds = %sw.epilog
  %20 = load i32, i32* %target2.addr, align 4
  %idxprom39 = sext i32 %20 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom39
  %origin41 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx40, i32 0, i32 3
  %21 = load i32, i32* %origin41, align 4
  store i32 %21, i32* %what2, align 4
  br label %sw.epilog.43

sw.default.42:                                    ; preds = %sw.epilog
  br label %sw.epilog.43

sw.epilog.43:                                     ; preds = %sw.default.42, %sw.bb.38
  %22 = load i32, i32* %reason1.addr, align 4
  %23 = load i32, i32* %what1, align 4
  %24 = load i32, i32* %reason2.addr, align 4
  %25 = load i32, i32* %what2, align 4
  %call = call i32 @find_all_data(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %call, i32* %index, align 4
  %26 = load i32, i32* %pos.addr, align 4
  %27 = load i32, i32* %index, align 4
  call void @add_move_reason(i32 %26, i32 102, i32 %27)
  br label %return

return:                                           ; preds = %sw.epilog.43, %if.then.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_all_data(i32 %reason1, i32 %what1, i32 %reason2, i32 %what2) #0 {
entry:
  %retval = alloca i32, align 4
  %reason1.addr = alloca i32, align 4
  %what1.addr = alloca i32, align 4
  %reason2.addr = alloca i32, align 4
  %what2.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %reason1, i32* %reason1.addr, align 4
  store i32 %what1, i32* %what1.addr, align 4
  store i32 %reason2, i32* %reason2.addr, align 4
  store i32 %what2, i32* %what2.addr, align 4
  %0 = load i32, i32* %what1.addr, align 4
  %1 = load i32, i32* %what2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %what1.addr, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32, i32* %what2.addr, align 4
  store i32 %3, i32* %what1.addr, align 4
  %4 = load i32, i32* %tmp, align 4
  store i32 %4, i32* %what2.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* @next_all, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom
  %reason12 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %reason12, align 4
  %9 = load i32, i32* %reason1.addr, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom4
  %what16 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx5, i32 0, i32 1
  %11 = load i32, i32* %what16, align 4
  %12 = load i32, i32* %what1.addr, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.19

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom9
  %reason211 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %reason211, align 4
  %15 = load i32, i32* %reason2.addr, align 4
  %cmp12 = icmp eq i32 %14, %15
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom14
  %what216 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx15, i32 0, i32 3
  %17 = load i32, i32* %what216, align 4
  %18 = load i32, i32* %what2.addr, align 4
  %cmp17 = icmp eq i32 %17, %18
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.13
  %19 = load i32, i32* %k, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* @next_all, align 4
  %cmp20 = icmp slt i32 %21, 100
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.end
  br label %if.end.22

if.else:                                          ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %22 = load i32, i32* %reason1.addr, align 4
  %23 = load i32, i32* @next_all, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom23
  %reason125 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx24, i32 0, i32 0
  store i32 %22, i32* %reason125, align 4
  %24 = load i32, i32* %what1.addr, align 4
  %25 = load i32, i32* @next_all, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom26
  %what128 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx27, i32 0, i32 1
  store i32 %24, i32* %what128, align 4
  %26 = load i32, i32* %reason2.addr, align 4
  %27 = load i32, i32* @next_all, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom29
  %reason231 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx30, i32 0, i32 2
  store i32 %26, i32* %reason231, align 4
  %28 = load i32, i32* %what2.addr, align 4
  %29 = load i32, i32* @next_all, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom32
  %what234 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx33, i32 0, i32 3
  store i32 %28, i32* %what234, align 4
  %30 = load i32, i32* @next_all, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* @next_all, align 4
  %31 = load i32, i32* @next_all, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.18
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define void @add_gain_move(i32 %pos, i32 %target1, i32 %target2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %target1.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %what1 = alloca i32, align 4
  %what2 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  %0 = load i32, i32* %target1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %what1, align 4
  %2 = load i32, i32* %target2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %origin3, align 4
  store i32 %3, i32* %what2, align 4
  %4 = load i32, i32* %what1, align 4
  %5 = load i32, i32* %what2, align 4
  %call = call i32 @find_pair_data(i32 %4, i32 %5)
  store i32 %call, i32* %index, align 4
  %6 = load i32, i32* %target2.addr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %8, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %index, align 4
  call void @add_move_reason(i32 %9, i32 60, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_pair_data(i32 %what1, i32 %what2) #0 {
entry:
  %retval = alloca i32, align 4
  %what1.addr = alloca i32, align 4
  %what2.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %what1, i32* %what1.addr, align 4
  store i32 %what2, i32* %what2.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* @next_either, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom
  %what11 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %what11, align 4
  %4 = load i32, i32* %what1.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom3
  %what25 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx4, i32 0, i32 3
  %6 = load i32, i32* %what25, align 4
  %7 = load i32, i32* %what2.addr, align 4
  %cmp6 = icmp eq i32 %6, %7
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, i32* %k, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* @next_either, align 4
  %cmp7 = icmp slt i32 %10, 100
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  br label %if.end.9

if.else:                                          ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %11 = load i32, i32* %what1.addr, align 4
  %12 = load i32, i32* @next_either, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom10
  %what112 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx11, i32 0, i32 1
  store i32 %11, i32* %what112, align 4
  %13 = load i32, i32* %what2.addr, align 4
  %14 = load i32, i32* @next_either, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom13
  %what215 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx14, i32 0, i32 3
  store i32 %13, i32* %what215, align 4
  %15 = load i32, i32* @next_either, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* @next_either, align 4
  %16 = load i32, i32* @next_either, align 4
  %sub = sub nsw i32 %16, 1
  store i32 %sub, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @add_loss_move(i32 %pos, i32 %target1, i32 %target2) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %target1.addr = alloca i32, align 4
  %target2.addr = alloca i32, align 4
  %what1 = alloca i32, align 4
  %what2 = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %target1, i32* %target1.addr, align 4
  store i32 %target2, i32* %target2.addr, align 4
  %0 = load i32, i32* %target1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %what1, align 4
  %2 = load i32, i32* %target2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %origin3, align 4
  store i32 %3, i32* %what2, align 4
  %4 = load i32, i32* %what1, align 4
  %5 = load i32, i32* %what2, align 4
  %call = call i32 @find_pair_data(i32 %4, i32 %5)
  store i32 %call, i32* %index, align 4
  %6 = load i32, i32* %target2.addr, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %7, 20
  %sub = sub nsw i32 %div, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %8, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1050, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %index, align 4
  call void @add_move_reason(i32 %9, i32 62, i32 %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_expand_territory_move(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  call void @add_move_reason(i32 %0, i32 20, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_expand_moyo_move(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  call void @add_move_reason(i32 %0, i32 22, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_invasion_move(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  call void @add_move_reason(i32 %0, i32 24, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_shape_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1095, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %conv4 = fpext float %5 to double
  %cmp5 = fcmp ogt double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then.7, label %if.else.19

if.then.7:                                        ; preds = %if.end
  %6 = load float, float* %value.addr, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %maxpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx9, i32 0, i32 5
  %8 = load float, float* %maxpos_shape, align 4
  %cmp10 = fcmp ogt float %6, %8
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.then.7
  %9 = load float, float* %value.addr, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom13
  %maxpos_shape15 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx14, i32 0, i32 5
  store float %9, float* %maxpos_shape15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.then.7
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom17
  %numpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx18, i32 0, i32 7
  %12 = load i32, i32* %numpos_shape, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %numpos_shape, align 4
  br label %if.end.38

if.else.19:                                       ; preds = %if.end
  %13 = load float, float* %value.addr, align 4
  %conv20 = fpext float %13 to double
  %cmp21 = fcmp olt double %conv20, 0.000000e+00
  br i1 %cmp21, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.else.19
  %14 = load float, float* %value.addr, align 4
  %sub24 = fsub float -0.000000e+00, %14
  store float %sub24, float* %value.addr, align 4
  %15 = load float, float* %value.addr, align 4
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom25
  %maxneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx26, i32 0, i32 6
  %17 = load float, float* %maxneg_shape, align 4
  %cmp27 = fcmp ogt float %15, %17
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %if.then.23
  %18 = load float, float* %value.addr, align 4
  %19 = load i32, i32* %pos.addr, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom30
  %maxneg_shape32 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx31, i32 0, i32 6
  store float %18, float* %maxneg_shape32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %if.then.23
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom34
  %numneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx35, i32 0, i32 8
  %21 = load i32, i32* %numneg_shape, align 4
  %add36 = add nsw i32 %21, 1
  store i32 %add36, i32* %numneg_shape, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.33, %if.else.19
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.16
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_worthwhile_threat_move(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %worthwhile_threat = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 20
  store i32 1, i32* %worthwhile_threat, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_strategical_attack_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %7, i32 44, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_strategical_defense_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %7, i32 46, i32 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_attack_move(i32 %pos, i32 %dr, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %8, i32 26, i32 %9)
  br label %if.end.19

if.else.9:                                        ; preds = %if.end
  %10 = load i32, i32* %code.addr, align 4
  %cmp10 = icmp eq i32 %10, 4
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %11, i32 28, i32 %12)
  br label %if.end.18

if.else.13:                                       ; preds = %if.else.9
  %13 = load i32, i32* %code.addr, align 4
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.13
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %14, i32 30, i32 %15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_defense_move(i32 %pos, i32 %dr, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %7, 5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %8, i32 32, i32 %9)
  br label %if.end.19

if.else.9:                                        ; preds = %if.end
  %10 = load i32, i32* %code.addr, align 4
  %cmp10 = icmp eq i32 %10, 4
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %11, i32 34, i32 %12)
  br label %if.end.18

if.else.13:                                       ; preds = %if.else.9
  %13 = load i32, i32* %code.addr, align 4
  %cmp14 = icmp eq i32 %13, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.13
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %dr.addr, align 4
  call void @add_move_reason(i32 %14, i32 36, i32 %15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_attack_threat_move(i32 %pos, i32 %dr, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %origin, align 4
  store i32 %2, i32* %dr.addr, align 4
  %3 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %3, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %7, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %dr.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %origin8, align 4
  call void @add_move_reason(i32 %8, i32 27, i32 %10)
  %11 = load i32, i32* %pos.addr, align 4
  call void @add_worthwhile_threat_move(i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_uncertain_defense_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %dr.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 2
  %9 = load i32, i32* %origin8, align 4
  call void @add_move_reason(i32 %7, i32 42, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_uncertain_attack_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %dr.addr, align 4
  %2 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %2, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %dr.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 2
  %9 = load i32, i32* %origin8, align 4
  call void @add_move_reason(i32 %7, i32 40, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_defense_threat_move(i32 %pos, i32 %dr, i32 %code) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %1 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %origin, align 4
  store i32 %2, i32* %dr.addr, align 4
  %3 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %3, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %7, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* %dr.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 2
  %10 = load i32, i32* %origin8, align 4
  call void @add_move_reason(i32 %8, i32 33, i32 %10)
  %11 = load i32, i32* %pos.addr, align 4
  call void @add_worthwhile_threat_move(i32 %11)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_my_atari_atari_move(i32 %pos, i32 %size) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  call void @add_move_reason(i32 %0, i32 50, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_your_atari_atari_move(i32 %pos, i32 %size) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  call void @add_move_reason(i32 %0, i32 52, i32 %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_owl_prevent_threat_move(i32 %pos, i32 %dr) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %dr.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %dr, i32* %dr.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load i32, i32* %dr.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 2
  %7 = load i32, i32* %origin, align 4
  call void @add_move_reason(i32 %5, i32 38, i32 %7)
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_followup_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 9
  %7 = load float, float* %followup_value, align 4
  %cmp6 = fcmp ogt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %followup_value11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 9
  store float %8, float* %followup_value11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_reverse_followup_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %reverse_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 11
  %7 = load float, float* %reverse_followup_value, align 4
  %cmp6 = fcmp ogt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %reverse_followup_value11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 11
  store float %8, float* %reverse_followup_value11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @set_minimum_move_value(i32 %pos, float %value) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1300, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %min_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 13
  %7 = load float, float* %min_value, align 4
  %cmp6 = fcmp ogt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %min_value11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 13
  store float %8, float* %min_value11, align 4
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.8
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @set_maximum_move_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %max_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 14
  %7 = load float, float* %max_value, align 4
  %cmp6 = fcmp olt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %max_value11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 14
  store float %8, float* %max_value11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_minimum_territorial_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1325, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %min_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 15
  %7 = load float, float* %min_territory, align 4
  %cmp6 = fcmp ogt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %min_territory11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 15
  store float %8, float* %min_territory11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_maximum_territorial_value(i32 %pos, float %value) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %value, float* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load float, float* %value.addr, align 4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom4
  %max_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx5, i32 0, i32 16
  %7 = load float, float* %max_territory, align 4
  %cmp6 = fcmp olt float %5, %7
  br i1 %cmp6, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %8 = load float, float* %value.addr, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %max_territory11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 16
  store float %8, float* %max_territory11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_replacement_move(i32 %from, i32 %to) #0 {
entry:
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %cc = alloca i32, align 4
  %pos = alloca i32, align 4
  %dd = alloca i32, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* %from.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %from.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %from.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %to.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %to.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %to.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %to.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1352, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %from.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.18
  br label %for.end

if.end.25:                                        ; preds = %if.end.18
  %12 = load i32, i32* %to.addr, align 4
  %idxprom26 = sext i32 %12 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %13 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.25
  br label %if.end.37

if.else.32:                                       ; preds = %if.end.25
  %14 = load i32, i32* %to.addr, align 4
  %div33 = sdiv i32 %14, 20
  %sub34 = sub nsw i32 %div33, 1
  %15 = load i32, i32* %to.addr, align 4
  %rem35 = srem i32 %15, 20
  %sub36 = sub nsw i32 %rem35, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1356, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i32 %sub34, i32 %sub36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.31
  %16 = load i32, i32* %to.addr, align 4
  %idxprom38 = sext i32 %16 to i64
  %arrayidx39 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom38
  %17 = load i32, i32* %arrayidx39, align 4
  store i32 %17, i32* %cc, align 4
  %18 = load i32, i32* %from.addr, align 4
  %idxprom40 = sext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom40
  %19 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %19, 0
  br i1 %cmp42, label %if.then.44, label %if.end.60

if.then.44:                                       ; preds = %if.end.37
  %20 = load i32, i32* %from.addr, align 4
  %idxprom45 = sext i32 %20 to i64
  %arrayidx46 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom45
  %21 = load i32, i32* %arrayidx46, align 4
  store i32 %21, i32* %dd, align 4
  %22 = load i32, i32* %dd, align 4
  %23 = load i32, i32* %to.addr, align 4
  %cmp47 = icmp eq i32 %22, %23
  br i1 %cmp47, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.44
  %24 = load i32, i32* %to.addr, align 4
  %25 = load i32, i32* %dd, align 4
  %idxprom49 = sext i32 %25 to i64
  %arrayidx50 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom49
  %26 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp eq i32 %24, %26
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false, %if.then.44
  br label %if.end.59

if.else.54:                                       ; preds = %lor.lhs.false
  %27 = load i32, i32* %from.addr, align 4
  %div55 = sdiv i32 %27, 20
  %sub56 = sub nsw i32 %div55, 1
  %28 = load i32, i32* %from.addr, align 4
  %rem57 = srem i32 %28, 20
  %sub58 = sub nsw i32 %rem57, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1367, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i32 0, i32 0), i32 %sub56, i32 %sub58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.54, %if.then.53
  br label %for.end

if.end.60:                                        ; preds = %if.end.37
  %29 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.60
  br label %cond.end

cond.false:                                       ; preds = %if.end.60
  %30 = load i32, i32* %from.addr, align 4
  %31 = load i32, i32* %to.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i32 %30, i32 %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %32 = load i32, i32* %cc, align 4
  %33 = load i32, i32* %from.addr, align 4
  %cmp61 = icmp eq i32 %32, %33
  br i1 %cmp61, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %cond.end
  %call64 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  %34 = load i32, i32* %from.addr, align 4
  %div65 = sdiv i32 %34, 20
  %sub66 = sub nsw i32 %div65, 1
  %35 = load i32, i32* %from.addr, align 4
  %rem67 = srem i32 %35, 20
  %sub68 = sub nsw i32 %rem67, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 %sub66, i32 %sub68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %cond.end
  %36 = load i32, i32* %cc, align 4
  %cmp70 = icmp ne i32 %36, 0
  br i1 %cmp70, label %if.then.72, label %if.else.75

if.then.72:                                       ; preds = %if.end.69
  %37 = load i32, i32* %cc, align 4
  %38 = load i32, i32* %from.addr, align 4
  %idxprom73 = sext i32 %38 to i64
  %arrayidx74 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom73
  store i32 %37, i32* %arrayidx74, align 4
  br label %if.end.78

if.else.75:                                       ; preds = %if.end.69
  %39 = load i32, i32* %to.addr, align 4
  %40 = load i32, i32* %from.addr, align 4
  %idxprom76 = sext i32 %40 to i64
  %arrayidx77 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom76
  store i32 %39, i32* %arrayidx77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.72
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.78
  %41 = load i32, i32* %pos, align 4
  %cmp79 = icmp slt i32 %41, 400
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %pos, align 4
  %idxprom81 = sext i32 %42 to i64
  %arrayidx82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom81
  %43 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %43 to i32
  %cmp84 = icmp ne i32 %conv83, 3
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.96

land.lhs.true.86:                                 ; preds = %for.body
  %44 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %44 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom87
  %45 = load i32, i32* %arrayidx88, align 4
  %46 = load i32, i32* %from.addr, align 4
  %cmp89 = icmp eq i32 %45, %46
  br i1 %cmp89, label %if.then.91, label %if.end.96

if.then.91:                                       ; preds = %land.lhs.true.86
  %47 = load i32, i32* %from.addr, align 4
  %idxprom92 = sext i32 %47 to i64
  %arrayidx93 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom92
  %48 = load i32, i32* %arrayidx93, align 4
  %49 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %49 to i64
  %arrayidx95 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom94
  store i32 %48, i32* %arrayidx95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.91, %land.lhs.true.86, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %50 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %if.end.59, %for.cond
  ret void
}

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @get_saved_worms(i32 %pos, i8* %saved) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %saved.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %what = alloca i32, align 4
  %origin18 = alloca i32, align 4
  %kworm = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %saved, i8** %saved.addr, align 8
  %0 = load i8*, i8** %saved.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 1, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 120
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx2, align 4
  store i32 %4, i32* %r, align 4
  %5 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.57

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %what6 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 1
  %7 = load i32, i32* %what6, align 4
  store i32 %7, i32* %what, align 4
  %8 = load i32, i32* %r, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom7
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx8, i32 0, i32 0
  %9 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %9, 8
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %10 = load i32, i32* %what, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom11
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx12, i32 0, i32 3
  %11 = load i32, i32* %origin, align 4
  %12 = load i8*, i8** %saved.addr, align 8
  call void @mark_string(i32 %11, i8* %12, i8 signext 1)
  br label %if.end.54

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %r, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom13
  %type15 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx14, i32 0, i32 0
  %14 = load i32, i32* %type15, align 4
  %cmp16 = icmp eq i32 %14, 62
  br i1 %cmp16, label %if.then.17, label %if.end.53

if.then.17:                                       ; preds = %if.else
  %15 = load i32, i32* %what, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom19
  %origin21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx20, i32 0, i32 2
  %16 = load i32, i32* %origin21, align 4
  store i32 %16, i32* %origin18, align 4
  %17 = load i32, i32* %what, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom22
  %origin24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx23, i32 0, i32 3
  %18 = load i32, i32* %origin24, align 4
  store i32 %18, i32* %kworm, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.17
  %19 = load i32, i32* %ii, align 4
  %cmp26 = icmp slt i32 %19, 400
  br i1 %cmp26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %20 = load i32, i32* %ii, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %21 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %21 to i32
  %cmp30 = icmp eq i32 %conv, 1
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.27
  %22 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %23 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %23 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body.27
  %24 = load i32, i32* %ii, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom37
  %origin39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx38, i32 0, i32 2
  %25 = load i32, i32* %origin39, align 4
  %26 = load i32, i32* %origin18, align 4
  %cmp40 = icmp eq i32 %25, %26
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.52

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %27 = load i32, i32* %ii, align 4
  %idxprom43 = sext i32 %27 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom43
  %origin45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx44, i32 0, i32 3
  %28 = load i32, i32* %origin45, align 4
  %29 = load i32, i32* %kworm, align 4
  %cmp46 = icmp ne i32 %28, %29
  br i1 %cmp46, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %land.lhs.true.42
  %30 = load i32, i32* %ii, align 4
  %idxprom49 = sext i32 %30 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom49
  %origin51 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx50, i32 0, i32 3
  %31 = load i32, i32* %origin51, align 4
  %32 = load i8*, i8** %saved.addr, align 8
  call void @mark_string(i32 %31, i8* %32, i8 signext 1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %land.lhs.true.42, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %33 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  br label %if.end.53

if.end.53:                                        ; preds = %for.end, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.10
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %34 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %34, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond

for.end.57:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @mark_changed_dragon(i32 %pos, i32 %color, i32 %affected, i32 %affected2, i32 %move_reason_type, i8* %safe_stones, float* %strength, float* %effective_size) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %affected.addr = alloca i32, align 4
  %affected2.addr = alloca i32, align 4
  %move_reason_type.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %effective_size.addr = alloca float*, align 8
  %ii = alloca i32, align 4
  %new_status = alloca i8, align 1
  %result_to_beat = alloca i32, align 4
  %worm_is_safe = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %affected, i32* %affected.addr, align 4
  store i32 %affected2, i32* %affected2.addr, align 4
  store i32 %move_reason_type, i32* %move_reason_type.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store float* %effective_size, float** %effective_size.addr, align 8
  store i8 2, i8* %new_status, align 1
  store i32 0, i32* %result_to_beat, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %3, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1451, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %affected.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %affected.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos.addr, align 4
  %div15 = sdiv i32 %8, 20
  %sub16 = sub nsw i32 %div15, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem17 = srem i32 %9, 20
  %sub18 = sub nsw i32 %rem17, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1452, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i32 %sub16, i32 %sub18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.14, %if.then.13
  %10 = load float*, float** %effective_size.addr, align 8
  %cmp20 = icmp ne float* %10, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  %11 = load float*, float** %effective_size.addr, align 8
  store float 0.000000e+00, float* %11, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.19
  %12 = load i32, i32* %move_reason_type.addr, align 4
  switch i32 %12, label %sw.default [
    i32 26, label %sw.bb
    i32 28, label %sw.bb
    i32 30, label %sw.bb
    i32 32, label %sw.bb.44
    i32 34, label %sw.bb.57
    i32 36, label %sw.bb.70
    i32 60, label %sw.bb.83
    i32 62, label %sw.bb.104
  ]

sw.bb:                                            ; preds = %if.end.23, %if.end.23, %if.end.23
  %13 = load i32, i32* %affected.addr, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %15
  %cmp28 = icmp eq i32 %conv26, %sub27
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %sw.bb
  br label %if.end.36

if.else.31:                                       ; preds = %sw.bb
  %16 = load i32, i32* %pos.addr, align 4
  %div32 = sdiv i32 %16, 20
  %sub33 = sub nsw i32 %div32, 1
  %17 = load i32, i32* %pos.addr, align 4
  %rem34 = srem i32 %17, 20
  %sub35 = sub nsw i32 %rem34, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1461, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0), i32 %sub33, i32 %sub35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.31, %if.then.30
  store i8 0, i8* %new_status, align 1
  %18 = load float*, float** %effective_size.addr, align 8
  %cmp37 = icmp ne float* %18, null
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %19 = load i32, i32* %affected.addr, align 4
  %idxprom40 = sext i32 %19 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom40
  %effective_size42 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx41, i32 0, i32 4
  %20 = load float, float* %effective_size42, align 4
  %21 = load float*, float** %effective_size.addr, align 8
  store float %20, float* %21, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.36
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.23
  %22 = load i32, i32* %affected.addr, align 4
  %idxprom45 = sext i32 %22 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %23 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %23 to i32
  %24 = load i32, i32* %color.addr, align 4
  %cmp48 = icmp eq i32 %conv47, %24
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %sw.bb.44
  br label %if.end.56

if.else.51:                                       ; preds = %sw.bb.44
  %25 = load i32, i32* %pos.addr, align 4
  %div52 = sdiv i32 %25, 20
  %sub53 = sub nsw i32 %div52, 1
  %26 = load i32, i32* %pos.addr, align 4
  %rem54 = srem i32 %26, 20
  %sub55 = sub nsw i32 %rem54, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1467, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %sub53, i32 %sub55)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.51, %if.then.50
  store i32 5, i32* %result_to_beat, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.23
  %27 = load i32, i32* %affected.addr, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %28 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %28 to i32
  %29 = load i32, i32* %color.addr, align 4
  %cmp61 = icmp eq i32 %conv60, %29
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %sw.bb.57
  br label %if.end.69

if.else.64:                                       ; preds = %sw.bb.57
  %30 = load i32, i32* %pos.addr, align 4
  %div65 = sdiv i32 %30, 20
  %sub66 = sub nsw i32 %div65, 1
  %31 = load i32, i32* %pos.addr, align 4
  %rem67 = srem i32 %31, 20
  %sub68 = sub nsw i32 %rem67, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1471, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %sub66, i32 %sub68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.64, %if.then.63
  store i32 4, i32* %result_to_beat, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %if.end.23
  %32 = load i32, i32* %affected.addr, align 4
  %idxprom71 = sext i32 %32 to i64
  %arrayidx72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom71
  %33 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %33 to i32
  %34 = load i32, i32* %color.addr, align 4
  %cmp74 = icmp eq i32 %conv73, %34
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %sw.bb.70
  br label %if.end.82

if.else.77:                                       ; preds = %sw.bb.70
  %35 = load i32, i32* %pos.addr, align 4
  %div78 = sdiv i32 %35, 20
  %sub79 = sub nsw i32 %div78, 1
  %36 = load i32, i32* %pos.addr, align 4
  %rem80 = srem i32 %36, 20
  %sub81 = sub nsw i32 %rem80, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1475, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %sub79, i32 %sub81)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.77, %if.then.76
  store i32 1, i32* %result_to_beat, align 4
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.23
  %37 = load i32, i32* %affected.addr, align 4
  %idxprom84 = sext i32 %37 to i64
  %arrayidx85 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom84
  %38 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %38 to i32
  %39 = load i32, i32* %color.addr, align 4
  %sub87 = sub nsw i32 3, %39
  %cmp88 = icmp eq i32 %conv86, %sub87
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %sw.bb.83
  br label %if.end.96

if.else.91:                                       ; preds = %sw.bb.83
  %40 = load i32, i32* %pos.addr, align 4
  %div92 = sdiv i32 %40, 20
  %sub93 = sub nsw i32 %div92, 1
  %41 = load i32, i32* %pos.addr, align 4
  %rem94 = srem i32 %41, 20
  %sub95 = sub nsw i32 %rem94, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1479, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i32 0, i32 0), i32 %sub93, i32 %sub95)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.91, %if.then.90
  store i8 0, i8* %new_status, align 1
  %42 = load float*, float** %effective_size.addr, align 8
  %cmp97 = icmp ne float* %42, null
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %if.end.96
  %43 = load i32, i32* %affected2.addr, align 4
  %idxprom100 = sext i32 %43 to i64
  %arrayidx101 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom100
  %effective_size102 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx101, i32 0, i32 2
  %44 = load float, float* %effective_size102, align 4
  %45 = load float*, float** %effective_size.addr, align 8
  store float %44, float* %45, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %if.end.96
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.23
  %46 = load i32, i32* %affected.addr, align 4
  %idxprom105 = sext i32 %46 to i64
  %arrayidx106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom105
  %47 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %47 to i32
  %48 = load i32, i32* %color.addr, align 4
  %cmp108 = icmp eq i32 %conv107, %48
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %sw.bb.104
  br label %if.end.116

if.else.111:                                      ; preds = %sw.bb.104
  %49 = load i32, i32* %pos.addr, align 4
  %div112 = sdiv i32 %49, 20
  %sub113 = sub nsw i32 %div112, 1
  %50 = load i32, i32* %pos.addr, align 4
  %rem114 = srem i32 %50, 20
  %sub115 = sub nsw i32 %rem114, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1485, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i32 %sub113, i32 %sub115)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.111, %if.then.110
  %51 = load float*, float** %effective_size.addr, align 8
  %cmp117 = icmp ne float* %51, null
  br i1 %cmp117, label %if.then.119, label %if.end.127

if.then.119:                                      ; preds = %if.end.116
  %52 = load i32, i32* %affected.addr, align 4
  %idxprom120 = sext i32 %52 to i64
  %arrayidx121 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom120
  %effective_size122 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx121, i32 0, i32 4
  %53 = load float, float* %effective_size122, align 4
  %54 = load i32, i32* %affected2.addr, align 4
  %idxprom123 = sext i32 %54 to i64
  %arrayidx124 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom123
  %effective_size125 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx124, i32 0, i32 2
  %55 = load float, float* %effective_size125, align 4
  %sub126 = fsub float %53, %55
  %56 = load float*, float** %effective_size.addr, align 8
  store float %sub126, float* %56, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.119, %if.end.116
  store i32 5, i32* %result_to_beat, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.23
  %57 = load i32, i32* %pos.addr, align 4
  %div128 = sdiv i32 %57, 20
  %sub129 = sub nsw i32 %div128, 1
  %58 = load i32, i32* %pos.addr, align 4
  %rem130 = srem i32 %58, 20
  %sub131 = sub nsw i32 %rem130, 1
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1493, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 %sub129, i32 %sub131)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.127, %if.end.103, %if.end.82, %if.end.69, %if.end.56, %if.end.43
  %59 = load i32, i32* %move_reason_type.addr, align 4
  %cmp132 = icmp eq i32 %59, 60
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %sw.epilog
  %60 = load i32, i32* %affected2.addr, align 4
  %61 = load i8*, i8** %safe_stones.addr, align 8
  %62 = load float*, float** %strength.addr, align 8
  %63 = load i8, i8* %new_status, align 1
  call void @mark_changed_string(i32 %60, i8* %61, float* %62, i8 signext %63)
  br label %if.end.179

if.else.135:                                      ; preds = %sw.epilog
  %64 = load i32, i32* %affected.addr, align 4
  %call = call i32 @first_worm_in_dragon(i32 %64)
  store i32 %call, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.135
  %65 = load i32, i32* %ii, align 4
  %cmp136 = icmp ne i32 %65, 0
  br i1 %cmp136, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i8, i8* %new_status, align 1
  %conv138 = sext i8 %66 to i32
  %cmp139 = icmp eq i32 %conv138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %for.body
  %67 = load i32, i32* %ii, align 4
  %68 = load i8*, i8** %safe_stones.addr, align 8
  %69 = load float*, float** %strength.addr, align 8
  %70 = load i8, i8* %new_status, align 1
  call void @mark_changed_string(i32 %67, i8* %68, float* %69, i8 signext %70)
  br label %if.end.173

if.else.142:                                      ; preds = %for.body
  store i32 0, i32* %worm_is_safe, align 4
  %71 = load i32, i32* %ii, align 4
  %idxprom143 = sext i32 %71 to i64
  %arrayidx144 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom143
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx144, i32 0, i32 16
  %arrayidx145 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %72 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp eq i32 %72, 0
  br i1 %cmp146, label %if.then.150, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.else.142
  %73 = load i32, i32* %pos.addr, align 4
  %74 = load i32, i32* %ii, align 4
  %call149 = call i32 @defense_move_reason_known(i32 %73, i32 %74)
  %tobool = icmp ne i32 %call149, 0
  br i1 %tobool, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %lor.lhs.false.148, %if.else.142
  store i32 1, i32* %worm_is_safe, align 4
  br label %if.end.162

if.else.151:                                      ; preds = %lor.lhs.false.148
  %75 = load i32, i32* %pos.addr, align 4
  %76 = load i32, i32* %color.addr, align 4
  %77 = load i32, i32* %ii, align 4
  %call152 = call i32 @trymove(i32 %75, i32 %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 %77, i32 0, i32 0)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.161

if.then.154:                                      ; preds = %if.else.151
  %78 = load i32, i32* %ii, align 4
  %call155 = call i32 @attack(i32 %78, i32* null)
  %sub156 = sub nsw i32 5, %call155
  %79 = load i32, i32* %result_to_beat, align 4
  %cmp157 = icmp sge i32 %sub156, %79
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.then.154
  store i32 1, i32* %worm_is_safe, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.then.154
  call void @popgo()
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.else.151
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.150
  %80 = load i32, i32* %worm_is_safe, align 4
  %tobool163 = icmp ne i32 %80, 0
  br i1 %tobool163, label %if.then.164, label %if.end.172

if.then.164:                                      ; preds = %if.end.162
  %81 = load i32, i32* %ii, align 4
  %82 = load i8*, i8** %safe_stones.addr, align 8
  %83 = load float*, float** %strength.addr, align 8
  %84 = load i8, i8* %new_status, align 1
  call void @mark_changed_string(i32 %81, i8* %82, float* %83, i8 signext %84)
  %85 = load float*, float** %effective_size.addr, align 8
  %cmp165 = icmp ne float* %85, null
  br i1 %cmp165, label %if.then.167, label %if.end.171

if.then.167:                                      ; preds = %if.then.164
  %86 = load i32, i32* %ii, align 4
  %idxprom168 = sext i32 %86 to i64
  %arrayidx169 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom168
  %effective_size170 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx169, i32 0, i32 2
  %87 = load float, float* %effective_size170, align 4
  %88 = load float*, float** %effective_size.addr, align 8
  %89 = load float, float* %88, align 4
  %add = fadd float %89, %87
  store float %add, float* %88, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.167, %if.then.164
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.162
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.141
  br label %for.inc

for.inc:                                          ; preds = %if.end.173
  %90 = load i32, i32* %ii, align 4
  %call174 = call i32 @next_worm_in_dragon(i32 %90)
  store i32 %call174, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %91 = load i32, i32* %move_reason_type.addr, align 4
  %cmp175 = icmp eq i32 %91, 62
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %for.end
  store i8 0, i8* %new_status, align 1
  %92 = load i32, i32* %affected2.addr, align 4
  %93 = load i8*, i8** %safe_stones.addr, align 8
  %94 = load float*, float** %strength.addr, align 8
  %95 = load i8, i8* %new_status, align 1
  call void @mark_changed_string(i32 %92, i8* %93, float* %94, i8 signext %95)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %for.end
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.134
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_changed_string(i32 %affected, i8* %safe_stones, float* %strength, i8 signext %new_status) #0 {
entry:
  %affected.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %strength.addr = alloca float*, align 8
  %new_status.addr = alloca i8, align 1
  %new_strength = alloca float, align 4
  %ii = alloca i32, align 4
  store i32 %affected, i32* %affected.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store float* %strength, float** %strength.addr, align 8
  store i8 %new_status, i8* %new_status.addr, align 1
  %0 = load i32, i32* %affected.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %affected.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1540, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %new_status.addr, align 1
  %conv7 = sext i8 %4 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  store float 0.000000e+00, float* %new_strength, align 4
  br label %if.end.18

if.else.11:                                       ; preds = %if.end
  %5 = load i8, i8* %new_status.addr, align 1
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv12, 2
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.11
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.11
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 1545, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  store float 1.000000e+02, float* %new_strength, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %6 = load i32, i32* %ii, align 4
  %cmp19 = icmp slt i32 %6, 400
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %ii, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %8 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %8 to i32
  %9 = load i32, i32* %affected.addr, align 4
  %idxprom24 = sext i32 %9 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %10 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %10 to i32
  %cmp27 = icmp eq i32 %conv23, %conv26
  br i1 %cmp27, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %ii, align 4
  %12 = load i32, i32* %affected.addr, align 4
  %call = call i32 @same_string(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %land.lhs.true
  %13 = load float, float* %new_strength, align 4
  %14 = load i32, i32* %ii, align 4
  %idxprom30 = sext i32 %14 to i64
  %15 = load float*, float** %strength.addr, align 8
  %arrayidx31 = getelementptr inbounds float, float* %15, i64 %idxprom30
  store float %13, float* %arrayidx31, align 4
  %16 = load i8, i8* %new_status.addr, align 1
  %17 = load i32, i32* %ii, align 4
  %idxprom32 = sext i32 %17 to i64
  %18 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 %idxprom32
  store i8 %16, i8* %arrayidx33, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %19 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @first_worm_in_dragon(i32) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @attack(i32, i32*) #1

declare void @popgo() #1

declare i32 @next_worm_in_dragon(i32) #1

declare i32 @same_string(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @get_saved_dragons(i32 %pos, i8* %saved) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %saved.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %what = alloca i32, align 4
  %ii = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %saved, i8** %saved.addr, align 8
  %0 = load i8*, i8** %saved.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 1, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 120
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx2, align 4
  store i32 %4, i32* %r, align 4
  %5 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.17

if.end:                                           ; preds = %for.body
  %6 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %what6 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 1
  %7 = load i32, i32* %what6, align 4
  store i32 %7, i32* %what, align 4
  %8 = load i32, i32* %r, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom7
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx8, i32 0, i32 0
  %9 = load i32, i32* %type, align 4
  %cmp9 = icmp eq i32 %9, 32
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %10 = load i32, i32* %what, align 4
  %call = call i32 @first_worm_in_dragon(i32 %10)
  store i32 %call, i32* %ii, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %11 = load i32, i32* %ii, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %12 = load i32, i32* %ii, align 4
  %13 = load i8*, i8** %saved.addr, align 8
  call void @mark_string(i32 %12, i8* %13, i8 signext 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %14 = load i32, i32* %ii, align 4
  %call14 = call i32 @next_worm_in_dragon(i32 %14)
  store i32 %call14, i32* %ii, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end.17:                                       ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_safe_stones(i32 %color, i32 %move_pos, i8* %saved_dragons, i8* %saved_worms, i8* %safe_stones) #0 {
entry:
  %color.addr = alloca i32, align 4
  %move_pos.addr = alloca i32, align 4
  %saved_dragons.addr = alloca i8*, align 8
  %saved_worms.addr = alloca i8*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %move_pos, i32* %move_pos.addr, align 4
  store i8* %saved_dragons, i8** %saved_dragons.addr, align 8
  store i8* %saved_worms, i8** %saved_worms.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %3
  %cmp1 = icmp eq i32 %conv, %sub
  br i1 %cmp1, label %if.then, label %if.else.22

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 16
  %5 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32, i32* %pos, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 16
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp ne i32 %7, 0
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom12
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx13, i32 0, i32 18
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %9 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true, %if.then
  %10 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %10 to i64
  %11 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %11, i64 %idxprom18
  store i8 0, i8* %arrayidx19, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %12 to i64
  %13 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %13, i64 %idxprom20
  store i8 1, i8* %arrayidx21, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.80

if.else.22:                                       ; preds = %for.body
  %14 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %15 to i32
  %16 = load i32, i32* %color.addr, align 4
  %cmp26 = icmp eq i32 %conv25, %16
  br i1 %cmp26, label %if.then.28, label %if.else.76

if.then.28:                                       ; preds = %if.else.22
  %17 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %attack_codes31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 16
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes31, i32 0, i64 0
  %18 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp ne i32 %18, 0
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false.45

land.lhs.true.35:                                 ; preds = %if.then.28
  %19 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %defense_codes38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 18
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes38, i32 0, i64 0
  %20 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp eq i32 %20, 0
  br i1 %cmp40, label %if.then.51, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.35
  %21 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %21 to i64
  %22 = load i8*, i8** %saved_worms.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %22, i64 %idxprom43
  %23 = load i8, i8* %arrayidx44, align 1
  %tobool = icmp ne i8 %23, 0
  br i1 %tobool, label %lor.lhs.false.45, label %if.then.51

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.42, %if.then.28
  %24 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %24 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom46
  %status48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx47, i32 0, i32 16
  %25 = load i32, i32* %status48, align 4
  %cmp49 = icmp eq i32 %25, 0
  br i1 %cmp49, label %if.then.51, label %if.else.54

if.then.51:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false.42, %land.lhs.true.35
  %26 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %26 to i64
  %27 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %27, i64 %idxprom52
  store i8 0, i8* %arrayidx53, align 1
  br label %if.end.75

if.else.54:                                       ; preds = %lor.lhs.false.45
  %28 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %28 to i64
  %29 = load i8*, i8** %saved_dragons.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %29, i64 %idxprom55
  %30 = load i8, i8* %arrayidx56, align 1
  %tobool57 = icmp ne i8 %30, 0
  br i1 %tobool57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.else.54
  %31 = load i32, i32* %pos, align 4
  %idxprom59 = sext i32 %31 to i64
  %32 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %32, i64 %idxprom59
  store i8 2, i8* %arrayidx60, align 1
  br label %if.end.74

if.else.61:                                       ; preds = %if.else.54
  %33 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %33 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom62
  %status64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx63, i32 0, i32 16
  %34 = load i32, i32* %status64, align 4
  %cmp65 = icmp eq i32 %34, 2
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.61
  %35 = load i32, i32* %pos, align 4
  %idxprom68 = sext i32 %35 to i64
  %36 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %36, i64 %idxprom68
  store i8 0, i8* %arrayidx69, align 1
  br label %if.end.73

if.else.70:                                       ; preds = %if.else.61
  %37 = load i32, i32* %pos, align 4
  %idxprom71 = sext i32 %37 to i64
  %38 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %38, i64 %idxprom71
  store i8 1, i8* %arrayidx72, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.58
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.51
  br label %if.end.79

if.else.76:                                       ; preds = %if.else.22
  %39 = load i32, i32* %pos, align 4
  %idxprom77 = sext i32 %39 to i64
  %40 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %40, i64 %idxprom77
  store i8 0, i8* %arrayidx78, align 1
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.end.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %41 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %move_pos.addr, align 4
  %idxprom81 = sext i32 %42 to i64
  %arrayidx82 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom81
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx82, i32 0, i32 19
  %43 = load i32, i32* %move_safety, align 4
  %conv83 = trunc i32 %43 to i8
  %44 = load i32, i32* %move_pos.addr, align 4
  %idxprom84 = sext i32 %44 to i64
  %45 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %45, i64 %idxprom84
  store i8 %conv83, i8* %arrayidx85, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @list_move_reasons(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %reason1 = alloca i32, align 4
  %reason2 = alloca i32, align 4
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %worm1 = alloca i32, align 4
  %worm2 = alloca i32, align 4
  %ecolor = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %aa, align 4
  store i32 0, i32* %bb, align 4
  store i32 -1, i32* %worm1, align 4
  store i32 -1, i32* %worm2, align 4
  store i32 0, i32* %ecolor, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0))
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.309, %entry
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.311

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %m, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.307, %for.body
  %3 = load i32, i32* %m, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %for.body.3, label %for.end.308

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %5
  store i32 %add4, i32* %pos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.3
  %6 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %6, 120
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx9, align 4
  store i32 %9, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %cmp10 = icmp slt i32 %10, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  br label %for.end

if.end:                                           ; preds = %for.body.7
  %11 = load i32, i32* %r, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom11
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx12, i32 0, i32 0
  %12 = load i32, i32* %type, align 4
  switch i32 %12, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.20
    i32 6, label %sw.bb.31
    i32 8, label %sw.bb.42
    i32 10, label %sw.bb.47
    i32 12, label %sw.bb.52
    i32 3, label %sw.bb.57
    i32 9, label %sw.bb.57
    i32 42, label %sw.bb.75
    i32 14, label %sw.bb.88
    i32 16, label %sw.bb.88
    i32 70, label %sw.bb.109
    i32 18, label %sw.bb.111
    i32 19, label %sw.bb.116
    i32 54, label %sw.bb.121
    i32 100, label %sw.bb.139
    i32 102, label %sw.bb.169
    i32 26, label %sw.bb.201
    i32 28, label %sw.bb.206
    i32 30, label %sw.bb.211
    i32 60, label %sw.bb.216
    i32 32, label %sw.bb.230
    i32 34, label %sw.bb.235
    i32 36, label %sw.bb.240
    i32 62, label %sw.bb.245
    i32 27, label %sw.bb.259
    i32 33, label %sw.bb.264
    i32 38, label %sw.bb.269
    i32 20, label %sw.bb.274
    i32 22, label %sw.bb.276
    i32 24, label %sw.bb.278
    i32 44, label %sw.bb.280
    i32 46, label %sw.bb.280
    i32 50, label %sw.bb.294
    i32 52, label %sw.bb.296
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load i32, i32* %r, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom13
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx14, i32 0, i32 1
  %14 = load i32, i32* %what, align 4
  store i32 %14, i32* %aa, align 4
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* %aa, align 4
  %17 = load i32, i32* %aa, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom15
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx16, i32 0, i32 18
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %18 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %18, 0
  %cond = select i1 %cmp18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0)
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0), i32 %15, i32 %16, i8* %cond)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.end
  %19 = load i32, i32* %r, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom21
  %what23 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx22, i32 0, i32 1
  %20 = load i32, i32* %what23, align 4
  store i32 %20, i32* %aa, align 4
  %21 = load i32, i32* %pos, align 4
  %22 = load i32, i32* %aa, align 4
  %23 = load i32, i32* %aa, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom24
  %defense_codes26 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx25, i32 0, i32 18
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes26, i32 0, i64 0
  %24 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %24, 0
  %cond29 = select i1 %cmp28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0)
  %call30 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i32 %21, i32 %22, i8* %cond29)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %25 = load i32, i32* %r, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom32
  %what34 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx33, i32 0, i32 1
  %26 = load i32, i32* %what34, align 4
  store i32 %26, i32* %aa, align 4
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %aa, align 4
  %29 = load i32, i32* %aa, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom35
  %defense_codes37 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx36, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes37, i32 0, i64 0
  %30 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp eq i32 %30, 0
  %cond40 = select i1 %cmp39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i32 0, i32 0)
  %call41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0), i32 %27, i32 %28, i8* %cond40)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end
  %31 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom43
  %what45 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx44, i32 0, i32 1
  %32 = load i32, i32* %what45, align 4
  store i32 %32, i32* %aa, align 4
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %aa, align 4
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0), i32 %33, i32 %34)
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.end
  %35 = load i32, i32* %r, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom48
  %what50 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx49, i32 0, i32 1
  %36 = load i32, i32* %what50, align 4
  store i32 %36, i32* %aa, align 4
  %37 = load i32, i32* %pos, align 4
  %38 = load i32, i32* %aa, align 4
  %call51 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), i32 %37, i32 %38)
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end
  %39 = load i32, i32* %r, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom53
  %what55 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx54, i32 0, i32 1
  %40 = load i32, i32* %what55, align 4
  store i32 %40, i32* %aa, align 4
  %41 = load i32, i32* %pos, align 4
  %42 = load i32, i32* %aa, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i32 0, i32 0), i32 %41, i32 %42)
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end, %if.end
  %43 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %43 to i64
  %arrayidx59 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom58
  %what60 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx59, i32 0, i32 1
  %44 = load i32, i32* %what60, align 4
  store i32 %44, i32* %aa, align 4
  %45 = load i32, i32* %r, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom61
  %type63 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx62, i32 0, i32 0
  %46 = load i32, i32* %type63, align 4
  %cmp64 = icmp eq i32 %46, 3
  br i1 %cmp64, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %sw.bb.57
  %47 = load i32, i32* %pos, align 4
  %48 = load i32, i32* %aa, align 4
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0), i32 %47, i32 %48)
  br label %if.end.74

if.else:                                          ; preds = %sw.bb.57
  %49 = load i32, i32* %r, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom67
  %type69 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx68, i32 0, i32 0
  %50 = load i32, i32* %type69, align 4
  %cmp70 = icmp eq i32 %50, 9
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.else
  %51 = load i32, i32* %pos, align 4
  %52 = load i32, i32* %aa, align 4
  %call72 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i32 0, i32 0), i32 %51, i32 %52)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.65
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end
  %53 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %53 to i64
  %arrayidx77 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom76
  %what78 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx77, i32 0, i32 1
  %54 = load i32, i32* %what78, align 4
  store i32 %54, i32* %aa, align 4
  %55 = load i32, i32* %aa, align 4
  %idxprom79 = sext i32 %55 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %56 = load i8, i8* %arrayidx80, align 1
  %conv = zext i8 %56 to i32
  %57 = load i32, i32* %color.addr, align 4
  %cmp81 = icmp eq i32 %conv, %57
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %sw.bb.75
  %58 = load i32, i32* %aa, align 4
  %59 = load i32, i32* %pos, align 4
  %call84 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i32 0, i32 0), i32 %58, i32 %59)
  br label %if.end.87

if.else.85:                                       ; preds = %sw.bb.75
  %60 = load i32, i32* %aa, align 4
  %61 = load i32, i32* %pos, align 4
  %call86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i32 0, i32 0), i32 %60, i32 %61)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.then.83
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.end, %if.end
  %62 = load i32, i32* %r, align 4
  %idxprom89 = sext i32 %62 to i64
  %arrayidx90 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom89
  %what91 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx90, i32 0, i32 1
  %63 = load i32, i32* %what91, align 4
  %idxprom92 = sext i32 %63 to i64
  %arrayidx93 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom92
  %64 = load i32, i32* %arrayidx93, align 4
  store i32 %64, i32* %worm1, align 4
  %65 = load i32, i32* %r, align 4
  %idxprom94 = sext i32 %65 to i64
  %arrayidx95 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom94
  %what96 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx95, i32 0, i32 1
  %66 = load i32, i32* %what96, align 4
  %idxprom97 = sext i32 %66 to i64
  %arrayidx98 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom97
  %67 = load i32, i32* %arrayidx98, align 4
  store i32 %67, i32* %worm2, align 4
  %68 = load i32, i32* %r, align 4
  %idxprom99 = sext i32 %68 to i64
  %arrayidx100 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom99
  %type101 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx100, i32 0, i32 0
  %69 = load i32, i32* %type101, align 4
  %cmp102 = icmp eq i32 %69, 14
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %sw.bb.88
  %70 = load i32, i32* %pos, align 4
  %71 = load i32, i32* %worm1, align 4
  %72 = load i32, i32* %worm2, align 4
  %call105 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0), i32 %70, i32 %71, i32 %72)
  br label %if.end.108

if.else.106:                                      ; preds = %sw.bb.88
  %73 = load i32, i32* %pos, align 4
  %74 = load i32, i32* %worm1, align 4
  %75 = load i32, i32* %worm2, align 4
  %call107 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i32 %73, i32 %74, i32 %75)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.106, %if.then.104
  br label %sw.epilog

sw.bb.109:                                        ; preds = %if.end
  %76 = load i32, i32* %pos, align 4
  %call110 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i32 %76)
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.end
  %77 = load i32, i32* %r, align 4
  %idxprom112 = sext i32 %77 to i64
  %arrayidx113 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom112
  %what114 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx113, i32 0, i32 1
  %78 = load i32, i32* %what114, align 4
  store i32 %78, i32* %aa, align 4
  %79 = load i32, i32* %pos, align 4
  %80 = load i32, i32* %aa, align 4
  %call115 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0), i32 %79, i32 %80)
  br label %sw.epilog

sw.bb.116:                                        ; preds = %if.end
  %81 = load i32, i32* %r, align 4
  %idxprom117 = sext i32 %81 to i64
  %arrayidx118 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom117
  %what119 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx118, i32 0, i32 1
  %82 = load i32, i32* %what119, align 4
  store i32 %82, i32* %aa, align 4
  %83 = load i32, i32* %pos, align 4
  %84 = load i32, i32* %aa, align 4
  %call120 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i32 0, i32 0), i32 %83, i32 %84)
  br label %sw.epilog

sw.bb.121:                                        ; preds = %if.end
  %85 = load i32, i32* %r, align 4
  %idxprom122 = sext i32 %85 to i64
  %arrayidx123 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom122
  %what124 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx123, i32 0, i32 1
  %86 = load i32, i32* %what124, align 4
  %idxprom125 = sext i32 %86 to i64
  %arrayidx126 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i32 0, i64 %idxprom125
  %87 = load i32, i32* %arrayidx126, align 4
  store i32 %87, i32* %aa, align 4
  %88 = load i32, i32* %r, align 4
  %idxprom127 = sext i32 %88 to i64
  %arrayidx128 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom127
  %what129 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx128, i32 0, i32 1
  %89 = load i32, i32* %what129, align 4
  %idxprom130 = sext i32 %89 to i64
  %arrayidx131 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i32 0, i64 %idxprom130
  %90 = load i32, i32* %arrayidx131, align 4
  store i32 %90, i32* %ecolor, align 4
  %91 = load i32, i32* %ecolor, align 4
  %cmp132 = icmp eq i32 %91, 1
  br i1 %cmp132, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %sw.bb.121
  %92 = load i32, i32* %pos, align 4
  %93 = load i32, i32* %aa, align 4
  %call135 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), i32 %92, i32 %93)
  br label %if.end.138

if.else.136:                                      ; preds = %sw.bb.121
  %94 = load i32, i32* %pos, align 4
  %95 = load i32, i32* %aa, align 4
  %call137 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i32 0, i32 0), i32 %94, i32 %95)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.134
  br label %sw.epilog

sw.bb.139:                                        ; preds = %if.end
  %96 = load i32, i32* %r, align 4
  %idxprom140 = sext i32 %96 to i64
  %arrayidx141 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom140
  %what142 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx141, i32 0, i32 1
  %97 = load i32, i32* %what142, align 4
  %idxprom143 = sext i32 %97 to i64
  %arrayidx144 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom143
  %reason1145 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx144, i32 0, i32 0
  %98 = load i32, i32* %reason1145, align 4
  store i32 %98, i32* %reason1, align 4
  %99 = load i32, i32* %r, align 4
  %idxprom146 = sext i32 %99 to i64
  %arrayidx147 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom146
  %what148 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx147, i32 0, i32 1
  %100 = load i32, i32* %what148, align 4
  %idxprom149 = sext i32 %100 to i64
  %arrayidx150 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom149
  %reason2151 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx150, i32 0, i32 2
  %101 = load i32, i32* %reason2151, align 4
  store i32 %101, i32* %reason2, align 4
  %102 = load i32, i32* %r, align 4
  %idxprom152 = sext i32 %102 to i64
  %arrayidx153 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom152
  %what154 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx153, i32 0, i32 1
  %103 = load i32, i32* %what154, align 4
  %idxprom155 = sext i32 %103 to i64
  %arrayidx156 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom155
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx156, i32 0, i32 1
  %104 = load i32, i32* %what1, align 4
  store i32 %104, i32* %worm1, align 4
  %105 = load i32, i32* %r, align 4
  %idxprom157 = sext i32 %105 to i64
  %arrayidx158 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom157
  %what159 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx158, i32 0, i32 1
  %106 = load i32, i32* %what159, align 4
  %idxprom160 = sext i32 %106 to i64
  %arrayidx161 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom160
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx161, i32 0, i32 3
  %107 = load i32, i32* %what2, align 4
  store i32 %107, i32* %worm2, align 4
  %108 = load i32, i32* %pos, align 4
  %109 = load i32, i32* %reason1, align 4
  %cmp162 = icmp eq i32 %109, 1
  %cond164 = select i1 %cmp162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)
  %110 = load i32, i32* %worm1, align 4
  %111 = load i32, i32* %reason2, align 4
  %cmp165 = icmp eq i32 %111, 1
  %cond167 = select i1 %cmp165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)
  %112 = load i32, i32* %worm2, align 4
  %call168 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i32 0, i32 0), i32 %108, i8* %cond164, i32 %110, i8* %cond167, i32 %112)
  br label %sw.epilog

sw.bb.169:                                        ; preds = %if.end
  %113 = load i32, i32* %r, align 4
  %idxprom170 = sext i32 %113 to i64
  %arrayidx171 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom170
  %what172 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx171, i32 0, i32 1
  %114 = load i32, i32* %what172, align 4
  %idxprom173 = sext i32 %114 to i64
  %arrayidx174 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom173
  %reason1175 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx174, i32 0, i32 0
  %115 = load i32, i32* %reason1175, align 4
  store i32 %115, i32* %reason1, align 4
  %116 = load i32, i32* %r, align 4
  %idxprom176 = sext i32 %116 to i64
  %arrayidx177 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom176
  %what178 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx177, i32 0, i32 1
  %117 = load i32, i32* %what178, align 4
  %idxprom179 = sext i32 %117 to i64
  %arrayidx180 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom179
  %reason2181 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx180, i32 0, i32 2
  %118 = load i32, i32* %reason2181, align 4
  store i32 %118, i32* %reason2, align 4
  %119 = load i32, i32* %r, align 4
  %idxprom182 = sext i32 %119 to i64
  %arrayidx183 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom182
  %what184 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx183, i32 0, i32 1
  %120 = load i32, i32* %what184, align 4
  %idxprom185 = sext i32 %120 to i64
  %arrayidx186 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom185
  %what1187 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx186, i32 0, i32 1
  %121 = load i32, i32* %what1187, align 4
  store i32 %121, i32* %worm1, align 4
  %122 = load i32, i32* %r, align 4
  %idxprom188 = sext i32 %122 to i64
  %arrayidx189 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom188
  %what190 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx189, i32 0, i32 1
  %123 = load i32, i32* %what190, align 4
  %idxprom191 = sext i32 %123 to i64
  %arrayidx192 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom191
  %what2193 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx192, i32 0, i32 3
  %124 = load i32, i32* %what2193, align 4
  store i32 %124, i32* %worm2, align 4
  %125 = load i32, i32* %pos, align 4
  %126 = load i32, i32* %reason1, align 4
  %cmp194 = icmp eq i32 %126, 1
  %cond196 = select i1 %cmp194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)
  %127 = load i32, i32* %worm1, align 4
  %128 = load i32, i32* %reason2, align 4
  %cmp197 = icmp eq i32 %128, 1
  %cond199 = select i1 %cmp197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0)
  %129 = load i32, i32* %worm2, align 4
  %call200 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0), i32 %125, i8* %cond196, i32 %127, i8* %cond199, i32 %129)
  br label %sw.epilog

sw.bb.201:                                        ; preds = %if.end
  %130 = load i32, i32* %r, align 4
  %idxprom202 = sext i32 %130 to i64
  %arrayidx203 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom202
  %what204 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx203, i32 0, i32 1
  %131 = load i32, i32* %what204, align 4
  store i32 %131, i32* %aa, align 4
  %132 = load i32, i32* %pos, align 4
  %133 = load i32, i32* %aa, align 4
  %call205 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0), i32 %132, i32 %133)
  br label %sw.epilog

sw.bb.206:                                        ; preds = %if.end
  %134 = load i32, i32* %r, align 4
  %idxprom207 = sext i32 %134 to i64
  %arrayidx208 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom207
  %what209 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx208, i32 0, i32 1
  %135 = load i32, i32* %what209, align 4
  store i32 %135, i32* %aa, align 4
  %136 = load i32, i32* %pos, align 4
  %137 = load i32, i32* %aa, align 4
  %call210 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0), i32 %136, i32 %137)
  br label %sw.epilog

sw.bb.211:                                        ; preds = %if.end
  %138 = load i32, i32* %r, align 4
  %idxprom212 = sext i32 %138 to i64
  %arrayidx213 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom212
  %what214 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx213, i32 0, i32 1
  %139 = load i32, i32* %what214, align 4
  store i32 %139, i32* %aa, align 4
  %140 = load i32, i32* %pos, align 4
  %141 = load i32, i32* %aa, align 4
  %call215 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i32 0, i32 0), i32 %140, i32 %141)
  br label %sw.epilog

sw.bb.216:                                        ; preds = %if.end
  %142 = load i32, i32* %r, align 4
  %idxprom217 = sext i32 %142 to i64
  %arrayidx218 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom217
  %what219 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx218, i32 0, i32 1
  %143 = load i32, i32* %what219, align 4
  %idxprom220 = sext i32 %143 to i64
  %arrayidx221 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom220
  %what1222 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx221, i32 0, i32 1
  %144 = load i32, i32* %what1222, align 4
  store i32 %144, i32* %aa, align 4
  %145 = load i32, i32* %r, align 4
  %idxprom223 = sext i32 %145 to i64
  %arrayidx224 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom223
  %what225 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx224, i32 0, i32 1
  %146 = load i32, i32* %what225, align 4
  %idxprom226 = sext i32 %146 to i64
  %arrayidx227 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom226
  %what2228 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx227, i32 0, i32 3
  %147 = load i32, i32* %what2228, align 4
  store i32 %147, i32* %bb, align 4
  %148 = load i32, i32* %pos, align 4
  %149 = load i32, i32* %aa, align 4
  %150 = load i32, i32* %bb, align 4
  %call229 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.59, i32 0, i32 0), i32 %148, i32 %149, i32 %150)
  br label %sw.epilog

sw.bb.230:                                        ; preds = %if.end
  %151 = load i32, i32* %r, align 4
  %idxprom231 = sext i32 %151 to i64
  %arrayidx232 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom231
  %what233 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx232, i32 0, i32 1
  %152 = load i32, i32* %what233, align 4
  store i32 %152, i32* %aa, align 4
  %153 = load i32, i32* %pos, align 4
  %154 = load i32, i32* %aa, align 4
  %call234 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i32 0, i32 0), i32 %153, i32 %154)
  br label %sw.epilog

sw.bb.235:                                        ; preds = %if.end
  %155 = load i32, i32* %r, align 4
  %idxprom236 = sext i32 %155 to i64
  %arrayidx237 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom236
  %what238 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx237, i32 0, i32 1
  %156 = load i32, i32* %what238, align 4
  store i32 %156, i32* %aa, align 4
  %157 = load i32, i32* %pos, align 4
  %158 = load i32, i32* %aa, align 4
  %call239 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i32 0, i32 0), i32 %157, i32 %158)
  br label %sw.epilog

sw.bb.240:                                        ; preds = %if.end
  %159 = load i32, i32* %r, align 4
  %idxprom241 = sext i32 %159 to i64
  %arrayidx242 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom241
  %what243 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx242, i32 0, i32 1
  %160 = load i32, i32* %what243, align 4
  store i32 %160, i32* %aa, align 4
  %161 = load i32, i32* %pos, align 4
  %162 = load i32, i32* %aa, align 4
  %call244 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i32 %161, i32 %162)
  br label %sw.epilog

sw.bb.245:                                        ; preds = %if.end
  %163 = load i32, i32* %r, align 4
  %idxprom246 = sext i32 %163 to i64
  %arrayidx247 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom246
  %what248 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx247, i32 0, i32 1
  %164 = load i32, i32* %what248, align 4
  %idxprom249 = sext i32 %164 to i64
  %arrayidx250 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom249
  %what1251 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx250, i32 0, i32 1
  %165 = load i32, i32* %what1251, align 4
  store i32 %165, i32* %aa, align 4
  %166 = load i32, i32* %r, align 4
  %idxprom252 = sext i32 %166 to i64
  %arrayidx253 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom252
  %what254 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx253, i32 0, i32 1
  %167 = load i32, i32* %what254, align 4
  %idxprom255 = sext i32 %167 to i64
  %arrayidx256 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom255
  %what2257 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx256, i32 0, i32 3
  %168 = load i32, i32* %what2257, align 4
  store i32 %168, i32* %bb, align 4
  %169 = load i32, i32* %pos, align 4
  %170 = load i32, i32* %aa, align 4
  %171 = load i32, i32* %bb, align 4
  %call258 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i32 0, i32 0), i32 %169, i32 %170, i32 %171)
  br label %sw.epilog

sw.bb.259:                                        ; preds = %if.end
  %172 = load i32, i32* %r, align 4
  %idxprom260 = sext i32 %172 to i64
  %arrayidx261 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom260
  %what262 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx261, i32 0, i32 1
  %173 = load i32, i32* %what262, align 4
  store i32 %173, i32* %aa, align 4
  %174 = load i32, i32* %pos, align 4
  %175 = load i32, i32* %aa, align 4
  %call263 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i32 0, i32 0), i32 %174, i32 %175)
  br label %sw.epilog

sw.bb.264:                                        ; preds = %if.end
  %176 = load i32, i32* %r, align 4
  %idxprom265 = sext i32 %176 to i64
  %arrayidx266 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom265
  %what267 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx266, i32 0, i32 1
  %177 = load i32, i32* %what267, align 4
  store i32 %177, i32* %aa, align 4
  %178 = load i32, i32* %pos, align 4
  %179 = load i32, i32* %aa, align 4
  %call268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i32 0, i32 0), i32 %178, i32 %179)
  br label %sw.epilog

sw.bb.269:                                        ; preds = %if.end
  %180 = load i32, i32* %r, align 4
  %idxprom270 = sext i32 %180 to i64
  %arrayidx271 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom270
  %what272 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx271, i32 0, i32 1
  %181 = load i32, i32* %what272, align 4
  store i32 %181, i32* %aa, align 4
  %182 = load i32, i32* %pos, align 4
  %183 = load i32, i32* %aa, align 4
  %call273 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.66, i32 0, i32 0), i32 %182, i32 %183)
  br label %sw.epilog

sw.bb.274:                                        ; preds = %if.end
  %184 = load i32, i32* %pos, align 4
  %call275 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i32 %184)
  br label %sw.epilog

sw.bb.276:                                        ; preds = %if.end
  %185 = load i32, i32* %pos, align 4
  %call277 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), i32 %185)
  br label %sw.epilog

sw.bb.278:                                        ; preds = %if.end
  %186 = load i32, i32* %pos, align 4
  %call279 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i32 0, i32 0), i32 %186)
  br label %sw.epilog

sw.bb.280:                                        ; preds = %if.end, %if.end
  %187 = load i32, i32* %r, align 4
  %idxprom281 = sext i32 %187 to i64
  %arrayidx282 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom281
  %what283 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx282, i32 0, i32 1
  %188 = load i32, i32* %what283, align 4
  store i32 %188, i32* %aa, align 4
  %189 = load i32, i32* %r, align 4
  %idxprom284 = sext i32 %189 to i64
  %arrayidx285 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom284
  %type286 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx285, i32 0, i32 0
  %190 = load i32, i32* %type286, align 4
  %cmp287 = icmp eq i32 %190, 44
  br i1 %cmp287, label %if.then.289, label %if.else.291

if.then.289:                                      ; preds = %sw.bb.280
  %191 = load i32, i32* %pos, align 4
  %192 = load i32, i32* %aa, align 4
  %call290 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i32 0, i32 0), i32 %191, i32 %192)
  br label %if.end.293

if.else.291:                                      ; preds = %sw.bb.280
  %193 = load i32, i32* %pos, align 4
  %194 = load i32, i32* %aa, align 4
  %call292 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i32 0, i32 0), i32 %193, i32 %194)
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.291, %if.then.289
  br label %sw.epilog

sw.bb.294:                                        ; preds = %if.end
  %195 = load i32, i32* %pos, align 4
  %call295 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i32 0, i32 0), i32 %195)
  br label %sw.bb.296

sw.bb.296:                                        ; preds = %if.end, %sw.bb.294
  %196 = load i32, i32* %pos, align 4
  %call297 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.73, i32 0, i32 0), i32 %196)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.296, %if.end, %if.end.293, %sw.bb.278, %sw.bb.276, %sw.bb.274, %sw.bb.269, %sw.bb.264, %sw.bb.259, %sw.bb.245, %sw.bb.240, %sw.bb.235, %sw.bb.230, %sw.bb.216, %sw.bb.211, %sw.bb.206, %sw.bb.201, %sw.bb.169, %sw.bb.139, %if.end.138, %sw.bb.116, %sw.bb.111, %sw.bb.109, %if.end.108, %if.end.87, %if.end.74, %sw.bb.52, %sw.bb.47, %sw.bb.42, %sw.bb.31, %sw.bb.20, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %197 = load i32, i32* %k, align 4
  %inc = add nsw i32 %197, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then, %for.cond.5
  %198 = load i32, i32* %k, align 4
  %cmp298 = icmp sgt i32 %198, 0
  br i1 %cmp298, label %land.lhs.true, label %if.end.306

land.lhs.true:                                    ; preds = %for.end
  %199 = load i32, i32* %pos, align 4
  %idxprom300 = sext i32 %199 to i64
  %arrayidx301 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom300
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx301, i32 0, i32 19
  %200 = load i32, i32* %move_safety, align 4
  %cmp302 = icmp eq i32 %200, 0
  br i1 %cmp302, label %if.then.304, label %if.end.306

if.then.304:                                      ; preds = %land.lhs.true
  %201 = load i32, i32* %pos, align 4
  %call305 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i32 0, i32 0), i32 %201)
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %land.lhs.true, %for.end
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.306
  %202 = load i32, i32* %m, align 4
  %dec = add nsw i32 %202, -1
  store i32 %dec, i32* %m, align 4
  br label %for.cond.1

for.end.308:                                      ; preds = %for.cond.1
  br label %for.inc.309

for.inc.309:                                      ; preds = %for.end.308
  %203 = load i32, i32* %n, align 4
  %inc310 = add nsw i32 %203, 1
  store i32 %inc310, i32* %n, align 4
  br label %for.cond

for.end.311:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @discard_redundant_move_reasons(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %k1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %entry
  %0 = load i32, i32* %k1, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom
  %reason_type = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [120 x i32], [120 x i32]* %reason_type, i32 0, i64 0
  %1 = load i32, i32* %arrayidx1, align 4
  %cmp = icmp eq i32 %1, -1
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k2, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.48, %for.body
  %2 = load i32, i32* %k2, align 4
  %idxprom3 = sext i32 %2 to i64
  %3 = load i32, i32* %k1, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom4
  %reason_type6 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [120 x i32], [120 x i32]* %reason_type6, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %4, -1
  %lnot9 = xor i1 %cmp8, true
  br i1 %lnot9, label %for.body.10, label %for.end.50

for.body.10:                                      ; preds = %for.cond.2
  store i32 0, i32* %l, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %5 = load i32, i32* %l, align 4
  %cmp12 = icmp slt i32 %5, 120
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %6 = load i32, i32* %l, align 4
  %idxprom14 = sext i32 %6 to i64
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom15 = sext i32 %7 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom15
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx16, i32 0, i32 18
  %arrayidx17 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom14
  %8 = load i32, i32* %arrayidx17, align 4
  store i32 %8, i32* %r, align 4
  %9 = load i32, i32* %r, align 4
  %cmp18 = icmp slt i32 %9, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  br label %for.end

if.end:                                           ; preds = %for.body.13
  %10 = load i32, i32* %r, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom19
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx20, i32 0, i32 0
  %11 = load i32, i32* %type, align 4
  %12 = load i32, i32* %k2, align 4
  %idxprom21 = sext i32 %12 to i64
  %13 = load i32, i32* %k1, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom22
  %reason_type24 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [120 x i32], [120 x i32]* %reason_type24, i32 0, i64 %idxprom21
  %14 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %11, %14
  br i1 %cmp26, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, i32* %k1, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom27
  %condition = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx28, i32 0, i32 1
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %condition, align 8
  %17 = load i32, i32* %pos.addr, align 4
  %18 = load i32, i32* %r, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom29
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx30, i32 0, i32 1
  %19 = load i32, i32* %what, align 4
  %call = call i32 %16(i32 %17, i32 %19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.31, label %if.end.47

if.then.31:                                       ; preds = %land.lhs.true
  %20 = load i32, i32* @debug, align 4
  %and = and i32 %20, 2048
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.31
  br label %cond.end

cond.false:                                       ; preds = %if.then.31
  %21 = load i32, i32* %k1, align 4
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom33
  %trace_message = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx34, i32 0, i32 3
  %arraydecay = getelementptr inbounds [160 x i8], [160 x i8]* %trace_message, i32 0, i32 0
  %22 = load i32, i32* %pos.addr, align 4
  %23 = load i32, i32* %r, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom35
  %type37 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx36, i32 0, i32 0
  %24 = load i32, i32* %type37, align 4
  %25 = load i32, i32* %r, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom38
  %what40 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx39, i32 0, i32 1
  %26 = load i32, i32* %what40, align 4
  %call41 = call i32 @get_pos(i32 %24, i32 %26)
  %call42 = call i32 (i8*, ...) @gprintf(i8* %arraydecay, i32 %22, i32 %call41)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %27 = load i32, i32* %k1, align 4
  %idxprom43 = sext i32 %27 to i64
  %arrayidx44 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* @discard_rules, i32 0, i64 %idxprom43
  %flags = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %arrayidx44, i32 0, i32 2
  %28 = load i32, i32* %flags, align 4
  %29 = load i32, i32* %r, align 4
  %idxprom45 = sext i32 %29 to i64
  %arrayidx46 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom45
  %status = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx46, i32 0, i32 2
  %30 = load i32, i32* %status, align 4
  %or = or i32 %30, %28
  store i32 %or, i32* %status, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %cond.end, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %31 = load i32, i32* %l, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then, %for.cond.11
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end
  %32 = load i32, i32* %k2, align 4
  %inc49 = add nsw i32 %32, 1
  store i32 %inc49, i32* %k2, align 4
  br label %for.cond.2

for.end.50:                                       ; preds = %for.cond.2
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %33 = load i32, i32* %k1, align 4
  %inc52 = add nsw i32 %33, 1
  store i32 %inc52, i32* %k1, align 4
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_pos(i32 %reason, i32 %what) #0 {
entry:
  %retval = alloca i32, align 4
  %reason.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %reason, i32* %reason.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %reason.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb
    i32 3, label %sw.bb
    i32 9, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 18, label %sw.bb.1
    i32 19, label %sw.bb.1
    i32 54, label %sw.bb.1
    i32 44, label %sw.bb.1
    i32 46, label %sw.bb.1
    i32 26, label %sw.bb.1
    i32 32, label %sw.bb.1
    i32 27, label %sw.bb.1
    i32 33, label %sw.bb.1
    i32 38, label %sw.bb.1
    i32 40, label %sw.bb.1
    i32 42, label %sw.bb.1
    i32 28, label %sw.bb.1
    i32 30, label %sw.bb.1
    i32 34, label %sw.bb.1
    i32 36, label %sw.bb.1
    i32 100, label %sw.bb.2
    i32 102, label %sw.bb.3
    i32 14, label %sw.bb.7
    i32 16, label %sw.bb.7
    i32 70, label %sw.bb.10
    i32 20, label %sw.bb.10
    i32 22, label %sw.bb.10
    i32 24, label %sw.bb.10
    i32 50, label %sw.bb.10
    i32 52, label %sw.bb.10
    i32 60, label %sw.bb.11
    i32 62, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %what.addr, align 4
  store i32 %1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2 = load i32, i32* %what.addr, align 4
  store i32 %2, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %what1, align 4
  store i32 %4, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %5 = load i32, i32* %what.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom4
  %what16 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %what16, align 4
  store i32 %6, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry, %entry
  %7 = load i32, i32* %what.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  store i32 %8, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry, %entry
  %9 = load i32, i32* %what.addr, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom12
  %what114 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx13, i32 0, i32 1
  %10 = load i32, i32* %what114, align 4
  store i32 %10, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i32 -1, i32 -1)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.11, %sw.bb.10, %sw.bb.7, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @is_antisuji_move(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 120
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx2 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %r, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %6, 70
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @scale_randomness(i32 %pos, float %scaling) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %scaling.addr = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store float %scaling, float* %scaling.addr, align 4
  %0 = load float, float* %scaling.addr, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %randomness_scaling = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 17
  %2 = load float, float* %randomness_scaling, align 4
  %cmp = fcmp ogt float %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load float, float* %scaling.addr, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %randomness_scaling3 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx2, i32 0, i32 17
  store float %3, float* %randomness_scaling3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @owl_move_vs_worm_known(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %origin, align 4
  %call = call i32 @owl_move_reason_known(i32 %0, i32 %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @tactical_move_vs_whole_dragon_known(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %2 = load i32, i32* %what.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %size3 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %size3, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %what.addr, align 4
  %call = call i32 @attack_move_reason_known(i32 %4, i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %what.addr, align 4
  %call4 = call i32 @defense_move_reason_known(i32 %6, i32 %7)
  %tobool5 = icmp ne i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %tobool5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %9 = phi i1 [ false, %entry ], [ %8, %lor.end ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @either_worm_attackable(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom
  %reason1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %reason1, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom1
  %reason2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx2, i32 0, i32 2
  %4 = load i32, i32* %reason2, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %what.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom4
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %what1, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 16
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %7, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i32, i32* %what.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom10
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx11, i32 0, i32 3
  %9 = load i32, i32* %what2, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom12
  %attack_codes14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx13, i32 0, i32 16
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes14, i32 0, i64 0
  %10 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp ne i32 %10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %cmp16, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %11, %lor.end ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @one_of_both_attackable(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom
  %reason1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %reason1, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %what.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom1
  %reason2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx2, i32 0, i32 2
  %4 = load i32, i32* %reason2, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32, i32* %what.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom4
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %what1, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 16
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %7, 0
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load i32, i32* %what.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom10
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx11, i32 0, i32 3
  %9 = load i32, i32* %what2, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom12
  %attack_codes14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx13, i32 0, i32 16
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes14, i32 0, i64 0
  %10 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp ne i32 %10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %cmp16, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %11, %lor.end ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @concerns_inessential_worm(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %3, i64 %idxprom1
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 6
  %4 = load i32, i32* %safety, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load i32, i32* %what.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 12
  %6 = load i32, i32* %inessential, align 4
  %tobool = icmp ne i32 %6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %7 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @concerns_inessential_dragon(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %what.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %3, i64 %idxprom1
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 6
  %4 = load i32, i32* %safety, align 4
  %cmp = icmp eq i32 %4, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @move_is_marked_unsafe(i32 %pos, i32 %what) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %what.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %what, i32* %what.addr, align 4
  %0 = load i32, i32* %what.addr, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 19
  %2 = load i32, i32* %move_safety, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
