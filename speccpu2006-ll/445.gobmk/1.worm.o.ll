; ModuleID = 'engine/worm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.influence_data = type opaque
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque

@stackp = external global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"engine/worm.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@.str.2 = private unnamed_addr constant [28 x i8] c"worm[pos].liberties == lib1\00", align 1
@delta = external global [8 x i32], align 16
@.str.3 = private unnamed_addr constant [37 x i8] c"board[pos2 + delta[k]] == board[pos]\00", align 1
@debug = external global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Worm at %1m has w1 %1m and w2 %1m, cutstone %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"make_worms\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"trying %1m\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"adding point of attack of %1m at %1m with code %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"adding point of defense of %1m at %1m with code %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"lunch found for %1m at %1m\0A\00", align 1
@disable_threat_computation = external global i32, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Worm %1m identified as inessential.\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"change_attack: %1m %1m %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"safe_stones[ii] == 0\00", align 1
@initial_black_influence = external global %struct.influence_data, align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"initial black influence\00", align 1
@initial_white_influence = external global %struct.influence_data, align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"initial white influence\00", align 1
@board_size = external global i32, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"There is no worm at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"*** worm at %1m:\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"color: %s; origin: %1m; size: %d; effective size: %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"liberties: %d order 2 liberties:%d order 3:%d order 4:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"no attack point, \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"attack point(s):\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c" %1m: %s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0A;\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"no defense point, \00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"defense point(s):\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"no attack threat point, \00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"attack threat point(s):\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"no defense threat point, \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"defense threat point(s):\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"lunch at %1m\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"cutstone: %d, cutstone2: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"genus: %d, \00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"inessential: YES, \00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"inessential: NO, \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"invincible: YES, \0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"invincible: NO, \0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"unconditional status ALIVE\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"unconditional status DEAD\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"unconditional status WHITE_BORDER\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"unconditional status BLACK_BORDER\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"unconditional status UNKNOWN\0A\00", align 1
@close_worms = external global [400 x [4 x i32]], align 16
@number_close_worms = external global [400 x i32], align 16
@close_black_worms = external global [400 x [4 x i32]], align 16
@number_close_black_worms = external global [400 x i32], align 16
@close_white_worms = external global [400 x [4 x i32]], align 16
@number_close_white_worms = external global [400 x i32], align 16
@do_compute_effective_worm_sizes.worms = internal global [400 x [36 x i32]] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [31 x i8] c"nworms[pos] < 2*(board_size-1)\00", align 1
@find_worm_attacks_and_defenses.libs = internal global [241 x i32] zeroinitializer, align 16
@verbose = external global i32, align 4
@.str.46 = private unnamed_addr constant [27 x i8] c"considering attack of %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"worm at %1m can be attacked at %1m\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"considering defense of %1m\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"worm at %1m can be defended at %1m\0A\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"worm at %1m can be defended at %1m with code %d\0A\00", align 1
@attpat_db = external global %struct.pattern_db, align 8
@transformation = external global [1369 x [8 x i32]], align 16
@.str.51 = private unnamed_addr constant [48 x i8] c"Attack pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"attack_callback\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"Attack pattern %s+%d found attack on %1m at %1m with code %d\0A\00", align 1
@defpat_db = external global %struct.pattern_db, align 8
@.str.54 = private unnamed_addr constant [49 x i8] c"Defense pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"defense_callback\00", align 1
@.str.56 = private unnamed_addr constant [64 x i8] c"Defense pattern %s+%d found defense of %1m at %1m with code %d\0A\00", align 1
@find_worm_threats.libs = internal global [241 x i32] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [17 x i8] c"threaten defense\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[str])\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"(board[str] != 3)\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"str == worm[str].origin\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(str)\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"IS_STONE(worm[str].color)\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"edge != ((void*)0)\00", align 1
@.str.65 = private unnamed_addr constant [125 x i8] c"border_color == 0 && ((pos == 0 && stones_on_board(2 | 1) == 0) || (pos != 0 && stones_on_board(2 | 1) == countstones(pos)))\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"mx[pos] == 0\00", align 1

; Function Attrs: nounwind uwtable
define void @make_worms() #0 {
entry:
  %pos = alloca i32, align 4
  %lib1 = alloca i32, align 4
  %lib2 = alloca i32, align 4
  %lib3 = alloca i32, align 4
  %lib4 = alloca i32, align 4
  %w1 = alloca i32, align 4
  %w2 = alloca i32, align 4
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %color = alloca i32, align 4
  %str = alloca i32, align 4
  %moves_to_try = alloca [400 x i32], align 16
  %dcode = alloca i32, align 4
  %attack_works = alloca i32, align 4
  %this_dcode = alloca i32, align 4
  %acode = alloca i32, align 4
  %defense_works = alloca i32, align 4
  %this_acode = alloca i32, align 4
  %lunch = alloca i32, align 4
  %edge = alloca i32, align 4
  %border_color = alloca i32, align 4
  call void @build_worms()
  %call = call i32 @stones_on_board(i32 3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.759

if.end:                                           ; preds = %entry
  call void @compute_effective_worm_sizes()
  call void @compute_unconditional_status()
  call void @find_worm_attacks_and_defenses()
  %0 = load i32, i32* @stackp, align 4
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  br label %if.end.3

if.else:                                          ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %1 = load i32, i32* %pos, align 4
  %cmp4 = icmp slt i32 %1, 400
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %5 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %call12 = call i32 @is_worm_origin(i32 %6, i32 %7)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %land.lhs.true
  %8 = load i32, i32* %pos, align 4
  call void @ping_cave(i32 %8, i32* %lib1, i32* %lib2, i32* %lib3, i32* %lib4)
  %9 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom14
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx15, i32 0, i32 4
  %10 = load i32, i32* %liberties, align 4
  %11 = load i32, i32* %lib1, align 4
  %cmp16 = icmp eq i32 %10, %11
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.then.13
  br label %if.end.20

if.else.19:                                       ; preds = %if.then.13
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.18
  %12 = load i32, i32* %lib2, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %liberties2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 5
  store i32 %12, i32* %liberties2, align 4
  %14 = load i32, i32* %lib3, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom23
  %liberties3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx24, i32 0, i32 6
  store i32 %14, i32* %liberties3, align 4
  %16 = load i32, i32* %lib4, align 4
  %17 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom25
  %liberties4 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx26, i32 0, i32 7
  store i32 %16, i32* %liberties4, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom27
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx28, i32 0, i32 9
  store i32 0, i32* %cutstone, align 4
  %19 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 10
  store i32 0, i32* %cutstone2, align 4
  %20 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %20)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.20, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %21 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* @stackp, align 4
  %cmp32 = icmp eq i32 %22, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %for.end
  br label %if.end.36

if.else.35:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  store i32 21, i32* %pos, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.149, %if.end.36
  %23 = load i32, i32* %pos, align 4
  %cmp38 = icmp slt i32 %23, 400
  br i1 %cmp38, label %for.body.40, label %for.end.151

for.body.40:                                      ; preds = %for.cond.37
  store i32 0, i32* %w1, align 4
  store i32 0, i32* %w2, align 4
  %24 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %25 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %25 to i32
  %cmp44 = icmp eq i32 %conv43, 1
  br i1 %cmp44, label %lor.lhs.false.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %for.body.40
  %26 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %27 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %27 to i32
  %cmp50 = icmp eq i32 %conv49, 2
  br i1 %cmp50, label %lor.lhs.false.52, label %if.then.55

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.46, %for.body.40
  %28 = load i32, i32* %pos, align 4
  %29 = load i32, i32* %pos, align 4
  %call53 = call i32 @is_worm_origin(i32 %28, i32 %29)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %lor.lhs.false.52, %lor.lhs.false.46
  br label %for.inc.149

if.end.56:                                        ; preds = %lor.lhs.false.52
  store i32 21, i32* %pos2, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.126, %if.end.56
  %30 = load i32, i32* %pos2, align 4
  %cmp58 = icmp slt i32 %30, 400
  br i1 %cmp58, label %for.body.60, label %for.end.128

for.body.60:                                      ; preds = %for.cond.57
  %31 = load i32, i32* %pos2, align 4
  %idxprom61 = sext i32 %31 to i64
  %arrayidx62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom61
  %32 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %32 to i32
  %33 = load i32, i32* %pos, align 4
  %idxprom64 = sext i32 %33 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %34 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %34 to i32
  %sub = sub nsw i32 3, %conv66
  %cmp67 = icmp ne i32 %conv63, %sub
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.60
  br label %for.inc.126

if.end.70:                                        ; preds = %for.body.60
  store i32 0, i32* %k, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.123, %if.end.70
  %35 = load i32, i32* %k, align 4
  %cmp72 = icmp slt i32 %35, 4
  br i1 %cmp72, label %for.body.74, label %for.end.125

for.body.74:                                      ; preds = %for.cond.71
  %36 = load i32, i32* %pos2, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %37 to i64
  %arrayidx76 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom75
  %38 = load i32, i32* %arrayidx76, align 4
  %add = add nsw i32 %36, %38
  %idxprom77 = sext i32 %add to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %39 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %39 to i32
  %cmp80 = icmp ne i32 %conv79, 3
  br i1 %cmp80, label %lor.lhs.false.82, label %if.then.90

lor.lhs.false.82:                                 ; preds = %for.body.74
  %40 = load i32, i32* %pos2, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %41 to i64
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom83
  %42 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %40, %42
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom86
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx87, i32 0, i32 3
  %43 = load i32, i32* %origin, align 4
  %44 = load i32, i32* %pos, align 4
  %cmp88 = icmp ne i32 %43, %44
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %lor.lhs.false.82, %for.body.74
  br label %for.inc.123

if.end.91:                                        ; preds = %lor.lhs.false.82
  %45 = load i32, i32* %pos2, align 4
  %46 = load i32, i32* %k, align 4
  %idxprom92 = sext i32 %46 to i64
  %arrayidx93 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom92
  %47 = load i32, i32* %arrayidx93, align 4
  %add94 = add nsw i32 %45, %47
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom95
  %48 = load i8, i8* %arrayidx96, align 1
  %conv97 = zext i8 %48 to i32
  %49 = load i32, i32* %pos, align 4
  %idxprom98 = sext i32 %49 to i64
  %arrayidx99 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom98
  %50 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %50 to i32
  %cmp101 = icmp eq i32 %conv97, %conv100
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.end.91
  br label %if.end.107

if.else.104:                                      ; preds = %if.end.91
  %51 = load i32, i32* %pos, align 4
  %div = sdiv i32 %51, 20
  %sub105 = sub nsw i32 %div, 1
  %52 = load i32, i32* %pos, align 4
  %rem = srem i32 %52, 20
  %sub106 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i32 %sub105, i32 %sub106)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  %53 = load i32, i32* %w1, align 4
  %cmp108 = icmp eq i32 %53, 0
  br i1 %cmp108, label %if.then.110, label %if.else.114

if.then.110:                                      ; preds = %if.end.107
  %54 = load i32, i32* %pos2, align 4
  %idxprom111 = sext i32 %54 to i64
  %arrayidx112 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom111
  %origin113 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx112, i32 0, i32 3
  %55 = load i32, i32* %origin113, align 4
  store i32 %55, i32* %w1, align 4
  br label %if.end.122

if.else.114:                                      ; preds = %if.end.107
  %56 = load i32, i32* %pos2, align 4
  %57 = load i32, i32* %w1, align 4
  %call115 = call i32 @is_same_worm(i32 %56, i32 %57)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.121, label %if.then.117

if.then.117:                                      ; preds = %if.else.114
  %58 = load i32, i32* %pos2, align 4
  %idxprom118 = sext i32 %58 to i64
  %arrayidx119 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom118
  %origin120 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx119, i32 0, i32 3
  %59 = load i32, i32* %origin120, align 4
  store i32 %59, i32* %w2, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.else.114
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.110
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122, %if.then.90
  %60 = load i32, i32* %k, align 4
  %inc124 = add nsw i32 %60, 1
  store i32 %inc124, i32* %k, align 4
  br label %for.cond.71

for.end.125:                                      ; preds = %for.cond.71
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.125, %if.then.69
  %61 = load i32, i32* %pos2, align 4
  %inc127 = add nsw i32 %61, 1
  store i32 %inc127, i32* %pos2, align 4
  br label %for.cond.57

for.end.128:                                      ; preds = %for.cond.57
  %62 = load i32, i32* %w2, align 4
  %cmp129 = icmp ne i32 %62, 0
  br i1 %cmp129, label %if.then.131, label %if.end.148

if.then.131:                                      ; preds = %for.end.128
  %63 = load i32, i32* %pos, align 4
  %idxprom132 = sext i32 %63 to i64
  %arrayidx133 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom132
  %cutstone134 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx133, i32 0, i32 9
  store i32 2, i32* %cutstone134, align 4
  %64 = load i32, i32* %w1, align 4
  %65 = load i32, i32* %w2, align 4
  %call135 = call i32 @count_common_libs(i32 %64, i32 %65)
  %cmp136 = icmp sgt i32 %call135, 0
  br i1 %cmp136, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %if.then.131
  %66 = load i32, i32* %pos, align 4
  %idxprom139 = sext i32 %66 to i64
  %arrayidx140 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom139
  %cutstone141 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx140, i32 0, i32 9
  store i32 1, i32* %cutstone141, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %if.then.131
  %67 = load i32, i32* @debug, align 4
  %and = and i32 %67, 1024
  %tobool143 = icmp ne i32 %and, 0
  br i1 %tobool143, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.142
  br label %cond.end

cond.false:                                       ; preds = %if.end.142
  %68 = load i32, i32* %pos, align 4
  %69 = load i32, i32* %w1, align 4
  %70 = load i32, i32* %w2, align 4
  %71 = load i32, i32* %pos, align 4
  %idxprom144 = sext i32 %71 to i64
  %arrayidx145 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom144
  %cutstone146 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx145, i32 0, i32 9
  %72 = load i32, i32* %cutstone146, align 4
  %call147 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i32 %68, i32 %69, i32 %70, i32 %72)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.148

if.end.148:                                       ; preds = %cond.end, %for.end.128
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148, %if.then.55
  %73 = load i32, i32* %pos, align 4
  %inc150 = add nsw i32 %73, 1
  store i32 %inc150, i32* %pos, align 4
  br label %for.cond.37

for.end.151:                                      ; preds = %for.cond.37
  %74 = load i32, i32* @stackp, align 4
  %cmp152 = icmp eq i32 %74, 0
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %for.end.151
  br label %if.end.156

if.else.155:                                      ; preds = %for.end.151
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.155, %if.then.154
  store i32 21, i32* %pos, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.180, %if.end.156
  %75 = load i32, i32* %pos, align 4
  %cmp158 = icmp slt i32 %75, 400
  br i1 %cmp158, label %for.body.160, label %for.end.182

for.body.160:                                     ; preds = %for.cond.157
  %76 = load i32, i32* %pos, align 4
  %idxprom161 = sext i32 %76 to i64
  %arrayidx162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom161
  %77 = load i8, i8* %arrayidx162, align 1
  %conv163 = zext i8 %77 to i32
  %cmp164 = icmp eq i32 %conv163, 1
  br i1 %cmp164, label %land.lhs.true.172, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %for.body.160
  %78 = load i32, i32* %pos, align 4
  %idxprom167 = sext i32 %78 to i64
  %arrayidx168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom167
  %79 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %79 to i32
  %cmp170 = icmp eq i32 %conv169, 2
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.179

land.lhs.true.172:                                ; preds = %lor.lhs.false.166, %for.body.160
  %80 = load i32, i32* %pos, align 4
  %81 = load i32, i32* %pos, align 4
  %call173 = call i32 @is_worm_origin(i32 %80, i32 %81)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.179

if.then.175:                                      ; preds = %land.lhs.true.172
  %82 = load i32, i32* %pos, align 4
  %call176 = call i32 @genus(i32 %82)
  %83 = load i32, i32* %pos, align 4
  %idxprom177 = sext i32 %83 to i64
  %arrayidx178 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom177
  %genus = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx178, i32 0, i32 11
  store i32 %call176, i32* %genus, align 4
  %84 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %84)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.175, %land.lhs.true.172, %lor.lhs.false.166
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %85 = load i32, i32* %pos, align 4
  %inc181 = add nsw i32 %85, 1
  store i32 %inc181, i32* %pos, align 4
  br label %for.cond.157

for.end.182:                                      ; preds = %for.cond.157
  %86 = load i32, i32* @stackp, align 4
  %cmp183 = icmp eq i32 %86, 0
  br i1 %cmp183, label %if.then.185, label %if.else.186

if.then.185:                                      ; preds = %for.end.182
  br label %if.end.187

if.else.186:                                      ; preds = %for.end.182
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.186, %if.then.185
  %87 = load i32, i32* @stackp, align 4
  %cmp188 = icmp eq i32 %87, 0
  br i1 %cmp188, label %if.then.190, label %if.else.191

if.then.190:                                      ; preds = %if.end.187
  br label %if.end.192

if.else.191:                                      ; preds = %if.end.187
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.191, %if.then.190
  %88 = bitcast [400 x i32]* %moves_to_try to i8*
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %str, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.228, %if.end.192
  %89 = load i32, i32* %str, align 4
  %cmp194 = icmp slt i32 %89, 400
  br i1 %cmp194, label %for.body.196, label %for.end.230

for.body.196:                                     ; preds = %for.cond.193
  %90 = load i32, i32* %str, align 4
  %idxprom197 = sext i32 %90 to i64
  %arrayidx198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom197
  %91 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %91 to i32
  %cmp200 = icmp eq i32 %conv199, 1
  br i1 %cmp200, label %land.lhs.true.208, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %for.body.196
  %92 = load i32, i32* %str, align 4
  %idxprom203 = sext i32 %92 to i64
  %arrayidx204 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom203
  %93 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %93 to i32
  %cmp206 = icmp eq i32 %conv205, 2
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.227

land.lhs.true.208:                                ; preds = %lor.lhs.false.202, %for.body.196
  %94 = load i32, i32* %str, align 4
  %95 = load i32, i32* %str, align 4
  %call209 = call i32 @is_worm_origin(i32 %94, i32 %95)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.227

if.then.211:                                      ; preds = %land.lhs.true.208
  %96 = load i32, i32* %str, align 4
  %idxprom212 = sext i32 %96 to i64
  %arrayidx213 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom212
  %97 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %97 to i32
  store i32 %conv214, i32* %color, align 4
  %98 = load i32, i32* %color, align 4
  %99 = load i32, i32* %str, align 4
  %idxprom215 = sext i32 %99 to i64
  %arrayidx216 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom215
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx216, i32 0, i32 17
  %arrayidx217 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %100 = load i32, i32* %arrayidx217, align 4
  %idxprom218 = sext i32 %100 to i64
  %arrayidx219 = getelementptr inbounds [400 x i32], [400 x i32]* %moves_to_try, i32 0, i64 %idxprom218
  %101 = load i32, i32* %arrayidx219, align 4
  %or = or i32 %101, %98
  store i32 %or, i32* %arrayidx219, align 4
  %102 = load i32, i32* %color, align 4
  %sub220 = sub nsw i32 3, %102
  %103 = load i32, i32* %str, align 4
  %idxprom221 = sext i32 %103 to i64
  %arrayidx222 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom221
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx222, i32 0, i32 15
  %arrayidx223 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %104 = load i32, i32* %arrayidx223, align 4
  %idxprom224 = sext i32 %104 to i64
  %arrayidx225 = getelementptr inbounds [400 x i32], [400 x i32]* %moves_to_try, i32 0, i64 %idxprom224
  %105 = load i32, i32* %arrayidx225, align 4
  %or226 = or i32 %105, %sub220
  store i32 %or226, i32* %arrayidx225, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.211, %land.lhs.true.208, %lor.lhs.false.202
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %106 = load i32, i32* %str, align 4
  %inc229 = add nsw i32 %106, 1
  store i32 %inc229, i32* %str, align 4
  br label %for.cond.193

for.end.230:                                      ; preds = %for.cond.193
  store i32 21, i32* %pos, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.431, %for.end.230
  %107 = load i32, i32* %pos, align 4
  %cmp232 = icmp slt i32 %107, 400
  br i1 %cmp232, label %for.body.234, label %for.end.433

for.body.234:                                     ; preds = %for.cond.231
  %108 = load i32, i32* %pos, align 4
  %idxprom235 = sext i32 %108 to i64
  %arrayidx236 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom235
  %109 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %109 to i32
  %cmp238 = icmp ne i32 %conv237, 3
  br i1 %cmp238, label %if.end.241, label %if.then.240

if.then.240:                                      ; preds = %for.body.234
  br label %for.inc.431

if.end.241:                                       ; preds = %for.body.234
  store i32 1, i32* %color, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.428, %if.end.241
  %110 = load i32, i32* %color, align 4
  %cmp243 = icmp sle i32 %110, 2
  br i1 %cmp243, label %for.body.245, label %for.end.430

