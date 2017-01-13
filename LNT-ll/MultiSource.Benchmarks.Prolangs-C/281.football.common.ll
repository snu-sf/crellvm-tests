; ModuleID = './MultiSource.Benchmarks.Prolangs-C/281.football.common.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i32, [18 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@common_teams = common global [29 x i32] zeroinitializer, align 16
@team_plays = external global [29 x [29 x i32]], align 16
@common_games = common global [29 x %struct.info] zeroinitializer, align 16
@num_games = external global i32, align 4
@sched = external global [18 x [15 x [3 x i32]]], align 16
@scores = external global [19 x [15 x [3 x i32]]], align 16
@h_to_h_stats = external global [29 x [29 x %struct.info]], align 16
@.str = private unnamed_addr constant [56 x i8] c"ERROR in head_to_head (common.c). Assumption violated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR in break_common (common.c). Assumption violated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"ERROR in div_conf_rec (common.c). Assumption violated.\0A\00", align 1
@team_info_wi_div = external global [29 x %struct.info], align 16
@team_info_wi_conf = external global [29 x %struct.info], align 16
@.str.3 = private unnamed_addr constant [60 x i8] c"ERROR in break_net_points (common.c). Assumption violated.\0A\00", align 1
@team_info = external global [29 x %struct.info], align 16
@divisions = external global [29 x [2 x i32]], align 16
@.str.4 = private unnamed_addr constant [47 x i8] c"------ Break a tie (all same div: %d) -------\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Split because of head to head record.\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Split because of head to head sweap.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Split because of divisional record.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Split because of conference record.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Split because of common game record.\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Split because of division net points.\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Split because of conference net points.\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Split because of net points.\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Ordered by COIN TOSS.\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@team = external global [30 x [2 x [15 x i8]]], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"  *   \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @matches_any_team(i32 %num, i32 %code) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* @common_teams, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %code.addr, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @common(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %tmp_team = alloca i32, align 4
  %temp = alloca i32, align 4
  %week = alloca i32, align 4
  %game = alloca i32, align 4
  %i = alloca i32, align 4
  %in_common = alloca [29 x i32], align 16
  %team1 = alloca i32, align 4
  %team2 = alloca i32, align 4
  %site1 = alloca i32, align 4
  %site2 = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 1, i32* %tmp_team, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %tmp_team, align 4
  %cmp = icmp sle i32 %0, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %tmp_team, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %tmp_team, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %tmp_team, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %temp, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.18, %for.end
  %3 = load i32, i32* %temp, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end.20

for.body.3:                                       ; preds = %for.cond.1
  store i32 1, i32* %tmp_team, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.15, %for.body.3
  %5 = load i32, i32* %tmp_team, align 4
  %cmp5 = icmp sle i32 %5, 28
  br i1 %cmp5, label %for.body.6, label %for.end.17

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %tmp_team, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %temp, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [29 x i32], [29 x i32]* @common_teams, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [29 x [29 x i32]], [29 x [29 x i32]]* @team_plays, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [29 x i32], [29 x i32]* %arrayidx11, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx12, align 4
  %10 = load i32, i32* %tmp_team, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %add = add nsw i32 %11, %9
  store i32 %add, i32* %arrayidx14, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.6
  %12 = load i32, i32* %tmp_team, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %tmp_team, align 4
  br label %for.cond.4

for.end.17:                                       ; preds = %for.cond.4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end.17
  %13 = load i32, i32* %temp, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, i32* %temp, align 4
  br label %for.cond.1

for.end.20:                                       ; preds = %for.cond.1
  store i32 1, i32* %temp, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %for.end.20
  %14 = load i32, i32* %temp, align 4
  %cmp22 = icmp sle i32 %14, 28
  br i1 %cmp22, label %for.body.23, label %for.end.33

for.body.23:                                      ; preds = %for.cond.21
  %15 = load i32, i32* %temp, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom24
  %16 = load i32, i32* %arrayidx25, align 4
  %17 = load i32, i32* %num.addr, align 4
  %cmp26 = icmp slt i32 %16, %17
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.23
  %18 = load i32, i32* %temp, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom27
  store i32 0, i32* %arrayidx28, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.23
  %19 = load i32, i32* %temp, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom29
  store i32 1, i32* %arrayidx30, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end
  %20 = load i32, i32* %temp, align 4
  %inc32 = add nsw i32 %20, 1
  store i32 %inc32, i32* %temp, align 4
  br label %for.cond.21

for.end.33:                                       ; preds = %for.cond.21
  store i32 1, i32* %team1, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.47, %for.end.33
  %21 = load i32, i32* %team1, align 4
  %cmp35 = icmp sle i32 %21, 28
  br i1 %cmp35, label %for.body.36, label %for.end.49

for.body.36:                                      ; preds = %for.cond.34
  %22 = load i32, i32* %team1, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom37
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx38, i32 0, i32 1
  store i32 0, i32* %loses, align 4
  %23 = load i32, i32* %team1, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom39
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx40, i32 0, i32 0
  store i32 0, i32* %wins, align 4
  %24 = load i32, i32* %team1, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom41
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx42, i32 0, i32 2
  store i32 0, i32* %ties, align 4
  %25 = load i32, i32* %team1, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom43
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx44, i32 0, i32 4
  store i32 0, i32* %points_against, align 4
  %26 = load i32, i32* %team1, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom45
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx46, i32 0, i32 3
  store i32 0, i32* %points_for, align 4
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.36
  %27 = load i32, i32* %team1, align 4
  %inc48 = add nsw i32 %27, 1
  store i32 %inc48, i32* %team1, align 4
  br label %for.cond.34

for.end.49:                                       ; preds = %for.cond.34
  store i32 1, i32* %week, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.161, %for.end.49
  %28 = load i32, i32* %week, align 4
  %29 = load i32, i32* @num_games, align 4
  %cmp51 = icmp sle i32 %28, %29
  br i1 %cmp51, label %for.body.52, label %for.end.163

for.body.52:                                      ; preds = %for.cond.50
  store i32 1, i32* %game, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.158, %for.body.52
  %30 = load i32, i32* %game, align 4
  %cmp54 = icmp sle i32 %30, 14
  br i1 %cmp54, label %for.body.55, label %for.end.160

for.body.55:                                      ; preds = %for.cond.53
  store i32 1, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.155, %for.body.55
  %31 = load i32, i32* %i, align 4
  %cmp57 = icmp sle i32 %31, 2
  br i1 %cmp57, label %for.body.58, label %for.end.157

for.body.58:                                      ; preds = %for.cond.56
  %32 = load i32, i32* %i, align 4
  %cmp59 = icmp eq i32 %32, 1
  br i1 %cmp59, label %if.then.60, label %if.else.71

if.then.60:                                       ; preds = %for.body.58
  %33 = load i32, i32* %game, align 4
  %idxprom61 = sext i32 %33 to i64
  %34 = load i32, i32* %week, align 4
  %idxprom62 = sext i32 %34 to i64
  %arrayidx63 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx63, i32 0, i64 %idxprom61
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx64, i32 0, i64 2
  %35 = load i32, i32* %arrayidx65, align 4
  store i32 %35, i32* %team1, align 4
  store i32 2, i32* %site1, align 4
  %36 = load i32, i32* %game, align 4
  %idxprom66 = sext i32 %36 to i64
  %37 = load i32, i32* %week, align 4
  %idxprom67 = sext i32 %37 to i64
  %arrayidx68 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx68, i32 0, i64 %idxprom66
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 1
  %38 = load i32, i32* %arrayidx70, align 4
  store i32 %38, i32* %team2, align 4
  store i32 1, i32* %site2, align 4
  br label %if.end.82

if.else.71:                                       ; preds = %for.body.58
  %39 = load i32, i32* %game, align 4
  %idxprom72 = sext i32 %39 to i64
  %40 = load i32, i32* %week, align 4
  %idxprom73 = sext i32 %40 to i64
  %arrayidx74 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx74, i32 0, i64 %idxprom72
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx75, i32 0, i64 1
  %41 = load i32, i32* %arrayidx76, align 4
  store i32 %41, i32* %team1, align 4
  store i32 1, i32* %site1, align 4
  %42 = load i32, i32* %game, align 4
  %idxprom77 = sext i32 %42 to i64
  %43 = load i32, i32* %week, align 4
  %idxprom78 = sext i32 %43 to i64
  %arrayidx79 = getelementptr inbounds [18 x [15 x [3 x i32]]], [18 x [15 x [3 x i32]]]* @sched, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx79, i32 0, i64 %idxprom77
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx80, i32 0, i64 2
  %44 = load i32, i32* %arrayidx81, align 4
  store i32 %44, i32* %team2, align 4
  store i32 2, i32* %site2, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.71, %if.then.60
  %45 = load i32, i32* %team1, align 4
  %cmp83 = icmp ne i32 %45, 0
  br i1 %cmp83, label %land.lhs.true, label %if.end.154

land.lhs.true:                                    ; preds = %if.end.82
  %46 = load i32, i32* %team1, align 4
  %idxprom84 = sext i32 %46 to i64
  %arrayidx85 = getelementptr inbounds [29 x i32], [29 x i32]* %in_common, i32 0, i64 %idxprom84
  %47 = load i32, i32* %arrayidx85, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then.86, label %if.end.154

if.then.86:                                       ; preds = %land.lhs.true
  %48 = load i32, i32* %num.addr, align 4
  %49 = load i32, i32* %team2, align 4
  %call = call i32 @matches_any_team(i32 %48, i32 %49)
  %tobool87 = icmp ne i32 %call, 0
  br i1 %tobool87, label %if.then.88, label %if.end.153

if.then.88:                                       ; preds = %if.then.86
  %50 = load i32, i32* %game, align 4
  %idxprom89 = sext i32 %50 to i64
  %51 = load i32, i32* %week, align 4
  %idxprom90 = sext i32 %51 to i64
  %arrayidx91 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx91, i32 0, i64 %idxprom89
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx92, i32 0, i64 2
  %52 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp sge i32 %52, 0
  br i1 %cmp94, label %land.lhs.true.95, label %if.else.147

land.lhs.true.95:                                 ; preds = %if.then.88
  %53 = load i32, i32* %game, align 4
  %idxprom96 = sext i32 %53 to i64
  %54 = load i32, i32* %week, align 4
  %idxprom97 = sext i32 %54 to i64
  %arrayidx98 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx98, i32 0, i64 %idxprom96
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx99, i32 0, i64 1
  %55 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp sge i32 %55, 0
  br i1 %cmp101, label %if.then.102, label %if.else.147

if.then.102:                                      ; preds = %land.lhs.true.95
  %56 = load i32, i32* %site1, align 4
  %idxprom103 = sext i32 %56 to i64
  %57 = load i32, i32* %game, align 4
  %idxprom104 = sext i32 %57 to i64
  %58 = load i32, i32* %week, align 4
  %idxprom105 = sext i32 %58 to i64
  %arrayidx106 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx106, i32 0, i64 %idxprom104
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx107, i32 0, i64 %idxprom103
  %59 = load i32, i32* %arrayidx108, align 4
  %60 = load i32, i32* %site2, align 4
  %idxprom109 = sext i32 %60 to i64
  %61 = load i32, i32* %game, align 4
  %idxprom110 = sext i32 %61 to i64
  %62 = load i32, i32* %week, align 4
  %idxprom111 = sext i32 %62 to i64
  %arrayidx112 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom111
  %arrayidx113 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx112, i32 0, i64 %idxprom110
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx113, i32 0, i64 %idxprom109
  %63 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp slt i32 %59, %63
  br i1 %cmp115, label %if.then.116, label %if.else.121

if.then.116:                                      ; preds = %if.then.102
  %64 = load i32, i32* %team2, align 4
  %idxprom117 = sext i32 %64 to i64
  %arrayidx118 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom117
  %wins119 = getelementptr inbounds %struct.info, %struct.info* %arrayidx118, i32 0, i32 0
  %65 = load i32, i32* %wins119, align 4
  %inc120 = add nsw i32 %65, 1
  store i32 %inc120, i32* %wins119, align 4
  br label %if.end.146

if.else.121:                                      ; preds = %if.then.102
  %66 = load i32, i32* %site1, align 4
  %idxprom122 = sext i32 %66 to i64
  %67 = load i32, i32* %game, align 4
  %idxprom123 = sext i32 %67 to i64
  %68 = load i32, i32* %week, align 4
  %idxprom124 = sext i32 %68 to i64
  %arrayidx125 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx125, i32 0, i64 %idxprom123
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx126, i32 0, i64 %idxprom122
  %69 = load i32, i32* %arrayidx127, align 4
  %70 = load i32, i32* %site2, align 4
  %idxprom128 = sext i32 %70 to i64
  %71 = load i32, i32* %game, align 4
  %idxprom129 = sext i32 %71 to i64
  %72 = load i32, i32* %week, align 4
  %idxprom130 = sext i32 %72 to i64
  %arrayidx131 = getelementptr inbounds [19 x [15 x [3 x i32]]], [19 x [15 x [3 x i32]]]* @scores, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [15 x [3 x i32]], [15 x [3 x i32]]* %arrayidx131, i32 0, i64 %idxprom129
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx132, i32 0, i64 %idxprom128
  %73 = load i32, i32* %arrayidx133, align 4
  %cmp134 = icmp sgt i32 %69, %73
  br i1 %cmp134, label %if.then.135, label %if.else.140

if.then.135:                                      ; preds = %if.else.121
  %74 = load i32, i32* %team2, align 4
  %idxprom136 = sext i32 %74 to i64
  %arrayidx137 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom136
  %loses138 = getelementptr inbounds %struct.info, %struct.info* %arrayidx137, i32 0, i32 1
  %75 = load i32, i32* %loses138, align 4
  %inc139 = add nsw i32 %75, 1
  store i32 %inc139, i32* %loses138, align 4
  br label %if.end.145

if.else.140:                                      ; preds = %if.else.121
  %76 = load i32, i32* %team2, align 4
  %idxprom141 = sext i32 %76 to i64
  %arrayidx142 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom141
  %ties143 = getelementptr inbounds %struct.info, %struct.info* %arrayidx142, i32 0, i32 2
  %77 = load i32, i32* %ties143, align 4
  %inc144 = add nsw i32 %77, 1
  store i32 %inc144, i32* %ties143, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.140, %if.then.135
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.116
  br label %if.end.152

if.else.147:                                      ; preds = %land.lhs.true.95, %if.then.88
  %78 = load i32, i32* %team2, align 4
  %idxprom148 = sext i32 %78 to i64
  %arrayidx149 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom148
  %points_for150 = getelementptr inbounds %struct.info, %struct.info* %arrayidx149, i32 0, i32 3
  %79 = load i32, i32* %points_for150, align 4
  %inc151 = add nsw i32 %79, 1
  store i32 %inc151, i32* %points_for150, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.147, %if.end.146
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.86
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %land.lhs.true, %if.end.82
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %80 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %80, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.56

for.end.157:                                      ; preds = %for.cond.56
  br label %for.inc.158

for.inc.158:                                      ; preds = %for.end.157
  %81 = load i32, i32* %game, align 4
  %inc159 = add nsw i32 %81, 1
  store i32 %inc159, i32* %game, align 4
  br label %for.cond.53

for.end.160:                                      ; preds = %for.cond.53
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %82 = load i32, i32* %week, align 4
  %inc162 = add nsw i32 %82, 1
  store i32 %inc162, i32* %week, align 4
  br label %for.cond.50

for.end.163:                                      ; preds = %for.cond.50
  store i32 1, i32* %team1, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.188, %for.end.163
  %83 = load i32, i32* %team1, align 4
  %cmp165 = icmp sle i32 %83, 28
  br i1 %cmp165, label %for.body.166, label %for.end.190

for.body.166:                                     ; preds = %for.cond.164
  %84 = load i32, i32* %team1, align 4
  %idxprom167 = sext i32 %84 to i64
  %arrayidx168 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom167
  %wins169 = getelementptr inbounds %struct.info, %struct.info* %arrayidx168, i32 0, i32 0
  %85 = load i32, i32* %wins169, align 4
  %86 = load i32, i32* %team1, align 4
  %idxprom170 = sext i32 %86 to i64
  %arrayidx171 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom170
  %loses172 = getelementptr inbounds %struct.info, %struct.info* %arrayidx171, i32 0, i32 1
  %87 = load i32, i32* %loses172, align 4
  %add173 = add nsw i32 %85, %87
  %88 = load i32, i32* %team1, align 4
  %idxprom174 = sext i32 %88 to i64
  %arrayidx175 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom174
  %ties176 = getelementptr inbounds %struct.info, %struct.info* %arrayidx175, i32 0, i32 2
  %89 = load i32, i32* %ties176, align 4
  %add177 = add nsw i32 %add173, %89
  %90 = load i32, i32* %team1, align 4
  %idxprom178 = sext i32 %90 to i64
  %arrayidx179 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom178
  %points_for180 = getelementptr inbounds %struct.info, %struct.info* %arrayidx179, i32 0, i32 3
  %91 = load i32, i32* %points_for180, align 4
  %add181 = add nsw i32 %add177, %91
  %cmp182 = icmp slt i32 %add181, 4
  br i1 %cmp182, label %if.then.183, label %if.end.187

if.then.183:                                      ; preds = %for.body.166
  %92 = load i32, i32* %team1, align 4
  %idxprom184 = sext i32 %92 to i64
  %arrayidx185 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom184
  %wins186 = getelementptr inbounds %struct.info, %struct.info* %arrayidx185, i32 0, i32 0
  store i32 -1, i32* %wins186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.183, %for.body.166
  br label %for.inc.188

for.inc.188:                                      ; preds = %if.end.187
  %93 = load i32, i32* %team1, align 4
  %inc189 = add nsw i32 %93, 1
  store i32 %inc189, i32* %team1, align 4
  br label %for.cond.164

for.end.190:                                      ; preds = %for.cond.164
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @head_to_head_sweap(i32* %teams, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %sweap_win = alloca i32, align 4
  %sweap_lose = alloca i32, align 4
  %tmp_team = alloca i32, align 4
  %tmp_team79 = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 1, i32* %sweap_win, align 4
  store i32 1, i32* %sweap_lose, align 4
  store i32 0, i32* %temp1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %entry
  %0 = load i32, i32* %temp1, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %sweap_lose, align 4
  store i32 1, i32* %sweap_win, align 4
  store i32 0, i32* %temp2, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %temp2, align 4
  %3 = load i32, i32* %num.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %temp1, align 4
  %5 = load i32, i32* %temp2, align 4
  %cmp4 = icmp ne i32 %4, %5
  br i1 %cmp4, label %if.then, label %if.end.68

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %temp2, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i32, i32* %temp1, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %teams.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx9, i32 0, i64 %idxprom5
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx10, i32 0, i32 2
  %12 = load i32, i32* %ties, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %13 = load i32, i32* %temp2, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load i32*, i32** %teams.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32, i32* %temp1, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32*, i32** %teams.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %idxprom15
  %18 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx18, i32 0, i64 %idxprom14
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx19, i32 0, i32 0
  %19 = load i32, i32* %wins, align 4
  %cmp20 = icmp eq i32 %19, 0
  br i1 %cmp20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %20 = load i32, i32* %temp2, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load i32*, i32** %teams.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %21, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %temp1, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32*, i32** %teams.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %24, i64 %idxprom25
  %25 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx28, i32 0, i64 %idxprom24
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx29, i32 0, i32 1
  %26 = load i32, i32* %loses, align 4
  %cmp30 = icmp eq i32 %26, 0
  br i1 %cmp30, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.21
  store i32 0, i32* %sweap_lose, align 4
  store i32 0, i32* %sweap_win, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.21, %land.lhs.true, %if.then
  %27 = load i32, i32* %temp2, align 4
  %idxprom32 = sext i32 %27 to i64
  %28 = load i32*, i32** %teams.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 %idxprom32
  %29 = load i32, i32* %arrayidx33, align 4
  %idxprom34 = sext i32 %29 to i64
  %30 = load i32, i32* %temp1, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load i32*, i32** %teams.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %31, i64 %idxprom35
  %32 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx38, i32 0, i64 %idxprom34
  %ties40 = getelementptr inbounds %struct.info, %struct.info* %arrayidx39, i32 0, i32 2
  %33 = load i32, i32* %ties40, align 4
  %cmp41 = icmp ne i32 %33, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end
  store i32 0, i32* %sweap_lose, align 4
  store i32 0, i32* %sweap_win, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end
  %34 = load i32, i32* %temp2, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load i32*, i32** %teams.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %35, i64 %idxprom44
  %36 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %36 to i64
  %37 = load i32, i32* %temp1, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i32*, i32** %teams.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %38, i64 %idxprom47
  %39 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx50, i32 0, i64 %idxprom46
  %loses52 = getelementptr inbounds %struct.info, %struct.info* %arrayidx51, i32 0, i32 1
  %40 = load i32, i32* %loses52, align 4
  %cmp53 = icmp ne i32 %40, 0
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.43
  store i32 0, i32* %sweap_win, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.43
  %41 = load i32, i32* %temp2, align 4
  %idxprom56 = sext i32 %41 to i64
  %42 = load i32*, i32** %teams.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %42, i64 %idxprom56
  %43 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %43 to i64
  %44 = load i32, i32* %temp1, align 4
  %idxprom59 = sext i32 %44 to i64
  %45 = load i32*, i32** %teams.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %45, i64 %idxprom59
  %46 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx62, i32 0, i64 %idxprom58
  %wins64 = getelementptr inbounds %struct.info, %struct.info* %arrayidx63, i32 0, i32 0
  %47 = load i32, i32* %wins64, align 4
  %cmp65 = icmp ne i32 %47, 0
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.55
  store i32 0, i32* %sweap_lose, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.55
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %48 = load i32, i32* %temp2, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %temp2, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %49 = load i32, i32* %sweap_win, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %for.end
  %50 = load i32*, i32** %teams.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx70, align 4
  store i32 %51, i32* %tmp_team, align 4
  %52 = load i32, i32* %temp1, align 4
  %idxprom71 = sext i32 %52 to i64
  %53 = load i32*, i32** %teams.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %53, i64 %idxprom71
  %54 = load i32, i32* %arrayidx72, align 4
  %55 = load i32*, i32** %teams.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %arrayidx73, align 4
  %56 = load i32, i32* %tmp_team, align 4
  %57 = load i32, i32* %temp1, align 4
  %idxprom74 = sext i32 %57 to i64
  %58 = load i32*, i32** %teams.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %58, i64 %idxprom74
  store i32 %56, i32* %arrayidx75, align 4
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.end
  %59 = load i32, i32* %sweap_lose, align 4
  %tobool77 = icmp ne i32 %59, 0
  br i1 %tobool77, label %if.then.78, label %if.end.90

if.then.78:                                       ; preds = %if.end.76
  %60 = load i32, i32* %num.addr, align 4
  %sub = sub nsw i32 %60, 1
  %idxprom80 = sext i32 %sub to i64
  %61 = load i32*, i32** %teams.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %61, i64 %idxprom80
  %62 = load i32, i32* %arrayidx81, align 4
  store i32 %62, i32* %tmp_team79, align 4
  %63 = load i32, i32* %temp1, align 4
  %idxprom82 = sext i32 %63 to i64
  %64 = load i32*, i32** %teams.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %64, i64 %idxprom82
  %65 = load i32, i32* %arrayidx83, align 4
  %66 = load i32, i32* %num.addr, align 4
  %sub84 = sub nsw i32 %66, 1
  %idxprom85 = sext i32 %sub84 to i64
  %67 = load i32*, i32** %teams.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %67, i64 %idxprom85
  store i32 %65, i32* %arrayidx86, align 4
  %68 = load i32, i32* %tmp_team79, align 4
  %69 = load i32, i32* %temp1, align 4
  %idxprom87 = sext i32 %69 to i64
  %70 = load i32*, i32** %teams.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %70, i64 %idxprom87
  store i32 %68, i32* %arrayidx88, align 4
  %71 = load i32, i32* %num.addr, align 4
  %sub89 = sub nsw i32 %71, 1
  store i32 %sub89, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.76
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %72 = load i32, i32* %temp1, align 4
  %inc92 = add nsw i32 %72, 1
  store i32 %inc92, i32* %temp1, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  %73 = load i32, i32* %num.addr, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %for.end.93, %if.then.78, %if.then.69
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define void @split_around(i32* %teams, i32 %num_best, i32 %num, double* %pct, double %best_pct) #0 {
entry:
  %teams.addr = alloca i32*, align 8
  %num_best.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %pct.addr = alloca double*, align 8
  %best_pct.addr = alloca double, align 8
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca [28 x i32], align 16
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num_best, i32* %num_best.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store double* %pct, double** %pct.addr, align 8
  store double %best_pct, double* %best_pct.addr, align 8
  store i32 0, i32* %t2, align 4
  store i32 0, i32* %t1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** %pct.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double, double* %best_pct.addr, align 8
  %cmp1 = fcmp oeq double %4, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %teams.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %9 = load i32, i32* %t1, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [28 x i32], [28 x i32]* %temp, i32 0, i64 %idxprom4
  store i32 %8, i32* %arrayidx5, align 4
  %10 = load i32, i32* %t1, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %t1, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32*, i32** %teams.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %14 = load i32, i32* %t2, align 4
  %15 = load i32, i32* %num_best.addr, align 4
  %add = add nsw i32 %14, %15
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [28 x i32], [28 x i32]* %temp, i32 0, i64 %idxprom8
  store i32 %13, i32* %arrayidx9, align 4
  %16 = load i32, i32* %t2, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %t2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.19, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %num.addr, align 4
  %cmp13 = icmp slt i32 %18, %19
  br i1 %cmp13, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [28 x i32], [28 x i32]* %temp, i32 0, i64 %idxprom15
  %21 = load i32, i32* %arrayidx16, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32*, i32** %teams.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  store i32 %21, i32* %arrayidx18, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %24 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %24, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.12

for.end.21:                                       ; preds = %for.cond.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @head_to_head(i32* %teams, i32 %num) #0 {
entry:
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %best_pct = alloca double, align 8
  %pct = alloca [5 x double], align 16
  %num_best = alloca i32, align 4
  %wins = alloca i32, align 4
  %loses = alloca i32, align 4
  %ties = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %ties, align 4
  store i32 0, i32* %loses, align 4
  store i32 0, i32* %wins, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp ne i32 %5, %6
  br i1 %cmp5, label %if.then.6, label %if.end.34

if.then.6:                                        ; preds = %for.body.4
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32*, i32** %teams.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx11, i32 0, i64 %idxprom7
  %wins13 = getelementptr inbounds %struct.info, %struct.info* %arrayidx12, i32 0, i32 0
  %13 = load i32, i32* %wins13, align 4
  %14 = load i32, i32* %wins, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %wins, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32*, i32** %teams.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32*, i32** %teams.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %19, i64 %idxprom17
  %20 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx20, i32 0, i64 %idxprom16
  %loses22 = getelementptr inbounds %struct.info, %struct.info* %arrayidx21, i32 0, i32 1
  %21 = load i32, i32* %loses22, align 4
  %22 = load i32, i32* %loses, align 4
  %add23 = add nsw i32 %22, %21
  store i32 %add23, i32* %loses, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i32*, i32** %teams.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 %idxprom24
  %25 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i32*, i32** %teams.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %27, i64 %idxprom27
  %28 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [29 x [29 x %struct.info]], [29 x [29 x %struct.info]]* @h_to_h_stats, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* %arrayidx30, i32 0, i64 %idxprom26
  %ties32 = getelementptr inbounds %struct.info, %struct.info* %arrayidx31, i32 0, i32 2
  %29 = load i32, i32* %ties32, align 4
  %30 = load i32, i32* %ties, align 4
  %add33 = add nsw i32 %30, %29
  store i32 %add33, i32* %ties, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.6, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %32 = load i32, i32* %wins, align 4
  %33 = load i32, i32* %loses, align 4
  %add35 = add nsw i32 %32, %33
  %34 = load i32, i32* %ties, align 4
  %add36 = add nsw i32 %add35, %34
  %cmp37 = icmp eq i32 %add36, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %35 = load i32, i32* %wins, align 4
  %conv = sitofp i32 %35 to double
  %36 = load i32, i32* %ties, align 4
  %conv38 = sitofp i32 %36 to double
  %mul = fmul double 5.000000e-01, %conv38
  %add39 = fadd double %conv, %mul
  %37 = load i32, i32* %wins, align 4
  %38 = load i32, i32* %loses, align 4
  %add40 = add nsw i32 %37, %38
  %39 = load i32, i32* %ties, align 4
  %add41 = add nsw i32 %add40, %39
  %conv42 = sitofp i32 %add41 to double
  %div = fdiv double %add39, %conv42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %40 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %40 to i64
  %arrayidx44 = getelementptr inbounds [5 x double], [5 x double]* %pct, i32 0, i64 %idxprom43
  store double %cond, double* %arrayidx44, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %41 to i64
  %arrayidx46 = getelementptr inbounds [5 x double], [5 x double]* %pct, i32 0, i64 %idxprom45
  %42 = load double, double* %arrayidx46, align 8
  %43 = load double, double* %best_pct, align 8
  %cmp47 = fcmp ogt double %42, %43
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %cond.end
  %44 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds [5 x double], [5 x double]* %pct, i32 0, i64 %idxprom50
  %45 = load double, double* %arrayidx51, align 8
  store double %45, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %cond.end
  %46 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %46 to i64
  %arrayidx54 = getelementptr inbounds [5 x double], [5 x double]* %pct, i32 0, i64 %idxprom53
  %47 = load double, double* %arrayidx54, align 8
  %48 = load double, double* %best_pct, align 8
  %cmp55 = fcmp oeq double %47, %48
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.52
  %49 = load i32, i32* %num_best, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %num_best, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.52
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %50 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %50, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  %51 = load i32*, i32** %teams.addr, align 8
  %52 = load i32, i32* %num_best, align 4
  %53 = load i32, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %pct, i32 0, i32 0
  %54 = load double, double* %best_pct, align 8
  call void @split_around(i32* %51, i32 %52, i32 %53, double* %arraydecay, double %54)
  %55 = load i32, i32* %num_best, align 4
  ret i32 %55
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @break_common(i32* %teams, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best_pct = alloca double, align 8
  %pct = alloca [28 x double], align 16
  %num_best = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds [29 x i32], [29 x i32]* @common_teams, i32 0, i64 %idxprom2
  store i32 %5, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %num.addr, align 4
  call void @common(i32 %8)
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num.addr, align 4
  %cmp5 = icmp slt i32 %9, %10
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load i32*, i32** %teams.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom9
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx10, i32 0, i32 0
  %14 = load i32, i32* %wins, align 4
  %cmp11 = icmp eq i32 %14, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.6
  %15 = load i32, i32* %num.addr, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %16 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  store double 0.000000e+00, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.83, %for.end.16
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %num.addr, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %for.body.19, label %for.end.85

for.body.19:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i32*, i32** %teams.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %20, i64 %idxprom20
  %21 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom22
  %wins24 = getelementptr inbounds %struct.info, %struct.info* %arrayidx23, i32 0, i32 0
  %22 = load i32, i32* %wins24, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32*, i32** %teams.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %24, i64 %idxprom25
  %25 = load i32, i32* %arrayidx26, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom27
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx28, i32 0, i32 1
  %26 = load i32, i32* %loses, align 4
  %add29 = add nsw i32 %22, %26
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %28 = load i32*, i32** %teams.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %28, i64 %idxprom30
  %29 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom32
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx33, i32 0, i32 2
  %30 = load i32, i32* %ties, align 4
  %add34 = add nsw i32 %add29, %30
  %cmp35 = icmp eq i32 %add34, 0
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.19
  br label %cond.end

cond.false:                                       ; preds = %for.body.19
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load i32*, i32** %teams.addr, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %32, i64 %idxprom36
  %33 = load i32, i32* %arrayidx37, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom38
  %wins40 = getelementptr inbounds %struct.info, %struct.info* %arrayidx39, i32 0, i32 0
  %34 = load i32, i32* %wins40, align 4
  %conv = sitofp i32 %34 to double
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %36 = load i32*, i32** %teams.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %36, i64 %idxprom41
  %37 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom43
  %ties45 = getelementptr inbounds %struct.info, %struct.info* %arrayidx44, i32 0, i32 2
  %38 = load i32, i32* %ties45, align 4
  %conv46 = sitofp i32 %38 to double
  %mul = fmul double 5.000000e-01, %conv46
  %add47 = fadd double %conv, %mul
  %39 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i32*, i32** %teams.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %40, i64 %idxprom48
  %41 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom50
  %wins52 = getelementptr inbounds %struct.info, %struct.info* %arrayidx51, i32 0, i32 0
  %42 = load i32, i32* %wins52, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %43 to i64
  %44 = load i32*, i32** %teams.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %44, i64 %idxprom53
  %45 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom55
  %loses57 = getelementptr inbounds %struct.info, %struct.info* %arrayidx56, i32 0, i32 1
  %46 = load i32, i32* %loses57, align 4
  %add58 = add nsw i32 %42, %46
  %47 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %47 to i64
  %48 = load i32*, i32** %teams.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %48, i64 %idxprom59
  %49 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @common_games, i32 0, i64 %idxprom61
  %ties63 = getelementptr inbounds %struct.info, %struct.info* %arrayidx62, i32 0, i32 2
  %50 = load i32, i32* %ties63, align 4
  %add64 = add nsw i32 %add58, %50
  %conv65 = sitofp i32 %add64 to double
  %div = fdiv double %add47, %conv65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %51 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %51 to i64
  %arrayidx67 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom66
  store double %cond, double* %arrayidx67, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom68
  %53 = load double, double* %arrayidx69, align 8
  %54 = load double, double* %best_pct, align 8
  %cmp70 = fcmp ogt double %53, %54
  br i1 %cmp70, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %cond.end
  %55 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %55 to i64
  %arrayidx74 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom73
  %56 = load double, double* %arrayidx74, align 8
  store double %56, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %cond.end
  %57 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %57 to i64
  %arrayidx77 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom76
  %58 = load double, double* %arrayidx77, align 8
  %59 = load double, double* %best_pct, align 8
  %cmp78 = fcmp oeq double %58, %59
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.end.75
  %60 = load i32, i32* %num_best, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %num_best, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.end.75
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %61 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.17

for.end.85:                                       ; preds = %for.cond.17
  %62 = load i32*, i32** %teams.addr, align 8
  %63 = load i32, i32* %num_best, align 4
  %64 = load i32, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i32 0
  %65 = load double, double* %best_pct, align 8
  call void @split_around(i32* %62, i32 %63, i32 %64, double* %arraydecay, double %65)
  %66 = load i32, i32* %num_best, align 4
  store i32 %66, i32* %retval
  br label %return

return:                                           ; preds = %for.end.85, %if.then.12
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @div_conf_rec(i32* %teams, i32 %num, i32 %which) #0 {
entry:
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best_pct = alloca double, align 8
  %pct = alloca [28 x double], align 16
  %num_best = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %which, i32* %which.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %which.addr, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom4
  %wins = getelementptr inbounds %struct.info, %struct.info* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %wins, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32*, i32** %teams.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom8
  %loses = getelementptr inbounds %struct.info, %struct.info* %arrayidx9, i32 0, i32 1
  %11 = load i32, i32* %loses, align 4
  %add = add nsw i32 %7, %11
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32*, i32** %teams.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom12
  %ties = getelementptr inbounds %struct.info, %struct.info* %arrayidx13, i32 0, i32 2
  %15 = load i32, i32* %ties, align 4
  %add14 = add nsw i32 %add, %15
  %cmp15 = icmp eq i32 %add14, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load i32*, i32** %teams.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 %idxprom16
  %18 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom18
  %wins20 = getelementptr inbounds %struct.info, %struct.info* %arrayidx19, i32 0, i32 0
  %19 = load i32, i32* %wins20, align 4
  %conv = sitofp i32 %19 to double
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %21 = load i32*, i32** %teams.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %21, i64 %idxprom21
  %22 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom23
  %ties25 = getelementptr inbounds %struct.info, %struct.info* %arrayidx24, i32 0, i32 2
  %23 = load i32, i32* %ties25, align 4
  %conv26 = sitofp i32 %23 to double
  %mul = fmul double 5.000000e-01, %conv26
  %add27 = fadd double %conv, %mul
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i32*, i32** %teams.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %25, i64 %idxprom28
  %26 = load i32, i32* %arrayidx29, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom30
  %wins32 = getelementptr inbounds %struct.info, %struct.info* %arrayidx31, i32 0, i32 0
  %27 = load i32, i32* %wins32, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32*, i32** %teams.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %29, i64 %idxprom33
  %30 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom35
  %loses37 = getelementptr inbounds %struct.info, %struct.info* %arrayidx36, i32 0, i32 1
  %31 = load i32, i32* %loses37, align 4
  %add38 = add nsw i32 %27, %31
  %32 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load i32*, i32** %teams.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %33, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom41
  %ties43 = getelementptr inbounds %struct.info, %struct.info* %arrayidx42, i32 0, i32 2
  %35 = load i32, i32* %ties43, align 4
  %add44 = add nsw i32 %add38, %35
  %conv45 = sitofp i32 %add44 to double
  %div = fdiv double %add27, %conv45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %36 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom46
  store double %cond, double* %arrayidx47, align 8
  br label %if.end.106

if.else:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %37 to i64
  %38 = load i32*, i32** %teams.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %38, i64 %idxprom48
  %39 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom50
  %wins52 = getelementptr inbounds %struct.info, %struct.info* %arrayidx51, i32 0, i32 0
  %40 = load i32, i32* %wins52, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load i32*, i32** %teams.addr, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %42, i64 %idxprom53
  %43 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %43 to i64
  %arrayidx56 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom55
  %loses57 = getelementptr inbounds %struct.info, %struct.info* %arrayidx56, i32 0, i32 1
  %44 = load i32, i32* %loses57, align 4
  %add58 = add nsw i32 %40, %44
  %45 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %45 to i64
  %46 = load i32*, i32** %teams.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %46, i64 %idxprom59
  %47 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %47 to i64
  %arrayidx62 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom61
  %ties63 = getelementptr inbounds %struct.info, %struct.info* %arrayidx62, i32 0, i32 2
  %48 = load i32, i32* %ties63, align 4
  %add64 = add nsw i32 %add58, %48
  %cmp65 = icmp eq i32 %add64, 0
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %if.else
  br label %cond.end.102

cond.false.68:                                    ; preds = %if.else
  %49 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %49 to i64
  %50 = load i32*, i32** %teams.addr, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %50, i64 %idxprom69
  %51 = load i32, i32* %arrayidx70, align 4
  %idxprom71 = sext i32 %51 to i64
  %arrayidx72 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom71
  %wins73 = getelementptr inbounds %struct.info, %struct.info* %arrayidx72, i32 0, i32 0
  %52 = load i32, i32* %wins73, align 4
  %conv74 = sitofp i32 %52 to double
  %53 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %53 to i64
  %54 = load i32*, i32** %teams.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %54, i64 %idxprom75
  %55 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom77
  %ties79 = getelementptr inbounds %struct.info, %struct.info* %arrayidx78, i32 0, i32 2
  %56 = load i32, i32* %ties79, align 4
  %conv80 = sitofp i32 %56 to double
  %mul81 = fmul double 5.000000e-01, %conv80
  %add82 = fadd double %conv74, %mul81
  %57 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %57 to i64
  %58 = load i32*, i32** %teams.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %58, i64 %idxprom83
  %59 = load i32, i32* %arrayidx84, align 4
  %idxprom85 = sext i32 %59 to i64
  %arrayidx86 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom85
  %wins87 = getelementptr inbounds %struct.info, %struct.info* %arrayidx86, i32 0, i32 0
  %60 = load i32, i32* %wins87, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %61 to i64
  %62 = load i32*, i32** %teams.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %62, i64 %idxprom88
  %63 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %63 to i64
  %arrayidx91 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom90
  %loses92 = getelementptr inbounds %struct.info, %struct.info* %arrayidx91, i32 0, i32 1
  %64 = load i32, i32* %loses92, align 4
  %add93 = add nsw i32 %60, %64
  %65 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %65 to i64
  %66 = load i32*, i32** %teams.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %66, i64 %idxprom94
  %67 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %67 to i64
  %arrayidx97 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom96
  %ties98 = getelementptr inbounds %struct.info, %struct.info* %arrayidx97, i32 0, i32 2
  %68 = load i32, i32* %ties98, align 4
  %add99 = add nsw i32 %add93, %68
  %conv100 = sitofp i32 %add99 to double
  %div101 = fdiv double %add82, %conv100
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.68, %cond.true.67
  %cond103 = phi double [ 0.000000e+00, %cond.true.67 ], [ %div101, %cond.false.68 ]
  %69 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %69 to i64
  %arrayidx105 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom104
  store double %cond103, double* %arrayidx105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %cond.end.102, %cond.end
  %70 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %70 to i64
  %arrayidx108 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom107
  %71 = load double, double* %arrayidx108, align 8
  %72 = load double, double* %best_pct, align 8
  %cmp109 = fcmp ogt double %71, %72
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %if.end.106
  %73 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %73 to i64
  %arrayidx113 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom112
  %74 = load double, double* %arrayidx113, align 8
  store double %74, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.106
  %75 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %75 to i64
  %arrayidx116 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom115
  %76 = load double, double* %arrayidx116, align 8
  %77 = load double, double* %best_pct, align 8
  %cmp117 = fcmp oeq double %76, %77
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.114
  %78 = load i32, i32* %num_best, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %num_best, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.end.114
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %79 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %79, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %80 = load i32*, i32** %teams.addr, align 8
  %81 = load i32, i32* %num_best, align 4
  %82 = load i32, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i32 0
  %83 = load double, double* %best_pct, align 8
  call void @split_around(i32* %80, i32 %81, i32 %82, double* %arraydecay, double %83)
  %84 = load i32, i32* %num_best, align 4
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define i32 @break_net_points(i32* %teams, i32 %num, i32 %which) #0 {
entry:
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %which.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best_pct = alloca double, align 8
  %pct = alloca [28 x double], align 16
  %num_best = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %which, i32* %which.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sgt i32 %0, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store double -1.000000e+04, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %which.addr, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom4
  %points_for = getelementptr inbounds %struct.info, %struct.info* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %points_for, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i32*, i32** %teams.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_div, i32 0, i64 %idxprom8
  %points_against = getelementptr inbounds %struct.info, %struct.info* %arrayidx9, i32 0, i32 4
  %11 = load i32, i32* %points_against, align 4
  %sub = sub nsw i32 %7, %11
  %conv = sitofp i32 %sub to double
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom10
  store double %conv, double* %arrayidx11, align 8
  br label %if.end.45

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %which.addr, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.14, label %if.else.29

if.then.14:                                       ; preds = %if.else
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i32*, i32** %teams.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom17
  %points_for19 = getelementptr inbounds %struct.info, %struct.info* %arrayidx18, i32 0, i32 3
  %17 = load i32, i32* %points_for19, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32*, i32** %teams.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %19, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info_wi_conf, i32 0, i64 %idxprom22
  %points_against24 = getelementptr inbounds %struct.info, %struct.info* %arrayidx23, i32 0, i32 4
  %21 = load i32, i32* %points_against24, align 4
  %sub25 = sub nsw i32 %17, %21
  %conv26 = sitofp i32 %sub25 to double
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom27
  store double %conv26, double* %arrayidx28, align 8
  br label %if.end.44

if.else.29:                                       ; preds = %if.else
  %23 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load i32*, i32** %teams.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %24, i64 %idxprom30
  %25 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom32
  %points_for34 = getelementptr inbounds %struct.info, %struct.info* %arrayidx33, i32 0, i32 3
  %26 = load i32, i32* %points_for34, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i32*, i32** %teams.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %28, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [29 x %struct.info], [29 x %struct.info]* @team_info, i32 0, i64 %idxprom37
  %points_against39 = getelementptr inbounds %struct.info, %struct.info* %arrayidx38, i32 0, i32 4
  %30 = load i32, i32* %points_against39, align 4
  %sub40 = sub nsw i32 %26, %30
  %conv41 = sitofp i32 %sub40 to double
  %31 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom42
  store double %conv41, double* %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.29, %if.then.14
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.3
  %32 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom46
  %33 = load double, double* %arrayidx47, align 8
  %34 = load double, double* %best_pct, align 8
  %cmp48 = fcmp ogt double %33, %34
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.45
  %35 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %35 to i64
  %arrayidx52 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom51
  %36 = load double, double* %arrayidx52, align 8
  store double %36, double* %best_pct, align 8
  store i32 0, i32* %num_best, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.45
  %37 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %arrayidx55 = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i64 %idxprom54
  %38 = load double, double* %arrayidx55, align 8
  %39 = load double, double* %best_pct, align 8
  %cmp56 = fcmp oeq double %38, %39
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  %40 = load i32, i32* %num_best, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %num_best, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %41 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %41, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32*, i32** %teams.addr, align 8
  %43 = load i32, i32* %num_best, align 4
  %44 = load i32, i32* %num.addr, align 4
  %arraydecay = getelementptr inbounds [28 x double], [28 x double]* %pct, i32 0, i32 0
  %45 = load double, double* %best_pct, align 8
  call void @split_around(i32* %42, i32 %43, i32 %44, double* %arraydecay, double %45)
  %46 = load i32, i32* %num_best, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define void @break_a_tie(i32* %teams, i32 %num, i32 %display) #0 {
entry:
  %teams.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %display.addr = alloca i32, align 4
  %ALL_SAME_DIV = alloca i32, align 4
  %value = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %display, i32* %display.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.114

if.end:                                           ; preds = %entry
  store i32 1, i32* %ALL_SAME_DIV, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %ALL_SAME_DIV, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %4 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 1
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32*, i32** %teams.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [29 x [2 x i32]], [29 x [2 x i32]]* @divisions, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 1
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %6, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %11 = phi i1 [ false, %for.body ], [ %cmp9, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %ALL_SAME_DIV, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %display.addr, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %14 = load i32, i32* %ALL_SAME_DIV, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = load i32*, i32** %teams.addr, align 8
  %17 = load i32, i32* %num.addr, align 4
  %18 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %15, i32* %16, i32 %17, i32 %18)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  %19 = load i32, i32* %ALL_SAME_DIV, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.12
  %20 = load i32, i32* %num.addr, align 4
  %cmp14 = icmp eq i32 %20, 2
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %if.end.12
  %21 = load i32*, i32** %teams.addr, align 8
  %22 = load i32, i32* %num.addr, align 4
  %call16 = call i32 @head_to_head(i32* %21, i32 %22)
  store i32 %call16, i32* %value, align 4
  %23 = load i32, i32* %value, align 4
  %24 = load i32, i32* %num.addr, align 4
  %cmp17 = icmp ne i32 %23, %24
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.then.15
  %25 = load i32, i32* %display.addr, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = load i32*, i32** %teams.addr, align 8
  %28 = load i32, i32* %value, align 4
  %29 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %26, i32* %27, i32 %28, i32 %29)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.18
  %30 = load i32*, i32** %teams.addr, align 8
  %31 = load i32, i32* %value, align 4
  %32 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %30, i32 %31, i32 %32)
  %33 = load i32, i32* %value, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load i32*, i32** %teams.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 %idxprom23
  %35 = load i32, i32* %num.addr, align 4
  %36 = load i32, i32* %value, align 4
  %sub = sub nsw i32 %35, %36
  %37 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx24, i32 %sub, i32 %37)
  br label %if.end.114

