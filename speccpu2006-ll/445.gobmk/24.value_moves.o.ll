; ModuleID = 'engine/value_moves.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.move_data = type { float, float, float, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, [120 x i32], i32, i32, float }
%struct.move_reason = type { i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.Reason_set = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.influence_data = type opaque

@best_move_values = external global [10 x float], align 16
@best_moves = external global [10 x i32], align 16
@urgent = external global i32, align 4
@allpats = external global i32, align 4
@.str = private unnamed_addr constant [37 x i8] c"  find_more_attack_and_defense_moves\00", align 1
@verbose = external global i32, align 4
@level = external global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"  find_more_owl_attack_and_defense_moves\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  examine_move_safety\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  induce_secondary_move_reasons\00", align 1
@printworms = external global i32, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"  value_moves\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"\0ALooking for additional attack and defense moves. Trying moves ...\0A\00", align 1
@board_size = external global i32, align 4
@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@move = external global [400 x %struct.move_data], align 16
@move_reasons = external global [1000 x %struct.move_reason], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"%1m \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"find_more_attack_and_defense_moves\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%ofound extra point of defense of %1m at %1m code %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"%ofound extra point of attack of %1m at %1m code %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"\0ATrying to upgrade strategical attack and defense moves.\0A\00", align 1
@eyes = external global [180 x i32], align 16
@eyecolor = external global [180 x i32], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@conn_worm1 = external global [962 x i32], align 16
@conn_worm2 = external global [962 x i32], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"Move at %1m owl attacks %1m, result %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Move at %1m owl defends %1m, result %d.\0A\00", align 1
@either_data = external global [100 x %struct.Reason_set], align 16
@delta = external global [8 x i32], align 16
@.str.14 = private unnamed_addr constant [26 x i8] c"    examine_move_safety: \00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"induce_secondary_move_reasons\00", align 1
@debug = external global i32, align 4
@.str.16 = private unnamed_addr constant [65 x i8] c"Connection move at %1m induced for %1m/%1m due to attack of %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Cut move at %1m induced for %1m/%1m due to defense of %1m\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"Connection move at %1m induced for %1m/%1m due to defense of %1m\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"induce_secondary_move_reasons-B\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\0AMove valuation:\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Move at %1m wasn't legal.\0A\00", align 1
@stackp = external global i32, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"engine/value_moves.c\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"  %1m:   %f - total followup value, added %f as territorial followup\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"  %1m: %f - added due to followup (%f) and reverse followup values (%f)\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"  %1m: %f - secondary\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"  %1m: %f - shape \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [58 x i8] c"(shape values +%4.2f(%d) -%4.2f(%d), shape factor %5.3f)\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"  %1m: %f - connects strings \00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"(connect value %d, shape factor %5.3f)\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"  %1m: %f - carry out threat or defend against threat\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"  %1m:   %f - minimum accepted value\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"  %1m:   %f - maximum accepted value\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Move generation values %1m to %f\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"board[aa] != color\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"  %1m:   %f (secondary) - attack on %1m (defenseless)\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"  %1m:   %f (secondary) - attack on %1m (dead)\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"  %1m: attack on worm %1m\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"  %1m: -%f - attack on worm %1m only with good ko\0A\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"  %1m: -%f - attack on worm %1m only with bad ko\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"board[aa] == color\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"  %1m:   %f (secondary) - defense of %1m (dead)\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"  %1m: defense of worm %1m\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"  %1m: -%f - defense of worm %1m with good ko\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"  %1m: -%f - defense of worm %1m with bad ko\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"  %1m: -%f - suspected ineffective defense of worm %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"board[aa] == other\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"    %1m: 0.0 - threatens to capture %1m (dead)\0A\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"estimate_territorial_value-A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"estimate_territorial_value-b\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"%1m:   %f (followup) - threatens to capture %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"  %1m: %f (followup) - threatens to defend %1m\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"  %1m: %f - semeai involving %1m\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"  %1m: %f (followup) - threatens to win semeai for %1m\0A\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"  %1m: -0.5 - penalty for ko stone %1m (workaround)\0A\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"  %1m: owl attack/defend for %1m\0A\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"  %1m: -%f - owl attack/defense of %1m only with good ko\0A\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"  %1m: -%f - owl attack/defense of %1m only with bad ko\0A\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"  %1m: -%f - suspected ineffective owl attack of worm %1m\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"    %1m: 0.0 - threatens to owl attack %1m (dead)\0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"  %1m: %f (followup) - threatens to owl attack %1m\0A\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"  %1m: %f (followup) - threatens to owl defend %1m\0A\00", align 1
@doing_scoring = external global i32, align 4
@.str.63 = private unnamed_addr constant [61 x i8] c"  %1m: %f - attack last move played, although it seems dead\0A\00", align 1
@.str.64 = private unnamed_addr constant [65 x i8] c"  %1m: %f - attack %1m, although it seems dead, as we are ahead\0A\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"  %1m: %f (reverse followup) - prevent threat to attack %1m\0A\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"  %1m: %f (reverse followup) - prevent threat to defend %1m\0A\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"  %1m: %f - combination attack kills one of several worms\0A\00", align 1
@.str.68 = private unnamed_addr constant [65 x i8] c"  %1m: %f - defends against combination attack on several worms\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"estimate_territorial_value\00", align 1
@move_influence = external global %struct.influence_data, align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"after move\00", align 1
@followup_influence = external global %struct.influence_data, align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"followup\00", align 1
@initial_white_influence = external global %struct.influence_data, align 1
@initial_black_influence = external global %struct.influence_data, align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"  %1m: %f - change in territory\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"  %1m: 0.00 - change in territory\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"  %1m:   %f - revised to meet minimum territory value\0A\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"  %1m:   %f - revised to meet maximum territory value\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"  %1m: %f - %1m cutstone\0A\00", align 1
@next_lunch = external global i32, align 4
@lunch_worm = external global [240 x i32], align 16
@lunch_dragon = external global [240 x i32], align 16
@.str.77 = private unnamed_addr constant [37 x i8] c"  %1m:   %f - %1m attacked/defended\0A\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"  %1m: %f - either attacks %1m (%f) or attacks %1m (%f)\0A\00", align 1
@all_data = external global [100 x %struct.Reason_set], align 16
@.str.79 = private unnamed_addr constant [56 x i8] c"  %1m: %f - both defends %1m (%f) and defends %1m (%f)\0A\00", align 1
@.str.80 = private unnamed_addr constant [66 x i8] c"  %1m:   %f - connect %1m and %1m to attack thrashing dragon %1m\0A\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"  %1m:   %f - %1m cut/connect strategic value\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"  %1m:   %f - %1m strategic attack/defend\0A\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"  %1m:   %f - %1m uncertain owl defense bonus\0A\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"dragon[aa].origin == aa\00", align 1
@.str.85 = private unnamed_addr constant [69 x i8] c"  %1m: 0.0 - disregarding strategic effect on %1m (critical dragon)\0A\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"  %1m:   %f - %1m strategic value already counted - A.\0A\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"  %1m: %f - strategic bonus for %1m\0A\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"  %1m:   %f - %1m strategic value already counted - B.\0A\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"  %1m: %f - strategic effect on %1m\0A\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"  %1m: %f - strategic penalty, considered as invasion.\0A\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@replacement_map = external global [400 x i32], align 16
@.str.92 = private unnamed_addr constant [40 x i8] c"Redistributing points from %1m to %1m.\0A\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"%1m is now valued %f.\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"%1m is now valued 0.\0A\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"\0ATop moves:\0A\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"%d. %1M %f\0A\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"Move at %1m would be suicide.\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"Move at %1m would be an illegal ko capture.\0A\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"  reevaluate_ko_threats\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"Move at %1m is a blunder, subtracting %f.\0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Move at %1m is now valued %f.\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"ON_BOARD1(ko_stone)\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Reevaluating ko threats.\0A\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"reevaluate_ko_threats\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"%1m: %f + %f = %f\0A\00", align 1
@.str.107 = private unnamed_addr constant [65 x i8] c"%1m: no additional ko value (threat does not work as ko threat)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @record_top_move(i32 %move, float %val) #0 {
entry:
  %move.addr = alloca i32, align 4
  %val.addr = alloca float, align 4
  %k = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store float %val, float* %val.addr, align 4
  store i32 9, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, float* %val.addr, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %cmp1 = fcmp ogt float %1, %3
  br i1 %cmp1, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %4, 9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom4
  %6 = load float, float* %arrayidx5, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %7, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom6
  store float %6, float* %arrayidx7, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* %k, align 4
  %add10 = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom11
  store i32 %9, i32* %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load float, float* %val.addr, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom13
  store float %11, float* %arrayidx14, align 4
  %13 = load i32, i32* %move.addr, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom15
  store i32 %13, i32* %arrayidx16, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %15 = load i32, i32* %k, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_top_move(i32 %move) #0 {
entry:
  %move.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  store i32 %4, i32* %l, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %if.then
  %5 = load i32, i32* %l, align 4
  %cmp3 = icmp slt i32 %5, 9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %l, align 4
  %add = add nsw i32 %6, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %l, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom7
  store i32 %7, i32* %arrayidx8, align 4
  %9 = load i32, i32* %l, align 4
  %add9 = add nsw i32 %9, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom10
  %10 = load float, float* %arrayidx11, align 4
  %11 = load i32, i32* %l, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom12
  store float %10, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %12 = load i32, i32* %l, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  store i32 0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @best_moves, i32 0, i64 9), align 4
  store float 0.000000e+00, float* getelementptr inbounds ([10 x float], [10 x float]* @best_move_values, i32 0, i64 9), align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %13 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @review_move_reasons(i32* %the_move, float* %val, i32 %color, float %pure_threat_value, float %score, i32* %allowed_moves) #0 {
entry:
  %the_move.addr = alloca i32*, align 8
  %val.addr = alloca float*, align 8
  %color.addr = alloca i32, align 4
  %pure_threat_value.addr = alloca float, align 4
  %score.addr = alloca float, align 4
  %allowed_moves.addr = alloca i32*, align 8
  %save_verbose = alloca i32, align 4
  store i32* %the_move, i32** %the_move.addr, align 8
  store float* %val, float** %val.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store float %pure_threat_value, float* %pure_threat_value.addr, align 4
  store float %score, float* %score.addr, align 4
  store i32* %allowed_moves, i32** %allowed_moves.addr, align 8
  call void @start_timer(i32 2)
  %0 = load i32, i32* @urgent, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @allpats, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %color.addr, align 4
  call void @find_more_attack_and_defense_moves(i32 %2)
  %call = call double @time_report(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, i32* @verbose, align 4
  store i32 %3, i32* %save_verbose, align 4
  %4 = load i32, i32* @verbose, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %6 = load i32, i32* @level, align 4
  %cmp4 = icmp sge i32 %6, 6
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load i32, i32* %color.addr, align 4
  call void @find_more_owl_attack_and_defense_moves(i32 %7)
  %call6 = call double @time_report(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %8 = load i32, i32* %save_verbose, align 4
  store i32 %8, i32* @verbose, align 4
  %9 = load i32, i32* @verbose, align 4
  %cmp8 = icmp sgt i32 %9, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %10 = load i32, i32* @verbose, align 4
  %dec10 = add nsw i32 %10, -1
  store i32 %dec10, i32* @verbose, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %11 = load i32, i32* %color.addr, align 4
  call void @examine_move_safety(i32 %11)
  %call12 = call double @time_report(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 0, double 1.000000e+00)
  %12 = load i32, i32* %save_verbose, align 4
  store i32 %12, i32* @verbose, align 4
  %13 = load i32, i32* %color.addr, align 4
  call void @induce_secondary_move_reasons(i32 %13)
  %call13 = call double @time_report(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i32 0, double 1.000000e+00)
  %14 = load i32, i32* @printworms, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.17, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.11
  %15 = load i32, i32* @verbose, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.15, %if.end.11
  %16 = load i32, i32* %color.addr, align 4
  call void @list_move_reasons(i32 %16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %lor.lhs.false.15
  %17 = load i32, i32* %color.addr, align 4
  %18 = load float, float* %pure_threat_value.addr, align 4
  %19 = load float, float* %score.addr, align 4
  call void @value_moves(i32 %17, float %18, float %19)
  %call19 = call double @time_report(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 0, double 1.000000e+00)
  call void @redistribute_points()
  call void @print_top_moves()
  %20 = load i32*, i32** %the_move.addr, align 8
  %21 = load float*, float** %val.addr, align 8
  %22 = load i32, i32* %color.addr, align 4
  %23 = load i32*, i32** %allowed_moves.addr, align 8
  %call20 = call i32 @find_best_move(i32* %20, float* %21, i32 %22, i32* %23)
  ret i32 %call20
}

declare void @start_timer(i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_more_attack_and_defense_moves(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %unstable_worms = alloca [240 x i32], align 16
  %N = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %other = alloca i32, align 4
  %cursor_at_start_of_line = alloca i32, align 4
  %r = alloca i32, align 4
  %what = alloca i32, align 4
  %aa = alloca i32, align 4
  %acode = alloca i32, align 4
  %defense_works = alloca i32, align 4
  %this_acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %attack_works = alloca i32, align 4
  %this_dcode = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %N, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %cond.end
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %6, 20
  %add = add nsw i32 21, %mul
  %7 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %7
  store i32 %add4, i32* %ii, align 4
  %8 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %10 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 3
  %11 = load i32, i32* %origin, align 4
  %12 = load i32, i32* %ii, align 4
  %cmp8 = icmp eq i32 %11, %12
  br i1 %cmp8, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %ii, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom11
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx12, i32 0, i32 16
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %14 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ne i32 %14, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.10
  %15 = load i32, i32* %ii, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom17
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx18, i32 0, i32 18
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp ne i32 %16, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16
  %17 = load i32, i32* %ii, align 4
  %18 = load i32, i32* %N, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [240 x i32], [240 x i32]* %unstable_worms, i32 0, i64 %idxprom22
  store i32 %17, i32* %arrayidx23, align 4
  %19 = load i32, i32* %N, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %N, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true.10, %land.lhs.true, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %n, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %n, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %21 = load i32, i32* %m, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %m, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  call void @increase_depth_values()
  store i32 0, i32* %m, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.262, %for.end.27
  %22 = load i32, i32* %m, align 4
  %23 = load i32, i32* @board_size, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body.31, label %for.end.264

for.body.31:                                      ; preds = %for.cond.28
  store i32 0, i32* %n, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.259, %for.body.31
  %24 = load i32, i32* %n, align 4
  %25 = load i32, i32* @board_size, align 4
  %cmp33 = icmp slt i32 %24, %25
  br i1 %cmp33, label %for.body.35, label %for.end.261

for.body.35:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %m, align 4
  %mul36 = mul nsw i32 %26, 20
  %add37 = add nsw i32 21, %mul36
  %27 = load i32, i32* %n, align 4
  %add38 = add nsw i32 %add37, %27
  store i32 %add38, i32* %ii, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.101, %for.body.35
  %28 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %28, 120
  br i1 %cmp40, label %for.body.42, label %for.end.103

for.body.42:                                      ; preds = %for.cond.39
  %29 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %29 to i64
  %30 = load i32, i32* %ii, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom44
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx45, i32 0, i32 18
  %arrayidx46 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom43
  %31 = load i32, i32* %arrayidx46, align 4
  store i32 %31, i32* %r, align 4
  %32 = load i32, i32* %r, align 4
  %cmp47 = icmp slt i32 %32, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.body.42
  br label %for.end.103

if.end.50:                                        ; preds = %for.body.42
  %33 = load i32, i32* %r, align 4
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom51
  %what53 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx52, i32 0, i32 1
  %34 = load i32, i32* %what53, align 4
  store i32 %34, i32* %what, align 4
  %35 = load i32, i32* %r, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom54
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx55, i32 0, i32 0
  %36 = load i32, i32* %type, align 4
  %cmp56 = icmp eq i32 %36, 2
  br i1 %cmp56, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %37 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom58
  %type60 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx59, i32 0, i32 0
  %38 = load i32, i32* %type60, align 4
  %cmp61 = icmp eq i32 %38, 4
  br i1 %cmp61, label %if.then.99, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %39 = load i32, i32* %r, align 4
  %idxprom64 = sext i32 %39 to i64
  %arrayidx65 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom64
  %type66 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx65, i32 0, i32 0
  %40 = load i32, i32* %type66, align 4
  %cmp67 = icmp eq i32 %40, 6
  br i1 %cmp67, label %if.then.99, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.63
  %41 = load i32, i32* %r, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom70
  %type72 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx71, i32 0, i32 0
  %42 = load i32, i32* %type72, align 4
  %cmp73 = icmp eq i32 %42, 8
  br i1 %cmp73, label %if.then.99, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.69
  %43 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %43 to i64
  %arrayidx77 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom76
  %type78 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx77, i32 0, i32 0
  %44 = load i32, i32* %type78, align 4
  %cmp79 = icmp eq i32 %44, 10
  br i1 %cmp79, label %if.then.99, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.75
  %45 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %45 to i64
  %arrayidx83 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom82
  %type84 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx83, i32 0, i32 0
  %46 = load i32, i32* %type84, align 4
  %cmp85 = icmp eq i32 %46, 12
  br i1 %cmp85, label %if.then.99, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.81
  %47 = load i32, i32* %r, align 4
  %idxprom88 = sext i32 %47 to i64
  %arrayidx89 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom88
  %type90 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx89, i32 0, i32 0
  %48 = load i32, i32* %type90, align 4
  %cmp91 = icmp eq i32 %48, 14
  br i1 %cmp91, label %if.then.99, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %lor.lhs.false.87
  %49 = load i32, i32* %r, align 4
  %idxprom94 = sext i32 %49 to i64
  %arrayidx95 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom94
  %type96 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx95, i32 0, i32 0
  %50 = load i32, i32* %type96, align 4
  %cmp97 = icmp eq i32 %50, 16
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %lor.lhs.false.93, %lor.lhs.false.87, %lor.lhs.false.81, %lor.lhs.false.75, %lor.lhs.false.69, %lor.lhs.false.63, %lor.lhs.false, %if.end.50
  br label %for.end.103

if.end.100:                                       ; preds = %lor.lhs.false.93
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %51 = load i32, i32* %k, align 4
  %inc102 = add nsw i32 %51, 1
  store i32 %inc102, i32* %k, align 4
  br label %for.cond.39

for.end.103:                                      ; preds = %if.then.99, %if.then.49, %for.cond.39
  %52 = load i32, i32* %k, align 4
  %cmp104 = icmp eq i32 %52, 120
  br i1 %cmp104, label %if.then.114, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %for.end.103
  %53 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %53 to i64
  %54 = load i32, i32* %ii, align 4
  %idxprom108 = sext i32 %54 to i64
  %arrayidx109 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom108
  %reason110 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx109, i32 0, i32 18
  %arrayidx111 = getelementptr inbounds [120 x i32], [120 x i32]* %reason110, i32 0, i64 %idxprom107
  %55 = load i32, i32* %arrayidx111, align 4
  %cmp112 = icmp eq i32 %55, -1
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false.106, %for.end.103
  br label %for.inc.259

if.end.115:                                       ; preds = %lor.lhs.false.106
  store i32 0, i32* %cursor_at_start_of_line, align 4
  %56 = load i32, i32* @verbose, align 4
  %tobool116 = icmp ne i32 %56, 0
  br i1 %tobool116, label %cond.false.118, label %cond.true.117

cond.true.117:                                    ; preds = %if.end.115
  br label %cond.end.120

cond.false.118:                                   ; preds = %if.end.115
  %57 = load i32, i32* %ii, align 4
  %call119 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %57)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.118, %cond.true.117
  %58 = load i32, i32* %ii, align 4
  %59 = load i32, i32* %color.addr, align 4
  %call121 = call i32 @trymove(i32 %58, i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.258

if.then.123:                                      ; preds = %cond.end.120
  store i32 0, i32* %k, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.255, %if.then.123
  %60 = load i32, i32* %k, align 4
  %61 = load i32, i32* %N, align 4
  %cmp125 = icmp slt i32 %60, %61
  br i1 %cmp125, label %for.body.127, label %for.end.257

for.body.127:                                     ; preds = %for.cond.124
  %62 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %62 to i64
  %arrayidx129 = getelementptr inbounds [240 x i32], [240 x i32]* %unstable_worms, i32 0, i64 %idxprom128
  %63 = load i32, i32* %arrayidx129, align 4
  store i32 %63, i32* %aa, align 4
  %64 = load i32, i32* %aa, align 4
  %idxprom130 = sext i32 %64 to i64
  %arrayidx131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom130
  %65 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %65 to i32
  %66 = load i32, i32* %color.addr, align 4
  %cmp133 = icmp eq i32 %conv132, %66
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.194

land.lhs.true.135:                                ; preds = %for.body.127
  %67 = load i32, i32* %ii, align 4
  %68 = load i32, i32* %k, align 4
  %idxprom136 = sext i32 %68 to i64
  %arrayidx137 = getelementptr inbounds [240 x i32], [240 x i32]* %unstable_worms, i32 0, i64 %idxprom136
  %69 = load i32, i32* %arrayidx137, align 4
  %call138 = call i32 @defense_move_reason_known(i32 %67, i32 %69)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.194, label %if.then.140

if.then.140:                                      ; preds = %land.lhs.true.135
  %70 = load i32, i32* %aa, align 4
  %call141 = call i32 @attack(i32 %70, i32* null)
  store i32 %call141, i32* %acode, align 4
  %71 = load i32, i32* %acode, align 4
  %72 = load i32, i32* %aa, align 4
  %idxprom142 = sext i32 %72 to i64
  %arrayidx143 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom142
  %attack_codes144 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx143, i32 0, i32 16
  %arrayidx145 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes144, i32 0, i64 0
  %73 = load i32, i32* %arrayidx145, align 4
  %cmp146 = icmp slt i32 %71, %73
  br i1 %cmp146, label %if.then.148, label %if.end.193

if.then.148:                                      ; preds = %if.then.140
  store i32 1, i32* %defense_works, align 4
  %74 = load i32, i32* %aa, align 4
  %idxprom149 = sext i32 %74 to i64
  %arrayidx150 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom149
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx150, i32 0, i32 15
  %arrayidx151 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %75 = load i32, i32* %arrayidx151, align 4
  %76 = load i32, i32* %other, align 4
  %call152 = call i32 @trymove(i32 %75, i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.174

if.then.154:                                      ; preds = %if.then.148
  %77 = load i32, i32* %aa, align 4
  %idxprom155 = sext i32 %77 to i64
  %arrayidx156 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom155
  %78 = load i8, i8* %arrayidx156, align 1
  %tobool157 = icmp ne i8 %78, 0
  br i1 %tobool157, label %if.else, label %if.then.158

if.then.158:                                      ; preds = %if.then.154
  store i32 0, i32* %defense_works, align 4
  br label %if.end.173

if.else:                                          ; preds = %if.then.154
  %79 = load i32, i32* %aa, align 4
  %call159 = call i32 @find_defense(i32 %79, i32* null)
  %sub160 = sub nsw i32 5, %call159
  store i32 %sub160, i32* %this_acode, align 4
  %80 = load i32, i32* %this_acode, align 4
  %81 = load i32, i32* %acode, align 4
  %cmp161 = icmp sgt i32 %80, %81
  br i1 %cmp161, label %if.then.163, label %if.end.172

if.then.163:                                      ; preds = %if.else
  %82 = load i32, i32* %this_acode, align 4
  store i32 %82, i32* %acode, align 4
  %83 = load i32, i32* %acode, align 4
  %84 = load i32, i32* %aa, align 4
  %idxprom164 = sext i32 %84 to i64
  %arrayidx165 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom164
  %attack_codes166 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx165, i32 0, i32 16
  %arrayidx167 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes166, i32 0, i64 0
  %85 = load i32, i32* %arrayidx167, align 4
  %cmp168 = icmp sge i32 %83, %85
  br i1 %cmp168, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.then.163
  store i32 0, i32* %defense_works, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.170, %if.then.163
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.else
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.158
  call void @popgo()
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.148
  %86 = load i32, i32* %defense_works, align 4
  %tobool175 = icmp ne i32 %86, 0
  br i1 %tobool175, label %if.then.176, label %if.end.192

if.then.176:                                      ; preds = %if.end.174
  %87 = load i32, i32* %cursor_at_start_of_line, align 4
  %tobool177 = icmp ne i32 %87, 0
  br i1 %tobool177, label %if.end.184, label %if.then.178

if.then.178:                                      ; preds = %if.then.176
  %88 = load i32, i32* @verbose, align 4
  %tobool179 = icmp ne i32 %88, 0
  br i1 %tobool179, label %cond.false.181, label %cond.true.180

cond.true.180:                                    ; preds = %if.then.178
  br label %cond.end.183

cond.false.181:                                   ; preds = %if.then.178
  %call182 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.180
  br label %if.end.184

if.end.184:                                       ; preds = %cond.end.183, %if.then.176
  %89 = load i32, i32* @verbose, align 4
  %tobool185 = icmp ne i32 %89, 0
  br i1 %tobool185, label %cond.false.187, label %cond.true.186

cond.true.186:                                    ; preds = %if.end.184
  br label %cond.end.190

cond.false.187:                                   ; preds = %if.end.184
  %90 = load i32, i32* %aa, align 4
  %91 = load i32, i32* %ii, align 4
  %92 = load i32, i32* %acode, align 4
  %sub188 = sub nsw i32 5, %92
  %call189 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0), i32 %90, i32 %91, i32 %sub188)
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.187, %cond.true.186
  store i32 1, i32* %cursor_at_start_of_line, align 4
  %93 = load i32, i32* %ii, align 4
  %94 = load i32, i32* %aa, align 4
  %95 = load i32, i32* %acode, align 4
  %sub191 = sub nsw i32 5, %95
  call void @add_defense_move(i32 %93, i32 %94, i32 %sub191)
  br label %if.end.192

if.end.192:                                       ; preds = %cond.end.190, %if.end.174
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.140
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %land.lhs.true.135, %for.body.127
  %96 = load i32, i32* %aa, align 4
  %idxprom195 = sext i32 %96 to i64
  %arrayidx196 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom195
  %97 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %97 to i32
  %98 = load i32, i32* %other, align 4
  %cmp198 = icmp eq i32 %conv197, %98
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.254

land.lhs.true.200:                                ; preds = %if.end.194
  %99 = load i32, i32* %ii, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom201 = sext i32 %100 to i64
  %arrayidx202 = getelementptr inbounds [240 x i32], [240 x i32]* %unstable_worms, i32 0, i64 %idxprom201
  %101 = load i32, i32* %arrayidx202, align 4
  %call203 = call i32 @attack_move_reason_known(i32 %99, i32 %101)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.end.254, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.200
  %102 = load i32, i32* %aa, align 4
  %call206 = call i32 @find_defense(i32 %102, i32* null)
  store i32 %call206, i32* %dcode, align 4
  %103 = load i32, i32* %dcode, align 4
  %104 = load i32, i32* %aa, align 4
  %idxprom207 = sext i32 %104 to i64
  %arrayidx208 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom207
  %defense_codes209 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx208, i32 0, i32 18
  %arrayidx210 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes209, i32 0, i64 0
  %105 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp slt i32 %103, %105
  br i1 %cmp211, label %if.then.213, label %if.end.253

if.then.213:                                      ; preds = %if.then.205
  store i32 1, i32* %attack_works, align 4
  %106 = load i32, i32* %aa, align 4
  %idxprom214 = sext i32 %106 to i64
  %arrayidx215 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom214
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx215, i32 0, i32 17
  %arrayidx216 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %107 = load i32, i32* %arrayidx216, align 4
  %108 = load i32, i32* %other, align 4
  %call217 = call i32 @trymove(i32 %107, i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.234

if.then.219:                                      ; preds = %if.then.213
  %109 = load i32, i32* %aa, align 4
  %call220 = call i32 @attack(i32 %109, i32* null)
  %sub221 = sub nsw i32 5, %call220
  store i32 %sub221, i32* %this_dcode, align 4
  %110 = load i32, i32* %this_dcode, align 4
  %111 = load i32, i32* %dcode, align 4
  %cmp222 = icmp sgt i32 %110, %111
  br i1 %cmp222, label %if.then.224, label %if.end.233

if.then.224:                                      ; preds = %if.then.219
  %112 = load i32, i32* %this_dcode, align 4
  store i32 %112, i32* %dcode, align 4
  %113 = load i32, i32* %dcode, align 4
  %114 = load i32, i32* %aa, align 4
  %idxprom225 = sext i32 %114 to i64
  %arrayidx226 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom225
  %defense_codes227 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx226, i32 0, i32 18
  %arrayidx228 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes227, i32 0, i64 0
  %115 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp sge i32 %113, %115
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.then.224
  store i32 0, i32* %attack_works, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %if.then.224
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.219
  call void @popgo()
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.213
  %116 = load i32, i32* %attack_works, align 4
  %tobool235 = icmp ne i32 %116, 0
  br i1 %tobool235, label %if.then.236, label %if.end.252

if.then.236:                                      ; preds = %if.end.234
  %117 = load i32, i32* %cursor_at_start_of_line, align 4
  %tobool237 = icmp ne i32 %117, 0
  br i1 %tobool237, label %if.end.244, label %if.then.238

if.then.238:                                      ; preds = %if.then.236
  %118 = load i32, i32* @verbose, align 4
  %tobool239 = icmp ne i32 %118, 0
  br i1 %tobool239, label %cond.false.241, label %cond.true.240

cond.true.240:                                    ; preds = %if.then.238
  br label %cond.end.243

cond.false.241:                                   ; preds = %if.then.238
  %call242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.241, %cond.true.240
  br label %if.end.244

if.end.244:                                       ; preds = %cond.end.243, %if.then.236
  %119 = load i32, i32* @verbose, align 4
  %tobool245 = icmp ne i32 %119, 0
  br i1 %tobool245, label %cond.false.247, label %cond.true.246

cond.true.246:                                    ; preds = %if.end.244
  br label %cond.end.250

cond.false.247:                                   ; preds = %if.end.244
  %120 = load i32, i32* %aa, align 4
  %121 = load i32, i32* %ii, align 4
  %122 = load i32, i32* %dcode, align 4
  %sub248 = sub nsw i32 5, %122
  %call249 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0), i32 %120, i32 %121, i32 %sub248)
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.247, %cond.true.246
  store i32 1, i32* %cursor_at_start_of_line, align 4
  %123 = load i32, i32* %ii, align 4
  %124 = load i32, i32* %aa, align 4
  %125 = load i32, i32* %dcode, align 4
  %sub251 = sub nsw i32 5, %125
  call void @add_attack_move(i32 %123, i32 %124, i32 %sub251)
  br label %if.end.252

if.end.252:                                       ; preds = %cond.end.250, %if.end.234
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.then.205
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %land.lhs.true.200, %if.end.194
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %126 = load i32, i32* %k, align 4
  %inc256 = add nsw i32 %126, 1
  store i32 %inc256, i32* %k, align 4
  br label %for.cond.124

for.end.257:                                      ; preds = %for.cond.124
  call void @popgo()
  br label %if.end.258

if.end.258:                                       ; preds = %for.end.257, %cond.end.120
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258, %if.then.114
  %127 = load i32, i32* %n, align 4
  %inc260 = add nsw i32 %127, 1
  store i32 %inc260, i32* %n, align 4
  br label %for.cond.32

for.end.261:                                      ; preds = %for.cond.32
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.261
  %128 = load i32, i32* %m, align 4
  %inc263 = add nsw i32 %128, 1
  store i32 %inc263, i32* %m, align 4
  br label %for.cond.28

for.end.264:                                      ; preds = %for.cond.28
  %129 = load i32, i32* @verbose, align 4
  %tobool265 = icmp ne i32 %129, 0
  br i1 %tobool265, label %cond.false.267, label %cond.true.266

cond.true.266:                                    ; preds = %for.end.264
  br label %cond.end.269

cond.false.267:                                   ; preds = %for.end.264
  %call268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.267, %cond.true.266
  call void @decrease_depth_values()
  ret void
}

declare double @time_report(i32, i8*, i32, double) #1

; Function Attrs: nounwind uwtable
define internal void @find_more_owl_attack_and_defense_moves(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %dd1 = alloca i32, align 4
  %dd2 = alloca i32, align 4
  %dd = alloca i32, align 4
  %worth_trying = alloca i32, align 4
  %r = alloca i32, align 4
  %what = alloca i32, align 4
  %ee = alloca i32, align 4
  %ecolor = alloca i32, align 4
  %worm1 = alloca i32, align 4
  %worm2 = alloca i32, align 4
  %kworm = alloca i32, align 4
  %acode = alloca i32, align 4
  %kworm239 = alloca i32, align 4
  %dcode = alloca i32, align 4
  %r307 = alloca i32, align 4
  %kworm375 = alloca i32, align 4
  %dcode376 = alloca i32, align 4
  %kworm400 = alloca i32, align 4
  %acode401 = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %dd, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.261, %cond.end
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end.263

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.261

if.end:                                           ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.258, %if.end
  %4 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %4, 120
  br i1 %cmp4, label %for.body.6, label %for.end.260

for.body.6:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %5 to i64
  %6 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx9, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx10, align 4
  store i32 %7, i32* %r, align 4
  store i32 0, i32* %dd1, align 4
  store i32 0, i32* %dd2, align 4
  %8 = load i32, i32* %r, align 4
  %cmp11 = icmp slt i32 %8, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.6
  br label %for.end.260

if.end.14:                                        ; preds = %for.body.6
  %9 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom15
  %what17 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx16, i32 0, i32 1
  %10 = load i32, i32* %what17, align 4
  store i32 %10, i32* %what, align 4
  %11 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom18
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx19, i32 0, i32 0
  %12 = load i32, i32* %type, align 4
  %cmp20 = icmp eq i32 %12, 44
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %13 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom22
  %type24 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx23, i32 0, i32 0
  %14 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %14, 46
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.14
  %15 = load i32, i32* %what, align 4
  store i32 %15, i32* %dd1, align 4
  br label %if.end.110

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, i32* %r, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom28
  %type30 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx29, i32 0, i32 0
  %17 = load i32, i32* %type30, align 4
  %cmp31 = icmp eq i32 %17, 2
  br i1 %cmp31, label %if.then.63, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.else
  %18 = load i32, i32* %r, align 4
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom34
  %type36 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx35, i32 0, i32 0
  %19 = load i32, i32* %type36, align 4
  %cmp37 = icmp eq i32 %19, 4
  br i1 %cmp37, label %if.then.63, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.33
  %20 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %20 to i64
  %arrayidx41 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom40
  %type42 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx41, i32 0, i32 0
  %21 = load i32, i32* %type42, align 4
  %cmp43 = icmp eq i32 %21, 6
  br i1 %cmp43, label %if.then.63, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.39
  %22 = load i32, i32* %r, align 4
  %idxprom46 = sext i32 %22 to i64
  %arrayidx47 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom46
  %type48 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx47, i32 0, i32 0
  %23 = load i32, i32* %type48, align 4
  %cmp49 = icmp eq i32 %23, 8
  br i1 %cmp49, label %if.then.63, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.45
  %24 = load i32, i32* %r, align 4
  %idxprom52 = sext i32 %24 to i64
  %arrayidx53 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom52
  %type54 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx53, i32 0, i32 0
  %25 = load i32, i32* %type54, align 4
  %cmp55 = icmp eq i32 %25, 10
  br i1 %cmp55, label %if.then.63, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.51
  %26 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %26 to i64
  %arrayidx59 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom58
  %type60 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx59, i32 0, i32 0
  %27 = load i32, i32* %type60, align 4
  %cmp61 = icmp eq i32 %27, 12
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.51, %lor.lhs.false.45, %lor.lhs.false.39, %lor.lhs.false.33, %if.else
  %28 = load i32, i32* %what, align 4
  store i32 %28, i32* %dd1, align 4
  br label %if.end.109

if.else.64:                                       ; preds = %lor.lhs.false.57
  %29 = load i32, i32* %r, align 4
  %idxprom65 = sext i32 %29 to i64
  %arrayidx66 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom65
  %type67 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx66, i32 0, i32 0
  %30 = load i32, i32* %type67, align 4
  %cmp68 = icmp eq i32 %30, 54
  br i1 %cmp68, label %if.then.70, label %if.else.86

if.then.70:                                       ; preds = %if.else.64
  %31 = load i32, i32* %what, align 4
  %idxprom71 = sext i32 %31 to i64
  %arrayidx72 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i32 0, i64 %idxprom71
  %32 = load i32, i32* %arrayidx72, align 4
  store i32 %32, i32* %ee, align 4
  %33 = load i32, i32* %what, align 4
  %idxprom73 = sext i32 %33 to i64
  %arrayidx74 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i32 0, i64 %idxprom73
  %34 = load i32, i32* %arrayidx74, align 4
  store i32 %34, i32* %ecolor, align 4
  %35 = load i32, i32* %ecolor, align 4
  %cmp75 = icmp eq i32 %35, 1
  br i1 %cmp75, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.then.70
  %36 = load i32, i32* %ee, align 4
  %call78 = call i32 @find_eye_dragons(i32 %36, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i32 0), i32 1, i32* %dd1, i32 1)
  br label %if.end.81

if.else.79:                                       ; preds = %if.then.70
  %37 = load i32, i32* %ee, align 4
  %call80 = call i32 @find_eye_dragons(i32 %37, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i32 0), i32 2, i32* %dd1, i32 1)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.79, %if.then.77
  %38 = load i32, i32* %dd1, align 4
  %cmp82 = icmp eq i32 %38, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  br label %for.inc.258

if.end.85:                                        ; preds = %if.end.81
  br label %if.end.108

if.else.86:                                       ; preds = %if.else.64
  %39 = load i32, i32* %r, align 4
  %idxprom87 = sext i32 %39 to i64
  %arrayidx88 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom87
  %type89 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx88, i32 0, i32 0
  %40 = load i32, i32* %type89, align 4
  %cmp90 = icmp eq i32 %40, 14
  br i1 %cmp90, label %if.then.92, label %if.else.106

if.then.92:                                       ; preds = %if.else.86
  %41 = load i32, i32* %what, align 4
  %idxprom93 = sext i32 %41 to i64
  %arrayidx94 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom93
  %42 = load i32, i32* %arrayidx94, align 4
  store i32 %42, i32* %worm1, align 4
  %43 = load i32, i32* %what, align 4
  %idxprom95 = sext i32 %43 to i64
  %arrayidx96 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom95
  %44 = load i32, i32* %arrayidx96, align 4
  store i32 %44, i32* %worm2, align 4
  %45 = load i32, i32* %worm1, align 4
  %idxprom97 = sext i32 %45 to i64
  %arrayidx98 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom97
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx98, i32 0, i32 2
  %46 = load i32, i32* %origin, align 4
  store i32 %46, i32* %dd1, align 4
  %47 = load i32, i32* %worm2, align 4
  %idxprom99 = sext i32 %47 to i64
  %arrayidx100 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom99
  %origin101 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx100, i32 0, i32 2
  %48 = load i32, i32* %origin101, align 4
  store i32 %48, i32* %dd2, align 4
  %49 = load i32, i32* %dd1, align 4
  %50 = load i32, i32* %dd2, align 4
  %cmp102 = icmp eq i32 %49, %50
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.92
  store i32 0, i32* %dd2, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.then.92
  br label %if.end.107

if.else.106:                                      ; preds = %if.else.86
  br label %for.inc.258

if.end.107:                                       ; preds = %if.end.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.85
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.63
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.27
  store i32 0, i32* %s, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc, %if.end.110
  %51 = load i32, i32* %s, align 4
  %cmp112 = icmp slt i32 %51, 2
  br i1 %cmp112, label %for.body.114, label %for.end

for.body.114:                                     ; preds = %for.cond.111
  %52 = load i32, i32* %s, align 4
  %cmp115 = icmp eq i32 %52, 0
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %for.body.114
  %53 = load i32, i32* %dd1, align 4
  store i32 %53, i32* %dd, align 4
  br label %if.end.119

if.else.118:                                      ; preds = %for.body.114
  %54 = load i32, i32* %dd2, align 4
  store i32 %54, i32* %dd, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118, %if.then.117
  %55 = load i32, i32* %dd, align 4
  %cmp120 = icmp eq i32 %55, 0
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  br label %for.inc

if.end.123:                                       ; preds = %if.end.119
  %56 = load i32, i32* %dd, align 4
  %idxprom124 = sext i32 %56 to i64
  %arrayidx125 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom124
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx125, i32 0, i32 1
  %57 = load i32, i32* %id, align 4
  %idxprom126 = sext i32 %57 to i64
  %58 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx127 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %58, i64 %idxprom126
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx127, i32 0, i32 6
  %59 = load i32, i32* %safety, align 4
  %cmp128 = icmp eq i32 %59, 5
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.123
  br label %for.inc

if.end.131:                                       ; preds = %if.end.123
  %60 = load i32, i32* %dd, align 4
  %idxprom132 = sext i32 %60 to i64
  %arrayidx133 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom132
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx133, i32 0, i32 7
  %61 = load i32, i32* %owl_status, align 4
  %cmp134 = icmp ne i32 %61, 2
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.131
  br label %for.inc

if.end.137:                                       ; preds = %if.end.131
  %62 = load i32, i32* %r, align 4
  %idxprom138 = sext i32 %62 to i64
  %arrayidx139 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom138
  %type140 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx139, i32 0, i32 0
  %63 = load i32, i32* %type140, align 4
  %cmp141 = icmp eq i32 %63, 44
  br i1 %cmp141, label %land.lhs.true.172, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %if.end.137
  %64 = load i32, i32* %r, align 4
  %idxprom144 = sext i32 %64 to i64
  %arrayidx145 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom144
  %type146 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx145, i32 0, i32 0
  %65 = load i32, i32* %type146, align 4
  %cmp147 = icmp eq i32 %65, 2
  br i1 %cmp147, label %land.lhs.true.172, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.143
  %66 = load i32, i32* %r, align 4
  %idxprom150 = sext i32 %66 to i64
  %arrayidx151 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom150
  %type152 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx151, i32 0, i32 0
  %67 = load i32, i32* %type152, align 4
  %cmp153 = icmp eq i32 %67, 4
  br i1 %cmp153, label %land.lhs.true.172, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.149
  %68 = load i32, i32* %r, align 4
  %idxprom156 = sext i32 %68 to i64
  %arrayidx157 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom156
  %type158 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx157, i32 0, i32 0
  %69 = load i32, i32* %type158, align 4
  %cmp159 = icmp eq i32 %69, 6
  br i1 %cmp159, label %land.lhs.true.172, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.155
  %70 = load i32, i32* %r, align 4
  %idxprom162 = sext i32 %70 to i64
  %arrayidx163 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom162
  %type164 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx163, i32 0, i32 0
  %71 = load i32, i32* %type164, align 4
  %cmp165 = icmp eq i32 %71, 54
  br i1 %cmp165, label %land.lhs.true, label %if.end.193

land.lhs.true:                                    ; preds = %lor.lhs.false.161
  %72 = load i32, i32* %dd, align 4
  %idxprom167 = sext i32 %72 to i64
  %arrayidx168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom167
  %73 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %73 to i32
  %74 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %74
  %cmp170 = icmp eq i32 %conv169, %sub
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.193

land.lhs.true.172:                                ; preds = %land.lhs.true, %lor.lhs.false.155, %lor.lhs.false.149, %lor.lhs.false.143, %if.end.137
  %75 = load i32, i32* %pos, align 4
  %76 = load i32, i32* %dd, align 4
  %call173 = call i32 @owl_attack_move_reason_known(i32 %75, i32 %76)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.end.193, label %if.then.175

if.then.175:                                      ; preds = %land.lhs.true.172
  store i32 0, i32* %kworm, align 4
  %77 = load i32, i32* %pos, align 4
  %78 = load i32, i32* %dd, align 4
  %call176 = call i32 @owl_does_attack(i32 %77, i32 %78, i32* %kworm)
  store i32 %call176, i32* %acode, align 4
  %79 = load i32, i32* %acode, align 4
  %80 = load i32, i32* %dd, align 4
  %idxprom177 = sext i32 %80 to i64
  %arrayidx178 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom177
  %owl_attack_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx178, i32 0, i32 9
  %81 = load i32, i32* %owl_attack_code, align 4
  %cmp179 = icmp sge i32 %79, %81
  br i1 %cmp179, label %if.then.181, label %if.end.192

if.then.181:                                      ; preds = %if.then.175
  %82 = load i32, i32* %acode, align 4
  %cmp182 = icmp eq i32 %82, 3
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %if.then.181
  %83 = load i32, i32* %pos, align 4
  %84 = load i32, i32* %dd, align 4
  %85 = load i32, i32* %kworm, align 4
  call void @add_gain_move(i32 %83, i32 %84, i32 %85)
  br label %if.end.186

if.else.185:                                      ; preds = %if.then.181
  %86 = load i32, i32* %pos, align 4
  %87 = load i32, i32* %dd, align 4
  %88 = load i32, i32* %acode, align 4
  call void @add_owl_attack_move(i32 %86, i32 %87, i32 %88)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.185, %if.then.184
  %89 = load i32, i32* @verbose, align 4
  %tobool187 = icmp ne i32 %89, 0
  br i1 %tobool187, label %cond.false.189, label %cond.true.188

cond.true.188:                                    ; preds = %if.end.186
  br label %cond.end.191

cond.false.189:                                   ; preds = %if.end.186
  %90 = load i32, i32* %pos, align 4
  %91 = load i32, i32* %dd, align 4
  %92 = load i32, i32* %acode, align 4
  %call190 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i32 %90, i32 %91, i32 %92)
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.189, %cond.true.188
  br label %if.end.192

if.end.192:                                       ; preds = %cond.end.191, %if.then.175
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %land.lhs.true.172, %land.lhs.true, %lor.lhs.false.161
  %93 = load i32, i32* %r, align 4
  %idxprom194 = sext i32 %93 to i64
  %arrayidx195 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom194
  %type196 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx195, i32 0, i32 0
  %94 = load i32, i32* %type196, align 4
  %cmp197 = icmp eq i32 %94, 46
  br i1 %cmp197, label %land.lhs.true.235, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.end.193
  %95 = load i32, i32* %r, align 4
  %idxprom200 = sext i32 %95 to i64
  %arrayidx201 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom200
  %type202 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx201, i32 0, i32 0
  %96 = load i32, i32* %type202, align 4
  %cmp203 = icmp eq i32 %96, 14
  br i1 %cmp203, label %land.lhs.true.235, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.199
  %97 = load i32, i32* %r, align 4
  %idxprom206 = sext i32 %97 to i64
  %arrayidx207 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom206
  %type208 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx207, i32 0, i32 0
  %98 = load i32, i32* %type208, align 4
  %cmp209 = icmp eq i32 %98, 8
  br i1 %cmp209, label %land.lhs.true.235, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %lor.lhs.false.205
  %99 = load i32, i32* %r, align 4
  %idxprom212 = sext i32 %99 to i64
  %arrayidx213 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom212
  %type214 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx213, i32 0, i32 0
  %100 = load i32, i32* %type214, align 4
  %cmp215 = icmp eq i32 %100, 10
  br i1 %cmp215, label %land.lhs.true.235, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.211
  %101 = load i32, i32* %r, align 4
  %idxprom218 = sext i32 %101 to i64
  %arrayidx219 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom218
  %type220 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx219, i32 0, i32 0
  %102 = load i32, i32* %type220, align 4
  %cmp221 = icmp eq i32 %102, 12
  br i1 %cmp221, label %land.lhs.true.235, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.217
  %103 = load i32, i32* %r, align 4
  %idxprom224 = sext i32 %103 to i64
  %arrayidx225 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom224
  %type226 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx225, i32 0, i32 0
  %104 = load i32, i32* %type226, align 4
  %cmp227 = icmp eq i32 %104, 54
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.257

land.lhs.true.229:                                ; preds = %lor.lhs.false.223
  %105 = load i32, i32* %dd, align 4
  %idxprom230 = sext i32 %105 to i64
  %arrayidx231 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom230
  %106 = load i8, i8* %arrayidx231, align 1
  %conv232 = zext i8 %106 to i32
  %107 = load i32, i32* %color.addr, align 4
  %cmp233 = icmp eq i32 %conv232, %107
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.257

land.lhs.true.235:                                ; preds = %land.lhs.true.229, %lor.lhs.false.217, %lor.lhs.false.211, %lor.lhs.false.205, %lor.lhs.false.199, %if.end.193
  %108 = load i32, i32* %pos, align 4
  %109 = load i32, i32* %dd, align 4
  %call236 = call i32 @owl_defense_move_reason_known(i32 %108, i32 %109)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.end.257, label %if.then.238

if.then.238:                                      ; preds = %land.lhs.true.235
  store i32 0, i32* %kworm239, align 4
  %110 = load i32, i32* %pos, align 4
  %111 = load i32, i32* %dd, align 4
  %call240 = call i32 @owl_does_defend(i32 %110, i32 %111, i32* %kworm239)
  store i32 %call240, i32* %dcode, align 4
  %112 = load i32, i32* %dcode, align 4
  %113 = load i32, i32* %dd, align 4
  %idxprom241 = sext i32 %113 to i64
  %arrayidx242 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom241
  %owl_defense_code = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx242, i32 0, i32 13
  %114 = load i32, i32* %owl_defense_code, align 4
  %cmp243 = icmp sge i32 %112, %114
  br i1 %cmp243, label %if.then.245, label %if.end.256

if.then.245:                                      ; preds = %if.then.238
  %115 = load i32, i32* %dcode, align 4
  %cmp246 = icmp eq i32 %115, 2
  br i1 %cmp246, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %if.then.245
  %116 = load i32, i32* %pos, align 4
  %117 = load i32, i32* %dd, align 4
  %118 = load i32, i32* %kworm239, align 4
  call void @add_loss_move(i32 %116, i32 %117, i32 %118)
  br label %if.end.250

if.else.249:                                      ; preds = %if.then.245
  %119 = load i32, i32* %pos, align 4
  %120 = load i32, i32* %dd, align 4
  %121 = load i32, i32* %dcode, align 4
  call void @add_owl_defense_move(i32 %119, i32 %120, i32 %121)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.249, %if.then.248
  %122 = load i32, i32* @verbose, align 4
  %tobool251 = icmp ne i32 %122, 0
  br i1 %tobool251, label %cond.false.253, label %cond.true.252

cond.true.252:                                    ; preds = %if.end.250
  br label %cond.end.255

cond.false.253:                                   ; preds = %if.end.250
  %123 = load i32, i32* %pos, align 4
  %124 = load i32, i32* %dd, align 4
  %125 = load i32, i32* %dcode, align 4
  %call254 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i32 %123, i32 %124, i32 %125)
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.253, %cond.true.252
  br label %if.end.256

if.end.256:                                       ; preds = %cond.end.255, %if.then.238
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %land.lhs.true.235, %land.lhs.true.229, %lor.lhs.false.223
  br label %for.inc

for.inc:                                          ; preds = %if.end.257, %if.then.136, %if.then.130, %if.then.122
  %126 = load i32, i32* %s, align 4
  %inc = add nsw i32 %126, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.111

for.end:                                          ; preds = %for.cond.111
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end, %if.else.106, %if.then.84
  %127 = load i32, i32* %k, align 4
  %inc259 = add nsw i32 %127, 1
  store i32 %inc259, i32* %k, align 4
  br label %for.cond.3

for.end.260:                                      ; preds = %if.then.13, %for.cond.3
  br label %for.inc.261

for.inc.261:                                      ; preds = %for.end.260, %if.then
  %128 = load i32, i32* %pos, align 4
  %inc262 = add nsw i32 %128, 1
  store i32 %inc262, i32* %pos, align 4
  br label %for.cond

for.end.263:                                      ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.422, %for.end.263
  %129 = load i32, i32* %pos, align 4
  %cmp265 = icmp slt i32 %129, 400
  br i1 %cmp265, label %for.body.267, label %for.end.424

for.body.267:                                     ; preds = %for.cond.264
  %130 = load i32, i32* %pos, align 4
  %idxprom268 = sext i32 %130 to i64
  %arrayidx269 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom268
  %131 = load i8, i8* %arrayidx269, align 1
  %conv270 = zext i8 %131 to i32
  %cmp271 = icmp eq i32 %conv270, 1
  br i1 %cmp271, label %land.lhs.true.279, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %for.body.267
  %132 = load i32, i32* %pos, align 4
  %idxprom274 = sext i32 %132 to i64
  %arrayidx275 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom274
  %133 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %133 to i32
  %cmp277 = icmp eq i32 %conv276, 2
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.421

land.lhs.true.279:                                ; preds = %lor.lhs.false.273, %for.body.267
  %134 = load i32, i32* %pos, align 4
  %idxprom280 = sext i32 %134 to i64
  %arrayidx281 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom280
  %origin282 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx281, i32 0, i32 2
  %135 = load i32, i32* %origin282, align 4
  %136 = load i32, i32* %pos, align 4
  %cmp283 = icmp eq i32 %135, %136
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.421

land.lhs.true.285:                                ; preds = %land.lhs.true.279
  %137 = load i32, i32* %pos, align 4
  %idxprom286 = sext i32 %137 to i64
  %arrayidx287 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom286
  %owl_status288 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx287, i32 0, i32 7
  %138 = load i32, i32* %owl_status288, align 4
  %cmp289 = icmp eq i32 %138, 2
  br i1 %cmp289, label %if.then.291, label %if.end.421

if.then.291:                                      ; preds = %land.lhs.true.285
  store i32 21, i32* %pos2, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.418, %if.then.291
  %139 = load i32, i32* %pos2, align 4
  %cmp293 = icmp slt i32 %139, 400
  br i1 %cmp293, label %for.body.295, label %for.end.420

for.body.295:                                     ; preds = %for.cond.292
  %140 = load i32, i32* %pos2, align 4
  %idxprom296 = sext i32 %140 to i64
  %arrayidx297 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom296
  %141 = load i8, i8* %arrayidx297, align 1
  %conv298 = zext i8 %141 to i32
  %cmp299 = icmp ne i32 %conv298, 0
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %for.body.295
  br label %for.inc.418

if.end.302:                                       ; preds = %for.body.295
  store i32 0, i32* %worth_trying, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.361, %if.end.302
  %142 = load i32, i32* %k, align 4
  %cmp304 = icmp slt i32 %142, 120
  br i1 %cmp304, label %for.body.306, label %for.end.363

for.body.306:                                     ; preds = %for.cond.303
  %143 = load i32, i32* %k, align 4
  %idxprom308 = sext i32 %143 to i64
  %144 = load i32, i32* %pos2, align 4
  %idxprom309 = sext i32 %144 to i64
  %arrayidx310 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom309
  %reason311 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx310, i32 0, i32 18
  %arrayidx312 = getelementptr inbounds [120 x i32], [120 x i32]* %reason311, i32 0, i64 %idxprom308
  %145 = load i32, i32* %arrayidx312, align 4
  store i32 %145, i32* %r307, align 4
  %146 = load i32, i32* %r307, align 4
  %cmp313 = icmp slt i32 %146, 0
  br i1 %cmp313, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %for.body.306
  br label %for.end.363

if.end.316:                                       ; preds = %for.body.306
  %147 = load i32, i32* %r307, align 4
  %idxprom317 = sext i32 %147 to i64
  %arrayidx318 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom317
  %type319 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx318, i32 0, i32 0
  %148 = load i32, i32* %type319, align 4
  %cmp320 = icmp eq i32 %148, 26
  br i1 %cmp320, label %if.then.352, label %lor.lhs.false.322

lor.lhs.false.322:                                ; preds = %if.end.316
  %149 = load i32, i32* %r307, align 4
  %idxprom323 = sext i32 %149 to i64
  %arrayidx324 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom323
  %type325 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx324, i32 0, i32 0
  %150 = load i32, i32* %type325, align 4
  %cmp326 = icmp eq i32 %150, 28
  br i1 %cmp326, label %if.then.352, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %lor.lhs.false.322
  %151 = load i32, i32* %r307, align 4
  %idxprom329 = sext i32 %151 to i64
  %arrayidx330 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom329
  %type331 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx330, i32 0, i32 0
  %152 = load i32, i32* %type331, align 4
  %cmp332 = icmp eq i32 %152, 30
  br i1 %cmp332, label %if.then.352, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %lor.lhs.false.328
  %153 = load i32, i32* %r307, align 4
  %idxprom335 = sext i32 %153 to i64
  %arrayidx336 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom335
  %type337 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx336, i32 0, i32 0
  %154 = load i32, i32* %type337, align 4
  %cmp338 = icmp eq i32 %154, 32
  br i1 %cmp338, label %if.then.352, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %lor.lhs.false.334
  %155 = load i32, i32* %r307, align 4
  %idxprom341 = sext i32 %155 to i64
  %arrayidx342 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom341
  %type343 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx342, i32 0, i32 0
  %156 = load i32, i32* %type343, align 4
  %cmp344 = icmp eq i32 %156, 34
  br i1 %cmp344, label %if.then.352, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %lor.lhs.false.340
  %157 = load i32, i32* %r307, align 4
  %idxprom347 = sext i32 %157 to i64
  %arrayidx348 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom347
  %type349 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx348, i32 0, i32 0
  %158 = load i32, i32* %type349, align 4
  %cmp350 = icmp eq i32 %158, 36
  br i1 %cmp350, label %if.then.352, label %if.end.360

if.then.352:                                      ; preds = %lor.lhs.false.346, %lor.lhs.false.340, %lor.lhs.false.334, %lor.lhs.false.328, %lor.lhs.false.322, %if.end.316
  %159 = load i32, i32* %r307, align 4
  %idxprom353 = sext i32 %159 to i64
  %arrayidx354 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom353
  %what355 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx354, i32 0, i32 1
  %160 = load i32, i32* %what355, align 4
  store i32 %160, i32* %dd, align 4
  %161 = load i32, i32* %dd, align 4
  %162 = load i32, i32* %pos, align 4
  %call356 = call i32 @are_neighbor_dragons(i32 %161, i32 %162)
  %tobool357 = icmp ne i32 %call356, 0
  br i1 %tobool357, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %if.then.352
  store i32 1, i32* %worth_trying, align 4
  br label %for.end.363

if.end.359:                                       ; preds = %if.then.352
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.359, %lor.lhs.false.346
  br label %for.inc.361

for.inc.361:                                      ; preds = %if.end.360
  %163 = load i32, i32* %k, align 4
  %inc362 = add nsw i32 %163, 1
  store i32 %inc362, i32* %k, align 4
  br label %for.cond.303

for.end.363:                                      ; preds = %if.then.358, %if.then.315, %for.cond.303
  %164 = load i32, i32* %worth_trying, align 4
  %tobool364 = icmp ne i32 %164, 0
  br i1 %tobool364, label %if.then.365, label %if.end.417

if.then.365:                                      ; preds = %for.end.363
  %165 = load i32, i32* %pos, align 4
  %idxprom366 = sext i32 %165 to i64
  %arrayidx367 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom366
  %166 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %166 to i32
  %167 = load i32, i32* %color.addr, align 4
  %cmp369 = icmp eq i32 %conv368, %167
  br i1 %cmp369, label %land.lhs.true.371, label %if.else.390

land.lhs.true.371:                                ; preds = %if.then.365
  %168 = load i32, i32* %pos2, align 4
  %169 = load i32, i32* %pos, align 4
  %call372 = call i32 @owl_defense_move_reason_known(i32 %168, i32 %169)
  %tobool373 = icmp ne i32 %call372, 0
  br i1 %tobool373, label %if.else.390, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.371
  store i32 0, i32* %kworm375, align 4
  %170 = load i32, i32* %pos2, align 4
  %171 = load i32, i32* %pos, align 4
  %call377 = call i32 @owl_does_defend(i32 %170, i32 %171, i32* %kworm375)
  store i32 %call377, i32* %dcode376, align 4
  %172 = load i32, i32* %dcode376, align 4
  %173 = load i32, i32* %pos, align 4
  %idxprom378 = sext i32 %173 to i64
  %arrayidx379 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom378
  %owl_defense_code380 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx379, i32 0, i32 13
  %174 = load i32, i32* %owl_defense_code380, align 4
  %cmp381 = icmp sge i32 %172, %174
  br i1 %cmp381, label %if.then.383, label %if.end.389

if.then.383:                                      ; preds = %if.then.374
  %175 = load i32, i32* %dcode376, align 4
  %cmp384 = icmp eq i32 %175, 2
  br i1 %cmp384, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %if.then.383
  %176 = load i32, i32* %pos2, align 4
  %177 = load i32, i32* %pos, align 4
  %178 = load i32, i32* %kworm375, align 4
  call void @add_loss_move(i32 %176, i32 %177, i32 %178)
  br label %if.end.388

if.else.387:                                      ; preds = %if.then.383
  %179 = load i32, i32* %pos2, align 4
  %180 = load i32, i32* %pos, align 4
  %181 = load i32, i32* %dcode376, align 4
  call void @add_owl_defense_move(i32 %179, i32 %180, i32 %181)
  br label %if.end.388

if.end.388:                                       ; preds = %if.else.387, %if.then.386
  br label %if.end.389

if.end.389:                                       ; preds = %if.end.388, %if.then.374
  br label %if.end.416

if.else.390:                                      ; preds = %land.lhs.true.371, %if.then.365
  %182 = load i32, i32* %pos, align 4
  %idxprom391 = sext i32 %182 to i64
  %arrayidx392 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom391
  %183 = load i8, i8* %arrayidx392, align 1
  %conv393 = zext i8 %183 to i32
  %184 = load i32, i32* %color.addr, align 4
  %cmp394 = icmp ne i32 %conv393, %184
  br i1 %cmp394, label %land.lhs.true.396, label %if.end.415

land.lhs.true.396:                                ; preds = %if.else.390
  %185 = load i32, i32* %pos2, align 4
  %186 = load i32, i32* %pos, align 4
  %call397 = call i32 @owl_attack_move_reason_known(i32 %185, i32 %186)
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.end.415, label %if.then.399

if.then.399:                                      ; preds = %land.lhs.true.396
  store i32 0, i32* %kworm400, align 4
  %187 = load i32, i32* %pos2, align 4
  %188 = load i32, i32* %pos, align 4
  %call402 = call i32 @owl_does_attack(i32 %187, i32 %188, i32* %kworm400)
  store i32 %call402, i32* %acode401, align 4
  %189 = load i32, i32* %acode401, align 4
  %190 = load i32, i32* %pos, align 4
  %idxprom403 = sext i32 %190 to i64
  %arrayidx404 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom403
  %owl_attack_code405 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx404, i32 0, i32 9
  %191 = load i32, i32* %owl_attack_code405, align 4
  %cmp406 = icmp sge i32 %189, %191
  br i1 %cmp406, label %if.then.408, label %if.end.414

if.then.408:                                      ; preds = %if.then.399
  %192 = load i32, i32* %acode401, align 4
  %cmp409 = icmp eq i32 %192, 3
  br i1 %cmp409, label %if.then.411, label %if.else.412

if.then.411:                                      ; preds = %if.then.408
  %193 = load i32, i32* %pos2, align 4
  %194 = load i32, i32* %pos, align 4
  %195 = load i32, i32* %kworm400, align 4
  call void @add_gain_move(i32 %193, i32 %194, i32 %195)
  br label %if.end.413

if.else.412:                                      ; preds = %if.then.408
  %196 = load i32, i32* %pos2, align 4
  %197 = load i32, i32* %pos, align 4
  %198 = load i32, i32* %acode401, align 4
  call void @add_owl_attack_move(i32 %196, i32 %197, i32 %198)
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.412, %if.then.411
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.413, %if.then.399
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %land.lhs.true.396, %if.else.390
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.end.389
  br label %if.end.417

if.end.417:                                       ; preds = %if.end.416, %for.end.363
  br label %for.inc.418

for.inc.418:                                      ; preds = %if.end.417, %if.then.301
  %199 = load i32, i32* %pos2, align 4
  %inc419 = add nsw i32 %199, 1
  store i32 %inc419, i32* %pos2, align 4
  br label %for.cond.292

for.end.420:                                      ; preds = %for.cond.292
  br label %if.end.421

if.end.421:                                       ; preds = %for.end.420, %land.lhs.true.285, %land.lhs.true.279, %lor.lhs.false.273
  br label %for.inc.422

for.inc.422:                                      ; preds = %if.end.421
  %200 = load i32, i32* %pos, align 4
  %inc423 = add nsw i32 %200, 1
  store i32 %inc423, i32* %pos, align 4
  br label %for.cond.264

for.end.424:                                      ; preds = %for.cond.264
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @examine_move_safety(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %safety = alloca i32, align 4
  %tactical_safety = alloca i32, align 4
  %r = alloca i32, align 4
  %type = alloca i32, align 4
  %what = alloca i32, align 4
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %size = alloca i32, align 4
  %m = alloca i32, align 4
  %our_color_neighbors = alloca i32, align 4
  %num_adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %adj = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %aa184 = alloca i32, align 4
  %worm1 = alloca i32, align 4
  %worm2 = alloca i32, align 4
  %aa209 = alloca i32, align 4
  %bb213 = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  call void @start_timer(i32 3)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.291, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.293

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %safety, align 4
  store i32 0, i32* %tactical_safety, align 4
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.291

if.end:                                           ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.272, %if.end
  %3 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %3, 120
  br i1 %cmp4, label %for.body.6, label %for.end.274

for.body.6:                                       ; preds = %for.cond.3
  %4 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %4 to i64
  %5 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx9, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom7
  %6 = load i32, i32* %arrayidx10, align 4
  store i32 %6, i32* %r, align 4
  %7 = load i32, i32* %r, align 4
  %cmp11 = icmp eq i32 %7, -1
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.6
  br label %for.end.274

if.end.14:                                        ; preds = %for.body.6
  %8 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom15
  %type17 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx16, i32 0, i32 0
  %9 = load i32, i32* %type17, align 4
  store i32 %9, i32* %type, align 4
  %10 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom18
  %what20 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx19, i32 0, i32 1
  %11 = load i32, i32* %what20, align 4
  store i32 %11, i32* %what, align 4
  %12 = load i32, i32* %type, align 4
  switch i32 %12, label %sw.epilog [
    i32 16, label %sw.bb
    i32 18, label %sw.bb.21
    i32 32, label %sw.bb.21
    i32 34, label %sw.bb.21
    i32 36, label %sw.bb.21
    i32 62, label %sw.bb.21
    i32 50, label %sw.bb.21
    i32 52, label %sw.bb.21
    i32 100, label %sw.bb.21
    i32 102, label %sw.bb.21
    i32 20, label %sw.bb.22
    i32 22, label %sw.bb.22
    i32 24, label %sw.bb.22
    i32 2, label %sw.bb.23
    i32 4, label %sw.bb.23
    i32 6, label %sw.bb.23
    i32 26, label %sw.bb.23
    i32 28, label %sw.bb.23
    i32 30, label %sw.bb.23
    i32 60, label %sw.bb.23
    i32 8, label %sw.bb.183
    i32 10, label %sw.bb.183
    i32 12, label %sw.bb.183
    i32 3, label %sw.bb.197
    i32 9, label %sw.bb.197
    i32 14, label %sw.bb.198
  ]

sw.bb:                                            ; preds = %if.end.14
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.14, %if.end.14, %if.end.14
  store i32 1, i32* %safety, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14, %if.end.14
  store i32 0, i32* %aa, align 4
  store i32 0, i32* %bb, align 4
  %13 = load i32, i32* %type, align 4
  %cmp24 = icmp eq i32 %13, 2
  br i1 %cmp24, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.23
  %14 = load i32, i32* %type, align 4
  %cmp26 = icmp eq i32 %14, 4
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %15, 6
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false, %sw.bb.23
  %16 = load i32, i32* %what, align 4
  store i32 %16, i32* %aa, align 4
  %17 = load i32, i32* %aa, align 4
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx33, i32 0, i32 2
  %18 = load float, float* %effective_size, align 4
  %conv34 = fptosi float %18 to i32
  store i32 %conv34, i32* %size, align 4
  br label %if.end.50

if.else:                                          ; preds = %lor.lhs.false.28
  %19 = load i32, i32* %type, align 4
  %cmp35 = icmp eq i32 %19, 60
  br i1 %cmp35, label %if.then.37, label %if.else.44

if.then.37:                                       ; preds = %if.else
  %20 = load i32, i32* %what, align 4
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom38
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx39, i32 0, i32 3
  %21 = load i32, i32* %what2, align 4
  store i32 %21, i32* %aa, align 4
  %22 = load i32, i32* %aa, align 4
  %idxprom40 = sext i32 %22 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom40
  %effective_size42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx41, i32 0, i32 2
  %23 = load float, float* %effective_size42, align 4
  %conv43 = fptosi float %23 to i32
  store i32 %conv43, i32* %size, align 4
  br label %if.end.49

if.else.44:                                       ; preds = %if.else
  %24 = load i32, i32* %what, align 4
  store i32 %24, i32* %aa, align 4
  %25 = load i32, i32* %aa, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom45
  %effective_size47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx46, i32 0, i32 4
  %26 = load float, float* %effective_size47, align 4
  %conv48 = fptosi float %26 to i32
  store i32 %conv48, i32* %size, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.44, %if.then.37
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.31
  %27 = load i32, i32* %size, align 4
  %cmp51 = icmp sge i32 %27, 8
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %sw.epilog

if.end.54:                                        ; preds = %if.end.50
  store i32 0, i32* %our_color_neighbors, align 4
  %28 = load i32, i32* %type, align 4
  %cmp55 = icmp eq i32 %28, 2
  br i1 %cmp55, label %if.then.63, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.54
  %29 = load i32, i32* %type, align 4
  %cmp58 = icmp eq i32 %29, 4
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.57
  %30 = load i32, i32* %type, align 4
  %cmp61 = icmp eq i32 %30, 6
  br i1 %cmp61, label %if.then.63, label %if.else.100

if.then.63:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false.57, %if.end.54
  %31 = load i32, i32* %aa, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks(i32 %31, i32* %arraydecay)
  store i32 %call, i32* %num_adj, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.97, %if.then.63
  %32 = load i32, i32* %m, align 4
  %33 = load i32, i32* %num_adj, align 4
  %cmp65 = icmp slt i32 %32, %33
  br i1 %cmp65, label %for.body.67, label %for.end.99

for.body.67:                                      ; preds = %for.cond.64
  %34 = load i32, i32* %m, align 4
  %idxprom68 = sext i32 %34 to i64
  %arrayidx69 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom68
  %35 = load i32, i32* %arrayidx69, align 4
  store i32 %35, i32* %adj, align 4
  %36 = load i32, i32* %adj, align 4
  %idxprom70 = sext i32 %36 to i64
  %arrayidx71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom70
  %37 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %37 to i32
  %38 = load i32, i32* %color.addr, align 4
  %cmp73 = icmp eq i32 %conv72, %38
  br i1 %cmp73, label %if.then.75, label %if.end.96

if.then.75:                                       ; preds = %for.body.67
  store i32 0, i32* %n, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc, %if.then.75
  %39 = load i32, i32* %n, align 4
  %40 = load i32, i32* %m, align 4
  %cmp77 = icmp slt i32 %39, %40
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.76
  %41 = load i32, i32* %n, align 4
  %idxprom80 = sext i32 %41 to i64
  %arrayidx81 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom80
  %42 = load i32, i32* %arrayidx81, align 4
  %idxprom82 = sext i32 %42 to i64
  %arrayidx83 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom82
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx83, i32 0, i32 1
  %43 = load i32, i32* %id, align 4
  %44 = load i32, i32* %adj, align 4
  %idxprom84 = sext i32 %44 to i64
  %arrayidx85 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom84
  %id86 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx85, i32 0, i32 1
  %45 = load i32, i32* %id86, align 4
  %cmp87 = icmp eq i32 %43, %45
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body.79
  br label %for.end

if.end.90:                                        ; preds = %for.body.79
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %46 = load i32, i32* %n, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.76

for.end:                                          ; preds = %if.then.89, %for.cond.76
  %47 = load i32, i32* %n, align 4
  %48 = load i32, i32* %m, align 4
  %cmp91 = icmp eq i32 %47, %48
  br i1 %cmp91, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %for.end
  %49 = load i32, i32* %our_color_neighbors, align 4
  %inc94 = add nsw i32 %49, 1
  store i32 %inc94, i32* %our_color_neighbors, align 4
  %50 = load i32, i32* %adj, align 4
  store i32 %50, i32* %bb, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %for.end
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %for.body.67
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %51 = load i32, i32* %m, align 4
  %inc98 = add nsw i32 %51, 1
  store i32 %inc98, i32* %m, align 4
  br label %for.cond.64

for.end.99:                                       ; preds = %for.cond.64
  br label %if.end.147

if.else.100:                                      ; preds = %lor.lhs.false.60
  store i32 0, i32* %m, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.144, %if.else.100
  %52 = load i32, i32* %m, align 4
  %53 = load i32, i32* %aa, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom102
  %id104 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx103, i32 0, i32 1
  %54 = load i32, i32* %id104, align 4
  %idxprom105 = sext i32 %54 to i64
  %55 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx106 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %55, i64 %idxprom105
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx106, i32 0, i32 2
  %56 = load i32, i32* %neighbors, align 4
  %cmp107 = icmp slt i32 %52, %56
  br i1 %cmp107, label %for.body.109, label %for.end.146

for.body.109:                                     ; preds = %for.cond.101
  %57 = load i32, i32* %m, align 4
  %idxprom110 = sext i32 %57 to i64
  %58 = load i32, i32* %aa, align 4
  %idxprom111 = sext i32 %58 to i64
  %arrayidx112 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom111
  %id113 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx112, i32 0, i32 1
  %59 = load i32, i32* %id113, align 4
  %idxprom114 = sext i32 %59 to i64
  %60 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx115 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %60, i64 %idxprom114
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx115, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom110
  %61 = load i32, i32* %arrayidx116, align 4
  %idxprom117 = sext i32 %61 to i64
  %62 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx118 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %62, i64 %idxprom117
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx118, i32 0, i32 0
  %63 = load i32, i32* %origin, align 4
  %idxprom119 = sext i32 %63 to i64
  %arrayidx120 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom119
  %color121 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx120, i32 0, i32 0
  %64 = load i32, i32* %color121, align 4
  %65 = load i32, i32* %color.addr, align 4
  %cmp122 = icmp eq i32 %64, %65
  br i1 %cmp122, label %if.then.124, label %if.end.143

if.then.124:                                      ; preds = %for.body.109
  %66 = load i32, i32* %our_color_neighbors, align 4
  %inc125 = add nsw i32 %66, 1
  store i32 %inc125, i32* %our_color_neighbors, align 4
  %67 = load i32, i32* %m, align 4
  %idxprom126 = sext i32 %67 to i64
  %68 = load i32, i32* %aa, align 4
  %idxprom127 = sext i32 %68 to i64
  %arrayidx128 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom127
  %id129 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx128, i32 0, i32 1
  %69 = load i32, i32* %id129, align 4
  %idxprom130 = sext i32 %69 to i64
  %70 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx131 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %70, i64 %idxprom130
  %adjacent132 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx131, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent132, i32 0, i64 %idxprom126
  %71 = load i32, i32* %arrayidx133, align 4
  %idxprom134 = sext i32 %71 to i64
  %72 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx135 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %72, i64 %idxprom134
  %origin136 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx135, i32 0, i32 0
  %73 = load i32, i32* %origin136, align 4
  store i32 %73, i32* %bb, align 4
  %74 = load i32, i32* %bb, align 4
  %idxprom137 = sext i32 %74 to i64
  %arrayidx138 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom137
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx138, i32 0, i32 16
  %75 = load i32, i32* %status, align 4
  %cmp139 = icmp eq i32 %75, 1
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.124
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.then.124
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %for.body.109
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %76 = load i32, i32* %m, align 4
  %inc145 = add nsw i32 %76, 1
  store i32 %inc145, i32* %m, align 4
  br label %for.cond.101

for.end.146:                                      ; preds = %for.cond.101
  br label %if.end.147

if.end.147:                                       ; preds = %for.end.146, %for.end.99
  %77 = load i32, i32* %our_color_neighbors, align 4
  %cmp148 = icmp sgt i32 %77, 1
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.end.147
  br label %sw.epilog

if.end.151:                                       ; preds = %if.end.147
  store i32 0, i32* %m, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.166, %if.end.151
  %78 = load i32, i32* %m, align 4
  %cmp153 = icmp slt i32 %78, 4
  br i1 %cmp153, label %for.body.155, label %for.end.168

for.body.155:                                     ; preds = %for.cond.152
  %79 = load i32, i32* %m, align 4
  %idxprom156 = sext i32 %79 to i64
  %arrayidx157 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom156
  %80 = load i32, i32* %arrayidx157, align 4
  store i32 %80, i32* %d, align 4
  %81 = load i32, i32* %pos, align 4
  %82 = load i32, i32* %d, align 4
  %add = add nsw i32 %81, %82
  %idxprom158 = sext i32 %add to i64
  %arrayidx159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom158
  %83 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %83 to i32
  %84 = load i32, i32* %color.addr, align 4
  %cmp161 = icmp eq i32 %conv160, %84
  br i1 %cmp161, label %if.then.163, label %if.end.165

if.then.163:                                      ; preds = %for.body.155
  %85 = load i32, i32* %pos, align 4
  %86 = load i32, i32* %d, align 4
  %add164 = add nsw i32 %85, %86
  store i32 %add164, i32* %bb, align 4
  br label %for.end.168

if.end.165:                                       ; preds = %for.body.155
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %87 = load i32, i32* %m, align 4
  %inc167 = add nsw i32 %87, 1
  store i32 %inc167, i32* %m, align 4
  br label %for.cond.152

for.end.168:                                      ; preds = %if.then.163, %for.cond.152
  %88 = load i32, i32* %bb, align 4
  %cmp169 = icmp eq i32 %88, 0
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %for.end.168
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %sw.epilog

if.end.172:                                       ; preds = %for.end.168
  %89 = load i32, i32* %bb, align 4
  %idxprom173 = sext i32 %89 to i64
  %arrayidx174 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom173
  %status175 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx174, i32 0, i32 16
  %90 = load i32, i32* %status175, align 4
  %cmp176 = icmp eq i32 %90, 1
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.172
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %sw.epilog

if.end.179:                                       ; preds = %if.end.172
  %91 = load i32, i32* %pos, align 4
  %92 = load i32, i32* %bb, align 4
  %call180 = call i32 @owl_does_defend(i32 %91, i32 %92, i32* null)
  %tobool = icmp ne i32 %call180, 0
  br i1 %tobool, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.179
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.179
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.end.14, %if.end.14, %if.end.14
  %93 = load i32, i32* %what, align 4
  store i32 %93, i32* %aa184, align 4
  %94 = load i32, i32* %aa184, align 4
  %idxprom185 = sext i32 %94 to i64
  %arrayidx186 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom185
  %status187 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx186, i32 0, i32 16
  %95 = load i32, i32* %status187, align 4
  %cmp188 = icmp eq i32 %95, 1
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %sw.bb.183
  store i32 1, i32* %safety, align 4
  br label %if.end.196

if.else.191:                                      ; preds = %sw.bb.183
  %96 = load i32, i32* %pos, align 4
  %97 = load i32, i32* %aa184, align 4
  %call192 = call i32 @owl_does_defend(i32 %96, i32 %97, i32* null)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.else.191
  store i32 1, i32* %safety, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %if.else.191
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.190
  br label %sw.epilog

sw.bb.197:                                        ; preds = %if.end.14, %if.end.14
  br label %sw.epilog

sw.bb.198:                                        ; preds = %if.end.14
  %98 = load i32, i32* %r, align 4
  %idxprom199 = sext i32 %98 to i64
  %arrayidx200 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom199
  %what201 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx200, i32 0, i32 1
  %99 = load i32, i32* %what201, align 4
  %idxprom202 = sext i32 %99 to i64
  %arrayidx203 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom202
  %100 = load i32, i32* %arrayidx203, align 4
  store i32 %100, i32* %worm1, align 4
  %101 = load i32, i32* %r, align 4
  %idxprom204 = sext i32 %101 to i64
  %arrayidx205 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom204
  %what206 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx205, i32 0, i32 1
  %102 = load i32, i32* %what206, align 4
  %idxprom207 = sext i32 %102 to i64
  %arrayidx208 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom207
  %103 = load i32, i32* %arrayidx208, align 4
  store i32 %103, i32* %worm2, align 4
  %104 = load i32, i32* %worm1, align 4
  %idxprom210 = sext i32 %104 to i64
  %arrayidx211 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom210
  %origin212 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx211, i32 0, i32 2
  %105 = load i32, i32* %origin212, align 4
  store i32 %105, i32* %aa209, align 4
  %106 = load i32, i32* %worm2, align 4
  %idxprom214 = sext i32 %106 to i64
  %arrayidx215 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom214
  %origin216 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx215, i32 0, i32 2
  %107 = load i32, i32* %origin216, align 4
  store i32 %107, i32* %bb213, align 4
  %108 = load i32, i32* %aa209, align 4
  %109 = load i32, i32* %bb213, align 4
  %cmp217 = icmp eq i32 %108, %109
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %sw.bb.198
  br label %for.inc.272

if.end.220:                                       ; preds = %sw.bb.198
  %110 = load i32, i32* %aa209, align 4
  %idxprom221 = sext i32 %110 to i64
  %arrayidx222 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom221
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx222, i32 0, i32 7
  %111 = load i32, i32* %owl_status, align 4
  %cmp223 = icmp eq i32 %111, 1
  br i1 %cmp223, label %if.then.231, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %if.end.220
  %112 = load i32, i32* %bb213, align 4
  %idxprom226 = sext i32 %112 to i64
  %arrayidx227 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom226
  %owl_status228 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx227, i32 0, i32 7
  %113 = load i32, i32* %owl_status228, align 4
  %cmp229 = icmp eq i32 %113, 1
  br i1 %cmp229, label %if.then.231, label %if.else.232

if.then.231:                                      ; preds = %lor.lhs.false.225, %if.end.220
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %if.end.261

if.else.232:                                      ; preds = %lor.lhs.false.225
  %114 = load i32, i32* %aa209, align 4
  %idxprom233 = sext i32 %114 to i64
  %arrayidx234 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom233
  %owl_status235 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx234, i32 0, i32 7
  %115 = load i32, i32* %owl_status235, align 4
  %cmp236 = icmp eq i32 %115, 4
  br i1 %cmp236, label %land.lhs.true, label %lor.lhs.false.242

land.lhs.true:                                    ; preds = %if.else.232
  %116 = load i32, i32* %aa209, align 4
  %idxprom238 = sext i32 %116 to i64
  %arrayidx239 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom238
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx239, i32 0, i32 5
  %117 = load i32, i32* %crude_status, align 4
  %cmp240 = icmp eq i32 %117, 1
  br i1 %cmp240, label %if.then.254, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %land.lhs.true, %if.else.232
  %118 = load i32, i32* %bb213, align 4
  %idxprom243 = sext i32 %118 to i64
  %arrayidx244 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom243
  %owl_status245 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx244, i32 0, i32 7
  %119 = load i32, i32* %owl_status245, align 4
  %cmp246 = icmp eq i32 %119, 4
  br i1 %cmp246, label %land.lhs.true.248, label %if.else.255

land.lhs.true.248:                                ; preds = %lor.lhs.false.242
  %120 = load i32, i32* %bb213, align 4
  %idxprom249 = sext i32 %120 to i64
  %arrayidx250 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom249
  %crude_status251 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx250, i32 0, i32 5
  %121 = load i32, i32* %crude_status251, align 4
  %cmp252 = icmp eq i32 %121, 1
  br i1 %cmp252, label %if.then.254, label %if.else.255

if.then.254:                                      ; preds = %land.lhs.true.248, %land.lhs.true
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %if.end.260

if.else.255:                                      ; preds = %land.lhs.true.248, %lor.lhs.false.242
  %122 = load i32, i32* %pos, align 4
  %123 = load i32, i32* %aa209, align 4
  %124 = load i32, i32* %bb213, align 4
  %call256 = call i32 @owl_connection_defends(i32 %122, i32 %123, i32 %124)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.else.255
  store i32 1, i32* %tactical_safety, align 4
  store i32 1, i32* %safety, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.258, %if.else.255
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.254
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.231
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.14, %if.end.261, %sw.bb.197, %if.end.196, %if.end.182, %if.then.178, %if.then.171, %if.then.150, %if.then.53, %sw.bb.22, %sw.bb.21, %sw.bb
  %125 = load i32, i32* %safety, align 4
  %cmp262 = icmp eq i32 %125, 1
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.271

land.lhs.true.264:                                ; preds = %sw.epilog
  %126 = load i32, i32* %tactical_safety, align 4
  %cmp265 = icmp eq i32 %126, 1
  br i1 %cmp265, label %if.then.270, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.264
  %127 = load i32, i32* %pos, align 4
  %128 = load i32, i32* %color.addr, align 4
  %call268 = call i32 @safe_move(i32 %127, i32 %128)
  %tobool269 = icmp ne i32 %call268, 0
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %lor.lhs.false.267, %land.lhs.true.264
  br label %for.end.274

if.end.271:                                       ; preds = %lor.lhs.false.267, %sw.epilog
  br label %for.inc.272

for.inc.272:                                      ; preds = %if.end.271, %if.then.219
  %129 = load i32, i32* %k, align 4
  %inc273 = add nsw i32 %129, 1
  store i32 %inc273, i32* %k, align 4
  br label %for.cond.3

for.end.274:                                      ; preds = %if.then.270, %if.then.13, %for.cond.3
  %130 = load i32, i32* %safety, align 4
  %cmp275 = icmp eq i32 %130, 1
  br i1 %cmp275, label %land.lhs.true.277, label %if.else.285

land.lhs.true.277:                                ; preds = %for.end.274
  %131 = load i32, i32* %tactical_safety, align 4
  %tobool278 = icmp ne i32 %131, 0
  br i1 %tobool278, label %if.then.282, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %land.lhs.true.277
  %132 = load i32, i32* %pos, align 4
  %133 = load i32, i32* %color.addr, align 4
  %call280 = call i32 @safe_move(i32 %132, i32 %133)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %if.then.282, label %if.else.285

if.then.282:                                      ; preds = %lor.lhs.false.279, %land.lhs.true.277
  %134 = load i32, i32* %pos, align 4
  %idxprom283 = sext i32 %134 to i64
  %arrayidx284 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom283
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx284, i32 0, i32 19
  store i32 1, i32* %move_safety, align 4
  br label %if.end.289

if.else.285:                                      ; preds = %lor.lhs.false.279, %for.end.274
  %135 = load i32, i32* %pos, align 4
  %idxprom286 = sext i32 %135 to i64
  %arrayidx287 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom286
  %move_safety288 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx287, i32 0, i32 19
  store i32 0, i32* %move_safety288, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.285, %if.then.282
  %136 = load i32, i32* %pos, align 4
  %call290 = call double @time_report(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i32 %136, double 1.000000e+00)
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.289, %if.then
  %137 = load i32, i32* %pos, align 4
  %inc292 = add nsw i32 %137, 1
  store i32 %inc292, i32* %pos, align 4
  br label %for.cond

for.end.293:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @induce_secondary_move_reasons(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %aa = alloca i32, align 4
  %r = alloca i32, align 4
  %attack_move = alloca i32, align 4
  %color_to_move = alloca i32, align 4
  %num_adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %adj1 = alloca i32, align 4
  %adj2 = alloca i32, align 4
  %bb = alloca i32, align 4
  %worm1 = alloca i32, align 4
  %worm2 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos3 = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.345, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.347

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.345

if.end:                                           ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.342, %if.end
  %3 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %3, 120
  br i1 %cmp4, label %for.body.6, label %for.end.344

for.body.6:                                       ; preds = %for.cond.3
  %4 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %4 to i64
  %5 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx9, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom7
  %6 = load i32, i32* %arrayidx10, align 4
  store i32 %6, i32* %r, align 4
  %7 = load i32, i32* %r, align 4
  %cmp11 = icmp slt i32 %7, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.6
  br label %for.end.344

if.end.14:                                        ; preds = %for.body.6
  %8 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom15
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx16, i32 0, i32 0
  %9 = load i32, i32* %type, align 4
  %cmp17 = icmp eq i32 %9, 2
  br i1 %cmp17, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %10 = load i32, i32* %r, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom19
  %type21 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx20, i32 0, i32 0
  %11 = load i32, i32* %type21, align 4
  %cmp22 = icmp eq i32 %11, 8
  br i1 %cmp22, label %if.then.24, label %if.else.205

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.14
  %12 = load i32, i32* %r, align 4
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom25
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx26, i32 0, i32 1
  %13 = load i32, i32* %what, align 4
  store i32 %13, i32* %aa, align 4
  %14 = load i32, i32* %r, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom27
  %type29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx28, i32 0, i32 0
  %15 = load i32, i32* %type29, align 4
  %cmp30 = icmp eq i32 %15, 2
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.24
  store i32 1, i32* %attack_move, align 4
  %16 = load i32, i32* %aa, align 4
  %idxprom33 = sext i32 %16 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %17 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %17 to i32
  %sub = sub nsw i32 3, %conv35
  store i32 %sub, i32* %color_to_move, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.then.24
  store i32 0, i32* %attack_move, align 4
  %18 = load i32, i32* %aa, align 4
  %idxprom36 = sext i32 %18 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %19 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %19 to i32
  store i32 %conv38, i32* %color_to_move, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.32
  %20 = load i32, i32* %aa, align 4
  %idxprom40 = sext i32 %20 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom40
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx41, i32 0, i32 18
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %21 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %21, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.39
  br label %for.inc.342

if.end.46:                                        ; preds = %if.end.39
  %22 = load i32, i32* %aa, align 4
  %idxprom47 = sext i32 %22 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom47
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx48, i32 0, i32 1
  %23 = load i32, i32* %id, align 4
  %idxprom49 = sext i32 %23 to i64
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %idxprom49
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx50, i32 0, i32 6
  %25 = load i32, i32* %safety, align 4
  %cmp51 = icmp eq i32 %25, 5
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  br label %for.inc.342

if.end.54:                                        ; preds = %if.end.46
  %26 = load i32, i32* %attack_move, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.end.59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.54
  %27 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %27 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom55
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx56, i32 0, i32 19
  %28 = load i32, i32* %move_safety, align 4
  %tobool57 = icmp ne i32 %28, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %land.lhs.true
  br label %for.inc.342

if.end.59:                                        ; preds = %land.lhs.true, %if.end.54
  %29 = load i32, i32* %aa, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @extended_chainlinks(i32 %29, i32* %arraydecay, i32 1)
  store i32 %call, i32* %num_adj, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.202, %if.end.59
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %num_adj, align 4
  %cmp61 = icmp slt i32 %30, %31
  br i1 %cmp61, label %for.body.63, label %for.end.204

for.body.63:                                      ; preds = %for.cond.60
  %32 = load i32, i32* %i, align 4
  %add = add nsw i32 %32, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %for.body.63
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %num_adj, align 4
  %cmp65 = icmp slt i32 %33, %34
  br i1 %cmp65, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %for.cond.64
  %35 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %35 to i64
  %arrayidx69 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom68
  %36 = load i32, i32* %arrayidx69, align 4
  store i32 %36, i32* %adj1, align 4
  %37 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %37 to i64
  %arrayidx71 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom70
  %38 = load i32, i32* %arrayidx71, align 4
  store i32 %38, i32* %adj2, align 4
  %39 = load i32, i32* %adj1, align 4
  %idxprom72 = sext i32 %39 to i64
  %arrayidx73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom72
  %40 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %40 to i32
  %41 = load i32, i32* %adj2, align 4
  %idxprom75 = sext i32 %41 to i64
  %arrayidx76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom75
  %42 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %42 to i32
  %cmp78 = icmp ne i32 %conv74, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.67
  br label %for.inc

if.end.81:                                        ; preds = %for.body.67
  %43 = load i32, i32* %attack_move, align 4
  %tobool82 = icmp ne i32 %43, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.96

land.lhs.true.83:                                 ; preds = %if.end.81
  %44 = load i32, i32* %adj1, align 4
  %idxprom84 = sext i32 %44 to i64
  %arrayidx85 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom84
  %45 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %45 to i32
  %46 = load i32, i32* %aa, align 4
  %idxprom87 = sext i32 %46 to i64
  %arrayidx88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom87
  %47 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %47 to i32
  %cmp90 = icmp ne i32 %conv86, %conv89
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.96

land.lhs.true.92:                                 ; preds = %land.lhs.true.83
  %48 = load i32, i32* %adj1, align 4
  %49 = load i32, i32* %adj2, align 4
  %call93 = call i32 @disconnect(i32 %48, i32 %49, i32* null)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.92
  br label %for.inc

if.end.96:                                        ; preds = %land.lhs.true.92, %land.lhs.true.83, %if.end.81
  %50 = load i32, i32* %attack_move, align 4
  %tobool97 = icmp ne i32 %50, 0
  br i1 %tobool97, label %if.end.111, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %if.end.96
  %51 = load i32, i32* %adj1, align 4
  %idxprom99 = sext i32 %51 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %52 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %52 to i32
  %53 = load i32, i32* %aa, align 4
  %idxprom102 = sext i32 %53 to i64
  %arrayidx103 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom102
  %54 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %54 to i32
  %cmp105 = icmp ne i32 %conv101, %conv104
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %land.lhs.true.98
  %55 = load i32, i32* %adj1, align 4
  %56 = load i32, i32* %adj2, align 4
  %call108 = call i32 @string_connect(i32 %55, i32 %56, i32* null)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %land.lhs.true.107
  br label %for.inc

if.end.111:                                       ; preds = %land.lhs.true.107, %land.lhs.true.98, %if.end.96
  %57 = load i32, i32* %attack_move, align 4
  %tobool112 = icmp ne i32 %57, 0
  br i1 %tobool112, label %land.lhs.true.113, label %if.end.123

land.lhs.true.113:                                ; preds = %if.end.111
  %58 = load i32, i32* %adj1, align 4
  %idxprom114 = sext i32 %58 to i64
  %arrayidx115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom114
  %59 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %59 to i32
  %60 = load i32, i32* %aa, align 4
  %idxprom117 = sext i32 %60 to i64
  %arrayidx118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom117
  %61 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %61 to i32
  %cmp120 = icmp eq i32 %conv116, %conv119
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %land.lhs.true.113
  br label %for.inc

if.end.123:                                       ; preds = %land.lhs.true.113, %if.end.111
  %62 = load i32, i32* %attack_move, align 4
  %tobool124 = icmp ne i32 %62, 0
  br i1 %tobool124, label %if.end.138, label %land.lhs.true.125

land.lhs.true.125:                                ; preds = %if.end.123
  %63 = load i32, i32* %adj1, align 4
  %idxprom126 = sext i32 %63 to i64
  %arrayidx127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom126
  %64 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %64 to i32
  %65 = load i32, i32* %aa, align 4
  %idxprom129 = sext i32 %65 to i64
  %arrayidx130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom129
  %66 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %66 to i32
  %cmp132 = icmp eq i32 %conv128, %conv131
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.138

land.lhs.true.134:                                ; preds = %land.lhs.true.125
  %67 = load i32, i32* %adj1, align 4
  %68 = load i32, i32* %adj2, align 4
  %call135 = call i32 @disconnect(i32 %67, i32 %68, i32* null)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %land.lhs.true.134
  br label %for.inc

if.end.138:                                       ; preds = %land.lhs.true.134, %land.lhs.true.125, %if.end.123
  %69 = load i32, i32* %pos, align 4
  %70 = load i32, i32* %color_to_move, align 4
  %71 = load i32, i32* %aa, align 4
  %call139 = call i32 @trymove(i32 %69, i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 %71, i32 0, i32 0)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.201

if.then.141:                                      ; preds = %if.end.138
  %72 = load i32, i32* %attack_move, align 4
  %tobool142 = icmp ne i32 %72, 0
  br i1 %tobool142, label %land.lhs.true.143, label %if.end.158

land.lhs.true.143:                                ; preds = %if.then.141
  %73 = load i32, i32* %adj1, align 4
  %idxprom144 = sext i32 %73 to i64
  %arrayidx145 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom144
  %74 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %74 to i32
  %75 = load i32, i32* %aa, align 4
  %idxprom147 = sext i32 %75 to i64
  %arrayidx148 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom147
  %76 = load i8, i8* %arrayidx148, align 1
  %conv149 = zext i8 %76 to i32
  %cmp150 = icmp ne i32 %conv146, %conv149
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.158

land.lhs.true.152:                                ; preds = %land.lhs.true.143
  %77 = load i32, i32* %adj1, align 4
  %78 = load i32, i32* %adj2, align 4
  %call153 = call i32 @disconnect(i32 %77, i32 %78, i32* null)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.158, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.152
  %79 = load i32, i32* @debug, align 4
  %and = and i32 %79, 2048
  %tobool156 = icmp ne i32 %and, 0
  br i1 %tobool156, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.155
  br label %cond.end

cond.false:                                       ; preds = %if.then.155
  %80 = load i32, i32* %pos, align 4
  %81 = load i32, i32* %adj1, align 4
  %82 = load i32, i32* %adj2, align 4
  %83 = load i32, i32* %aa, align 4
  %call157 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0), i32 %80, i32 %81, i32 %82, i32 %83)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %84 = load i32, i32* %pos, align 4
  %85 = load i32, i32* %adj1, align 4
  %86 = load i32, i32* %adj2, align 4
  call void @add_connection_move(i32 %84, i32 %85, i32 %86)
  br label %if.end.158

if.end.158:                                       ; preds = %cond.end, %land.lhs.true.152, %land.lhs.true.143, %if.then.141
  %87 = load i32, i32* %attack_move, align 4
  %tobool159 = icmp ne i32 %87, 0
  br i1 %tobool159, label %if.end.179, label %land.lhs.true.160

land.lhs.true.160:                                ; preds = %if.end.158
  %88 = load i32, i32* %adj1, align 4
  %idxprom161 = sext i32 %88 to i64
  %arrayidx162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom161
  %89 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %89 to i32
  %90 = load i32, i32* %aa, align 4
  %idxprom164 = sext i32 %90 to i64
  %arrayidx165 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom164
  %91 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %91 to i32
  %cmp167 = icmp ne i32 %conv163, %conv166
  br i1 %cmp167, label %land.lhs.true.169, label %if.end.179

land.lhs.true.169:                                ; preds = %land.lhs.true.160
  %92 = load i32, i32* %adj1, align 4
  %93 = load i32, i32* %adj2, align 4
  %call170 = call i32 @string_connect(i32 %92, i32 %93, i32* null)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.end.179, label %if.then.172

if.then.172:                                      ; preds = %land.lhs.true.169
  %94 = load i32, i32* @debug, align 4
  %and173 = and i32 %94, 2048
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %cond.false.176, label %cond.true.175

cond.true.175:                                    ; preds = %if.then.172
  br label %cond.end.178

cond.false.176:                                   ; preds = %if.then.172
  %95 = load i32, i32* %pos, align 4
  %96 = load i32, i32* %adj1, align 4
  %97 = load i32, i32* %adj2, align 4
  %98 = load i32, i32* %aa, align 4
  %call177 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i32 0, i32 0), i32 %95, i32 %96, i32 %97, i32 %98)
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.176, %cond.true.175
  %99 = load i32, i32* %pos, align 4
  %100 = load i32, i32* %adj1, align 4
  %101 = load i32, i32* %adj2, align 4
  call void @add_cut_move(i32 %99, i32 %100, i32 %101)
  br label %if.end.179

if.end.179:                                       ; preds = %cond.end.178, %land.lhs.true.169, %land.lhs.true.160, %if.end.158
  %102 = load i32, i32* %attack_move, align 4
  %tobool180 = icmp ne i32 %102, 0
  br i1 %tobool180, label %if.end.200, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %if.end.179
  %103 = load i32, i32* %adj1, align 4
  %idxprom182 = sext i32 %103 to i64
  %arrayidx183 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom182
  %104 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %104 to i32
  %105 = load i32, i32* %aa, align 4
  %idxprom185 = sext i32 %105 to i64
  %arrayidx186 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom185
  %106 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %106 to i32
  %cmp188 = icmp eq i32 %conv184, %conv187
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.200

land.lhs.true.190:                                ; preds = %land.lhs.true.181
  %107 = load i32, i32* %adj1, align 4
  %108 = load i32, i32* %adj2, align 4
  %call191 = call i32 @disconnect(i32 %107, i32 %108, i32* null)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %if.end.200, label %if.then.193

if.then.193:                                      ; preds = %land.lhs.true.190
  %109 = load i32, i32* @debug, align 4
  %and194 = and i32 %109, 2048
  %tobool195 = icmp ne i32 %and194, 0
  br i1 %tobool195, label %cond.false.197, label %cond.true.196

cond.true.196:                                    ; preds = %if.then.193
  br label %cond.end.199

cond.false.197:                                   ; preds = %if.then.193
  %110 = load i32, i32* %pos, align 4
  %111 = load i32, i32* %adj1, align 4
  %112 = load i32, i32* %adj2, align 4
  %113 = load i32, i32* %aa, align 4
  %call198 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i32 0, i32 0), i32 %110, i32 %111, i32 %112, i32 %113)
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.197, %cond.true.196
  %114 = load i32, i32* %pos, align 4
  %115 = load i32, i32* %adj1, align 4
  %116 = load i32, i32* %adj2, align 4
  call void @add_connection_move(i32 %114, i32 %115, i32 %116)
  br label %if.end.200

if.end.200:                                       ; preds = %cond.end.199, %land.lhs.true.190, %land.lhs.true.181, %if.end.179
  call void @popgo()
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.138
  br label %for.inc

for.inc:                                          ; preds = %if.end.201, %if.then.137, %if.then.122, %if.then.110, %if.then.95, %if.then.80
  %117 = load i32, i32* %j, align 4
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.end
  %118 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %118, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond.60

for.end.204:                                      ; preds = %for.cond.60
  br label %if.end.341

if.else.205:                                      ; preds = %lor.lhs.false
  %119 = load i32, i32* %r, align 4
  %idxprom206 = sext i32 %119 to i64
  %arrayidx207 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom206
  %type208 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx207, i32 0, i32 0
  %120 = load i32, i32* %type208, align 4
  %cmp209 = icmp eq i32 %120, 26
  br i1 %cmp209, label %if.then.211, label %if.else.249

if.then.211:                                      ; preds = %if.else.205
  %121 = load i32, i32* %r, align 4
  %idxprom212 = sext i32 %121 to i64
  %arrayidx213 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom212
  %what214 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx213, i32 0, i32 1
  %122 = load i32, i32* %what214, align 4
  store i32 %122, i32* %aa, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.246, %if.then.211
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %aa, align 4
  %idxprom216 = sext i32 %124 to i64
  %arrayidx217 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom216
  %id218 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx217, i32 0, i32 1
  %125 = load i32, i32* %id218, align 4
  %idxprom219 = sext i32 %125 to i64
  %126 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx220 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i64 %idxprom219
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx220, i32 0, i32 2
  %127 = load i32, i32* %neighbors, align 4
  %cmp221 = icmp slt i32 %123, %127
  br i1 %cmp221, label %for.body.223, label %for.end.248

for.body.223:                                     ; preds = %for.cond.215
  %128 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %128 to i64
  %129 = load i32, i32* %aa, align 4
  %idxprom225 = sext i32 %129 to i64
  %arrayidx226 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom225
  %id227 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx226, i32 0, i32 1
  %130 = load i32, i32* %id227, align 4
  %idxprom228 = sext i32 %130 to i64
  %131 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx229 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %131, i64 %idxprom228
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx229, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom224
  %132 = load i32, i32* %arrayidx230, align 4
  %idxprom231 = sext i32 %132 to i64
  %133 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx232 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %133, i64 %idxprom231
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx232, i32 0, i32 0
  %134 = load i32, i32* %origin, align 4
  store i32 %134, i32* %bb, align 4
  %135 = load i32, i32* %bb, align 4
  %idxprom233 = sext i32 %135 to i64
  %arrayidx234 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom233
  %color235 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx234, i32 0, i32 0
  %136 = load i32, i32* %color235, align 4
  %137 = load i32, i32* %color.addr, align 4
  %cmp236 = icmp eq i32 %136, %137
  br i1 %cmp236, label %land.lhs.true.238, label %if.end.245

land.lhs.true.238:                                ; preds = %for.body.223
  %138 = load i32, i32* %bb, align 4
  %idxprom239 = sext i32 %138 to i64
  %arrayidx240 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom239
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx240, i32 0, i32 16
  %arrayidx241 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %139 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp eq i32 %139, 0
  br i1 %cmp242, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %land.lhs.true.238
  %140 = load i32, i32* %pos, align 4
  %141 = load i32, i32* %bb, align 4
  call void @add_strategical_defense_move(i32 %140, i32 %141)
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %land.lhs.true.238, %for.body.223
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %142 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %142, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.215

for.end.248:                                      ; preds = %for.cond.215
  br label %if.end.340

if.else.249:                                      ; preds = %if.else.205
  %143 = load i32, i32* %r, align 4
  %idxprom250 = sext i32 %143 to i64
  %arrayidx251 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom250
  %type252 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx251, i32 0, i32 0
  %144 = load i32, i32* %type252, align 4
  %cmp253 = icmp eq i32 %144, 14
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.339

land.lhs.true.255:                                ; preds = %if.else.249
  %145 = load i32, i32* %pos, align 4
  %146 = load i32, i32* %color.addr, align 4
  %sub256 = sub nsw i32 3, %146
  %call257 = call i32 @cut_possible(i32 %145, i32 %sub256)
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then.259, label %if.end.339

if.then.259:                                      ; preds = %land.lhs.true.255
  %147 = load i32, i32* %r, align 4
  %idxprom260 = sext i32 %147 to i64
  %arrayidx261 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom260
  %what262 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx261, i32 0, i32 1
  %148 = load i32, i32* %what262, align 4
  %idxprom263 = sext i32 %148 to i64
  %arrayidx264 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom263
  %149 = load i32, i32* %arrayidx264, align 4
  store i32 %149, i32* %worm1, align 4
  %150 = load i32, i32* %r, align 4
  %idxprom265 = sext i32 %150 to i64
  %arrayidx266 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom265
  %what267 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx266, i32 0, i32 1
  %151 = load i32, i32* %what267, align 4
  %idxprom268 = sext i32 %151 to i64
  %arrayidx269 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom268
  %152 = load i32, i32* %arrayidx269, align 4
  store i32 %152, i32* %worm2, align 4
  store i32 21, i32* %pos2, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.336, %if.then.259
  %153 = load i32, i32* %pos2, align 4
  %cmp271 = icmp slt i32 %153, 400
  br i1 %cmp271, label %for.body.273, label %for.end.338

for.body.273:                                     ; preds = %for.cond.270
  %154 = load i32, i32* %pos2, align 4
  %idxprom274 = sext i32 %154 to i64
  %arrayidx275 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom274
  %155 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %155 to i32
  %cmp277 = icmp ne i32 %conv276, 3
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.335

land.lhs.true.279:                                ; preds = %for.body.273
  %156 = load i32, i32* %pos2, align 4
  %idxprom280 = sext i32 %156 to i64
  %arrayidx281 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom280
  %157 = load i8, i8* %arrayidx281, align 1
  %conv282 = zext i8 %157 to i32
  %cmp283 = icmp eq i32 %conv282, 0
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.335

land.lhs.true.285:                                ; preds = %land.lhs.true.279
  %158 = load i32, i32* %pos2, align 4
  %159 = load i32, i32* %color.addr, align 4
  %sub286 = sub nsw i32 3, %159
  %call287 = call i32 @cut_possible(i32 %158, i32 %sub286)
  %tobool288 = icmp ne i32 %call287, 0
  br i1 %tobool288, label %land.lhs.true.289, label %if.end.335

land.lhs.true.289:                                ; preds = %land.lhs.true.285
  %160 = load i32, i32* %pos, align 4
  %161 = load i32, i32* %pos2, align 4
  %call290 = call i32 @bdist(i32 %160, i32 %161)
  %cmp291 = icmp sle i32 %call290, 5
  br i1 %cmp291, label %if.then.293, label %if.end.335

if.then.293:                                      ; preds = %land.lhs.true.289
  store i32 0, i32* %j, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.332, %if.then.293
  %162 = load i32, i32* %j, align 4
  %cmp295 = icmp slt i32 %162, 8
  br i1 %cmp295, label %for.body.297, label %for.end.334

for.body.297:                                     ; preds = %for.cond.294
  %163 = load i32, i32* %pos2, align 4
  %164 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %164 to i64
  %arrayidx299 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom298
  %165 = load i32, i32* %arrayidx299, align 4
  %add300 = add nsw i32 %163, %165
  store i32 %add300, i32* %pos3, align 4
  %166 = load i32, i32* %pos3, align 4
  %idxprom301 = sext i32 %166 to i64
  %arrayidx302 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom301
  %167 = load i8, i8* %arrayidx302, align 1
  %conv303 = zext i8 %167 to i32
  %cmp304 = icmp ne i32 %conv303, 3
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.331

land.lhs.true.306:                                ; preds = %for.body.297
  %168 = load i32, i32* %pos3, align 4
  %idxprom307 = sext i32 %168 to i64
  %arrayidx308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom307
  %169 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %169 to i32
  %170 = load i32, i32* %color.addr, align 4
  %cmp310 = icmp eq i32 %conv309, %170
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.331

land.lhs.true.312:                                ; preds = %land.lhs.true.306
  %171 = load i32, i32* %pos3, align 4
  %172 = load i32, i32* %worm1, align 4
  %call313 = call i32 @is_same_worm(i32 %171, i32 %172)
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.end.331, label %land.lhs.true.315

land.lhs.true.315:                                ; preds = %land.lhs.true.312
  %173 = load i32, i32* %pos3, align 4
  %174 = load i32, i32* %worm2, align 4
  %call316 = call i32 @is_same_worm(i32 %173, i32 %174)
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.end.331, label %if.then.318

if.then.318:                                      ; preds = %land.lhs.true.315
  %175 = load i32, i32* %pos, align 4
  %176 = load i32, i32* %color.addr, align 4
  %177 = load i32, i32* %worm1, align 4
  %call319 = call i32 @trymove(i32 %175, i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0), i32 %177, i32 0, i32 0)
  %tobool320 = icmp ne i32 %call319, 0
  br i1 %tobool320, label %if.then.321, label %if.end.330

if.then.321:                                      ; preds = %if.then.318
  %178 = load i32, i32* %pos3, align 4
  %179 = load i32, i32* %worm1, align 4
  %call322 = call i32 @disconnect(i32 %178, i32 %179, i32* null)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.end.325, label %if.then.324

if.then.324:                                      ; preds = %if.then.321
  %180 = load i32, i32* %pos, align 4
  %181 = load i32, i32* %pos3, align 4
  %182 = load i32, i32* %worm1, align 4
  call void @add_connection_move(i32 %180, i32 %181, i32 %182)
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %if.then.321
  %183 = load i32, i32* %pos3, align 4
  %184 = load i32, i32* %worm2, align 4
  %call326 = call i32 @disconnect(i32 %183, i32 %184, i32* null)
  %tobool327 = icmp ne i32 %call326, 0
  br i1 %tobool327, label %if.end.329, label %if.then.328

if.then.328:                                      ; preds = %if.end.325
  %185 = load i32, i32* %pos, align 4
  %186 = load i32, i32* %pos3, align 4
  %187 = load i32, i32* %worm2, align 4
  call void @add_connection_move(i32 %185, i32 %186, i32 %187)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.end.325
  call void @popgo()
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.318
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %land.lhs.true.315, %land.lhs.true.312, %land.lhs.true.306, %for.body.297
  br label %for.inc.332

for.inc.332:                                      ; preds = %if.end.331
  %188 = load i32, i32* %j, align 4
  %inc333 = add nsw i32 %188, 1
  store i32 %inc333, i32* %j, align 4
  br label %for.cond.294

for.end.334:                                      ; preds = %for.cond.294
  br label %if.end.335

if.end.335:                                       ; preds = %for.end.334, %land.lhs.true.289, %land.lhs.true.285, %land.lhs.true.279, %for.body.273
  br label %for.inc.336

for.inc.336:                                      ; preds = %if.end.335
  %189 = load i32, i32* %pos2, align 4
  %inc337 = add nsw i32 %189, 1
  store i32 %inc337, i32* %pos2, align 4
  br label %for.cond.270

for.end.338:                                      ; preds = %for.cond.270
  br label %if.end.339

if.end.339:                                       ; preds = %for.end.338, %land.lhs.true.255, %if.else.249
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %for.end.248
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %for.end.204
  br label %for.inc.342

for.inc.342:                                      ; preds = %if.end.341, %if.then.58, %if.then.53, %if.then.45
  %190 = load i32, i32* %k, align 4
  %inc343 = add nsw i32 %190, 1
  store i32 %inc343, i32* %k, align 4
  br label %for.cond.3

for.end.344:                                      ; preds = %if.then.13, %for.cond.3
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.end.344, %if.then
  %191 = load i32, i32* %pos, align 4
  %inc346 = add nsw i32 %191, 1
  store i32 %inc346, i32* %pos, align 4
  br label %for.cond

for.end.347:                                      ; preds = %for.cond
  ret void
}

declare void @list_move_reasons(i32) #1

; Function Attrs: nounwind uwtable
define internal void @value_moves(i32 %color, float %pure_threat_value, float %score) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pure_threat_value.addr = alloca float, align 4
  %score.addr = alloca float, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %pure_threat_value, float* %pure_threat_value.addr, align 4
  store float %score, float* %score.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %cond.end
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %m, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %m, align 4
  %cmp2 = icmp sge i32 %4, 0
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %6
  store i32 %add4, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %8 = load i32, i32* %color.addr, align 4
  %9 = load float, float* %pure_threat_value.addr, align 4
  %10 = load float, float* %score.addr, align 4
  %call5 = call float @value_move_reasons(i32 %7, i32 %8, float %9, float %10)
  %11 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 0
  store float %call5, float* %value, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom6
  %value8 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx7, i32 0, i32 0
  %13 = load float, float* %value8, align 4
  %conv = fpext float %13 to double
  %cmp9 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.inc

if.end:                                           ; preds = %for.body.3
  %14 = load i32, i32* %pos, align 4
  %15 = load i32, i32* %color.addr, align 4
  %call11 = call i32 @is_legal(i32 %14, i32 %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %color.addr, align 4
  %call13 = call i32 @is_illegal_ko_capture(i32 %16, i32 %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  %18 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom16
  %random_number = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx17, i32 0, i32 21
  %19 = load float, float* %random_number, align 4
  %conv18 = fpext float %19 to double
  %mul19 = fmul double 1.000000e-02, %conv18
  %20 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom20
  %randomness_scaling = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx21, i32 0, i32 17
  %21 = load float, float* %randomness_scaling, align 4
  %conv22 = fpext float %21 to double
  %mul23 = fmul double %mul19, %conv22
  %22 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom24
  %value26 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx25, i32 0, i32 0
  %23 = load float, float* %value26, align 4
  %conv27 = fpext float %23 to double
  %add28 = fadd double %conv27, %mul23
  %conv29 = fptrunc double %add28 to float
  store float %conv29, float* %value26, align 4
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom30
  %value32 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx31, i32 0, i32 0
  store float 0.000000e+00, float* %value32, align 4
  %25 = load i32, i32* @verbose, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %cond.false.35, label %cond.true.34

cond.true.34:                                     ; preds = %if.else
  br label %cond.end.37

cond.false.35:                                    ; preds = %if.else
  %26 = load i32, i32* %pos, align 4
  %call36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i32 0, i32 0), i32 %26)
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.35, %cond.true.34
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.37, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.38, %if.then
  %27 = load i32, i32* %m, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %m, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end
  %28 = load i32, i32* %n, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @redistribute_points() #0 {
entry:
  %source = alloca i32, align 4
  %target = alloca i32, align 4
  store i32 21, i32* %target, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %target, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %target, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %target, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom3
  %value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx4, i32 0, i32 0
  %4 = load float, float* %value, align 4
  %5 = load i32, i32* %target, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom5
  %final_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx6, i32 0, i32 1
  store float %4, float* %final_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %target, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %target, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %source, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.57, %for.end
  %7 = load i32, i32* %source, align 4
  %cmp8 = icmp slt i32 %7, 400
  br i1 %cmp8, label %for.body.10, label %for.end.59

for.body.10:                                      ; preds = %for.cond.7
  %8 = load i32, i32* %source, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 3
  br i1 %cmp14, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.body.10
  br label %for.inc.57

if.end.17:                                        ; preds = %for.body.10
  %10 = load i32, i32* %source, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i32 0, i64 %idxprom18
  %11 = load i32, i32* %arrayidx19, align 4
  store i32 %11, i32* %target, align 4
  %12 = load i32, i32* %target, align 4
  %cmp20 = icmp eq i32 %12, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  br label %for.inc.57

if.end.23:                                        ; preds = %if.end.17
  %13 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.23
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %14 = load i32, i32* %source, align 4
  %15 = load i32, i32* %target, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0), i32 %14, i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %16 = load i32, i32* %target, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom24
  %final_value26 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx25, i32 0, i32 1
  %17 = load float, float* %final_value26, align 4
  %18 = load i32, i32* %source, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom27
  %final_value29 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx28, i32 0, i32 1
  %19 = load float, float* %final_value29, align 4
  %cmp30 = fcmp olt float %17, %19
  br i1 %cmp30, label %if.then.32, label %if.end.48

if.then.32:                                       ; preds = %cond.end
  %20 = load i32, i32* @verbose, align 4
  %tobool33 = icmp ne i32 %20, 0
  br i1 %tobool33, label %cond.false.35, label %cond.true.34

cond.true.34:                                     ; preds = %if.then.32
  br label %cond.end.41

cond.false.35:                                    ; preds = %if.then.32
  %21 = load i32, i32* %target, align 4
  %22 = load i32, i32* %source, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom36
  %final_value38 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx37, i32 0, i32 1
  %23 = load float, float* %final_value38, align 4
  %conv39 = fpext float %23 to double
  %call40 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i32 0, i32 0), i32 %21, double %conv39)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.35, %cond.true.34
  %24 = load i32, i32* %source, align 4
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom42
  %final_value44 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx43, i32 0, i32 1
  %25 = load float, float* %final_value44, align 4
  %26 = load i32, i32* %target, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom45
  %final_value47 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx46, i32 0, i32 1
  store float %25, float* %final_value47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.41, %cond.end
  %27 = load i32, i32* @verbose, align 4
  %tobool49 = icmp ne i32 %27, 0
  br i1 %tobool49, label %cond.false.51, label %cond.true.50

cond.true.50:                                     ; preds = %if.end.48
  br label %cond.end.53

cond.false.51:                                    ; preds = %if.end.48
  %28 = load i32, i32* %source, align 4
  %call52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i32 0, i32 0), i32 %28)
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.51, %cond.true.50
  %29 = load i32, i32* %source, align 4
  %idxprom54 = sext i32 %29 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom54
  %final_value56 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx55, i32 0, i32 1
  store float 0.000000e+00, float* %final_value56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %cond.end.53, %if.then.22, %if.then.16
  %30 = load i32, i32* %source, align 4
  %inc58 = add nsw i32 %30, 1
  store i32 %inc58, i32* %source, align 4
  br label %for.cond.7

for.end.59:                                       ; preds = %for.cond.7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_top_moves() #0 {
entry:
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %tval = alloca float, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom1
  store float 0.000000e+00, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %k, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.18, %for.end
  %4 = load i32, i32* %pos, align 4
  %cmp4 = icmp slt i32 %4, 400
  br i1 %cmp4, label %for.body.5, label %for.end.20

for.body.5:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %6 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv, 3
  br i1 %cmp8, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.5
  %7 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom10
  %final_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx11, i32 0, i32 1
  %8 = load float, float* %final_value, align 4
  %conv12 = fpext float %8 to double
  %cmp13 = fcmp ole double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.5
  br label %for.inc.18

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom15
  %final_value17 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx16, i32 0, i32 1
  %10 = load float, float* %final_value17, align 4
  store float %10, float* %tval, align 4
  %11 = load i32, i32* %pos, align 4
  %12 = load float, float* %tval, align 4
  call void @record_top_move(i32 %11, float %12)
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end, %if.then
  %13 = load i32, i32* %pos, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, i32* %pos, align 4
  br label %for.cond.3

for.end.20:                                       ; preds = %for.cond.3
  %14 = load i32, i32* @verbose, align 4
  %cmp21 = icmp sgt i32 %14, 0
  br i1 %cmp21, label %if.then.24, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %for.end.20
  %15 = load i32, i32* @debug, align 4
  %and = and i32 %15, 4194304
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %lor.lhs.false.23, %for.end.20
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.40, %if.then.24
  %16 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %16, 10
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.25
  %17 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom28
  %18 = load float, float* %arrayidx29, align 4
  %conv30 = fpext float %18 to double
  %cmp31 = fcmp ogt double %conv30, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %19 = phi i1 [ false, %for.cond.25 ], [ %cmp31, %land.rhs ]
  br i1 %19, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %land.end
  %20 = load i32, i32* %k, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i32 0, i64 %idxprom34
  %22 = load i32, i32* %arrayidx35, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i32 0, i64 %idxprom36
  %24 = load float, float* %arrayidx37, align 4
  %conv38 = fpext float %24 to double
  %call39 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i32 %add, i32 %22, double %conv38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.33
  %25 = load i32, i32* %k, align 4
  %inc41 = add nsw i32 %25, 1
  store i32 %inc41, i32* %k, align 4
  br label %for.cond.25

for.end.42:                                       ; preds = %land.end
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %lor.lhs.false.23
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_best_move(i32* %the_move, float* %val, i32 %color, i32* %allowed_moves) #0 {
entry:
  %retval = alloca i32, align 4
  %the_move.addr = alloca i32*, align 8
  %val.addr = alloca float*, align 8
  %color.addr = alloca i32, align 4
  %allowed_moves.addr = alloca i32*, align 8
  %good_move_found = alloca i32, align 4
  %ko_values_have_been_added = alloca i32, align 4
  %blunder_tested = alloca [400 x i8], align 16
  %bestval = alloca float, align 4
  %best_move = alloca i32, align 4
  %pos = alloca i32, align 4
  %tval = alloca float, align 4
  %blunder_size = alloca float, align 4
  store i32* %the_move, i32** %the_move.addr, align 8
  store float* %val, float** %val.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32* %allowed_moves, i32** %allowed_moves.addr, align 8
  store i32 0, i32* %good_move_found, align 4
  store i32 0, i32* %ko_values_have_been_added, align 4
  store float 0.000000e+00, float* %bestval, align 4
  store i32 0, i32* %best_move, align 4
  %0 = bitcast [400 x i8]* %blunder_tested to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.100, %entry
  %1 = load i32, i32* %good_move_found, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store float 0.000000e+00, float* %bestval, align 4
  store i32 0, i32* %best_move, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %final_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 1
  %4 = load float, float* %final_value, align 4
  store float %4, float* %tval, align 4
  %5 = load i32*, i32** %allowed_moves.addr, align 8
  %tobool1 = icmp ne i32* %5, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %allowed_moves.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv, 3
  br i1 %cmp7, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %final_value11 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 1
  %12 = load float, float* %final_value11, align 4
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp oeq double %conv12, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  br label %for.inc

if.end.16:                                        ; preds = %lor.lhs.false
  %13 = load float, float* %tval, align 4
  %14 = load float, float* %bestval, align 4
  %cmp17 = fcmp ogt float %13, %14
  br i1 %cmp17, label %if.then.19, label %if.end.33

if.then.19:                                       ; preds = %if.end.16
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* %color.addr, align 4
  %call = call i32 @is_legal(i32 %15, i32 %16)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %if.then.19
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %color.addr, align 4
  %call22 = call i32 @is_illegal_ko_capture(i32 %17, i32 %18)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %lor.lhs.false.21, %if.then.19
  %19 = load float, float* %tval, align 4
  store float %19, float* %bestval, align 4
  %20 = load i32, i32* %pos, align 4
  store i32 %20, i32* %best_move, align 4
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false.21
  %21 = load i32, i32* @verbose, align 4
  %tobool25 = icmp ne i32 %21, 0
  br i1 %tobool25, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %22 = load i32, i32* %pos, align 4
  %call26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i32 0, i32 0), i32 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %23 = load i32, i32* %pos, align 4
  call void @remove_top_move(i32 %23)
  %24 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom27
  %value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx28, i32 0, i32 0
  store float 0.000000e+00, float* %value, align 4
  %25 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom29
  %final_value31 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx30, i32 0, i32 1
  store float 0.000000e+00, float* %final_value31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %cond.end, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %if.then.15, %if.then
  %26 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load float, float* %bestval, align 4
  %conv34 = fpext float %27 to double
  %cmp35 = fcmp ogt double %conv34, 0.000000e+00
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.53

land.lhs.true.37:                                 ; preds = %for.end
  %28 = load i32, i32* %best_move, align 4
  %29 = load i32, i32* %color.addr, align 4
  %call38 = call i32 @is_illegal_ko_capture(i32 %28, i32 %29)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.53

if.then.40:                                       ; preds = %land.lhs.true.37
  %30 = load i32, i32* @verbose, align 4
  %tobool41 = icmp ne i32 %30, 0
  br i1 %tobool41, label %cond.false.43, label %cond.true.42

cond.true.42:                                     ; preds = %if.then.40
  br label %cond.end.45

cond.false.43:                                    ; preds = %if.then.40
  %31 = load i32, i32* %best_move, align 4
  %call44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.98, i32 0, i32 0), i32 %31)
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.42
  %32 = load i32, i32* %best_move, align 4
  %33 = load i32, i32* %color.addr, align 4
  call void @reevaluate_ko_threats(i32 %32, i32 %33)
  call void @redistribute_points()
  %call46 = call double @time_report(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i32 0, i32 0), i32 0, double 1.000000e+00)
  store i32 1, i32* %ko_values_have_been_added, align 4
  %34 = load i32, i32* %best_move, align 4
  call void @remove_top_move(i32 %34)
  %35 = load i32, i32* %best_move, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom47
  %value49 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx48, i32 0, i32 0
  store float 0.000000e+00, float* %value49, align 4
  %36 = load i32, i32* %best_move, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom50
  %final_value52 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx51, i32 0, i32 1
  store float 0.000000e+00, float* %final_value52, align 4
  call void @print_top_moves()
  store i32 0, i32* %good_move_found, align 4
  br label %if.end.100

if.else.53:                                       ; preds = %land.lhs.true.37, %for.end
  %37 = load float, float* %bestval, align 4
  %conv54 = fpext float %37 to double
  %cmp55 = fcmp ogt double %conv54, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else.98

if.then.57:                                       ; preds = %if.else.53
  %38 = load i32, i32* %best_move, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [400 x i8], [400 x i8]* %blunder_tested, i32 0, i64 %idxprom58
  %39 = load i8, i8* %arrayidx59, align 1
  %tobool60 = icmp ne i8 %39, 0
  br i1 %tobool60, label %if.else.96, label %if.then.61

if.then.61:                                       ; preds = %if.then.57
  %40 = load i32, i32* %best_move, align 4
  %41 = load i32, i32* %color.addr, align 4
  %call62 = call float @value_moves_get_blunder_size(i32 %40, i32 %41)
  store float %call62, float* %blunder_size, align 4
  %42 = load float, float* %blunder_size, align 4
  %conv63 = fpext float %42 to double
  %cmp64 = fcmp ogt double %conv63, 0.000000e+00
  br i1 %cmp64, label %if.then.66, label %if.else.94

if.then.66:                                       ; preds = %if.then.61
  %43 = load i32, i32* @verbose, align 4
  %tobool67 = icmp ne i32 %43, 0
  br i1 %tobool67, label %cond.false.69, label %cond.true.68

cond.true.68:                                     ; preds = %if.then.66
  br label %cond.end.72

cond.false.69:                                    ; preds = %if.then.66
  %44 = load i32, i32* %best_move, align 4
  %45 = load float, float* %blunder_size, align 4
  %conv70 = fpext float %45 to double
  %call71 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.100, i32 0, i32 0), i32 %44, double %conv70)
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.true.68
  %46 = load i32, i32* %best_move, align 4
  call void @remove_top_move(i32 %46)
  %47 = load float, float* %blunder_size, align 4
  %48 = load i32, i32* %best_move, align 4
  %idxprom73 = sext i32 %48 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom73
  %value75 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx74, i32 0, i32 0
  %49 = load float, float* %value75, align 4
  %sub = fsub float %49, %47
  store float %sub, float* %value75, align 4
  %50 = load float, float* %blunder_size, align 4
  %51 = load i32, i32* %best_move, align 4
  %idxprom76 = sext i32 %51 to i64
  %arrayidx77 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom76
  %final_value78 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx77, i32 0, i32 1
  %52 = load float, float* %final_value78, align 4
  %sub79 = fsub float %52, %50
  store float %sub79, float* %final_value78, align 4
  %53 = load i32, i32* @verbose, align 4
  %tobool80 = icmp ne i32 %53, 0
  br i1 %tobool80, label %cond.false.82, label %cond.true.81

cond.true.81:                                     ; preds = %cond.end.72
  br label %cond.end.88

cond.false.82:                                    ; preds = %cond.end.72
  %54 = load i32, i32* %best_move, align 4
  %55 = load i32, i32* %best_move, align 4
  %idxprom83 = sext i32 %55 to i64
  %arrayidx84 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom83
  %final_value85 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx84, i32 0, i32 1
  %56 = load float, float* %final_value85, align 4
  %conv86 = fpext float %56 to double
  %call87 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0), i32 %54, double %conv86)
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.82, %cond.true.81
  %57 = load i32, i32* %best_move, align 4
  %58 = load i32, i32* %best_move, align 4
  %idxprom89 = sext i32 %58 to i64
  %arrayidx90 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom89
  %final_value91 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx90, i32 0, i32 1
  %59 = load float, float* %final_value91, align 4
  call void @record_top_move(i32 %57, float %59)
  store i32 0, i32* %good_move_found, align 4
  %60 = load i32, i32* %best_move, align 4
  %idxprom92 = sext i32 %60 to i64
  %arrayidx93 = getelementptr inbounds [400 x i8], [400 x i8]* %blunder_tested, i32 0, i64 %idxprom92
  store i8 1, i8* %arrayidx93, align 1
  br label %if.end.95

if.else.94:                                       ; preds = %if.then.61
  store i32 1, i32* %good_move_found, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %cond.end.88
  br label %if.end.97

if.else.96:                                       ; preds = %if.then.57
  store i32 1, i32* %good_move_found, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.96, %if.end.95
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.53
  store i32 1, i32* %good_move_found, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.end.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %cond.end.45
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load float, float* %bestval, align 4
  %conv101 = fpext float %61 to double
  %cmp102 = fcmp ogt double %conv101, 0.000000e+00
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %while.end
  %62 = load i32, i32* %best_move, align 4
  %cmp105 = icmp ne i32 %62, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104
  %63 = load i32, i32* %best_move, align 4
  %64 = load i32*, i32** %the_move.addr, align 8
  store i32 %63, i32* %64, align 4
  %65 = load float, float* %bestval, align 4
  %66 = load float*, float** %val.addr, align 8
  store float %65, float* %66, align 4
  store i32 1, i32* %retval
  br label %return

if.end.108:                                       ; preds = %land.lhs.true.104, %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.107
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @gprintf(i8*, ...) #1

declare void @increase_depth_values() #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @defense_move_reason_known(i32, i32) #1

declare i32 @attack(i32, i32*) #1

declare i32 @find_defense(i32, i32*) #1

declare void @popgo() #1

declare void @add_defense_move(i32, i32, i32) #1

declare i32 @attack_move_reason_known(i32, i32) #1

declare void @add_attack_move(i32, i32, i32) #1

declare void @decrease_depth_values() #1

declare i32 @find_eye_dragons(i32, %struct.eye_data*, i32, i32*, i32) #1

declare i32 @owl_attack_move_reason_known(i32, i32) #1

declare i32 @owl_does_attack(i32, i32, i32*) #1

declare void @add_gain_move(i32, i32, i32) #1

declare void @add_owl_attack_move(i32, i32, i32) #1

declare i32 @owl_defense_move_reason_known(i32, i32) #1

declare i32 @owl_does_defend(i32, i32, i32*) #1

declare void @add_loss_move(i32, i32, i32) #1

declare void @add_owl_defense_move(i32, i32, i32) #1

declare i32 @are_neighbor_dragons(i32, i32) #1

declare i32 @chainlinks(i32, i32*) #1

declare i32 @owl_connection_defends(i32, i32, i32) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @extended_chainlinks(i32, i32*, i32) #1

declare i32 @disconnect(i32, i32, i32*) #1

declare i32 @string_connect(i32, i32, i32*) #1

declare void @add_connection_move(i32, i32, i32) #1

declare void @add_cut_move(i32, i32, i32) #1

declare void @add_strategical_defense_move(i32, i32) #1

declare i32 @cut_possible(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @bdist(i32 %pos1, i32 %pos2) #0 {
entry:
  %pos1.addr = alloca i32, align 4
  %pos2.addr = alloca i32, align 4
  %idist = alloca i32, align 4
  %jdist = alloca i32, align 4
  store i32 %pos1, i32* %pos1.addr, align 4
  store i32 %pos2, i32* %pos2.addr, align 4
  %0 = load i32, i32* %pos1.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  %1 = load i32, i32* %pos2.addr, align 4
  %div1 = sdiv i32 %1, 20
  %sub2 = sub nsw i32 %div1, 1
  %sub3 = sub nsw i32 %sub, %sub2
  store i32 %sub3, i32* %idist, align 4
  %2 = load i32, i32* %pos1.addr, align 4
  %rem = srem i32 %2, 20
  %sub4 = sub nsw i32 %rem, 1
  %3 = load i32, i32* %pos2.addr, align 4
  %rem5 = srem i32 %3, 20
  %sub6 = sub nsw i32 %rem5, 1
  %sub7 = sub nsw i32 %sub4, %sub6
  store i32 %sub7, i32* %jdist, align 4
  %4 = load i32, i32* %idist, align 4
  %5 = load i32, i32* %idist, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %jdist, align 4
  %7 = load i32, i32* %jdist, align 4
  %mul8 = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, %mul8
  ret i32 %add
}

declare i32 @is_same_worm(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @value_move_reasons(i32 %pos, i32 %color, float %pure_threat_value, float %score) #0 {
entry:
  %retval = alloca float, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pure_threat_value.addr = alloca float, align 4
  %score.addr = alloca float, align 4
  %tot_value = alloca float, align 4
  %shape_factor = alloca float, align 4
  %num_reasons = alloca i32, align 4
  %c = alloca i32, align 4
  %followup_value = alloca float, align 4
  %old_tot_value = alloca float, align 4
  %contribution = alloca float, align 4
  %old_value = alloca float, align 4
  %shape_factor2 = alloca float, align 4
  %base_value = alloca float, align 4
  %new_tot_value = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %pure_threat_value, float* %pure_threat_value.addr, align 4
  store float %score, float* %score.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 2391, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %pos.addr, align 4
  %call = call i32 @is_antisuji_move(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store float 0.000000e+00, float* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %2 = load i32, i32* @urgent, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end.2
  %3 = load i32, i32* @allpats, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.2
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx5 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 0
  %5 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sge i32 %5, 0
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom8
  %min_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx9, i32 0, i32 15
  %7 = load float, float* %min_territory, align 4
  %conv = fpext float %7 to double
  %cmp10 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %lor.lhs.false.7, %land.lhs.true
  store i32 0, i32* %num_reasons, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %8 = load i32, i32* %num_reasons, align 4
  %idxprom13 = sext i32 %8 to i64
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom14
  %reason16 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx15, i32 0, i32 18
  %arrayidx17 = getelementptr inbounds [120 x i32], [120 x i32]* %reason16, i32 0, i64 %idxprom13
  %10 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp sge i32 %10, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %num_reasons, align 4
  %cmp20 = icmp slt i32 %11, 120
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %num_reasons, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %num_reasons, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom22
  %reason24 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx23, i32 0, i32 18
  %arraydecay = getelementptr inbounds [120 x i32], [120 x i32]* %reason24, i32 0, i32 0
  %15 = bitcast i32* %arraydecay to i8*
  %16 = load i32, i32* %num_reasons, align 4
  %conv25 = sext i32 %16 to i64
  call void @gg_sort(i8* %15, i64 %conv25, i64 4, i32 (i8*, i8*)* @compare_move_reasons)
  %17 = load i32, i32* %pos.addr, align 4
  call void @discard_redundant_move_reasons(i32 %17)
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %color.addr, align 4
  %20 = load float, float* %score.addr, align 4
  call void @estimate_territorial_value(i32 %18, i32 %19, float %20)
  %21 = load i32, i32* %pos.addr, align 4
  %22 = load i32, i32* %color.addr, align 4
  %23 = load float, float* %score.addr, align 4
  call void @estimate_strategical_value(i32 %21, i32 %22, float %23)
  br label %if.end.26

if.end.26:                                        ; preds = %while.end, %lor.lhs.false.7, %lor.lhs.false
  %24 = load i32, i32* %pos.addr, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom27
  %territorial_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx28, i32 0, i32 3
  %25 = load float, float* %territorial_value, align 4
  %26 = load i32, i32* %pos.addr, align 4
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom29
  %strategical_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx30, i32 0, i32 4
  %27 = load float, float* %strategical_value, align 4
  %add = fadd float %25, %27
  store float %add, float* %tot_value, align 4
  %28 = load i32, i32* %pos.addr, align 4
  %call31 = call float @compute_shape_factor(i32 %28)
  store float %call31, float* %shape_factor, align 4
  %29 = load float, float* %tot_value, align 4
  %conv32 = fpext float %29 to double
  %cmp33 = fcmp olt double %conv32, 1.000000e-03
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %if.end.26
  %30 = load float, float* %tot_value, align 4
  %conv36 = fpext float %30 to double
  %cmp37 = fcmp ogt double %conv36, -1.000000e-03
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store float 0.000000e+00, float* %tot_value, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %land.lhs.true.35, %if.end.26
  %31 = load float, float* %tot_value, align 4
  %conv41 = fpext float %31 to double
  %cmp42 = fcmp ogt double %conv41, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else.296

if.then.44:                                       ; preds = %if.end.40
  %32 = load i32, i32* %pos.addr, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom45
  %followup_value47 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx46, i32 0, i32 9
  %33 = load float, float* %followup_value47, align 4
  %34 = load i32, i32* %pos.addr, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom48
  %influence_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx49, i32 0, i32 10
  %35 = load float, float* %influence_followup_value, align 4
  %add50 = fadd float %33, %35
  store float %add50, float* %followup_value, align 4
  %36 = load i32, i32* @verbose, align 4
  %tobool51 = icmp ne i32 %36, 0
  br i1 %tobool51, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.44
  br label %cond.end

cond.false:                                       ; preds = %if.then.44
  %37 = load i32, i32* %pos.addr, align 4
  %38 = load float, float* %followup_value, align 4
  %conv52 = fpext float %38 to double
  %39 = load i32, i32* %pos.addr, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom53
  %influence_followup_value55 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx54, i32 0, i32 10
  %40 = load float, float* %influence_followup_value55, align 4
  %conv56 = fpext float %40 to double
  %call57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i32 0, i32 0), i32 %37, double %conv52, double %conv56)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %41 = load float, float* %tot_value, align 4
  %conv58 = fpext float %41 to double
  %cmp59 = fcmp oge double %conv58, 5.000000e-01
  br i1 %cmp59, label %if.then.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %cond.end
  %42 = load i32, i32* %pos.addr, align 4
  %idxprom62 = sext i32 %42 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom62
  %reverse_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx63, i32 0, i32 11
  %43 = load float, float* %reverse_followup_value, align 4
  %conv64 = fpext float %43 to double
  %cmp65 = fcmp oge double %conv64, 1.000000e+00
  br i1 %cmp65, label %if.then.67, label %if.else.182

if.then.67:                                       ; preds = %lor.lhs.false.61, %cond.end
  %44 = load float, float* %tot_value, align 4
  store float %44, float* %old_tot_value, align 4
  %45 = load float, float* %followup_value, align 4
  %conv68 = fpext float %45 to double
  %mul = fmul double 5.000000e-01, %conv68
  %46 = load i32, i32* %pos.addr, align 4
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom69
  %reverse_followup_value71 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx70, i32 0, i32 11
  %47 = load float, float* %reverse_followup_value71, align 4
  %conv72 = fpext float %47 to double
  %mul73 = fmul double 5.000000e-01, %conv72
  %add74 = fadd double %mul, %mul73
  %48 = load float, float* %tot_value, align 4
  %conv75 = fpext float %48 to double
  %mul76 = fmul double 1.000000e+00, %conv75
  %49 = load float, float* %followup_value, align 4
  %conv77 = fpext float %49 to double
  %add78 = fadd double %mul76, %conv77
  %cmp79 = fcmp olt double %add74, %add78
  br i1 %cmp79, label %cond.true.81, label %cond.false.90

cond.true.81:                                     ; preds = %if.then.67
  %50 = load float, float* %followup_value, align 4
  %conv82 = fpext float %50 to double
  %mul83 = fmul double 5.000000e-01, %conv82
  %51 = load i32, i32* %pos.addr, align 4
  %idxprom84 = sext i32 %51 to i64
  %arrayidx85 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom84
  %reverse_followup_value86 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx85, i32 0, i32 11
  %52 = load float, float* %reverse_followup_value86, align 4
  %conv87 = fpext float %52 to double
  %mul88 = fmul double 5.000000e-01, %conv87
  %add89 = fadd double %mul83, %mul88
  br label %cond.end.95

cond.false.90:                                    ; preds = %if.then.67
  %53 = load float, float* %tot_value, align 4
  %conv91 = fpext float %53 to double
  %mul92 = fmul double 1.000000e+00, %conv91
  %54 = load float, float* %followup_value, align 4
  %conv93 = fpext float %54 to double
  %add94 = fadd double %mul92, %conv93
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.90, %cond.true.81
  %cond = phi double [ %add89, %cond.true.81 ], [ %add94, %cond.false.90 ]
  %55 = load float, float* %tot_value, align 4
  %conv96 = fpext float %55 to double
  %mul97 = fmul double 1.100000e+00, %conv96
  %56 = load i32, i32* %pos.addr, align 4
  %idxprom98 = sext i32 %56 to i64
  %arrayidx99 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom98
  %reverse_followup_value100 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx99, i32 0, i32 11
  %57 = load float, float* %reverse_followup_value100, align 4
  %conv101 = fpext float %57 to double
  %add102 = fadd double %mul97, %conv101
  %cmp103 = fcmp olt double %cond, %add102
  br i1 %cmp103, label %cond.true.105, label %cond.false.136

cond.true.105:                                    ; preds = %cond.end.95
  %58 = load float, float* %followup_value, align 4
  %conv106 = fpext float %58 to double
  %mul107 = fmul double 5.000000e-01, %conv106
  %59 = load i32, i32* %pos.addr, align 4
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom108
  %reverse_followup_value110 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx109, i32 0, i32 11
  %60 = load float, float* %reverse_followup_value110, align 4
  %conv111 = fpext float %60 to double
  %mul112 = fmul double 5.000000e-01, %conv111
  %add113 = fadd double %mul107, %mul112
  %61 = load float, float* %tot_value, align 4
  %conv114 = fpext float %61 to double
  %mul115 = fmul double 1.000000e+00, %conv114
  %62 = load float, float* %followup_value, align 4
  %conv116 = fpext float %62 to double
  %add117 = fadd double %mul115, %conv116
  %cmp118 = fcmp olt double %add113, %add117
  br i1 %cmp118, label %cond.true.120, label %cond.false.129

cond.true.120:                                    ; preds = %cond.true.105
  %63 = load float, float* %followup_value, align 4
  %conv121 = fpext float %63 to double
  %mul122 = fmul double 5.000000e-01, %conv121
  %64 = load i32, i32* %pos.addr, align 4
  %idxprom123 = sext i32 %64 to i64
  %arrayidx124 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom123
  %reverse_followup_value125 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx124, i32 0, i32 11
  %65 = load float, float* %reverse_followup_value125, align 4
  %conv126 = fpext float %65 to double
  %mul127 = fmul double 5.000000e-01, %conv126
  %add128 = fadd double %mul122, %mul127
  br label %cond.end.134

cond.false.129:                                   ; preds = %cond.true.105
  %66 = load float, float* %tot_value, align 4
  %conv130 = fpext float %66 to double
  %mul131 = fmul double 1.000000e+00, %conv130
  %67 = load float, float* %followup_value, align 4
  %conv132 = fpext float %67 to double
  %add133 = fadd double %mul131, %conv132
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.129, %cond.true.120
  %cond135 = phi double [ %add128, %cond.true.120 ], [ %add133, %cond.false.129 ]
  br label %cond.end.144

cond.false.136:                                   ; preds = %cond.end.95
  %68 = load float, float* %tot_value, align 4
  %conv137 = fpext float %68 to double
  %mul138 = fmul double 1.100000e+00, %conv137
  %69 = load i32, i32* %pos.addr, align 4
  %idxprom139 = sext i32 %69 to i64
  %arrayidx140 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom139
  %reverse_followup_value141 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx140, i32 0, i32 11
  %70 = load float, float* %reverse_followup_value141, align 4
  %conv142 = fpext float %70 to double
  %add143 = fadd double %mul138, %conv142
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.136, %cond.end.134
  %cond145 = phi double [ %cond135, %cond.end.134 ], [ %add143, %cond.false.136 ]
  %conv146 = fptrunc double %cond145 to float
  store float %conv146, float* %contribution, align 4
  %71 = load float, float* %contribution, align 4
  %72 = load float, float* %tot_value, align 4
  %add147 = fadd float %72, %71
  store float %add147, float* %tot_value, align 4
  %73 = load float, float* %contribution, align 4
  %conv148 = fpext float %73 to double
  %cmp149 = fcmp une double %conv148, 0.000000e+00
  br i1 %cmp149, label %if.then.151, label %if.end.163

if.then.151:                                      ; preds = %cond.end.144
  %74 = load i32, i32* @verbose, align 4
  %tobool152 = icmp ne i32 %74, 0
  br i1 %tobool152, label %cond.false.154, label %cond.true.153

cond.true.153:                                    ; preds = %if.then.151
  br label %cond.end.162

cond.false.154:                                   ; preds = %if.then.151
  %75 = load i32, i32* %pos.addr, align 4
  %76 = load float, float* %contribution, align 4
  %conv155 = fpext float %76 to double
  %77 = load float, float* %followup_value, align 4
  %conv156 = fpext float %77 to double
  %78 = load i32, i32* %pos.addr, align 4
  %idxprom157 = sext i32 %78 to i64
  %arrayidx158 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom157
  %reverse_followup_value159 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx158, i32 0, i32 11
  %79 = load float, float* %reverse_followup_value159, align 4
  %conv160 = fpext float %79 to double
  %call161 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i32 0, i32 0), i32 %75, double %conv155, double %conv156, double %conv160)
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.154, %cond.true.153
  br label %if.end.163

if.end.163:                                       ; preds = %cond.end.162, %cond.end.144
  %80 = load float, float* %followup_value, align 4
  %81 = load i32, i32* %pos.addr, align 4
  %idxprom164 = sext i32 %81 to i64
  %arrayidx165 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom164
  %reverse_followup_value166 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx165, i32 0, i32 11
  %82 = load float, float* %reverse_followup_value166, align 4
  %add167 = fadd float %80, %82
  %83 = load float, float* %tot_value, align 4
  %84 = load float, float* %old_tot_value, align 4
  %sub = fsub float %83, %84
  %sub168 = fsub float %add167, %sub
  %85 = load i32, i32* %pos.addr, align 4
  %idxprom169 = sext i32 %85 to i64
  %arrayidx170 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom169
  %additional_ko_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx170, i32 0, i32 2
  store float %sub168, float* %additional_ko_value, align 4
  %86 = load i32, i32* %pos.addr, align 4
  %idxprom171 = sext i32 %86 to i64
  %arrayidx172 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom171
  %additional_ko_value173 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx172, i32 0, i32 2
  %87 = load float, float* %additional_ko_value173, align 4
  %conv174 = fpext float %87 to double
  %cmp175 = fcmp olt double %conv174, 0.000000e+00
  br i1 %cmp175, label %if.then.177, label %if.end.181

if.then.177:                                      ; preds = %if.end.163
  %88 = load i32, i32* %pos.addr, align 4
  %idxprom178 = sext i32 %88 to i64
  %arrayidx179 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom178
  %additional_ko_value180 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx179, i32 0, i32 2
  store float 0.000000e+00, float* %additional_ko_value180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.177, %if.end.163
  br label %if.end.194

if.else.182:                                      ; preds = %lor.lhs.false.61
  %89 = load float, float* %shape_factor, align 4
  %90 = load i32, i32* %pos.addr, align 4
  %idxprom183 = sext i32 %90 to i64
  %arrayidx184 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom183
  %followup_value185 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx184, i32 0, i32 9
  %91 = load float, float* %followup_value185, align 4
  %92 = load i32, i32* %pos.addr, align 4
  %idxprom186 = sext i32 %92 to i64
  %arrayidx187 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom186
  %reverse_followup_value188 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx187, i32 0, i32 11
  %93 = load float, float* %reverse_followup_value188, align 4
  %add189 = fadd float %91, %93
  %mul190 = fmul float %89, %add189
  %94 = load i32, i32* %pos.addr, align 4
  %idxprom191 = sext i32 %94 to i64
  %arrayidx192 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom191
  %additional_ko_value193 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx192, i32 0, i32 2
  store float %mul190, float* %additional_ko_value193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.182, %if.end.181
  %95 = load i32, i32* %pos.addr, align 4
  %idxprom195 = sext i32 %95 to i64
  %arrayidx196 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom195
  %secondary_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx196, i32 0, i32 12
  %96 = load float, float* %secondary_value, align 4
  %conv197 = fpext float %96 to double
  %mul198 = fmul double 5.000000e-02, %conv197
  %97 = load float, float* %tot_value, align 4
  %conv199 = fpext float %97 to double
  %add200 = fadd double %conv199, %mul198
  %conv201 = fptrunc double %add200 to float
  store float %conv201, float* %tot_value, align 4
  %98 = load i32, i32* %pos.addr, align 4
  %idxprom202 = sext i32 %98 to i64
  %arrayidx203 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom202
  %secondary_value204 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx203, i32 0, i32 12
  %99 = load float, float* %secondary_value204, align 4
  %conv205 = fpext float %99 to double
  %cmp206 = fcmp une double %conv205, 0.000000e+00
  br i1 %cmp206, label %if.then.208, label %if.end.219

if.then.208:                                      ; preds = %if.end.194
  %100 = load i32, i32* @verbose, align 4
  %tobool209 = icmp ne i32 %100, 0
  br i1 %tobool209, label %cond.false.211, label %cond.true.210

cond.true.210:                                    ; preds = %if.then.208
  br label %cond.end.218

cond.false.211:                                   ; preds = %if.then.208
  %101 = load i32, i32* %pos.addr, align 4
  %102 = load i32, i32* %pos.addr, align 4
  %idxprom212 = sext i32 %102 to i64
  %arrayidx213 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom212
  %secondary_value214 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx213, i32 0, i32 12
  %103 = load float, float* %secondary_value214, align 4
  %conv215 = fpext float %103 to double
  %mul216 = fmul double 5.000000e-02, %conv215
  %call217 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i32 %101, double %mul216)
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.211, %cond.true.210
  br label %if.end.219

if.end.219:                                       ; preds = %cond.end.218, %if.end.194
  %104 = load i32, i32* %pos.addr, align 4
  %idxprom220 = sext i32 %104 to i64
  %arrayidx221 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom220
  %numpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx221, i32 0, i32 7
  %105 = load i32, i32* %numpos_shape, align 4
  %106 = load i32, i32* %pos.addr, align 4
  %idxprom222 = sext i32 %106 to i64
  %arrayidx223 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom222
  %numneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx223, i32 0, i32 8
  %107 = load i32, i32* %numneg_shape, align 4
  %add224 = add nsw i32 %105, %107
  %cmp225 = icmp sgt i32 %add224, 0
  br i1 %cmp225, label %if.then.227, label %if.end.249

if.then.227:                                      ; preds = %if.end.219
  %108 = load float, float* %tot_value, align 4
  store float %108, float* %old_value, align 4
  %109 = load float, float* %shape_factor, align 4
  %110 = load float, float* %tot_value, align 4
  %mul228 = fmul float %110, %109
  store float %mul228, float* %tot_value, align 4
  %111 = load i32, i32* @verbose, align 4
  %tobool229 = icmp ne i32 %111, 0
  br i1 %tobool229, label %if.then.230, label %if.end.248

if.then.230:                                      ; preds = %if.then.227
  %112 = load i32, i32* %pos.addr, align 4
  %113 = load float, float* %tot_value, align 4
  %114 = load float, float* %old_value, align 4
  %sub231 = fsub float %113, %114
  %conv232 = fpext float %sub231 to double
  %call233 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 %112, double %conv232)
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i32, i32* %pos.addr, align 4
  %idxprom234 = sext i32 %116 to i64
  %arrayidx235 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom234
  %maxpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx235, i32 0, i32 5
  %117 = load float, float* %maxpos_shape, align 4
  %conv236 = fpext float %117 to double
  %118 = load i32, i32* %pos.addr, align 4
  %idxprom237 = sext i32 %118 to i64
  %arrayidx238 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom237
  %numpos_shape239 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx238, i32 0, i32 7
  %119 = load i32, i32* %numpos_shape239, align 4
  %120 = load i32, i32* %pos.addr, align 4
  %idxprom240 = sext i32 %120 to i64
  %arrayidx241 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom240
  %maxneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx241, i32 0, i32 6
  %121 = load float, float* %maxneg_shape, align 4
  %conv242 = fpext float %121 to double
  %122 = load i32, i32* %pos.addr, align 4
  %idxprom243 = sext i32 %122 to i64
  %arrayidx244 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom243
  %numneg_shape245 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx244, i32 0, i32 8
  %123 = load i32, i32* %numneg_shape245, align 4
  %124 = load float, float* %shape_factor, align 4
  %conv246 = fpext float %124 to double
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i32 0, i32 0), double %conv236, i32 %119, double %conv242, i32 %123, double %conv246)
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.230, %if.then.227
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.219
  %125 = load i32, i32* %pos.addr, align 4
  %126 = load i32, i32* %color.addr, align 4
  %call250 = call i32 @move_connects_strings(i32 %125, i32 %126)
  %127 = load i32, i32* %pos.addr, align 4
  %128 = load i32, i32* %color.addr, align 4
  %sub251 = sub nsw i32 3, %128
  %call252 = call i32 @move_connects_strings(i32 %127, i32 %sub251)
  %add253 = add nsw i32 %call250, %call252
  store i32 %add253, i32* %c, align 4
  %129 = load i32, i32* %c, align 4
  %cmp254 = icmp sgt i32 %129, 0
  br i1 %cmp254, label %if.then.256, label %if.end.295

if.then.256:                                      ; preds = %if.end.249
  %130 = load i32, i32* %c, align 4
  %conv257 = sitofp i32 %130 to float
  %conv258 = fpext float %conv257 to double
  %call259 = call double @pow(double 1.020000e+00, double %conv258) #3
  %sub260 = fsub double %call259, 1.000000e+00
  %conv261 = fptrunc double %sub260 to float
  store float %conv261, float* %shape_factor2, align 4
  %131 = load float, float* %tot_value, align 4
  %conv262 = fpext float %131 to double
  %cmp263 = fcmp olt double %conv262, 5.000000e+00
  br i1 %cmp263, label %cond.true.265, label %cond.false.267

cond.true.265:                                    ; preds = %if.then.256
  %132 = load float, float* %tot_value, align 4
  %conv266 = fpext float %132 to double
  br label %cond.end.268

cond.false.267:                                   ; preds = %if.then.256
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.267, %cond.true.265
  %cond269 = phi double [ %conv266, %cond.true.265 ], [ 5.000000e+00, %cond.false.267 ]
  %cmp270 = fcmp olt double %cond269, 1.000000e+00
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %cond.end.268
  br label %cond.end.282

cond.false.273:                                   ; preds = %cond.end.268
  %133 = load float, float* %tot_value, align 4
  %conv274 = fpext float %133 to double
  %cmp275 = fcmp olt double %conv274, 5.000000e+00
  br i1 %cmp275, label %cond.true.277, label %cond.false.279

cond.true.277:                                    ; preds = %cond.false.273
  %134 = load float, float* %tot_value, align 4
  %conv278 = fpext float %134 to double
  br label %cond.end.280

cond.false.279:                                   ; preds = %cond.false.273
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.279, %cond.true.277
  %cond281 = phi double [ %conv278, %cond.true.277 ], [ 5.000000e+00, %cond.false.279 ]
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.end.280, %cond.true.272
  %cond283 = phi double [ 1.000000e+00, %cond.true.272 ], [ %cond281, %cond.end.280 ]
  %conv284 = fptrunc double %cond283 to float
  store float %conv284, float* %base_value, align 4
  %135 = load i32, i32* @verbose, align 4
  %tobool285 = icmp ne i32 %135, 0
  br i1 %tobool285, label %if.then.286, label %if.end.292

if.then.286:                                      ; preds = %cond.end.282
  %136 = load i32, i32* %pos.addr, align 4
  %137 = load float, float* %base_value, align 4
  %138 = load float, float* %shape_factor2, align 4
  %mul287 = fmul float %137, %138
  %conv288 = fpext float %mul287 to double
  %call289 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i32 %136, double %conv288)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = load i32, i32* %c, align 4
  %141 = load float, float* %shape_factor2, align 4
  %conv290 = fpext float %141 to double
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0), i32 %140, double %conv290)
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.286, %cond.end.282
  %142 = load float, float* %base_value, align 4
  %143 = load float, float* %shape_factor2, align 4
  %mul293 = fmul float %142, %143
  %144 = load float, float* %tot_value, align 4
  %add294 = fadd float %144, %mul293
  store float %add294, float* %tot_value, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.292, %if.end.249
  br label %if.end.323

if.else.296:                                      ; preds = %if.end.40
  %145 = load float, float* %shape_factor, align 4
  %146 = load i32, i32* %pos.addr, align 4
  %idxprom297 = sext i32 %146 to i64
  %arrayidx298 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom297
  %followup_value299 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx298, i32 0, i32 9
  %147 = load float, float* %followup_value299, align 4
  %148 = load i32, i32* %pos.addr, align 4
  %idxprom300 = sext i32 %148 to i64
  %arrayidx301 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom300
  %followup_value302 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx301, i32 0, i32 9
  %149 = load float, float* %followup_value302, align 4
  %150 = load i32, i32* %pos.addr, align 4
  %idxprom303 = sext i32 %150 to i64
  %arrayidx304 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom303
  %reverse_followup_value305 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx304, i32 0, i32 11
  %151 = load float, float* %reverse_followup_value305, align 4
  %cmp306 = fcmp olt float %149, %151
  br i1 %cmp306, label %cond.true.308, label %cond.false.312

cond.true.308:                                    ; preds = %if.else.296
  %152 = load i32, i32* %pos.addr, align 4
  %idxprom309 = sext i32 %152 to i64
  %arrayidx310 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom309
  %followup_value311 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx310, i32 0, i32 9
  %153 = load float, float* %followup_value311, align 4
  br label %cond.end.316

cond.false.312:                                   ; preds = %if.else.296
  %154 = load i32, i32* %pos.addr, align 4
  %idxprom313 = sext i32 %154 to i64
  %arrayidx314 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom313
  %reverse_followup_value315 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx314, i32 0, i32 11
  %155 = load float, float* %reverse_followup_value315, align 4
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.312, %cond.true.308
  %cond317 = phi float [ %153, %cond.true.308 ], [ %155, %cond.false.312 ]
  %add318 = fadd float %147, %cond317
  %mul319 = fmul float %145, %add318
  %156 = load i32, i32* %pos.addr, align 4
  %idxprom320 = sext i32 %156 to i64
  %arrayidx321 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom320
  %additional_ko_value322 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx321, i32 0, i32 2
  store float %mul319, float* %additional_ko_value322, align 4
  br label %if.end.323

if.end.323:                                       ; preds = %cond.end.316, %if.end.295
  %157 = load float, float* %pure_threat_value.addr, align 4
  %conv324 = fpext float %157 to double
  %cmp325 = fcmp ogt double %conv324, 0.000000e+00
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.396

land.lhs.true.327:                                ; preds = %if.end.323
  %158 = load i32, i32* %pos.addr, align 4
  %idxprom328 = sext i32 %158 to i64
  %arrayidx329 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom328
  %worthwhile_threat = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx329, i32 0, i32 20
  %159 = load i32, i32* %worthwhile_threat, align 4
  %tobool330 = icmp ne i32 %159, 0
  br i1 %tobool330, label %land.lhs.true.331, label %if.end.396

land.lhs.true.331:                                ; preds = %land.lhs.true.327
  %160 = load float, float* %tot_value, align 4
  %161 = load float, float* %pure_threat_value.addr, align 4
  %cmp332 = fcmp ole float %160, %161
  br i1 %cmp332, label %land.lhs.true.334, label %if.end.396

land.lhs.true.334:                                ; preds = %land.lhs.true.331
  %162 = load i32, i32* %pos.addr, align 4
  %idxprom335 = sext i32 %162 to i64
  %arrayidx336 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom335
  %163 = load i8, i8* %arrayidx336, align 1
  %conv337 = zext i8 %163 to i32
  %cmp338 = icmp eq i32 %conv337, 0
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.396

land.lhs.true.340:                                ; preds = %land.lhs.true.334
  %164 = load i32, i32* %pos.addr, align 4
  %idxprom341 = sext i32 %164 to i64
  %arrayidx342 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom341
  %additional_ko_value343 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx342, i32 0, i32 2
  %165 = load float, float* %additional_ko_value343, align 4
  %conv344 = fpext float %165 to double
  %cmp345 = fcmp ogt double %conv344, 0.000000e+00
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.396

land.lhs.true.347:                                ; preds = %land.lhs.true.340
  %166 = load i32, i32* %pos.addr, align 4
  %167 = load i32, i32* %color.addr, align 4
  %call348 = call i32 @is_legal(i32 %166, i32 %167)
  %tobool349 = icmp ne i32 %call348, 0
  br i1 %tobool349, label %land.lhs.true.350, label %if.end.396

land.lhs.true.350:                                ; preds = %land.lhs.true.347
  %168 = load i32, i32* %pos.addr, align 4
  %169 = load i32, i32* %color.addr, align 4
  %call351 = call i32 @value_moves_confirm_safety(i32 %168, i32 %169)
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.then.353, label %if.end.396

if.then.353:                                      ; preds = %land.lhs.true.350
  %170 = load float, float* %pure_threat_value.addr, align 4
  %conv354 = fpext float %170 to double
  %171 = load float, float* %tot_value, align 4
  %conv355 = fpext float %171 to double
  %172 = load i32, i32* %pos.addr, align 4
  %idxprom356 = sext i32 %172 to i64
  %arrayidx357 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom356
  %additional_ko_value358 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx357, i32 0, i32 2
  %173 = load float, float* %additional_ko_value358, align 4
  %conv359 = fpext float %173 to double
  %mul360 = fmul double 2.500000e-01, %conv359
  %add361 = fadd double %conv355, %mul360
  %cmp362 = fcmp olt double %conv354, %add361
  br i1 %cmp362, label %cond.true.364, label %cond.false.366

cond.true.364:                                    ; preds = %if.then.353
  %174 = load float, float* %pure_threat_value.addr, align 4
  %conv365 = fpext float %174 to double
  br label %cond.end.374

cond.false.366:                                   ; preds = %if.then.353
  %175 = load float, float* %tot_value, align 4
  %conv367 = fpext float %175 to double
  %176 = load i32, i32* %pos.addr, align 4
  %idxprom368 = sext i32 %176 to i64
  %arrayidx369 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom368
  %additional_ko_value370 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx369, i32 0, i32 2
  %177 = load float, float* %additional_ko_value370, align 4
  %conv371 = fpext float %177 to double
  %mul372 = fmul double 2.500000e-01, %conv371
  %add373 = fadd double %conv367, %mul372
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.false.366, %cond.true.364
  %cond375 = phi double [ %conv365, %cond.true.364 ], [ %add373, %cond.false.366 ]
  %conv376 = fptrunc double %cond375 to float
  store float %conv376, float* %new_tot_value, align 4
  %178 = load float, float* %pure_threat_value.addr, align 4
  %179 = load float, float* %tot_value, align 4
  %sub377 = fsub float %178, %179
  %conv378 = fpext float %sub377 to double
  %mul379 = fmul double 1.000000e-01, %conv378
  %180 = load float, float* %pure_threat_value.addr, align 4
  %conv380 = fpext float %180 to double
  %div = fdiv double %mul379, %conv380
  %sub381 = fsub double 1.000000e+00, %div
  %181 = load float, float* %new_tot_value, align 4
  %conv382 = fpext float %181 to double
  %mul383 = fmul double %conv382, %sub381
  %conv384 = fptrunc double %mul383 to float
  store float %conv384, float* %new_tot_value, align 4
  %182 = load float, float* %new_tot_value, align 4
  %183 = load float, float* %tot_value, align 4
  %cmp385 = fcmp ogt float %182, %183
  br i1 %cmp385, label %if.then.387, label %if.end.395

if.then.387:                                      ; preds = %cond.end.374
  %184 = load i32, i32* @verbose, align 4
  %tobool388 = icmp ne i32 %184, 0
  br i1 %tobool388, label %cond.false.390, label %cond.true.389

cond.true.389:                                    ; preds = %if.then.387
  br label %cond.end.394

cond.false.390:                                   ; preds = %if.then.387
  %185 = load i32, i32* %pos.addr, align 4
  %186 = load float, float* %new_tot_value, align 4
  %187 = load float, float* %tot_value, align 4
  %sub391 = fsub float %186, %187
  %conv392 = fpext float %sub391 to double
  %call393 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 %185, double %conv392)
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.390, %cond.true.389
  %188 = load float, float* %new_tot_value, align 4
  store float %188, float* %tot_value, align 4
  br label %if.end.395

if.end.395:                                       ; preds = %cond.end.394, %cond.end.374
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %land.lhs.true.350, %land.lhs.true.347, %land.lhs.true.340, %land.lhs.true.334, %land.lhs.true.331, %land.lhs.true.327, %if.end.323
  %189 = load i32, i32* %pos.addr, align 4
  %idxprom397 = sext i32 %189 to i64
  %arrayidx398 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom397
  %min_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx398, i32 0, i32 13
  %190 = load float, float* %min_value, align 4
  %191 = load i32, i32* %pos.addr, align 4
  %idxprom399 = sext i32 %191 to i64
  %arrayidx400 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom399
  %max_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx400, i32 0, i32 14
  %192 = load float, float* %max_value, align 4
  %cmp401 = fcmp ogt float %190, %192
  br i1 %cmp401, label %if.then.403, label %if.end.410

if.then.403:                                      ; preds = %if.end.396
  %193 = load i32, i32* %pos.addr, align 4
  %idxprom404 = sext i32 %193 to i64
  %arrayidx405 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom404
  %min_value406 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx405, i32 0, i32 13
  %194 = load float, float* %min_value406, align 4
  %195 = load i32, i32* %pos.addr, align 4
  %idxprom407 = sext i32 %195 to i64
  %arrayidx408 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom407
  %max_value409 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx408, i32 0, i32 14
  store float %194, float* %max_value409, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.403, %if.end.396
  %196 = load i32, i32* %pos.addr, align 4
  %idxprom411 = sext i32 %196 to i64
  %arrayidx412 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom411
  %min_value413 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx412, i32 0, i32 13
  %197 = load float, float* %min_value413, align 4
  %cmp414 = fcmp olt float %197, 2.500000e+01
  br i1 %cmp414, label %if.then.416, label %if.end.422

if.then.416:                                      ; preds = %if.end.410
  %198 = load float, float* %tot_value, align 4
  %div417 = fdiv float %198, 2.000000e+02
  %199 = load i32, i32* %pos.addr, align 4
  %idxprom418 = sext i32 %199 to i64
  %arrayidx419 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom418
  %min_value420 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx419, i32 0, i32 13
  %200 = load float, float* %min_value420, align 4
  %add421 = fadd float %200, %div417
  store float %add421, float* %min_value420, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.416, %if.end.410
  %201 = load float, float* %tot_value, align 4
  %202 = load i32, i32* %pos.addr, align 4
  %idxprom423 = sext i32 %202 to i64
  %arrayidx424 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom423
  %min_value425 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx424, i32 0, i32 13
  %203 = load float, float* %min_value425, align 4
  %cmp426 = fcmp olt float %201, %203
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.444

land.lhs.true.428:                                ; preds = %if.end.422
  %204 = load i32, i32* %pos.addr, align 4
  %idxprom429 = sext i32 %204 to i64
  %arrayidx430 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom429
  %min_value431 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx430, i32 0, i32 13
  %205 = load float, float* %min_value431, align 4
  %cmp432 = fcmp ogt float %205, 0.000000e+00
  br i1 %cmp432, label %if.then.434, label %if.end.444

if.then.434:                                      ; preds = %land.lhs.true.428
  %206 = load i32, i32* %pos.addr, align 4
  %idxprom435 = sext i32 %206 to i64
  %arrayidx436 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom435
  %min_value437 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx436, i32 0, i32 13
  %207 = load float, float* %min_value437, align 4
  store float %207, float* %tot_value, align 4
  %208 = load i32, i32* @verbose, align 4
  %tobool438 = icmp ne i32 %208, 0
  br i1 %tobool438, label %cond.false.440, label %cond.true.439

cond.true.439:                                    ; preds = %if.then.434
  br label %cond.end.443

cond.false.440:                                   ; preds = %if.then.434
  %209 = load i32, i32* %pos.addr, align 4
  %210 = load float, float* %tot_value, align 4
  %conv441 = fpext float %210 to double
  %call442 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i32 %209, double %conv441)
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.440, %cond.true.439
  br label %if.end.444

if.end.444:                                       ; preds = %cond.end.443, %land.lhs.true.428, %if.end.422
  %211 = load float, float* %tot_value, align 4
  %212 = load i32, i32* %pos.addr, align 4
  %idxprom445 = sext i32 %212 to i64
  %arrayidx446 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom445
  %max_value447 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx446, i32 0, i32 14
  %213 = load float, float* %max_value447, align 4
  %cmp448 = fcmp ogt float %211, %213
  br i1 %cmp448, label %if.then.450, label %if.end.460

if.then.450:                                      ; preds = %if.end.444
  %214 = load i32, i32* %pos.addr, align 4
  %idxprom451 = sext i32 %214 to i64
  %arrayidx452 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom451
  %max_value453 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx452, i32 0, i32 14
  %215 = load float, float* %max_value453, align 4
  store float %215, float* %tot_value, align 4
  %216 = load i32, i32* @verbose, align 4
  %tobool454 = icmp ne i32 %216, 0
  br i1 %tobool454, label %cond.false.456, label %cond.true.455

cond.true.455:                                    ; preds = %if.then.450
  br label %cond.end.459

cond.false.456:                                   ; preds = %if.then.450
  %217 = load i32, i32* %pos.addr, align 4
  %218 = load float, float* %tot_value, align 4
  %conv457 = fpext float %218 to double
  %call458 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i32 0, i32 0), i32 %217, double %conv457)
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.false.456, %cond.true.455
  br label %if.end.460

if.end.460:                                       ; preds = %cond.end.459, %if.end.444
  %219 = load float, float* %tot_value, align 4
  %cmp461 = fcmp ogt float %219, 0.000000e+00
  br i1 %cmp461, label %if.then.475, label %lor.lhs.false.463

lor.lhs.false.463:                                ; preds = %if.end.460
  %220 = load i32, i32* %pos.addr, align 4
  %idxprom464 = sext i32 %220 to i64
  %arrayidx465 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom464
  %territorial_value466 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx465, i32 0, i32 3
  %221 = load float, float* %territorial_value466, align 4
  %cmp467 = fcmp ogt float %221, 0.000000e+00
  br i1 %cmp467, label %if.then.475, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %lor.lhs.false.463
  %222 = load i32, i32* %pos.addr, align 4
  %idxprom470 = sext i32 %222 to i64
  %arrayidx471 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom470
  %strategical_value472 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx471, i32 0, i32 4
  %223 = load float, float* %strategical_value472, align 4
  %cmp473 = fcmp ogt float %223, 0.000000e+00
  br i1 %cmp473, label %if.then.475, label %if.end.482

if.then.475:                                      ; preds = %lor.lhs.false.469, %lor.lhs.false.463, %if.end.460
  %224 = load i32, i32* @verbose, align 4
  %tobool476 = icmp ne i32 %224, 0
  br i1 %tobool476, label %cond.false.478, label %cond.true.477

cond.true.477:                                    ; preds = %if.then.475
  br label %cond.end.481

cond.false.478:                                   ; preds = %if.then.475
  %225 = load i32, i32* %pos.addr, align 4
  %226 = load float, float* %tot_value, align 4
  %conv479 = fpext float %226 to double
  %call480 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0), i32 %225, double %conv479)
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.false.478, %cond.true.477
  %227 = load i32, i32* %pos.addr, align 4
  %228 = load float, float* %tot_value, align 4
  call void @move_considered(i32 %227, float %228)
  br label %if.end.482

if.end.482:                                       ; preds = %cond.end.481, %lor.lhs.false.469
  %229 = load float, float* %tot_value, align 4
  store float %229, float* %retval
  br label %return

return:                                           ; preds = %if.end.482, %if.then.1
  %230 = load float, float* %retval
  ret float %230
}

declare i32 @is_legal(i32, i32) #1

declare i32 @is_illegal_ko_capture(i32, i32) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @is_antisuji_move(i32) #1

declare void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_move_reasons(i8* %p1, i8* %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  %mr1 = alloca i32, align 4
  %mr2 = alloca i32, align 4
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %mr1, align 4
  %3 = load i8*, i8** %p2.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %mr2, align 4
  %6 = load i32, i32* %mr1, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %type, align 4
  %8 = load i32, i32* %mr2, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom1
  %type3 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx2, i32 0, i32 0
  %9 = load i32, i32* %type3, align 4
  %cmp = icmp ne i32 %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %mr2, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom4
  %type6 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx5, i32 0, i32 0
  %11 = load i32, i32* %type6, align 4
  %12 = load i32, i32* %mr1, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom7
  %type9 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx8, i32 0, i32 0
  %13 = load i32, i32* %type9, align 4
  %sub = sub nsw i32 %11, %13
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %mr2, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom10
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx11, i32 0, i32 1
  %15 = load i32, i32* %what, align 4
  %16 = load i32, i32* %mr1, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom12
  %what14 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx13, i32 0, i32 1
  %17 = load i32, i32* %what14, align 4
  %sub15 = sub nsw i32 %15, %17
  store i32 %sub15, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare void @discard_redundant_move_reasons(i32) #1

; Function Attrs: nounwind uwtable
define internal void @estimate_territorial_value(i32 %pos, i32 %color, float %score) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %score.addr = alloca float, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %this_value = alloca float, align 4
  %tot_value = alloca float, align 4
  %secondary_value = alloca float, align 4
  %does_block = alloca i32, align 4
  %safe_stones = alloca [400 x i8], align 16
  %strength = alloca [400 x float], align 16
  %r = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %adjusted_value = alloca float, align 4
  %adjustment_up = alloca float, align 4
  %adjustment_down = alloca float, align 4
  %s = alloca i32, align 4
  %num_adj = alloca i32, align 4
  %defense_move = alloca i32, align 4
  %adj = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %attack_move = alloca i32, align 4
  %value = alloca float, align 4
  %s686 = alloca i32, align 4
  %d = alloca i32, align 4
  %adj702 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %score, float* %score.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %aa, align 4
  store i32 0, i32* %bb, align 4
  store float 0.000000e+00, float* %this_value, align 4
  store float 0.000000e+00, float* %tot_value, align 4
  store float 0.000000e+00, float* %secondary_value, align 4
  store i32 0, i32* %does_block, align 4
  %1 = load i32, i32* %color.addr, align 4
  %sub1 = sub nsw i32 3, %1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @set_strength_data(i32 %sub1, i8* %arraydecay, float* %arraydecay2)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.968, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 120
  br i1 %cmp, label %for.body, label %for.end.970

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom3
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx4, align 4
  store i32 %5, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.970

if.end:                                           ; preds = %for.body
  %7 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom6
  %status = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx7, i32 0, i32 2
  %8 = load i32, i32* %status, align 4
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %for.inc.968

if.end.9:                                         ; preds = %if.end
  store float 0.000000e+00, float* %this_value, align 4
  %9 = load i32, i32* %r, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom10
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx11, i32 0, i32 0
  %10 = load i32, i32* %type, align 4
  switch i32 %10, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb.107
    i32 10, label %sw.bb.107
    i32 12, label %sw.bb.107
    i32 3, label %sw.bb.216
    i32 9, label %sw.bb.379
    i32 42, label %sw.bb.442
    i32 14, label %sw.bb.443
    i32 16, label %sw.bb.443
    i32 44, label %sw.bb.443
    i32 46, label %sw.bb.443
    i32 22, label %sw.bb.443
    i32 20, label %sw.bb.443
    i32 24, label %sw.bb.443
    i32 18, label %sw.bb.444
    i32 19, label %sw.bb.459
    i32 54, label %sw.bb.477
    i32 26, label %sw.bb.478
    i32 28, label %sw.bb.478
    i32 30, label %sw.bb.478
    i32 60, label %sw.bb.478
    i32 32, label %sw.bb.478
    i32 34, label %sw.bb.478
    i32 36, label %sw.bb.478
    i32 62, label %sw.bb.478
    i32 27, label %sw.bb.665
    i32 33, label %sw.bb.740
    i32 38, label %sw.bb.758
    i32 50, label %sw.bb.942
    i32 52, label %sw.bb.956
  ]

sw.bb:                                            ; preds = %if.end.9, %if.end.9, %if.end.9
  %11 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom12
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx13, i32 0, i32 1
  %12 = load i32, i32* %what, align 4
  store i32 %12, i32* %aa, align 4
  %13 = load i32, i32* %aa, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %14 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %cmp16 = icmp ne i32 %conv, %15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %16 = load i32, i32* %aa, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom20
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx21, i32 0, i32 18
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %17 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %17, 0
  br i1 %cmp23, label %if.then.25, label %if.end.34

if.then.25:                                       ; preds = %if.end.19
  %18 = load i32, i32* @debug, align 4
  %and26 = and i32 %18, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.25
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %aa, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom28
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx29, i32 0, i32 2
  %21 = load float, float* %effective_size, align 4
  %conv30 = fpext float %21 to double
  %22 = load i32, i32* %aa, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i32 0, i32 0), i32 %19, double %conv30, i32 %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %23 = load i32, i32* %aa, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom31
  %effective_size33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx32, i32 0, i32 2
  %24 = load float, float* %effective_size33, align 4
  %25 = load float, float* %secondary_value, align 4
  %add = fadd float %25, %24
  store float %add, float* %secondary_value, align 4
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

if.end.34:                                        ; preds = %if.end.19
  %26 = load i32, i32* %aa, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom35
  %effective_size37 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx36, i32 0, i32 2
  %27 = load float, float* %effective_size37, align 4
  %mul = fmul float 2.000000e+00, %27
  store float %mul, float* %this_value, align 4
  %28 = load i32, i32* %aa, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom38
  %status40 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx39, i32 0, i32 16
  %29 = load i32, i32* %status40, align 4
  %cmp41 = icmp eq i32 %29, 0
  br i1 %cmp41, label %if.then.43, label %if.end.57

if.then.43:                                       ; preds = %if.end.34
  %30 = load i32, i32* @debug, align 4
  %and44 = and i32 %30, 2048
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %cond.false.47, label %cond.true.46

cond.true.46:                                     ; preds = %if.then.43
  br label %cond.end.51

cond.false.47:                                    ; preds = %if.then.43
  %31 = load i32, i32* %pos.addr, align 4
  %32 = load float, float* %this_value, align 4
  %conv48 = fpext float %32 to double
  %mul49 = fmul double 2.000000e-01, %conv48
  %33 = load i32, i32* %aa, align 4
  %call50 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0), i32 %31, double %mul49, i32 %33)
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.47, %cond.true.46
  %34 = load float, float* %this_value, align 4
  %conv52 = fpext float %34 to double
  %mul53 = fmul double 2.000000e-01, %conv52
  %35 = load float, float* %secondary_value, align 4
  %conv54 = fpext float %35 to double
  %add55 = fadd double %conv54, %mul53
  %conv56 = fptrunc double %add55 to float
  store float %conv56, float* %secondary_value, align 4
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

if.end.57:                                        ; preds = %if.end.34
  %36 = load i32, i32* %aa, align 4
  %arraydecay58 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay59 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @mark_changed_string(i32 %36, i8* %arraydecay58, float* %arraydecay59, i8 signext 0)
  %37 = load i32, i32* @verbose, align 4
  %tobool60 = icmp ne i32 %37, 0
  br i1 %tobool60, label %cond.false.62, label %cond.true.61

cond.true.61:                                     ; preds = %if.end.57
  br label %cond.end.64

cond.false.62:                                    ; preds = %if.end.57
  %38 = load i32, i32* %pos.addr, align 4
  %39 = load i32, i32* %aa, align 4
  %call63 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i32 %38, i32 %39)
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.62, %cond.true.61
  %40 = load i32, i32* %r, align 4
  %idxprom65 = sext i32 %40 to i64
  %arrayidx66 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom65
  %type67 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx66, i32 0, i32 0
  %41 = load i32, i32* %type67, align 4
  %cmp68 = icmp eq i32 %41, 2
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %cond.end.64
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.105

if.else.71:                                       ; preds = %cond.end.64
  %42 = load i32, i32* %r, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom72
  %type74 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx73, i32 0, i32 0
  %43 = load i32, i32* %type74, align 4
  %cmp75 = icmp eq i32 %43, 4
  br i1 %cmp75, label %if.then.77, label %if.else.87

if.then.77:                                       ; preds = %if.else.71
  %44 = load float, float* %this_value, align 4
  %conv78 = fpext float %44 to double
  %mul79 = fmul double %conv78, 3.000000e-01
  %conv80 = fptrunc double %mul79 to float
  store float %conv80, float* %this_value, align 4
  %45 = load i32, i32* @verbose, align 4
  %tobool81 = icmp ne i32 %45, 0
  br i1 %tobool81, label %cond.false.83, label %cond.true.82

cond.true.82:                                     ; preds = %if.then.77
  br label %cond.end.86

cond.false.83:                                    ; preds = %if.then.77
  %46 = load i32, i32* %pos.addr, align 4
  %47 = load float, float* %this_value, align 4
  %conv84 = fpext float %47 to double
  %48 = load i32, i32* %aa, align 4
  %call85 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i32 0, i32 0), i32 %46, double %conv84, i32 %48)
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.82
  br label %if.end.104

if.else.87:                                       ; preds = %if.else.71
  %49 = load i32, i32* %r, align 4
  %idxprom88 = sext i32 %49 to i64
  %arrayidx89 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom88
  %type90 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx89, i32 0, i32 0
  %50 = load i32, i32* %type90, align 4
  %cmp91 = icmp eq i32 %50, 6
  br i1 %cmp91, label %if.then.93, label %if.end.103

if.then.93:                                       ; preds = %if.else.87
  %51 = load float, float* %this_value, align 4
  %conv94 = fpext float %51 to double
  %mul95 = fmul double %conv94, 5.000000e-01
  %conv96 = fptrunc double %mul95 to float
  store float %conv96, float* %this_value, align 4
  %52 = load i32, i32* @verbose, align 4
  %tobool97 = icmp ne i32 %52, 0
  br i1 %tobool97, label %cond.false.99, label %cond.true.98

cond.true.98:                                     ; preds = %if.then.93
  br label %cond.end.102

cond.false.99:                                    ; preds = %if.then.93
  %53 = load i32, i32* %pos.addr, align 4
  %54 = load float, float* %this_value, align 4
  %conv100 = fpext float %54 to double
  %55 = load i32, i32* %aa, align 4
  %call101 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), i32 %53, double %conv100, i32 %55)
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.99, %cond.true.98
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.102, %if.else.87
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %cond.end.86
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.70
  %56 = load float, float* %this_value, align 4
  %57 = load float, float* %tot_value, align 4
  %sub106 = fsub float %57, %56
  store float %sub106, float* %tot_value, align 4
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.9, %if.end.9, %if.end.9
  %58 = load i32, i32* %r, align 4
  %idxprom108 = sext i32 %58 to i64
  %arrayidx109 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom108
  %what110 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx109, i32 0, i32 1
  %59 = load i32, i32* %what110, align 4
  store i32 %59, i32* %aa, align 4
  %60 = load i32, i32* %aa, align 4
  %idxprom111 = sext i32 %60 to i64
  %arrayidx112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom111
  %61 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %61 to i32
  %62 = load i32, i32* %color.addr, align 4
  %cmp114 = icmp eq i32 %conv113, %62
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %sw.bb.107
  br label %if.end.118

if.else.117:                                      ; preds = %sw.bb.107
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1389, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  %63 = load i32, i32* %aa, align 4
  %idxprom119 = sext i32 %63 to i64
  %arrayidx120 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom119
  %effective_size121 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx120, i32 0, i32 2
  %64 = load float, float* %effective_size121, align 4
  %mul122 = fmul float 2.000000e+00, %64
  store float %mul122, float* %this_value, align 4
  %65 = load i32, i32* %aa, align 4
  %idxprom123 = sext i32 %65 to i64
  %arrayidx124 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom123
  %status125 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx124, i32 0, i32 16
  %66 = load i32, i32* %status125, align 4
  %cmp126 = icmp eq i32 %66, 0
  br i1 %cmp126, label %if.then.128, label %if.end.142

if.then.128:                                      ; preds = %if.end.118
  %67 = load i32, i32* @debug, align 4
  %and129 = and i32 %67, 2048
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %cond.false.132, label %cond.true.131

cond.true.131:                                    ; preds = %if.then.128
  br label %cond.end.136

cond.false.132:                                   ; preds = %if.then.128
  %68 = load i32, i32* %pos.addr, align 4
  %69 = load float, float* %this_value, align 4
  %conv133 = fpext float %69 to double
  %mul134 = fmul double 2.000000e-01, %conv133
  %70 = load i32, i32* %aa, align 4
  %call135 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i32 0, i32 0), i32 %68, double %mul134, i32 %70)
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.132, %cond.true.131
  %71 = load float, float* %this_value, align 4
  %conv137 = fpext float %71 to double
  %mul138 = fmul double 2.000000e-01, %conv137
  %72 = load float, float* %secondary_value, align 4
  %conv139 = fpext float %72 to double
  %add140 = fadd double %conv139, %mul138
  %conv141 = fptrunc double %add140 to float
  store float %conv141, float* %secondary_value, align 4
  br label %sw.epilog

if.end.142:                                       ; preds = %if.end.118
  %73 = load i32, i32* %aa, align 4
  %arraydecay143 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay144 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @mark_changed_string(i32 %73, i8* %arraydecay143, float* %arraydecay144, i8 signext 2)
  %74 = load i32, i32* @verbose, align 4
  %tobool145 = icmp ne i32 %74, 0
  br i1 %tobool145, label %cond.false.147, label %cond.true.146

cond.true.146:                                    ; preds = %if.end.142
  br label %cond.end.149

cond.false.147:                                   ; preds = %if.end.142
  %75 = load i32, i32* %pos.addr, align 4
  %76 = load i32, i32* %aa, align 4
  %call148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i32 %75, i32 %76)
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.147, %cond.true.146
  %77 = load i32, i32* %r, align 4
  %idxprom150 = sext i32 %77 to i64
  %arrayidx151 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom150
  %type152 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx151, i32 0, i32 0
  %78 = load i32, i32* %type152, align 4
  %cmp153 = icmp eq i32 %78, 8
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %cond.end.149
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.190

if.else.156:                                      ; preds = %cond.end.149
  %79 = load i32, i32* %r, align 4
  %idxprom157 = sext i32 %79 to i64
  %arrayidx158 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom157
  %type159 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx158, i32 0, i32 0
  %80 = load i32, i32* %type159, align 4
  %cmp160 = icmp eq i32 %80, 10
  br i1 %cmp160, label %if.then.162, label %if.else.172

if.then.162:                                      ; preds = %if.else.156
  %81 = load float, float* %this_value, align 4
  %conv163 = fpext float %81 to double
  %mul164 = fmul double %conv163, 3.000000e-01
  %conv165 = fptrunc double %mul164 to float
  store float %conv165, float* %this_value, align 4
  %82 = load i32, i32* @verbose, align 4
  %tobool166 = icmp ne i32 %82, 0
  br i1 %tobool166, label %cond.false.168, label %cond.true.167

cond.true.167:                                    ; preds = %if.then.162
  br label %cond.end.171

cond.false.168:                                   ; preds = %if.then.162
  %83 = load i32, i32* %pos.addr, align 4
  %84 = load float, float* %this_value, align 4
  %conv169 = fpext float %84 to double
  %85 = load i32, i32* %aa, align 4
  %call170 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i32 0, i32 0), i32 %83, double %conv169, i32 %85)
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.168, %cond.true.167
  br label %if.end.189

if.else.172:                                      ; preds = %if.else.156
  %86 = load i32, i32* %r, align 4
  %idxprom173 = sext i32 %86 to i64
  %arrayidx174 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom173
  %type175 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx174, i32 0, i32 0
  %87 = load i32, i32* %type175, align 4
  %cmp176 = icmp eq i32 %87, 12
  br i1 %cmp176, label %if.then.178, label %if.end.188

if.then.178:                                      ; preds = %if.else.172
  %88 = load float, float* %this_value, align 4
  %conv179 = fpext float %88 to double
  %mul180 = fmul double %conv179, 5.000000e-01
  %conv181 = fptrunc double %mul180 to float
  store float %conv181, float* %this_value, align 4
  %89 = load i32, i32* @verbose, align 4
  %tobool182 = icmp ne i32 %89, 0
  br i1 %tobool182, label %cond.false.184, label %cond.true.183

cond.true.183:                                    ; preds = %if.then.178
  br label %cond.end.187

cond.false.184:                                   ; preds = %if.then.178
  %90 = load i32, i32* %pos.addr, align 4
  %91 = load float, float* %this_value, align 4
  %conv185 = fpext float %91 to double
  %92 = load i32, i32* %aa, align 4
  %call186 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i32 0, i32 0), i32 %90, double %conv185, i32 %92)
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.184, %cond.true.183
  br label %if.end.188

if.end.188:                                       ; preds = %cond.end.187, %if.else.172
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %cond.end.171
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.155
  %93 = load float, float* %this_value, align 4
  %94 = load float, float* %tot_value, align 4
  %sub191 = fsub float %94, %93
  store float %sub191, float* %tot_value, align 4
  %95 = load i32, i32* %aa, align 4
  %idxprom192 = sext i32 %95 to i64
  %arrayidx193 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom192
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx193, i32 0, i32 7
  %96 = load i32, i32* %owl_status, align 4
  %cmp194 = icmp eq i32 %96, 2
  br i1 %cmp194, label %land.lhs.true, label %if.end.215

land.lhs.true:                                    ; preds = %if.end.190
  %97 = load i32, i32* %pos.addr, align 4
  %98 = load i32, i32* %aa, align 4
  %call196 = call i32 @owl_defense_move_reason_known(i32 %97, i32 %98)
  %99 = load i32, i32* %pos.addr, align 4
  %100 = load i32, i32* %aa, align 4
  %call197 = call i32 @defense_move_reason_known(i32 %99, i32 %100)
  %cmp198 = icmp slt i32 %call196, %call197
  br i1 %cmp198, label %if.then.200, label %if.end.215

if.then.200:                                      ; preds = %land.lhs.true
  %101 = load i32, i32* %aa, align 4
  %idxprom201 = sext i32 %101 to i64
  %arrayidx202 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom201
  %effective_size203 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx202, i32 0, i32 2
  %102 = load float, float* %effective_size203, align 4
  %mul204 = fmul float 2.000000e+00, %102
  %conv205 = fpext float %mul204 to double
  %mul206 = fmul double 4.500000e-01, %conv205
  %conv207 = fptrunc double %mul206 to float
  store float %conv207, float* %this_value, align 4
  %103 = load i32, i32* @verbose, align 4
  %tobool208 = icmp ne i32 %103, 0
  br i1 %tobool208, label %cond.false.210, label %cond.true.209

cond.true.209:                                    ; preds = %if.then.200
  br label %cond.end.213

cond.false.210:                                   ; preds = %if.then.200
  %104 = load i32, i32* %pos.addr, align 4
  %105 = load float, float* %this_value, align 4
  %conv211 = fpext float %105 to double
  %106 = load i32, i32* %aa, align 4
  %call212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i32 0, i32 0), i32 %104, double %conv211, i32 %106)
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.209
  %107 = load float, float* %this_value, align 4
  %108 = load float, float* %tot_value, align 4
  %sub214 = fsub float %108, %107
  store float %sub214, float* %tot_value, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.213, %land.lhs.true, %if.end.190
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

sw.bb.216:                                        ; preds = %if.end.9
  %109 = load i32, i32* %r, align 4
  %idxprom217 = sext i32 %109 to i64
  %arrayidx218 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom217
  %what219 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx218, i32 0, i32 1
  %110 = load i32, i32* %what219, align 4
  store i32 %110, i32* %aa, align 4
  %111 = load i32, i32* %aa, align 4
  %idxprom220 = sext i32 %111 to i64
  %arrayidx221 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom220
  %112 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %112 to i32
  %113 = load i32, i32* %other, align 4
  %cmp223 = icmp eq i32 %conv222, %113
  br i1 %cmp223, label %if.then.225, label %if.else.226

if.then.225:                                      ; preds = %sw.bb.216
  br label %if.end.229

if.else.226:                                      ; preds = %sw.bb.216
  %114 = load i32, i32* %aa, align 4
  %div = sdiv i32 %114, 20
  %sub227 = sub nsw i32 %div, 1
  %115 = load i32, i32* %aa, align 4
  %rem = srem i32 %115, 20
  %sub228 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1450, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i32 %sub227, i32 %sub228)
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.225
  %116 = load i32, i32* %aa, align 4
  %idxprom230 = sext i32 %116 to i64
  %arrayidx231 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom230
  %status232 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx231, i32 0, i32 16
  %117 = load i32, i32* %status232, align 4
  %cmp233 = icmp eq i32 %117, 0
  br i1 %cmp233, label %if.then.235, label %if.end.242

if.then.235:                                      ; preds = %if.end.229
  %118 = load i32, i32* @debug, align 4
  %and236 = and i32 %118, 2048
  %tobool237 = icmp ne i32 %and236, 0
  br i1 %tobool237, label %cond.false.239, label %cond.true.238

cond.true.238:                                    ; preds = %if.then.235
  br label %cond.end.241

cond.false.239:                                   ; preds = %if.then.235
  %119 = load i32, i32* %pos.addr, align 4
  %120 = load i32, i32* %aa, align 4
  %call240 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i32 0, i32 0), i32 %119, i32 %120)
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.239, %cond.true.238
  br label %sw.epilog

if.end.242:                                       ; preds = %if.end.229
  %121 = load i32, i32* %pos.addr, align 4
  %122 = load i32, i32* %color.addr, align 4
  %call243 = call i32 @trymove(i32 %121, i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.then.245, label %if.end.378

if.then.245:                                      ; preds = %if.end.242
  %123 = load i32, i32* %aa, align 4
  %idxprom246 = sext i32 %123 to i64
  %arrayidx247 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom246
  %effective_size248 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx247, i32 0, i32 2
  %124 = load float, float* %effective_size248, align 4
  %mul249 = fmul float 2.000000e+00, %124
  store float %mul249, float* %adjusted_value, align 4
  store float 0.000000e+00, float* %adjustment_up, align 4
  store float 0.000000e+00, float* %adjustment_down, align 4
  %125 = load i32, i32* %aa, align 4
  %idxprom250 = sext i32 %125 to i64
  %arrayidx251 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom250
  %126 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %126 to i32
  %cmp253 = icmp eq i32 %conv252, 0
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %if.then.245
  store i32 0, i32* %num_adj, align 4
  br label %if.end.259

if.else.256:                                      ; preds = %if.then.245
  %127 = load i32, i32* %aa, align 4
  %arraydecay257 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call258 = call i32 @chainlinks(i32 %127, i32* %arraydecay257)
  store i32 %call258, i32* %num_adj, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  %128 = load i32, i32* %aa, align 4
  %idxprom260 = sext i32 %128 to i64
  %arrayidx261 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom260
  %129 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %129 to i32
  %cmp263 = icmp ne i32 %conv262, 0
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.295

land.lhs.true.265:                                ; preds = %if.end.259
  %130 = load i32, i32* %pos.addr, align 4
  %idxprom266 = sext i32 %130 to i64
  %arrayidx267 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom266
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx267, i32 0, i32 19
  %131 = load i32, i32* %move_safety, align 4
  %cmp268 = icmp eq i32 %131, 1
  br i1 %cmp268, label %land.lhs.true.272, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.265
  %132 = load i32, i32* %pos.addr, align 4
  %133 = load i32, i32* %color.addr, align 4
  %call270 = call i32 @adjacent_to_nondead_stone(i32 %132, i32 %133)
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %land.lhs.true.272, label %if.end.295

land.lhs.true.272:                                ; preds = %lor.lhs.false, %land.lhs.true.265
  %134 = load i32, i32* %aa, align 4
  %call273 = call i32 @find_defense(i32 %134, i32* %defense_move)
  %cmp274 = icmp eq i32 %call273, 5
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.295

land.lhs.true.276:                                ; preds = %land.lhs.true.272
  %135 = load i32, i32* %defense_move, align 4
  %cmp277 = icmp ne i32 %135, 0
  br i1 %cmp277, label %if.then.279, label %if.end.295

if.then.279:                                      ; preds = %land.lhs.true.276
  %136 = load i32, i32* %defense_move, align 4
  %137 = load i32, i32* %other, align 4
  %call280 = call i32 @trymove(i32 %136, i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.294

if.then.282:                                      ; preds = %if.then.279
  %138 = load i32, i32* %pos.addr, align 4
  %idxprom283 = sext i32 %138 to i64
  %arrayidx284 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom283
  %139 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %139 to i32
  %cmp286 = icmp eq i32 %conv285, 0
  br i1 %cmp286, label %if.then.292, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %if.then.282
  %140 = load i32, i32* %pos.addr, align 4
  %call289 = call i32 @attack(i32 %140, i32* null)
  %cmp290 = icmp eq i32 %call289, 5
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %lor.lhs.false.288, %if.then.282
  call void @popgo()
  call void @popgo()
  br label %sw.epilog

if.end.293:                                       ; preds = %lor.lhs.false.288
  call void @popgo()
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.279
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %land.lhs.true.276, %land.lhs.true.272, %lor.lhs.false, %if.end.259
  store i32 0, i32* %s, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc, %if.end.295
  %141 = load i32, i32* %s, align 4
  %142 = load i32, i32* %num_adj, align 4
  %cmp297 = icmp slt i32 %141, %142
  br i1 %cmp297, label %for.body.299, label %for.end

for.body.299:                                     ; preds = %for.cond.296
  %143 = load i32, i32* %s, align 4
  %idxprom300 = sext i32 %143 to i64
  %arrayidx301 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom300
  %144 = load i32, i32* %arrayidx301, align 4
  store i32 %144, i32* %adj, align 4
  %145 = load i32, i32* %pos.addr, align 4
  %146 = load i32, i32* %adj, align 4
  %call302 = call i32 @same_string(i32 %145, i32 %146)
  %tobool303 = icmp ne i32 %call302, 0
  br i1 %tobool303, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %for.body.299
  br label %for.inc

if.end.305:                                       ; preds = %for.body.299
  %147 = load i32, i32* %adj, align 4
  %idxprom306 = sext i32 %147 to i64
  %arrayidx307 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom306
  %color308 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx307, i32 0, i32 0
  %148 = load i32, i32* %color308, align 4
  %149 = load i32, i32* %color.addr, align 4
  %cmp309 = icmp eq i32 %148, %149
  br i1 %cmp309, label %land.lhs.true.311, label %if.end.329

land.lhs.true.311:                                ; preds = %if.end.305
  %150 = load i32, i32* %adj, align 4
  %idxprom312 = sext i32 %150 to i64
  %arrayidx313 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom312
  %status314 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx313, i32 0, i32 16
  %151 = load i32, i32* %status314, align 4
  %cmp315 = icmp eq i32 %151, 0
  br i1 %cmp315, label %land.lhs.true.317, label %if.end.329

land.lhs.true.317:                                ; preds = %land.lhs.true.311
  %152 = load i32, i32* %adj, align 4
  %idxprom318 = sext i32 %152 to i64
  %arrayidx319 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom318
  %effective_size320 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx319, i32 0, i32 4
  %153 = load float, float* %effective_size320, align 4
  %mul321 = fmul float 2.000000e+00, %153
  %154 = load float, float* %adjustment_up, align 4
  %cmp322 = fcmp ogt float %mul321, %154
  br i1 %cmp322, label %if.then.324, label %if.end.329

if.then.324:                                      ; preds = %land.lhs.true.317
  %155 = load i32, i32* %adj, align 4
  %idxprom325 = sext i32 %155 to i64
  %arrayidx326 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom325
  %effective_size327 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx326, i32 0, i32 4
  %156 = load float, float* %effective_size327, align 4
  %mul328 = fmul float 2.000000e+00, %156
  store float %mul328, float* %adjustment_up, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.324, %land.lhs.true.317, %land.lhs.true.311, %if.end.305
  %157 = load i32, i32* %adj, align 4
  %idxprom330 = sext i32 %157 to i64
  %arrayidx331 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom330
  %color332 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx331, i32 0, i32 0
  %158 = load i32, i32* %color332, align 4
  %159 = load i32, i32* %color.addr, align 4
  %cmp333 = icmp eq i32 %158, %159
  br i1 %cmp333, label %land.lhs.true.335, label %if.end.350

land.lhs.true.335:                                ; preds = %if.end.329
  %160 = load i32, i32* %adj, align 4
  %call336 = call i32 @attack(i32 %160, i32* null)
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %land.lhs.true.338, label %if.end.350

land.lhs.true.338:                                ; preds = %land.lhs.true.335
  %161 = load i32, i32* %adj, align 4
  %idxprom339 = sext i32 %161 to i64
  %arrayidx340 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom339
  %effective_size341 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx340, i32 0, i32 2
  %162 = load float, float* %effective_size341, align 4
  %mul342 = fmul float 2.000000e+00, %162
  %163 = load float, float* %adjustment_down, align 4
  %cmp343 = fcmp ogt float %mul342, %163
  br i1 %cmp343, label %if.then.345, label %if.end.350

if.then.345:                                      ; preds = %land.lhs.true.338
  %164 = load i32, i32* %adj, align 4
  %idxprom346 = sext i32 %164 to i64
  %arrayidx347 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom346
  %effective_size348 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx347, i32 0, i32 2
  %165 = load float, float* %effective_size348, align 4
  %mul349 = fmul float 2.000000e+00, %165
  store float %mul349, float* %adjustment_down, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.345, %land.lhs.true.338, %land.lhs.true.335, %if.end.329
  br label %for.inc

for.inc:                                          ; preds = %if.end.350, %if.then.304
  %166 = load i32, i32* %s, align 4
  %inc = add nsw i32 %166, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.296

for.end:                                          ; preds = %for.cond.296
  call void @popgo()
  %167 = load i32, i32* @verbose, align 4
  store i32 %167, i32* %save_verbose, align 4
  %168 = load i32, i32* @verbose, align 4
  %cmp351 = icmp sgt i32 %168, 0
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %for.end
  %169 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %169, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %for.end
  %170 = load i32, i32* %pos.addr, align 4
  %idxprom355 = sext i32 %170 to i64
  %arrayidx356 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom355
  %move_safety357 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx356, i32 0, i32 19
  %171 = load i32, i32* %move_safety357, align 4
  %cmp358 = icmp eq i32 %171, 0
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.364

land.lhs.true.360:                                ; preds = %if.end.354
  %172 = load i32, i32* %aa, align 4
  %call361 = call i32 @owl_substantial(i32 %172)
  %tobool362 = icmp ne i32 %call361, 0
  br i1 %tobool362, label %if.end.364, label %if.then.363

if.then.363:                                      ; preds = %land.lhs.true.360
  %173 = load i32, i32* %save_verbose, align 4
  store i32 %173, i32* @verbose, align 4
  br label %sw.epilog

if.end.364:                                       ; preds = %land.lhs.true.360, %if.end.354
  %174 = load i32, i32* %save_verbose, align 4
  store i32 %174, i32* @verbose, align 4
  %175 = load float, float* %adjustment_up, align 4
  %176 = load float, float* %adjusted_value, align 4
  %add365 = fadd float %176, %175
  store float %add365, float* %adjusted_value, align 4
  %177 = load float, float* %adjustment_down, align 4
  %178 = load float, float* %adjusted_value, align 4
  %sub366 = fsub float %178, %177
  store float %sub366, float* %adjusted_value, align 4
  %179 = load float, float* %adjusted_value, align 4
  %conv367 = fpext float %179 to double
  %cmp368 = fcmp ogt double %conv367, 0.000000e+00
  br i1 %cmp368, label %if.then.370, label %if.end.377

if.then.370:                                      ; preds = %if.end.364
  %180 = load i32, i32* %pos.addr, align 4
  %181 = load float, float* %adjusted_value, align 4
  call void @add_followup_value(i32 %180, float %181)
  %182 = load i32, i32* @verbose, align 4
  %tobool371 = icmp ne i32 %182, 0
  br i1 %tobool371, label %cond.false.373, label %cond.true.372

cond.true.372:                                    ; preds = %if.then.370
  br label %cond.end.376

cond.false.373:                                   ; preds = %if.then.370
  %183 = load i32, i32* %pos.addr, align 4
  %184 = load float, float* %adjusted_value, align 4
  %conv374 = fpext float %184 to double
  %185 = load i32, i32* %aa, align 4
  %call375 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.51, i32 0, i32 0), i32 %183, double %conv374, i32 %185)
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.false.373, %cond.true.372
  br label %if.end.377

if.end.377:                                       ; preds = %cond.end.376, %if.end.364
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.end.242
  br label %sw.epilog

sw.bb.379:                                        ; preds = %if.end.9
  %186 = load i32, i32* %r, align 4
  %idxprom380 = sext i32 %186 to i64
  %arrayidx381 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom380
  %what382 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx381, i32 0, i32 1
  %187 = load i32, i32* %what382, align 4
  store i32 %187, i32* %aa, align 4
  %188 = load i32, i32* %aa, align 4
  %idxprom383 = sext i32 %188 to i64
  %arrayidx384 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom383
  %189 = load i8, i8* %arrayidx384, align 1
  %conv385 = zext i8 %189 to i32
  %190 = load i32, i32* %color.addr, align 4
  %cmp386 = icmp eq i32 %conv385, %190
  br i1 %cmp386, label %if.then.388, label %if.else.389

if.then.388:                                      ; preds = %sw.bb.379
  br label %if.end.394

if.else.389:                                      ; preds = %sw.bb.379
  %191 = load i32, i32* %aa, align 4
  %div390 = sdiv i32 %191, 20
  %sub391 = sub nsw i32 %div390, 1
  %192 = load i32, i32* %aa, align 4
  %rem392 = srem i32 %192, 20
  %sub393 = sub nsw i32 %rem392, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1574, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0), i32 %sub391, i32 %sub393)
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.389, %if.then.388
  %193 = load i32, i32* %pos.addr, align 4
  %194 = load i32, i32* %color.addr, align 4
  %call395 = call i32 @trymove(i32 %193, i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool396 = icmp ne i32 %call395, 0
  br i1 %tobool396, label %if.then.397, label %if.end.427

if.then.397:                                      ; preds = %if.end.394
  %195 = load i32, i32* %pos.addr, align 4
  %idxprom398 = sext i32 %195 to i64
  %arrayidx399 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom398
  %move_safety400 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx399, i32 0, i32 19
  %196 = load i32, i32* %move_safety400, align 4
  %cmp401 = icmp eq i32 %196, 1
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.426

land.lhs.true.403:                                ; preds = %if.then.397
  %197 = load i32, i32* %aa, align 4
  %call404 = call i32 @attack(i32 %197, i32* %attack_move)
  %cmp405 = icmp eq i32 %call404, 5
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.426

land.lhs.true.407:                                ; preds = %land.lhs.true.403
  %198 = load i32, i32* %attack_move, align 4
  %cmp408 = icmp ne i32 %198, 0
  br i1 %cmp408, label %if.then.410, label %if.end.426

if.then.410:                                      ; preds = %land.lhs.true.407
  %199 = load i32, i32* %attack_move, align 4
  %200 = load i32, i32* %other, align 4
  %call411 = call i32 @trymove(i32 %199, i32 %200, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool412 = icmp ne i32 %call411, 0
  br i1 %tobool412, label %if.then.413, label %if.end.425

if.then.413:                                      ; preds = %if.then.410
  %201 = load i32, i32* %pos.addr, align 4
  %idxprom414 = sext i32 %201 to i64
  %arrayidx415 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom414
  %202 = load i8, i8* %arrayidx415, align 1
  %conv416 = zext i8 %202 to i32
  %cmp417 = icmp eq i32 %conv416, 0
  br i1 %cmp417, label %if.then.423, label %lor.lhs.false.419

lor.lhs.false.419:                                ; preds = %if.then.413
  %203 = load i32, i32* %pos.addr, align 4
  %call420 = call i32 @attack(i32 %203, i32* null)
  %cmp421 = icmp eq i32 %call420, 5
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %lor.lhs.false.419, %if.then.413
  call void @popgo()
  call void @popgo()
  br label %sw.epilog

if.end.424:                                       ; preds = %lor.lhs.false.419
  call void @popgo()
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.410
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %land.lhs.true.407, %land.lhs.true.403, %if.then.397
  call void @popgo()
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.end.394
  %204 = load i32, i32* %pos.addr, align 4
  %205 = load i32, i32* %aa, align 4
  %idxprom428 = sext i32 %205 to i64
  %arrayidx429 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom428
  %effective_size430 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx429, i32 0, i32 2
  %206 = load float, float* %effective_size430, align 4
  %mul431 = fmul float 2.000000e+00, %206
  call void @add_followup_value(i32 %204, float %mul431)
  %207 = load i32, i32* @verbose, align 4
  %tobool432 = icmp ne i32 %207, 0
  br i1 %tobool432, label %cond.false.434, label %cond.true.433

cond.true.433:                                    ; preds = %if.end.427
  br label %cond.end.441

cond.false.434:                                   ; preds = %if.end.427
  %208 = load i32, i32* %pos.addr, align 4
  %209 = load i32, i32* %aa, align 4
  %idxprom435 = sext i32 %209 to i64
  %arrayidx436 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom435
  %effective_size437 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx436, i32 0, i32 2
  %210 = load float, float* %effective_size437, align 4
  %mul438 = fmul float 2.000000e+00, %210
  %conv439 = fpext float %mul438 to double
  %211 = load i32, i32* %aa, align 4
  %call440 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i32 0, i32 0), i32 %208, double %conv439, i32 %211)
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.434, %cond.true.433
  br label %sw.epilog

sw.bb.442:                                        ; preds = %if.end.9
  br label %sw.epilog

sw.bb.443:                                        ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

sw.bb.444:                                        ; preds = %if.end.9
  %212 = load i32, i32* %r, align 4
  %idxprom445 = sext i32 %212 to i64
  %arrayidx446 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom445
  %what447 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx446, i32 0, i32 1
  %213 = load i32, i32* %what447, align 4
  store i32 %213, i32* %aa, align 4
  %214 = load i32, i32* %aa, align 4
  %idxprom448 = sext i32 %214 to i64
  %arrayidx449 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom448
  %effective_size450 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx449, i32 0, i32 4
  %215 = load float, float* %effective_size450, align 4
  %mul451 = fmul float 2.000000e+00, %215
  store float %mul451, float* %this_value, align 4
  %216 = load i32, i32* @verbose, align 4
  %tobool452 = icmp ne i32 %216, 0
  br i1 %tobool452, label %cond.false.454, label %cond.true.453

cond.true.453:                                    ; preds = %sw.bb.444
  br label %cond.end.457

cond.false.454:                                   ; preds = %sw.bb.444
  %217 = load i32, i32* %pos.addr, align 4
  %218 = load float, float* %this_value, align 4
  %conv455 = fpext float %218 to double
  %219 = load i32, i32* %aa, align 4
  %call456 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0), i32 %217, double %conv455, i32 %219)
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.454, %cond.true.453
  %220 = load float, float* %this_value, align 4
  %221 = load float, float* %tot_value, align 4
  %add458 = fadd float %221, %220
  store float %add458, float* %tot_value, align 4
  br label %sw.epilog

sw.bb.459:                                        ; preds = %if.end.9
  %222 = load i32, i32* %r, align 4
  %idxprom460 = sext i32 %222 to i64
  %arrayidx461 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom460
  %what462 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx461, i32 0, i32 1
  %223 = load i32, i32* %what462, align 4
  store i32 %223, i32* %aa, align 4
  %224 = load i32, i32* %pos.addr, align 4
  %225 = load i32, i32* %aa, align 4
  %idxprom463 = sext i32 %225 to i64
  %arrayidx464 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom463
  %effective_size465 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx464, i32 0, i32 4
  %226 = load float, float* %effective_size465, align 4
  %mul466 = fmul float 2.000000e+00, %226
  call void @add_followup_value(i32 %224, float %mul466)
  %227 = load i32, i32* @verbose, align 4
  %tobool467 = icmp ne i32 %227, 0
  br i1 %tobool467, label %cond.false.469, label %cond.true.468

cond.true.468:                                    ; preds = %sw.bb.459
  br label %cond.end.476

cond.false.469:                                   ; preds = %sw.bb.459
  %228 = load i32, i32* %pos.addr, align 4
  %229 = load i32, i32* %aa, align 4
  %idxprom470 = sext i32 %229 to i64
  %arrayidx471 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom470
  %effective_size472 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx471, i32 0, i32 4
  %230 = load float, float* %effective_size472, align 4
  %mul473 = fmul float 2.000000e+00, %230
  %conv474 = fpext float %mul473 to double
  %231 = load i32, i32* %aa, align 4
  %call475 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i32 0, i32 0), i32 %228, double %conv474, i32 %231)
  br label %cond.end.476

cond.end.476:                                     ; preds = %cond.false.469, %cond.true.468
  br label %sw.epilog

sw.bb.477:                                        ; preds = %if.end.9
  br label %sw.epilog

sw.bb.478:                                        ; preds = %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9, %if.end.9
  %232 = load i32, i32* %r, align 4
  %idxprom479 = sext i32 %232 to i64
  %arrayidx480 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom479
  %type481 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx480, i32 0, i32 0
  %233 = load i32, i32* %type481, align 4
  %cmp482 = icmp eq i32 %233, 60
  br i1 %cmp482, label %if.then.490, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %sw.bb.478
  %234 = load i32, i32* %r, align 4
  %idxprom485 = sext i32 %234 to i64
  %arrayidx486 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom485
  %type487 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx486, i32 0, i32 0
  %235 = load i32, i32* %type487, align 4
  %cmp488 = icmp eq i32 %235, 62
  br i1 %cmp488, label %if.then.490, label %if.else.501

if.then.490:                                      ; preds = %lor.lhs.false.484, %sw.bb.478
  %236 = load i32, i32* %r, align 4
  %idxprom491 = sext i32 %236 to i64
  %arrayidx492 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom491
  %what493 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx492, i32 0, i32 1
  %237 = load i32, i32* %what493, align 4
  %idxprom494 = sext i32 %237 to i64
  %arrayidx495 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom494
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx495, i32 0, i32 1
  %238 = load i32, i32* %what1, align 4
  store i32 %238, i32* %aa, align 4
  %239 = load i32, i32* %r, align 4
  %idxprom496 = sext i32 %239 to i64
  %arrayidx497 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom496
  %what498 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx497, i32 0, i32 1
  %240 = load i32, i32* %what498, align 4
  %idxprom499 = sext i32 %240 to i64
  %arrayidx500 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom499
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx500, i32 0, i32 3
  %241 = load i32, i32* %what2, align 4
  store i32 %241, i32* %bb, align 4
  br label %if.end.505

if.else.501:                                      ; preds = %lor.lhs.false.484
  %242 = load i32, i32* %r, align 4
  %idxprom502 = sext i32 %242 to i64
  %arrayidx503 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom502
  %what504 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx503, i32 0, i32 1
  %243 = load i32, i32* %what504, align 4
  store i32 %243, i32* %aa, align 4
  store i32 0, i32* %bb, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.501, %if.then.490
  %244 = load i32, i32* %aa, align 4
  %idxprom506 = sext i32 %244 to i64
  %arrayidx507 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom506
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx507, i32 0, i32 3
  %245 = load i32, i32* %size, align 4
  %cmp508 = icmp eq i32 %245, 1
  br i1 %cmp508, label %land.lhs.true.510, label %if.end.525

land.lhs.true.510:                                ; preds = %if.end.505
  %246 = load i32, i32* %aa, align 4
  %call511 = call i32 @is_ko_point(i32 %246)
  %tobool512 = icmp ne i32 %call511, 0
  br i1 %tobool512, label %land.lhs.true.513, label %if.end.525

land.lhs.true.513:                                ; preds = %land.lhs.true.510
  %247 = load i32, i32* %pos.addr, align 4
  %248 = load i32, i32* %aa, align 4
  %call514 = call i32 @liberty_of_string(i32 %247, i32 %248)
  %tobool515 = icmp ne i32 %call514, 0
  br i1 %tobool515, label %if.then.516, label %if.end.525

if.then.516:                                      ; preds = %land.lhs.true.513
  %249 = load i32, i32* @verbose, align 4
  %tobool517 = icmp ne i32 %249, 0
  br i1 %tobool517, label %cond.false.519, label %cond.true.518

cond.true.518:                                    ; preds = %if.then.516
  br label %cond.end.521

cond.false.519:                                   ; preds = %if.then.516
  %250 = load i32, i32* %pos.addr, align 4
  %251 = load i32, i32* %aa, align 4
  %call520 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.55, i32 0, i32 0), i32 %250, i32 %251)
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.519, %cond.true.518
  %252 = load float, float* %tot_value, align 4
  %conv522 = fpext float %252 to double
  %sub523 = fsub double %conv522, 5.000000e-01
  %conv524 = fptrunc double %sub523 to float
  store float %conv524, float* %tot_value, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %cond.end.521, %land.lhs.true.513, %land.lhs.true.510, %if.end.505
  %253 = load i32, i32* %pos.addr, align 4
  %254 = load i32, i32* %color.addr, align 4
  %255 = load i32, i32* %aa, align 4
  %256 = load i32, i32* %bb, align 4
  %257 = load i32, i32* %r, align 4
  %idxprom526 = sext i32 %257 to i64
  %arrayidx527 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom526
  %type528 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx527, i32 0, i32 0
  %258 = load i32, i32* %type528, align 4
  %arraydecay529 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay530 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @mark_changed_dragon(i32 %253, i32 %254, i32 %255, i32 %256, i32 %258, i8* %arraydecay529, float* %arraydecay530, float* %this_value)
  %259 = load float, float* %this_value, align 4
  %conv531 = fpext float %259 to double
  %mul532 = fmul double %conv531, 2.000000e+00
  %conv533 = fptrunc double %mul532 to float
  store float %conv533, float* %this_value, align 4
  %260 = load i32, i32* @verbose, align 4
  %tobool534 = icmp ne i32 %260, 0
  br i1 %tobool534, label %cond.false.536, label %cond.true.535

cond.true.535:                                    ; preds = %if.end.525
  br label %cond.end.538

cond.false.536:                                   ; preds = %if.end.525
  %261 = load i32, i32* %pos.addr, align 4
  %262 = load i32, i32* %aa, align 4
  %call537 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i32 0, i32 0), i32 %261, i32 %262)
  br label %cond.end.538

cond.end.538:                                     ; preds = %cond.false.536, %cond.true.535
  %263 = load i32, i32* %r, align 4
  %idxprom539 = sext i32 %263 to i64
  %arrayidx540 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom539
  %type541 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx540, i32 0, i32 0
  %264 = load i32, i32* %type541, align 4
  %cmp542 = icmp eq i32 %264, 26
  br i1 %cmp542, label %if.then.550, label %lor.lhs.false.544

lor.lhs.false.544:                                ; preds = %cond.end.538
  %265 = load i32, i32* %r, align 4
  %idxprom545 = sext i32 %265 to i64
  %arrayidx546 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom545
  %type547 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx546, i32 0, i32 0
  %266 = load i32, i32* %type547, align 4
  %cmp548 = icmp eq i32 %266, 32
  br i1 %cmp548, label %if.then.550, label %if.else.551

if.then.550:                                      ; preds = %lor.lhs.false.544, %cond.end.538
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.611

if.else.551:                                      ; preds = %lor.lhs.false.544
  %267 = load i32, i32* %r, align 4
  %idxprom552 = sext i32 %267 to i64
  %arrayidx553 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom552
  %type554 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx553, i32 0, i32 0
  %268 = load i32, i32* %type554, align 4
  %cmp555 = icmp eq i32 %268, 28
  br i1 %cmp555, label %if.then.563, label %lor.lhs.false.557

lor.lhs.false.557:                                ; preds = %if.else.551
  %269 = load i32, i32* %r, align 4
  %idxprom558 = sext i32 %269 to i64
  %arrayidx559 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom558
  %type560 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx559, i32 0, i32 0
  %270 = load i32, i32* %type560, align 4
  %cmp561 = icmp eq i32 %270, 34
  br i1 %cmp561, label %if.then.563, label %if.else.573

if.then.563:                                      ; preds = %lor.lhs.false.557, %if.else.551
  %271 = load float, float* %this_value, align 4
  %conv564 = fpext float %271 to double
  %mul565 = fmul double %conv564, 3.000000e-01
  %conv566 = fptrunc double %mul565 to float
  store float %conv566, float* %this_value, align 4
  %272 = load i32, i32* @verbose, align 4
  %tobool567 = icmp ne i32 %272, 0
  br i1 %tobool567, label %cond.false.569, label %cond.true.568

cond.true.568:                                    ; preds = %if.then.563
  br label %cond.end.572

cond.false.569:                                   ; preds = %if.then.563
  %273 = load i32, i32* %pos.addr, align 4
  %274 = load float, float* %this_value, align 4
  %conv570 = fpext float %274 to double
  %275 = load i32, i32* %aa, align 4
  %call571 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i32 0, i32 0), i32 %273, double %conv570, i32 %275)
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.569, %cond.true.568
  br label %if.end.610

if.else.573:                                      ; preds = %lor.lhs.false.557
  %276 = load i32, i32* %r, align 4
  %idxprom574 = sext i32 %276 to i64
  %arrayidx575 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom574
  %type576 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx575, i32 0, i32 0
  %277 = load i32, i32* %type576, align 4
  %cmp577 = icmp eq i32 %277, 30
  br i1 %cmp577, label %if.then.585, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %if.else.573
  %278 = load i32, i32* %r, align 4
  %idxprom580 = sext i32 %278 to i64
  %arrayidx581 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom580
  %type582 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx581, i32 0, i32 0
  %279 = load i32, i32* %type582, align 4
  %cmp583 = icmp eq i32 %279, 36
  br i1 %cmp583, label %if.then.585, label %if.else.595

if.then.585:                                      ; preds = %lor.lhs.false.579, %if.else.573
  %280 = load float, float* %this_value, align 4
  %conv586 = fpext float %280 to double
  %mul587 = fmul double %conv586, 5.000000e-01
  %conv588 = fptrunc double %mul587 to float
  store float %conv588, float* %this_value, align 4
  %281 = load i32, i32* @verbose, align 4
  %tobool589 = icmp ne i32 %281, 0
  br i1 %tobool589, label %cond.false.591, label %cond.true.590

cond.true.590:                                    ; preds = %if.then.585
  br label %cond.end.594

cond.false.591:                                   ; preds = %if.then.585
  %282 = load i32, i32* %pos.addr, align 4
  %283 = load float, float* %this_value, align 4
  %conv592 = fpext float %283 to double
  %284 = load i32, i32* %aa, align 4
  %call593 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.58, i32 0, i32 0), i32 %282, double %conv592, i32 %284)
  br label %cond.end.594

cond.end.594:                                     ; preds = %cond.false.591, %cond.true.590
  br label %if.end.609

if.else.595:                                      ; preds = %lor.lhs.false.579
  %285 = load i32, i32* %r, align 4
  %idxprom596 = sext i32 %285 to i64
  %arrayidx597 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom596
  %type598 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx597, i32 0, i32 0
  %286 = load i32, i32* %type598, align 4
  %cmp599 = icmp eq i32 %286, 60
  br i1 %cmp599, label %if.then.607, label %lor.lhs.false.601

lor.lhs.false.601:                                ; preds = %if.else.595
  %287 = load i32, i32* %r, align 4
  %idxprom602 = sext i32 %287 to i64
  %arrayidx603 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom602
  %type604 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx603, i32 0, i32 0
  %288 = load i32, i32* %type604, align 4
  %cmp605 = icmp eq i32 %288, 62
  br i1 %cmp605, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %lor.lhs.false.601, %if.else.595
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.607, %lor.lhs.false.601
  br label %if.end.609

if.end.609:                                       ; preds = %if.end.608, %cond.end.594
  br label %if.end.610

if.end.610:                                       ; preds = %if.end.609, %cond.end.572
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %if.then.550
  %289 = load float, float* %this_value, align 4
  %290 = load float, float* %tot_value, align 4
  %sub612 = fsub float %290, %289
  store float %sub612, float* %tot_value, align 4
  %291 = load i32, i32* %r, align 4
  %idxprom613 = sext i32 %291 to i64
  %arrayidx614 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom613
  %type615 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx614, i32 0, i32 0
  %292 = load i32, i32* %type615, align 4
  %cmp616 = icmp eq i32 %292, 26
  br i1 %cmp616, label %land.lhs.true.630, label %lor.lhs.false.618

lor.lhs.false.618:                                ; preds = %if.end.611
  %293 = load i32, i32* %r, align 4
  %idxprom619 = sext i32 %293 to i64
  %arrayidx620 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom619
  %type621 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx620, i32 0, i32 0
  %294 = load i32, i32* %type621, align 4
  %cmp622 = icmp eq i32 %294, 28
  br i1 %cmp622, label %land.lhs.true.630, label %lor.lhs.false.624

lor.lhs.false.624:                                ; preds = %lor.lhs.false.618
  %295 = load i32, i32* %r, align 4
  %idxprom625 = sext i32 %295 to i64
  %arrayidx626 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom625
  %type627 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx626, i32 0, i32 0
  %296 = load i32, i32* %type627, align 4
  %cmp628 = icmp eq i32 %296, 30
  br i1 %cmp628, label %land.lhs.true.630, label %if.end.664

land.lhs.true.630:                                ; preds = %lor.lhs.false.624, %lor.lhs.false.618, %if.end.611
  %297 = load i32, i32* %aa, align 4
  %idxprom631 = sext i32 %297 to i64
  %arrayidx632 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom631
  %size633 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx632, i32 0, i32 3
  %298 = load i32, i32* %size633, align 4
  %299 = load i32, i32* %aa, align 4
  %idxprom634 = sext i32 %299 to i64
  %arrayidx635 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom634
  %size636 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx635, i32 0, i32 1
  %300 = load i32, i32* %size636, align 4
  %cmp637 = icmp eq i32 %298, %300
  br i1 %cmp637, label %land.lhs.true.639, label %if.end.664

land.lhs.true.639:                                ; preds = %land.lhs.true.630
  %301 = load i32, i32* %aa, align 4
  %idxprom640 = sext i32 %301 to i64
  %arrayidx641 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom640
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx641, i32 0, i32 16
  %arrayidx642 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %302 = load i32, i32* %arrayidx642, align 4
  %cmp643 = icmp eq i32 %302, 5
  br i1 %cmp643, label %land.lhs.true.645, label %if.end.664

land.lhs.true.645:                                ; preds = %land.lhs.true.639
  %303 = load i32, i32* %pos.addr, align 4
  %304 = load i32, i32* %aa, align 4
  %call646 = call i32 @attack_move_reason_known(i32 %303, i32 %304)
  %cmp647 = icmp ne i32 %call646, 5
  br i1 %cmp647, label %if.then.649, label %if.end.664

if.then.649:                                      ; preds = %land.lhs.true.645
  %305 = load i32, i32* %aa, align 4
  %idxprom650 = sext i32 %305 to i64
  %arrayidx651 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom650
  %effective_size652 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx651, i32 0, i32 2
  %306 = load float, float* %effective_size652, align 4
  %mul653 = fmul float 2.000000e+00, %306
  %conv654 = fpext float %mul653 to double
  %mul655 = fmul double 5.000000e-02, %conv654
  %conv656 = fptrunc double %mul655 to float
  store float %conv656, float* %this_value, align 4
  %307 = load i32, i32* @verbose, align 4
  %tobool657 = icmp ne i32 %307, 0
  br i1 %tobool657, label %cond.false.659, label %cond.true.658

cond.true.658:                                    ; preds = %if.then.649
  br label %cond.end.662

cond.false.659:                                   ; preds = %if.then.649
  %308 = load i32, i32* %pos.addr, align 4
  %309 = load float, float* %this_value, align 4
  %conv660 = fpext float %309 to double
  %310 = load i32, i32* %aa, align 4
  %call661 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i32 0, i32 0), i32 %308, double %conv660, i32 %310)
  br label %cond.end.662

cond.end.662:                                     ; preds = %cond.false.659, %cond.true.658
  %311 = load float, float* %this_value, align 4
  %312 = load float, float* %tot_value, align 4
  %sub663 = fsub float %312, %311
  store float %sub663, float* %tot_value, align 4
  br label %if.end.664

if.end.664:                                       ; preds = %cond.end.662, %land.lhs.true.645, %land.lhs.true.639, %land.lhs.true.630, %lor.lhs.false.624
  store i32 1, i32* %does_block, align 4
  br label %sw.epilog

sw.bb.665:                                        ; preds = %if.end.9
  %313 = load i32, i32* %r, align 4
  %idxprom666 = sext i32 %313 to i64
  %arrayidx667 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom666
  %what668 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx667, i32 0, i32 1
  %314 = load i32, i32* %what668, align 4
  store i32 %314, i32* %aa, align 4
  %315 = load i32, i32* %aa, align 4
  %idxprom669 = sext i32 %315 to i64
  %arrayidx670 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom669
  %status671 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx670, i32 0, i32 16
  %316 = load i32, i32* %status671, align 4
  %cmp672 = icmp eq i32 %316, 0
  br i1 %cmp672, label %if.then.674, label %if.end.681

if.then.674:                                      ; preds = %sw.bb.665
  %317 = load i32, i32* @debug, align 4
  %and675 = and i32 %317, 2048
  %tobool676 = icmp ne i32 %and675, 0
  br i1 %tobool676, label %cond.false.678, label %cond.true.677

cond.true.677:                                    ; preds = %if.then.674
  br label %cond.end.680

cond.false.678:                                   ; preds = %if.then.674
  %318 = load i32, i32* %pos.addr, align 4
  %319 = load i32, i32* %aa, align 4
  %call679 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i32 0, i32 0), i32 %318, i32 %319)
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.678, %cond.true.677
  br label %sw.epilog

if.end.681:                                       ; preds = %sw.bb.665
  %320 = load i32, i32* %aa, align 4
  %idxprom682 = sext i32 %320 to i64
  %arrayidx683 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom682
  %effective_size684 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx683, i32 0, i32 4
  %321 = load float, float* %effective_size684, align 4
  %mul685 = fmul float 2.000000e+00, %321
  store float %mul685, float* %value, align 4
  store i32 0, i32* %s686, align 4
  br label %for.cond.687

for.cond.687:                                     ; preds = %for.inc.726, %if.end.681
  %322 = load i32, i32* %s686, align 4
  %323 = load i32, i32* %aa, align 4
  %idxprom688 = sext i32 %323 to i64
  %arrayidx689 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom688
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx689, i32 0, i32 1
  %324 = load i32, i32* %id, align 4
  %idxprom690 = sext i32 %324 to i64
  %325 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx691 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %325, i64 %idxprom690
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx691, i32 0, i32 2
  %326 = load i32, i32* %neighbors, align 4
  %cmp692 = icmp slt i32 %322, %326
  br i1 %cmp692, label %for.body.694, label %for.end.728

for.body.694:                                     ; preds = %for.cond.687
  %327 = load i32, i32* %s686, align 4
  %idxprom695 = sext i32 %327 to i64
  %328 = load i32, i32* %aa, align 4
  %idxprom696 = sext i32 %328 to i64
  %arrayidx697 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom696
  %id698 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx697, i32 0, i32 1
  %329 = load i32, i32* %id698, align 4
  %idxprom699 = sext i32 %329 to i64
  %330 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx700 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %330, i64 %idxprom699
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx700, i32 0, i32 1
  %arrayidx701 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom695
  %331 = load i32, i32* %arrayidx701, align 4
  store i32 %331, i32* %d, align 4
  %332 = load i32, i32* %d, align 4
  %idxprom703 = sext i32 %332 to i64
  %333 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx704 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %333, i64 %idxprom703
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx704, i32 0, i32 0
  %334 = load i32, i32* %origin, align 4
  store i32 %334, i32* %adj702, align 4
  %335 = load i32, i32* %adj702, align 4
  %idxprom705 = sext i32 %335 to i64
  %arrayidx706 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom705
  %color707 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx706, i32 0, i32 0
  %336 = load i32, i32* %color707, align 4
  %337 = load i32, i32* %color.addr, align 4
  %cmp708 = icmp eq i32 %336, %337
  br i1 %cmp708, label %land.lhs.true.710, label %if.end.725

land.lhs.true.710:                                ; preds = %for.body.694
  %338 = load i32, i32* %adj702, align 4
  %idxprom711 = sext i32 %338 to i64
  %arrayidx712 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom711
  %status713 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx712, i32 0, i32 16
  %339 = load i32, i32* %status713, align 4
  %cmp714 = icmp eq i32 %339, 2
  br i1 %cmp714, label %land.lhs.true.716, label %if.end.725

land.lhs.true.716:                                ; preds = %land.lhs.true.710
  %340 = load i32, i32* %d, align 4
  %idxprom717 = sext i32 %340 to i64
  %341 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx718 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %341, i64 %idxprom717
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx718, i32 0, i32 6
  %342 = load i32, i32* %safety, align 4
  %cmp719 = icmp ne i32 %342, 5
  br i1 %cmp719, label %land.lhs.true.721, label %if.end.725

land.lhs.true.721:                                ; preds = %land.lhs.true.716
  %343 = load i32, i32* %pos.addr, align 4
  %344 = load i32, i32* %adj702, align 4
  %call722 = call i32 @owl_defense_move_reason_known(i32 %343, i32 %344)
  %tobool723 = icmp ne i32 %call722, 0
  br i1 %tobool723, label %if.end.725, label %if.then.724

if.then.724:                                      ; preds = %land.lhs.true.721
  store float 0.000000e+00, float* %value, align 4
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.724, %land.lhs.true.721, %land.lhs.true.716, %land.lhs.true.710, %for.body.694
  br label %for.inc.726

for.inc.726:                                      ; preds = %if.end.725
  %345 = load i32, i32* %s686, align 4
  %inc727 = add nsw i32 %345, 1
  store i32 %inc727, i32* %s686, align 4
  br label %for.cond.687

for.end.728:                                      ; preds = %for.cond.687
  %346 = load float, float* %value, align 4
  %conv729 = fpext float %346 to double
  %cmp730 = fcmp ogt double %conv729, 0.000000e+00
  br i1 %cmp730, label %if.then.732, label %if.end.739

if.then.732:                                      ; preds = %for.end.728
  %347 = load i32, i32* %pos.addr, align 4
  %348 = load float, float* %value, align 4
  call void @add_followup_value(i32 %347, float %348)
  %349 = load i32, i32* @verbose, align 4
  %tobool733 = icmp ne i32 %349, 0
  br i1 %tobool733, label %cond.false.735, label %cond.true.734

cond.true.734:                                    ; preds = %if.then.732
  br label %cond.end.738

cond.false.735:                                   ; preds = %if.then.732
  %350 = load i32, i32* %pos.addr, align 4
  %351 = load float, float* %value, align 4
  %conv736 = fpext float %351 to double
  %352 = load i32, i32* %aa, align 4
  %call737 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i32 0, i32 0), i32 %350, double %conv736, i32 %352)
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.735, %cond.true.734
  br label %if.end.739

if.end.739:                                       ; preds = %cond.end.738, %for.end.728
  br label %sw.epilog

sw.bb.740:                                        ; preds = %if.end.9
  %353 = load i32, i32* %r, align 4
  %idxprom741 = sext i32 %353 to i64
  %arrayidx742 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom741
  %what743 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx742, i32 0, i32 1
  %354 = load i32, i32* %what743, align 4
  store i32 %354, i32* %aa, align 4
  %355 = load i32, i32* %pos.addr, align 4
  %356 = load i32, i32* %aa, align 4
  %idxprom744 = sext i32 %356 to i64
  %arrayidx745 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom744
  %effective_size746 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx745, i32 0, i32 4
  %357 = load float, float* %effective_size746, align 4
  %mul747 = fmul float 2.000000e+00, %357
  call void @add_followup_value(i32 %355, float %mul747)
  %358 = load i32, i32* @verbose, align 4
  %tobool748 = icmp ne i32 %358, 0
  br i1 %tobool748, label %cond.false.750, label %cond.true.749

cond.true.749:                                    ; preds = %sw.bb.740
  br label %cond.end.757

cond.false.750:                                   ; preds = %sw.bb.740
  %359 = load i32, i32* %pos.addr, align 4
  %360 = load i32, i32* %aa, align 4
  %idxprom751 = sext i32 %360 to i64
  %arrayidx752 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom751
  %effective_size753 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx752, i32 0, i32 4
  %361 = load float, float* %effective_size753, align 4
  %mul754 = fmul float 2.000000e+00, %361
  %conv755 = fpext float %mul754 to double
  %362 = load i32, i32* %aa, align 4
  %call756 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i32 0, i32 0), i32 %359, double %conv755, i32 %362)
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.750, %cond.true.749
  br label %sw.epilog

sw.bb.758:                                        ; preds = %if.end.9
  %363 = load i32, i32* %r, align 4
  %idxprom759 = sext i32 %363 to i64
  %arrayidx760 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom759
  %what761 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx760, i32 0, i32 1
  %364 = load i32, i32* %what761, align 4
  store i32 %364, i32* %aa, align 4
  %365 = load i32, i32* @doing_scoring, align 4
  %tobool762 = icmp ne i32 %365, 0
  br i1 %tobool762, label %if.else.781, label %land.lhs.true.763

land.lhs.true.763:                                ; preds = %sw.bb.758
  %366 = load i32, i32* %color.addr, align 4
  %call764 = call i32 @get_last_opponent_move(i32 %366)
  %367 = load i32, i32* %aa, align 4
  %call765 = call i32 @is_same_dragon(i32 %call764, i32 %367)
  %tobool766 = icmp ne i32 %call765, 0
  br i1 %tobool766, label %if.then.767, label %if.else.781

if.then.767:                                      ; preds = %land.lhs.true.763
  %368 = load i32, i32* %aa, align 4
  %idxprom768 = sext i32 %368 to i64
  %arrayidx769 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom768
  %effective_size770 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx769, i32 0, i32 4
  %369 = load float, float* %effective_size770, align 4
  %conv771 = fpext float %369 to double
  %mul772 = fmul double 1.500000e+00, %conv771
  %conv773 = fptrunc double %mul772 to float
  store float %conv773, float* %this_value, align 4
  %370 = load i32, i32* @verbose, align 4
  %tobool774 = icmp ne i32 %370, 0
  br i1 %tobool774, label %cond.false.776, label %cond.true.775

cond.true.775:                                    ; preds = %if.then.767
  br label %cond.end.779

cond.false.776:                                   ; preds = %if.then.767
  %371 = load i32, i32* %pos.addr, align 4
  %372 = load float, float* %this_value, align 4
  %conv777 = fpext float %372 to double
  %call778 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i32 0, i32 0), i32 %371, double %conv777)
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.776, %cond.true.775
  %373 = load float, float* %this_value, align 4
  %374 = load float, float* %tot_value, align 4
  %add780 = fadd float %374, %373
  store float %add780, float* %tot_value, align 4
  br label %if.end.941

if.else.781:                                      ; preds = %land.lhs.true.763, %sw.bb.758
  %375 = load i32, i32* @doing_scoring, align 4
  %tobool782 = icmp ne i32 %375, 0
  br i1 %tobool782, label %if.else.857, label %land.lhs.true.783

land.lhs.true.783:                                ; preds = %if.else.781
  %376 = load i32, i32* %color.addr, align 4
  %cmp784 = icmp eq i32 %376, 2
  br i1 %cmp784, label %land.lhs.true.786, label %lor.lhs.false.790

land.lhs.true.786:                                ; preds = %land.lhs.true.783
  %377 = load float, float* %score.addr, align 4
  %conv787 = fpext float %377 to double
  %cmp788 = fcmp olt double %conv787, 0.000000e+00
  br i1 %cmp788, label %if.then.797, label %lor.lhs.false.790

lor.lhs.false.790:                                ; preds = %land.lhs.true.786, %land.lhs.true.783
  %378 = load i32, i32* %color.addr, align 4
  %cmp791 = icmp eq i32 %378, 1
  br i1 %cmp791, label %land.lhs.true.793, label %if.else.857

land.lhs.true.793:                                ; preds = %lor.lhs.false.790
  %379 = load float, float* %score.addr, align 4
  %conv794 = fpext float %379 to double
  %cmp795 = fcmp ogt double %conv794, 0.000000e+00
  br i1 %cmp795, label %if.then.797, label %if.else.857

if.then.797:                                      ; preds = %land.lhs.true.793, %land.lhs.true.786
  %380 = load i32, i32* %aa, align 4
  %idxprom798 = sext i32 %380 to i64
  %arrayidx799 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom798
  %effective_size800 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx799, i32 0, i32 4
  %381 = load float, float* %effective_size800, align 4
  %conv801 = fpext float %381 to double
  %mul802 = fmul double 9.000000e-01, %conv801
  %382 = load float, float* %score.addr, align 4
  %div803 = fdiv float %382, 2.000000e+00
  %cmp804 = fcmp olt float %div803, 0.000000e+00
  br i1 %cmp804, label %cond.true.806, label %cond.false.809

cond.true.806:                                    ; preds = %if.then.797
  %383 = load float, float* %score.addr, align 4
  %div807 = fdiv float %383, 2.000000e+00
  %sub808 = fsub float -0.000000e+00, %div807
  br label %cond.end.811

cond.false.809:                                   ; preds = %if.then.797
  %384 = load float, float* %score.addr, align 4
  %div810 = fdiv float %384, 2.000000e+00
  br label %cond.end.811

cond.end.811:                                     ; preds = %cond.false.809, %cond.true.806
  %cond = phi float [ %sub808, %cond.true.806 ], [ %div810, %cond.false.809 ]
  %385 = load i32, i32* @board_size, align 4
  %div812 = sdiv i32 %385, 2
  %conv813 = sitofp i32 %div812 to float
  %sub814 = fsub float %cond, %conv813
  %sub815 = fsub float %sub814, 1.000000e+00
  %conv816 = fpext float %sub815 to double
  %cmp817 = fcmp olt double %mul802, %conv816
  br i1 %cmp817, label %cond.true.819, label %cond.false.825

cond.true.819:                                    ; preds = %cond.end.811
  %386 = load i32, i32* %aa, align 4
  %idxprom820 = sext i32 %386 to i64
  %arrayidx821 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom820
  %effective_size822 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx821, i32 0, i32 4
  %387 = load float, float* %effective_size822, align 4
  %conv823 = fpext float %387 to double
  %mul824 = fmul double 9.000000e-01, %conv823
  br label %cond.end.841

cond.false.825:                                   ; preds = %cond.end.811
  %388 = load float, float* %score.addr, align 4
  %div826 = fdiv float %388, 2.000000e+00
  %cmp827 = fcmp olt float %div826, 0.000000e+00
  br i1 %cmp827, label %cond.true.829, label %cond.false.832

cond.true.829:                                    ; preds = %cond.false.825
  %389 = load float, float* %score.addr, align 4
  %div830 = fdiv float %389, 2.000000e+00
  %sub831 = fsub float -0.000000e+00, %div830
  br label %cond.end.834

cond.false.832:                                   ; preds = %cond.false.825
  %390 = load float, float* %score.addr, align 4
  %div833 = fdiv float %390, 2.000000e+00
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.false.832, %cond.true.829
  %cond835 = phi float [ %sub831, %cond.true.829 ], [ %div833, %cond.false.832 ]
  %391 = load i32, i32* @board_size, align 4
  %div836 = sdiv i32 %391, 2
  %conv837 = sitofp i32 %div836 to float
  %sub838 = fsub float %cond835, %conv837
  %sub839 = fsub float %sub838, 1.000000e+00
  %conv840 = fpext float %sub839 to double
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.end.834, %cond.true.819
  %cond842 = phi double [ %mul824, %cond.true.819 ], [ %conv840, %cond.end.834 ]
  %conv843 = fptrunc double %cond842 to float
  store float %conv843, float* %this_value, align 4
  %392 = load float, float* %this_value, align 4
  %cmp844 = fcmp olt float %392, 0.000000e+00
  br i1 %cmp844, label %cond.true.846, label %cond.false.847

cond.true.846:                                    ; preds = %cond.end.841
  br label %cond.end.848

cond.false.847:                                   ; preds = %cond.end.841
  %393 = load float, float* %this_value, align 4
  br label %cond.end.848

cond.end.848:                                     ; preds = %cond.false.847, %cond.true.846
  %cond849 = phi float [ 0.000000e+00, %cond.true.846 ], [ %393, %cond.false.847 ]
  store float %cond849, float* %this_value, align 4
  %394 = load i32, i32* @verbose, align 4
  %tobool850 = icmp ne i32 %394, 0
  br i1 %tobool850, label %cond.false.852, label %cond.true.851

cond.true.851:                                    ; preds = %cond.end.848
  br label %cond.end.855

cond.false.852:                                   ; preds = %cond.end.848
  %395 = load i32, i32* %pos.addr, align 4
  %396 = load float, float* %this_value, align 4
  %conv853 = fpext float %396 to double
  %397 = load i32, i32* %aa, align 4
  %call854 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.64, i32 0, i32 0), i32 %395, double %conv853, i32 %397)
  br label %cond.end.855

cond.end.855:                                     ; preds = %cond.false.852, %cond.true.851
  %398 = load float, float* %this_value, align 4
  %399 = load float, float* %tot_value, align 4
  %add856 = fadd float %399, %398
  store float %add856, float* %tot_value, align 4
  br label %if.end.940

if.else.857:                                      ; preds = %land.lhs.true.793, %lor.lhs.false.790, %if.else.781
  %400 = load i32, i32* %color.addr, align 4
  %cmp858 = icmp eq i32 %400, 2
  br i1 %cmp858, label %land.lhs.true.860, label %lor.lhs.false.864

land.lhs.true.860:                                ; preds = %if.else.857
  %401 = load float, float* %score.addr, align 4
  %conv861 = fpext float %401 to double
  %cmp862 = fcmp ogt double %conv861, 0.000000e+00
  br i1 %cmp862, label %if.then.871, label %lor.lhs.false.864

lor.lhs.false.864:                                ; preds = %land.lhs.true.860, %if.else.857
  %402 = load i32, i32* %color.addr, align 4
  %cmp865 = icmp eq i32 %402, 1
  br i1 %cmp865, label %land.lhs.true.867, label %if.else.872

land.lhs.true.867:                                ; preds = %lor.lhs.false.864
  %403 = load float, float* %score.addr, align 4
  %conv868 = fpext float %403 to double
  %cmp869 = fcmp olt double %conv868, 0.000000e+00
  br i1 %cmp869, label %if.then.871, label %if.else.872

if.then.871:                                      ; preds = %land.lhs.true.867, %land.lhs.true.860
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.907

if.else.872:                                      ; preds = %land.lhs.true.867, %lor.lhs.false.864
  %404 = load i32, i32* %aa, align 4
  %idxprom873 = sext i32 %404 to i64
  %arrayidx874 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom873
  %effective_size875 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx874, i32 0, i32 4
  %405 = load float, float* %effective_size875, align 4
  %mul876 = fmul float 2.000000e+00, %405
  %406 = load float, float* %score.addr, align 4
  %div877 = fdiv float %406, 2.000000e+00
  %cmp878 = fcmp olt float %div877, 0.000000e+00
  br i1 %cmp878, label %cond.true.880, label %cond.false.883

cond.true.880:                                    ; preds = %if.else.872
  %407 = load float, float* %score.addr, align 4
  %div881 = fdiv float %407, 2.000000e+00
  %sub882 = fsub float -0.000000e+00, %div881
  br label %cond.end.885

cond.false.883:                                   ; preds = %if.else.872
  %408 = load float, float* %score.addr, align 4
  %div884 = fdiv float %408, 2.000000e+00
  br label %cond.end.885

cond.end.885:                                     ; preds = %cond.false.883, %cond.true.880
  %cond886 = phi float [ %sub882, %cond.true.880 ], [ %div884, %cond.false.883 ]
  %cmp887 = fcmp olt float %mul876, %cond886
  br i1 %cmp887, label %cond.true.889, label %cond.false.894

cond.true.889:                                    ; preds = %cond.end.885
  %409 = load i32, i32* %aa, align 4
  %idxprom890 = sext i32 %409 to i64
  %arrayidx891 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom890
  %effective_size892 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx891, i32 0, i32 4
  %410 = load float, float* %effective_size892, align 4
  %mul893 = fmul float 2.000000e+00, %410
  br label %cond.end.905

cond.false.894:                                   ; preds = %cond.end.885
  %411 = load float, float* %score.addr, align 4
  %div895 = fdiv float %411, 2.000000e+00
  %cmp896 = fcmp olt float %div895, 0.000000e+00
  br i1 %cmp896, label %cond.true.898, label %cond.false.901

cond.true.898:                                    ; preds = %cond.false.894
  %412 = load float, float* %score.addr, align 4
  %div899 = fdiv float %412, 2.000000e+00
  %sub900 = fsub float -0.000000e+00, %div899
  br label %cond.end.903

cond.false.901:                                   ; preds = %cond.false.894
  %413 = load float, float* %score.addr, align 4
  %div902 = fdiv float %413, 2.000000e+00
  br label %cond.end.903

cond.end.903:                                     ; preds = %cond.false.901, %cond.true.898
  %cond904 = phi float [ %sub900, %cond.true.898 ], [ %div902, %cond.false.901 ]
  br label %cond.end.905

cond.end.905:                                     ; preds = %cond.end.903, %cond.true.889
  %cond906 = phi float [ %mul893, %cond.true.889 ], [ %cond904, %cond.end.903 ]
  store float %cond906, float* %this_value, align 4
  br label %if.end.907

if.end.907:                                       ; preds = %cond.end.905, %if.then.871
  %414 = load i32, i32* %pos.addr, align 4
  %415 = load i32, i32* %aa, align 4
  %idxprom908 = sext i32 %415 to i64
  %arrayidx909 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom908
  %effective_size910 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx909, i32 0, i32 4
  %416 = load float, float* %effective_size910, align 4
  %mul911 = fmul float 2.000000e+00, %416
  call void @add_reverse_followup_value(i32 %414, float %mul911)
  %417 = load i32, i32* %aa, align 4
  %idxprom912 = sext i32 %417 to i64
  %arrayidx913 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom912
  %418 = load i8, i8* %arrayidx913, align 1
  %conv914 = zext i8 %418 to i32
  %419 = load i32, i32* %color.addr, align 4
  %cmp915 = icmp eq i32 %conv914, %419
  br i1 %cmp915, label %if.then.917, label %if.else.928

if.then.917:                                      ; preds = %if.end.907
  %420 = load i32, i32* @verbose, align 4
  %tobool918 = icmp ne i32 %420, 0
  br i1 %tobool918, label %cond.false.920, label %cond.true.919

cond.true.919:                                    ; preds = %if.then.917
  br label %cond.end.927

cond.false.920:                                   ; preds = %if.then.917
  %421 = load i32, i32* %pos.addr, align 4
  %422 = load i32, i32* %aa, align 4
  %idxprom921 = sext i32 %422 to i64
  %arrayidx922 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom921
  %effective_size923 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx922, i32 0, i32 4
  %423 = load float, float* %effective_size923, align 4
  %mul924 = fmul float 2.000000e+00, %423
  %conv925 = fpext float %mul924 to double
  %424 = load i32, i32* %aa, align 4
  %call926 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i32 0, i32 0), i32 %421, double %conv925, i32 %424)
  br label %cond.end.927

cond.end.927:                                     ; preds = %cond.false.920, %cond.true.919
  br label %if.end.939

if.else.928:                                      ; preds = %if.end.907
  %425 = load i32, i32* @verbose, align 4
  %tobool929 = icmp ne i32 %425, 0
  br i1 %tobool929, label %cond.false.931, label %cond.true.930

cond.true.930:                                    ; preds = %if.else.928
  br label %cond.end.938

cond.false.931:                                   ; preds = %if.else.928
  %426 = load i32, i32* %pos.addr, align 4
  %427 = load i32, i32* %aa, align 4
  %idxprom932 = sext i32 %427 to i64
  %arrayidx933 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom932
  %effective_size934 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx933, i32 0, i32 4
  %428 = load float, float* %effective_size934, align 4
  %mul935 = fmul float 2.000000e+00, %428
  %conv936 = fpext float %mul935 to double
  %429 = load i32, i32* %aa, align 4
  %call937 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.66, i32 0, i32 0), i32 %426, double %conv936, i32 %429)
  br label %cond.end.938

cond.end.938:                                     ; preds = %cond.false.931, %cond.true.930
  br label %if.end.939

if.end.939:                                       ; preds = %cond.end.938, %cond.end.927
  br label %if.end.940

if.end.940:                                       ; preds = %if.end.939, %cond.end.855
  br label %if.end.941

if.end.941:                                       ; preds = %if.end.940, %cond.end.779
  br label %sw.epilog

sw.bb.942:                                        ; preds = %if.end.9
  %430 = load i32, i32* %r, align 4
  %idxprom943 = sext i32 %430 to i64
  %arrayidx944 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom943
  %what945 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx944, i32 0, i32 1
  %431 = load i32, i32* %what945, align 4
  %conv946 = sitofp i32 %431 to double
  %add947 = fadd double %conv946, 1.000000e+00
  %conv948 = fptrunc double %add947 to float
  store float %conv948, float* %this_value, align 4
  %432 = load float, float* %this_value, align 4
  %433 = load float, float* %tot_value, align 4
  %add949 = fadd float %433, %432
  store float %add949, float* %tot_value, align 4
  %434 = load i32, i32* @verbose, align 4
  %tobool950 = icmp ne i32 %434, 0
  br i1 %tobool950, label %cond.false.952, label %cond.true.951

cond.true.951:                                    ; preds = %sw.bb.942
  br label %cond.end.955

cond.false.952:                                   ; preds = %sw.bb.942
  %435 = load i32, i32* %pos.addr, align 4
  %436 = load float, float* %this_value, align 4
  %conv953 = fpext float %436 to double
  %call954 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i32 0, i32 0), i32 %435, double %conv953)
  br label %cond.end.955

cond.end.955:                                     ; preds = %cond.false.952, %cond.true.951
  br label %sw.epilog

sw.bb.956:                                        ; preds = %if.end.9
  %437 = load i32, i32* %r, align 4
  %idxprom957 = sext i32 %437 to i64
  %arrayidx958 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom957
  %what959 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx958, i32 0, i32 1
  %438 = load i32, i32* %what959, align 4
  %conv960 = sitofp i32 %438 to float
  store float %conv960, float* %this_value, align 4
  %439 = load float, float* %this_value, align 4
  %440 = load float, float* %tot_value, align 4
  %add961 = fadd float %440, %439
  store float %add961, float* %tot_value, align 4
  %441 = load i32, i32* @verbose, align 4
  %tobool962 = icmp ne i32 %441, 0
  br i1 %tobool962, label %cond.false.964, label %cond.true.963

cond.true.963:                                    ; preds = %sw.bb.956
  br label %cond.end.967

cond.false.964:                                   ; preds = %sw.bb.956
  %442 = load i32, i32* %pos.addr, align 4
  %443 = load float, float* %this_value, align 4
  %conv965 = fpext float %443 to double
  %call966 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.68, i32 0, i32 0), i32 %442, double %conv965)
  br label %cond.end.967

cond.end.967:                                     ; preds = %cond.false.964, %cond.true.963
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.9, %cond.end.967, %cond.end.955, %if.end.941, %cond.end.757, %if.end.739, %cond.end.680, %if.end.664, %sw.bb.477, %cond.end.476, %cond.end.457, %sw.bb.443, %sw.bb.442, %cond.end.441, %if.then.423, %if.end.378, %if.then.363, %if.then.292, %cond.end.241, %if.end.215, %cond.end.136, %if.end.105, %cond.end.51, %cond.end
  br label %for.inc.968

for.inc.968:                                      ; preds = %sw.epilog, %if.then.8
  %444 = load i32, i32* %k, align 4
  %inc969 = add nsw i32 %444, 1
  store i32 %inc969, i32* %k, align 4
  br label %for.cond

for.end.970:                                      ; preds = %if.then, %for.cond
  store float 0.000000e+00, float* %this_value, align 4
  %445 = load i32, i32* %pos.addr, align 4
  %idxprom971 = sext i32 %445 to i64
  %arrayidx972 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom971
  %move_safety973 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx972, i32 0, i32 19
  %446 = load i32, i32* %move_safety973, align 4
  %cmp974 = icmp eq i32 %446, 1
  br i1 %cmp974, label %land.lhs.true.976, label %if.else.985

land.lhs.true.976:                                ; preds = %for.end.970
  %447 = load i32, i32* %pos.addr, align 4
  %448 = load i32, i32* %color.addr, align 4
  %call977 = call i32 @safe_move(i32 %447, i32 %448)
  %cmp978 = icmp eq i32 %call977, 5
  br i1 %cmp978, label %if.then.980, label %if.else.985

if.then.980:                                      ; preds = %land.lhs.true.976
  %449 = load i32, i32* %pos.addr, align 4
  %idxprom981 = sext i32 %449 to i64
  %arrayidx982 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i64 %idxprom981
  store i8 2, i8* %arrayidx982, align 1
  %450 = load i32, i32* %pos.addr, align 4
  %idxprom983 = sext i32 %450 to i64
  %arrayidx984 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i64 %idxprom983
  store float 1.000000e+02, float* %arrayidx984, align 4
  br label %if.end.990

if.else.985:                                      ; preds = %land.lhs.true.976, %for.end.970
  %451 = load i32, i32* %pos.addr, align 4
  %idxprom986 = sext i32 %451 to i64
  %arrayidx987 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i64 %idxprom986
  store i8 0, i8* %arrayidx987, align 1
  %452 = load i32, i32* %pos.addr, align 4
  %idxprom988 = sext i32 %452 to i64
  %arrayidx989 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i64 %idxprom988
  store float 0.000000e+00, float* %arrayidx989, align 4
  br label %if.end.990

if.end.990:                                       ; preds = %if.else.985, %if.then.980
  %453 = load i32, i32* %does_block, align 4
  %tobool991 = icmp ne i32 %453, 0
  br i1 %tobool991, label %land.lhs.true.992, label %if.end.1040

land.lhs.true.992:                                ; preds = %if.end.990
  %454 = load i32, i32* %pos.addr, align 4
  %idxprom993 = sext i32 %454 to i64
  %arrayidx994 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom993
  %move_safety995 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx994, i32 0, i32 19
  %455 = load i32, i32* %move_safety995, align 4
  %tobool996 = icmp ne i32 %455, 0
  br i1 %tobool996, label %land.lhs.true.997, label %if.end.1040

land.lhs.true.997:                                ; preds = %land.lhs.true.992
  %456 = load i32, i32* %pos.addr, align 4
  %457 = load i32, i32* %color.addr, align 4
  %call998 = call i32 @tryko(i32 %456, i32 %457, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 0)
  %tobool999 = icmp ne i32 %call998, 0
  br i1 %tobool999, label %if.then.1000, label %if.end.1040

if.then.1000:                                     ; preds = %land.lhs.true.997
  %458 = load i32, i32* %pos.addr, align 4
  %459 = load i32, i32* %color.addr, align 4
  %460 = load i32, i32* %pos.addr, align 4
  %idxprom1001 = sext i32 %460 to i64
  %arrayidx1002 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1001
  %influence_followup_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1002, i32 0, i32 10
  %call1003 = call i32 @retrieve_delta_territory_cache(i32 %458, i32 %459, float* %this_value, float* %influence_followup_value)
  %tobool1004 = icmp ne i32 %call1003, 0
  br i1 %tobool1004, label %if.end.1021, label %if.then.1005

if.then.1005:                                     ; preds = %if.then.1000
  %461 = load i32, i32* %color.addr, align 4
  %sub1006 = sub nsw i32 3, %461
  %arraydecay1007 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay1008 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  %462 = load i32, i32* %pos.addr, align 4
  call void @compute_influence(i32 %sub1006, i8* %arraydecay1007, float* %arraydecay1008, %struct.influence_data* @move_influence, i32 %462, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0))
  %463 = load i32, i32* %pos.addr, align 4
  call void @compute_followup_influence(%struct.influence_data* @move_influence, %struct.influence_data* @followup_influence, i32 %463, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0))
  %464 = load i32, i32* %color.addr, align 4
  %sub1009 = sub nsw i32 3, %464
  %cmp1010 = icmp eq i32 %sub1009, 1
  %cond1012 = select i1 %cmp1010, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %465 = load i32, i32* %color.addr, align 4
  %466 = load i32, i32* %pos.addr, align 4
  %call1013 = call float @influence_delta_territory(%struct.influence_data* %cond1012, %struct.influence_data* @move_influence, i32 %465, i32 %466)
  store float %call1013, float* %this_value, align 4
  %467 = load i32, i32* %color.addr, align 4
  %468 = load i32, i32* %pos.addr, align 4
  %call1014 = call float @influence_delta_territory(%struct.influence_data* @move_influence, %struct.influence_data* @followup_influence, i32 %467, i32 %468)
  %469 = load i32, i32* %pos.addr, align 4
  %idxprom1015 = sext i32 %469 to i64
  %arrayidx1016 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1015
  %influence_followup_value1017 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1016, i32 0, i32 10
  store float %call1014, float* %influence_followup_value1017, align 4
  %470 = load i32, i32* %pos.addr, align 4
  %471 = load i32, i32* %color.addr, align 4
  %472 = load float, float* %this_value, align 4
  %473 = load i32, i32* %pos.addr, align 4
  %idxprom1018 = sext i32 %473 to i64
  %arrayidx1019 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1018
  %influence_followup_value1020 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1019, i32 0, i32 10
  %474 = load float, float* %influence_followup_value1020, align 4
  call void @store_delta_territory_cache(i32 %470, i32 %471, float %472, float %474)
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1005, %if.then.1000
  call void @popgo()
  %475 = load float, float* %this_value, align 4
  %conv1022 = fpext float %475 to double
  %cmp1023 = fcmp une double %conv1022, 0.000000e+00
  br i1 %cmp1023, label %if.then.1025, label %if.else.1032

if.then.1025:                                     ; preds = %if.end.1021
  %476 = load i32, i32* @verbose, align 4
  %tobool1026 = icmp ne i32 %476, 0
  br i1 %tobool1026, label %cond.false.1028, label %cond.true.1027

cond.true.1027:                                   ; preds = %if.then.1025
  br label %cond.end.1031

cond.false.1028:                                  ; preds = %if.then.1025
  %477 = load i32, i32* %pos.addr, align 4
  %478 = load float, float* %this_value, align 4
  %conv1029 = fpext float %478 to double
  %call1030 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i32 %477, double %conv1029)
  br label %cond.end.1031

cond.end.1031:                                    ; preds = %cond.false.1028, %cond.true.1027
  br label %if.end.1039

if.else.1032:                                     ; preds = %if.end.1021
  %479 = load i32, i32* @debug, align 4
  %and1033 = and i32 %479, 2048
  %tobool1034 = icmp ne i32 %and1033, 0
  br i1 %tobool1034, label %cond.false.1036, label %cond.true.1035

cond.true.1035:                                   ; preds = %if.else.1032
  br label %cond.end.1038

cond.false.1036:                                  ; preds = %if.else.1032
  %480 = load i32, i32* %pos.addr, align 4
  %call1037 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i32 %480)
  br label %cond.end.1038

cond.end.1038:                                    ; preds = %cond.false.1036, %cond.true.1035
  br label %if.end.1039

if.end.1039:                                      ; preds = %cond.end.1038, %cond.end.1031
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.end.1039, %land.lhs.true.997, %land.lhs.true.992, %if.end.990
  %481 = load float, float* %this_value, align 4
  %482 = load float, float* %tot_value, align 4
  %add1041 = fadd float %482, %481
  store float %add1041, float* %tot_value, align 4
  %483 = load float, float* %tot_value, align 4
  %484 = load i32, i32* %pos.addr, align 4
  %idxprom1042 = sext i32 %484 to i64
  %arrayidx1043 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1042
  %min_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1043, i32 0, i32 15
  %485 = load float, float* %min_territory, align 4
  %cmp1044 = fcmp olt float %483, %485
  br i1 %cmp1044, label %land.lhs.true.1046, label %if.end.1062

land.lhs.true.1046:                               ; preds = %if.end.1040
  %486 = load i32, i32* %pos.addr, align 4
  %idxprom1047 = sext i32 %486 to i64
  %arrayidx1048 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1047
  %min_territory1049 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1048, i32 0, i32 15
  %487 = load float, float* %min_territory1049, align 4
  %cmp1050 = fcmp ogt float %487, 0.000000e+00
  br i1 %cmp1050, label %if.then.1052, label %if.end.1062

if.then.1052:                                     ; preds = %land.lhs.true.1046
  %488 = load i32, i32* %pos.addr, align 4
  %idxprom1053 = sext i32 %488 to i64
  %arrayidx1054 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1053
  %min_territory1055 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1054, i32 0, i32 15
  %489 = load float, float* %min_territory1055, align 4
  store float %489, float* %tot_value, align 4
  %490 = load i32, i32* @verbose, align 4
  %tobool1056 = icmp ne i32 %490, 0
  br i1 %tobool1056, label %cond.false.1058, label %cond.true.1057

cond.true.1057:                                   ; preds = %if.then.1052
  br label %cond.end.1061

cond.false.1058:                                  ; preds = %if.then.1052
  %491 = load i32, i32* %pos.addr, align 4
  %492 = load float, float* %tot_value, align 4
  %conv1059 = fpext float %492 to double
  %call1060 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i32 0, i32 0), i32 %491, double %conv1059)
  br label %cond.end.1061

cond.end.1061:                                    ; preds = %cond.false.1058, %cond.true.1057
  br label %if.end.1062

if.end.1062:                                      ; preds = %cond.end.1061, %land.lhs.true.1046, %if.end.1040
  %493 = load float, float* %tot_value, align 4
  %494 = load i32, i32* %pos.addr, align 4
  %idxprom1063 = sext i32 %494 to i64
  %arrayidx1064 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1063
  %max_territory = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1064, i32 0, i32 16
  %495 = load float, float* %max_territory, align 4
  %cmp1065 = fcmp ogt float %493, %495
  br i1 %cmp1065, label %if.then.1067, label %if.end.1077

if.then.1067:                                     ; preds = %if.end.1062
  %496 = load i32, i32* %pos.addr, align 4
  %idxprom1068 = sext i32 %496 to i64
  %arrayidx1069 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1068
  %max_territory1070 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1069, i32 0, i32 16
  %497 = load float, float* %max_territory1070, align 4
  store float %497, float* %tot_value, align 4
  %498 = load i32, i32* @verbose, align 4
  %tobool1071 = icmp ne i32 %498, 0
  br i1 %tobool1071, label %cond.false.1073, label %cond.true.1072

cond.true.1072:                                   ; preds = %if.then.1067
  br label %cond.end.1076

cond.false.1073:                                  ; preds = %if.then.1067
  %499 = load i32, i32* %pos.addr, align 4
  %500 = load float, float* %tot_value, align 4
  %conv1074 = fpext float %500 to double
  %call1075 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.75, i32 0, i32 0), i32 %499, double %conv1074)
  br label %cond.end.1076

cond.end.1076:                                    ; preds = %cond.false.1073, %cond.true.1072
  br label %if.end.1077

if.end.1077:                                      ; preds = %cond.end.1076, %if.end.1062
  %501 = load float, float* %tot_value, align 4
  %502 = load i32, i32* %pos.addr, align 4
  %idxprom1078 = sext i32 %502 to i64
  %arrayidx1079 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1078
  %territorial_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1079, i32 0, i32 3
  store float %501, float* %territorial_value, align 4
  %503 = load float, float* %secondary_value, align 4
  %504 = load i32, i32* %pos.addr, align 4
  %idxprom1080 = sext i32 %504 to i64
  %arrayidx1081 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1080
  %secondary_value1082 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx1081, i32 0, i32 12
  %505 = load float, float* %secondary_value1082, align 4
  %add1083 = fadd float %505, %503
  store float %add1083, float* %secondary_value1082, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @estimate_strategical_value(i32 %pos, i32 %color, float %score) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %score.addr = alloca float, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %aa_value = alloca float, align 4
  %bb_value = alloca float, align 4
  %this_value = alloca float, align 4
  %tot_value = alloca float, align 4
  %dragon_value = alloca [400 x float], align 16
  %r = alloca i32, align 4
  %ko_factor = alloca double, align 8
  %cc = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %adj = alloca i32, align 4
  %d586 = alloca i32, align 4
  %found_one = alloca i32, align 4
  %excess_value = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float %score, float* %score.addr, align 4
  store i32 0, i32* %aa, align 4
  store i32 0, i32* %bb, align 4
  store float 0.000000e+00, float* %aa_value, align 4
  store float 0.000000e+00, float* %bb_value, align 4
  store float 0.000000e+00, float* %this_value, align 4
  store float 0.000000e+00, float* %tot_value, align 4
  store i32 21, i32* %aa, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %aa, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %aa, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %aa, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %aa, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.695, %for.end
  %3 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %3, 120
  br i1 %cmp2, label %for.body.3, label %for.end.697

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom5
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx6, i32 0, i32 18
  %arrayidx7 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx7, align 4
  store i32 %6, i32* %r, align 4
  %7 = load i32, i32* %r, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.end.697

if.end:                                           ; preds = %for.body.3
  %8 = load i32, i32* %r, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom9
  %status = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx10, i32 0, i32 2
  %9 = load i32, i32* %status, align 4
  %and = and i32 %9, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  br label %for.inc.695

if.end.12:                                        ; preds = %if.end
  store float 0.000000e+00, float* %this_value, align 4
  %10 = load i32, i32* %r, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom13
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx14, i32 0, i32 0
  %11 = load i32, i32* %type, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 8, label %sw.bb
    i32 10, label %sw.bb
    i32 12, label %sw.bb
    i32 3, label %sw.bb.189
    i32 9, label %sw.bb.189
    i32 100, label %sw.bb.190
    i32 102, label %sw.bb.234
    i32 14, label %sw.bb.286
    i32 16, label %sw.bb.391
    i32 18, label %sw.bb.500
    i32 54, label %sw.bb.501
    i32 44, label %sw.bb.502
    i32 46, label %sw.bb.502
    i32 42, label %sw.bb.582
  ]

sw.bb:                                            ; preds = %if.end.12, %if.end.12, %if.end.12, %if.end.12, %if.end.12, %if.end.12
  %12 = load i32, i32* %r, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom15
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx16, i32 0, i32 1
  %13 = load i32, i32* %what, align 4
  store i32 %13, i32* %aa, align 4
  %14 = load i32, i32* %aa, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom17
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx18, i32 0, i32 18
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %15 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %15, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.22:                                        ; preds = %sw.bb
  %16 = load i32, i32* %aa, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom23
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx24, i32 0, i32 10
  %17 = load i32, i32* %cutstone2, align 4
  %cmp25 = icmp sgt i32 %17, 1
  br i1 %cmp25, label %if.then.26, label %if.end.55

if.then.26:                                       ; preds = %if.end.22
  store double 1.000000e+00, double* %ko_factor, align 8
  %18 = load i32, i32* %r, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom27
  %type29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx28, i32 0, i32 0
  %19 = load i32, i32* %type29, align 4
  %cmp30 = icmp eq i32 %19, 4
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %20 = load i32, i32* %r, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom31
  %type33 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx32, i32 0, i32 0
  %21 = load i32, i32* %type33, align 4
  %cmp34 = icmp eq i32 %21, 10
  br i1 %cmp34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %lor.lhs.false, %if.then.26
  store double 6.000000e-01, double* %ko_factor, align 8
  br label %if.end.47

if.else:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %r, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom36
  %type38 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx37, i32 0, i32 0
  %23 = load i32, i32* %type38, align 4
  %cmp39 = icmp eq i32 %23, 6
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.else
  %24 = load i32, i32* %r, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom41
  %type43 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx42, i32 0, i32 0
  %25 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %25, 12
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.40, %if.else
  store double 4.000000e-01, double* %ko_factor, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %lor.lhs.false.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.35
  %26 = load i32, i32* %aa, align 4
  %idxprom48 = sext i32 %26 to i64
  %arrayidx49 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom48
  %cutstone250 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx49, i32 0, i32 10
  %27 = load i32, i32* %cutstone250, align 4
  %sub = sub nsw i32 %27, 1
  %conv = sitofp i32 %sub to double
  %mul = fmul double 1.000000e+01, %conv
  %28 = load double, double* %ko_factor, align 8
  %mul51 = fmul double %mul, %28
  %conv52 = fptrunc double %mul51 to float
  store float %conv52, float* %this_value, align 4
  %29 = load i32, i32* @verbose, align 4
  %tobool53 = icmp ne i32 %29, 0
  br i1 %tobool53, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.47
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  %30 = load i32, i32* %pos.addr, align 4
  %31 = load float, float* %this_value, align 4
  %conv54 = fpext float %31 to double
  %32 = load i32, i32* %aa, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0), i32 %30, double %conv54, i32 %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end, %if.end.22
  %33 = load float, float* %this_value, align 4
  %34 = load float, float* %tot_value, align 4
  %add = fadd float %34, %33
  store float %add, float* %tot_value, align 4
  %35 = load i32, i32* %aa, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom56
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx57, i32 0, i32 1
  %36 = load i32, i32* %id, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx59 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %37, i64 %idxprom58
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx59, i32 0, i32 6
  %38 = load i32, i32* %safety, align 4
  %cmp60 = icmp eq i32 %38, 5
  br i1 %cmp60, label %if.then.66, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.55
  %39 = load i32, i32* %aa, align 4
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom63
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx64, i32 0, i32 12
  %40 = load i32, i32* %inessential, align 4
  %tobool65 = icmp ne i32 %40, 0
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %lor.lhs.false.62, %if.end.55
  br label %sw.epilog

if.end.67:                                        ; preds = %lor.lhs.false.62
  store i32 0, i32* %l, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.186, %if.end.67
  %41 = load i32, i32* %l, align 4
  %42 = load i32, i32* @next_lunch, align 4
  %cmp69 = icmp slt i32 %41, %42
  br i1 %cmp69, label %for.body.71, label %for.end.188

for.body.71:                                      ; preds = %for.cond.68
  %43 = load i32, i32* %l, align 4
  %idxprom72 = sext i32 %43 to i64
  %arrayidx73 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i32 0, i64 %idxprom72
  %44 = load i32, i32* %arrayidx73, align 4
  %45 = load i32, i32* %aa, align 4
  %cmp74 = icmp eq i32 %44, %45
  br i1 %cmp74, label %if.then.76, label %if.end.185

if.then.76:                                       ; preds = %for.body.71
  %46 = load i32, i32* %l, align 4
  %idxprom77 = sext i32 %46 to i64
  %arrayidx78 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i32 0, i64 %idxprom77
  %47 = load i32, i32* %arrayidx78, align 4
  store i32 %47, i32* %bb, align 4
  %48 = load i32, i32* %bb, align 4
  %idxprom79 = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom79
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx80, i32 0, i32 4
  %49 = load float, float* %effective_size, align 4
  %call81 = call float @soft_cap(float %49, float 1.500000e+01)
  %conv82 = fpext float %call81 to double
  %mul83 = fmul double 1.800000e+00, %conv82
  %50 = load i32, i32* %bb, align 4
  %call84 = call float @dragon_weakness(i32 %50, i32 0)
  %conv85 = fpext float %call84 to double
  %mul86 = fmul double %mul83, %conv85
  %conv87 = fptrunc double %mul86 to float
  store float %conv87, float* %this_value, align 4
  %51 = load i32, i32* %bb, align 4
  %idxprom88 = sext i32 %51 to i64
  %arrayidx89 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom88
  %status90 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx89, i32 0, i32 16
  %52 = load i32, i32* %status90, align 4
  %cmp91 = icmp ne i32 %52, 0
  br i1 %cmp91, label %land.lhs.true, label %if.end.107

land.lhs.true:                                    ; preds = %if.then.76
  %53 = load i32, i32* %bb, align 4
  %idxprom93 = sext i32 %53 to i64
  %arrayidx94 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom93
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx94, i32 0, i32 3
  %54 = load i32, i32* %size, align 4
  %55 = load i32, i32* %bb, align 4
  %idxprom95 = sext i32 %55 to i64
  %arrayidx96 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom95
  %size97 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx96, i32 0, i32 1
  %56 = load i32, i32* %size97, align 4
  %cmp98 = icmp eq i32 %54, %56
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.107

land.lhs.true.100:                                ; preds = %land.lhs.true
  %57 = load i32, i32* %pos.addr, align 4
  %58 = load i32, i32* %bb, align 4
  %call101 = call i32 @attack_move_reason_known(i32 %57, i32 %58)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.106, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.100
  %59 = load i32, i32* %pos.addr, align 4
  %60 = load i32, i32* %bb, align 4
  %call104 = call i32 @defense_move_reason_known(i32 %59, i32 %60)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.103, %land.lhs.true.100
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %lor.lhs.false.103, %land.lhs.true, %if.then.76
  %61 = load i32, i32* %bb, align 4
  %idxprom108 = sext i32 %61 to i64
  %arrayidx109 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom108
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx109, i32 0, i32 16
  %arrayidx110 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %62 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp ne i32 %62, 0
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.133

land.lhs.true.113:                                ; preds = %if.end.107
  %63 = load i32, i32* %color.addr, align 4
  %64 = load i32, i32* %bb, align 4
  %idxprom114 = sext i32 %64 to i64
  %arrayidx115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom114
  %65 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %65 to i32
  %cmp117 = icmp eq i32 %63, %conv116
  br i1 %cmp117, label %land.lhs.true.119, label %lor.lhs.false.122

land.lhs.true.119:                                ; preds = %land.lhs.true.113
  %66 = load i32, i32* %pos.addr, align 4
  %67 = load i32, i32* %bb, align 4
  %call120 = call i32 @does_defend(i32 %66, i32 %67)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %lor.lhs.false.122, label %if.then.132

lor.lhs.false.122:                                ; preds = %land.lhs.true.119, %land.lhs.true.113
  %68 = load i32, i32* %color.addr, align 4
  %69 = load i32, i32* %bb, align 4
  %idxprom123 = sext i32 %69 to i64
  %arrayidx124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom123
  %70 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %70 to i32
  %sub126 = sub nsw i32 3, %conv125
  %cmp127 = icmp eq i32 %68, %sub126
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.133

land.lhs.true.129:                                ; preds = %lor.lhs.false.122
  %71 = load i32, i32* %pos.addr, align 4
  %72 = load i32, i32* %bb, align 4
  %call130 = call i32 @does_attack(i32 %71, i32 %72)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.end.133, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.129, %land.lhs.true.119
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %land.lhs.true.129, %lor.lhs.false.122, %if.end.107
  %73 = load i32, i32* @doing_scoring, align 4
  %tobool134 = icmp ne i32 %73, 0
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.169

land.lhs.true.135:                                ; preds = %if.end.133
  %74 = load i32, i32* %pos.addr, align 4
  %idxprom136 = sext i32 %74 to i64
  %arrayidx137 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom136
  %territorial_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx137, i32 0, i32 3
  %75 = load float, float* %territorial_value, align 4
  %conv138 = fpext float %75 to double
  %cmp139 = fcmp olt double %conv138, 0.000000e+00
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.169

land.lhs.true.141:                                ; preds = %land.lhs.true.135
  %76 = load i32, i32* %bb, align 4
  %idxprom142 = sext i32 %76 to i64
  %arrayidx143 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom142
  %id144 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx143, i32 0, i32 1
  %77 = load i32, i32* %id144, align 4
  %idxprom145 = sext i32 %77 to i64
  %78 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx146 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %78, i64 %idxprom145
  %safety147 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx146, i32 0, i32 6
  %79 = load i32, i32* %safety147, align 4
  %cmp148 = icmp eq i32 %79, 1
  br i1 %cmp148, label %if.then.168, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %land.lhs.true.141
  %80 = load i32, i32* %bb, align 4
  %idxprom151 = sext i32 %80 to i64
  %arrayidx152 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom151
  %id153 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx152, i32 0, i32 1
  %81 = load i32, i32* %id153, align 4
  %idxprom154 = sext i32 %81 to i64
  %82 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx155 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %82, i64 %idxprom154
  %safety156 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx155, i32 0, i32 6
  %83 = load i32, i32* %safety156, align 4
  %cmp157 = icmp eq i32 %83, 8
  br i1 %cmp157, label %if.then.168, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false.150
  %84 = load i32, i32* %bb, align 4
  %idxprom160 = sext i32 %84 to i64
  %arrayidx161 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom160
  %id162 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx161, i32 0, i32 1
  %85 = load i32, i32* %id162, align 4
  %idxprom163 = sext i32 %85 to i64
  %86 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx164 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i64 %idxprom163
  %safety165 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx164, i32 0, i32 6
  %87 = load i32, i32* %safety165, align 4
  %cmp166 = icmp eq i32 %87, 9
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %lor.lhs.false.159, %lor.lhs.false.150, %land.lhs.true.141
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.168, %lor.lhs.false.159, %land.lhs.true.135, %if.end.133
  %88 = load float, float* %this_value, align 4
  %89 = load i32, i32* %bb, align 4
  %idxprom170 = sext i32 %89 to i64
  %arrayidx171 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom170
  %90 = load float, float* %arrayidx171, align 4
  %cmp172 = fcmp ogt float %88, %90
  br i1 %cmp172, label %if.then.174, label %if.end.184

if.then.174:                                      ; preds = %if.end.169
  %91 = load i32, i32* @debug, align 4
  %and175 = and i32 %91, 2048
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %cond.false.178, label %cond.true.177

cond.true.177:                                    ; preds = %if.then.174
  br label %cond.end.181

cond.false.178:                                   ; preds = %if.then.174
  %92 = load i32, i32* %pos.addr, align 4
  %93 = load float, float* %this_value, align 4
  %conv179 = fpext float %93 to double
  %94 = load i32, i32* %bb, align 4
  %call180 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i32 0, i32 0), i32 %92, double %conv179, i32 %94)
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.178, %cond.true.177
  %95 = load float, float* %this_value, align 4
  %96 = load i32, i32* %bb, align 4
  %idxprom182 = sext i32 %96 to i64
  %arrayidx183 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom182
  store float %95, float* %arrayidx183, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %cond.end.181, %if.end.169
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %for.body.71
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %97 = load i32, i32* %l, align 4
  %inc187 = add nsw i32 %97, 1
  store i32 %inc187, i32* %l, align 4
  br label %for.cond.68

for.end.188:                                      ; preds = %for.cond.68
  br label %sw.epilog

sw.bb.189:                                        ; preds = %if.end.12, %if.end.12
  br label %sw.epilog

sw.bb.190:                                        ; preds = %if.end.12
  %98 = load i32, i32* %r, align 4
  %idxprom191 = sext i32 %98 to i64
  %arrayidx192 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom191
  %what193 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx192, i32 0, i32 1
  %99 = load i32, i32* %what193, align 4
  %idxprom194 = sext i32 %99 to i64
  %arrayidx195 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom194
  %what1 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx195, i32 0, i32 1
  %100 = load i32, i32* %what1, align 4
  store i32 %100, i32* %aa, align 4
  %101 = load i32, i32* %r, align 4
  %idxprom196 = sext i32 %101 to i64
  %arrayidx197 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom196
  %what198 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx197, i32 0, i32 1
  %102 = load i32, i32* %what198, align 4
  %idxprom199 = sext i32 %102 to i64
  %arrayidx200 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i32 0, i64 %idxprom199
  %what2 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx200, i32 0, i32 3
  %103 = load i32, i32* %what2, align 4
  store i32 %103, i32* %bb, align 4
  %104 = load i32, i32* %aa, align 4
  %idxprom201 = sext i32 %104 to i64
  %arrayidx202 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom201
  %status203 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx202, i32 0, i32 16
  %105 = load i32, i32* %status203, align 4
  %cmp204 = icmp eq i32 %105, 0
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.213

land.lhs.true.206:                                ; preds = %sw.bb.190
  %106 = load i32, i32* %bb, align 4
  %idxprom207 = sext i32 %106 to i64
  %arrayidx208 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom207
  %status209 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx208, i32 0, i32 16
  %107 = load i32, i32* %status209, align 4
  %cmp210 = icmp eq i32 %107, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %land.lhs.true.206
  br label %sw.epilog

if.end.213:                                       ; preds = %land.lhs.true.206, %sw.bb.190
  %108 = load i32, i32* %pos.addr, align 4
  %call214 = call i32 @move_reason_known(i32 %108, i32 50, i32 -1)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.213
  br label %sw.epilog

if.end.217:                                       ; preds = %if.end.213
  %109 = load i32, i32* %pos.addr, align 4
  %110 = load i32, i32* %aa, align 4
  %call218 = call float @adjusted_worm_attack_value(i32 %109, i32 %110)
  store float %call218, float* %aa_value, align 4
  %111 = load i32, i32* %pos.addr, align 4
  %112 = load i32, i32* %bb, align 4
  %call219 = call float @adjusted_worm_attack_value(i32 %111, i32 %112)
  store float %call219, float* %bb_value, align 4
  %113 = load float, float* %aa_value, align 4
  %114 = load float, float* %bb_value, align 4
  %cmp220 = fcmp olt float %113, %114
  br i1 %cmp220, label %cond.true.222, label %cond.false.223

cond.true.222:                                    ; preds = %if.end.217
  %115 = load float, float* %aa_value, align 4
  br label %cond.end.224

cond.false.223:                                   ; preds = %if.end.217
  %116 = load float, float* %bb_value, align 4
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.223, %cond.true.222
  %cond = phi float [ %115, %cond.true.222 ], [ %116, %cond.false.223 ]
  store float %cond, float* %this_value, align 4
  %117 = load i32, i32* @verbose, align 4
  %tobool225 = icmp ne i32 %117, 0
  br i1 %tobool225, label %cond.false.227, label %cond.true.226

cond.true.226:                                    ; preds = %cond.end.224
  br label %cond.end.232

cond.false.227:                                   ; preds = %cond.end.224
  %118 = load i32, i32* %pos.addr, align 4
  %119 = load float, float* %this_value, align 4
  %conv228 = fpext float %119 to double
  %120 = load i32, i32* %aa, align 4
  %121 = load float, float* %aa_value, align 4
  %conv229 = fpext float %121 to double
  %122 = load i32, i32* %bb, align 4
  %123 = load float, float* %bb_value, align 4
  %conv230 = fpext float %123 to double
  %call231 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.78, i32 0, i32 0), i32 %118, double %conv228, i32 %120, double %conv229, i32 %122, double %conv230)
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.false.227, %cond.true.226
  %124 = load float, float* %this_value, align 4
  %125 = load float, float* %tot_value, align 4
  %add233 = fadd float %125, %124
  store float %add233, float* %tot_value, align 4
  br label %sw.epilog

sw.bb.234:                                        ; preds = %if.end.12
  %126 = load i32, i32* %r, align 4
  %idxprom235 = sext i32 %126 to i64
  %arrayidx236 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom235
  %what237 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx236, i32 0, i32 1
  %127 = load i32, i32* %what237, align 4
  %idxprom238 = sext i32 %127 to i64
  %arrayidx239 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom238
  %what1240 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx239, i32 0, i32 1
  %128 = load i32, i32* %what1240, align 4
  store i32 %128, i32* %aa, align 4
  %129 = load i32, i32* %r, align 4
  %idxprom241 = sext i32 %129 to i64
  %arrayidx242 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom241
  %what243 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx242, i32 0, i32 1
  %130 = load i32, i32* %what243, align 4
  %idxprom244 = sext i32 %130 to i64
  %arrayidx245 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i32 0, i64 %idxprom244
  %what2246 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %arrayidx245, i32 0, i32 3
  %131 = load i32, i32* %what2246, align 4
  store i32 %131, i32* %bb, align 4
  %132 = load i32, i32* %aa, align 4
  %idxprom247 = sext i32 %132 to i64
  %arrayidx248 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom247
  %status249 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx248, i32 0, i32 16
  %133 = load i32, i32* %status249, align 4
  %cmp250 = icmp eq i32 %133, 0
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.259

land.lhs.true.252:                                ; preds = %sw.bb.234
  %134 = load i32, i32* %bb, align 4
  %idxprom253 = sext i32 %134 to i64
  %arrayidx254 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom253
  %status255 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx254, i32 0, i32 16
  %135 = load i32, i32* %status255, align 4
  %cmp256 = icmp eq i32 %135, 0
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %land.lhs.true.252
  br label %sw.epilog

if.end.259:                                       ; preds = %land.lhs.true.252, %sw.bb.234
  %136 = load i32, i32* %pos.addr, align 4
  %call260 = call i32 @move_reason_known(i32 %136, i32 52, i32 -1)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  br label %sw.epilog

if.end.263:                                       ; preds = %if.end.259
  %137 = load i32, i32* %aa, align 4
  %idxprom264 = sext i32 %137 to i64
  %arrayidx265 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom264
  %effective_size266 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx265, i32 0, i32 2
  %138 = load float, float* %effective_size266, align 4
  store float %138, float* %aa_value, align 4
  %139 = load i32, i32* %bb, align 4
  %idxprom267 = sext i32 %139 to i64
  %arrayidx268 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom267
  %effective_size269 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx268, i32 0, i32 2
  %140 = load float, float* %effective_size269, align 4
  store float %140, float* %bb_value, align 4
  %141 = load float, float* %aa_value, align 4
  %142 = load float, float* %bb_value, align 4
  %cmp270 = fcmp olt float %141, %142
  br i1 %cmp270, label %cond.true.272, label %cond.false.273

cond.true.272:                                    ; preds = %if.end.263
  %143 = load float, float* %aa_value, align 4
  br label %cond.end.274

cond.false.273:                                   ; preds = %if.end.263
  %144 = load float, float* %bb_value, align 4
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.273, %cond.true.272
  %cond275 = phi float [ %143, %cond.true.272 ], [ %144, %cond.false.273 ]
  %mul276 = fmul float 2.000000e+00, %cond275
  store float %mul276, float* %this_value, align 4
  %145 = load i32, i32* @verbose, align 4
  %tobool277 = icmp ne i32 %145, 0
  br i1 %tobool277, label %cond.false.279, label %cond.true.278

cond.true.278:                                    ; preds = %cond.end.274
  br label %cond.end.284

cond.false.279:                                   ; preds = %cond.end.274
  %146 = load i32, i32* %pos.addr, align 4
  %147 = load float, float* %this_value, align 4
  %conv280 = fpext float %147 to double
  %148 = load i32, i32* %aa, align 4
  %149 = load float, float* %aa_value, align 4
  %conv281 = fpext float %149 to double
  %150 = load i32, i32* %bb, align 4
  %151 = load float, float* %bb_value, align 4
  %conv282 = fpext float %151 to double
  %call283 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i32 0, i32 0), i32 %146, double %conv280, i32 %148, double %conv281, i32 %150, double %conv282)
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.279, %cond.true.278
  %152 = load float, float* %this_value, align 4
  %153 = load float, float* %tot_value, align 4
  %add285 = fadd float %153, %152
  store float %add285, float* %tot_value, align 4
  br label %sw.epilog

sw.bb.286:                                        ; preds = %if.end.12
  %154 = load i32, i32* @doing_scoring, align 4
  %tobool287 = icmp ne i32 %154, 0
  br i1 %tobool287, label %if.end.385, label %if.then.288

if.then.288:                                      ; preds = %sw.bb.286
  %155 = load i32, i32* %r, align 4
  %idxprom289 = sext i32 %155 to i64
  %arrayidx290 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom289
  %what291 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx290, i32 0, i32 1
  %156 = load i32, i32* %what291, align 4
  %idxprom292 = sext i32 %156 to i64
  %arrayidx293 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom292
  %157 = load i32, i32* %arrayidx293, align 4
  %idxprom294 = sext i32 %157 to i64
  %arrayidx295 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom294
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx295, i32 0, i32 2
  %158 = load i32, i32* %origin, align 4
  store i32 %158, i32* %aa, align 4
  %159 = load i32, i32* %r, align 4
  %idxprom296 = sext i32 %159 to i64
  %arrayidx297 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom296
  %what298 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx297, i32 0, i32 1
  %160 = load i32, i32* %what298, align 4
  %idxprom299 = sext i32 %160 to i64
  %arrayidx300 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom299
  %161 = load i32, i32* %arrayidx300, align 4
  %idxprom301 = sext i32 %161 to i64
  %arrayidx302 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom301
  %origin303 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx302, i32 0, i32 2
  %162 = load i32, i32* %origin303, align 4
  store i32 %162, i32* %bb, align 4
  %163 = load i32, i32* %color.addr, align 4
  %call304 = call i32 @get_last_opponent_move(i32 %163)
  store i32 %call304, i32* %cc, align 4
  %164 = load i32, i32* %cc, align 4
  %cmp305 = icmp ne i32 %164, 0
  br i1 %cmp305, label %land.lhs.true.307, label %if.end.384

land.lhs.true.307:                                ; preds = %if.then.288
  %165 = load i32, i32* %cc, align 4
  %idxprom308 = sext i32 %165 to i64
  %arrayidx309 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom308
  %status310 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx309, i32 0, i32 16
  %166 = load i32, i32* %status310, align 4
  %cmp311 = icmp eq i32 %166, 0
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.384

land.lhs.true.313:                                ; preds = %land.lhs.true.307
  %167 = load i32, i32* %aa, align 4
  %168 = load i32, i32* %cc, align 4
  %call314 = call i32 @are_neighbor_dragons(i32 %167, i32 %168)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.384

land.lhs.true.316:                                ; preds = %land.lhs.true.313
  %169 = load i32, i32* %bb, align 4
  %170 = load i32, i32* %cc, align 4
  %call317 = call i32 @are_neighbor_dragons(i32 %169, i32 %170)
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then.319, label %if.end.384

if.then.319:                                      ; preds = %land.lhs.true.316
  %171 = load i32, i32* %aa, align 4
  %172 = load i32, i32* %bb, align 4
  %cmp320 = icmp eq i32 %171, %172
  br i1 %cmp320, label %if.then.322, label %if.else.329

if.then.322:                                      ; preds = %if.then.319
  %173 = load i32, i32* %cc, align 4
  %idxprom323 = sext i32 %173 to i64
  %arrayidx324 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom323
  %effective_size325 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx324, i32 0, i32 4
  %174 = load float, float* %effective_size325, align 4
  %conv326 = fpext float %174 to double
  %mul327 = fmul double 1.600000e+00, %conv326
  %conv328 = fptrunc double %mul327 to float
  store float %conv328, float* %this_value, align 4
  br label %if.end.362

if.else.329:                                      ; preds = %if.then.319
  %175 = load i32, i32* %aa, align 4
  %idxprom330 = sext i32 %175 to i64
  %arrayidx331 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom330
  %id332 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx331, i32 0, i32 1
  %176 = load i32, i32* %id332, align 4
  %idxprom333 = sext i32 %176 to i64
  %177 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx334 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %177, i64 %idxprom333
  %safety335 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx334, i32 0, i32 6
  %178 = load i32, i32* %safety335, align 4
  %cmp336 = icmp eq i32 %178, 5
  br i1 %cmp336, label %if.then.347, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %if.else.329
  %179 = load i32, i32* %bb, align 4
  %idxprom339 = sext i32 %179 to i64
  %arrayidx340 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom339
  %id341 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx340, i32 0, i32 1
  %180 = load i32, i32* %id341, align 4
  %idxprom342 = sext i32 %180 to i64
  %181 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx343 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %181, i64 %idxprom342
  %safety344 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx343, i32 0, i32 6
  %182 = load i32, i32* %safety344, align 4
  %cmp345 = icmp eq i32 %182, 5
  br i1 %cmp345, label %if.then.347, label %if.else.354

if.then.347:                                      ; preds = %lor.lhs.false.338, %if.else.329
  %183 = load i32, i32* %cc, align 4
  %idxprom348 = sext i32 %183 to i64
  %arrayidx349 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom348
  %effective_size350 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx349, i32 0, i32 4
  %184 = load float, float* %effective_size350, align 4
  %conv351 = fpext float %184 to double
  %mul352 = fmul double 8.000000e-01, %conv351
  %conv353 = fptrunc double %mul352 to float
  store float %conv353, float* %this_value, align 4
  br label %if.end.361

if.else.354:                                      ; preds = %lor.lhs.false.338
  %185 = load i32, i32* %cc, align 4
  %idxprom355 = sext i32 %185 to i64
  %arrayidx356 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom355
  %effective_size357 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx356, i32 0, i32 4
  %186 = load float, float* %effective_size357, align 4
  %conv358 = fpext float %186 to double
  %mul359 = fmul double 1.700000e+00, %conv358
  %conv360 = fptrunc double %mul359 to float
  store float %conv360, float* %this_value, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.354, %if.then.347
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.322
  %187 = load float, float* %this_value, align 4
  %188 = load i32, i32* %cc, align 4
  %idxprom363 = sext i32 %188 to i64
  %arrayidx364 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom363
  %origin365 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx364, i32 0, i32 2
  %189 = load i32, i32* %origin365, align 4
  %idxprom366 = sext i32 %189 to i64
  %arrayidx367 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom366
  %190 = load float, float* %arrayidx367, align 4
  %cmp368 = fcmp ogt float %187, %190
  br i1 %cmp368, label %if.then.370, label %if.end.383

if.then.370:                                      ; preds = %if.end.362
  %191 = load float, float* %this_value, align 4
  %192 = load i32, i32* %cc, align 4
  %idxprom371 = sext i32 %192 to i64
  %arrayidx372 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom371
  %origin373 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx372, i32 0, i32 2
  %193 = load i32, i32* %origin373, align 4
  %idxprom374 = sext i32 %193 to i64
  %arrayidx375 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom374
  store float %191, float* %arrayidx375, align 4
  %194 = load i32, i32* @debug, align 4
  %and376 = and i32 %194, 2048
  %tobool377 = icmp ne i32 %and376, 0
  br i1 %tobool377, label %cond.false.379, label %cond.true.378

cond.true.378:                                    ; preds = %if.then.370
  br label %cond.end.382

cond.false.379:                                   ; preds = %if.then.370
  %195 = load i32, i32* %pos.addr, align 4
  %196 = load float, float* %this_value, align 4
  %conv380 = fpext float %196 to double
  %197 = load i32, i32* %aa, align 4
  %198 = load i32, i32* %bb, align 4
  %199 = load i32, i32* %cc, align 4
  %call381 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.80, i32 0, i32 0), i32 %195, double %conv380, i32 %197, i32 %198, i32 %199)
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.379, %cond.true.378
  br label %if.end.383

if.end.383:                                       ; preds = %cond.end.382, %if.end.362
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %land.lhs.true.316, %land.lhs.true.313, %land.lhs.true.307, %if.then.288
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %sw.bb.286
  %200 = load i32, i32* %pos.addr, align 4
  %idxprom386 = sext i32 %200 to i64
  %arrayidx387 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom386
  %move_safety = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx387, i32 0, i32 19
  %201 = load i32, i32* %move_safety, align 4
  %tobool388 = icmp ne i32 %201, 0
  br i1 %tobool388, label %if.end.390, label %if.then.389

if.then.389:                                      ; preds = %if.end.385
  br label %sw.epilog

if.end.390:                                       ; preds = %if.end.385
  br label %sw.bb.391

sw.bb.391:                                        ; preds = %if.end.12, %if.end.390
  %202 = load i32, i32* @doing_scoring, align 4
  %tobool392 = icmp ne i32 %202, 0
  br i1 %tobool392, label %land.lhs.true.393, label %if.end.399

land.lhs.true.393:                                ; preds = %sw.bb.391
  %203 = load i32, i32* %pos.addr, align 4
  %idxprom394 = sext i32 %203 to i64
  %arrayidx395 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom394
  %move_safety396 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx395, i32 0, i32 19
  %204 = load i32, i32* %move_safety396, align 4
  %tobool397 = icmp ne i32 %204, 0
  br i1 %tobool397, label %if.end.399, label %if.then.398

if.then.398:                                      ; preds = %land.lhs.true.393
  br label %sw.epilog

if.end.399:                                       ; preds = %land.lhs.true.393, %sw.bb.391
  %205 = load i32, i32* %r, align 4
  %idxprom400 = sext i32 %205 to i64
  %arrayidx401 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom400
  %what402 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx401, i32 0, i32 1
  %206 = load i32, i32* %what402, align 4
  %idxprom403 = sext i32 %206 to i64
  %arrayidx404 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i32 0, i64 %idxprom403
  %207 = load i32, i32* %arrayidx404, align 4
  %idxprom405 = sext i32 %207 to i64
  %arrayidx406 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom405
  %origin407 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx406, i32 0, i32 2
  %208 = load i32, i32* %origin407, align 4
  store i32 %208, i32* %aa, align 4
  %209 = load i32, i32* %r, align 4
  %idxprom408 = sext i32 %209 to i64
  %arrayidx409 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom408
  %what410 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx409, i32 0, i32 1
  %210 = load i32, i32* %what410, align 4
  %idxprom411 = sext i32 %210 to i64
  %arrayidx412 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i32 0, i64 %idxprom411
  %211 = load i32, i32* %arrayidx412, align 4
  %idxprom413 = sext i32 %211 to i64
  %arrayidx414 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom413
  %origin415 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx414, i32 0, i32 2
  %212 = load i32, i32* %origin415, align 4
  store i32 %212, i32* %bb, align 4
  %213 = load i32, i32* %aa, align 4
  %214 = load i32, i32* %bb, align 4
  %cmp416 = icmp eq i32 %213, %214
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.end.399
  br label %for.inc.695

if.end.419:                                       ; preds = %if.end.399
  %215 = load i32, i32* %color.addr, align 4
  %cmp420 = icmp eq i32 %215, 1
  br i1 %cmp420, label %land.lhs.true.422, label %lor.lhs.false.426

land.lhs.true.422:                                ; preds = %if.end.419
  %216 = load float, float* %score.addr, align 4
  %conv423 = fpext float %216 to double
  %cmp424 = fcmp ogt double %conv423, 2.000000e+01
  br i1 %cmp424, label %if.then.433, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %land.lhs.true.422, %if.end.419
  %217 = load i32, i32* %color.addr, align 4
  %cmp427 = icmp eq i32 %217, 2
  br i1 %cmp427, label %land.lhs.true.429, label %if.else.442

land.lhs.true.429:                                ; preds = %lor.lhs.false.426
  %218 = load float, float* %score.addr, align 4
  %conv430 = fpext float %218 to double
  %cmp431 = fcmp olt double %conv430, -2.000000e+01
  br i1 %cmp431, label %if.then.433, label %if.else.442

if.then.433:                                      ; preds = %land.lhs.true.429, %land.lhs.true.422
  %219 = load i32, i32* %aa, align 4
  %220 = load i32, i32* %bb, align 4
  %221 = load i32, i32* %pos.addr, align 4
  %222 = load float, float* %score.addr, align 4
  %cmp434 = fcmp olt float %222, 0.000000e+00
  br i1 %cmp434, label %cond.true.436, label %cond.false.438

cond.true.436:                                    ; preds = %if.then.433
  %223 = load float, float* %score.addr, align 4
  %sub437 = fsub float -0.000000e+00, %223
  br label %cond.end.439

cond.false.438:                                   ; preds = %if.then.433
  %224 = load float, float* %score.addr, align 4
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.438, %cond.true.436
  %cond440 = phi float [ %sub437, %cond.true.436 ], [ %224, %cond.false.438 ]
  %call441 = call float @connection_value(i32 %219, i32 %220, i32 %221, float %cond440)
  store float %call441, float* %this_value, align 4
  br label %if.end.444

if.else.442:                                      ; preds = %land.lhs.true.429, %lor.lhs.false.426
  %225 = load i32, i32* %aa, align 4
  %226 = load i32, i32* %bb, align 4
  %227 = load i32, i32* %pos.addr, align 4
  %call443 = call float @connection_value(i32 %225, i32 %226, i32 %227, float 0.000000e+00)
  store float %call443, float* %this_value, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.else.442, %cond.end.439
  %228 = load float, float* %this_value, align 4
  %229 = load i32, i32* %aa, align 4
  %idxprom445 = sext i32 %229 to i64
  %arrayidx446 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom445
  %230 = load float, float* %arrayidx446, align 4
  %cmp447 = fcmp ogt float %228, %230
  br i1 %cmp447, label %if.then.449, label %if.end.459

if.then.449:                                      ; preds = %if.end.444
  %231 = load float, float* %this_value, align 4
  %232 = load i32, i32* %aa, align 4
  %idxprom450 = sext i32 %232 to i64
  %arrayidx451 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom450
  store float %231, float* %arrayidx451, align 4
  %233 = load i32, i32* @debug, align 4
  %and452 = and i32 %233, 2048
  %tobool453 = icmp ne i32 %and452, 0
  br i1 %tobool453, label %cond.false.455, label %cond.true.454

cond.true.454:                                    ; preds = %if.then.449
  br label %cond.end.458

cond.false.455:                                   ; preds = %if.then.449
  %234 = load i32, i32* %pos.addr, align 4
  %235 = load float, float* %this_value, align 4
  %conv456 = fpext float %235 to double
  %236 = load i32, i32* %aa, align 4
  %call457 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i32 0, i32 0), i32 %234, double %conv456, i32 %236)
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.455, %cond.true.454
  br label %if.end.459

if.end.459:                                       ; preds = %cond.end.458, %if.end.444
  %237 = load i32, i32* %color.addr, align 4
  %cmp460 = icmp eq i32 %237, 1
  br i1 %cmp460, label %land.lhs.true.462, label %lor.lhs.false.466

land.lhs.true.462:                                ; preds = %if.end.459
  %238 = load float, float* %score.addr, align 4
  %conv463 = fpext float %238 to double
  %cmp464 = fcmp ogt double %conv463, 2.000000e+01
  br i1 %cmp464, label %if.then.473, label %lor.lhs.false.466

lor.lhs.false.466:                                ; preds = %land.lhs.true.462, %if.end.459
  %239 = load i32, i32* %color.addr, align 4
  %cmp467 = icmp eq i32 %239, 2
  br i1 %cmp467, label %land.lhs.true.469, label %if.else.482

land.lhs.true.469:                                ; preds = %lor.lhs.false.466
  %240 = load float, float* %score.addr, align 4
  %conv470 = fpext float %240 to double
  %cmp471 = fcmp olt double %conv470, -2.000000e+01
  br i1 %cmp471, label %if.then.473, label %if.else.482

if.then.473:                                      ; preds = %land.lhs.true.469, %land.lhs.true.462
  %241 = load i32, i32* %bb, align 4
  %242 = load i32, i32* %aa, align 4
  %243 = load i32, i32* %pos.addr, align 4
  %244 = load float, float* %score.addr, align 4
  %cmp474 = fcmp olt float %244, 0.000000e+00
  br i1 %cmp474, label %cond.true.476, label %cond.false.478

cond.true.476:                                    ; preds = %if.then.473
  %245 = load float, float* %score.addr, align 4
  %sub477 = fsub float -0.000000e+00, %245
  br label %cond.end.479

cond.false.478:                                   ; preds = %if.then.473
  %246 = load float, float* %score.addr, align 4
  br label %cond.end.479

cond.end.479:                                     ; preds = %cond.false.478, %cond.true.476
  %cond480 = phi float [ %sub477, %cond.true.476 ], [ %246, %cond.false.478 ]
  %call481 = call float @connection_value(i32 %241, i32 %242, i32 %243, float %cond480)
  store float %call481, float* %this_value, align 4
  br label %if.end.484

if.else.482:                                      ; preds = %land.lhs.true.469, %lor.lhs.false.466
  %247 = load i32, i32* %bb, align 4
  %248 = load i32, i32* %aa, align 4
  %249 = load i32, i32* %pos.addr, align 4
  %call483 = call float @connection_value(i32 %247, i32 %248, i32 %249, float 0.000000e+00)
  store float %call483, float* %this_value, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.482, %cond.end.479
  %250 = load float, float* %this_value, align 4
  %251 = load i32, i32* %bb, align 4
  %idxprom485 = sext i32 %251 to i64
  %arrayidx486 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom485
  %252 = load float, float* %arrayidx486, align 4
  %cmp487 = fcmp ogt float %250, %252
  br i1 %cmp487, label %if.then.489, label %if.end.499

if.then.489:                                      ; preds = %if.end.484
  %253 = load float, float* %this_value, align 4
  %254 = load i32, i32* %bb, align 4
  %idxprom490 = sext i32 %254 to i64
  %arrayidx491 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom490
  store float %253, float* %arrayidx491, align 4
  %255 = load i32, i32* @debug, align 4
  %and492 = and i32 %255, 2048
  %tobool493 = icmp ne i32 %and492, 0
  br i1 %tobool493, label %cond.false.495, label %cond.true.494

cond.true.494:                                    ; preds = %if.then.489
  br label %cond.end.498

cond.false.495:                                   ; preds = %if.then.489
  %256 = load i32, i32* %pos.addr, align 4
  %257 = load float, float* %this_value, align 4
  %conv496 = fpext float %257 to double
  %258 = load i32, i32* %bb, align 4
  %call497 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i32 0, i32 0), i32 %256, double %conv496, i32 %258)
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.495, %cond.true.494
  br label %if.end.499

if.end.499:                                       ; preds = %cond.end.498, %if.end.484
  br label %sw.epilog

sw.bb.500:                                        ; preds = %if.end.12
  br label %sw.epilog

sw.bb.501:                                        ; preds = %if.end.12
  br label %sw.epilog

sw.bb.502:                                        ; preds = %if.end.12, %if.end.12
  %259 = load i32, i32* %r, align 4
  %idxprom503 = sext i32 %259 to i64
  %arrayidx504 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom503
  %what505 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx504, i32 0, i32 1
  %260 = load i32, i32* %what505, align 4
  store i32 %260, i32* %aa, align 4
  %261 = load i32, i32* %aa, align 4
  %idxprom506 = sext i32 %261 to i64
  %arrayidx507 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom506
  %effective_size508 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx507, i32 0, i32 4
  %262 = load float, float* %effective_size508, align 4
  %call509 = call float @soft_cap(float %262, float 1.500000e+01)
  %conv510 = fpext float %call509 to double
  %mul511 = fmul double 1.800000e+00, %conv510
  %263 = load i32, i32* %aa, align 4
  %call512 = call float @dragon_weakness(i32 %263, i32 1)
  %conv513 = fpext float %call512 to double
  %mul514 = fmul double %mul511, %conv513
  %conv515 = fptrunc double %mul514 to float
  store float %conv515, float* %this_value, align 4
  %264 = load i32, i32* %r, align 4
  %idxprom516 = sext i32 %264 to i64
  %arrayidx517 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom516
  %type518 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx517, i32 0, i32 0
  %265 = load i32, i32* %type518, align 4
  %cmp519 = icmp eq i32 %265, 44
  br i1 %cmp519, label %if.then.521, label %if.end.566

if.then.521:                                      ; preds = %sw.bb.502
  store i32 0, i32* %s, align 4
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.563, %if.then.521
  %266 = load i32, i32* %s, align 4
  %267 = load i32, i32* %aa, align 4
  %idxprom523 = sext i32 %267 to i64
  %arrayidx524 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom523
  %id525 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx524, i32 0, i32 1
  %268 = load i32, i32* %id525, align 4
  %idxprom526 = sext i32 %268 to i64
  %269 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx527 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %269, i64 %idxprom526
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx527, i32 0, i32 2
  %270 = load i32, i32* %neighbors, align 4
  %cmp528 = icmp slt i32 %266, %270
  br i1 %cmp528, label %for.body.530, label %for.end.565

for.body.530:                                     ; preds = %for.cond.522
  %271 = load i32, i32* %s, align 4
  %idxprom531 = sext i32 %271 to i64
  %272 = load i32, i32* %aa, align 4
  %idxprom532 = sext i32 %272 to i64
  %arrayidx533 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom532
  %id534 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx533, i32 0, i32 1
  %273 = load i32, i32* %id534, align 4
  %idxprom535 = sext i32 %273 to i64
  %274 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx536 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %274, i64 %idxprom535
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx536, i32 0, i32 1
  %arrayidx537 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom531
  %275 = load i32, i32* %arrayidx537, align 4
  store i32 %275, i32* %d, align 4
  %276 = load i32, i32* %d, align 4
  %idxprom538 = sext i32 %276 to i64
  %277 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx539 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %277, i64 %idxprom538
  %origin540 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx539, i32 0, i32 0
  %278 = load i32, i32* %origin540, align 4
  store i32 %278, i32* %adj, align 4
  %279 = load i32, i32* %adj, align 4
  %idxprom541 = sext i32 %279 to i64
  %arrayidx542 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom541
  %color543 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx542, i32 0, i32 0
  %280 = load i32, i32* %color543, align 4
  %281 = load i32, i32* %color.addr, align 4
  %cmp544 = icmp eq i32 %280, %281
  br i1 %cmp544, label %land.lhs.true.546, label %if.end.562

land.lhs.true.546:                                ; preds = %for.body.530
  %282 = load i32, i32* %adj, align 4
  %idxprom547 = sext i32 %282 to i64
  %arrayidx548 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom547
  %status549 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx548, i32 0, i32 16
  %283 = load i32, i32* %status549, align 4
  %cmp550 = icmp eq i32 %283, 2
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.562

land.lhs.true.552:                                ; preds = %land.lhs.true.546
  %284 = load i32, i32* %d, align 4
  %idxprom553 = sext i32 %284 to i64
  %285 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx554 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %285, i64 %idxprom553
  %safety555 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx554, i32 0, i32 6
  %286 = load i32, i32* %safety555, align 4
  %cmp556 = icmp ne i32 %286, 5
  br i1 %cmp556, label %land.lhs.true.558, label %if.end.562

land.lhs.true.558:                                ; preds = %land.lhs.true.552
  %287 = load i32, i32* %pos.addr, align 4
  %288 = load i32, i32* %adj, align 4
  %call559 = call i32 @owl_defense_move_reason_known(i32 %287, i32 %288)
  %tobool560 = icmp ne i32 %call559, 0
  br i1 %tobool560, label %if.end.562, label %if.then.561

if.then.561:                                      ; preds = %land.lhs.true.558
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.561, %land.lhs.true.558, %land.lhs.true.552, %land.lhs.true.546, %for.body.530
  br label %for.inc.563

for.inc.563:                                      ; preds = %if.end.562
  %289 = load i32, i32* %s, align 4
  %inc564 = add nsw i32 %289, 1
  store i32 %inc564, i32* %s, align 4
  br label %for.cond.522

for.end.565:                                      ; preds = %for.cond.522
  br label %if.end.566

if.end.566:                                       ; preds = %for.end.565, %sw.bb.502
  %290 = load float, float* %this_value, align 4
  %291 = load i32, i32* %aa, align 4
  %idxprom567 = sext i32 %291 to i64
  %arrayidx568 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom567
  %292 = load float, float* %arrayidx568, align 4
  %cmp569 = fcmp ogt float %290, %292
  br i1 %cmp569, label %if.then.571, label %if.end.581

if.then.571:                                      ; preds = %if.end.566
  %293 = load float, float* %this_value, align 4
  %294 = load i32, i32* %aa, align 4
  %idxprom572 = sext i32 %294 to i64
  %arrayidx573 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom572
  store float %293, float* %arrayidx573, align 4
  %295 = load i32, i32* @debug, align 4
  %and574 = and i32 %295, 2048
  %tobool575 = icmp ne i32 %and574, 0
  br i1 %tobool575, label %cond.false.577, label %cond.true.576

cond.true.576:                                    ; preds = %if.then.571
  br label %cond.end.580

cond.false.577:                                   ; preds = %if.then.571
  %296 = load i32, i32* %pos.addr, align 4
  %297 = load float, float* %this_value, align 4
  %conv578 = fpext float %297 to double
  %298 = load i32, i32* %aa, align 4
  %call579 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i32 0, i32 0), i32 %296, double %conv578, i32 %298)
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.577, %cond.true.576
  br label %if.end.581

if.end.581:                                       ; preds = %cond.end.580, %if.end.566
  br label %sw.epilog

sw.bb.582:                                        ; preds = %if.end.12
  %299 = load i32, i32* %r, align 4
  %idxprom583 = sext i32 %299 to i64
  %arrayidx584 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom583
  %what585 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx584, i32 0, i32 1
  %300 = load i32, i32* %what585, align 4
  store i32 %300, i32* %aa, align 4
  store i32 0, i32* %found_one, align 4
  store i32 0, i32* %d586, align 4
  br label %for.cond.587

for.cond.587:                                     ; preds = %for.inc.615, %sw.bb.582
  %301 = load i32, i32* %d586, align 4
  %302 = load i32, i32* %aa, align 4
  %idxprom588 = sext i32 %302 to i64
  %arrayidx589 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom588
  %id590 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx589, i32 0, i32 1
  %303 = load i32, i32* %id590, align 4
  %idxprom591 = sext i32 %303 to i64
  %304 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx592 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %304, i64 %idxprom591
  %neighbors593 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx592, i32 0, i32 2
  %305 = load i32, i32* %neighbors593, align 4
  %cmp594 = icmp slt i32 %301, %305
  br i1 %cmp594, label %for.body.596, label %for.end.617

for.body.596:                                     ; preds = %for.cond.587
  %306 = load i32, i32* %d586, align 4
  %idxprom597 = sext i32 %306 to i64
  %307 = load i32, i32* %aa, align 4
  %idxprom598 = sext i32 %307 to i64
  %arrayidx599 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom598
  %id600 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx599, i32 0, i32 1
  %308 = load i32, i32* %id600, align 4
  %idxprom601 = sext i32 %308 to i64
  %309 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx602 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %309, i64 %idxprom601
  %adjacent603 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx602, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent603, i32 0, i64 %idxprom597
  %310 = load i32, i32* %arrayidx604, align 4
  %idxprom605 = sext i32 %310 to i64
  %311 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx606 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %311, i64 %idxprom605
  %origin607 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx606, i32 0, i32 0
  %312 = load i32, i32* %origin607, align 4
  %idxprom608 = sext i32 %312 to i64
  %arrayidx609 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom608
  %status610 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx609, i32 0, i32 16
  %313 = load i32, i32* %status610, align 4
  %cmp611 = icmp eq i32 %313, 2
  br i1 %cmp611, label %if.then.613, label %if.end.614

if.then.613:                                      ; preds = %for.body.596
  store i32 1, i32* %found_one, align 4
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.613, %for.body.596
  br label %for.inc.615

for.inc.615:                                      ; preds = %if.end.614
  %314 = load i32, i32* %d586, align 4
  %inc616 = add nsw i32 %314, 1
  store i32 %inc616, i32* %d586, align 4
  br label %for.cond.587

for.end.617:                                      ; preds = %for.cond.587
  %315 = load i32, i32* %found_one, align 4
  %tobool618 = icmp ne i32 %315, 0
  br i1 %tobool618, label %if.then.619, label %if.end.620

if.then.619:                                      ; preds = %for.end.617
  br label %sw.epilog

if.end.620:                                       ; preds = %for.end.617
  %316 = load i32, i32* %color.addr, align 4
  %cmp621 = icmp eq i32 %316, 2
  br i1 %cmp621, label %land.lhs.true.623, label %lor.lhs.false.627

land.lhs.true.623:                                ; preds = %if.end.620
  %317 = load float, float* %score.addr, align 4
  %conv624 = fpext float %317 to double
  %cmp625 = fcmp ogt double %conv624, 0.000000e+00
  br i1 %cmp625, label %if.then.634, label %lor.lhs.false.627

lor.lhs.false.627:                                ; preds = %land.lhs.true.623, %if.end.620
  %318 = load i32, i32* %color.addr, align 4
  %cmp628 = icmp eq i32 %318, 1
  br i1 %cmp628, label %land.lhs.true.630, label %if.else.635

land.lhs.true.630:                                ; preds = %lor.lhs.false.627
  %319 = load float, float* %score.addr, align 4
  %conv631 = fpext float %319 to double
  %cmp632 = fcmp olt double %conv631, 0.000000e+00
  br i1 %cmp632, label %if.then.634, label %if.else.635

if.then.634:                                      ; preds = %land.lhs.true.630, %land.lhs.true.623
  store float 0.000000e+00, float* %this_value, align 4
  br label %if.end.679

if.else.635:                                      ; preds = %land.lhs.true.630, %lor.lhs.false.627
  %320 = load i32, i32* %aa, align 4
  %idxprom636 = sext i32 %320 to i64
  %arrayidx637 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom636
  %effective_size638 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx637, i32 0, i32 4
  %321 = load float, float* %effective_size638, align 4
  %mul639 = fmul float 2.000000e+00, %321
  %conv640 = fpext float %mul639 to double
  %322 = load float, float* %score.addr, align 4
  %conv641 = fpext float %322 to double
  %mul642 = fmul double 6.500000e-01, %conv641
  %cmp643 = fcmp olt double %mul642, 0.000000e+00
  br i1 %cmp643, label %cond.true.645, label %cond.false.649

cond.true.645:                                    ; preds = %if.else.635
  %323 = load float, float* %score.addr, align 4
  %conv646 = fpext float %323 to double
  %mul647 = fmul double 6.500000e-01, %conv646
  %sub648 = fsub double -0.000000e+00, %mul647
  br label %cond.end.652

cond.false.649:                                   ; preds = %if.else.635
  %324 = load float, float* %score.addr, align 4
  %conv650 = fpext float %324 to double
  %mul651 = fmul double 6.500000e-01, %conv650
  br label %cond.end.652

cond.end.652:                                     ; preds = %cond.false.649, %cond.true.645
  %cond653 = phi double [ %sub648, %cond.true.645 ], [ %mul651, %cond.false.649 ]
  %cmp654 = fcmp olt double %conv640, %cond653
  br i1 %cmp654, label %cond.true.656, label %cond.false.662

cond.true.656:                                    ; preds = %cond.end.652
  %325 = load i32, i32* %aa, align 4
  %idxprom657 = sext i32 %325 to i64
  %arrayidx658 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom657
  %effective_size659 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx658, i32 0, i32 4
  %326 = load float, float* %effective_size659, align 4
  %mul660 = fmul float 2.000000e+00, %326
  %conv661 = fpext float %mul660 to double
  br label %cond.end.676

cond.false.662:                                   ; preds = %cond.end.652
  %327 = load float, float* %score.addr, align 4
  %conv663 = fpext float %327 to double
  %mul664 = fmul double 6.500000e-01, %conv663
  %cmp665 = fcmp olt double %mul664, 0.000000e+00
  br i1 %cmp665, label %cond.true.667, label %cond.false.671

cond.true.667:                                    ; preds = %cond.false.662
  %328 = load float, float* %score.addr, align 4
  %conv668 = fpext float %328 to double
  %mul669 = fmul double 6.500000e-01, %conv668
  %sub670 = fsub double -0.000000e+00, %mul669
  br label %cond.end.674

cond.false.671:                                   ; preds = %cond.false.662
  %329 = load float, float* %score.addr, align 4
  %conv672 = fpext float %329 to double
  %mul673 = fmul double 6.500000e-01, %conv672
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.671, %cond.true.667
  %cond675 = phi double [ %sub670, %cond.true.667 ], [ %mul673, %cond.false.671 ]
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.end.674, %cond.true.656
  %cond677 = phi double [ %conv661, %cond.true.656 ], [ %cond675, %cond.end.674 ]
  %conv678 = fptrunc double %cond677 to float
  store float %conv678, float* %this_value, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %cond.end.676, %if.then.634
  %330 = load float, float* %this_value, align 4
  %331 = load i32, i32* %aa, align 4
  %idxprom680 = sext i32 %331 to i64
  %arrayidx681 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom680
  %332 = load float, float* %arrayidx681, align 4
  %cmp682 = fcmp ogt float %330, %332
  br i1 %cmp682, label %if.then.684, label %if.end.694

if.then.684:                                      ; preds = %if.end.679
  %333 = load float, float* %this_value, align 4
  %334 = load i32, i32* %aa, align 4
  %idxprom685 = sext i32 %334 to i64
  %arrayidx686 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom685
  store float %333, float* %arrayidx686, align 4
  %335 = load i32, i32* @debug, align 4
  %and687 = and i32 %335, 2048
  %tobool688 = icmp ne i32 %and687, 0
  br i1 %tobool688, label %cond.false.690, label %cond.true.689

cond.true.689:                                    ; preds = %if.then.684
  br label %cond.end.693

cond.false.690:                                   ; preds = %if.then.684
  %336 = load i32, i32* %pos.addr, align 4
  %337 = load float, float* %this_value, align 4
  %conv691 = fpext float %337 to double
  %338 = load i32, i32* %aa, align 4
  %call692 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.83, i32 0, i32 0), i32 %336, double %conv691, i32 %338)
  br label %cond.end.693

cond.end.693:                                     ; preds = %cond.false.690, %cond.true.689
  br label %if.end.694

if.end.694:                                       ; preds = %cond.end.693, %if.end.679
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.12, %if.end.694, %if.then.619, %if.end.581, %sw.bb.501, %sw.bb.500, %if.end.499, %if.then.398, %if.then.389, %cond.end.284, %if.then.262, %if.then.258, %cond.end.232, %if.then.216, %if.then.212, %sw.bb.189, %for.end.188, %if.then.66, %if.then.21
  br label %for.inc.695

for.inc.695:                                      ; preds = %sw.epilog, %if.then.418, %if.then.11
  %339 = load i32, i32* %k, align 4
  %inc696 = add nsw i32 %339, 1
  store i32 %inc696, i32* %k, align 4
  br label %for.cond.1

for.end.697:                                      ; preds = %if.then, %for.cond.1
  store i32 21, i32* %aa, align 4
  br label %for.cond.698

for.cond.698:                                     ; preds = %for.inc.814, %for.end.697
  %340 = load i32, i32* %aa, align 4
  %cmp699 = icmp slt i32 %340, 400
  br i1 %cmp699, label %for.body.701, label %for.end.816

for.body.701:                                     ; preds = %for.cond.698
  %341 = load i32, i32* %aa, align 4
  %idxprom702 = sext i32 %341 to i64
  %arrayidx703 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom702
  %342 = load float, float* %arrayidx703, align 4
  %conv704 = fpext float %342 to double
  %cmp705 = fcmp oeq double %conv704, 0.000000e+00
  br i1 %cmp705, label %if.then.707, label %if.end.708

if.then.707:                                      ; preds = %for.body.701
  br label %for.inc.814

if.end.708:                                       ; preds = %for.body.701
  %343 = load i32, i32* %aa, align 4
  %idxprom709 = sext i32 %343 to i64
  %arrayidx710 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom709
  %origin711 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx710, i32 0, i32 2
  %344 = load i32, i32* %origin711, align 4
  %345 = load i32, i32* %aa, align 4
  %cmp712 = icmp eq i32 %344, %345
  br i1 %cmp712, label %if.then.714, label %if.else.715

if.then.714:                                      ; preds = %if.end.708
  br label %if.end.718

if.else.715:                                      ; preds = %if.end.708
  %346 = load i32, i32* %aa, align 4
  %div = sdiv i32 %346, 20
  %sub716 = sub nsw i32 %div, 1
  %347 = load i32, i32* %aa, align 4
  %rem = srem i32 %347, 20
  %sub717 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 2298, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0), i32 %sub716, i32 %sub717)
  br label %if.end.718

if.end.718:                                       ; preds = %if.else.715, %if.then.714
  %348 = load i32, i32* %aa, align 4
  %idxprom719 = sext i32 %348 to i64
  %arrayidx720 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom719
  %status721 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx720, i32 0, i32 16
  %349 = load i32, i32* %status721, align 4
  %cmp722 = icmp eq i32 %349, 2
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.734

land.lhs.true.724:                                ; preds = %if.end.718
  %350 = load i32, i32* %pos.addr, align 4
  %351 = load i32, i32* %aa, align 4
  %call725 = call i32 @owl_move_reason_known(i32 %350, i32 %351)
  %tobool726 = icmp ne i32 %call725, 0
  br i1 %tobool726, label %if.end.734, label %if.then.727

if.then.727:                                      ; preds = %land.lhs.true.724
  %352 = load i32, i32* @debug, align 4
  %and728 = and i32 %352, 2048
  %tobool729 = icmp ne i32 %and728, 0
  br i1 %tobool729, label %cond.false.731, label %cond.true.730

cond.true.730:                                    ; preds = %if.then.727
  br label %cond.end.733

cond.false.731:                                   ; preds = %if.then.727
  %353 = load i32, i32* %pos.addr, align 4
  %354 = load i32, i32* %aa, align 4
  %call732 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.85, i32 0, i32 0), i32 %353, i32 %354)
  br label %cond.end.733

cond.end.733:                                     ; preds = %cond.false.731, %cond.true.730
  br label %for.inc.814

if.end.734:                                       ; preds = %land.lhs.true.724, %if.end.718
  %355 = load i32, i32* %aa, align 4
  %idxprom735 = sext i32 %355 to i64
  %arrayidx736 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom735
  %status737 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx736, i32 0, i32 16
  %356 = load i32, i32* %status737, align 4
  %cmp738 = icmp ne i32 %356, 0
  br i1 %cmp738, label %land.lhs.true.740, label %if.end.764

land.lhs.true.740:                                ; preds = %if.end.734
  %357 = load i32, i32* %aa, align 4
  %idxprom741 = sext i32 %357 to i64
  %arrayidx742 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom741
  %size743 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx742, i32 0, i32 3
  %358 = load i32, i32* %size743, align 4
  %359 = load i32, i32* %aa, align 4
  %idxprom744 = sext i32 %359 to i64
  %arrayidx745 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom744
  %size746 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx745, i32 0, i32 1
  %360 = load i32, i32* %size746, align 4
  %cmp747 = icmp eq i32 %358, %360
  br i1 %cmp747, label %land.lhs.true.749, label %if.end.764

land.lhs.true.749:                                ; preds = %land.lhs.true.740
  %361 = load i32, i32* %pos.addr, align 4
  %362 = load i32, i32* %aa, align 4
  %call750 = call i32 @attack_move_reason_known(i32 %361, i32 %362)
  %tobool751 = icmp ne i32 %call750, 0
  br i1 %tobool751, label %if.then.755, label %lor.lhs.false.752

lor.lhs.false.752:                                ; preds = %land.lhs.true.749
  %363 = load i32, i32* %pos.addr, align 4
  %364 = load i32, i32* %aa, align 4
  %call753 = call i32 @defense_move_reason_known(i32 %363, i32 %364)
  %tobool754 = icmp ne i32 %call753, 0
  br i1 %tobool754, label %if.then.755, label %if.end.764

if.then.755:                                      ; preds = %lor.lhs.false.752, %land.lhs.true.749
  %365 = load i32, i32* @verbose, align 4
  %tobool756 = icmp ne i32 %365, 0
  br i1 %tobool756, label %cond.false.758, label %cond.true.757

cond.true.757:                                    ; preds = %if.then.755
  br label %cond.end.763

cond.false.758:                                   ; preds = %if.then.755
  %366 = load i32, i32* %pos.addr, align 4
  %367 = load i32, i32* %aa, align 4
  %idxprom759 = sext i32 %367 to i64
  %arrayidx760 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom759
  %368 = load float, float* %arrayidx760, align 4
  %conv761 = fpext float %368 to double
  %369 = load i32, i32* %aa, align 4
  %call762 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.86, i32 0, i32 0), i32 %366, double %conv761, i32 %369)
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.758, %cond.true.757
  br label %for.inc.814

if.end.764:                                       ; preds = %lor.lhs.false.752, %land.lhs.true.740, %if.end.734
  %370 = load i32, i32* %pos.addr, align 4
  %371 = load i32, i32* %aa, align 4
  %call765 = call i32 @owl_attack_move_reason_known(i32 %370, i32 %371)
  %tobool766 = icmp ne i32 %call765, 0
  br i1 %tobool766, label %if.then.773, label %lor.lhs.false.767

lor.lhs.false.767:                                ; preds = %if.end.764
  %372 = load i32, i32* %pos.addr, align 4
  %373 = load i32, i32* %aa, align 4
  %call768 = call i32 @owl_defense_move_reason_known(i32 %372, i32 %373)
  %tobool769 = icmp ne i32 %call768, 0
  br i1 %tobool769, label %if.then.773, label %lor.lhs.false.770

lor.lhs.false.770:                                ; preds = %lor.lhs.false.767
  %374 = load i32, i32* %pos.addr, align 4
  %375 = load i32, i32* %aa, align 4
  %call771 = call i32 @move_reason_known(i32 %374, i32 18, i32 %375)
  %tobool772 = icmp ne i32 %call771, 0
  br i1 %tobool772, label %if.then.773, label %if.end.802

if.then.773:                                      ; preds = %lor.lhs.false.770, %lor.lhs.false.767, %if.end.764
  %376 = load i32, i32* %aa, align 4
  %idxprom774 = sext i32 %376 to i64
  %arrayidx775 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom774
  %377 = load float, float* %arrayidx775, align 4
  %378 = load i32, i32* %aa, align 4
  %idxprom776 = sext i32 %378 to i64
  %arrayidx777 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom776
  %effective_size778 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx777, i32 0, i32 4
  %379 = load float, float* %effective_size778, align 4
  %mul779 = fmul float 2.000000e+00, %379
  %sub780 = fsub float %377, %mul779
  store float %sub780, float* %excess_value, align 4
  %380 = load float, float* %excess_value, align 4
  %conv781 = fpext float %380 to double
  %cmp782 = fcmp ogt double %conv781, 0.000000e+00
  br i1 %cmp782, label %if.then.784, label %if.else.792

if.then.784:                                      ; preds = %if.then.773
  %381 = load i32, i32* @verbose, align 4
  %tobool785 = icmp ne i32 %381, 0
  br i1 %tobool785, label %cond.false.787, label %cond.true.786

cond.true.786:                                    ; preds = %if.then.784
  br label %cond.end.790

cond.false.787:                                   ; preds = %if.then.784
  %382 = load i32, i32* %pos.addr, align 4
  %383 = load float, float* %excess_value, align 4
  %conv788 = fpext float %383 to double
  %384 = load i32, i32* %aa, align 4
  %call789 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.87, i32 0, i32 0), i32 %382, double %conv788, i32 %384)
  br label %cond.end.790

cond.end.790:                                     ; preds = %cond.false.787, %cond.true.786
  %385 = load float, float* %excess_value, align 4
  %386 = load float, float* %tot_value, align 4
  %add791 = fadd float %386, %385
  store float %add791, float* %tot_value, align 4
  br label %if.end.801

if.else.792:                                      ; preds = %if.then.773
  %387 = load i32, i32* @verbose, align 4
  %tobool793 = icmp ne i32 %387, 0
  br i1 %tobool793, label %cond.false.795, label %cond.true.794

cond.true.794:                                    ; preds = %if.else.792
  br label %cond.end.800

cond.false.795:                                   ; preds = %if.else.792
  %388 = load i32, i32* %pos.addr, align 4
  %389 = load i32, i32* %aa, align 4
  %idxprom796 = sext i32 %389 to i64
  %arrayidx797 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom796
  %390 = load float, float* %arrayidx797, align 4
  %conv798 = fpext float %390 to double
  %391 = load i32, i32* %aa, align 4
  %call799 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.88, i32 0, i32 0), i32 %388, double %conv798, i32 %391)
  br label %cond.end.800

cond.end.800:                                     ; preds = %cond.false.795, %cond.true.794
  br label %if.end.801

if.end.801:                                       ; preds = %cond.end.800, %cond.end.790
  br label %for.inc.814

if.end.802:                                       ; preds = %lor.lhs.false.770
  %392 = load i32, i32* @verbose, align 4
  %tobool803 = icmp ne i32 %392, 0
  br i1 %tobool803, label %cond.false.805, label %cond.true.804

cond.true.804:                                    ; preds = %if.end.802
  br label %cond.end.810

cond.false.805:                                   ; preds = %if.end.802
  %393 = load i32, i32* %pos.addr, align 4
  %394 = load i32, i32* %aa, align 4
  %idxprom806 = sext i32 %394 to i64
  %arrayidx807 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom806
  %395 = load float, float* %arrayidx807, align 4
  %conv808 = fpext float %395 to double
  %396 = load i32, i32* %aa, align 4
  %call809 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i32 0, i32 0), i32 %393, double %conv808, i32 %396)
  br label %cond.end.810

cond.end.810:                                     ; preds = %cond.false.805, %cond.true.804
  %397 = load i32, i32* %aa, align 4
  %idxprom811 = sext i32 %397 to i64
  %arrayidx812 = getelementptr inbounds [400 x float], [400 x float]* %dragon_value, i32 0, i64 %idxprom811
  %398 = load float, float* %arrayidx812, align 4
  %399 = load float, float* %tot_value, align 4
  %add813 = fadd float %399, %398
  store float %add813, float* %tot_value, align 4
  br label %for.inc.814

for.inc.814:                                      ; preds = %cond.end.810, %if.end.801, %cond.end.763, %cond.end.733, %if.then.707
  %400 = load i32, i32* %aa, align 4
  %inc815 = add nsw i32 %400, 1
  store i32 %inc815, i32* %aa, align 4
  br label %for.cond.698

for.end.816:                                      ; preds = %for.cond.698
  %401 = load i32, i32* %pos.addr, align 4
  %402 = load i32, i32* %color.addr, align 4
  %call817 = call float @strategic_penalty(i32 %401, i32 %402)
  store float %call817, float* %this_value, align 4
  %403 = load float, float* %this_value, align 4
  %conv818 = fpext float %403 to double
  %cmp819 = fcmp ogt double %conv818, 0.000000e+00
  br i1 %cmp819, label %if.then.821, label %if.end.830

if.then.821:                                      ; preds = %for.end.816
  %404 = load i32, i32* @verbose, align 4
  %tobool822 = icmp ne i32 %404, 0
  br i1 %tobool822, label %cond.false.824, label %cond.true.823

cond.true.823:                                    ; preds = %if.then.821
  br label %cond.end.828

cond.false.824:                                   ; preds = %if.then.821
  %405 = load i32, i32* %pos.addr, align 4
  %406 = load float, float* %this_value, align 4
  %sub825 = fsub float -0.000000e+00, %406
  %conv826 = fpext float %sub825 to double
  %call827 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.90, i32 0, i32 0), i32 %405, double %conv826)
  br label %cond.end.828

cond.end.828:                                     ; preds = %cond.false.824, %cond.true.823
  %407 = load float, float* %this_value, align 4
  %408 = load float, float* %tot_value, align 4
  %sub829 = fsub float %408, %407
  store float %sub829, float* %tot_value, align 4
  br label %if.end.830

if.end.830:                                       ; preds = %cond.end.828, %for.end.816
  %409 = load float, float* %tot_value, align 4
  %410 = load i32, i32* %pos.addr, align 4
  %idxprom831 = sext i32 %410 to i64
  %arrayidx832 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom831
  %strategical_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx832, i32 0, i32 4
  store float %409, float* %strategical_value, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @compute_shape_factor(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %exponent = alloca float, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom
  %maxpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx, i32 0, i32 5
  %1 = load float, float* %maxpos_shape, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom1
  %maxneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx2, i32 0, i32 6
  %3 = load float, float* %maxneg_shape, align 4
  %sub = fsub float %1, %3
  store float %sub, float* %exponent, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %4, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %6 to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %7, 20
  %sub7 = sub nsw i32 %div, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %8, 20
  %sub8 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 1090, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i32 0, i32 0), i32 %sub7, i32 %sub8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom9
  %numpos_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx10, i32 0, i32 7
  %10 = load i32, i32* %numpos_shape, align 4
  %cmp11 = icmp sgt i32 %10, 1
  br i1 %cmp11, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom14
  %numpos_shape16 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx15, i32 0, i32 7
  %12 = load i32, i32* %numpos_shape16, align 4
  %sub17 = sub nsw i32 %12, 1
  %conv18 = sitofp i32 %sub17 to float
  %13 = load float, float* %exponent, align 4
  %add = fadd float %13, %conv18
  store float %add, float* %exponent, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.13, %if.end
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom20
  %numneg_shape = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx21, i32 0, i32 8
  %15 = load i32, i32* %numneg_shape, align 4
  %cmp22 = icmp sgt i32 %15, 1
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %if.end.19
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom25
  %numneg_shape27 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx26, i32 0, i32 8
  %17 = load i32, i32* %numneg_shape27, align 4
  %sub28 = sub nsw i32 %17, 1
  %conv29 = sitofp i32 %sub28 to float
  %18 = load float, float* %exponent, align 4
  %sub30 = fsub float %18, %conv29
  store float %sub30, float* %exponent, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %if.end.19
  %19 = load float, float* %exponent, align 4
  %conv32 = fpext float %19 to double
  %call = call double @pow(double 1.050000e+00, double %conv32) #3
  %conv33 = fptrunc double %call to float
  ret float %conv33
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @move_connects_strings(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ss = alloca [4 x i32], align 16
  %strings = alloca i32, align 4
  %own_strings = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %fewlibs = alloca i32, align 4
  %ii = alloca i32, align 4
  %origin = alloca i32, align 4
  %newlibs = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %strings, align 4
  store i32 0, i32* %own_strings, align 4
  store i32 0, i32* %fewlibs, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos.addr, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %ii, align 4
  %4 = load i32, i32* %ii, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %ii, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.27

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %ii, align 4
  %call = call i32 @find_origin(i32 %8)
  store i32 %call, i32* %origin, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %strings, align 4
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %l, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %13 = load i32, i32* %origin, align 4
  %cmp16 = icmp eq i32 %12, %13
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body.13
  br label %for.end

if.end.19:                                        ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %14 = load i32, i32* %l, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.18, %for.cond.10
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %strings, align 4
  %cmp20 = icmp eq i32 %15, %16
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %for.end
  %17 = load i32, i32* %origin, align 4
  %18 = load i32, i32* %strings, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom23
  store i32 %17, i32* %arrayidx24, align 4
  %19 = load i32, i32* %strings, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, i32* %strings, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %for.end
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26, %if.then
  %20 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.84, %for.end.29
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %strings, align 4
  %cmp31 = icmp slt i32 %21, %22
  br i1 %cmp31, label %for.body.33, label %for.end.86

for.body.33:                                      ; preds = %for.cond.30
  %23 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom34
  %24 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %25 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %25 to i32
  %26 = load i32, i32* %color.addr, align 4
  %cmp39 = icmp eq i32 %conv38, %26
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %for.body.33
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* %color.addr, align 4
  %call42 = call i32 @approxlib(i32 %27, i32 %28, i32 241, i32* null)
  store i32 %call42, i32* %newlibs, align 4
  %29 = load i32, i32* %own_strings, align 4
  %inc43 = add nsw i32 %29, 1
  store i32 %inc43, i32* %own_strings, align 4
  %30 = load i32, i32* %newlibs, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom44
  %32 = load i32, i32* %arrayidx45, align 4
  %call46 = call i32 @countlib(i32 %32)
  %cmp47 = icmp sge i32 %30, %call46
  br i1 %cmp47, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %if.then.41
  %33 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom50
  %34 = load i32, i32* %arrayidx51, align 4
  %call52 = call i32 @countlib(i32 %34)
  %cmp53 = icmp sle i32 %call52, 4
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.49
  %35 = load i32, i32* %fewlibs, align 4
  %inc56 = add nsw i32 %35, 1
  store i32 %inc56, i32* %fewlibs, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.49
  %36 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %36 to i64
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom58
  %37 = load i32, i32* %arrayidx59, align 4
  %call60 = call i32 @countlib(i32 %37)
  %cmp61 = icmp sle i32 %call60, 2
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.57
  %38 = load i32, i32* %fewlibs, align 4
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, i32* %fewlibs, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.57
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.41
  br label %if.end.83

if.else:                                          ; preds = %for.body.33
  %39 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom67
  %40 = load i32, i32* %arrayidx68, align 4
  %call69 = call i32 @countlib(i32 %40)
  %cmp70 = icmp sle i32 %call69, 2
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else
  %41 = load i32, i32* %fewlibs, align 4
  %inc73 = add nsw i32 %41, 1
  store i32 %inc73, i32* %fewlibs, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else
  %42 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %42 to i64
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %ss, i32 0, i64 %idxprom75
  %43 = load i32, i32* %arrayidx76, align 4
  %call77 = call i32 @countlib(i32 %43)
  %cmp78 = icmp sle i32 %call77, 1
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.74
  %44 = load i32, i32* %fewlibs, align 4
  %inc81 = add nsw i32 %44, 1
  store i32 %inc81, i32* %fewlibs, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.74
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.66
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %45 = load i32, i32* %k, align 4
  %inc85 = add nsw i32 %45, 1
  store i32 %inc85, i32* %k, align 4
  br label %for.cond.30

for.end.86:                                       ; preds = %for.cond.30
  %46 = load i32, i32* %fewlibs, align 4
  %cmp87 = icmp sgt i32 %46, 4
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.end.86
  store i32 4, i32* %fewlibs, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %for.end.86
  %47 = load i32, i32* %fewlibs, align 4
  %cmp91 = icmp eq i32 %47, 0
  br i1 %cmp91, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %if.end.90
  %48 = load i32, i32* %own_strings, align 4
  %cmp93 = icmp eq i32 %48, 1
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %land.lhs.true
  store i32 0, i32* %own_strings, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %land.lhs.true, %if.end.90
  %49 = load i32, i32* %own_strings, align 4
  %50 = load i32, i32* %fewlibs, align 4
  %add97 = add nsw i32 %49, %50
  ret i32 %add97
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @value_moves_confirm_safety(i32 %move, i32 %color) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call float @value_moves_get_blunder_size(i32 %0, i32 %1)
  %conv = fpext float %call to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

declare void @move_considered(i32, float) #1

declare void @set_strength_data(i32, i8*, float*) #1

declare void @mark_changed_string(i32, i8*, float*, i8 signext) #1

; Function Attrs: nounwind uwtable
define internal i32 @adjacent_to_nondead_stone(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos.addr, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %pos.addr, align 4
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %5, %7
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %color10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 0
  %8 = load i32, i32* %color10, align 4
  %9 = load i32, i32* %color.addr, align 4
  %cmp11 = icmp eq i32 %8, %9
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %10 = load i32, i32* %pos.addr, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %10, %12
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom17
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx18, i32 0, i32 16
  %13 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %13, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @same_string(i32, i32) #1

declare i32 @owl_substantial(i32) #1

declare void @add_followup_value(i32, float) #1

declare i32 @is_ko_point(i32) #1

declare i32 @liberty_of_string(i32, i32) #1

declare void @mark_changed_dragon(i32, i32, i32, i32, i32, i8*, float*, float*) #1

declare i32 @is_same_dragon(i32, i32) #1

declare i32 @get_last_opponent_move(i32) #1

declare void @add_reverse_followup_value(i32, float) #1

declare i32 @tryko(i32, i32, i8*, i32, i32) #1

declare i32 @retrieve_delta_territory_cache(i32, i32, float*, float*) #1

declare void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

declare void @compute_followup_influence(%struct.influence_data*, %struct.influence_data*, i32, i8*) #1

declare float @influence_delta_territory(%struct.influence_data*, %struct.influence_data*, i32, i32) #1

declare void @store_delta_territory_cache(i32, i32, float, float) #1

declare float @soft_cap(float, float) #1

; Function Attrs: nounwind uwtable
define internal float @dragon_weakness(i32 %dr, i32 %ignore_dead_dragons) #0 {
entry:
  %retval = alloca float, align 4
  %dr.addr = alloca i32, align 4
  %ignore_dead_dragons.addr = alloca i32, align 4
  %dragon_safety = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %ignore_dead_dragons, i32* %ignore_dead_dragons.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %2, i64 %idxprom1
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx2, i32 0, i32 6
  %3 = load i32, i32* %safety, align 4
  store i32 %3, i32* %dragon_safety, align 4
  %4 = load i32, i32* %ignore_dead_dragons.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %dragon_safety, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i32, i32* %dragon_safety, align 4
  %cmp3 = icmp eq i32 %6, 5
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %dragon_safety, align 4
  %cmp5 = icmp eq i32 %7, 6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %land.lhs.true
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4, %entry
  %8 = load i32, i32* @doing_scoring, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.10

land.lhs.true.7:                                  ; preds = %if.end
  %9 = load i32, i32* %dragon_safety, align 4
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true.7
  store float 0.000000e+00, float* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true.7, %if.end
  %10 = load i32, i32* %dr.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %id13 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 1
  %11 = load i32, i32* %id13, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx15 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %idxprom14
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx15, i32 0, i32 7
  %13 = load float, float* %weakness, align 4
  store float %13, float* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %14 = load float, float* %retval
  ret float %14
}

declare i32 @does_defend(i32, i32) #1

declare i32 @does_attack(i32, i32) #1

declare i32 @move_reason_known(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @adjusted_worm_attack_value(i32 %pos, i32 %ww) #0 {
entry:
  %retval = alloca float, align 4
  %pos.addr = alloca i32, align 4
  %ww.addr = alloca i32, align 4
  %num_adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %has_live_neighbor = alloca i32, align 4
  %adjusted_value = alloca float, align 4
  %adjustment_up = alloca float, align 4
  %adjustment_down = alloca float, align 4
  %s = alloca i32, align 4
  %adj = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %ww, i32* %ww.addr, align 4
  store i32 0, i32* %has_live_neighbor, align 4
  %0 = load i32, i32* %ww.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 2
  %1 = load float, float* %effective_size, align 4
  %mul = fmul float 2.000000e+00, %1
  store float %mul, float* %adjusted_value, align 4
  store float 0.000000e+00, float* %adjustment_up, align 4
  store float 0.000000e+00, float* %adjustment_down, align 4
  %2 = load i32, i32* %ww.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks(i32 %2, i32* %arraydecay)
  store i32 %call, i32* %num_adj, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %s, align 4
  %4 = load i32, i32* %num_adj, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %s, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %adj, align 4
  %7 = load i32, i32* %adj, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 16
  %8 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %has_live_neighbor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %adj, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %status8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 16
  %10 = load i32, i32* %status8, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %adj, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom10
  %effective_size12 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx11, i32 0, i32 4
  %12 = load float, float* %effective_size12, align 4
  %mul13 = fmul float 2.000000e+00, %12
  %13 = load float, float* %adjustment_up, align 4
  %cmp14 = fcmp ogt float %mul13, %13
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %adj, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom16
  %effective_size18 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx17, i32 0, i32 4
  %15 = load float, float* %effective_size18, align 4
  %mul19 = fmul float 2.000000e+00, %15
  store float %mul19, float* %adjustment_up, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %land.lhs.true, %if.end
  %16 = load i32, i32* %adj, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 16
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %17 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp ne i32 %17, 0
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.38

land.lhs.true.25:                                 ; preds = %if.end.20
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %adj, align 4
  %call26 = call i32 @does_defend(i32 %18, i32 %19)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end.38, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %land.lhs.true.25
  %20 = load i32, i32* %adj, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom28
  %effective_size30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx29, i32 0, i32 2
  %21 = load float, float* %effective_size30, align 4
  %mul31 = fmul float 2.000000e+00, %21
  %22 = load float, float* %adjustment_down, align 4
  %cmp32 = fcmp ogt float %mul31, %22
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %land.lhs.true.27
  %23 = load i32, i32* %adj, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom34
  %effective_size36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx35, i32 0, i32 2
  %24 = load float, float* %effective_size36, align 4
  %mul37 = fmul float 2.000000e+00, %24
  store float %mul37, float* %adjustment_down, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %land.lhs.true.27, %land.lhs.true.25, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %25 = load i32, i32* %s, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %has_live_neighbor, align 4
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end
  %27 = load float, float* %adjustment_up, align 4
  %28 = load float, float* %adjusted_value, align 4
  %add = fadd float %28, %27
  store float %add, float* %adjusted_value, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.end
  %29 = load float, float* %adjustment_down, align 4
  %30 = load float, float* %adjusted_value, align 4
  %sub = fsub float %30, %29
  store float %sub, float* %adjusted_value, align 4
  %31 = load float, float* %adjusted_value, align 4
  %conv = fpext float %31 to double
  %cmp42 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.41
  %32 = load float, float* %adjusted_value, align 4
  store float %32, float* %retval
  br label %return

if.else:                                          ; preds = %if.end.41
  store float 0.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.44
  %33 = load float, float* %retval
  ret float %33
}

; Function Attrs: nounwind uwtable
define internal float @connection_value(i32 %dragona, i32 %dragonb, i32 %tt, float %margin) #0 {
entry:
  %retval = alloca float, align 4
  %dragona.addr = alloca i32, align 4
  %dragonb.addr = alloca i32, align 4
  %tt.addr = alloca i32, align 4
  %margin.addr = alloca float, align 4
  %da = alloca %struct.dragon_data2*, align 8
  %db = alloca %struct.dragon_data2*, align 8
  %sizea = alloca float, align 4
  %sizeb = alloca float, align 4
  %safetya = alloca i32, align 4
  %safetyb = alloca i32, align 4
  %crude_weakness_a = alloca float, align 4
  %crude_weakness_sum = alloca float, align 4
  %genus_sum = alloca %struct.eyevalue, align 1
  %terr_val = alloca float, align 4
  %return_value = alloca float, align 4
  %bonus = alloca float, align 4
  %old_burden = alloca float, align 4
  %new_burden = alloca float, align 4
  store i32 %dragona, i32* %dragona.addr, align 4
  store i32 %dragonb, i32* %dragonb.addr, align 4
  store i32 %tt, i32* %tt.addr, align 4
  store float %margin, float* %margin.addr, align 4
  %0 = load i32, i32* %dragona.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %id, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx2 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %2, i64 %idxprom1
  store %struct.dragon_data2* %arrayidx2, %struct.dragon_data2** %da, align 8
  %3 = load i32, i32* %dragonb.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %id5 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 1
  %4 = load i32, i32* %id5, align 4
  %idxprom6 = sext i32 %4 to i64
  %5 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %5, i64 %idxprom6
  store %struct.dragon_data2* %arrayidx7, %struct.dragon_data2** %db, align 8
  %6 = load i32, i32* %dragona.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 4
  %7 = load float, float* %effective_size, align 4
  store float %7, float* %sizea, align 4
  %8 = load i32, i32* %dragonb.addr, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom10
  %effective_size12 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx11, i32 0, i32 4
  %9 = load float, float* %effective_size12, align 4
  store float %9, float* %sizeb, align 4
  %10 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %10, i32 0, i32 6
  %11 = load i32, i32* %safety, align 4
  store i32 %11, i32* %safetya, align 4
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** %db, align 8
  %safety13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i32 0, i32 6
  %13 = load i32, i32* %safety13, align 4
  store i32 %13, i32* %safetyb, align 4
  %14 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %safety14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i32 0, i32 6
  %15 = load i32, i32* %safety14, align 4
  %16 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %16, i32 0, i32 10
  %17 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %lunch = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %17, i32 0, i32 12
  %18 = load i32, i32* %lunch, align 4
  %cmp = icmp ne i32 %18, 0
  %conv = zext i1 %cmp to i32
  %19 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %moyo_territorial_value = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %19, i32 0, i32 5
  %20 = load float, float* %moyo_territorial_value, align 4
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %escape_route = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i32 0, i32 9
  %22 = load i32, i32* %escape_route, align 4
  %conv15 = sitofp i32 %22 to float
  %call = call float @crude_dragon_weakness(i32 %15, %struct.eyevalue* %genus, i32 %conv, float %20, float %conv15)
  store float %call, float* %crude_weakness_a, align 4
  %23 = load i32, i32* %tt.addr, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom16
  %territorial_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx17, i32 0, i32 3
  %24 = load float, float* %territorial_value, align 4
  store float %24, float* %terr_val, align 4
  %25 = load float, float* %margin.addr, align 4
  %conv18 = fpext float %25 to double
  %cmp19 = fcmp ogt double %conv18, 2.000000e+01
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 2.000000e+01, float* %margin.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %26 = load i32, i32* @doing_scoring, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.end
  %27 = load float, float* %terr_val, align 4
  %conv21 = fpext float %27 to double
  %cmp22 = fcmp olt double %conv21, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.end.43

if.then.24:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %safetya, align 4
  %cmp25 = icmp eq i32 %28, 1
  br i1 %cmp25, label %land.lhs.true.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.24
  %29 = load i32, i32* %safetya, align 4
  %cmp27 = icmp eq i32 %29, 8
  br i1 %cmp27, label %land.lhs.true.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %30 = load i32, i32* %safetya, align 4
  %cmp30 = icmp eq i32 %30, 9
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.42

land.lhs.true.32:                                 ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.then.24
  %31 = load i32, i32* %safetyb, align 4
  %cmp33 = icmp eq i32 %31, 1
  br i1 %cmp33, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.32
  %32 = load i32, i32* %safetyb, align 4
  %cmp36 = icmp eq i32 %32, 8
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %33 = load i32, i32* %safetyb, align 4
  %cmp39 = icmp eq i32 %33, 9
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.35, %land.lhs.true.32
  store float 0.000000e+00, float* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.38, %lor.lhs.false.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %if.end
  %34 = load float, float* %crude_weakness_a, align 4
  %conv44 = fpext float %34 to double
  %cmp45 = fcmp oeq double %conv44, 0.000000e+00
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.end.43
  %35 = load i32, i32* %dragona.addr, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom48
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx49, i32 0, i32 16
  %36 = load i32, i32* %status, align 4
  %cmp50 = icmp eq i32 %36, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false.47, %if.end.43
  store float 0.000000e+00, float* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.47
  %37 = load float, float* %terr_val, align 4
  %conv54 = fpext float %37 to double
  %cmp55 = fcmp olt double %conv54, 0.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  store float 0.000000e+00, float* %terr_val, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.53
  %38 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %genus59 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %38, i32 0, i32 10
  %39 = load %struct.dragon_data2*, %struct.dragon_data2** %db, align 8
  %genus60 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %genus59, %struct.eyevalue* %genus60, %struct.eyevalue* %genus_sum)
  %40 = load i32, i32* %safetyb, align 4
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %lunch61 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i32 0, i32 12
  %42 = load i32, i32* %lunch61, align 4
  %cmp62 = icmp ne i32 %42, 0
  br i1 %cmp62, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.58
  %43 = load %struct.dragon_data2*, %struct.dragon_data2** %db, align 8
  %lunch64 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %43, i32 0, i32 12
  %44 = load i32, i32* %lunch64, align 4
  %cmp65 = icmp ne i32 %44, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.58
  %45 = phi i1 [ true, %if.end.58 ], [ %cmp65, %lor.rhs ]
  %lor.ext = zext i1 %45 to i32
  %46 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %moyo_territorial_value67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %46, i32 0, i32 5
  %47 = load float, float* %moyo_territorial_value67, align 4
  %48 = load %struct.dragon_data2*, %struct.dragon_data2** %db, align 8
  %moyo_territorial_value68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %48, i32 0, i32 5
  %49 = load float, float* %moyo_territorial_value68, align 4
  %add = fadd float %47, %49
  %50 = load float, float* %terr_val, align 4
  %add69 = fadd float %add, %50
  %51 = load %struct.dragon_data2*, %struct.dragon_data2** %da, align 8
  %escape_route70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i32 0, i32 9
  %52 = load i32, i32* %escape_route70, align 4
  %conv71 = sitofp i32 %52 to float
  %call72 = call float @crude_dragon_weakness(i32 %40, %struct.eyevalue* %genus_sum, i32 %lor.ext, float %add69, float %conv71)
  store float %call72, float* %crude_weakness_sum, align 4
  %53 = load i32, i32* %dragona.addr, align 4
  %idxprom73 = sext i32 %53 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom73
  %status75 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx74, i32 0, i32 16
  %54 = load i32, i32* %status75, align 4
  %cmp76 = icmp eq i32 %54, 2
  br i1 %cmp76, label %if.then.78, label %if.else

if.then.78:                                       ; preds = %lor.end
  %55 = load float, float* %crude_weakness_sum, align 4
  %conv79 = fpext float %55 to double
  %mul = fmul double 3.000000e-01, %conv79
  %sub = fsub double 2.000000e-01, %mul
  %56 = load float, float* %sizea, align 4
  %conv80 = fpext float %56 to double
  %mul81 = fmul double %sub, %conv80
  %conv82 = fptrunc double %mul81 to float
  store float %conv82, float* %bonus, align 4
  %57 = load float, float* %margin.addr, align 4
  %conv83 = fpext float %57 to double
  %cmp84 = fcmp ogt double %conv83, 0.000000e+00
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.97

land.lhs.true.86:                                 ; preds = %if.then.78
  %58 = load float, float* %bonus, align 4
  %conv87 = fpext float %58 to double
  %cmp88 = fcmp ogt double %conv87, 0.000000e+00
  br i1 %cmp88, label %if.then.90, label %if.end.97

if.then.90:                                       ; preds = %land.lhs.true.86
  %59 = load float, float* %margin.addr, align 4
  %conv91 = fpext float %59 to double
  %mul92 = fmul double 5.000000e-02, %conv91
  %add93 = fadd double 1.000000e+00, %mul92
  %60 = load float, float* %bonus, align 4
  %conv94 = fpext float %60 to double
  %mul95 = fmul double %conv94, %add93
  %conv96 = fptrunc double %mul95 to float
  store float %conv96, float* %bonus, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.90, %land.lhs.true.86, %if.then.78
  %61 = load float, float* %sizea, align 4
  %conv98 = fpext float %61 to double
  %mul99 = fmul double 2.000000e+00, %conv98
  %62 = load float, float* %bonus, align 4
  %conv100 = fpext float %62 to double
  %add101 = fadd double %mul99, %conv100
  %conv102 = fptrunc double %add101 to float
  store float %conv102, float* %return_value, align 4
  br label %if.end.135

if.else:                                          ; preds = %lor.end
  %63 = load float, float* %crude_weakness_a, align 4
  %conv103 = fpext float %63 to double
  %mul104 = fmul double 2.000000e+00, %conv103
  %64 = load float, float* %sizea, align 4
  %call105 = call float @soft_cap(float %64, float 1.500000e+01)
  %conv106 = fpext float %call105 to double
  %mul107 = fmul double %mul104, %conv106
  %conv108 = fptrunc double %mul107 to float
  store float %conv108, float* %old_burden, align 4
  %65 = load float, float* %crude_weakness_sum, align 4
  %conv109 = fpext float %65 to double
  %mul110 = fmul double 2.000000e+00, %conv109
  %66 = load float, float* %sizea, align 4
  %67 = load float, float* %sizeb, align 4
  %add111 = fadd float %66, %67
  %call112 = call float @soft_cap(float %add111, float 1.500000e+01)
  %conv113 = fpext float %call112 to double
  %mul114 = fmul double %mul110, %conv113
  %68 = load float, float* %sizea, align 4
  %conv115 = fpext float %68 to double
  %mul116 = fmul double %mul114, %conv115
  %69 = load float, float* %sizea, align 4
  %70 = load float, float* %sizeb, align 4
  %add117 = fadd float %69, %70
  %conv118 = fpext float %add117 to double
  %div = fdiv double %mul116, %conv118
  %conv119 = fptrunc double %div to float
  store float %conv119, float* %new_burden, align 4
  %71 = load float, float* %old_burden, align 4
  %72 = load float, float* %new_burden, align 4
  %sub120 = fsub float %71, %72
  %conv121 = fpext float %sub120 to double
  %mul122 = fmul double 1.050000e+00, %conv121
  %conv123 = fptrunc double %mul122 to float
  store float %conv123, float* %return_value, align 4
  %73 = load float, float* %margin.addr, align 4
  %conv124 = fpext float %73 to double
  %cmp125 = fcmp ogt double %conv124, 0.000000e+00
  br i1 %cmp125, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.else
  %74 = load float, float* %margin.addr, align 4
  %conv128 = fpext float %74 to double
  %mul129 = fmul double 2.000000e-02, %conv128
  %add130 = fadd double 1.000000e+00, %mul129
  %75 = load float, float* %return_value, align 4
  %conv131 = fpext float %75 to double
  %mul132 = fmul double %conv131, %add130
  %conv133 = fptrunc double %mul132 to float
  store float %conv133, float* %return_value, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.127, %if.else
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.97
  %76 = load float, float* %return_value, align 4
  %conv136 = fpext float %76 to double
  %cmp137 = fcmp olt double %conv136, 0.000000e+00
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.135
  store float 0.000000e+00, float* %return_value, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %if.end.135
  %77 = load float, float* %return_value, align 4
  store float %77, float* %retval
  br label %return

return:                                           ; preds = %if.end.140, %if.then.52, %if.then.41
  %78 = load float, float* %retval
  ret float %78
}

declare i32 @owl_move_reason_known(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal float @strategic_penalty(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca float, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %ret_val = alloca float, align 4
  %r = alloca i32, align 4
  %target = alloca i32, align 4
  %target47 = alloca i32, align 4
  %has_strong_neighbor = alloca i32, align 4
  %has_weak_neighbor = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos.addr, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %5
  %cmp5 = icmp eq i32 %sub, 1
  %cond = select i1 %cmp5, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %6, %8
  %call = call i32 @whose_area(%struct.influence_data* %cond, i32 %add9)
  %9 = load i32, i32* %color.addr, align 4
  %sub10 = sub nsw i32 3, %9
  %cmp11 = icmp ne i32 %call, %sub10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %color.addr, align 4
  %sub13 = sub nsw i32 3, %11
  %cmp14 = icmp eq i32 %sub13, 1
  %cond16 = select i1 %cmp14, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %12 = load i32, i32* %pos.addr, align 4
  %call17 = call i32 @whose_area(%struct.influence_data* %cond16, i32 %12)
  %13 = load i32, i32* %color.addr, align 4
  %sub18 = sub nsw i32 3, %13
  %cmp19 = icmp ne i32 %call17, %sub18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  store float 0.000000e+00, float* %retval
  br label %return

if.end.22:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.198, %if.end.22
  %14 = load i32, i32* %k, align 4
  %cmp24 = icmp slt i32 %14, 120
  br i1 %cmp24, label %for.body.26, label %for.end.200

for.body.26:                                      ; preds = %for.cond.23
  %15 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %15 to i64
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom28
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx29, i32 0, i32 18
  %arrayidx30 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom27
  %17 = load i32, i32* %arrayidx30, align 4
  store i32 %17, i32* %r, align 4
  %18 = load i32, i32* %r, align 4
  %cmp31 = icmp slt i32 %18, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.26
  br label %for.end.200

if.end.34:                                        ; preds = %for.body.26
  %19 = load i32, i32* %r, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom35
  %type = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx36, i32 0, i32 0
  %20 = load i32, i32* %type, align 4
  switch i32 %20, label %sw.default.197 [
    i32 22, label %sw.bb
    i32 44, label %sw.bb
    i32 24, label %sw.bb
    i32 8, label %sw.bb.37
    i32 32, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %if.end.34, %if.end.34, %if.end.34
  br label %for.inc.198

sw.bb.37:                                         ; preds = %if.end.34
  %21 = load i32, i32* %r, align 4
  %idxprom38 = sext i32 %21 to i64
  %arrayidx39 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom38
  %what = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx39, i32 0, i32 1
  %22 = load i32, i32* %what, align 4
  store i32 %22, i32* %target, align 4
  %23 = load i32, i32* %target, align 4
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom40
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx41, i32 0, i32 3
  %24 = load i32, i32* %size, align 4
  %cmp42 = icmp sgt i32 %24, 1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %sw.bb.37
  store float 0.000000e+00, float* %retval
  br label %return

if.end.45:                                        ; preds = %sw.bb.37
  br label %for.inc.198

sw.bb.46:                                         ; preds = %if.end.34
  %25 = load i32, i32* %r, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom48
  %what50 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx49, i32 0, i32 1
  %26 = load i32, i32* %what50, align 4
  store i32 %26, i32* %target47, align 4
  store i32 0, i32* %has_strong_neighbor, align 4
  store i32 0, i32* %has_weak_neighbor, align 4
  %27 = load i32, i32* %target47, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom51
  %size53 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx52, i32 0, i32 3
  %28 = load i32, i32* %size53, align 4
  %cmp54 = icmp sgt i32 %28, 1
  br i1 %cmp54, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.46
  %29 = load i32, i32* %target47, align 4
  %idxprom56 = sext i32 %29 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom56
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx57, i32 0, i32 9
  %30 = load i32, i32* %cutstone, align 4
  %cmp58 = icmp sgt i32 %30, 0
  br i1 %cmp58, label %if.then.65, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %target47, align 4
  %idxprom61 = sext i32 %31 to i64
  %arrayidx62 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom61
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx62, i32 0, i32 10
  %32 = load i32, i32* %cutstone2, align 4
  %cmp63 = icmp sgt i32 %32, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false, %sw.bb.46
  store float 0.000000e+00, float* %retval
  br label %return

if.end.66:                                        ; preds = %lor.lhs.false.60
  %33 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %33, 20
  %sub67 = sub nsw i32 %div, 1
  %34 = load i32, i32* @board_size, align 4
  %sub68 = sub nsw i32 %34, 1
  %35 = load i32, i32* %pos.addr, align 4
  %div69 = sdiv i32 %35, 20
  %sub70 = sub nsw i32 %div69, 1
  %sub71 = sub nsw i32 %sub68, %sub70
  %cmp72 = icmp slt i32 %sub67, %sub71
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %36 = load i32, i32* %pos.addr, align 4
  %div74 = sdiv i32 %36, 20
  %sub75 = sub nsw i32 %div74, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  %37 = load i32, i32* @board_size, align 4
  %sub76 = sub nsw i32 %37, 1
  %38 = load i32, i32* %pos.addr, align 4
  %div77 = sdiv i32 %38, 20
  %sub78 = sub nsw i32 %div77, 1
  %sub79 = sub nsw i32 %sub76, %sub78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond80 = phi i32 [ %sub75, %cond.true ], [ %sub79, %cond.false ]
  %39 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %39, 20
  %sub81 = sub nsw i32 %rem, 1
  %40 = load i32, i32* @board_size, align 4
  %sub82 = sub nsw i32 %40, 1
  %41 = load i32, i32* %pos.addr, align 4
  %rem83 = srem i32 %41, 20
  %sub84 = sub nsw i32 %rem83, 1
  %sub85 = sub nsw i32 %sub82, %sub84
  %cmp86 = icmp slt i32 %sub81, %sub85
  br i1 %cmp86, label %cond.true.88, label %cond.false.91

cond.true.88:                                     ; preds = %cond.end
  %42 = load i32, i32* %pos.addr, align 4
  %rem89 = srem i32 %42, 20
  %sub90 = sub nsw i32 %rem89, 1
  br label %cond.end.96

cond.false.91:                                    ; preds = %cond.end
  %43 = load i32, i32* @board_size, align 4
  %sub92 = sub nsw i32 %43, 1
  %44 = load i32, i32* %pos.addr, align 4
  %rem93 = srem i32 %44, 20
  %sub94 = sub nsw i32 %rem93, 1
  %sub95 = sub nsw i32 %sub92, %sub94
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.91, %cond.true.88
  %cond97 = phi i32 [ %sub90, %cond.true.88 ], [ %sub95, %cond.false.91 ]
  %cmp98 = icmp slt i32 %cond80, %cond97
  br i1 %cmp98, label %cond.true.100, label %cond.false.119

cond.true.100:                                    ; preds = %cond.end.96
  %45 = load i32, i32* %pos.addr, align 4
  %div101 = sdiv i32 %45, 20
  %sub102 = sub nsw i32 %div101, 1
  %46 = load i32, i32* @board_size, align 4
  %sub103 = sub nsw i32 %46, 1
  %47 = load i32, i32* %pos.addr, align 4
  %div104 = sdiv i32 %47, 20
  %sub105 = sub nsw i32 %div104, 1
  %sub106 = sub nsw i32 %sub103, %sub105
  %cmp107 = icmp slt i32 %sub102, %sub106
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %cond.true.100
  %48 = load i32, i32* %pos.addr, align 4
  %div110 = sdiv i32 %48, 20
  %sub111 = sub nsw i32 %div110, 1
  br label %cond.end.117

cond.false.112:                                   ; preds = %cond.true.100
  %49 = load i32, i32* @board_size, align 4
  %sub113 = sub nsw i32 %49, 1
  %50 = load i32, i32* %pos.addr, align 4
  %div114 = sdiv i32 %50, 20
  %sub115 = sub nsw i32 %div114, 1
  %sub116 = sub nsw i32 %sub113, %sub115
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.112, %cond.true.109
  %cond118 = phi i32 [ %sub111, %cond.true.109 ], [ %sub116, %cond.false.112 ]
  br label %cond.end.138

cond.false.119:                                   ; preds = %cond.end.96
  %51 = load i32, i32* %pos.addr, align 4
  %rem120 = srem i32 %51, 20
  %sub121 = sub nsw i32 %rem120, 1
  %52 = load i32, i32* @board_size, align 4
  %sub122 = sub nsw i32 %52, 1
  %53 = load i32, i32* %pos.addr, align 4
  %rem123 = srem i32 %53, 20
  %sub124 = sub nsw i32 %rem123, 1
  %sub125 = sub nsw i32 %sub122, %sub124
  %cmp126 = icmp slt i32 %sub121, %sub125
  br i1 %cmp126, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %cond.false.119
  %54 = load i32, i32* %pos.addr, align 4
  %rem129 = srem i32 %54, 20
  %sub130 = sub nsw i32 %rem129, 1
  br label %cond.end.136

cond.false.131:                                   ; preds = %cond.false.119
  %55 = load i32, i32* @board_size, align 4
  %sub132 = sub nsw i32 %55, 1
  %56 = load i32, i32* %pos.addr, align 4
  %rem133 = srem i32 %56, 20
  %sub134 = sub nsw i32 %rem133, 1
  %sub135 = sub nsw i32 %sub132, %sub134
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.131, %cond.true.128
  %cond137 = phi i32 [ %sub130, %cond.true.128 ], [ %sub135, %cond.false.131 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.end.117
  %cond139 = phi i32 [ %cond118, %cond.end.117 ], [ %cond137, %cond.end.136 ]
  %cmp140 = icmp slt i32 %cond139, 3
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %cond.end.138
  store float 0.000000e+00, float* %retval
  br label %return

if.end.143:                                       ; preds = %cond.end.138
  store i32 0, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.191, %if.end.143
  %57 = load i32, i32* %i, align 4
  %cmp145 = icmp slt i32 %57, 4
  br i1 %cmp145, label %for.body.147, label %for.end.193

for.body.147:                                     ; preds = %for.cond.144
  %58 = load i32, i32* %target47, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %59 to i64
  %arrayidx149 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom148
  %60 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %58, %60
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom151
  %61 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %61 to i32
  %62 = load i32, i32* %color.addr, align 4
  %sub154 = sub nsw i32 3, %62
  %cmp155 = icmp eq i32 %conv153, %sub154
  br i1 %cmp155, label %if.then.157, label %if.end.190

if.then.157:                                      ; preds = %for.body.147
  %63 = load i32, i32* %target47, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %64 to i64
  %arrayidx159 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom158
  %65 = load i32, i32* %arrayidx159, align 4
  %add160 = add nsw i32 %63, %65
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom161
  %size163 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx162, i32 0, i32 3
  %66 = load i32, i32* %size163, align 4
  %cmp164 = icmp eq i32 %66, 1
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.157
  store i32 1, i32* %has_weak_neighbor, align 4
  br label %for.end.193

if.end.167:                                       ; preds = %if.then.157
  %67 = load i32, i32* %target47, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %68 to i64
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom168
  %69 = load i32, i32* %arrayidx169, align 4
  %add170 = add nsw i32 %67, %69
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom171
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx172, i32 0, i32 1
  %70 = load i32, i32* %id, align 4
  %idxprom173 = sext i32 %70 to i64
  %71 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx174 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %71, i64 %idxprom173
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx174, i32 0, i32 6
  %72 = load i32, i32* %safety, align 4
  switch i32 %72, label %sw.default [
    i32 9, label %sw.bb.175
    i32 8, label %sw.bb.175
    i32 1, label %sw.bb.176
  ]

sw.bb.175:                                        ; preds = %if.end.167, %if.end.167
  store i32 1, i32* %has_strong_neighbor, align 4
  br label %sw.epilog

sw.bb.176:                                        ; preds = %if.end.167
  %73 = load i32, i32* %target47, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %74 to i64
  %arrayidx178 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom177
  %75 = load i32, i32* %arrayidx178, align 4
  %add179 = add nsw i32 %73, %75
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom180
  %id182 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx181, i32 0, i32 1
  %76 = load i32, i32* %id182, align 4
  %idxprom183 = sext i32 %76 to i64
  %77 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx184 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %77, i64 %idxprom183
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx184, i32 0, i32 7
  %78 = load float, float* %weakness, align 4
  %conv185 = fpext float %78 to double
  %cmp186 = fcmp ogt double %conv185, 4.000000e-01
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %sw.bb.176
  store i32 1, i32* %has_weak_neighbor, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %sw.bb.176
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.167
  store i32 1, i32* %has_weak_neighbor, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.189, %sw.bb.175
  br label %if.end.190

if.end.190:                                       ; preds = %sw.epilog, %for.body.147
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %79 = load i32, i32* %i, align 4
  %inc192 = add nsw i32 %79, 1
  store i32 %inc192, i32* %i, align 4
  br label %for.cond.144

for.end.193:                                      ; preds = %if.then.166, %for.cond.144
  %80 = load i32, i32* %has_weak_neighbor, align 4
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then.196, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %for.end.193
  %81 = load i32, i32* %has_strong_neighbor, align 4
  %tobool195 = icmp ne i32 %81, 0
  br i1 %tobool195, label %if.else, label %if.then.196

if.then.196:                                      ; preds = %lor.lhs.false.194, %for.end.193
  store float 0.000000e+00, float* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.194
  br label %for.inc.198

sw.default.197:                                   ; preds = %if.end.34
  store float 0.000000e+00, float* %retval
  br label %return

for.inc.198:                                      ; preds = %if.else, %if.end.45, %sw.bb
  %82 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %82, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond.23

for.end.200:                                      ; preds = %if.then.33, %for.cond.23
  %83 = load i32, i32* %color.addr, align 4
  %sub201 = sub nsw i32 3, %83
  %cmp202 = icmp eq i32 %sub201, 1
  %cond204 = select i1 %cmp202, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %84 = load i32, i32* %pos.addr, align 4
  %85 = load i32, i32* %color.addr, align 4
  %sub205 = sub nsw i32 3, %85
  %call206 = call float @influence_territory(%struct.influence_data* %cond204, i32 %84, i32 %sub205)
  store float %call206, float* %ret_val, align 4
  %86 = load float, float* %ret_val, align 4
  %conv207 = fpext float %86 to double
  %mul = fmul double %conv207, 1.200000e+01
  %conv208 = fptrunc double %mul to float
  store float %conv208, float* %ret_val, align 4
  %87 = load float, float* %ret_val, align 4
  %conv209 = fpext float %87 to double
  %cmp210 = fcmp olt double 0.000000e+00, %conv209
  br i1 %cmp210, label %cond.true.212, label %cond.false.214

cond.true.212:                                    ; preds = %for.end.200
  %88 = load float, float* %ret_val, align 4
  %conv213 = fpext float %88 to double
  br label %cond.end.215

cond.false.214:                                   ; preds = %for.end.200
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.214, %cond.true.212
  %cond216 = phi double [ %conv213, %cond.true.212 ], [ 0.000000e+00, %cond.false.214 ]
  %conv217 = fptrunc double %cond216 to float
  store float %conv217, float* %ret_val, align 4
  %89 = load float, float* %ret_val, align 4
  store float %89, float* %retval
  br label %return

return:                                           ; preds = %cond.end.215, %sw.default.197, %if.then.196, %if.then.142, %if.then.65, %if.then.44, %if.then.21, %if.then
  %90 = load float, float* %retval
  ret float %90
}

declare float @crude_dragon_weakness(i32, %struct.eyevalue*, i32, float, float) #1

declare void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

declare i32 @whose_area(%struct.influence_data*, i32) #1

declare float @influence_territory(%struct.influence_data*, i32, i32) #1

declare i32 @find_origin(i32) #1

declare i32 @approxlib(i32, i32, i32, i32*) #1

declare i32 @countlib(i32) #1

; Function Attrs: nounwind uwtable
define internal float @value_moves_get_blunder_size(i32 %move, i32 %color) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %saved_dragons = alloca [400 x i8], align 16
  %saved_worms = alloca [400 x i8], align 16
  %safe_stones = alloca [400 x i8], align 16
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %saved_dragons, i32 0, i32 0
  call void @get_saved_dragons(i32 %0, i8* %arraydecay)
  %1 = load i32, i32* %move.addr, align 4
  %arraydecay1 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_worms, i32 0, i32 0
  call void @get_saved_worms(i32 %1, i8* %arraydecay1)
  %2 = load i32, i32* %color.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %arraydecay2 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_dragons, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [400 x i8], [400 x i8]* %saved_worms, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @mark_safe_stones(i32 %2, i32 %3, i8* %arraydecay2, i8* %arraydecay3, i8* %arraydecay4)
  %4 = load i32, i32* %move.addr, align 4
  %5 = load i32, i32* %color.addr, align 4
  %arraydecay5 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %call = call float @blunder_size(i32 %4, i32 %5, i32* null, i8* %arraydecay5)
  ret float %call
}

declare void @get_saved_dragons(i32, i8*) #1

declare void @get_saved_worms(i32, i8*) #1

declare void @mark_safe_stones(i32, i32, i8*, i8*, i8*) #1

declare float @blunder_size(i32, i32, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @reevaluate_ko_threats(i32 %ko_move, i32 %color) #0 {
entry:
  %ko_move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ko_stone = alloca i32, align 4
  %opp_ko_move = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %type = alloca i32, align 4
  %what = alloca i32, align 4
  %threat_does_work = alloca i32, align 4
  %ko_move_target = alloca i32, align 4
  %threat_size = alloca float, align 4
  %r = alloca i32, align 4
  store i32 %ko_move, i32* %ko_move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %ko_stone, align 4
  store i32 0, i32* %threat_does_work, align 4
  %0 = load i32, i32* %ko_move.addr, align 4
  %call = call i32 @get_biggest_owl_target(i32 %0)
  store i32 %call, i32* %ko_move_target, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ko_move.addr, align 4
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, %4
  store i32 %add, i32* %ko_stone, align 4
  %5 = load i32, i32* %ko_stone, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %ko_stone, align 4
  %call5 = call i32 @countlib(i32 %7)
  %cmp6 = icmp eq i32 %call5, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %ko_stone, align 4
  %cmp8 = icmp ult i32 %9, 421
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %for.end
  %10 = load i32, i32* %ko_stone, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 3
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.10
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true.10, %for.end
  %12 = load i32, i32* %ko_stone, align 4
  %div = sdiv i32 %12, 20
  %sub = sub nsw i32 %div, 1
  %13 = load i32, i32* %ko_stone, align 4
  %rem = srem i32 %13, 20
  %sub17 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 2737, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i32 %sub, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %14 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.18
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %m, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.197, %cond.end
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* @board_size, align 4
  %cmp21 = icmp slt i32 %15, %16
  br i1 %cmp21, label %for.body.23, label %for.end.199

for.body.23:                                      ; preds = %for.cond.20
  store i32 0, i32* %n, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.194, %for.body.23
  %17 = load i32, i32* %n, align 4
  %18 = load i32, i32* @board_size, align 4
  %cmp25 = icmp slt i32 %17, %18
  br i1 %cmp25, label %for.body.27, label %for.end.196

for.body.27:                                      ; preds = %for.cond.24
  %19 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %19, 20
  %add28 = add nsw i32 21, %mul
  %20 = load i32, i32* %n, align 4
  %add29 = add nsw i32 %add28, %20
  store i32 %add29, i32* %pos, align 4
  %21 = load i32, i32* %pos, align 4
  %22 = load i32, i32* %ko_move.addr, align 4
  %cmp30 = icmp eq i32 %21, %22
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body.27
  br label %for.inc.194

if.end.33:                                        ; preds = %for.body.27
  %23 = load i32, i32* %pos, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom34
  %additional_ko_value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx35, i32 0, i32 2
  %24 = load float, float* %additional_ko_value, align 4
  %conv36 = fpext float %24 to double
  %cmp37 = fcmp ole double %conv36, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.33
  br label %for.inc.194

if.end.40:                                        ; preds = %if.end.33
  store float 0.000000e+00, float* %threat_size, align 4
  store i32 -1, i32* %type, align 4
  store i32 -1, i32* %what, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.106, %if.end.40
  %25 = load i32, i32* %k, align 4
  %cmp42 = icmp slt i32 %25, 120
  br i1 %cmp42, label %for.body.44, label %for.end.108

for.body.44:                                      ; preds = %for.cond.41
  %26 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %26 to i64
  %27 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom46
  %reason = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx47, i32 0, i32 18
  %arrayidx48 = getelementptr inbounds [120 x i32], [120 x i32]* %reason, i32 0, i64 %idxprom45
  %28 = load i32, i32* %arrayidx48, align 4
  store i32 %28, i32* %r, align 4
  %29 = load i32, i32* %r, align 4
  %cmp49 = icmp slt i32 %29, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.44
  br label %for.end.108

if.end.52:                                        ; preds = %for.body.44
  %30 = load i32, i32* %r, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom53
  %type55 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx54, i32 0, i32 0
  %31 = load i32, i32* %type55, align 4
  %and = and i32 %31, 1
  %tobool56 = icmp ne i32 %and, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.52
  br label %for.inc.106

if.end.58:                                        ; preds = %if.end.52
  %32 = load i32, i32* %r, align 4
  %idxprom59 = sext i32 %32 to i64
  %arrayidx60 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom59
  %type61 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx60, i32 0, i32 0
  %33 = load i32, i32* %type61, align 4
  switch i32 %33, label %sw.default [
    i32 3, label %sw.bb
    i32 9, label %sw.bb
    i32 27, label %sw.bb.83
    i32 33, label %sw.bb.83
    i32 19, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end.58, %if.end.58
  %34 = load i32, i32* %r, align 4
  %idxprom62 = sext i32 %34 to i64
  %arrayidx63 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom62
  %what64 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx63, i32 0, i32 1
  %35 = load i32, i32* %what64, align 4
  %idxprom65 = sext i32 %35 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom65
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx66, i32 0, i32 2
  %36 = load float, float* %effective_size, align 4
  %37 = load float, float* %threat_size, align 4
  %cmp67 = fcmp ogt float %36, %37
  br i1 %cmp67, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %sw.bb
  %38 = load i32, i32* %r, align 4
  %idxprom70 = sext i32 %38 to i64
  %arrayidx71 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom70
  %what72 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx71, i32 0, i32 1
  %39 = load i32, i32* %what72, align 4
  %idxprom73 = sext i32 %39 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom73
  %effective_size75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx74, i32 0, i32 2
  %40 = load float, float* %effective_size75, align 4
  store float %40, float* %threat_size, align 4
  %41 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %41 to i64
  %arrayidx77 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom76
  %type78 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx77, i32 0, i32 0
  %42 = load i32, i32* %type78, align 4
  store i32 %42, i32* %type, align 4
  %43 = load i32, i32* %r, align 4
  %idxprom79 = sext i32 %43 to i64
  %arrayidx80 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom79
  %what81 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx80, i32 0, i32 1
  %44 = load i32, i32* %what81, align 4
  store i32 %44, i32* %what, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.69, %sw.bb
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.end.58, %if.end.58, %if.end.58
  %45 = load i32, i32* %r, align 4
  %idxprom84 = sext i32 %45 to i64
  %arrayidx85 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom84
  %what86 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx85, i32 0, i32 1
  %46 = load i32, i32* %what86, align 4
  %idxprom87 = sext i32 %46 to i64
  %arrayidx88 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom87
  %effective_size89 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx88, i32 0, i32 4
  %47 = load float, float* %effective_size89, align 4
  %48 = load float, float* %threat_size, align 4
  %cmp90 = fcmp ogt float %47, %48
  br i1 %cmp90, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %sw.bb.83
  %49 = load i32, i32* %r, align 4
  %idxprom93 = sext i32 %49 to i64
  %arrayidx94 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom93
  %what95 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx94, i32 0, i32 1
  %50 = load i32, i32* %what95, align 4
  %idxprom96 = sext i32 %50 to i64
  %arrayidx97 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom96
  %effective_size98 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx97, i32 0, i32 4
  %51 = load float, float* %effective_size98, align 4
  store float %51, float* %threat_size, align 4
  %52 = load i32, i32* %r, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom99
  %type101 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx100, i32 0, i32 0
  %53 = load i32, i32* %type101, align 4
  store i32 %53, i32* %type, align 4
  %54 = load i32, i32* %r, align 4
  %idxprom102 = sext i32 %54 to i64
  %arrayidx103 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i32 0, i64 %idxprom102
  %what104 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %arrayidx103, i32 0, i32 1
  %55 = load i32, i32* %what104, align 4
  store i32 %55, i32* %what, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.92, %sw.bb.83
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.58
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 2785, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i32 -1, i32 -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.105, %if.end.82
  br label %for.inc.106

for.inc.106:                                      ; preds = %sw.epilog, %if.then.57
  %56 = load i32, i32* %k, align 4
  %inc107 = add nsw i32 %56, 1
  store i32 %inc107, i32* %k, align 4
  br label %for.cond.41

for.end.108:                                      ; preds = %if.then.51, %for.cond.41
  %57 = load i32, i32* %type, align 4
  %cmp109 = icmp eq i32 %57, -1
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %for.end.108
  store i32 1, i32* %threat_does_work, align 4
  br label %if.end.156

if.else.112:                                      ; preds = %for.end.108
  %58 = load i32, i32* %pos, align 4
  %59 = load i32, i32* %color.addr, align 4
  %60 = load i32, i32* %ko_move.addr, align 4
  %61 = load i32, i32* %ko_move.addr, align 4
  %call113 = call i32 @trymove(i32 %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i32 0, i32 0), i32 %60, i32 0, i32 %61)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.155

if.then.115:                                      ; preds = %if.else.112
  %62 = load i32, i32* %ko_stone, align 4
  %cmp116 = icmp ult i32 %62, 421
  br i1 %cmp116, label %land.lhs.true.118, label %if.else.125

land.lhs.true.118:                                ; preds = %if.then.115
  %63 = load i32, i32* %ko_stone, align 4
  %idxprom119 = sext i32 %63 to i64
  %arrayidx120 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom119
  %64 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %64 to i32
  %cmp122 = icmp ne i32 %conv121, 3
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %land.lhs.true.118
  br label %if.end.130

if.else.125:                                      ; preds = %land.lhs.true.118, %if.then.115
  %65 = load i32, i32* %ko_stone, align 4
  %div126 = sdiv i32 %65, 20
  %sub127 = sub nsw i32 %div126, 1
  %66 = load i32, i32* %ko_stone, align 4
  %rem128 = srem i32 %66, 20
  %sub129 = sub nsw i32 %rem128, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), i32 2798, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i32 0, i32 0), i32 %sub127, i32 %sub129)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.125, %if.then.124
  %67 = load i32, i32* %ko_stone, align 4
  %call131 = call i32 @find_defense(i32 %67, i32* %opp_ko_move)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.else.134, label %if.then.133

if.then.133:                                      ; preds = %if.end.130
  store i32 1, i32* %threat_does_work, align 4
  br label %if.end.154

if.else.134:                                      ; preds = %if.end.130
  %68 = load i32, i32* %opp_ko_move, align 4
  %69 = load i32, i32* %color.addr, align 4
  %sub135 = sub nsw i32 3, %69
  %70 = load i32, i32* %ko_move.addr, align 4
  %call136 = call i32 @trymove(i32 %68, i32 %sub135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i32 0, i32 0), i32 %70, i32 0, i32 0)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.153

if.then.138:                                      ; preds = %if.else.134
  %71 = load i32, i32* %type, align 4
  switch i32 %71, label %sw.epilog.152 [
    i32 3, label %sw.bb.139
    i32 9, label %sw.bb.141
    i32 27, label %sw.bb.149
    i32 33, label %sw.bb.149
  ]

sw.bb.139:                                        ; preds = %if.then.138
  %72 = load i32, i32* %what, align 4
  %call140 = call i32 @attack(i32 %72, i32* null)
  store i32 %call140, i32* %threat_does_work, align 4
  br label %sw.epilog.152

sw.bb.141:                                        ; preds = %if.then.138
  %73 = load i32, i32* %what, align 4
  %idxprom142 = sext i32 %73 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %74 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %74 to i32
  %cmp145 = icmp ne i32 %conv144, 0
  br i1 %cmp145, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.141
  %75 = load i32, i32* %what, align 4
  %call147 = call i32 @find_defense(i32 %75, i32* null)
  %tobool148 = icmp ne i32 %call147, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.141
  %76 = phi i1 [ false, %sw.bb.141 ], [ %tobool148, %land.rhs ]
  %land.ext = zext i1 %76 to i32
  store i32 %land.ext, i32* %threat_does_work, align 4
  br label %sw.epilog.152

sw.bb.149:                                        ; preds = %if.then.138, %if.then.138
  %77 = load i32, i32* %ko_move_target, align 4
  %78 = load i32, i32* %what, align 4
  %cmp150 = icmp ne i32 %77, %78
  %conv151 = zext i1 %cmp150 to i32
  store i32 %conv151, i32* %threat_does_work, align 4
  br label %sw.epilog.152

sw.epilog.152:                                    ; preds = %sw.bb.149, %if.then.138, %land.end, %sw.bb.139
  call void @popgo()
  br label %if.end.153

if.end.153:                                       ; preds = %sw.epilog.152, %if.else.134
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.133
  call void @popgo()
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.else.112
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.111
  %79 = load i32, i32* %threat_does_work, align 4
  %tobool157 = icmp ne i32 %79, 0
  br i1 %tobool157, label %if.then.158, label %if.else.186

if.then.158:                                      ; preds = %if.end.156
  %80 = load i32, i32* @verbose, align 4
  %tobool159 = icmp ne i32 %80, 0
  br i1 %tobool159, label %cond.false.161, label %cond.true.160

cond.true.160:                                    ; preds = %if.then.158
  br label %cond.end.178

cond.false.161:                                   ; preds = %if.then.158
  %81 = load i32, i32* %pos, align 4
  %82 = load i32, i32* %pos, align 4
  %idxprom162 = sext i32 %82 to i64
  %arrayidx163 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom162
  %value = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx163, i32 0, i32 0
  %83 = load float, float* %value, align 4
  %conv164 = fpext float %83 to double
  %84 = load i32, i32* %pos, align 4
  %idxprom165 = sext i32 %84 to i64
  %arrayidx166 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom165
  %additional_ko_value167 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx166, i32 0, i32 2
  %85 = load float, float* %additional_ko_value167, align 4
  %conv168 = fpext float %85 to double
  %86 = load i32, i32* %pos, align 4
  %idxprom169 = sext i32 %86 to i64
  %arrayidx170 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom169
  %value171 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx170, i32 0, i32 0
  %87 = load float, float* %value171, align 4
  %88 = load i32, i32* %pos, align 4
  %idxprom172 = sext i32 %88 to i64
  %arrayidx173 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom172
  %additional_ko_value174 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx173, i32 0, i32 2
  %89 = load float, float* %additional_ko_value174, align 4
  %add175 = fadd float %87, %89
  %conv176 = fpext float %add175 to double
  %call177 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i32 0, i32 0), i32 %81, double %conv164, double %conv168, double %conv176)
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.161, %cond.true.160
  %90 = load i32, i32* %pos, align 4
  %idxprom179 = sext i32 %90 to i64
  %arrayidx180 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom179
  %additional_ko_value181 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx180, i32 0, i32 2
  %91 = load float, float* %additional_ko_value181, align 4
  %92 = load i32, i32* %pos, align 4
  %idxprom182 = sext i32 %92 to i64
  %arrayidx183 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i32 0, i64 %idxprom182
  %value184 = getelementptr inbounds %struct.move_data, %struct.move_data* %arrayidx183, i32 0, i32 0
  %93 = load float, float* %value184, align 4
  %add185 = fadd float %93, %91
  store float %add185, float* %value184, align 4
  br label %if.end.193

if.else.186:                                      ; preds = %if.end.156
  %94 = load i32, i32* @debug, align 4
  %and187 = and i32 %94, 2048
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %cond.false.190, label %cond.true.189

cond.true.189:                                    ; preds = %if.else.186
  br label %cond.end.192

cond.false.190:                                   ; preds = %if.else.186
  %95 = load i32, i32* %pos, align 4
  %call191 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.107, i32 0, i32 0), i32 %95)
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.190, %cond.true.189
  br label %if.end.193

if.end.193:                                       ; preds = %cond.end.192, %cond.end.178
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193, %if.then.39, %if.then.32
  %96 = load i32, i32* %n, align 4
  %inc195 = add nsw i32 %96, 1
  store i32 %inc195, i32* %n, align 4
  br label %for.cond.24

for.end.196:                                      ; preds = %for.cond.24
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.end.196
  %97 = load i32, i32* %m, align 4
  %inc198 = add nsw i32 %97, 1
  store i32 %inc198, i32* %m, align 4
  br label %for.cond.20

for.end.199:                                      ; preds = %for.cond.20
  ret void
}

declare i32 @get_biggest_owl_target(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