for.body.245:                                     ; preds = %for.cond.242
  %111 = load i32, i32* %pos, align 4
  %idxprom246 = sext i32 %111 to i64
  %arrayidx247 = getelementptr inbounds [400 x i32], [400 x i32]* %moves_to_try, i32 0, i64 %idxprom246
  %112 = load i32, i32* %arrayidx247, align 4
  %113 = load i32, i32* %color, align 4
  %and248 = and i32 %112, %113
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.end.251, label %if.then.250

if.then.250:                                      ; preds = %for.body.245
  br label %for.inc.428

if.end.251:                                       ; preds = %for.body.245
  %114 = load i32, i32* %pos, align 4
  %115 = load i32, i32* %color, align 4
  %call252 = call i32 @trymove(i32 %114, i32 %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.end.255, label %if.then.254

if.then.254:                                      ; preds = %if.end.251
  br label %for.inc.428

if.end.255:                                       ; preds = %if.end.251
  %116 = load i32, i32* @debug, align 4
  %and256 = and i32 %116, 1024
  %tobool257 = icmp ne i32 %and256, 0
  br i1 %tobool257, label %cond.false.259, label %cond.true.258

cond.true.258:                                    ; preds = %if.end.255
  br label %cond.end.261

cond.false.259:                                   ; preds = %if.end.255
  %117 = load i32, i32* %pos, align 4
  %call260 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 %117)
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.259, %cond.true.258
  call void @increase_depth_values()
  store i32 21, i32* %str, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.425, %cond.end.261
  %118 = load i32, i32* %str, align 4
  %cmp263 = icmp slt i32 %118, 400
  br i1 %cmp263, label %for.body.265, label %for.end.427

for.body.265:                                     ; preds = %for.cond.262
  %119 = load i32, i32* %str, align 4
  %idxprom266 = sext i32 %119 to i64
  %arrayidx267 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom266
  %120 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %120 to i32
  %cmp269 = icmp eq i32 %conv268, 1
  br i1 %cmp269, label %lor.lhs.false.277, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %for.body.265
  %121 = load i32, i32* %str, align 4
  %idxprom272 = sext i32 %121 to i64
  %arrayidx273 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom272
  %122 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %122 to i32
  %cmp275 = icmp eq i32 %conv274, 2
  br i1 %cmp275, label %lor.lhs.false.277, label %if.then.280

lor.lhs.false.277:                                ; preds = %lor.lhs.false.271, %for.body.265
  %123 = load i32, i32* %str, align 4
  %124 = load i32, i32* %str, align 4
  %call278 = call i32 @is_worm_origin(i32 %123, i32 %124)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %lor.lhs.false.277, %lor.lhs.false.271
  br label %for.inc.425

if.end.281:                                       ; preds = %lor.lhs.false.277
  %125 = load i32, i32* %str, align 4
  %idxprom282 = sext i32 %125 to i64
  %arrayidx283 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom282
  %color284 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx283, i32 0, i32 0
  %126 = load i32, i32* %color284, align 4
  %127 = load i32, i32* %color, align 4
  %sub285 = sub nsw i32 3, %127
  %cmp286 = icmp eq i32 %126, %sub285
  br i1 %cmp286, label %land.lhs.true.288, label %if.else.351

land.lhs.true.288:                                ; preds = %if.end.281
  %128 = load i32, i32* %str, align 4
  %idxprom289 = sext i32 %128 to i64
  %arrayidx290 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom289
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx290, i32 0, i32 16
  %arrayidx291 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %129 = load i32, i32* %arrayidx291, align 4
  %cmp292 = icmp ne i32 %129, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.else.351

land.lhs.true.294:                                ; preds = %land.lhs.true.288
  %130 = load i32, i32* %str, align 4
  %idxprom295 = sext i32 %130 to i64
  %arrayidx296 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom295
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx296, i32 0, i32 18
  %arrayidx297 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %131 = load i32, i32* %arrayidx297, align 4
  %cmp298 = icmp ne i32 %131, 0
  br i1 %cmp298, label %if.then.300, label %if.else.351

if.then.300:                                      ; preds = %land.lhs.true.294
  %132 = load i32, i32* %str, align 4
  %call301 = call i32 @find_defense(i32 %132, i32* null)
  store i32 %call301, i32* %dcode, align 4
  %133 = load i32, i32* %dcode, align 4
  %134 = load i32, i32* %str, align 4
  %idxprom302 = sext i32 %134 to i64
  %arrayidx303 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom302
  %defense_codes304 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx303, i32 0, i32 18
  %arrayidx305 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes304, i32 0, i64 0
  %135 = load i32, i32* %arrayidx305, align 4
  %cmp306 = icmp slt i32 %133, %135
  br i1 %cmp306, label %if.then.308, label %if.end.350

if.then.308:                                      ; preds = %if.then.300
  store i32 1, i32* %attack_works, align 4
  %136 = load i32, i32* %str, align 4
  %idxprom309 = sext i32 %136 to i64
  %arrayidx310 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom309
  %defense_codes311 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx310, i32 0, i32 18
  %arrayidx312 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes311, i32 0, i64 0
  %137 = load i32, i32* %arrayidx312, align 4
  %cmp313 = icmp ne i32 %137, 0
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.338

land.lhs.true.315:                                ; preds = %if.then.308
  %138 = load i32, i32* %str, align 4
  %idxprom316 = sext i32 %138 to i64
  %arrayidx317 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom316
  %defense_points318 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx317, i32 0, i32 17
  %arrayidx319 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points318, i32 0, i64 0
  %139 = load i32, i32* %arrayidx319, align 4
  %140 = load i32, i32* %color, align 4
  %sub320 = sub nsw i32 3, %140
  %call321 = call i32 @trymove(i32 %139, i32 %sub320, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.then.323, label %if.end.338

if.then.323:                                      ; preds = %land.lhs.true.315
  %141 = load i32, i32* %str, align 4
  %call324 = call i32 @attack(i32 %141, i32* null)
  %sub325 = sub nsw i32 5, %call324
  store i32 %sub325, i32* %this_dcode, align 4
  %142 = load i32, i32* %this_dcode, align 4
  %143 = load i32, i32* %dcode, align 4
  %cmp326 = icmp sgt i32 %142, %143
  br i1 %cmp326, label %if.then.328, label %if.end.337

if.then.328:                                      ; preds = %if.then.323
  %144 = load i32, i32* %this_dcode, align 4
  store i32 %144, i32* %dcode, align 4
  %145 = load i32, i32* %dcode, align 4
  %146 = load i32, i32* %str, align 4
  %idxprom329 = sext i32 %146 to i64
  %arrayidx330 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom329
  %defense_codes331 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx330, i32 0, i32 18
  %arrayidx332 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes331, i32 0, i64 0
  %147 = load i32, i32* %arrayidx332, align 4
  %cmp333 = icmp sge i32 %145, %147
  br i1 %cmp333, label %if.then.335, label %if.end.336

if.then.335:                                      ; preds = %if.then.328
  store i32 0, i32* %attack_works, align 4
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.335, %if.then.328
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.then.323
  call void @popgo()
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %land.lhs.true.315, %if.then.308
  %148 = load i32, i32* %attack_works, align 4
  %tobool339 = icmp ne i32 %148, 0
  br i1 %tobool339, label %if.then.340, label %if.end.349

if.then.340:                                      ; preds = %if.end.338
  %149 = load i32, i32* @debug, align 4
  %and341 = and i32 %149, 1024
  %tobool342 = icmp ne i32 %and341, 0
  br i1 %tobool342, label %cond.false.344, label %cond.true.343

cond.true.343:                                    ; preds = %if.then.340
  br label %cond.end.347

cond.false.344:                                   ; preds = %if.then.340
  %150 = load i32, i32* %str, align 4
  %151 = load i32, i32* %pos, align 4
  %152 = load i32, i32* %dcode, align 4
  %sub345 = sub nsw i32 5, %152
  %call346 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0), i32 %150, i32 %151, i32 %sub345)
  br label %cond.end.347

cond.end.347:                                     ; preds = %cond.false.344, %cond.true.343
  %153 = load i32, i32* %str, align 4
  %154 = load i32, i32* %pos, align 4
  %155 = load i32, i32* %dcode, align 4
  %sub348 = sub nsw i32 5, %155
  call void @change_attack(i32 %153, i32 %154, i32 %sub348)
  br label %if.end.349

if.end.349:                                       ; preds = %cond.end.347, %if.end.338
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.then.300
  br label %if.end.424

if.else.351:                                      ; preds = %land.lhs.true.294, %land.lhs.true.288, %if.end.281
  %156 = load i32, i32* %str, align 4
  %idxprom352 = sext i32 %156 to i64
  %arrayidx353 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom352
  %color354 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx353, i32 0, i32 0
  %157 = load i32, i32* %color354, align 4
  %158 = load i32, i32* %color, align 4
  %cmp355 = icmp eq i32 %157, %158
  br i1 %cmp355, label %land.lhs.true.357, label %if.end.423

land.lhs.true.357:                                ; preds = %if.else.351
  %159 = load i32, i32* %str, align 4
  %idxprom358 = sext i32 %159 to i64
  %arrayidx359 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom358
  %attack_codes360 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx359, i32 0, i32 16
  %arrayidx361 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes360, i32 0, i64 0
  %160 = load i32, i32* %arrayidx361, align 4
  %cmp362 = icmp ne i32 %160, 0
  br i1 %cmp362, label %if.then.364, label %if.end.423

if.then.364:                                      ; preds = %land.lhs.true.357
  %161 = load i32, i32* %str, align 4
  %call365 = call i32 @attack(i32 %161, i32* null)
  store i32 %call365, i32* %acode, align 4
  %162 = load i32, i32* %acode, align 4
  %163 = load i32, i32* %str, align 4
  %idxprom366 = sext i32 %163 to i64
  %arrayidx367 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom366
  %attack_codes368 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx367, i32 0, i32 16
  %arrayidx369 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes368, i32 0, i64 0
  %164 = load i32, i32* %arrayidx369, align 4
  %cmp370 = icmp slt i32 %162, %164
  br i1 %cmp370, label %if.then.372, label %if.end.422

if.then.372:                                      ; preds = %if.then.364
  store i32 1, i32* %defense_works, align 4
  %165 = load i32, i32* %str, align 4
  %idxprom373 = sext i32 %165 to i64
  %arrayidx374 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom373
  %attack_codes375 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx374, i32 0, i32 16
  %arrayidx376 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes375, i32 0, i64 0
  %166 = load i32, i32* %arrayidx376, align 4
  %cmp377 = icmp ne i32 %166, 0
  br i1 %cmp377, label %land.lhs.true.379, label %if.end.410

land.lhs.true.379:                                ; preds = %if.then.372
  %167 = load i32, i32* %str, align 4
  %idxprom380 = sext i32 %167 to i64
  %arrayidx381 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom380
  %attack_points382 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx381, i32 0, i32 15
  %arrayidx383 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points382, i32 0, i64 0
  %168 = load i32, i32* %arrayidx383, align 4
  %169 = load i32, i32* %color, align 4
  %sub384 = sub nsw i32 3, %169
  %call385 = call i32 @trymove(i32 %168, i32 %sub384, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool386 = icmp ne i32 %call385, 0
  br i1 %tobool386, label %if.then.387, label %if.end.410

if.then.387:                                      ; preds = %land.lhs.true.379
  %170 = load i32, i32* %str, align 4
  %idxprom388 = sext i32 %170 to i64
  %arrayidx389 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom388
  %171 = load i8, i8* %arrayidx389, align 1
  %conv390 = zext i8 %171 to i32
  %cmp391 = icmp eq i32 %conv390, 0
  br i1 %cmp391, label %if.then.393, label %if.else.394

if.then.393:                                      ; preds = %if.then.387
  store i32 5, i32* %this_acode, align 4
  br label %if.end.397

if.else.394:                                      ; preds = %if.then.387
  %172 = load i32, i32* %str, align 4
  %call395 = call i32 @find_defense(i32 %172, i32* null)
  %sub396 = sub nsw i32 5, %call395
  store i32 %sub396, i32* %this_acode, align 4
  br label %if.end.397

if.end.397:                                       ; preds = %if.else.394, %if.then.393
  %173 = load i32, i32* %this_acode, align 4
  %174 = load i32, i32* %acode, align 4
  %cmp398 = icmp sgt i32 %173, %174
  br i1 %cmp398, label %if.then.400, label %if.end.409

if.then.400:                                      ; preds = %if.end.397
  %175 = load i32, i32* %this_acode, align 4
  store i32 %175, i32* %acode, align 4
  %176 = load i32, i32* %acode, align 4
  %177 = load i32, i32* %str, align 4
  %idxprom401 = sext i32 %177 to i64
  %arrayidx402 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom401
  %attack_codes403 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx402, i32 0, i32 16
  %arrayidx404 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes403, i32 0, i64 0
  %178 = load i32, i32* %arrayidx404, align 4
  %cmp405 = icmp sge i32 %176, %178
  br i1 %cmp405, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.then.400
  store i32 0, i32* %defense_works, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.then.400
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.end.397
  call void @popgo()
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %land.lhs.true.379, %if.then.372
  %179 = load i32, i32* %defense_works, align 4
  %tobool411 = icmp ne i32 %179, 0
  br i1 %tobool411, label %if.then.412, label %if.end.421

if.then.412:                                      ; preds = %if.end.410
  %180 = load i32, i32* @debug, align 4
  %and413 = and i32 %180, 1024
  %tobool414 = icmp ne i32 %and413, 0
  br i1 %tobool414, label %cond.false.416, label %cond.true.415

cond.true.415:                                    ; preds = %if.then.412
  br label %cond.end.419

cond.false.416:                                   ; preds = %if.then.412
  %181 = load i32, i32* %str, align 4
  %182 = load i32, i32* %pos, align 4
  %183 = load i32, i32* %acode, align 4
  %sub417 = sub nsw i32 5, %183
  %call418 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i32 %181, i32 %182, i32 %sub417)
  br label %cond.end.419

cond.end.419:                                     ; preds = %cond.false.416, %cond.true.415
  %184 = load i32, i32* %str, align 4
  %185 = load i32, i32* %pos, align 4
  %186 = load i32, i32* %acode, align 4
  %sub420 = sub nsw i32 5, %186
  call void @change_defense(i32 %184, i32 %185, i32 %sub420)
  br label %if.end.421

if.end.421:                                       ; preds = %cond.end.419, %if.end.410
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.then.364
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %land.lhs.true.357, %if.else.351
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.350
  br label %for.inc.425

for.inc.425:                                      ; preds = %if.end.424, %if.then.280
  %187 = load i32, i32* %str, align 4
  %inc426 = add nsw i32 %187, 1
  store i32 %inc426, i32* %str, align 4
  br label %for.cond.262

for.end.427:                                      ; preds = %for.cond.262
  call void @decrease_depth_values()
  call void @popgo()
  br label %for.inc.428

for.inc.428:                                      ; preds = %for.end.427, %if.then.254, %if.then.250
  %188 = load i32, i32* %color, align 4
  %inc429 = add nsw i32 %188, 1
  store i32 %inc429, i32* %color, align 4
  br label %for.cond.242

for.end.430:                                      ; preds = %for.cond.242
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.end.430, %if.then.240
  %189 = load i32, i32* %pos, align 4
  %inc432 = add nsw i32 %189, 1
  store i32 %inc432, i32* %pos, align 4
  br label %for.cond.231

for.end.433:                                      ; preds = %for.cond.231
  %190 = load i32, i32* @stackp, align 4
  %cmp434 = icmp eq i32 %190, 0
  br i1 %cmp434, label %if.then.436, label %if.else.437

if.then.436:                                      ; preds = %for.end.433
  br label %if.end.438

if.else.437:                                      ; preds = %for.end.433
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 382, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.438

if.end.438:                                       ; preds = %if.else.437, %if.then.436
  store i32 21, i32* %pos, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.533, %if.end.438
  %191 = load i32, i32* %pos, align 4
  %cmp440 = icmp slt i32 %191, 400
  br i1 %cmp440, label %for.body.442, label %for.end.535

for.body.442:                                     ; preds = %for.cond.439
  %192 = load i32, i32* %pos, align 4
  %idxprom443 = sext i32 %192 to i64
  %arrayidx444 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom443
  %193 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %193 to i32
  %cmp446 = icmp eq i32 %conv445, 1
  br i1 %cmp446, label %land.lhs.true.454, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %for.body.442
  %194 = load i32, i32* %pos, align 4
  %idxprom449 = sext i32 %194 to i64
  %arrayidx450 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom449
  %195 = load i8, i8* %arrayidx450, align 1
  %conv451 = zext i8 %195 to i32
  %cmp452 = icmp eq i32 %conv451, 2
  br i1 %cmp452, label %land.lhs.true.454, label %if.end.532

land.lhs.true.454:                                ; preds = %lor.lhs.false.448, %for.body.442
  %196 = load i32, i32* %pos, align 4
  %add455 = add nsw i32 %196, 20
  %idxprom456 = sext i32 %add455 to i64
  %arrayidx457 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom456
  %197 = load i8, i8* %arrayidx457, align 1
  %conv458 = zext i8 %197 to i32
  %cmp459 = icmp eq i32 %conv458, 1
  br i1 %cmp459, label %land.lhs.true.468, label %lor.lhs.false.461

lor.lhs.false.461:                                ; preds = %land.lhs.true.454
  %198 = load i32, i32* %pos, align 4
  %add462 = add nsw i32 %198, 20
  %idxprom463 = sext i32 %add462 to i64
  %arrayidx464 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom463
  %199 = load i8, i8* %arrayidx464, align 1
  %conv465 = zext i8 %199 to i32
  %cmp466 = icmp eq i32 %conv465, 2
  br i1 %cmp466, label %land.lhs.true.468, label %if.end.532

land.lhs.true.468:                                ; preds = %lor.lhs.false.461, %land.lhs.true.454
  %200 = load i32, i32* %pos, align 4
  %201 = load i32, i32* %pos, align 4
  %add469 = add nsw i32 %201, 20
  %call470 = call i32 @is_same_worm(i32 %200, i32 %add469)
  %tobool471 = icmp ne i32 %call470, 0
  br i1 %tobool471, label %if.end.532, label %if.then.472

if.then.472:                                      ; preds = %land.lhs.true.468
  %202 = load i32, i32* %pos, align 4
  %idxprom473 = sext i32 %202 to i64
  %arrayidx474 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom473
  %attack_codes475 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx474, i32 0, i32 16
  %arrayidx476 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes475, i32 0, i64 0
  %203 = load i32, i32* %arrayidx476, align 4
  %cmp477 = icmp ne i32 %203, 0
  br i1 %cmp477, label %land.lhs.true.479, label %if.end.531

land.lhs.true.479:                                ; preds = %if.then.472
  %204 = load i32, i32* %pos, align 4
  %add480 = add nsw i32 %204, 20
  %idxprom481 = sext i32 %add480 to i64
  %arrayidx482 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom481
  %attack_codes483 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx482, i32 0, i32 16
  %arrayidx484 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes483, i32 0, i64 0
  %205 = load i32, i32* %arrayidx484, align 4
  %cmp485 = icmp ne i32 %205, 0
  br i1 %cmp485, label %if.then.487, label %if.end.531

if.then.487:                                      ; preds = %land.lhs.true.479
  %206 = load i32, i32* %pos, align 4
  %idxprom488 = sext i32 %206 to i64
  %arrayidx489 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom488
  %defense_codes490 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx489, i32 0, i32 18
  %arrayidx491 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes490, i32 0, i64 0
  %207 = load i32, i32* %arrayidx491, align 4
  %cmp492 = icmp eq i32 %207, 0
  br i1 %cmp492, label %land.lhs.true.494, label %if.end.508

land.lhs.true.494:                                ; preds = %if.then.487
  %208 = load i32, i32* %pos, align 4
  %add495 = add nsw i32 %208, 20
  %idxprom496 = sext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom496
  %attack_points498 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx497, i32 0, i32 15
  %arrayidx499 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points498, i32 0, i64 0
  %209 = load i32, i32* %arrayidx499, align 4
  %210 = load i32, i32* %pos, align 4
  %call500 = call i32 @does_defend(i32 %209, i32 %210)
  %tobool501 = icmp ne i32 %call500, 0
  br i1 %tobool501, label %if.then.502, label %if.end.508

if.then.502:                                      ; preds = %land.lhs.true.494
  %211 = load i32, i32* %pos, align 4
  %212 = load i32, i32* %pos, align 4
  %add503 = add nsw i32 %212, 20
  %idxprom504 = sext i32 %add503 to i64
  %arrayidx505 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom504
  %attack_points506 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx505, i32 0, i32 15
  %arrayidx507 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points506, i32 0, i64 0
  %213 = load i32, i32* %arrayidx507, align 4
  call void @change_defense(i32 %211, i32 %213, i32 5)
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.502, %land.lhs.true.494, %if.then.487
  %214 = load i32, i32* %pos, align 4
  %add509 = add nsw i32 %214, 20
  %idxprom510 = sext i32 %add509 to i64
  %arrayidx511 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom510
  %defense_codes512 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx511, i32 0, i32 18
  %arrayidx513 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes512, i32 0, i64 0
  %215 = load i32, i32* %arrayidx513, align 4
  %cmp514 = icmp eq i32 %215, 0
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.530