if.end.25:                                        ; preds = %if.then.15
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %38 = load i32*, i32** %teams.addr, align 8
  %39 = load i32, i32* %num.addr, align 4
  %call26 = call i32 @head_to_head_sweap(i32* %38, i32 %39)
  store i32 %call26, i32* %value, align 4
  %40 = load i32, i32* %value, align 4
  %41 = load i32, i32* %num.addr, align 4
  %cmp27 = icmp ne i32 %40, %41
  br i1 %cmp27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.else
  %42 = load i32, i32* %display.addr, align 4
  %tobool29 = icmp ne i32 %42, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.28
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = load i32*, i32** %teams.addr, align 8
  %45 = load i32, i32* %value, align 4
  %46 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %43, i32* %44, i32 %45, i32 %46)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.28
  %47 = load i32*, i32** %teams.addr, align 8
  %48 = load i32, i32* %value, align 4
  %49 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %47, i32 %48, i32 %49)
  %50 = load i32, i32* %value, align 4
  %idxprom33 = sext i32 %50 to i64
  %51 = load i32*, i32** %teams.addr, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %51, i64 %idxprom33
  %52 = load i32, i32* %num.addr, align 4
  %53 = load i32, i32* %value, align 4
  %sub35 = sub nsw i32 %52, %53
  %54 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx34, i32 %sub35, i32 %54)
  br label %if.end.114