land.lhs.true.516:                                ; preds = %if.end.508
  %216 = load i32, i32* %pos, align 4
  %idxprom517 = sext i32 %216 to i64
  %arrayidx518 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom517
  %attack_points519 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx518, i32 0, i32 15
  %arrayidx520 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points519, i32 0, i64 0
  %217 = load i32, i32* %arrayidx520, align 4
  %218 = load i32, i32* %pos, align 4
  %add521 = add nsw i32 %218, 20
  %call522 = call i32 @does_defend(i32 %217, i32 %add521)
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.then.524, label %if.end.530

if.then.524:                                      ; preds = %land.lhs.true.516
  %219 = load i32, i32* %pos, align 4
  %add525 = add nsw i32 %219, 20
  %220 = load i32, i32* %pos, align 4
  %idxprom526 = sext i32 %220 to i64
  %arrayidx527 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom526
  %attack_points528 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx527, i32 0, i32 15
  %arrayidx529 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points528, i32 0, i64 0
  %221 = load i32, i32* %arrayidx529, align 4
  call void @change_defense(i32 %add525, i32 %221, i32 5)
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.524, %land.lhs.true.516, %if.end.508
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %land.lhs.true.479, %if.then.472
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531, %land.lhs.true.468, %lor.lhs.false.461, %lor.lhs.false.448
  br label %for.inc.533

for.inc.533:                                      ; preds = %if.end.532
  %222 = load i32, i32* %pos, align 4
  %inc534 = add nsw i32 %222, 1
  store i32 %inc534, i32* %pos, align 4
  br label %for.cond.439

for.end.535:                                      ; preds = %for.cond.439
  store i32 21, i32* %pos, align 4
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.630, %for.end.535
  %223 = load i32, i32* %pos, align 4
  %cmp537 = icmp slt i32 %223, 400
  br i1 %cmp537, label %for.body.539, label %for.end.632

for.body.539:                                     ; preds = %for.cond.536
  %224 = load i32, i32* %pos, align 4
  %idxprom540 = sext i32 %224 to i64
  %arrayidx541 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom540
  %225 = load i8, i8* %arrayidx541, align 1
  %conv542 = zext i8 %225 to i32
  %cmp543 = icmp eq i32 %conv542, 1
  br i1 %cmp543, label %land.lhs.true.551, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %for.body.539
  %226 = load i32, i32* %pos, align 4
  %idxprom546 = sext i32 %226 to i64
  %arrayidx547 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom546
  %227 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %227 to i32
  %cmp549 = icmp eq i32 %conv548, 2
  br i1 %cmp549, label %land.lhs.true.551, label %if.end.629

land.lhs.true.551:                                ; preds = %lor.lhs.false.545, %for.body.539
  %228 = load i32, i32* %pos, align 4
  %add552 = add nsw i32 %228, 1
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom553
  %229 = load i8, i8* %arrayidx554, align 1
  %conv555 = zext i8 %229 to i32
  %cmp556 = icmp eq i32 %conv555, 1
  br i1 %cmp556, label %land.lhs.true.565, label %lor.lhs.false.558

lor.lhs.false.558:                                ; preds = %land.lhs.true.551
  %230 = load i32, i32* %pos, align 4
  %add559 = add nsw i32 %230, 1
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom560
  %231 = load i8, i8* %arrayidx561, align 1
  %conv562 = zext i8 %231 to i32
  %cmp563 = icmp eq i32 %conv562, 2
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.629

land.lhs.true.565:                                ; preds = %lor.lhs.false.558, %land.lhs.true.551
  %232 = load i32, i32* %pos, align 4
  %233 = load i32, i32* %pos, align 4
  %add566 = add nsw i32 %233, 1
  %call567 = call i32 @is_same_worm(i32 %232, i32 %add566)
  %tobool568 = icmp ne i32 %call567, 0
  br i1 %tobool568, label %if.end.629, label %if.then.569

if.then.569:                                      ; preds = %land.lhs.true.565
  %234 = load i32, i32* %pos, align 4
  %idxprom570 = sext i32 %234 to i64
  %arrayidx571 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom570
  %attack_codes572 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx571, i32 0, i32 16
  %arrayidx573 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes572, i32 0, i64 0
  %235 = load i32, i32* %arrayidx573, align 4
  %cmp574 = icmp ne i32 %235, 0
  br i1 %cmp574, label %land.lhs.true.576, label %if.end.628

land.lhs.true.576:                                ; preds = %if.then.569
  %236 = load i32, i32* %pos, align 4
  %add577 = add nsw i32 %236, 1
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom578
  %attack_codes580 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx579, i32 0, i32 16
  %arrayidx581 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes580, i32 0, i64 0
  %237 = load i32, i32* %arrayidx581, align 4
  %cmp582 = icmp ne i32 %237, 0
  br i1 %cmp582, label %if.then.584, label %if.end.628

if.then.584:                                      ; preds = %land.lhs.true.576
  %238 = load i32, i32* %pos, align 4
  %idxprom585 = sext i32 %238 to i64
  %arrayidx586 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom585
  %defense_codes587 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx586, i32 0, i32 18
  %arrayidx588 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes587, i32 0, i64 0
  %239 = load i32, i32* %arrayidx588, align 4
  %cmp589 = icmp eq i32 %239, 0
  br i1 %cmp589, label %land.lhs.true.591, label %if.end.605

land.lhs.true.591:                                ; preds = %if.then.584
  %240 = load i32, i32* %pos, align 4
  %add592 = add nsw i32 %240, 1
  %idxprom593 = sext i32 %add592 to i64
  %arrayidx594 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom593
  %attack_points595 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx594, i32 0, i32 15
  %arrayidx596 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points595, i32 0, i64 0
  %241 = load i32, i32* %arrayidx596, align 4
  %242 = load i32, i32* %pos, align 4
  %call597 = call i32 @does_defend(i32 %241, i32 %242)
  %tobool598 = icmp ne i32 %call597, 0
  br i1 %tobool598, label %if.then.599, label %if.end.605

if.then.599:                                      ; preds = %land.lhs.true.591
  %243 = load i32, i32* %pos, align 4
  %244 = load i32, i32* %pos, align 4
  %add600 = add nsw i32 %244, 1
  %idxprom601 = sext i32 %add600 to i64
  %arrayidx602 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom601
  %attack_points603 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx602, i32 0, i32 15
  %arrayidx604 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points603, i32 0, i64 0
  %245 = load i32, i32* %arrayidx604, align 4
  call void @change_defense(i32 %243, i32 %245, i32 5)
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.599, %land.lhs.true.591, %if.then.584
  %246 = load i32, i32* %pos, align 4
  %add606 = add nsw i32 %246, 1
  %idxprom607 = sext i32 %add606 to i64
  %arrayidx608 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom607
  %defense_codes609 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx608, i32 0, i32 18
  %arrayidx610 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes609, i32 0, i64 0
  %247 = load i32, i32* %arrayidx610, align 4
  %cmp611 = icmp eq i32 %247, 0
  br i1 %cmp611, label %land.lhs.true.613, label %if.end.627

land.lhs.true.613:                                ; preds = %if.end.605
  %248 = load i32, i32* %pos, align 4
  %idxprom614 = sext i32 %248 to i64
  %arrayidx615 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom614
  %attack_points616 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx615, i32 0, i32 15
  %arrayidx617 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points616, i32 0, i64 0
  %249 = load i32, i32* %arrayidx617, align 4
  %250 = load i32, i32* %pos, align 4
  %add618 = add nsw i32 %250, 1
  %call619 = call i32 @does_defend(i32 %249, i32 %add618)
  %tobool620 = icmp ne i32 %call619, 0
  br i1 %tobool620, label %if.then.621, label %if.end.627

if.then.621:                                      ; preds = %land.lhs.true.613
  %251 = load i32, i32* %pos, align 4
  %add622 = add nsw i32 %251, 1
  %252 = load i32, i32* %pos, align 4
  %idxprom623 = sext i32 %252 to i64
  %arrayidx624 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom623
  %attack_points625 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx624, i32 0, i32 15
  %arrayidx626 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points625, i32 0, i64 0
  %253 = load i32, i32* %arrayidx626, align 4
  call void @change_defense(i32 %add622, i32 %253, i32 5)
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.621, %land.lhs.true.613, %if.end.605
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %land.lhs.true.576, %if.then.569
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.628, %land.lhs.true.565, %lor.lhs.false.558, %lor.lhs.false.545
  br label %for.inc.630

for.inc.630:                                      ; preds = %if.end.629
  %254 = load i32, i32* %pos, align 4
  %inc631 = add nsw i32 %254, 1
  store i32 %inc631, i32* %pos, align 4
  br label %for.cond.536

for.end.632:                                      ; preds = %for.cond.536
  %255 = load i32, i32* @stackp, align 4
  %cmp633 = icmp eq i32 %255, 0
  br i1 %cmp633, label %if.then.635, label %if.else.636

if.then.635:                                      ; preds = %for.end.632
  br label %if.end.637

if.else.636:                                      ; preds = %for.end.632
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.637

if.end.637:                                       ; preds = %if.else.636, %if.then.635
  store i32 21, i32* %pos, align 4
  br label %for.cond.638

for.cond.638:                                     ; preds = %for.inc.689, %if.end.637
  %256 = load i32, i32* %pos, align 4
  %cmp639 = icmp slt i32 %256, 400
  br i1 %cmp639, label %for.body.641, label %for.end.691

for.body.641:                                     ; preds = %for.cond.638
  %257 = load i32, i32* %pos, align 4
  %idxprom642 = sext i32 %257 to i64
  %arrayidx643 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom642
  %258 = load i8, i8* %arrayidx643, align 1
  %conv644 = zext i8 %258 to i32
  %cmp645 = icmp eq i32 %conv644, 1
  br i1 %cmp645, label %lor.lhs.false.653, label %lor.lhs.false.647

lor.lhs.false.647:                                ; preds = %for.body.641
  %259 = load i32, i32* %pos, align 4
  %idxprom648 = sext i32 %259 to i64
  %arrayidx649 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom648
  %260 = load i8, i8* %arrayidx649, align 1
  %conv650 = zext i8 %260 to i32
  %cmp651 = icmp eq i32 %conv650, 2
  br i1 %cmp651, label %lor.lhs.false.653, label %if.then.656

lor.lhs.false.653:                                ; preds = %lor.lhs.false.647, %for.body.641
  %261 = load i32, i32* %pos, align 4
  %262 = load i32, i32* %pos, align 4
  %call654 = call i32 @is_worm_origin(i32 %261, i32 %262)
  %tobool655 = icmp ne i32 %call654, 0
  br i1 %tobool655, label %if.end.657, label %if.then.656

if.then.656:                                      ; preds = %lor.lhs.false.653, %lor.lhs.false.647
  br label %for.inc.689

if.end.657:                                       ; preds = %lor.lhs.false.653
  %263 = load i32, i32* %pos, align 4
  %call658 = call i32 @find_lunch(i32 %263, i32* %lunch)
  %tobool659 = icmp ne i32 %call658, 0
  br i1 %tobool659, label %land.lhs.true.660, label %if.else.684

land.lhs.true.660:                                ; preds = %if.end.657
  %264 = load i32, i32* %lunch, align 4
  %idxprom661 = sext i32 %264 to i64
  %arrayidx662 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom661
  %attack_codes663 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx662, i32 0, i32 16
  %arrayidx664 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes663, i32 0, i64 0
  %265 = load i32, i32* %arrayidx664, align 4
  %cmp665 = icmp eq i32 %265, 5
  br i1 %cmp665, label %if.then.674, label %lor.lhs.false.667

lor.lhs.false.667:                                ; preds = %land.lhs.true.660
  %266 = load i32, i32* %lunch, align 4
  %idxprom668 = sext i32 %266 to i64
  %arrayidx669 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom668
  %attack_codes670 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx669, i32 0, i32 16
  %arrayidx671 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes670, i32 0, i64 0
  %267 = load i32, i32* %arrayidx671, align 4
  %cmp672 = icmp eq i32 %267, 4
  br i1 %cmp672, label %if.then.674, label %if.else.684

if.then.674:                                      ; preds = %lor.lhs.false.667, %land.lhs.true.660
  %268 = load i32, i32* @debug, align 4
  %and675 = and i32 %268, 1024
  %tobool676 = icmp ne i32 %and675, 0
  br i1 %tobool676, label %cond.false.678, label %cond.true.677

cond.true.677:                                    ; preds = %if.then.674
  br label %cond.end.680

cond.false.678:                                   ; preds = %if.then.674
  %269 = load i32, i32* %pos, align 4
  %270 = load i32, i32* %lunch, align 4
  %call679 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 %269, i32 %270)
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.678, %cond.true.677
  %271 = load i32, i32* %lunch, align 4
  %272 = load i32, i32* %pos, align 4
  %idxprom681 = sext i32 %272 to i64
  %arrayidx682 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom681
  %lunch683 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx682, i32 0, i32 8
  store i32 %271, i32* %lunch683, align 4
  br label %if.end.688

if.else.684:                                      ; preds = %lor.lhs.false.667, %if.end.657
  %273 = load i32, i32* %pos, align 4
  %idxprom685 = sext i32 %273 to i64
  %arrayidx686 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom685
  %lunch687 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx686, i32 0, i32 8
  store i32 0, i32* %lunch687, align 4
  br label %if.end.688

if.end.688:                                       ; preds = %if.else.684, %cond.end.680
  %274 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %274)
  br label %for.inc.689

for.inc.689:                                      ; preds = %if.end.688, %if.then.656
  %275 = load i32, i32* %pos, align 4
  %inc690 = add nsw i32 %275, 1
  store i32 %inc690, i32* %pos, align 4
  br label %for.cond.638

for.end.691:                                      ; preds = %for.cond.638
  %276 = load i32, i32* @disable_threat_computation, align 4
  %tobool692 = icmp ne i32 %276, 0
  br i1 %tobool692, label %if.end.694, label %if.then.693

if.then.693:                                      ; preds = %for.end.691
  call void @find_worm_threats()
  br label %if.end.694

if.end.694:                                       ; preds = %if.then.693, %for.end.691
  store i32 21, i32* %pos, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.757, %if.end.694
  %277 = load i32, i32* %pos, align 4
  %cmp696 = icmp slt i32 %277, 400
  br i1 %cmp696, label %for.body.698, label %for.end.759

for.body.698:                                     ; preds = %for.cond.695
  %278 = load i32, i32* %pos, align 4
  %idxprom699 = sext i32 %278 to i64
  %arrayidx700 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom699
  %279 = load i8, i8* %arrayidx700, align 1
  %conv701 = zext i8 %279 to i32
  %cmp702 = icmp eq i32 %conv701, 1
  br i1 %cmp702, label %land.lhs.true.710, label %lor.lhs.false.704

lor.lhs.false.704:                                ; preds = %for.body.698
  %280 = load i32, i32* %pos, align 4
  %idxprom705 = sext i32 %280 to i64
  %arrayidx706 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom705
  %281 = load i8, i8* %arrayidx706, align 1
  %conv707 = zext i8 %281 to i32
  %cmp708 = icmp eq i32 %conv707, 2
  br i1 %cmp708, label %land.lhs.true.710, label %if.end.756

land.lhs.true.710:                                ; preds = %lor.lhs.false.704, %for.body.698
  %282 = load i32, i32* %pos, align 4
  %idxprom711 = sext i32 %282 to i64
  %arrayidx712 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom711
  %origin713 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx712, i32 0, i32 3
  %283 = load i32, i32* %origin713, align 4
  %284 = load i32, i32* %pos, align 4
  %cmp714 = icmp eq i32 %283, %284
  br i1 %cmp714, label %land.lhs.true.716, label %if.end.756

land.lhs.true.716:                                ; preds = %land.lhs.true.710
  %285 = load i32, i32* %pos, align 4
  %idxprom717 = sext i32 %285 to i64
  %arrayidx718 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom717
  %genus719 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx718, i32 0, i32 11
  %286 = load i32, i32* %genus719, align 4
  %cmp720 = icmp eq i32 %286, 0
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.756

land.lhs.true.722:                                ; preds = %land.lhs.true.716
  %287 = load i32, i32* %pos, align 4
  %idxprom723 = sext i32 %287 to i64
  %arrayidx724 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom723
  %liberties2725 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx724, i32 0, i32 5
  %288 = load i32, i32* %liberties2725, align 4
  %cmp726 = icmp eq i32 %288, 0
  br i1 %cmp726, label %land.lhs.true.728, label %if.end.756

land.lhs.true.728:                                ; preds = %land.lhs.true.722
  %289 = load i32, i32* %pos, align 4
  %idxprom729 = sext i32 %289 to i64
  %arrayidx730 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom729
  %cutstone731 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx730, i32 0, i32 9
  %290 = load i32, i32* %cutstone731, align 4
  %tobool732 = icmp ne i32 %290, 0
  br i1 %tobool732, label %if.end.756, label %land.lhs.true.733

land.lhs.true.733:                                ; preds = %land.lhs.true.728
  %291 = load i32, i32* %pos, align 4
  %idxprom734 = sext i32 %291 to i64
  %arrayidx735 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom734
  %lunch736 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx735, i32 0, i32 8
  %292 = load i32, i32* %lunch736, align 4
  %cmp737 = icmp eq i32 %292, 0
  br i1 %cmp737, label %if.then.739, label %if.end.756

if.then.739:                                      ; preds = %land.lhs.true.733
  %293 = load i32, i32* %pos, align 4
  %call740 = call i32 @examine_cavity(i32 %293, i32* %edge)
  store i32 %call740, i32* %border_color, align 4
  %294 = load i32, i32* %border_color, align 4
  %cmp741 = icmp ne i32 %294, 3
  br i1 %cmp741, label %land.lhs.true.743, label %if.end.755

land.lhs.true.743:                                ; preds = %if.then.739
  %295 = load i32, i32* %edge, align 4
  %cmp744 = icmp slt i32 %295, 3
  br i1 %cmp744, label %if.then.746, label %if.end.755

if.then.746:                                      ; preds = %land.lhs.true.743
  %296 = load i32, i32* @debug, align 4
  %and747 = and i32 %296, 1024
  %tobool748 = icmp ne i32 %and747, 0
  br i1 %tobool748, label %cond.false.750, label %cond.true.749

cond.true.749:                                    ; preds = %if.then.746
  br label %cond.end.752

cond.false.750:                                   ; preds = %if.then.746
  %297 = load i32, i32* %pos, align 4
  %call751 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), i32 %297)
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.false.750, %cond.true.749
  %298 = load i32, i32* %pos, align 4
  %idxprom753 = sext i32 %298 to i64
  %arrayidx754 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom753
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx754, i32 0, i32 12
  store i32 1, i32* %inessential, align 4
  %299 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %299)
  br label %if.end.755

if.end.755:                                       ; preds = %cond.end.752, %land.lhs.true.743, %if.then.739
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %land.lhs.true.733, %land.lhs.true.728, %land.lhs.true.722, %land.lhs.true.716, %land.lhs.true.710, %lor.lhs.false.704
  br label %for.inc.757

for.inc.757:                                      ; preds = %if.end.756
  %300 = load i32, i32* %pos, align 4
  %inc758 = add nsw i32 %300, 1
  store i32 %inc758, i32* %pos, align 4
  br label %for.cond.695

for.end.759:                                      ; preds = %if.then, %for.cond.695
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @build_worms() #0 {
entry:
  %pos = alloca i32, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x %struct.worm_data]* @worm to i8*), i8 0, i64 152000, i32 16, i1 false)
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
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 3
  store i32 0, i32* %origin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.55, %for.end
  %5 = load i32, i32* %pos, align 4
  %cmp6 = icmp slt i32 %5, 400
  br i1 %cmp6, label %for.body.8, label %for.end.57

for.body.8:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  %cmp12 = icmp ne i32 %conv11, 3
  br i1 %cmp12, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %for.body.8
  %8 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom14
  %origin16 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx15, i32 0, i32 3
  %9 = load i32, i32* %origin16, align 4
  %cmp17 = icmp ne i32 %9, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %for.body.8
  br label %for.inc.55