if.end.36:                                        ; preds = %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.25
  %55 = load i32, i32* %ALL_SAME_DIV, align 4
  %tobool38 = icmp ne i32 %55, 0
  br i1 %tobool38, label %if.then.39, label %if.end.51

if.then.39:                                       ; preds = %if.end.37
  %56 = load i32*, i32** %teams.addr, align 8
  %57 = load i32, i32* %num.addr, align 4
  %call40 = call i32 @div_conf_rec(i32* %56, i32 %57, i32 1)
  store i32 %call40, i32* %value, align 4
  %58 = load i32, i32* %value, align 4
  %59 = load i32, i32* %num.addr, align 4
  %cmp41 = icmp ne i32 %58, %59
  br i1 %cmp41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.then.39
  %60 = load i32, i32* %display.addr, align 4
  %tobool43 = icmp ne i32 %60, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.42
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = load i32*, i32** %teams.addr, align 8
  %63 = load i32, i32* %value, align 4
  %64 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %61, i32* %62, i32 %63, i32 %64)
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.42
  %65 = load i32*, i32** %teams.addr, align 8
  %66 = load i32, i32* %value, align 4
  %67 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %65, i32 %66, i32 %67)
  %68 = load i32, i32* %value, align 4
  %idxprom47 = sext i32 %68 to i64
  %69 = load i32*, i32** %teams.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %69, i64 %idxprom47
  %70 = load i32, i32* %num.addr, align 4
  %71 = load i32, i32* %value, align 4
  %sub49 = sub nsw i32 %70, %71
  %72 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx48, i32 %sub49, i32 %72)
  br label %if.end.114