if.end.20:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %11 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %11 to i32
  %12 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom24
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx25, i32 0, i32 0
  store i32 %conv23, i32* %color, align 4
  %13 = load i32, i32* %pos, align 4
  %14 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom26
  %origin28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx27, i32 0, i32 3
  store i32 %13, i32* %origin28, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 12
  store i32 0, i32* %inessential, align 4
  %16 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom31
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx32, i32 0, i32 13
  store i32 0, i32* %invincible, align 4
  %17 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %17 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom33
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx34, i32 0, i32 14
  store i32 3, i32* %unconditional_status, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom35
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx36, i32 0, i32 2
  store float 0.000000e+00, float* %effective_size, align 4
  %19 = load i32, i32* %pos, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom37
  %20 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %20 to i32
  %cmp40 = icmp eq i32 %conv39, 1
  br i1 %cmp40, label %if.then.48, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.20
  %21 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %21 to i64
  %arrayidx44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom43
  %22 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %22 to i32
  %cmp46 = icmp eq i32 %conv45, 2
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %lor.lhs.false.42, %if.end.20
  %23 = load i32, i32* %pos, align 4
  %call = call i32 @countlib(i32 %23)
  %24 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %24 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom49
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx50, i32 0, i32 4
  store i32 %call, i32* %liberties, align 4
  %25 = load i32, i32* %pos, align 4
  %call51 = call i32 @countstones(i32 %25)
  %26 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %26 to i64
  %arrayidx53 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom52
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx53, i32 0, i32 1
  store i32 %call51, i32* %size, align 4
  %27 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %27)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %lor.lhs.false.42
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54, %if.then.19
  %28 = load i32, i32* %pos, align 4
  %inc56 = add nsw i32 %28, 1
  store i32 %inc56, i32* %pos, align 4
  br label %for.cond.5

for.end.57:                                       ; preds = %for.cond.5
  ret void
}

declare i32 @stones_on_board(i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_effective_worm_sizes() #0 {
entry:
  call void @do_compute_effective_worm_sizes(i32 3, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_worms, i32 0, i32 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_worms, i32 0, i32 0), i32 3)
  call void @do_compute_effective_worm_sizes(i32 2, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_black_worms, i32 0, i32 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_black_worms, i32 0, i32 0), i32 5)
  call void @do_compute_effective_worm_sizes(i32 1, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_white_worms, i32 0, i32 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_white_worms, i32 0, i32 0), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_unconditional_status() #0 {
entry:
  %unconditional_territory = alloca [400 x i32], align 16
  %pos = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 1, i32* %color, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %0 = load i32, i32* %color, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, i32* %other, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %unconditional_territory, i32 0, i32 0
  %2 = load i32, i32* %color, align 4
  call void @unconditional_life(i32* %arraydecay, i32 %2)
  store i32 21, i32* %pos, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %pos, align 4
  %cmp2 = icmp slt i32 %3, 400
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body.3
  %6 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* %unconditional_territory, i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body.3
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i32, i32* %color, align 4
  %cmp11 = icmp eq i32 %conv10, %10
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %11 = load i32, i32* %pos, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom14
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx15, i32 0, i32 14
  store i32 1, i32* %unconditional_status, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [400 x i32], [400 x i32]* %unconditional_territory, i32 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %13, 1
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.13
  %14 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 13
  store i32 1, i32* %invincible, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.13
  br label %if.end.46

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %16 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %16 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.41

if.then.29:                                       ; preds = %if.else
  %17 = load i32, i32* %color, align 4
  %cmp30 = icmp eq i32 %17, 1
  br i1 %cmp30, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %if.then.29
  %18 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom33
  %unconditional_status35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx34, i32 0, i32 14
  store i32 4, i32* %unconditional_status35, align 4
  br label %if.end.40

if.else.36:                                       ; preds = %if.then.29
  %19 = load i32, i32* %pos, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom37
  %unconditional_status39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx38, i32 0, i32 14
  store i32 5, i32* %unconditional_status39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.32
  br label %if.end.45

if.else.41:                                       ; preds = %if.else
  %20 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %20 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom42
  %unconditional_status44 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx43, i32 0, i32 14
  store i32 0, i32* %unconditional_status44, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.end.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.46, %if.then
  %21 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %22 = load i32, i32* %color, align 4
  %inc48 = add nsw i32 %22, 1
  store i32 %inc48, i32* %color, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  %23 = load i32, i32* @stackp, align 4
  %cmp50 = icmp eq i32 %23, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %for.end.49
  br label %if.end.54

if.else.53:                                       ; preds = %for.end.49
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 722, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_worm_attacks_and_defenses() #0 {
entry:
  %str = alloca i32, align 4
  %k = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %liberties = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %acode112 = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 21, i32* %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %0 = load i32, i32* %str, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.43

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %str, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %lor.lhs.false.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %str, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %str, align 4
  %6 = load i32, i32* %str, align 4
  %call = call i32 @is_worm_origin(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false
  br label %for.inc.41

if.end:                                           ; preds = %lor.lhs.false.8
  %7 = load i32, i32* @verbose, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %str, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i32 %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %k, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %cond.end
  %9 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %9, 10
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %10 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load i32, i32* %str, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 16
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx18, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %12 to i64
  %13 = load i32, i32* %str, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom20
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx21, i32 0, i32 15
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 %idxprom19
  store i32 0, i32* %arrayidx22, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %14 to i64
  %15 = load i32, i32* %str, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom24
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx25, i32 0, i32 18
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 %idxprom23
  store i32 0, i32* %arrayidx26, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %16 to i64
  %17 = load i32, i32* %str, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom28
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx29, i32 0, i32 17
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 %idxprom27
  store i32 0, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %19 = load i32, i32* %str, align 4
  call void @propagate_worm(i32 %19)
  %20 = load i32, i32* %str, align 4
  %call31 = call i32 @attack(i32 %20, i32* %attack_point)
  store i32 %call31, i32* %acode, align 4
  %21 = load i32, i32* %acode, align 4
  %cmp32 = icmp ne i32 %21, 0
  br i1 %cmp32, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %for.end
  %22 = load i32, i32* @debug, align 4
  %and = and i32 %22, 1024
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %cond.false.37, label %cond.true.36

cond.true.36:                                     ; preds = %if.then.34
  br label %cond.end.39

cond.false.37:                                    ; preds = %if.then.34
  %23 = load i32, i32* %str, align 4
  %24 = load i32, i32* %attack_point, align 4
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i32 0, i32 0), i32 %23, i32 %24)
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.36
  %25 = load i32, i32* %str, align 4
  %26 = load i32, i32* %attack_point, align 4
  %27 = load i32, i32* %acode, align 4
  call void @change_attack(i32 %25, i32 %26, i32 %27)
  br label %if.end.40

if.end.40:                                        ; preds = %cond.end.39, %for.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40, %if.then
  %28 = load i32, i32* %str, align 4
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, i32* %str, align 4
  br label %for.cond

for.end.43:                                       ; preds = %for.cond
  %29 = load i32, i32* @stackp, align 4
  %cmp44 = icmp eq i32 %29, 0
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.end.43
  br label %if.end.47

if.else:                                          ; preds = %for.end.43
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 764, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.46
  call void @find_attack_patterns()
  %30 = load i32, i32* @stackp, align 4
  %cmp48 = icmp eq i32 %30, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.end.47
  br label %if.end.52

if.else.51:                                       ; preds = %if.end.47
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  store i32 21, i32* %str, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.128, %if.end.52
  %31 = load i32, i32* %str, align 4
  %cmp54 = icmp slt i32 %31, 400
  br i1 %cmp54, label %for.body.56, label %for.end.130

for.body.56:                                      ; preds = %for.cond.53
  %32 = load i32, i32* %str, align 4
  %idxprom57 = sext i32 %32 to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %33 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %33 to i32
  %cmp60 = icmp eq i32 %conv59, 1
  br i1 %cmp60, label %lor.lhs.false.68, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %for.body.56
  %34 = load i32, i32* %str, align 4
  %idxprom63 = sext i32 %34 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %35 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %35 to i32
  %cmp66 = icmp eq i32 %conv65, 2
  br i1 %cmp66, label %lor.lhs.false.68, label %if.then.71

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.62, %for.body.56
  %36 = load i32, i32* %str, align 4
  %37 = load i32, i32* %str, align 4
  %call69 = call i32 @is_worm_origin(i32 %36, i32 %37)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %lor.lhs.false.68, %lor.lhs.false.62
  br label %for.inc.128

if.end.72:                                        ; preds = %lor.lhs.false.68
  %38 = load i32, i32* %str, align 4
  %idxprom73 = sext i32 %38 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom73
  %attack_codes75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx74, i32 0, i32 16
  %arrayidx76 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes75, i32 0, i64 0
  %39 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp ne i32 %39, 0
  br i1 %cmp77, label %if.then.79, label %if.end.127

if.then.79:                                       ; preds = %if.end.72
  %40 = load i32, i32* @verbose, align 4
  %tobool80 = icmp ne i32 %40, 0
  br i1 %tobool80, label %cond.false.82, label %cond.true.81

cond.true.81:                                     ; preds = %if.then.79
  br label %cond.end.84

cond.false.82:                                    ; preds = %if.then.79
  %41 = load i32, i32* %str, align 4
  %call83 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i32 %41)
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.82, %cond.true.81
  %42 = load i32, i32* %str, align 4
  %call85 = call i32 @find_defense(i32 %42, i32* %defense_point)
  store i32 %call85, i32* %dcode, align 4
  %43 = load i32, i32* %dcode, align 4
  %cmp86 = icmp ne i32 %43, 0
  br i1 %cmp86, label %if.then.88, label %if.else.98

if.then.88:                                       ; preds = %cond.end.84
  %44 = load i32, i32* @verbose, align 4
  %tobool89 = icmp ne i32 %44, 0
  br i1 %tobool89, label %cond.false.91, label %cond.true.90

cond.true.90:                                     ; preds = %if.then.88
  br label %cond.end.93

cond.false.91:                                    ; preds = %if.then.88
  %45 = load i32, i32* %str, align 4
  %46 = load i32, i32* %defense_point, align 4
  %call92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i32 %45, i32 %46)
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %47 = load i32, i32* %defense_point, align 4
  %cmp94 = icmp ne i32 %47, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %cond.end.93
  %48 = load i32, i32* %str, align 4
  %49 = load i32, i32* %defense_point, align 4
  %50 = load i32, i32* %dcode, align 4
  call void @change_defense(i32 %48, i32 %49, i32 %50)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %cond.end.93
  br label %if.end.126

if.else.98:                                       ; preds = %cond.end.84
  %51 = load i32, i32* %str, align 4
  %idxprom99 = sext i32 %51 to i64
  %arrayidx100 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom99
  %attack_points101 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx100, i32 0, i32 15
  %arrayidx102 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points101, i32 0, i64 0
  %52 = load i32, i32* %arrayidx102, align 4
  store i32 %52, i32* %attack_point, align 4
  %53 = load i32, i32* %attack_point, align 4
  %54 = load i32, i32* %str, align 4
  %call103 = call i32 @liberty_of_string(i32 %53, i32 %54)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.125, label %if.then.105

if.then.105:                                      ; preds = %if.else.98
  %55 = load i32, i32* %attack_point, align 4
  %56 = load i32, i32* %str, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom106
  %color108 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx107, i32 0, i32 0
  %57 = load i32, i32* %color108, align 4
  %call109 = call i32 @trymove(i32 %55, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.124

if.then.111:                                      ; preds = %if.then.105
  %58 = load i32, i32* %str, align 4
  %call113 = call i32 @attack(i32 %58, i32* null)
  store i32 %call113, i32* %acode112, align 4
  %59 = load i32, i32* %acode112, align 4
  %cmp114 = icmp ne i32 %59, 5
  br i1 %cmp114, label %if.then.116, label %if.end.123

if.then.116:                                      ; preds = %if.then.111
  %60 = load i32, i32* %str, align 4
  %61 = load i32, i32* %attack_point, align 4
  %62 = load i32, i32* %acode112, align 4
  %sub = sub nsw i32 5, %62
  call void @change_defense(i32 %60, i32 %61, i32 %sub)
  %63 = load i32, i32* @verbose, align 4
  %tobool117 = icmp ne i32 %63, 0
  br i1 %tobool117, label %cond.false.119, label %cond.true.118

cond.true.118:                                    ; preds = %if.then.116
  br label %cond.end.122

cond.false.119:                                   ; preds = %if.then.116
  %64 = load i32, i32* %str, align 4
  %65 = load i32, i32* %attack_point, align 4
  %66 = load i32, i32* %acode112, align 4
  %sub120 = sub nsw i32 5, %66
  %call121 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i32 0, i32 0), i32 %64, i32 %65, i32 %sub120)
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.119, %cond.true.118
  br label %if.end.123

if.end.123:                                       ; preds = %cond.end.122, %if.then.111
  call void @popgo()
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.105
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.else.98
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.97
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.72
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127, %if.then.71
  %67 = load i32, i32* %str, align 4
  %inc129 = add nsw i32 %67, 1
  store i32 %inc129, i32* %str, align 4
  br label %for.cond.53

for.end.130:                                      ; preds = %for.cond.53
  %68 = load i32, i32* @stackp, align 4
  %cmp131 = icmp eq i32 %68, 0
  br i1 %cmp131, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %for.end.130
  br label %if.end.135

if.else.134:                                      ; preds = %for.end.130
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 804, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.134, %if.then.133
  call void @find_defense_patterns()
  %69 = load i32, i32* @stackp, align 4
  %cmp136 = icmp eq i32 %69, 0
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.end.135
  br label %if.end.140

if.else.139:                                      ; preds = %if.end.135
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.139, %if.then.138
  store i32 21, i32* %str, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.231, %if.end.140
  %70 = load i32, i32* %str, align 4
  %cmp142 = icmp slt i32 %70, 400
  br i1 %cmp142, label %for.body.144, label %for.end.233

for.body.144:                                     ; preds = %for.cond.141
  %71 = load i32, i32* %str, align 4
  %idxprom145 = sext i32 %71 to i64
  %arrayidx146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom145
  %72 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %72 to i32
  store i32 %conv147, i32* %color, align 4
  %73 = load i32, i32* %color, align 4
  %cmp148 = icmp eq i32 %73, 1
  br i1 %cmp148, label %lor.lhs.false.153, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %for.body.144
  %74 = load i32, i32* %color, align 4
  %cmp151 = icmp eq i32 %74, 2
  br i1 %cmp151, label %lor.lhs.false.153, label %if.then.156

lor.lhs.false.153:                                ; preds = %lor.lhs.false.150, %for.body.144
  %75 = load i32, i32* %str, align 4
  %76 = load i32, i32* %str, align 4
  %call154 = call i32 @is_worm_origin(i32 %75, i32 %76)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %lor.lhs.false.153, %lor.lhs.false.150
  br label %for.inc.231

if.end.157:                                       ; preds = %lor.lhs.false.153
  %77 = load i32, i32* %color, align 4
  %sub158 = sub nsw i32 3, %77
  store i32 %sub158, i32* %other, align 4
  %78 = load i32, i32* %str, align 4
  %idxprom159 = sext i32 %78 to i64
  %arrayidx160 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom159
  %attack_codes161 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx160, i32 0, i32 16
  %arrayidx162 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes161, i32 0, i64 0
  %79 = load i32, i32* %arrayidx162, align 4
  %cmp163 = icmp eq i32 %79, 0
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.157
  br label %for.inc.231

if.end.166:                                       ; preds = %if.end.157
  %80 = load i32, i32* %str, align 4
  %call167 = call i32 @findlib(i32 %80, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @find_worm_attacks_and_defenses.libs, i32 0, i32 0))
  store i32 %call167, i32* %liberties, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.228, %if.end.166
  %81 = load i32, i32* %k, align 4
  %82 = load i32, i32* %liberties, align 4
  %cmp169 = icmp slt i32 %81, %82
  br i1 %cmp169, label %for.body.171, label %for.end.230

for.body.171:                                     ; preds = %for.cond.168
  %83 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %83 to i64
  %arrayidx173 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_attacks_and_defenses.libs, i32 0, i64 %idxprom172
  %84 = load i32, i32* %arrayidx173, align 4
  store i32 %84, i32* %pos, align 4
  %85 = load i32, i32* %pos, align 4
  %86 = load i32, i32* %str, align 4
  %call174 = call i32 @attack_move_known(i32 %85, i32 %86)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end.205, label %if.then.176

if.then.176:                                      ; preds = %for.body.171
  %87 = load i32, i32* %pos, align 4
  %88 = load i32, i32* %other, align 4
  %89 = load i32, i32* %str, align 4
  %call177 = call i32 @trymove(i32 %87, i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %89, i32 0, i32 0)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.204

if.then.179:                                      ; preds = %if.then.176
  %90 = load i32, i32* %str, align 4
  %idxprom180 = sext i32 %90 to i64
  %arrayidx181 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom180
  %91 = load i8, i8* %arrayidx181, align 1
  %conv182 = zext i8 %91 to i32
  %cmp183 = icmp eq i32 %conv182, 0
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.then.179
  %92 = load i32, i32* %str, align 4
  %call186 = call i32 @attack(i32 %92, i32* null)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.203

if.then.188:                                      ; preds = %lor.lhs.false.185, %if.then.179
  %93 = load i32, i32* %str, align 4
  %idxprom189 = sext i32 %93 to i64
  %arrayidx190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom189
  %94 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %94 to i32
  %cmp192 = icmp eq i32 %conv191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %if.then.188
  store i32 0, i32* %dcode, align 4
  br label %if.end.197

if.else.195:                                      ; preds = %if.then.188
  %95 = load i32, i32* %str, align 4
  %call196 = call i32 @find_defense(i32 %95, i32* null)
  store i32 %call196, i32* %dcode, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.195, %if.then.194
  %96 = load i32, i32* %dcode, align 4
  %cmp198 = icmp ne i32 %96, 5
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.197
  %97 = load i32, i32* %str, align 4
  %98 = load i32, i32* %pos, align 4
  %99 = load i32, i32* %dcode, align 4
  %sub201 = sub nsw i32 5, %99
  call void @change_attack(i32 %97, i32 %98, i32 %sub201)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.end.197
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %lor.lhs.false.185
  call void @popgo()
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.then.176
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %for.body.171
  %100 = load i32, i32* %pos, align 4
  %101 = load i32, i32* %str, align 4
  %call206 = call i32 @defense_move_known(i32 %100, i32 %101)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.end.227, label %if.then.208

if.then.208:                                      ; preds = %if.end.205
  %102 = load i32, i32* %str, align 4
  %idxprom209 = sext i32 %102 to i64
  %arrayidx210 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom209
  %defense_codes211 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx210, i32 0, i32 18
  %arrayidx212 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes211, i32 0, i64 0
  %103 = load i32, i32* %arrayidx212, align 4
  %cmp213 = icmp ne i32 %103, 0
  br i1 %cmp213, label %if.then.215, label %if.end.226

if.then.215:                                      ; preds = %if.then.208
  %104 = load i32, i32* %pos, align 4
  %105 = load i32, i32* %color, align 4
  %call216 = call i32 @trymove(i32 %104, i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.then.218, label %if.end.225

if.then.218:                                      ; preds = %if.then.215
  %106 = load i32, i32* %str, align 4
  %call219 = call i32 @attack(i32 %106, i32* null)
  store i32 %call219, i32* %acode, align 4
  %107 = load i32, i32* %acode, align 4
  %cmp220 = icmp ne i32 %107, 5
  br i1 %cmp220, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.then.218
  %108 = load i32, i32* %str, align 4
  %109 = load i32, i32* %pos, align 4
  %110 = load i32, i32* %acode, align 4
  %sub223 = sub nsw i32 5, %110
  call void @change_defense(i32 %108, i32 %109, i32 %sub223)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %if.then.218
  call void @popgo()
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.215
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %if.then.208
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.205
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %111 = load i32, i32* %k, align 4
  %inc229 = add nsw i32 %111, 1
  store i32 %inc229, i32* %k, align 4
  br label %for.cond.168

for.end.230:                                      ; preds = %for.cond.168
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end.230, %if.then.165, %if.then.156
  %112 = load i32, i32* %str, align 4
  %inc232 = add nsw i32 %112, 1
  store i32 %inc232, i32* %str, align 4
  br label %for.cond.141

for.end.233:                                      ; preds = %for.cond.141
  %113 = load i32, i32* @stackp, align 4
  %cmp234 = icmp eq i32 %113, 0
  br i1 %cmp234, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %for.end.233
  br label %if.end.238

if.else.237:                                      ; preds = %for.end.233
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 860, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.237, %if.then.236
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @is_worm_origin(i32 %w, i32 %pos) #0 {
entry:
  %w.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @ping_cave(i32 %str, i32* %lib1, i32* %lib2, i32* %lib3, i32* %lib4) #0 {
entry:
  %str.addr = alloca i32, align 4
  %lib1.addr = alloca i32*, align 8
  %lib2.addr = alloca i32*, align 8
  %lib3.addr = alloca i32*, align 8
  %lib4.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %mrc = alloca [400 x i32], align 16
  %mse = alloca [400 x i32], align 16
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %lib1, i32** %lib1.addr, align 8
  store i32* %lib2, i32** %lib2.addr, align 8
  store i32* %lib3, i32** %lib3.addr, align 8
  store i32* %lib4, i32** %lib4.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = bitcast [400 x i32]* %mse to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 1600, i32 16, i1 false)
  %4 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %4, i32 241, i32* %arraydecay)
  %5 = load i32*, i32** %lib1.addr, align 8
  store i32 %call, i32* %5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %k, align 4
  %7 = load i32*, i32** %lib1.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.73, %for.end
  %12 = load i32, i32* %pos, align 4
  %cmp7 = icmp slt i32 %12, 400
  br i1 %cmp7, label %for.body.9, label %for.end.75