if.end.50:                                        ; preds = %if.then.39
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  %73 = load i32*, i32** %teams.addr, align 8
  %74 = load i32, i32* %num.addr, align 4
  %call52 = call i32 @div_conf_rec(i32* %73, i32 %74, i32 0)
  store i32 %call52, i32* %value, align 4
  %75 = load i32, i32* %value, align 4
  %76 = load i32, i32* %num.addr, align 4
  %cmp53 = icmp ne i32 %75, %76
  br i1 %cmp53, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %if.end.51
  %77 = load i32, i32* %display.addr, align 4
  %tobool55 = icmp ne i32 %77, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.then.54
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %79 = load i32*, i32** %teams.addr, align 8
  %80 = load i32, i32* %value, align 4
  %81 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %78, i32* %79, i32 %80, i32 %81)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.then.54
  %82 = load i32*, i32** %teams.addr, align 8
  %83 = load i32, i32* %value, align 4
  %84 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %82, i32 %83, i32 %84)
  %85 = load i32, i32* %value, align 4
  %idxprom59 = sext i32 %85 to i64
  %86 = load i32*, i32** %teams.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %86, i64 %idxprom59
  %87 = load i32, i32* %num.addr, align 4
  %88 = load i32, i32* %value, align 4
  %sub61 = sub nsw i32 %87, %88
  %89 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx60, i32 %sub61, i32 %89)
  br label %if.end.114

if.end.62:                                        ; preds = %if.end.51
  %90 = load i32*, i32** %teams.addr, align 8
  %91 = load i32, i32* %num.addr, align 4
  %call63 = call i32 @break_common(i32* %90, i32 %91)
  store i32 %call63, i32* %value, align 4
  %92 = load i32, i32* %value, align 4
  %93 = load i32, i32* %num.addr, align 4
  %cmp64 = icmp ne i32 %92, %93
  br i1 %cmp64, label %if.then.65, label %if.end.73

if.then.65:                                       ; preds = %if.end.62
  %94 = load i32, i32* %display.addr, align 4
  %tobool66 = icmp ne i32 %94, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.65
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = load i32*, i32** %teams.addr, align 8
  %97 = load i32, i32* %value, align 4
  %98 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %95, i32* %96, i32 %97, i32 %98)
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.65
  %99 = load i32*, i32** %teams.addr, align 8
  %100 = load i32, i32* %value, align 4
  %101 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %99, i32 %100, i32 %101)
  %102 = load i32, i32* %value, align 4
  %idxprom70 = sext i32 %102 to i64
  %103 = load i32*, i32** %teams.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %103, i64 %idxprom70
  %104 = load i32, i32* %num.addr, align 4
  %105 = load i32, i32* %value, align 4
  %sub72 = sub nsw i32 %104, %105
  %106 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx71, i32 %sub72, i32 %106)
  br label %if.end.114