for.body.9:                                       ; preds = %for.cond.6
  %13 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.9
  %15 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %17 = load i32, i32* %pos, align 4
  %add = add nsw i32 %17, 20
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %cmp21 = icmp ne i32 %conv20, 3
  br i1 %cmp21, label %lor.lhs.false, label %land.lhs.true.29

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %19 = load i32, i32* %pos, align 4
  %add23 = add nsw i32 %19, 20
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %21 = load i32, i32* %other, align 4
  %cmp27 = icmp eq i32 %conv26, %21
  br i1 %cmp27, label %land.lhs.true.29, label %lor.lhs.false.43

land.lhs.true.29:                                 ; preds = %lor.lhs.false, %land.lhs.true.17
  %22 = load i32, i32* %pos, align 4
  %sub30 = sub nsw i32 %22, 20
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom31
  %23 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %23 to i32
  %cmp34 = icmp ne i32 %conv33, 3
  br i1 %cmp34, label %lor.lhs.false.36, label %if.then

lor.lhs.false.36:                                 ; preds = %land.lhs.true.29
  %24 = load i32, i32* %pos, align 4
  %sub37 = sub nsw i32 %24, 20
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %25 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %25 to i32
  %26 = load i32, i32* %other, align 4
  %cmp41 = icmp eq i32 %conv40, %26
  br i1 %cmp41, label %if.then, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.36, %lor.lhs.false
  %27 = load i32, i32* %pos, align 4
  %sub44 = sub nsw i32 %27, 1
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %28 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %28 to i32
  %cmp48 = icmp ne i32 %conv47, 3
  br i1 %cmp48, label %lor.lhs.false.50, label %land.lhs.true.57

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.43
  %29 = load i32, i32* %pos, align 4
  %sub51 = sub nsw i32 %29, 1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %30 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %30 to i32
  %31 = load i32, i32* %other, align 4
  %cmp55 = icmp eq i32 %conv54, %31
  br i1 %cmp55, label %land.lhs.true.57, label %if.end

land.lhs.true.57:                                 ; preds = %lor.lhs.false.50, %lor.lhs.false.43
  %32 = load i32, i32* %pos, align 4
  %add58 = add nsw i32 %32, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %33 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %33 to i32
  %cmp62 = icmp ne i32 %conv61, 3
  br i1 %cmp62, label %lor.lhs.false.64, label %if.then

lor.lhs.false.64:                                 ; preds = %land.lhs.true.57
  %34 = load i32, i32* %pos, align 4
  %add65 = add nsw i32 %34, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %35 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %35 to i32
  %36 = load i32, i32* %other, align 4
  %cmp69 = icmp eq i32 %conv68, %36
  br i1 %cmp69, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.64, %land.lhs.true.57, %lor.lhs.false.36, %land.lhs.true.29
  %37 = load i32, i32* %pos, align 4
  %idxprom71 = sext i32 %37 to i64
  %arrayidx72 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i64 %idxprom71
  store i32 0, i32* %arrayidx72, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.64, %lor.lhs.false.50, %land.lhs.true, %for.body.9
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end
  %38 = load i32, i32* %pos, align 4
  %inc74 = add nsw i32 %38, 1
  store i32 %inc74, i32* %pos, align 4
  br label %for.cond.6

for.end.75:                                       ; preds = %for.cond.6
  %39 = load i32*, i32** %lib2.addr, align 8
  store i32 0, i32* %39, align 4
  %40 = bitcast [400 x i32]* %mrc to i8*
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 1600, i32 16, i1 false)
  %41 = load i32, i32* %str.addr, align 4
  %42 = load i32*, i32** %lib2.addr, align 8
  %arraydecay76 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [400 x i32], [400 x i32]* %mrc, i32 0, i32 0
  %43 = load i32, i32* %color, align 4
  call void @ping_recurse(i32 %41, i32* %42, i32* %arraydecay76, i32* %arraydecay77, i32 %43)
  %44 = load i32*, i32** %lib3.addr, align 8
  store i32 0, i32* %44, align 4
  %45 = bitcast [400 x i32]* %mrc to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 1600, i32 16, i1 false)
  %46 = load i32, i32* %str.addr, align 4
  %47 = load i32*, i32** %lib3.addr, align 8
  %arraydecay78 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i32 0
  %arraydecay79 = getelementptr inbounds [400 x i32], [400 x i32]* %mrc, i32 0, i32 0
  %48 = load i32, i32* %color, align 4
  call void @ping_recurse(i32 %46, i32* %47, i32* %arraydecay78, i32* %arraydecay79, i32 %48)
  %49 = load i32*, i32** %lib4.addr, align 8
  store i32 0, i32* %49, align 4
  %50 = bitcast [400 x i32]* %mrc to i8*
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 1600, i32 16, i1 false)
  %51 = load i32, i32* %str.addr, align 4
  %52 = load i32*, i32** %lib4.addr, align 8
  %arraydecay80 = getelementptr inbounds [400 x i32], [400 x i32]* %mse, i32 0, i32 0
  %arraydecay81 = getelementptr inbounds [400 x i32], [400 x i32]* %mrc, i32 0, i32 0
  %53 = load i32, i32* %color, align 4
  call void @ping_recurse(i32 %51, i32* %52, i32* %arraydecay80, i32* %arraydecay81, i32 %53)
  ret void
}

; Function Attrs: nounwind uwtable
define void @propagate_worm(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %num_stones = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.11

if.else.9:                                        ; preds = %lor.lhs.false
  %5 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %6, 20
  %sub10 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 %sub, i32 %sub10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  %7 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call = call i32 @findstones(i32 %7, i32 361, i32* %arraydecay)
  store i32 %call, i32* %num_stones, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %num_stones, align 4
  %cmp12 = icmp slt i32 %8, %9
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %cmp16 = icmp ne i32 %11, %12
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom19
  %14 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom23
  %16 = bitcast %struct.worm_data* %arrayidx22 to i8*
  %17 = bitcast %struct.worm_data* %arrayidx24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 380, i32 4, i1 false)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_same_worm(i32 %w1, i32 %w2) #0 {