if.end.73:                                        ; preds = %if.end.62
  %107 = load i32, i32* %ALL_SAME_DIV, align 4
  %tobool74 = icmp ne i32 %107, 0
  br i1 %tobool74, label %if.then.75, label %if.else.87

if.then.75:                                       ; preds = %if.end.73
  %108 = load i32*, i32** %teams.addr, align 8
  %109 = load i32, i32* %num.addr, align 4
  %call76 = call i32 @break_net_points(i32* %108, i32 %109, i32 1)
  store i32 %call76, i32* %value, align 4
  %110 = load i32, i32* %value, align 4
  %111 = load i32, i32* %num.addr, align 4
  %cmp77 = icmp ne i32 %110, %111
  br i1 %cmp77, label %if.then.78, label %if.end.86

if.then.78:                                       ; preds = %if.then.75
  %112 = load i32, i32* %display.addr, align 4
  %tobool79 = icmp ne i32 %112, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.78
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = load i32*, i32** %teams.addr, align 8
  %115 = load i32, i32* %value, align 4
  %116 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %113, i32* %114, i32 %115, i32 %116)
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.78
  %117 = load i32*, i32** %teams.addr, align 8
  %118 = load i32, i32* %value, align 4
  %119 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %117, i32 %118, i32 %119)
  %120 = load i32, i32* %value, align 4
  %idxprom83 = sext i32 %120 to i64
  %121 = load i32*, i32** %teams.addr, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %121, i64 %idxprom83
  %122 = load i32, i32* %num.addr, align 4
  %123 = load i32, i32* %value, align 4
  %sub85 = sub nsw i32 %122, %123
  %124 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx84, i32 %sub85, i32 %124)
  br label %if.end.114