entry:
  %w1.addr = alloca i32, align 4
  %w2.addr = alloca i32, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i32 %w2, i32* %w2.addr, align 4
  %0 = load i32, i32* %w1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  %2 = load i32, i32* %w2.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %origin3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %origin3, align 4
  %cmp = icmp eq i32 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @count_common_libs(i32, i32) #1

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @genus(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %mg = alloca [400 x i32], align 16
  %gen = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 -1, i32* %gen, align 4
  %0 = bitcast [400 x i32]* %mg to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* %mg, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %8 = load i32, i32* %pos, align 4
  %9 = load i32, i32* %str.addr, align 4
  %call = call i32 @is_same_worm(i32 %8, i32 %9)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.5
  %10 = load i32, i32* %str.addr, align 4
  %11 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %mg, i32 0, i32 0
  call void @markcomponent(i32 %10, i32 %11, i32* %arraydecay)
  %12 = load i32, i32* %gen, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %gen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %pos, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %gen, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare void @increase_depth_values() #1

declare i32 @find_defense(i32, i32*) #1

declare i32 @attack(i32, i32*) #1

declare void @popgo() #1

; Function Attrs: nounwind uwtable
define void @change_attack(i32 %str, i32 %move, i32 %acode) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %acode.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %acode, i32* %acode.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %str.addr, align 4
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %str.addr, align 4
  %4 = load i32, i32* %move.addr, align 4
  %5 = load i32, i32* %acode.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %3, i32 %4, i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = load i32, i32* %str.addr, align 4
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %acode.addr, align 4
  %9 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 15
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i32 0
  %10 = load i32, i32* %str.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 16
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i32 0
  call void @change_tactical_point(i32 %6, i32 %7, i32 %8, i32* %arraydecay, i32* %arraydecay5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @change_defense(i32 %str, i32 %move, i32 %dcode) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %dcode.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %dcode, i32* %dcode.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %str.addr, align 4
  %2 = load i32, i32* %str.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %dcode.addr, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 17
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i32 0
  %6 = load i32, i32* %str.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 18
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i32 0
  call void @change_tactical_point(i32 %2, i32 %3, i32 %4, i32* %arraydecay, i32* %arraydecay5)
  ret void
}

declare void @decrease_depth_values() #1

declare i32 @does_defend(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_lunch(i32 %str, i32* %lunch) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %lunch.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %lunch, i32** %lunch.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 962, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @stackp, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %div12 = sdiv i32 %7, 20
  %sub13 = sub nsw i32 %div12, 1
  %8 = load i32, i32* %str.addr, align 4
  %rem14 = srem i32 %8, 20
  %sub15 = sub nsw i32 %rem14, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 963, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %sub13, i32 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  %9 = load i32*, i32** %lunch.addr, align 8
  store i32 0, i32* %9, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %if.end.16
  %10 = load i32, i32* %pos, align 4
  %cmp17 = icmp slt i32 %10, 400
  br i1 %cmp17, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %pos, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i32, i32* %str.addr, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %14 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %sub25 = sub nsw i32 3, %conv24
  %cmp26 = icmp ne i32 %conv21, %sub25
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.body
  br label %for.inc.84

if.end.29:                                        ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc, %if.end.29
  %15 = load i32, i32* %k, align 4
  %cmp31 = icmp slt i32 %15, 8
  br i1 %cmp31, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.30
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom34
  %18 = load i32, i32* %arrayidx35, align 4
  %add = add nsw i32 %16, %18
  store i32 %add, i32* %apos, align 4
  %19 = load i32, i32* %apos, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %20 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp ne i32 %conv38, 3
  br i1 %cmp39, label %land.lhs.true, label %if.end.83

land.lhs.true:                                    ; preds = %for.body.33
  %21 = load i32, i32* %apos, align 4
  %22 = load i32, i32* %str.addr, align 4
  %call = call i32 @is_same_worm(i32 %21, i32 %22)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.41, label %if.end.83

if.then.41:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %23 to i64
  %arrayidx43 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom42
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx43, i32 0, i32 16
  %arrayidx44 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %24 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp ne i32 %24, 0
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.82

land.lhs.true.47:                                 ; preds = %if.then.41
  %25 = load i32, i32* %pos, align 4
  %call48 = call i32 @is_ko_point(i32 %25)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.82, label %if.then.50

if.then.50:                                       ; preds = %land.lhs.true.47
  %26 = load i32*, i32** %lunch.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp51 = icmp eq i32 %27, 0
  br i1 %cmp51, label %if.then.78, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.then.50
  %28 = load i32, i32* %pos, align 4
  %idxprom54 = sext i32 %28 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom54
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx55, i32 0, i32 9
  %29 = load i32, i32* %cutstone, align 4
  %30 = load i32*, i32** %lunch.addr, align 8
  %31 = load i32, i32* %30, align 4
  %idxprom56 = sext i32 %31 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom56
  %cutstone58 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx57, i32 0, i32 9
  %32 = load i32, i32* %cutstone58, align 4
  %cmp59 = icmp sgt i32 %29, %32
  br i1 %cmp59, label %if.then.78, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.53
  %33 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %33 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom62
  %cutstone64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx63, i32 0, i32 9
  %34 = load i32, i32* %cutstone64, align 4
  %35 = load i32*, i32** %lunch.addr, align 8
  %36 = load i32, i32* %35, align 4
  %idxprom65 = sext i32 %36 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom65
  %cutstone67 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx66, i32 0, i32 9
  %37 = load i32, i32* %cutstone67, align 4
  %cmp68 = icmp eq i32 %34, %37
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.81

land.lhs.true.70:                                 ; preds = %lor.lhs.false.61
  %38 = load i32, i32* %pos, align 4
  %idxprom71 = sext i32 %38 to i64
  %arrayidx72 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom71
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx72, i32 0, i32 4
  %39 = load i32, i32* %liberties, align 4
  %40 = load i32*, i32** %lunch.addr, align 8
  %41 = load i32, i32* %40, align 4
  %idxprom73 = sext i32 %41 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom73
  %liberties75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx74, i32 0, i32 4
  %42 = load i32, i32* %liberties75, align 4
  %cmp76 = icmp slt i32 %39, %42
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %land.lhs.true.70, %lor.lhs.false.53, %if.then.50
  %43 = load i32, i32* %pos, align 4
  %idxprom79 = sext i32 %43 to i64
  %arrayidx80 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom79
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx80, i32 0, i32 3
  %44 = load i32, i32* %origin, align 4
  %45 = load i32*, i32** %lunch.addr, align 8
  store i32 %44, i32* %45, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %land.lhs.true.70, %lor.lhs.false.61
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.47, %if.then.41
  br label %for.end

if.end.83:                                        ; preds = %land.lhs.true, %for.body.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.83
  %46 = load i32, i32* %k, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.30

for.end:                                          ; preds = %if.end.82, %for.cond.30
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end, %if.then.28
  %47 = load i32, i32* %pos, align 4
  %inc85 = add nsw i32 %47, 1
  store i32 %inc85, i32* %pos, align 4
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %48 = load i32*, i32** %lunch.addr, align 8
  %49 = load i32, i32* %48, align 4
  %cmp87 = icmp ne i32 %49, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.end.86
  store i32 1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %for.end.86
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.89
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal void @find_worm_threats() #0 {
entry:
  %str = alloca i32, align 4
  %liberties = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %aa = alloca i32, align 4
  %dcode = alloca i32, align 4
  %bb = alloca i32, align 4
  %dcode89 = alloca i32, align 4
  store i32 21, i32* %str, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %0 = load i32, i32* %str, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.103

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %str, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %color, align 4
  %3 = load i32, i32* %color, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %lor.lhs.false.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %color, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %lor.lhs.false.5, label %if.then

lor.lhs.false.5:                                  ; preds = %lor.lhs.false, %for.body
  %5 = load i32, i32* %str, align 4
  %6 = load i32, i32* %str, align 4
  %call = call i32 @is_worm_origin(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false
  br label %for.inc.101

if.end:                                           ; preds = %lor.lhs.false.5
  %7 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %7
  store i32 %sub, i32* %other, align 4
  %8 = load i32, i32* %str, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom6
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx7, i32 0, i32 16
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end
  %10 = load i32, i32* %str, align 4
  %11 = load i32, i32* %str, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom12
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx13, i32 0, i32 19
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i32 0
  %12 = load i32, i32* %str, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom14
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx15, i32 0, i32 20
  %arraydecay16 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i32 0
  %call17 = call i32 @attack_threats(i32 %10, i32 10, i32* %arraydecay, i32* %arraydecay16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.11, %if.end
  %13 = load i32, i32* %str, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom19
  %attack_codes21 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx20, i32 0, i32 16
  %arrayidx22 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes21, i32 0, i64 0
  %14 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %14, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %if.end.18
  %15 = load i32, i32* %str, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom25
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx26, i32 0, i32 18
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %16 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %if.then.30, label %if.end.100

if.then.30:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %str, align 4
  %call31 = call i32 @findlib(i32 %17, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @find_worm_threats.libs, i32 0, i32 0))
  store i32 %call31, i32* %liberties, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.97, %if.then.30
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %liberties, align 4
  %cmp33 = icmp slt i32 %18, %19
  br i1 %cmp33, label %for.body.35, label %for.end.99

for.body.35:                                      ; preds = %for.cond.32
  %20 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_threats.libs, i32 0, i64 %idxprom36
  %21 = load i32, i32* %arrayidx37, align 4
  store i32 %21, i32* %aa, align 4
  %22 = load i32, i32* %aa, align 4
  %23 = load i32, i32* %color, align 4
  %call38 = call i32 @trymove(i32 %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %for.body.35
  %24 = load i32, i32* %str, align 4
  %call41 = call i32 @attack(i32 %24, i32* null)
  %cmp42 = icmp eq i32 %call41, 5
  br i1 %cmp42, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.then.40
  %25 = load i32, i32* %str, align 4
  %call45 = call i32 @find_defense(i32 %25, i32* null)
  store i32 %call45, i32* %dcode, align 4
  %26 = load i32, i32* %dcode, align 4
  %cmp46 = icmp ne i32 %26, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.44
  %27 = load i32, i32* %str, align 4
  %28 = load i32, i32* %aa, align 4
  %29 = load i32, i32* %dcode, align 4
  call void @change_defense_threat(i32 %27, i32 %28, i32 %29)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.40
  call void @popgo()
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body.35
  store i32 0, i32* %l, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.end.51
  %30 = load i32, i32* %l, align 4
  %cmp53 = icmp slt i32 %30, 4
  br i1 %cmp53, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %31 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %31 to i64
  %arrayidx57 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_threats.libs, i32 0, i64 %idxprom56
  %32 = load i32, i32* %arrayidx57, align 4
  %33 = load i32, i32* %l, align 4
  %idxprom58 = sext i32 %33 to i64
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom58
  %34 = load i32, i32* %arrayidx59, align 4
  %add = add nsw i32 %32, %34
  store i32 %add, i32* %bb, align 4
  %35 = load i32, i32* %bb, align 4
  %idxprom60 = sext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom60
  %36 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %36 to i32
  %cmp63 = icmp ne i32 %conv62, 3
  br i1 %cmp63, label %lor.lhs.false.65, label %if.then.80

lor.lhs.false.65:                                 ; preds = %for.body.55
  %37 = load i32, i32* %bb, align 4
  %idxprom66 = sext i32 %37 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %38 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %38 to i32
  %cmp69 = icmp eq i32 %conv68, 1
  br i1 %cmp69, label %if.then.80, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.65
  %39 = load i32, i32* %bb, align 4
  %idxprom72 = sext i32 %39 to i64
  %arrayidx73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom72
  %40 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %40 to i32
  %cmp75 = icmp eq i32 %conv74, 2
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.71
  %41 = load i32, i32* %bb, align 4
  %42 = load i32, i32* %str, align 4
  %call78 = call i32 @liberty_of_string(i32 %41, i32 %42)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false.71, %lor.lhs.false.65, %for.body.55
  br label %for.inc

if.end.81:                                        ; preds = %lor.lhs.false.77
  %43 = load i32, i32* %bb, align 4
  %44 = load i32, i32* %color, align 4
  %45 = load i32, i32* %str, align 4
  %call82 = call i32 @trymove(i32 %43, i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i32 %45, i32 0, i32 0)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.96

if.then.84:                                       ; preds = %if.end.81
  %46 = load i32, i32* %str, align 4
  %call85 = call i32 @attack(i32 %46, i32* null)
  %cmp86 = icmp eq i32 %call85, 5
  br i1 %cmp86, label %if.then.88, label %if.end.95

if.then.88:                                       ; preds = %if.then.84
  %47 = load i32, i32* %str, align 4
  %call90 = call i32 @find_defense(i32 %47, i32* null)
  store i32 %call90, i32* %dcode89, align 4
  %48 = load i32, i32* %dcode89, align 4
  %cmp91 = icmp ne i32 %48, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.88
  %49 = load i32, i32* %str, align 4
  %50 = load i32, i32* %bb, align 4
  %51 = load i32, i32* %dcode89, align 4
  call void @change_defense_threat(i32 %49, i32 %50, i32 %51)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.then.88
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.84
  call void @popgo()
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.96, %if.then.80
  %52 = load i32, i32* %l, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end
  %53 = load i32, i32* %k, align 4
  %inc98 = add nsw i32 %53, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond.32

for.end.99:                                       ; preds = %for.cond.32
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %land.lhs.true, %if.end.18
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100, %if.then
  %54 = load i32, i32* %str, align 4
  %inc102 = add nsw i32 %54, 1
  store i32 %inc102, i32* %str, align 4
  br label %for.cond

for.end.103:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @examine_cavity(i32 %pos, i32* %edge) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %edge.addr = alloca i32*, align 8
  %border_color = alloca i32, align 4
  %ml = alloca [400 x i32], align 16
  %origin = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %edge, i32** %edge.addr, align 8
  store i32 0, i32* %border_color, align 4
  store i32 0, i32* %origin, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1433, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32*, i32** %edge.addr, align 8
  %cmp4 = icmp ne i32* %5, null
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1434, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %6 = bitcast [400 x i32]* %ml to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 1600, i32 16, i1 false)
  %7 = load i32*, i32** %edge.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %11 to i32
  %cmp17 = icmp eq i32 %conv16, 2
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %if.end.8
  %12 = load i32, i32* %pos.addr, align 4
  %call = call i32 @find_origin(i32 %12)
  store i32 %call, i32* %origin, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %lor.lhs.false
  %13 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %ml, i32 0, i32 0
  %14 = load i32*, i32** %edge.addr, align 8
  %15 = load i32, i32* %origin, align 4
  call void @cavity_recurse(i32 %13, i32* %arraydecay, i32* %border_color, i32* %14, i32 %15)
  %16 = load i32, i32* %border_color, align 4
  %cmp21 = icmp eq i32 %16, 3
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 3, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %17 = load i32, i32* %border_color, align 4
  %cmp25 = icmp eq i32 %17, 2
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 5, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %18 = load i32, i32* %border_color, align 4
  %cmp29 = icmp eq i32 %18, 1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 4, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %19 = load i32, i32* %border_color, align 4
  %cmp33 = icmp eq i32 %19, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.else.51

land.lhs.true.35:                                 ; preds = %if.end.32
  %20 = load i32, i32* %pos.addr, align 4
  %cmp36 = icmp eq i32 %20, 0
  br i1 %cmp36, label %land.lhs.true.38, label %lor.lhs.false.42

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %call39 = call i32 @stones_on_board(i32 3)
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.50, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.38, %land.lhs.true.35
  %21 = load i32, i32* %pos.addr, align 4
  %cmp43 = icmp ne i32 %21, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.51

land.lhs.true.45:                                 ; preds = %lor.lhs.false.42
  %call46 = call i32 @stones_on_board(i32 3)
  %22 = load i32, i32* %pos.addr, align 4
  %call47 = call i32 @countstones(i32 %22)
  %cmp48 = icmp eq i32 %call46, %call47
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %land.lhs.true.45, %land.lhs.true.38
  br label %if.end.52

if.else.51:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.42, %if.end.32
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1462, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.65, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.31, %if.then.27, %if.then.23
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @change_tactical_point(i32 %str, i32 %move, i32 %code, i32* %points, i32* %codes) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %points.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32* %points, i32** %points.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %str.addr, align 4
  %3 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 3
  %4 = load i32, i32* %origin, align 4
  %cmp4 = icmp eq i32 %2, %4
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32, i32* %code.addr, align 4
  %7 = load i32*, i32** %points.addr, align 8
  %8 = load i32*, i32** %codes.addr, align 8
  call void @movelist_change_point(i32 %5, i32 %6, i32 10, i32* %7, i32* %8)
  %9 = load i32, i32* %str.addr, align 4
  call void @propagate_worm2(i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @change_defense_threat(i32 %str, i32 %move, i32 %dcode) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %dcode.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %dcode, i32* %dcode.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %str.addr, align 4
  %2 = load i32, i32* %str.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %dcode.addr, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %defense_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 21
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points, i32 0, i32 0
  %6 = load i32, i32* %str.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %defense_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 22
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes, i32 0, i32 0
  call void @change_tactical_point(i32 %2, i32 %3, i32 %4, i32* %arraydecay, i32* %arraydecay5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @change_attack_threat(i32 %str, i32 %move, i32 %acode) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %acode.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %acode, i32* %acode.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 3
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %str.addr, align 4
  %2 = load i32, i32* %str.addr, align 4
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %acode.addr, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 19
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i32 0
  %6 = load i32, i32* %str.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom3
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx4, i32 0, i32 20
  %arraydecay5 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i32 0
  call void @change_tactical_point(i32 %2, i32 %3, i32 %4, i32* %arraydecay, i32* %arraydecay5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @attack_move_known(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 15
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i32 0
  %2 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 16
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i32 0
  %call = call i32 @movelist_move_known(i32 %0, i32 10, i32* %arraydecay, i32* %arraydecay3)
  ret i32 %call
}

declare i32 @movelist_move_known(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @defense_move_known(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 17
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i32 0
  %2 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 18
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i32 0
  %call = call i32 @movelist_move_known(i32 %0, i32 10, i32* %arraydecay, i32* %arraydecay3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @attack_threat_move_known(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 19
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i32 0
  %2 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 20
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i32 0
  %call = call i32 @movelist_move_known(i32 %0, i32 10, i32* %arraydecay, i32* %arraydecay3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @defense_threat_move_known(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %defense_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 21
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points, i32 0, i32 0
  %2 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %defense_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 22
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes, i32 0, i32 0
  %call = call i32 @movelist_move_known(i32 %0, i32 10, i32* %arraydecay, i32* %arraydecay3)
  ret i32 %call
}

declare i32 @findstones(i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @worm_reasons(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.103, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %4 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.103

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %pos, align 4
  %6 = load i32, i32* %pos, align 4
  %call = call i32 @is_worm_origin(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %for.inc.103

if.end.9:                                         ; preds = %if.end
  %7 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %9 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %9
  %cmp13 = icmp eq i32 %conv12, %sub
  br i1 %cmp13, label %if.then.15, label %if.end.54

if.then.15:                                       ; preds = %if.end.9
  store i32 0, i32* %k, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.15
  %10 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %10, 10
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %11 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %11 to i64
  %12 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom21
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx22, i32 0, i32 16
  %arrayidx23 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 %idxprom20
  %13 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp ne i32 %13, 0
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %for.body.19
  %14 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %14 to i64
  %15 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom28
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx29, i32 0, i32 15
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 %idxprom27
  %16 = load i32, i32* %arrayidx30, align 4
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %18 to i64
  %19 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %attack_codes34 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx33, i32 0, i32 16
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes34, i32 0, i64 %idxprom31
  %20 = load i32, i32* %arrayidx35, align 4
  call void @add_attack_move(i32 %16, i32 %17, i32 %20)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.26, %for.body.19
  %21 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %21 to i64
  %22 = load i32, i32* %pos, align 4
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 20
  %arrayidx40 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i64 %idxprom37
  %23 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp ne i32 %23, 0
  br i1 %cmp41, label %if.then.43, label %if.end.53

if.then.43:                                       ; preds = %if.end.36
  %24 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %24 to i64
  %25 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom45
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx46, i32 0, i32 19
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i64 %idxprom44
  %26 = load i32, i32* %arrayidx47, align 4
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %28 to i64
  %29 = load i32, i32* %pos, align 4
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom49
  %attack_threat_codes51 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx50, i32 0, i32 20
  %arrayidx52 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes51, i32 0, i64 %idxprom48
  %30 = load i32, i32* %arrayidx52, align 4
  call void @add_attack_threat_move(i32 %26, i32 %27, i32 %30)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.43, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.end.9
  %32 = load i32, i32* %pos, align 4
  %idxprom55 = sext i32 %32 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %33 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %33 to i32
  %34 = load i32, i32* %color.addr, align 4
  %cmp58 = icmp eq i32 %conv57, %34
  br i1 %cmp58, label %if.then.60, label %if.end.102

if.then.60:                                       ; preds = %if.end.54
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.99, %if.then.60
  %35 = load i32, i32* %k, align 4
  %cmp62 = icmp slt i32 %35, 10
  br i1 %cmp62, label %for.body.64, label %for.end.101

for.body.64:                                      ; preds = %for.cond.61
  %36 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %36 to i64
  %37 = load i32, i32* %pos, align 4
  %idxprom66 = sext i32 %37 to i64
  %arrayidx67 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom66
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx67, i32 0, i32 18
  %arrayidx68 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 %idxprom65
  %38 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp ne i32 %38, 0
  br i1 %cmp69, label %if.then.71, label %if.end.81

if.then.71:                                       ; preds = %for.body.64
  %39 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %39 to i64
  %40 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %40 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom73
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx74, i32 0, i32 17
  %arrayidx75 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 %idxprom72
  %41 = load i32, i32* %arrayidx75, align 4
  %42 = load i32, i32* %pos, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load i32, i32* %pos, align 4
  %idxprom77 = sext i32 %44 to i64
  %arrayidx78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom77
  %defense_codes79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx78, i32 0, i32 18
  %arrayidx80 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes79, i32 0, i64 %idxprom76
  %45 = load i32, i32* %arrayidx80, align 4
  call void @add_defense_move(i32 %41, i32 %42, i32 %45)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.71, %for.body.64
  %46 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %46 to i64
  %47 = load i32, i32* %pos, align 4
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom83
  %defense_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx84, i32 0, i32 22
  %arrayidx85 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes, i32 0, i64 %idxprom82
  %48 = load i32, i32* %arrayidx85, align 4
  %cmp86 = icmp ne i32 %48, 0
  br i1 %cmp86, label %if.then.88, label %if.end.98

if.then.88:                                       ; preds = %if.end.81
  %49 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %49 to i64
  %50 = load i32, i32* %pos, align 4
  %idxprom90 = sext i32 %50 to i64
  %arrayidx91 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom90
  %defense_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx91, i32 0, i32 21
  %arrayidx92 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points, i32 0, i64 %idxprom89
  %51 = load i32, i32* %arrayidx92, align 4
  %52 = load i32, i32* %pos, align 4
  %53 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %53 to i64
  %54 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %54 to i64
  %arrayidx95 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom94
  %defense_threat_codes96 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx95, i32 0, i32 22
  %arrayidx97 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes96, i32 0, i64 %idxprom93
  %55 = load i32, i32* %arrayidx97, align 4
  call void @add_defense_threat_move(i32 %51, i32 %52, i32 %55)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.88, %if.end.81
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %56 = load i32, i32* %k, align 4
  %inc100 = add nsw i32 %56, 1
  store i32 %inc100, i32* %k, align 4
  br label %for.cond.61

for.end.101:                                      ; preds = %for.cond.61
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %if.end.54
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102, %if.then.8, %if.then
  %57 = load i32, i32* %pos, align 4
  %inc104 = add nsw i32 %57, 1
  store i32 %inc104, i32* %pos, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  ret void
}

declare void @add_attack_move(i32, i32, i32) #1

declare void @add_attack_threat_move(i32, i32, i32) #1

declare void @add_defense_move(i32, i32, i32) #1

declare void @add_defense_threat_move(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @get_lively_stones(i32 %color, i8* %safe_stones) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i8*, i8** %safe_stones.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 400, i32 1, i1 false)
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %ii, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %ii, align 4
  %rem = srem i32 %6, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1683, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %ii, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.43, %for.end
  %8 = load i32, i32* %ii, align 4
  %cmp5 = icmp slt i32 %8, 400
  br i1 %cmp5, label %for.body.7, label %for.end.45

for.body.7:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %ii, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.7
  %11 = load i32, i32* %ii, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %cmp16 = icmp eq i32 %conv15, 2
  br i1 %cmp16, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body.7
  %13 = load i32, i32* %ii, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom18
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx19, i32 0, i32 3
  %14 = load i32, i32* %origin, align 4
  %15 = load i32, i32* %ii, align 4
  %cmp20 = icmp eq i32 %14, %15
  br i1 %cmp20, label %if.then.22, label %if.end.42

if.then.22:                                       ; preds = %land.lhs.true
  %16 = load i32, i32* %ii, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom23
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx24, i32 0, i32 16
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %17 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %17, 0
  br i1 %cmp26, label %if.then.40, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.then.22
  %18 = load i32, i32* %ii, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %19 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %19 to i32
  %20 = load i32, i32* %color.addr, align 4
  %cmp32 = icmp eq i32 %conv31, %20
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.41

land.lhs.true.34:                                 ; preds = %lor.lhs.false.28
  %21 = load i32, i32* %ii, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom35
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx36, i32 0, i32 18
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %22 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp ne i32 %22, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.34, %if.then.22
  %23 = load i32, i32* %ii, align 4
  %24 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_string(i32 %23, i8* %24, i8 signext 1)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %land.lhs.true.34, %lor.lhs.false.28
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true, %lor.lhs.false
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %25 = load i32, i32* %ii, align 4
  %inc44 = add nsw i32 %25, 1
  store i32 %inc44, i32* %ii, align 4
  br label %for.cond.4

for.end.45:                                       ; preds = %for.cond.4
  ret void
}

declare void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @compute_worm_influence() #0 {
entry:
  %safe_stones = alloca [400 x i8], align 16
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @get_lively_stones(i32 2, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @compute_influence(i32 2, i8* %arraydecay1, float* null, %struct.influence_data* @initial_black_influence, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0))
  %arraydecay2 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @get_lively_stones(i32 1, i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @compute_influence(i32 1, i8* %arraydecay3, float* null, %struct.influence_data* @initial_white_influence, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

declare void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define void @ascii_report_worm(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8
  %0 = load i32, i32* @board_size, align 4
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i32 @string_to_location(i32 %0, i8* %1, i32* %m, i32* %n)
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* %n, align 4
  call void @report_worm(i32 %2, i32 %3)
  ret void
}

declare i32 @string_to_location(i32, i8*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @report_worm(i32 %m, i32 %n) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %add, %1
  store i32 %add1, i32* %pos, align 4
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %pos, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 %4)
  br label %if.end.247

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %pos, align 4
  %call3 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %5)
  %6 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %color, align 4
  %cmp6 = icmp eq i32 %7, 1
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 3
  %9 = load i32, i32* %origin, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 1
  %11 = load i32, i32* %size, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom12
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx13, i32 0, i32 2
  %13 = load float, float* %effective_size, align 4
  %conv14 = fpext float %13 to double
  %call15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i32 0, i32 0), i8* %cond, i32 %9, i32 %11, double %conv14)
  %14 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 4
  %15 = load i32, i32* %liberties, align 4
  %16 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom18
  %liberties2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx19, i32 0, i32 5
  %17 = load i32, i32* %liberties2, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom20
  %liberties3 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx21, i32 0, i32 6
  %19 = load i32, i32* %liberties3, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom22
  %liberties4 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx23, i32 0, i32 7
  %21 = load i32, i32* %liberties4, align 4
  %call24 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i32 0, i32 0), i32 %15, i32 %17, i32 %19, i32 %21)
  %22 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom25
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx26, i32 0, i32 15
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %23 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  %call31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.57

if.else:                                          ; preds = %if.end
  %call32 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.44, %if.else
  %24 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %24 to i64
  %25 = load i32, i32* %pos, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom34
  %attack_points36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx35, i32 0, i32 15
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points36, i32 0, i64 %idxprom33
  %26 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp ne i32 %26, 0
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %i, align 4
  %cmp40 = icmp sgt i32 %27, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %while.body
  %call43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %while.body
  %28 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %28 to i64
  %29 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom46
  %attack_points48 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx47, i32 0, i32 15
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points48, i32 0, i64 %idxprom45
  %30 = load i32, i32* %arrayidx49, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %31 to i64
  %32 = load i32, i32* %pos, align 4
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom51
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx52, i32 0, i32 16
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 %idxprom50
  %33 = load i32, i32* %arrayidx53, align 4
  %call54 = call i8* @result_to_string(i32 %33)
  %call55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %30, i8* %call54)
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.57

if.end.57:                                        ; preds = %while.end, %if.then.30
  %35 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom58
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx59, i32 0, i32 17
  %arrayidx60 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %36 = load i32, i32* %arrayidx60, align 4
  %cmp61 = icmp eq i32 %36, 0
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.57
  %call64 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.95

if.else.65:                                       ; preds = %if.end.57
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %while.cond.67

while.cond.67:                                    ; preds = %if.end.80, %if.else.65
  %37 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %37 to i64
  %38 = load i32, i32* %pos, align 4
  %idxprom69 = sext i32 %38 to i64
  %arrayidx70 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom69
  %defense_points71 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx70, i32 0, i32 17
  %arrayidx72 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points71, i32 0, i64 %idxprom68
  %39 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp ne i32 %39, 0
  br i1 %cmp73, label %while.body.75, label %while.end.93

while.body.75:                                    ; preds = %while.cond.67
  %40 = load i32, i32* %i, align 4
  %cmp76 = icmp sgt i32 %40, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %while.body.75
  %call79 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %while.body.75
  %41 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %41 to i64
  %42 = load i32, i32* %pos, align 4
  %idxprom82 = sext i32 %42 to i64
  %arrayidx83 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom82
  %defense_points84 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx83, i32 0, i32 17
  %arrayidx85 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points84, i32 0, i64 %idxprom81
  %43 = load i32, i32* %arrayidx85, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %44 to i64
  %45 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom87
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx88, i32 0, i32 18
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 %idxprom86
  %46 = load i32, i32* %arrayidx89, align 4
  %call90 = call i8* @result_to_string(i32 %46)
  %call91 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %43, i8* %call90)
  %47 = load i32, i32* %i, align 4
  %inc92 = add nsw i32 %47, 1
  store i32 %inc92, i32* %i, align 4
  br label %while.cond.67

while.end.93:                                     ; preds = %while.cond.67
  %call94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.95

if.end.95:                                        ; preds = %while.end.93, %if.then.63
  %48 = load i32, i32* %pos, align 4
  %idxprom96 = sext i32 %48 to i64
  %arrayidx97 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom96
  %attack_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx97, i32 0, i32 19
  %arrayidx98 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points, i32 0, i64 0
  %49 = load i32, i32* %arrayidx98, align 4
  %cmp99 = icmp eq i32 %49, 0
  br i1 %cmp99, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %if.end.95
  %call102 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.133

if.else.103:                                      ; preds = %if.end.95
  %call104 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %while.cond.105

while.cond.105:                                   ; preds = %if.end.118, %if.else.103
  %50 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %50 to i64
  %51 = load i32, i32* %pos, align 4
  %idxprom107 = sext i32 %51 to i64
  %arrayidx108 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom107
  %attack_threat_points109 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx108, i32 0, i32 19
  %arrayidx110 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points109, i32 0, i64 %idxprom106
  %52 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp ne i32 %52, 0
  br i1 %cmp111, label %while.body.113, label %while.end.131

while.body.113:                                   ; preds = %while.cond.105
  %53 = load i32, i32* %i, align 4
  %cmp114 = icmp sgt i32 %53, 0
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %while.body.113
  %call117 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %while.body.113
  %54 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %54 to i64
  %55 = load i32, i32* %pos, align 4
  %idxprom120 = sext i32 %55 to i64
  %arrayidx121 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom120
  %attack_threat_points122 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx121, i32 0, i32 19
  %arrayidx123 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_points122, i32 0, i64 %idxprom119
  %56 = load i32, i32* %arrayidx123, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %57 to i64
  %58 = load i32, i32* %pos, align 4
  %idxprom125 = sext i32 %58 to i64
  %arrayidx126 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom125
  %attack_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx126, i32 0, i32 20
  %arrayidx127 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_threat_codes, i32 0, i64 %idxprom124
  %59 = load i32, i32* %arrayidx127, align 4
  %call128 = call i8* @result_to_string(i32 %59)
  %call129 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %56, i8* %call128)
  %60 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %60, 1
  store i32 %inc130, i32* %i, align 4
  br label %while.cond.105

while.end.131:                                    ; preds = %while.cond.105
  %call132 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.133

if.end.133:                                       ; preds = %while.end.131, %if.then.101
  %61 = load i32, i32* %pos, align 4
  %idxprom134 = sext i32 %61 to i64
  %arrayidx135 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom134
  %defense_threat_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx135, i32 0, i32 21
  %arrayidx136 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points, i32 0, i64 0
  %62 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp eq i32 %62, 0
  br i1 %cmp137, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %if.end.133
  %call140 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.171

if.else.141:                                      ; preds = %if.end.133
  %call142 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %while.cond.143

while.cond.143:                                   ; preds = %if.end.156, %if.else.141
  %63 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %63 to i64
  %64 = load i32, i32* %pos, align 4
  %idxprom145 = sext i32 %64 to i64
  %arrayidx146 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom145
  %defense_threat_points147 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx146, i32 0, i32 21
  %arrayidx148 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points147, i32 0, i64 %idxprom144
  %65 = load i32, i32* %arrayidx148, align 4
  %cmp149 = icmp ne i32 %65, 0
  br i1 %cmp149, label %while.body.151, label %while.end.169

while.body.151:                                   ; preds = %while.cond.143
  %66 = load i32, i32* %i, align 4
  %cmp152 = icmp sgt i32 %66, 0
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %while.body.151
  %call155 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %while.body.151
  %67 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %67 to i64
  %68 = load i32, i32* %pos, align 4
  %idxprom158 = sext i32 %68 to i64
  %arrayidx159 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom158
  %defense_threat_points160 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx159, i32 0, i32 21
  %arrayidx161 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_points160, i32 0, i64 %idxprom157
  %69 = load i32, i32* %arrayidx161, align 4
  %70 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %70 to i64
  %71 = load i32, i32* %pos, align 4
  %idxprom163 = sext i32 %71 to i64
  %arrayidx164 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom163
  %defense_threat_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx164, i32 0, i32 22
  %arrayidx165 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_threat_codes, i32 0, i64 %idxprom162
  %72 = load i32, i32* %arrayidx165, align 4
  %call166 = call i8* @result_to_string(i32 %72)
  %call167 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %69, i8* %call166)
  %73 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %73, 1
  store i32 %inc168, i32* %i, align 4
  br label %while.cond.143

while.end.169:                                    ; preds = %while.cond.143
  %call170 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.171

if.end.171:                                       ; preds = %while.end.169, %if.then.139
  %74 = load i32, i32* %pos, align 4
  %idxprom172 = sext i32 %74 to i64
  %arrayidx173 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom172
  %lunch = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx173, i32 0, i32 8
  %75 = load i32, i32* %lunch, align 4
  %cmp174 = icmp ne i32 %75, 0
  br i1 %cmp174, label %if.then.176, label %if.end.181

if.then.176:                                      ; preds = %if.end.171
  %76 = load i32, i32* %pos, align 4
  %idxprom177 = sext i32 %76 to i64
  %arrayidx178 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom177
  %lunch179 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx178, i32 0, i32 8
  %77 = load i32, i32* %lunch179, align 4
  %call180 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 %77)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.176, %if.end.171
  %78 = load i32, i32* %pos, align 4
  %idxprom182 = sext i32 %78 to i64
  %arrayidx183 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom182
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx183, i32 0, i32 9
  %79 = load i32, i32* %cutstone, align 4
  %80 = load i32, i32* %pos, align 4
  %idxprom184 = sext i32 %80 to i64
  %arrayidx185 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom184
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx185, i32 0, i32 10
  %81 = load i32, i32* %cutstone2, align 4
  %call186 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i32 %79, i32 %81)
  %82 = load i32, i32* %pos, align 4
  %idxprom187 = sext i32 %82 to i64
  %arrayidx188 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom187
  %genus = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx188, i32 0, i32 11
  %83 = load i32, i32* %genus, align 4
  %call189 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %83)
  %84 = load i32, i32* %pos, align 4
  %idxprom190 = sext i32 %84 to i64
  %arrayidx191 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom190
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx191, i32 0, i32 12
  %85 = load i32, i32* %inessential, align 4
  %tobool = icmp ne i32 %85, 0
  br i1 %tobool, label %if.then.192, label %if.else.194

if.then.192:                                      ; preds = %if.end.181
  %call193 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.196

if.else.194:                                      ; preds = %if.end.181
  %call195 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.194, %if.then.192
  %86 = load i32, i32* %pos, align 4
  %idxprom197 = sext i32 %86 to i64
  %arrayidx198 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom197
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx198, i32 0, i32 13
  %87 = load i32, i32* %invincible, align 4
  %tobool199 = icmp ne i32 %87, 0
  br i1 %tobool199, label %if.then.200, label %if.else.202

if.then.200:                                      ; preds = %if.end.196
  %call201 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.204

if.else.202:                                      ; preds = %if.end.196
  %call203 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.202, %if.then.200
  %88 = load i32, i32* %pos, align 4
  %idxprom205 = sext i32 %88 to i64
  %arrayidx206 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom205
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx206, i32 0, i32 14
  %89 = load i32, i32* %unconditional_status, align 4
  %cmp207 = icmp eq i32 %89, 1
  br i1 %cmp207, label %if.then.209, label %if.else.211

if.then.209:                                      ; preds = %if.end.204
  %call210 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.247

if.else.211:                                      ; preds = %if.end.204
  %90 = load i32, i32* %pos, align 4
  %idxprom212 = sext i32 %90 to i64
  %arrayidx213 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom212
  %unconditional_status214 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx213, i32 0, i32 14
  %91 = load i32, i32* %unconditional_status214, align 4
  %cmp215 = icmp eq i32 %91, 0
  br i1 %cmp215, label %if.then.217, label %if.else.219

if.then.217:                                      ; preds = %if.else.211
  %call218 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.246

if.else.219:                                      ; preds = %if.else.211
  %92 = load i32, i32* %pos, align 4
  %idxprom220 = sext i32 %92 to i64
  %arrayidx221 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom220
  %unconditional_status222 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx221, i32 0, i32 14
  %93 = load i32, i32* %unconditional_status222, align 4
  %cmp223 = icmp eq i32 %93, 4
  br i1 %cmp223, label %if.then.225, label %if.else.227

if.then.225:                                      ; preds = %if.else.219
  %call226 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.245

if.else.227:                                      ; preds = %if.else.219
  %94 = load i32, i32* %pos, align 4
  %idxprom228 = sext i32 %94 to i64
  %arrayidx229 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom228
  %unconditional_status230 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx229, i32 0, i32 14
  %95 = load i32, i32* %unconditional_status230, align 4
  %cmp231 = icmp eq i32 %95, 5
  br i1 %cmp231, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %if.else.227
  %call234 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.244

if.else.235:                                      ; preds = %if.else.227
  %96 = load i32, i32* %pos, align 4
  %idxprom236 = sext i32 %96 to i64
  %arrayidx237 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom236
  %unconditional_status238 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx237, i32 0, i32 14
  %97 = load i32, i32* %unconditional_status238, align 4
  %cmp239 = icmp eq i32 %97, 3
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.else.235
  %call242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.else.235
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.then.233
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.225
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.217
  br label %if.end.247

if.end.247:                                       ; preds = %if.then, %if.end.246, %if.then.209
  ret void
}

declare i8* @result_to_string(i32) #1

declare i32 @countlib(i32) #1

declare i32 @countstones(i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_compute_effective_worm_sizes(i32 %color, [4 x i32]* %cw, i32* %ncw, i32 %max_distance) #0 {
entry:
  %color.addr = alloca i32, align 4
  %cw.addr = alloca [4 x i32]*, align 8
  %ncw.addr = alloca i32*, align 8
  %max_distance.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %distance = alloca [400 x i32], align 16
  %nworms = alloca [400 x i32], align 16
  %found_one = alloca i32, align 4
  %dist = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %already_counted = alloca i32, align 4
  %w = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store [4 x i32]* %cw, [4 x i32]** %cw.addr, align 8
  store i32* %ncw, i32** %ncw.addr, align 8
  store i32 %max_distance, i32* %max_distance.addr, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.30

if.end:                                           ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.end
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %4, 1
  %mul = mul nsw i32 2, %sub
  %cmp4 = icmp slt i32 %3, %mul
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %5 to i64
  %6 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx9, i32 0, i64 %idxprom7
  store i32 0, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %8 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom11
  store i32 0, i32* %arrayidx12, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %11 = load i32, i32* %color.addr, align 4
  %and = and i32 %conv15, %11
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.end
  %12 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom17
  store i32 0, i32* %arrayidx18, align 4
  %13 = load i32, i32* %pos, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom19
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx20, i32 0, i32 3
  %14 = load i32, i32* %origin, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx22, i32 0, i64 0
  store i32 %14, i32* %arrayidx23, align 4
  %16 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom24
  %17 = load i32, i32* %arrayidx25, align 4
  %inc26 = add nsw i32 %17, 1
  store i32 %inc26, i32* %arrayidx25, align 4
  br label %if.end.29

if.else:                                          ; preds = %for.end
  %18 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom27
  store i32 -1, i32* %arrayidx28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.16
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29, %if.then
  %19 = load i32, i32* %pos, align 4
  %inc31 = add nsw i32 %19, 1
  store i32 %inc31, i32* %pos, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  store i32 0, i32* %dist, align 4
  store i32 1, i32* %found_one, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.132, %for.end.32
  %20 = load i32, i32* %found_one, align 4
  %tobool33 = icmp ne i32 %20, 0
  br i1 %tobool33, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i32, i32* %dist, align 4
  %22 = load i32, i32* %max_distance.addr, align 4
  %cmp34 = icmp sle i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, i32* %found_one, align 4
  %24 = load i32, i32* %dist, align 4
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, i32* %dist, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.130, %while.body
  %25 = load i32, i32* %pos, align 4
  %cmp38 = icmp slt i32 %25, 400
  br i1 %cmp38, label %for.body.40, label %for.end.132

for.body.40:                                      ; preds = %for.cond.37
  %26 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %cmp44 = icmp ne i32 %conv43, 3
  br i1 %cmp44, label %lor.lhs.false, label %if.then.50

lor.lhs.false:                                    ; preds = %for.body.40
  %28 = load i32, i32* %pos, align 4
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom46
  %29 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp ne i32 %29, -1
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false, %for.body.40
  br label %for.inc.130

if.end.51:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %r, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.127, %if.end.51
  %30 = load i32, i32* %r, align 4
  %cmp53 = icmp slt i32 %30, 4
  br i1 %cmp53, label %for.body.55, label %for.end.129

for.body.55:                                      ; preds = %for.cond.52
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %r, align 4
  %idxprom56 = sext i32 %32 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom56
  %33 = load i32, i32* %arrayidx57, align 4
  %add = add nsw i32 %31, %33
  store i32 %add, i32* %pos2, align 4
  %34 = load i32, i32* %pos2, align 4
  %idxprom58 = sext i32 %34 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %35 to i32
  %cmp61 = icmp ne i32 %conv60, 3
  br i1 %cmp61, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %for.body.55
  %36 = load i32, i32* %pos2, align 4
  %idxprom63 = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom63
  %37 = load i32, i32* %arrayidx64, align 4
  %38 = load i32, i32* %dist, align 4
  %sub65 = sub nsw i32 %38, 1
  %cmp66 = icmp eq i32 %37, %sub65
  br i1 %cmp66, label %if.then.68, label %if.end.126

if.then.68:                                       ; preds = %land.lhs.true
  store i32 1, i32* %found_one, align 4
  %39 = load i32, i32* %dist, align 4
  %40 = load i32, i32* %pos, align 4
  %idxprom69 = sext i32 %40 to i64
  %arrayidx70 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom69
  store i32 %39, i32* %arrayidx70, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.123, %if.then.68
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %pos2, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom72
  %43 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp slt i32 %41, %43
  br i1 %cmp74, label %for.body.76, label %for.end.125

for.body.76:                                      ; preds = %for.cond.71
  store i32 0, i32* %already_counted, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.95, %for.body.76
  %44 = load i32, i32* %l, align 4
  %45 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %45 to i64
  %arrayidx79 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom78
  %46 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp slt i32 %44, %46
  br i1 %cmp80, label %for.body.82, label %for.end.97

for.body.82:                                      ; preds = %for.cond.77
  %47 = load i32, i32* %l, align 4
  %idxprom83 = sext i32 %47 to i64
  %48 = load i32, i32* %pos, align 4
  %idxprom84 = sext i32 %48 to i64
  %arrayidx85 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx85, i32 0, i64 %idxprom83
  %49 = load i32, i32* %arrayidx86, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %50 to i64
  %51 = load i32, i32* %pos2, align 4
  %idxprom88 = sext i32 %51 to i64
  %arrayidx89 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx89, i32 0, i64 %idxprom87
  %52 = load i32, i32* %arrayidx90, align 4
  %cmp91 = icmp eq i32 %49, %52
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.body.82
  store i32 1, i32* %already_counted, align 4
  br label %for.end.97

if.end.94:                                        ; preds = %for.body.82
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %53 = load i32, i32* %l, align 4
  %inc96 = add nsw i32 %53, 1
  store i32 %inc96, i32* %l, align 4
  br label %for.cond.77

for.end.97:                                       ; preds = %if.then.93, %for.cond.77
  %54 = load i32, i32* %already_counted, align 4
  %tobool98 = icmp ne i32 %54, 0
  br i1 %tobool98, label %if.end.122, label %if.then.99

if.then.99:                                       ; preds = %for.end.97
  %55 = load i32, i32* %pos, align 4
  %idxprom100 = sext i32 %55 to i64
  %arrayidx101 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom100
  %56 = load i32, i32* %arrayidx101, align 4
  %57 = load i32, i32* @board_size, align 4
  %sub102 = sub nsw i32 %57, 1
  %mul103 = mul nsw i32 2, %sub102
  %cmp104 = icmp slt i32 %56, %mul103
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.then.99
  br label %if.end.108

if.else.107:                                      ; preds = %if.then.99
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.107, %if.then.106
  %58 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %58 to i64
  %59 = load i32, i32* %pos2, align 4
  %idxprom110 = sext i32 %59 to i64
  %arrayidx111 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx111, i32 0, i64 %idxprom109
  %60 = load i32, i32* %arrayidx112, align 4
  %61 = load i32, i32* %pos, align 4
  %idxprom113 = sext i32 %61 to i64
  %arrayidx114 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom113
  %62 = load i32, i32* %arrayidx114, align 4
  %idxprom115 = sext i32 %62 to i64
  %63 = load i32, i32* %pos, align 4
  %idxprom116 = sext i32 %63 to i64
  %arrayidx117 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx117, i32 0, i64 %idxprom115
  store i32 %60, i32* %arrayidx118, align 4
  %64 = load i32, i32* %pos, align 4
  %idxprom119 = sext i32 %64 to i64
  %arrayidx120 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom119
  %65 = load i32, i32* %arrayidx120, align 4
  %inc121 = add nsw i32 %65, 1
  store i32 %inc121, i32* %arrayidx120, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.108, %for.end.97
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %66 = load i32, i32* %k, align 4
  %inc124 = add nsw i32 %66, 1
  store i32 %inc124, i32* %k, align 4
  br label %for.cond.71

for.end.125:                                      ; preds = %for.cond.71
  br label %if.end.126

if.end.126:                                       ; preds = %for.end.125, %land.lhs.true, %for.body.55
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126
  %67 = load i32, i32* %r, align 4
  %inc128 = add nsw i32 %67, 1
  store i32 %inc128, i32* %r, align 4
  br label %for.cond.52

for.end.129:                                      ; preds = %for.cond.52
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end.129, %if.then.50
  %68 = load i32, i32* %pos, align 4
  %inc131 = add nsw i32 %68, 1
  store i32 %inc131, i32* %pos, align 4
  br label %for.cond.37

for.end.132:                                      ; preds = %for.cond.37
  br label %while.cond

while.end:                                        ; preds = %land.end
  %69 = load i32, i32* %color.addr, align 4
  %cmp133 = icmp eq i32 %69, 3
  br i1 %cmp133, label %if.then.135, label %if.end.207

if.then.135:                                      ; preds = %while.end
  store i32 21, i32* %pos, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.182, %if.then.135
  %70 = load i32, i32* %pos, align 4
  %cmp137 = icmp slt i32 %70, 400
  br i1 %cmp137, label %for.body.139, label %for.end.184

for.body.139:                                     ; preds = %for.cond.136
  %71 = load i32, i32* %pos, align 4
  %idxprom140 = sext i32 %71 to i64
  %arrayidx141 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom140
  %72 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %72 to i32
  %cmp143 = icmp ne i32 %conv142, 3
  br i1 %cmp143, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %for.body.139
  br label %for.inc.182

if.end.146:                                       ; preds = %for.body.139
  store i32 0, i32* %k, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.179, %if.end.146
  %73 = load i32, i32* %k, align 4
  %74 = load i32, i32* %pos, align 4
  %idxprom148 = sext i32 %74 to i64
  %arrayidx149 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom148
  %75 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp slt i32 %73, %75
  br i1 %cmp150, label %for.body.152, label %for.end.181

for.body.152:                                     ; preds = %for.cond.147
  %76 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %76 to i64
  %77 = load i32, i32* %pos, align 4
  %idxprom154 = sext i32 %77 to i64
  %arrayidx155 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx155, i32 0, i64 %idxprom153
  %78 = load i32, i32* %arrayidx156, align 4
  store i32 %78, i32* %w, align 4
  %79 = load i32, i32* %pos, align 4
  %idxprom157 = sext i32 %79 to i64
  %arrayidx158 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom157
  %80 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %80 to i32
  %cmp160 = icmp eq i32 %conv159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.171

if.then.162:                                      ; preds = %for.body.152
  %81 = load i32, i32* %pos, align 4
  %idxprom163 = sext i32 %81 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom163
  %82 = load i32, i32* %arrayidx164, align 4
  %conv165 = sitofp i32 %82 to double
  %div = fdiv double 5.000000e-01, %conv165
  %83 = load i32, i32* %w, align 4
  %idxprom166 = sext i32 %83 to i64
  %arrayidx167 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom166
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx167, i32 0, i32 2
  %84 = load float, float* %effective_size, align 4
  %conv168 = fpext float %84 to double
  %add169 = fadd double %conv168, %div
  %conv170 = fptrunc double %add169 to float
  store float %conv170, float* %effective_size, align 4
  br label %if.end.178

if.else.171:                                      ; preds = %for.body.152
  %85 = load i32, i32* %w, align 4
  %idxprom172 = sext i32 %85 to i64
  %arrayidx173 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom172
  %effective_size174 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx173, i32 0, i32 2
  %86 = load float, float* %effective_size174, align 4
  %conv175 = fpext float %86 to double
  %add176 = fadd double %conv175, 1.000000e+00
  %conv177 = fptrunc double %add176 to float
  store float %conv177, float* %effective_size174, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.171, %if.then.162
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %87 = load i32, i32* %k, align 4
  %inc180 = add nsw i32 %87, 1
  store i32 %inc180, i32* %k, align 4
  br label %for.cond.147

for.end.181:                                      ; preds = %for.cond.147
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181, %if.then.145
  %88 = load i32, i32* %pos, align 4
  %inc183 = add nsw i32 %88, 1
  store i32 %inc183, i32* %pos, align 4
  br label %for.cond.136

for.end.184:                                      ; preds = %for.cond.136
  store i32 21, i32* %pos, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.204, %for.end.184
  %89 = load i32, i32* %pos, align 4
  %cmp186 = icmp slt i32 %89, 400
  br i1 %cmp186, label %for.body.188, label %for.end.206

for.body.188:                                     ; preds = %for.cond.185
  %90 = load i32, i32* %pos, align 4
  %idxprom189 = sext i32 %90 to i64
  %arrayidx190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom189
  %91 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %91 to i32
  %cmp192 = icmp eq i32 %conv191, 1
  br i1 %cmp192, label %land.lhs.true.200, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %for.body.188
  %92 = load i32, i32* %pos, align 4
  %idxprom195 = sext i32 %92 to i64
  %arrayidx196 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom195
  %93 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %93 to i32
  %cmp198 = icmp eq i32 %conv197, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.203

land.lhs.true.200:                                ; preds = %lor.lhs.false.194, %for.body.188
  %94 = load i32, i32* %pos, align 4
  %95 = load i32, i32* %pos, align 4
  %call = call i32 @is_worm_origin(i32 %94, i32 %95)
  %tobool201 = icmp ne i32 %call, 0
  br i1 %tobool201, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %land.lhs.true.200
  %96 = load i32, i32* %pos, align 4
  call void @propagate_worm(i32 %96)
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.202, %land.lhs.true.200, %lor.lhs.false.194
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %97 = load i32, i32* %pos, align 4
  %inc205 = add nsw i32 %97, 1
  store i32 %inc205, i32* %pos, align 4
  br label %for.cond.185

for.end.206:                                      ; preds = %for.cond.185
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %while.end
  store i32 21, i32* %pos, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.249, %if.end.207
  %98 = load i32, i32* %pos, align 4
  %cmp209 = icmp slt i32 %98, 400
  br i1 %cmp209, label %for.body.211, label %for.end.251

for.body.211:                                     ; preds = %for.cond.208
  %99 = load i32, i32* %pos, align 4
  %idxprom212 = sext i32 %99 to i64
  %arrayidx213 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom212
  %100 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %100 to i32
  %cmp215 = icmp ne i32 %conv214, 3
  br i1 %cmp215, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %for.body.211
  br label %for.inc.249

if.end.218:                                       ; preds = %for.body.211
  %101 = load i32, i32* %pos, align 4
  %idxprom219 = sext i32 %101 to i64
  %arrayidx220 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom219
  %102 = load i32, i32* %arrayidx220, align 4
  %cmp221 = icmp sgt i32 %102, 4
  br i1 %cmp221, label %if.then.223, label %if.else.226

if.then.223:                                      ; preds = %if.end.218
  %103 = load i32, i32* %pos, align 4
  %idxprom224 = sext i32 %103 to i64
  %104 = load i32*, i32** %ncw.addr, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %104, i64 %idxprom224
  store i32 0, i32* %arrayidx225, align 4
  br label %if.end.231

if.else.226:                                      ; preds = %if.end.218
  %105 = load i32, i32* %pos, align 4
  %idxprom227 = sext i32 %105 to i64
  %arrayidx228 = getelementptr inbounds [400 x i32], [400 x i32]* %nworms, i32 0, i64 %idxprom227
  %106 = load i32, i32* %arrayidx228, align 4
  %107 = load i32, i32* %pos, align 4
  %idxprom229 = sext i32 %107 to i64
  %108 = load i32*, i32** %ncw.addr, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %108, i64 %idxprom229
  store i32 %106, i32* %arrayidx230, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.226, %if.then.223
  store i32 0, i32* %k, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.246, %if.end.231
  %109 = load i32, i32* %k, align 4
  %110 = load i32, i32* %pos, align 4
  %idxprom233 = sext i32 %110 to i64
  %111 = load i32*, i32** %ncw.addr, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %111, i64 %idxprom233
  %112 = load i32, i32* %arrayidx234, align 4
  %cmp235 = icmp slt i32 %109, %112
  br i1 %cmp235, label %for.body.237, label %for.end.248

for.body.237:                                     ; preds = %for.cond.232
  %113 = load i32, i32* %k, align 4
  %idxprom238 = sext i32 %113 to i64
  %114 = load i32, i32* %pos, align 4
  %idxprom239 = sext i32 %114 to i64
  %arrayidx240 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i32 0, i64 %idxprom239
  %arrayidx241 = getelementptr inbounds [36 x i32], [36 x i32]* %arrayidx240, i32 0, i64 %idxprom238
  %115 = load i32, i32* %arrayidx241, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom242 = sext i32 %116 to i64
  %117 = load i32, i32* %pos, align 4
  %idxprom243 = sext i32 %117 to i64
  %118 = load [4 x i32]*, [4 x i32]** %cw.addr, align 8
  %arrayidx244 = getelementptr inbounds [4 x i32], [4 x i32]* %118, i64 %idxprom243
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx244, i32 0, i64 %idxprom242
  store i32 %115, i32* %arrayidx245, align 4
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.237
  %119 = load i32, i32* %k, align 4
  %inc247 = add nsw i32 %119, 1
  store i32 %inc247, i32* %k, align 4
  br label %for.cond.232

for.end.248:                                      ; preds = %for.cond.232
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248, %if.then.217
  %120 = load i32, i32* %pos, align 4
  %inc250 = add nsw i32 %120, 1
  store i32 %inc250, i32* %pos, align 4
  br label %for.cond.208

for.end.251:                                      ; preds = %for.cond.208
  ret void
}

declare void @unconditional_life(i32*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_attack_patterns() #0 {
entry:
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @attack_callback, i32 7, %struct.pattern_db* @attpat_db, i8* null, i8* null)
  ret void
}

declare i32 @liberty_of_string(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @find_defense_patterns() #0 {
entry:
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @defense_callback, i32 6, %struct.pattern_db* @defpat_db, i8* null, i8* null)
  ret void
}

declare i32 @findlib(i32, i32, i32*) #1

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @attack_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %move = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %str = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 11
  %3 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %move, align 4
  %6 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 22
  %7 = load i32, i32* %autohelper_flag, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 24
  %9 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %10 = load i32, i32* %ll.addr, align 4
  %11 = load i32, i32* %move, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 %9(i32 %10, i32 %11, i32 %12, i32 0)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %13 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 23
  %14 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool6 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper8 = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 23
  %16 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper8, align 8
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %18 = load i32, i32* %ll.addr, align 4
  %19 = load i32, i32* %move, align 4
  %20 = load i32, i32* %color.addr, align 4
  %call9 = call i32 %16(%struct.pattern* %17, i32 %18, i32 %19, i32 %20)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.then.7
  %21 = load i32, i32* @debug, align 4
  %and12 = and i32 %21, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.11
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %22 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 3
  %23 = load i8*, i8** %name, align 8
  %24 = load i32, i32* %ll.addr, align 4
  %25 = load i32, i32* %move, align 4
  %call14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i32 0, i32 0), i8* %23, i32 %24, i32 %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.end