if.end.86:                                        ; preds = %if.then.75
  br label %if.end.99

if.else.87:                                       ; preds = %if.end.73
  %125 = load i32*, i32** %teams.addr, align 8
  %126 = load i32, i32* %num.addr, align 4
  %call88 = call i32 @break_net_points(i32* %125, i32 %126, i32 0)
  store i32 %call88, i32* %value, align 4
  %127 = load i32, i32* %value, align 4
  %128 = load i32, i32* %num.addr, align 4
  %cmp89 = icmp ne i32 %127, %128
  br i1 %cmp89, label %if.then.90, label %if.end.98

if.then.90:                                       ; preds = %if.else.87
  %129 = load i32, i32* %display.addr, align 4
  %tobool91 = icmp ne i32 %129, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.then.90
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %131 = load i32*, i32** %teams.addr, align 8
  %132 = load i32, i32* %value, align 4
  %133 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %130, i32* %131, i32 %132, i32 %133)
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.then.90
  %134 = load i32*, i32** %teams.addr, align 8
  %135 = load i32, i32* %value, align 4
  %136 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %134, i32 %135, i32 %136)
  %137 = load i32, i32* %value, align 4
  %idxprom95 = sext i32 %137 to i64
  %138 = load i32*, i32** %teams.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %138, i64 %idxprom95
  %139 = load i32, i32* %num.addr, align 4
  %140 = load i32, i32* %value, align 4
  %sub97 = sub nsw i32 %139, %140
  %141 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx96, i32 %sub97, i32 %141)
  br label %if.end.114