if.end.15:                                        ; preds = %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %26 = load i32, i32* %k, align 4
  %27 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 1
  %28 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 0
  %31 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx18 = getelementptr inbounds %struct.patval, %struct.patval* %31, i64 %idxprom17
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx18, i32 0, i32 1
  %32 = load i32, i32* %att, align 4
  %cmp19 = icmp eq i32 %32, 1
  br i1 %cmp19, label %if.then.20, label %if.end.70

if.then.20:                                       ; preds = %for.body
  %33 = load i32, i32* %ll.addr, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn23 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 0
  %36 = load %struct.patval*, %struct.patval** %patn23, align 8
  %arrayidx24 = getelementptr inbounds %struct.patval, %struct.patval* %36, i64 %idxprom22
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx24, i32 0, i32 0
  %37 = load i32, i32* %offset, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx26, i32 0, i64 %idxprom21
  %38 = load i32, i32* %arrayidx27, align 4
  %39 = load i32, i32* %anchor.addr, align 4
  %add28 = add nsw i32 %38, %39
  store i32 %add28, i32* %pos, align 4
  %40 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 3
  %41 = load i32, i32* %origin, align 4
  store i32 %41, i32* %str, align 4
  %42 = load i32, i32* %str, align 4
  %call31 = call i32 @countlib(i32 %42)
  %cmp32 = icmp sgt i32 %call31, 4
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.20
  br label %for.inc

if.end.34:                                        ; preds = %if.then.20
  %43 = load i32, i32* %move, align 4
  %44 = load i32, i32* %str, align 4
  %call35 = call i32 @attack_move_known(i32 %43, i32 %44)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %for.inc

if.end.38:                                        ; preds = %if.end.34
  %45 = load i32, i32* %move, align 4
  %46 = load i32, i32* %color.addr, align 4
  %47 = load i32, i32* %str, align 4
  %call39 = call i32 @trymove(i32 %45, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 %47, i32 0, i32 0)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.69

if.then.41:                                       ; preds = %if.end.38
  %48 = load i32, i32* %str, align 4
  %idxprom42 = sext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %49 = load i8, i8* %arrayidx43, align 1
  %tobool44 = icmp ne i8 %49, 0
  br i1 %tobool44, label %if.else, label %if.then.45

if.then.45:                                       ; preds = %if.then.41
  store i32 0, i32* %dcode, align 4
  br label %if.end.52

if.else:                                          ; preds = %if.then.41
  %50 = load i32, i32* %str, align 4
  %call46 = call i32 @attack(i32 %50, i32* null)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %if.else
  store i32 5, i32* %dcode, align 4
  br label %if.end.51

if.else.49:                                       ; preds = %if.else
  %51 = load i32, i32* %str, align 4
  %call50 = call i32 @find_defense(i32 %51, i32* null)
  store i32 %call50, i32* %dcode, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.45
  call void @popgo()
  %52 = load i32, i32* %dcode, align 4
  %cmp53 = icmp ne i32 %52, 5
  br i1 %cmp53, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.52
  %53 = load i32, i32* %dcode, align 4
  %sub = sub nsw i32 5, %53
  %54 = load i32, i32* %str, align 4
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom54
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx55, i32 0, i32 16
  %arrayidx56 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %55 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp sge i32 %sub, %55
  br i1 %cmp57, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %land.lhs.true
  %56 = load i32, i32* %str, align 4
  %57 = load i32, i32* %move, align 4
  %58 = load i32, i32* %dcode, align 4
  %sub59 = sub nsw i32 5, %58
  call void @change_attack(i32 %56, i32 %57, i32 %sub59)
  %59 = load i32, i32* @debug, align 4
  %and60 = and i32 %59, 1024
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %cond.false.63, label %cond.true.62

cond.true.62:                                     ; preds = %if.then.58
  br label %cond.end.67

cond.false.63:                                    ; preds = %if.then.58
  %60 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name64 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 3
  %61 = load i8*, i8** %name64, align 8
  %62 = load i32, i32* %ll.addr, align 4
  %63 = load i32, i32* %str, align 4
  %64 = load i32, i32* %move, align 4
  %65 = load i32, i32* %dcode, align 4
  %sub65 = sub nsw i32 5, %65
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.53, i32 0, i32 0), i8* %61, i32 %62, i32 %63, i32 %64, i32 %sub65)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.63, %cond.true.62
  br label %if.end.68

if.end.68:                                        ; preds = %cond.end.67, %land.lhs.true, %if.end.52
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.38
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.70, %if.then.37, %if.then.33
  %66 = load i32, i32* %k, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %cond.end, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @defense_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %move = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %str = alloca i32, align 4
  %acode = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %2, i32 0, i32 11
  %3 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %4, %5
  store i32 %add, i32* %move, align 4
  %6 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 22
  %7 = load i32, i32* %autohelper_flag, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 24
  %9 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %10 = load i32, i32* %ll.addr, align 4
  %11 = load i32, i32* %move, align 4
  %12 = load i32, i32* %color.addr, align 4
  %call = call i32 %9(i32 %10, i32 %11, i32 %12, i32 0)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %13 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 23
  %14 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool6 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end.5
  %15 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper8 = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 23
  %16 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper8, align 8
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %18 = load i32, i32* %ll.addr, align 4
  %19 = load i32, i32* %move, align 4
  %20 = load i32, i32* %color.addr, align 4
  %call9 = call i32 %16(%struct.pattern* %17, i32 %18, i32 %19, i32 %20)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.15, label %if.then.11

if.then.11:                                       ; preds = %if.then.7
  %21 = load i32, i32* @debug, align 4
  %and12 = and i32 %21, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.11
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %22 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %22, i32 0, i32 3
  %23 = load i8*, i8** %name, align 8
  %24 = load i32, i32* %ll.addr, align 4
  %25 = load i32, i32* %move, align 4
  %call14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i32 0, i32 0), i8* %23, i32 %24, i32 %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.end

if.end.15:                                        ; preds = %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.5
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %26 = load i32, i32* %k, align 4
  %27 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 1
  %28 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 0
  %31 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx18 = getelementptr inbounds %struct.patval, %struct.patval* %31, i64 %idxprom17
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx18, i32 0, i32 1
  %32 = load i32, i32* %att, align 4
  %cmp19 = icmp eq i32 %32, 2
  br i1 %cmp19, label %if.then.20, label %if.end.59

if.then.20:                                       ; preds = %for.body
  %33 = load i32, i32* %ll.addr, align 4
  %idxprom21 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn23 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 0
  %36 = load %struct.patval*, %struct.patval** %patn23, align 8
  %arrayidx24 = getelementptr inbounds %struct.patval, %struct.patval* %36, i64 %idxprom22
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx24, i32 0, i32 0
  %37 = load i32, i32* %offset, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx26, i32 0, i64 %idxprom21
  %38 = load i32, i32* %arrayidx27, align 4
  %39 = load i32, i32* %anchor.addr, align 4
  %add28 = add nsw i32 %38, %39
  store i32 %add28, i32* %pos, align 4
  %40 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 3
  %41 = load i32, i32* %origin, align 4
  store i32 %41, i32* %str, align 4
  %42 = load i32, i32* %str, align 4
  %idxprom31 = sext i32 %42 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom31
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx32, i32 0, i32 16
  %arrayidx33 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %43 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %43, 0
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %44 = load i32, i32* %move, align 4
  %45 = load i32, i32* %str, align 4
  %call35 = call i32 @defense_move_known(i32 %44, i32 %45)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %lor.lhs.false, %if.then.20
  br label %for.inc

if.end.38:                                        ; preds = %lor.lhs.false
  %46 = load i32, i32* %move, align 4
  %47 = load i32, i32* %color.addr, align 4
  %48 = load i32, i32* %str, align 4
  %call39 = call i32 @trymove(i32 %46, i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 %48, i32 0, i32 0)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.58

if.then.41:                                       ; preds = %if.end.38
  %49 = load i32, i32* %str, align 4
  %call42 = call i32 @attack(i32 %49, i32* null)
  store i32 %call42, i32* %acode, align 4
  call void @popgo()
  %50 = load i32, i32* %acode, align 4
  %51 = load i32, i32* %str, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom43
  %attack_codes45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx44, i32 0, i32 16
  %arrayidx46 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes45, i32 0, i64 0
  %52 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp slt i32 %50, %52
  br i1 %cmp47, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.then.41
  %53 = load i32, i32* %str, align 4
  %54 = load i32, i32* %move, align 4
  %55 = load i32, i32* %acode, align 4
  %sub = sub nsw i32 5, %55
  call void @change_defense(i32 %53, i32 %54, i32 %sub)
  %56 = load i32, i32* @debug, align 4
  %and49 = and i32 %56, 1024
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %cond.false.52, label %cond.true.51

cond.true.51:                                     ; preds = %if.then.48
  br label %cond.end.56

cond.false.52:                                    ; preds = %if.then.48
  %57 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name53 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 3
  %58 = load i8*, i8** %name53, align 8
  %59 = load i32, i32* %ll.addr, align 4
  %60 = load i32, i32* %str, align 4
  %61 = load i32, i32* %move, align 4
  %62 = load i32, i32* %acode, align 4
  %sub54 = sub nsw i32 5, %62
  %call55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.56, i32 0, i32 0), i8* %58, i32 %59, i32 %60, i32 %61, i32 %sub54)
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.52, %cond.true.51
  br label %if.end.57

if.end.57:                                        ; preds = %cond.end.56, %if.then.41
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.38
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.59, %if.then.37
  %63 = load i32, i32* %k, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %cond.end, %for.cond
  ret void
}

declare i32 @attack_threats(i32, i32, i32*, i32*) #1

declare i32 @is_ko_point(i32) #1

declare void @movelist_change_point(i32, i32, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @propagate_worm2(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %color = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %color, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %color10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 0
  %8 = load i32, i32* %color10, align 4
  %cmp11 = icmp eq i32 %8, 2
  br i1 %cmp11, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false
  %9 = load i32, i32* %str.addr, align 4
  %div15 = sdiv i32 %9, 20
  %sub16 = sub nsw i32 %div15, 1
  %10 = load i32, i32* %str.addr, align 4
  %rem17 = srem i32 %10, 20
  %sub18 = sub nsw i32 %rem17, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i32 0, i32 0), i32 %sub16, i32 %sub18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.14, %if.then.13
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %11 = load i32, i32* %pos, align 4
  %cmp20 = icmp slt i32 %11, 400
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %14 = load i32, i32* %str.addr, align 4
  %idxprom25 = sext i32 %14 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %15 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %cmp28 = icmp eq i32 %conv24, %conv27
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.36

land.lhs.true.30:                                 ; preds = %for.body
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %str.addr, align 4
  %call = call i32 @is_same_worm(i32 %16, i32 %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %land.lhs.true.30
  %18 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %19 = load i32, i32* %str.addr, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom34
  %20 = bitcast %struct.worm_data* %arrayidx33 to i8*
  %21 = bitcast %struct.worm_data* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 380, i32 4, i1 false)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %land.lhs.true.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %22 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ping_recurse(i32 %pos, i32* %counter, i32* %mx, i32* %mr, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %counter.addr = alloca i32*, align 8
  %mx.addr = alloca i32*, align 8
  %mr.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %apos29 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %counter, i32** %counter.addr, align 8
  store i32* %mx, i32** %mx.addr, align 8
  store i32* %mr, i32** %mr.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %mr.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %apos, align 4
  %6 = load i32, i32* %apos, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32*, i32** %mx.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %apos, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i32*, i32** %mr.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %12, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %14 = load i32, i32* %apos, align 4
  %15 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %15
  %call = call i32 @touching(i32 %14, i32 %sub)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.16
  %16 = load i32*, i32** %counter.addr, align 8
  %17 = load i32, i32* %16, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %16, align 4
  %18 = load i32, i32* %apos, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load i32*, i32** %mr.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %19, i64 %idxprom17
  store i32 1, i32* %arrayidx18, align 4
  %20 = load i32, i32* %apos, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load i32*, i32** %mx.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 %idxprom19
  store i32 1, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %pos.addr, align 4
  %call22 = call i32 @is_ko_point(i32 %23)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.58, label %if.then.24

if.then.24:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.55, %if.then.24
  %24 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %24, 4
  br i1 %cmp26, label %for.body.28, label %for.end.57

for.body.28:                                      ; preds = %for.cond.25
  %25 = load i32, i32* %pos.addr, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom30
  %27 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %25, %27
  store i32 %add32, i32* %apos29, align 4
  %28 = load i32, i32* %apos29, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %cmp36 = icmp ne i32 %conv35, 3
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.54

land.lhs.true.38:                                 ; preds = %for.body.28
  %30 = load i32, i32* %apos29, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i32*, i32** %mr.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %31, i64 %idxprom39
  %32 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp eq i32 %32, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.54

land.lhs.true.43:                                 ; preds = %land.lhs.true.38
  %33 = load i32, i32* %apos29, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load i32*, i32** %mx.addr, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %34, i64 %idxprom44
  %35 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp eq i32 %35, 1
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.43
  %36 = load i32, i32* %apos29, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %37 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %37 to i32
  %38 = load i32, i32* %color.addr, align 4
  %cmp51 = icmp eq i32 %conv50, %38
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %lor.lhs.false, %land.lhs.true.43
  %39 = load i32, i32* %apos29, align 4
  %40 = load i32*, i32** %counter.addr, align 8
  %41 = load i32*, i32** %mx.addr, align 8
  %42 = load i32*, i32** %mr.addr, align 8
  %43 = load i32, i32* %color.addr, align 4
  call void @ping_recurse(i32 %39, i32* %40, i32* %41, i32* %42, i32 %43)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false, %land.lhs.true.38, %for.body.28
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %44 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %44, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond.25

for.end.57:                                       ; preds = %for.cond.25
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @touching(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %0, 20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %conv, %2
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp eq i32 %conv4, %5
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %pos.addr, align 4
  %sub8 = sub nsw i32 %6, 20
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %7 to i32
  %8 = load i32, i32* %color.addr, align 4
  %cmp12 = icmp eq i32 %conv11, %8
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.7
  %9 = load i32, i32* %pos.addr, align 4
  %add14 = add nsw i32 %9, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %10 to i32
  %11 = load i32, i32* %color.addr, align 4
  %cmp18 = icmp eq i32 %conv17, %11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.7, %lor.lhs.false, %entry
  %12 = phi i1 [ true, %lor.lhs.false.7 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp18, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @markcomponent(i32 %str, i32 %pos, i32* %mg) #0 {
entry:
  %str.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %mg.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %mg, i32** %mg.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %mg.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos.addr, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %apos, align 4
  %6 = load i32, i32* %apos, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32*, i32** %mg.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %apos, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11
  %13 = load i32, i32* %apos, align 4
  %14 = load i32, i32* %str.addr, align 4
  %call = call i32 @is_same_worm(i32 %13, i32 %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.11
  %15 = load i32, i32* %str.addr, align 4
  %16 = load i32, i32* %apos, align 4
  %17 = load i32*, i32** %mg.addr, align 8
  call void @markcomponent(i32 %15, i32 %16, i32* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @find_origin(i32) #1

; Function Attrs: nounwind uwtable
define internal void @cavity_recurse(i32 %pos, i32* %mx, i32* %border_color, i32* %edge, i32 %str) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %mx.addr = alloca i32*, align 8
  %border_color.addr = alloca i32*, align 8
  %edge.addr = alloca i32*, align 8
  %str.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %neighbor_empty = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %mx, i32** %mx.addr, align 8
  store i32* %border_color, i32** %border_color.addr, align 8
  store i32* %edge, i32** %edge.addr, align 8
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** %mx.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1490, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %mx.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  store i32 1, i32* %arrayidx3, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %call = call i32 @is_edge_vertex(i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load i32*, i32** %edge.addr, align 8
  %11 = load i32, i32* %10, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %12 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %12, 4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %pos.addr, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %add = add nsw i32 %13, %15
  store i32 %add, i32* %apos, align 4
  %16 = load i32, i32* %apos, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %cmp17 = icmp ne i32 %conv16, 3
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.45

land.lhs.true.19:                                 ; preds = %for.body
  %18 = load i32, i32* %apos, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load i32*, i32** %mx.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %19, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %tobool22 = icmp ne i32 %20, 0
  br i1 %tobool22, label %if.end.45, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.19
  store i32 0, i32* %neighbor_empty, align 4
  %21 = load i32, i32* %apos, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %22 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %cmp27 = icmp eq i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.23
  store i32 1, i32* %neighbor_empty, align 4
  br label %if.end.37

if.else.30:                                       ; preds = %if.then.23
  %23 = load i32, i32* %str.addr, align 4
  %24 = load i32, i32* %apos, align 4
  %call31 = call i32 @find_origin(i32 %24)
  %cmp32 = icmp eq i32 %23, %call31
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.30
  store i32 1, i32* %neighbor_empty, align 4
  br label %if.end.36

if.else.35:                                       ; preds = %if.else.30
  store i32 0, i32* %neighbor_empty, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.29
  %25 = load i32, i32* %neighbor_empty, align 4
  %tobool38 = icmp ne i32 %25, 0
  br i1 %tobool38, label %if.else.43, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  %26 = load i32, i32* %apos, align 4
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom40
  %27 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %27 to i32
  %28 = load i32*, i32** %border_color.addr, align 8
  %29 = load i32, i32* %28, align 4
  %or = or i32 %29, %conv42
  store i32 %or, i32* %28, align 4
  br label %if.end.44

if.else.43:                                       ; preds = %if.end.37
  %30 = load i32, i32* %apos, align 4
  %31 = load i32*, i32** %mx.addr, align 8
  %32 = load i32*, i32** %border_color.addr, align 8
  %33 = load i32*, i32** %edge.addr, align 8
  %34 = load i32, i32* %str.addr, align 4
  call void @cavity_recurse(i32 %30, i32* %31, i32* %32, i32* %33, i32 %34)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %35 = load i32, i32* %k, align 4
  %inc46 = add nsw i32 %35, 1
  store i32 %inc46, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @is_edge_vertex(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