if.end.98:                                        ; preds = %if.else.87
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.86
  %142 = load i32*, i32** %teams.addr, align 8
  %143 = load i32, i32* %num.addr, align 4
  %call100 = call i32 @break_net_points(i32* %142, i32 %143, i32 2)
  store i32 %call100, i32* %value, align 4
  %144 = load i32, i32* %value, align 4
  %145 = load i32, i32* %num.addr, align 4
  %cmp101 = icmp ne i32 %144, %145
  br i1 %cmp101, label %if.then.102, label %if.end.110

if.then.102:                                      ; preds = %if.end.99
  %146 = load i32, i32* %display.addr, align 4
  %tobool103 = icmp ne i32 %146, 0
  br i1 %tobool103, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.102
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %148 = load i32*, i32** %teams.addr, align 8
  %149 = load i32, i32* %value, align 4
  %150 = load i32, i32* %num.addr, align 4
  call void @display_split(%struct._IO_FILE* %147, i32* %148, i32 %149, i32 %150)
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.102
  %151 = load i32*, i32** %teams.addr, align 8
  %152 = load i32, i32* %value, align 4
  %153 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %151, i32 %152, i32 %153)
  %154 = load i32, i32* %value, align 4
  %idxprom107 = sext i32 %154 to i64
  %155 = load i32*, i32** %teams.addr, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %155, i64 %idxprom107
  %156 = load i32, i32* %num.addr, align 4
  %157 = load i32, i32* %value, align 4
  %sub109 = sub nsw i32 %156, %157
  %158 = load i32, i32* %display.addr, align 4
  call void @break_a_tie(i32* %arrayidx108, i32 %sub109, i32 %158)
  br label %if.end.114

if.end.110:                                       ; preds = %if.end.99
  %159 = load i32, i32* %display.addr, align 4
  %tobool111 = icmp ne i32 %159, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.110
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.114

if.end.114:                                       ; preds = %if.then, %if.end.22, %if.end.32, %if.end.46, %if.end.58, %if.end.69, %if.end.82, %if.end.94, %if.end.106, %if.then.112, %if.end.110
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_split(%struct._IO_FILE* %stream, i32* %teams, i32 %split, i32 %num) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %teams.addr = alloca i32*, align 8
  %split.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32* %teams, i32** %teams.addr, align 8
  store i32 %split, i32* %split.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %teams.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [30 x [2 x [15 x i8]]], [30 x [2 x [15 x i8]]]* @team, i32 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [2 x [15 x i8]], [2 x [15 x i8]]* %arrayidx2, i32 0, i64 1
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %arrayidx3, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay)
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %split.addr, align 4
  %sub = sub nsw i32 %7, 1
  %cmp4 = icmp eq i32 %6, %sub
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %split.addr, align 4
  %9 = load i32, i32* %num.addr, align 4
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
