; ModuleID = 'engine/aftermath.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.aftermath_data = type { i32, i32, i32, i32, i32, i32, i32, i32, [400 x i32], [400 x i32], [400 x i32] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.board_state = type { i32, [421 x i8], i32, i32, i32, [421 x i8], i32, i32, i32, [500 x i32], [500 x i32], i32, float, i32 }

@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@delta = external global [8 x i32], align 16
@debug = external global i32, align 4
@board_size = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" o\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Closest opponent %1m\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c", distance %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Closest own %1m\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Closing edge at %1m\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Score %1M = %d (hotspot bonus %d + %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"aftermath-B\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Blunder: %1m becomes tactically safer after %1m\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Blunder: %1m becomes more alive after %1m\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Splitting eyespace at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"aftermath-A\00", align 1
@stackp = external global i32, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"Filling opponent liberty at %1m\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Tactically attack %1m at %1m\0A\00", align 1
@aftermath = internal global %struct.aftermath_data zeroinitializer, align 4
@aftermath_sgftree = internal global %struct.SGFTree_t* null, align 8
@chinese_rules = external global i32, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"engine/aftermath.c\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@play_aftermath.current_board = internal global [400 x i32] zeroinitializer, align 16
@play_aftermath.current_color = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"color == 2 || color == 1\00", align 1
@white_captured = external global i32, align 4
@black_captured = external global i32, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"White captured: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Black captured: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"White prisoners: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Black prisoners: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"White territory: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Black territory: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"White area: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Black area: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"The aftermath starts.\0A\00", align 1
@disable_threat_computation = external global i32, align 4
@disable_endgame_patterns = external global i32, align 4
@verbose = external global i32, align 4
@.str.32 = private unnamed_addr constant [45 x i8] c"%d %C move %1m (nodes %d, %d  total %d, %d)\0A\00", align 1
@movenum = external global i32, align 4
@level = external global i32, align 4
@lower_bound = external global float, align 4
@upper_bound = external global float, align 4
@showscore = external global i32, align 4
@.str.33 = private unnamed_addr constant [24 x i8] c"\0AScore estimate: %s %f\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"W \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\0AScore estimate: %s %f to %s %f\0A\00", align 1
@score = external global float, align 4
@.str.37 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Move generation likes %1m with value %f\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"reduced_genmove() recommends %1m with value %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @aftermath_genmove(i32* %aftermath_move, i32 %color, i32* %under_control, i32 %do_capture_dead_stones) #0 {
entry:
  %retval = alloca i32, align 4
  %aftermath_move.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %under_control.addr = alloca i32*, align 8
  %do_capture_dead_stones.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %other = alloca i32, align 4
  %distance = alloca [400 x i32], align 16
  %score = alloca [400 x i32], align 16
  %owl_hotspot = alloca [400 x float], align 16
  %reading_hotspot = alloca [400 x float], align 16
  %dragons = alloca [400 x i32], align 16
  %something_found = alloca i32, align 4
  %closest_opponent = alloca i32, align 4
  %closest_own = alloca i32, align 4
  %d = alloca i32, align 4
  %move = alloca i32, align 4
  %pos = alloca i32, align 4
  %best_score = alloca i32, align 4
  %best_scoring_move = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %libs = alloca i32, align 4
  %dir = alloca i32, align 4
  %right = alloca i32, align 4
  %this_score = alloca i32, align 4
  %lib = alloca i32, align 4
  %mx = alloca [400 x i8], align 16
  %mark = alloca i8, align 1
  %score496 = alloca i32, align 4
  %move_ok = alloca i32, align 4
  %pos2514 = alloca i32, align 4
  %deltalib = alloca i32, align 4
  %pos2625 = alloca i32, align 4
  %eyespace_neighbors = alloca i32, align 4
  %own_neighbors = alloca i32, align 4
  %own_diagonals = alloca i32, align 4
  %opponent_dragons = alloca i32, align 4
  %own_worms = alloca i32, align 4
  %safety658 = alloca i32, align 4
  %bonus = alloca i32, align 4
  %mx659 = alloca [400 x i32], align 16
  %pos2678 = alloca i32, align 4
  %origin = alloca i32, align 4
  %apos = alloca i32, align 4
  %r = alloca i32, align 4
  %important = alloca i32, align 4
  %safe_atari = alloca i32, align 4
  %owl_hotspot_bonus = alloca i32, align 4
  %reading_hotspot_bonus = alloca i32, align 4
  %hotspot_bonus = alloca i32, align 4
  %bb = alloca i32, align 4
  %libs1074 = alloca i32, align 4
  %move_ok1076 = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %neighbors = alloca i32, align 4
  %r1113 = alloca i32, align 4
  %target = alloca i32, align 4
  %cc = alloca i32, align 4
  %self_atari_ok = alloca i32, align 4
  %pos21218 = alloca i32, align 4
  %lib1309 = alloca i32, align 4
  store i32* %aftermath_move, i32** %aftermath_move.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32* %under_control, i32** %under_control.addr, align 8
  store i32 %do_capture_dead_stones, i32* %do_capture_dead_stones.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %closest_opponent, align 4
  store i32 0, i32* %closest_own, align 4
  store i32 0, i32* %move, align 4
  store i32 0, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [400 x float], [400 x float]* %owl_hotspot, i32 0, i32 0
  call void @owl_hotspots(float* %arraydecay)
  %arraydecay1 = getelementptr inbounds [400 x float], [400 x float]* %reading_hotspot, i32 0, i32 0
  call void @reading_hotspots(float* %arraydecay1)
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
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %6 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %conv6, %6
  br i1 %cmp7, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.else
  %7 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom9
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx10, i32 0, i32 13
  %8 = load i32, i32* %invincible, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end.44

if.else.14:                                       ; preds = %land.lhs.true, %if.else
  %10 = load i32, i32* %do_capture_dead_stones.addr, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.else.41, label %land.lhs.true.16

land.lhs.true.16:                                 ; preds = %if.else.14
  %11 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %12 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %12 to i32
  %13 = load i32, i32* %other, align 4
  %cmp20 = icmp eq i32 %conv19, %13
  br i1 %cmp20, label %land.lhs.true.22, label %lor.lhs.false

land.lhs.true.22:                                 ; preds = %land.lhs.true.16
  %14 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom23
  %unconditional_status = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx24, i32 0, i32 14
  %15 = load i32, i32* %unconditional_status, align 4
  %cmp25 = icmp eq i32 %15, 0
  br i1 %cmp25, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.22, %land.lhs.true.16
  %16 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %17 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %17 to i32
  %18 = load i32, i32* %color.addr, align 4
  %cmp30 = icmp eq i32 %conv29, %18
  br i1 %cmp30, label %land.lhs.true.32, label %if.else.41

land.lhs.true.32:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom33
  %unconditional_status35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx34, i32 0, i32 14
  %20 = load i32, i32* %unconditional_status35, align 4
  %cmp36 = icmp eq i32 %20, 1
  br i1 %cmp36, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %land.lhs.true.32, %land.lhs.true.22
  %21 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %21 to i64
  %arrayidx40 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom39
  store i32 0, i32* %arrayidx40, align 4
  br label %if.end

if.else.41:                                       ; preds = %land.lhs.true.32, %lor.lhs.false, %if.else.14
  %22 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom42
  store i32 -1, i32* %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.41, %if.then.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %if.then.11
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.45, %if.then
  %23 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %d, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, i32* %something_found, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.139, %do.body
  %24 = load i32, i32* %pos, align 4
  %cmp47 = icmp slt i32 %24, 400
  br i1 %cmp47, label %for.body.49, label %for.end.141

for.body.49:                                      ; preds = %for.cond.46
  %25 = load i32, i32* %pos, align 4
  %idxprom50 = sext i32 %25 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %26 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %26 to i32
  %cmp53 = icmp ne i32 %conv52, 3
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.138

land.lhs.true.55:                                 ; preds = %for.body.49
  %27 = load i32, i32* %pos, align 4
  %idxprom56 = sext i32 %27 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom56
  %28 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %28, -1
  br i1 %cmp58, label %if.then.60, label %if.end.138

if.then.60:                                       ; preds = %land.lhs.true.55
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.135, %if.then.60
  %29 = load i32, i32* %k, align 4
  %cmp62 = icmp slt i32 %29, 4
  br i1 %cmp62, label %for.body.64, label %for.end.137

for.body.64:                                      ; preds = %for.cond.61
  %30 = load i32, i32* %pos, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom65
  %32 = load i32, i32* %arrayidx66, align 4
  %add = add nsw i32 %30, %32
  store i32 %add, i32* %pos2, align 4
  %33 = load i32, i32* %pos2, align 4
  %idxprom67 = sext i32 %33 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %34 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %34 to i32
  %cmp70 = icmp ne i32 %conv69, 3
  br i1 %cmp70, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %for.body.64
  br label %for.inc.135

if.end.73:                                        ; preds = %for.body.64
  %35 = load i32, i32* %d, align 4
  %cmp74 = icmp eq i32 %35, 0
  br i1 %cmp74, label %land.lhs.true.82, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.end.73
  %36 = load i32, i32* %pos2, align 4
  %idxprom77 = sext i32 %36 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %37 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %37 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.134

land.lhs.true.82:                                 ; preds = %lor.lhs.false.76, %if.end.73
  %38 = load i32, i32* %pos2, align 4
  %idxprom83 = sext i32 %38 to i64
  %arrayidx84 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom83
  %39 = load i32, i32* %arrayidx84, align 4
  %40 = load i32, i32* %d, align 4
  %cmp85 = icmp eq i32 %39, %40
  br i1 %cmp85, label %if.then.87, label %if.end.134

if.then.87:                                       ; preds = %land.lhs.true.82
  %41 = load i32, i32* %d, align 4
  %cmp88 = icmp sgt i32 %41, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.else.104

land.lhs.true.90:                                 ; preds = %if.then.87
  %42 = load i32, i32* %pos, align 4
  %idxprom91 = sext i32 %42 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %43 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %43 to i32
  %44 = load i32, i32* %other, align 4
  %cmp94 = icmp eq i32 %conv93, %44
  br i1 %cmp94, label %if.then.96, label %if.else.104

if.then.96:                                       ; preds = %land.lhs.true.90
  %45 = load i32, i32* %d, align 4
  %add97 = add nsw i32 %45, 1
  %46 = load i32, i32* %pos, align 4
  %idxprom98 = sext i32 %46 to i64
  %arrayidx99 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom98
  store i32 %add97, i32* %arrayidx99, align 4
  %47 = load i32, i32* %closest_opponent, align 4
  %cmp100 = icmp eq i32 %47, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.96
  %48 = load i32, i32* %pos, align 4
  store i32 %48, i32* %closest_opponent, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.then.96
  br label %if.end.133

if.else.104:                                      ; preds = %land.lhs.true.90, %if.then.87
  %49 = load i32, i32* %d, align 4
  %cmp105 = icmp sgt i32 %49, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.121

land.lhs.true.107:                                ; preds = %if.else.104
  %50 = load i32, i32* %pos, align 4
  %idxprom108 = sext i32 %50 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %51 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %51 to i32
  %52 = load i32, i32* %color.addr, align 4
  %cmp111 = icmp eq i32 %conv110, %52
  br i1 %cmp111, label %if.then.113, label %if.else.121

if.then.113:                                      ; preds = %land.lhs.true.107
  %53 = load i32, i32* %d, align 4
  %add114 = add nsw i32 %53, 1
  %54 = load i32, i32* %pos, align 4
  %idxprom115 = sext i32 %54 to i64
  %arrayidx116 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom115
  store i32 %add114, i32* %arrayidx116, align 4
  %55 = load i32, i32* %closest_own, align 4
  %cmp117 = icmp eq i32 %55, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.113
  %56 = load i32, i32* %pos, align 4
  store i32 %56, i32* %closest_own, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.then.113
  br label %if.end.132

if.else.121:                                      ; preds = %land.lhs.true.107, %if.else.104
  %57 = load i32, i32* %pos, align 4
  %idxprom122 = sext i32 %57 to i64
  %arrayidx123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom122
  %58 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %58 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %if.else.121
  %59 = load i32, i32* %d, align 4
  %add128 = add nsw i32 %59, 1
  %60 = load i32, i32* %pos, align 4
  %idxprom129 = sext i32 %60 to i64
  %arrayidx130 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom129
  store i32 %add128, i32* %arrayidx130, align 4
  store i32 1, i32* %something_found, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.127, %if.else.121
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.120
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.103
  br label %for.end.137

if.end.134:                                       ; preds = %land.lhs.true.82, %lor.lhs.false.76
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134, %if.then.72
  %61 = load i32, i32* %k, align 4
  %inc136 = add nsw i32 %61, 1
  store i32 %inc136, i32* %k, align 4
  br label %for.cond.61

for.end.137:                                      ; preds = %if.end.133, %for.cond.61
  br label %if.end.138

if.end.138:                                       ; preds = %for.end.137, %land.lhs.true.55, %for.body.49
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %62 = load i32, i32* %pos, align 4
  %inc140 = add nsw i32 %62, 1
  store i32 %inc140, i32* %pos, align 4
  br label %for.cond.46

for.end.141:                                      ; preds = %for.cond.46
  %63 = load i32, i32* %d, align 4
  %inc142 = add nsw i32 %63, 1
  store i32 %inc142, i32* %d, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end.141
  %64 = load i32, i32* %something_found, align 4
  %tobool143 = icmp ne i32 %64, 0
  br i1 %tobool143, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %65 = load i32*, i32** %under_control.addr, align 8
  %tobool144 = icmp ne i32* %65, null
  br i1 %tobool144, label %if.then.145, label %if.end.172

if.then.145:                                      ; preds = %do.end
  store i32 21, i32* %pos, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.169, %if.then.145
  %66 = load i32, i32* %pos, align 4
  %cmp147 = icmp slt i32 %66, 400
  br i1 %cmp147, label %for.body.149, label %for.end.171

for.body.149:                                     ; preds = %for.cond.146
  %67 = load i32, i32* %pos, align 4
  %idxprom150 = sext i32 %67 to i64
  %arrayidx151 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom150
  %68 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %68 to i32
  %cmp153 = icmp ne i32 %conv152, 3
  br i1 %cmp153, label %if.else.156, label %if.then.155

if.then.155:                                      ; preds = %for.body.149
  br label %for.inc.169

if.else.156:                                      ; preds = %for.body.149
  %69 = load i32, i32* %pos, align 4
  %idxprom157 = sext i32 %69 to i64
  %arrayidx158 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom157
  %70 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp eq i32 %70, -1
  br i1 %cmp159, label %if.then.161, label %if.else.164

if.then.161:                                      ; preds = %if.else.156
  %71 = load i32, i32* %pos, align 4
  %idxprom162 = sext i32 %71 to i64
  %72 = load i32*, i32** %under_control.addr, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %72, i64 %idxprom162
  store i32 0, i32* %arrayidx163, align 4
  br label %if.end.167

if.else.164:                                      ; preds = %if.else.156
  %73 = load i32, i32* %pos, align 4
  %idxprom165 = sext i32 %73 to i64
  %74 = load i32*, i32** %under_control.addr, align 8
  %arrayidx166 = getelementptr inbounds i32, i32* %74, i64 %idxprom165
  store i32 1, i32* %arrayidx166, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.161
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168, %if.then.155
  %75 = load i32, i32* %pos, align 4
  %inc170 = add nsw i32 %75, 1
  store i32 %inc170, i32* %pos, align 4
  br label %for.cond.146

for.end.171:                                      ; preds = %for.cond.146
  br label %if.end.172

if.end.172:                                       ; preds = %for.end.171, %do.end
  %76 = load i32, i32* @debug, align 4
  %and = and i32 %76, 131072
  %tobool173 = icmp ne i32 %and, 0
  br i1 %tobool173, label %if.then.174, label %if.end.266

if.then.174:                                      ; preds = %if.end.172
  store i32 0, i32* %m, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.243, %if.then.174
  %77 = load i32, i32* %m, align 4
  %78 = load i32, i32* @board_size, align 4
  %cmp176 = icmp slt i32 %77, %78
  br i1 %cmp176, label %for.body.178, label %for.end.245

for.body.178:                                     ; preds = %for.cond.175
  store i32 0, i32* %n, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.239, %for.body.178
  %79 = load i32, i32* %n, align 4
  %80 = load i32, i32* @board_size, align 4
  %cmp180 = icmp slt i32 %79, %80
  br i1 %cmp180, label %for.body.182, label %for.end.241

for.body.182:                                     ; preds = %for.cond.179
  %81 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %81, 20
  %add183 = add nsw i32 21, %mul
  %82 = load i32, i32* %n, align 4
  %add184 = add nsw i32 %add183, %82
  store i32 %add184, i32* %pos, align 4
  %83 = load i32, i32* %pos, align 4
  %idxprom185 = sext i32 %83 to i64
  %arrayidx186 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom185
  %84 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp sgt i32 %84, 0
  br i1 %cmp187, label %if.then.189, label %if.else.192

if.then.189:                                      ; preds = %for.body.182
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i32, i32* %pos, align 4
  %idxprom190 = sext i32 %86 to i64
  %arrayidx191 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom190
  %87 = load i32, i32* %arrayidx191, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %87)
  br label %if.end.238

if.else.192:                                      ; preds = %for.body.182
  %88 = load i32, i32* %pos, align 4
  %idxprom193 = sext i32 %88 to i64
  %arrayidx194 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom193
  %89 = load i32, i32* %arrayidx194, align 4
  %cmp195 = icmp eq i32 %89, 0
  br i1 %cmp195, label %if.then.197, label %if.else.217

if.then.197:                                      ; preds = %if.else.192
  %90 = load i32, i32* %pos, align 4
  %idxprom198 = sext i32 %90 to i64
  %arrayidx199 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom198
  %91 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %91 to i32
  %cmp201 = icmp eq i32 %conv200, 1
  br i1 %cmp201, label %if.then.203, label %if.else.205

if.then.203:                                      ; preds = %if.then.197
  %call204 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.216

if.else.205:                                      ; preds = %if.then.197
  %92 = load i32, i32* %pos, align 4
  %idxprom206 = sext i32 %92 to i64
  %arrayidx207 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom206
  %93 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %93 to i32
  %cmp209 = icmp eq i32 %conv208, 2
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.else.205
  %call212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.205
  %call214 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.then.211
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.then.203
  br label %if.end.237

if.else.217:                                      ; preds = %if.else.192
  %94 = load i32, i32* %pos, align 4
  %idxprom218 = sext i32 %94 to i64
  %arrayidx219 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom218
  %95 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %95 to i32
  %cmp221 = icmp eq i32 %conv220, 1
  br i1 %cmp221, label %if.then.223, label %if.else.225

if.then.223:                                      ; preds = %if.else.217
  %call224 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.236

if.else.225:                                      ; preds = %if.else.217
  %96 = load i32, i32* %pos, align 4
  %idxprom226 = sext i32 %96 to i64
  %arrayidx227 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom226
  %97 = load i8, i8* %arrayidx227, align 1
  %conv228 = zext i8 %97 to i32
  %cmp229 = icmp eq i32 %conv228, 2
  br i1 %cmp229, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %if.else.225
  %call232 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.235

if.else.233:                                      ; preds = %if.else.225
  %call234 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.233, %if.then.231
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.then.223
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.216
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.189
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %98 = load i32, i32* %n, align 4
  %inc240 = add nsw i32 %98, 1
  store i32 %inc240, i32* %n, align 4
  br label %for.cond.179

for.end.241:                                      ; preds = %for.cond.179
  %call242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.241
  %99 = load i32, i32* %m, align 4
  %inc244 = add nsw i32 %99, 1
  store i32 %inc244, i32* %m, align 4
  br label %for.cond.175

for.end.245:                                      ; preds = %for.cond.175
  %100 = load i32, i32* %closest_opponent, align 4
  %call246 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %closest_opponent, align 4
  %cmp247 = icmp ne i32 %101, 0
  br i1 %cmp247, label %if.then.249, label %if.else.253

if.then.249:                                      ; preds = %for.end.245
  %102 = load i32, i32* %closest_opponent, align 4
  %idxprom250 = sext i32 %102 to i64
  %arrayidx251 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom250
  %103 = load i32, i32* %arrayidx251, align 4
  %call252 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %103)
  br label %if.end.255

if.else.253:                                      ; preds = %for.end.245
  %call254 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.253, %if.then.249
  %104 = load i32, i32* %closest_own, align 4
  %call256 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* %closest_own, align 4
  %cmp257 = icmp ne i32 %105, 0
  br i1 %cmp257, label %if.then.259, label %if.else.263

if.then.259:                                      ; preds = %if.end.255
  %106 = load i32, i32* %closest_own, align 4
  %idxprom260 = sext i32 %106 to i64
  %arrayidx261 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom260
  %107 = load i32, i32* %arrayidx261, align 4
  %call262 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %107)
  br label %if.end.265

if.else.263:                                      ; preds = %if.end.255
  %call264 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.263, %if.then.259
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.end.172
  store i32 0, i32* %best_scoring_move, align 4
  store i32 5, i32* %best_score, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.377, %if.end.266
  %108 = load i32, i32* %pos, align 4
  %cmp268 = icmp slt i32 %108, 400
  br i1 %cmp268, label %for.body.270, label %for.end.379

for.body.270:                                     ; preds = %for.cond.267
  %109 = load i32, i32* %pos, align 4
  %idxprom271 = sext i32 %109 to i64
  %arrayidx272 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom271
  %110 = load i8, i8* %arrayidx272, align 1
  %conv273 = zext i8 %110 to i32
  %cmp274 = icmp ne i32 %conv273, 0
  br i1 %cmp274, label %if.then.281, label %lor.lhs.false.276

lor.lhs.false.276:                                ; preds = %for.body.270
  %111 = load i32, i32* %pos, align 4
  %idxprom277 = sext i32 %111 to i64
  %arrayidx278 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom277
  %112 = load i32, i32* %arrayidx278, align 4
  %cmp279 = icmp eq i32 %112, 0
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %lor.lhs.false.276, %for.body.270
  br label %for.inc.377

if.end.282:                                       ; preds = %lor.lhs.false.276
  %113 = load i32, i32* %pos, align 4
  %114 = load i32, i32* %color.addr, align 4
  %call283 = call i32 @approxlib(i32 %113, i32 %114, i32 3, i32* null)
  store i32 %call283, i32* %libs, align 4
  %115 = load i32, i32* %libs, align 4
  %cmp284 = icmp slt i32 %115, 3
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.282
  br label %for.inc.377

if.end.287:                                       ; preds = %if.end.282
  %116 = load i32, i32* %pos, align 4
  %117 = load i32, i32* %other, align 4
  %call288 = call i32 @is_self_atari(i32 %116, i32 %117)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.287
  br label %for.inc.377

if.end.291:                                       ; preds = %if.end.287
  store i32 0, i32* %k, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.374, %if.end.291
  %118 = load i32, i32* %k, align 4
  %cmp293 = icmp slt i32 %118, 4
  br i1 %cmp293, label %for.body.295, label %for.end.376

for.body.295:                                     ; preds = %for.cond.292
  %119 = load i32, i32* %k, align 4
  %idxprom296 = sext i32 %119 to i64
  %arrayidx297 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom296
  %120 = load i32, i32* %arrayidx297, align 4
  store i32 %120, i32* %dir, align 4
  %121 = load i32, i32* %k, align 4
  %add298 = add nsw i32 %121, 1
  %rem = srem i32 %add298, 4
  %idxprom299 = sext i32 %rem to i64
  %arrayidx300 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom299
  %122 = load i32, i32* %arrayidx300, align 4
  store i32 %122, i32* %right, align 4
  %123 = load i32, i32* %pos, align 4
  %124 = load i32, i32* %dir, align 4
  %sub301 = sub nsw i32 %123, %124
  %idxprom302 = sext i32 %sub301 to i64
  %arrayidx303 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom302
  %125 = load i8, i8* %arrayidx303, align 1
  %conv304 = zext i8 %125 to i32
  %cmp305 = icmp ne i32 %conv304, 3
  br i1 %cmp305, label %if.end.373, label %land.lhs.true.307

land.lhs.true.307:                                ; preds = %for.body.295
  %126 = load i32, i32* %pos, align 4
  %127 = load i32, i32* %dir, align 4
  %add308 = add nsw i32 %126, %127
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom309
  %128 = load i8, i8* %arrayidx310, align 1
  %conv311 = zext i8 %128 to i32
  %129 = load i32, i32* %color.addr, align 4
  %cmp312 = icmp eq i32 %conv311, %129
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.373

land.lhs.true.314:                                ; preds = %land.lhs.true.307
  %130 = load i32, i32* %pos, align 4
  %131 = load i32, i32* %dir, align 4
  %add315 = add nsw i32 %130, %131
  %132 = load i32, i32* %right, align 4
  %add316 = add nsw i32 %add315, %132
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom317
  %133 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %133 to i32
  %134 = load i32, i32* %other, align 4
  %cmp320 = icmp eq i32 %conv319, %134
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.373

land.lhs.true.322:                                ; preds = %land.lhs.true.314
  %135 = load i32, i32* %pos, align 4
  %136 = load i32, i32* %dir, align 4
  %add323 = add nsw i32 %135, %136
  %137 = load i32, i32* %right, align 4
  %sub324 = sub nsw i32 %add323, %137
  %idxprom325 = sext i32 %sub324 to i64
  %arrayidx326 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom325
  %138 = load i8, i8* %arrayidx326, align 1
  %conv327 = zext i8 %138 to i32
  %139 = load i32, i32* %other, align 4
  %cmp328 = icmp eq i32 %conv327, %139
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.373

land.lhs.true.330:                                ; preds = %land.lhs.true.322
  %140 = load i32, i32* %libs, align 4
  %141 = load i32, i32* %pos, align 4
  %142 = load i32, i32* %dir, align 4
  %add331 = add nsw i32 %141, %142
  %call332 = call i32 @countlib(i32 %add331)
  %cmp333 = icmp sgt i32 %140, %call332
  br i1 %cmp333, label %land.lhs.true.343, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %land.lhs.true.330
  %143 = load i32, i32* %libs, align 4
  %cmp336 = icmp sgt i32 %143, 4
  br i1 %cmp336, label %land.lhs.true.338, label %if.end.373

land.lhs.true.338:                                ; preds = %lor.lhs.false.335
  %144 = load i32, i32* %libs, align 4
  %145 = load i32, i32* %pos, align 4
  %146 = load i32, i32* %dir, align 4
  %add339 = add nsw i32 %145, %146
  %call340 = call i32 @countlib(i32 %add339)
  %cmp341 = icmp eq i32 %144, %call340
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.373

land.lhs.true.343:                                ; preds = %land.lhs.true.338, %land.lhs.true.330
  %147 = load i32, i32* %pos, align 4
  %148 = load i32, i32* %dir, align 4
  %add344 = add nsw i32 %147, %148
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom345
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx346, i32 0, i32 1
  %149 = load i32, i32* %id, align 4
  %idxprom347 = sext i32 %149 to i64
  %150 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx348 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %150, i64 %idxprom347
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx348, i32 0, i32 6
  %151 = load i32, i32* %safety, align 4
  %cmp349 = icmp eq i32 %151, 9
  br i1 %cmp349, label %if.then.361, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %land.lhs.true.343
  %152 = load i32, i32* %pos, align 4
  %153 = load i32, i32* %dir, align 4
  %add352 = add nsw i32 %152, %153
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom353
  %id355 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx354, i32 0, i32 1
  %154 = load i32, i32* %id355, align 4
  %idxprom356 = sext i32 %154 to i64
  %155 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx357 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %155, i64 %idxprom356
  %safety358 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx357, i32 0, i32 6
  %156 = load i32, i32* %safety358, align 4
  %cmp359 = icmp eq i32 %156, 8
  br i1 %cmp359, label %if.then.361, label %if.end.373

if.then.361:                                      ; preds = %lor.lhs.false.351, %land.lhs.true.343
  %157 = load i32, i32* %pos, align 4
  %idxprom362 = sext i32 %157 to i64
  %arrayidx363 = getelementptr inbounds [400 x float], [400 x float]* %owl_hotspot, i32 0, i64 %idxprom362
  %158 = load float, float* %arrayidx363, align 4
  %159 = load i32, i32* %pos, align 4
  %idxprom364 = sext i32 %159 to i64
  %arrayidx365 = getelementptr inbounds [400 x float], [400 x float]* %reading_hotspot, i32 0, i64 %idxprom364
  %160 = load float, float* %arrayidx365, align 4
  %add366 = fadd float %158, %160
  %mul367 = fmul float 2.000000e+01, %add366
  %conv368 = fptosi float %mul367 to i32
  store i32 %conv368, i32* %this_score, align 4
  %161 = load i32, i32* %this_score, align 4
  %162 = load i32, i32* %best_score, align 4
  %cmp369 = icmp sgt i32 %161, %162
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.then.361
  %163 = load i32, i32* %this_score, align 4
  store i32 %163, i32* %best_score, align 4
  %164 = load i32, i32* %pos, align 4
  store i32 %164, i32* %best_scoring_move, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.371, %if.then.361
  br label %if.end.373

if.end.373:                                       ; preds = %if.end.372, %lor.lhs.false.351, %land.lhs.true.338, %lor.lhs.false.335, %land.lhs.true.322, %land.lhs.true.314, %land.lhs.true.307, %for.body.295
  br label %for.inc.374

for.inc.374:                                      ; preds = %if.end.373
  %165 = load i32, i32* %k, align 4
  %inc375 = add nsw i32 %165, 1
  store i32 %inc375, i32* %k, align 4
  br label %for.cond.292

for.end.376:                                      ; preds = %for.cond.292
  br label %for.inc.377

for.inc.377:                                      ; preds = %for.end.376, %if.then.290, %if.then.286, %if.then.281
  %166 = load i32, i32* %pos, align 4
  %inc378 = add nsw i32 %166, 1
  store i32 %inc378, i32* %pos, align 4
  br label %for.cond.267

for.end.379:                                      ; preds = %for.cond.267
  %167 = load i32, i32* %best_scoring_move, align 4
  %cmp380 = icmp ne i32 %167, 0
  br i1 %cmp380, label %land.lhs.true.382, label %if.end.390

land.lhs.true.382:                                ; preds = %for.end.379
  %168 = load i32, i32* %best_scoring_move, align 4
  %169 = load i32, i32* %color.addr, align 4
  %call383 = call i32 @safe_move(i32 %168, i32 %169)
  %cmp384 = icmp eq i32 %call383, 5
  br i1 %cmp384, label %if.then.386, label %if.end.390

if.then.386:                                      ; preds = %land.lhs.true.382
  %170 = load i32, i32* %best_scoring_move, align 4
  %171 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* @debug, align 4
  %and387 = and i32 %172, 131072
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.386
  br label %cond.end

cond.false:                                       ; preds = %if.then.386
  %173 = load i32, i32* %best_scoring_move, align 4
  %call389 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 %173)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end.390:                                       ; preds = %land.lhs.true.382, %for.end.379
  store i32 21, i32* %pos, align 4
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc.473, %if.end.390
  %174 = load i32, i32* %pos, align 4
  %cmp392 = icmp slt i32 %174, 400
  br i1 %cmp392, label %for.body.394, label %for.end.475

for.body.394:                                     ; preds = %for.cond.391
  %175 = load i32, i32* %pos, align 4
  %idxprom395 = sext i32 %175 to i64
  %arrayidx396 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom395
  %176 = load i8, i8* %arrayidx396, align 1
  %conv397 = zext i8 %176 to i32
  %177 = load i32, i32* %other, align 4
  %cmp398 = icmp eq i32 %conv397, %177
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.472

land.lhs.true.400:                                ; preds = %for.body.394
  %178 = load i32, i32* %pos, align 4
  %idxprom401 = sext i32 %178 to i64
  %arrayidx402 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom401
  %unconditional_status403 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx402, i32 0, i32 14
  %179 = load i32, i32* %unconditional_status403, align 4
  %cmp404 = icmp ne i32 %179, 0
  br i1 %cmp404, label %land.lhs.true.406, label %if.end.472

land.lhs.true.406:                                ; preds = %land.lhs.true.400
  %180 = load i32, i32* %pos, align 4
  %call407 = call i32 @countlib(i32 %180)
  %cmp408 = icmp eq i32 %call407, 1
  br i1 %cmp408, label %land.lhs.true.410, label %if.end.472

land.lhs.true.410:                                ; preds = %land.lhs.true.406
  %181 = load i32, i32* %pos, align 4
  %add411 = add nsw i32 %181, 20
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx413 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom412
  %182 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %182 to i32
  %cmp415 = icmp ne i32 %conv414, 3
  br i1 %cmp415, label %land.lhs.true.417, label %lor.lhs.false.423

land.lhs.true.417:                                ; preds = %land.lhs.true.410
  %183 = load i32, i32* %pos, align 4
  %add418 = add nsw i32 %183, 20
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom419
  %184 = load i32, i32* %arrayidx420, align 4
  %cmp421 = icmp eq i32 %184, 0
  br i1 %cmp421, label %if.then.462, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %land.lhs.true.417, %land.lhs.true.410
  %185 = load i32, i32* %pos, align 4
  %sub424 = sub nsw i32 %185, 1
  %idxprom425 = sext i32 %sub424 to i64
  %arrayidx426 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom425
  %186 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %186 to i32
  %cmp428 = icmp ne i32 %conv427, 3
  br i1 %cmp428, label %land.lhs.true.430, label %lor.lhs.false.436

land.lhs.true.430:                                ; preds = %lor.lhs.false.423
  %187 = load i32, i32* %pos, align 4
  %sub431 = sub nsw i32 %187, 1
  %idxprom432 = sext i32 %sub431 to i64
  %arrayidx433 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom432
  %188 = load i32, i32* %arrayidx433, align 4
  %cmp434 = icmp eq i32 %188, 0
  br i1 %cmp434, label %if.then.462, label %lor.lhs.false.436

lor.lhs.false.436:                                ; preds = %land.lhs.true.430, %lor.lhs.false.423
  %189 = load i32, i32* %pos, align 4
  %sub437 = sub nsw i32 %189, 20
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom438
  %190 = load i8, i8* %arrayidx439, align 1
  %conv440 = zext i8 %190 to i32
  %cmp441 = icmp ne i32 %conv440, 3
  br i1 %cmp441, label %land.lhs.true.443, label %lor.lhs.false.449

land.lhs.true.443:                                ; preds = %lor.lhs.false.436
  %191 = load i32, i32* %pos, align 4
  %sub444 = sub nsw i32 %191, 20
  %idxprom445 = sext i32 %sub444 to i64
  %arrayidx446 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom445
  %192 = load i32, i32* %arrayidx446, align 4
  %cmp447 = icmp eq i32 %192, 0
  br i1 %cmp447, label %if.then.462, label %lor.lhs.false.449

lor.lhs.false.449:                                ; preds = %land.lhs.true.443, %lor.lhs.false.436
  %193 = load i32, i32* %pos, align 4
  %add450 = add nsw i32 %193, 1
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom451
  %194 = load i8, i8* %arrayidx452, align 1
  %conv453 = zext i8 %194 to i32
  %cmp454 = icmp ne i32 %conv453, 3
  br i1 %cmp454, label %land.lhs.true.456, label %if.end.472

land.lhs.true.456:                                ; preds = %lor.lhs.false.449
  %195 = load i32, i32* %pos, align 4
  %add457 = add nsw i32 %195, 1
  %idxprom458 = sext i32 %add457 to i64
  %arrayidx459 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom458
  %196 = load i32, i32* %arrayidx459, align 4
  %cmp460 = icmp eq i32 %196, 0
  br i1 %cmp460, label %if.then.462, label %if.end.472

if.then.462:                                      ; preds = %land.lhs.true.456, %land.lhs.true.443, %land.lhs.true.430, %land.lhs.true.417
  %197 = load i32, i32* %pos, align 4
  %call463 = call i32 @findlib(i32 %197, i32 1, i32* %lib)
  %198 = load i32, i32* %pos, align 4
  %call464 = call i32 @countstones(i32 %198)
  %cmp465 = icmp sgt i32 %call464, 1
  br i1 %cmp465, label %if.then.470, label %lor.lhs.false.467

lor.lhs.false.467:                                ; preds = %if.then.462
  %199 = load i32, i32* %lib, align 4
  %200 = load i32, i32* %color.addr, align 4
  %call468 = call i32 @is_self_atari(i32 %199, i32 %200)
  %tobool469 = icmp ne i32 %call468, 0
  br i1 %tobool469, label %if.end.471, label %if.then.470

if.then.470:                                      ; preds = %lor.lhs.false.467, %if.then.462
  %201 = load i32, i32* %lib, align 4
  %202 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %201, i32* %202, align 4
  store i32 1, i32* %retval
  br label %return

if.end.471:                                       ; preds = %lor.lhs.false.467
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %land.lhs.true.456, %lor.lhs.false.449, %land.lhs.true.406, %land.lhs.true.400, %for.body.394
  br label %for.inc.473

for.inc.473:                                      ; preds = %if.end.472
  %203 = load i32, i32* %pos, align 4
  %inc474 = add nsw i32 %203, 1
  store i32 %inc474, i32* %pos, align 4
  br label %for.cond.391

for.end.475:                                      ; preds = %for.cond.391
  %204 = load i32, i32* %closest_opponent, align 4
  %cmp476 = icmp ne i32 %204, 0
  br i1 %cmp476, label %if.then.481, label %lor.lhs.false.478

lor.lhs.false.478:                                ; preds = %for.end.475
  %205 = load i32, i32* %closest_own, align 4
  %cmp479 = icmp ne i32 %205, 0
  br i1 %cmp479, label %if.then.481, label %if.end.653

if.then.481:                                      ; preds = %lor.lhs.false.478, %for.end.475
  %206 = load i32, i32* %closest_own, align 4
  %cmp482 = icmp eq i32 %206, 0
  br i1 %cmp482, label %if.then.484, label %if.else.485

if.then.484:                                      ; preds = %if.then.481
  %207 = load i32, i32* %closest_opponent, align 4
  store i32 %207, i32* %move, align 4
  br label %if.end.486

if.else.485:                                      ; preds = %if.then.481
  %208 = load i32, i32* %closest_own, align 4
  store i32 %208, i32* %move, align 4
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.485, %if.then.484
  %209 = load i32, i32* %move, align 4
  %idxprom487 = sext i32 %209 to i64
  %arrayidx488 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom487
  %210 = load i32, i32* %arrayidx488, align 4
  %cmp489 = icmp eq i32 %210, 2
  br i1 %cmp489, label %if.then.491, label %if.end.616

if.then.491:                                      ; preds = %if.end.486
  store i8 0, i8* %mark, align 1
  %211 = bitcast [400 x i8]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %211, i8 0, i64 400, i32 16, i1 false)
  store i32 0, i32* %best_score, align 4
  %212 = load i32, i32* %move, align 4
  store i32 %212, i32* %best_scoring_move, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.613, %if.then.491
  %213 = load i32, i32* %pos, align 4
  %cmp493 = icmp slt i32 %213, 400
  br i1 %cmp493, label %for.body.495, label %for.end.615

for.body.495:                                     ; preds = %for.cond.492
  store i32 0, i32* %score496, align 4
  store i32 0, i32* %move_ok, align 4
  %214 = load i32, i32* %pos, align 4
  %idxprom497 = sext i32 %214 to i64
  %arrayidx498 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom497
  %215 = load i8, i8* %arrayidx498, align 1
  %conv499 = zext i8 %215 to i32
  %cmp500 = icmp ne i32 %conv499, 3
  br i1 %cmp500, label %lor.lhs.false.502, label %if.then.507

lor.lhs.false.502:                                ; preds = %for.body.495
  %216 = load i32, i32* %pos, align 4
  %idxprom503 = sext i32 %216 to i64
  %arrayidx504 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom503
  %217 = load i32, i32* %arrayidx504, align 4
  %cmp505 = icmp ne i32 %217, 1
  br i1 %cmp505, label %if.then.507, label %if.end.508

if.then.507:                                      ; preds = %lor.lhs.false.502, %for.body.495
  br label %for.inc.613

if.end.508:                                       ; preds = %lor.lhs.false.502
  %218 = load i8, i8* %mark, align 1
  %inc509 = add i8 %218, 1
  store i8 %inc509, i8* %mark, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond.510

for.cond.510:                                     ; preds = %for.inc.599, %if.end.508
  %219 = load i32, i32* %k, align 4
  %cmp511 = icmp slt i32 %219, 4
  br i1 %cmp511, label %for.body.513, label %for.end.601

for.body.513:                                     ; preds = %for.cond.510
  %220 = load i32, i32* %pos, align 4
  %221 = load i32, i32* %k, align 4
  %idxprom515 = sext i32 %221 to i64
  %arrayidx516 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom515
  %222 = load i32, i32* %arrayidx516, align 4
  %add517 = add nsw i32 %220, %222
  store i32 %add517, i32* %pos2514, align 4
  %223 = load i32, i32* %pos2514, align 4
  %idxprom518 = sext i32 %223 to i64
  %arrayidx519 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom518
  %224 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %224 to i32
  %cmp521 = icmp ne i32 %conv520, 3
  br i1 %cmp521, label %if.end.524, label %if.then.523

if.then.523:                                      ; preds = %for.body.513
  br label %for.inc.599

if.end.524:                                       ; preds = %for.body.513
  %225 = load i32, i32* %pos2514, align 4
  %idxprom525 = sext i32 %225 to i64
  %arrayidx526 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom525
  %226 = load i32, i32* %arrayidx526, align 4
  %cmp527 = icmp slt i32 %226, 1
  br i1 %cmp527, label %if.then.529, label %if.else.530

if.then.529:                                      ; preds = %if.end.524
  %227 = load i32, i32* %score496, align 4
  %dec = add nsw i32 %227, -1
  store i32 %dec, i32* %score496, align 4
  br label %if.end.598

if.else.530:                                      ; preds = %if.end.524
  %228 = load i32, i32* %pos2514, align 4
  %idxprom531 = sext i32 %228 to i64
  %arrayidx532 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom531
  %229 = load i8, i8* %arrayidx532, align 1
  %conv533 = zext i8 %229 to i32
  %cmp534 = icmp eq i32 %conv533, 0
  br i1 %cmp534, label %if.then.536, label %if.else.538

if.then.536:                                      ; preds = %if.else.530
  %230 = load i32, i32* %score496, align 4
  %inc537 = add nsw i32 %230, 1
  store i32 %inc537, i32* %score496, align 4
  br label %if.end.597

if.else.538:                                      ; preds = %if.else.530
  %231 = load i32, i32* %pos2514, align 4
  %idxprom539 = sext i32 %231 to i64
  %arrayidx540 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom539
  %232 = load i8, i8* %arrayidx540, align 1
  %conv541 = sext i8 %232 to i32
  %233 = load i8, i8* %mark, align 1
  %conv542 = sext i8 %233 to i32
  %cmp543 = icmp eq i32 %conv541, %conv542
  br i1 %cmp543, label %if.then.545, label %if.else.547

if.then.545:                                      ; preds = %if.else.538
  %234 = load i32, i32* %score496, align 4
  %dec546 = add nsw i32 %234, -1
  store i32 %dec546, i32* %score496, align 4
  br label %if.end.596

if.else.547:                                      ; preds = %if.else.538
  %235 = load i32, i32* %pos2514, align 4
  %idxprom548 = sext i32 %235 to i64
  %arrayidx549 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom548
  %236 = load i8, i8* %arrayidx549, align 1
  %conv550 = zext i8 %236 to i32
  %237 = load i32, i32* %color.addr, align 4
  %cmp551 = icmp eq i32 %conv550, %237
  br i1 %cmp551, label %if.then.553, label %if.else.579

if.then.553:                                      ; preds = %if.else.547
  store i32 1, i32* %move_ok, align 4
  %238 = load i32, i32* %score496, align 4
  %add554 = add nsw i32 %238, 7
  store i32 %add554, i32* %score496, align 4
  %239 = load i32, i32* %pos2514, align 4
  %call555 = call i32 @countstones(i32 %239)
  %cmp556 = icmp sgt i32 %call555, 2
  br i1 %cmp556, label %if.then.558, label %if.end.560

if.then.558:                                      ; preds = %if.then.553
  %240 = load i32, i32* %score496, align 4
  %inc559 = add nsw i32 %240, 1
  store i32 %inc559, i32* %score496, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.558, %if.then.553
  %241 = load i32, i32* %pos2514, align 4
  %call561 = call i32 @countstones(i32 %241)
  %cmp562 = icmp sgt i32 %call561, 4
  br i1 %cmp562, label %if.then.564, label %if.end.566

if.then.564:                                      ; preds = %if.end.560
  %242 = load i32, i32* %score496, align 4
  %inc565 = add nsw i32 %242, 1
  store i32 %inc565, i32* %score496, align 4
  br label %if.end.566

if.end.566:                                       ; preds = %if.then.564, %if.end.560
  %243 = load i32, i32* %pos2514, align 4
  %call567 = call i32 @countlib(i32 %243)
  %cmp568 = icmp slt i32 %call567, 4
  br i1 %cmp568, label %if.then.570, label %if.end.572

if.then.570:                                      ; preds = %if.end.566
  %244 = load i32, i32* %score496, align 4
  %inc571 = add nsw i32 %244, 1
  store i32 %inc571, i32* %score496, align 4
  br label %if.end.572

if.end.572:                                       ; preds = %if.then.570, %if.end.566
  %245 = load i32, i32* %pos2514, align 4
  %call573 = call i32 @countlib(i32 %245)
  %cmp574 = icmp slt i32 %call573, 3
  br i1 %cmp574, label %if.then.576, label %if.end.578

if.then.576:                                      ; preds = %if.end.572
  %246 = load i32, i32* %score496, align 4
  %inc577 = add nsw i32 %246, 1
  store i32 %inc577, i32* %score496, align 4
  br label %if.end.578

if.end.578:                                       ; preds = %if.then.576, %if.end.572
  br label %if.end.594

if.else.579:                                      ; preds = %if.else.547
  %247 = load i32, i32* %pos, align 4
  %248 = load i32, i32* %other, align 4
  %call580 = call i32 @approxlib(i32 %247, i32 %248, i32 241, i32* null)
  %249 = load i32, i32* %pos2514, align 4
  %call581 = call i32 @countlib(i32 %249)
  %sub582 = sub nsw i32 %call580, %call581
  store i32 %sub582, i32* %deltalib, align 4
  store i32 1, i32* %move_ok, align 4
  %250 = load i32, i32* %score496, align 4
  %inc583 = add nsw i32 %250, 1
  store i32 %inc583, i32* %score496, align 4
  %251 = load i32, i32* %deltalib, align 4
  %cmp584 = icmp sge i32 %251, 0
  br i1 %cmp584, label %if.then.586, label %if.end.588

if.then.586:                                      ; preds = %if.else.579
  %252 = load i32, i32* %score496, align 4
  %inc587 = add nsw i32 %252, 1
  store i32 %inc587, i32* %score496, align 4
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.586, %if.else.579
  %253 = load i32, i32* %deltalib, align 4
  %cmp589 = icmp sgt i32 %253, 0
  br i1 %cmp589, label %if.then.591, label %if.end.593

if.then.591:                                      ; preds = %if.end.588
  %254 = load i32, i32* %score496, align 4
  %inc592 = add nsw i32 %254, 1
  store i32 %inc592, i32* %score496, align 4
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.591, %if.end.588
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %if.end.578
  %255 = load i32, i32* %pos2514, align 4
  %arraydecay595 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %256 = load i8, i8* %mark, align 1
  call void @mark_string(i32 %255, i8* %arraydecay595, i8 signext %256)
  br label %if.end.596

if.end.596:                                       ; preds = %if.end.594, %if.then.545
  br label %if.end.597

if.end.597:                                       ; preds = %if.end.596, %if.then.536
  br label %if.end.598

if.end.598:                                       ; preds = %if.end.597, %if.then.529
  br label %for.inc.599

for.inc.599:                                      ; preds = %if.end.598, %if.then.523
  %257 = load i32, i32* %k, align 4
  %inc600 = add nsw i32 %257, 1
  store i32 %inc600, i32* %k, align 4
  br label %for.cond.510

for.end.601:                                      ; preds = %for.cond.510
  %258 = load i32, i32* %pos, align 4
  %259 = load i32, i32* %other, align 4
  %call602 = call i32 @is_suicide(i32 %258, i32 %259)
  %tobool603 = icmp ne i32 %call602, 0
  br i1 %tobool603, label %if.then.604, label %if.end.606

if.then.604:                                      ; preds = %for.end.601
  %260 = load i32, i32* %score496, align 4
  %sub605 = sub nsw i32 %260, 3
  store i32 %sub605, i32* %score496, align 4
  br label %if.end.606

if.end.606:                                       ; preds = %if.then.604, %for.end.601
  %261 = load i32, i32* %move_ok, align 4
  %tobool607 = icmp ne i32 %261, 0
  br i1 %tobool607, label %land.lhs.true.608, label %if.end.612

land.lhs.true.608:                                ; preds = %if.end.606
  %262 = load i32, i32* %score496, align 4
  %263 = load i32, i32* %best_score, align 4
  %cmp609 = icmp sgt i32 %262, %263
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %land.lhs.true.608
  %264 = load i32, i32* %score496, align 4
  store i32 %264, i32* %best_score, align 4
  %265 = load i32, i32* %pos, align 4
  store i32 %265, i32* %best_scoring_move, align 4
  br label %if.end.612

if.end.612:                                       ; preds = %if.then.611, %land.lhs.true.608, %if.end.606
  br label %for.inc.613

for.inc.613:                                      ; preds = %if.end.612, %if.then.507
  %266 = load i32, i32* %pos, align 4
  %inc614 = add nsw i32 %266, 1
  store i32 %inc614, i32* %pos, align 4
  br label %for.cond.492

for.end.615:                                      ; preds = %for.cond.492
  %267 = load i32, i32* %best_scoring_move, align 4
  store i32 %267, i32* %move, align 4
  br label %if.end.616

if.end.616:                                       ; preds = %for.end.615, %if.end.486
  br label %while.cond

while.cond:                                       ; preds = %for.end.652, %if.end.616
  %268 = load i32, i32* %move, align 4
  %idxprom617 = sext i32 %268 to i64
  %arrayidx618 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom617
  %269 = load i32, i32* %arrayidx618, align 4
  %cmp619 = icmp sgt i32 %269, 1
  br i1 %cmp619, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.621

for.cond.621:                                     ; preds = %for.inc.650, %while.body
  %270 = load i32, i32* %k, align 4
  %cmp622 = icmp slt i32 %270, 4
  br i1 %cmp622, label %for.body.624, label %for.end.652

for.body.624:                                     ; preds = %for.cond.621
  %271 = load i32, i32* %move, align 4
  %272 = load i32, i32* %k, align 4
  %idxprom626 = sext i32 %272 to i64
  %arrayidx627 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom626
  %273 = load i32, i32* %arrayidx627, align 4
  %add628 = add nsw i32 %271, %273
  store i32 %add628, i32* %pos2625, align 4
  %274 = load i32, i32* %pos2625, align 4
  %idxprom629 = sext i32 %274 to i64
  %arrayidx630 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom629
  %275 = load i8, i8* %arrayidx630, align 1
  %conv631 = zext i8 %275 to i32
  %cmp632 = icmp ne i32 %conv631, 3
  br i1 %cmp632, label %land.lhs.true.634, label %if.end.649

land.lhs.true.634:                                ; preds = %for.body.624
  %276 = load i32, i32* %pos2625, align 4
  %idxprom635 = sext i32 %276 to i64
  %arrayidx636 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom635
  %277 = load i8, i8* %arrayidx636, align 1
  %conv637 = zext i8 %277 to i32
  %cmp638 = icmp eq i32 %conv637, 0
  br i1 %cmp638, label %land.lhs.true.640, label %if.end.649

land.lhs.true.640:                                ; preds = %land.lhs.true.634
  %278 = load i32, i32* %pos2625, align 4
  %idxprom641 = sext i32 %278 to i64
  %arrayidx642 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom641
  %279 = load i32, i32* %arrayidx642, align 4
  %280 = load i32, i32* %move, align 4
  %idxprom643 = sext i32 %280 to i64
  %arrayidx644 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom643
  %281 = load i32, i32* %arrayidx644, align 4
  %sub645 = sub nsw i32 %281, 1
  %cmp646 = icmp eq i32 %279, %sub645
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %land.lhs.true.640
  %282 = load i32, i32* %pos2625, align 4
  store i32 %282, i32* %move, align 4
  br label %for.end.652

if.end.649:                                       ; preds = %land.lhs.true.640, %land.lhs.true.634, %for.body.624
  br label %for.inc.650

for.inc.650:                                      ; preds = %if.end.649
  %283 = load i32, i32* %k, align 4
  %inc651 = add nsw i32 %283, 1
  store i32 %inc651, i32* %k, align 4
  br label %for.cond.621

for.end.652:                                      ; preds = %if.then.648, %for.cond.621
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %284 = load i32, i32* %move, align 4
  %285 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %284, i32* %285, align 4
  store i32 1, i32* %retval
  br label %return

if.end.653:                                       ; preds = %lor.lhs.false.478
  store i32 21, i32* %pos, align 4
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.1008, %if.end.653
  %286 = load i32, i32* %pos, align 4
  %cmp655 = icmp slt i32 %286, 400
  br i1 %cmp655, label %for.body.657, label %for.end.1010

for.body.657:                                     ; preds = %for.cond.654
  store i32 0, i32* %eyespace_neighbors, align 4
  store i32 0, i32* %own_neighbors, align 4
  store i32 0, i32* %own_diagonals, align 4
  store i32 0, i32* %opponent_dragons, align 4
  store i32 0, i32* %own_worms, align 4
  store i32 3, i32* %safety658, align 4
  store i32 0, i32* %bonus, align 4
  %287 = load i32, i32* %pos, align 4
  %idxprom660 = sext i32 %287 to i64
  %arrayidx661 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom660
  store i32 0, i32* %arrayidx661, align 4
  %288 = load i32, i32* %pos, align 4
  %idxprom662 = sext i32 %288 to i64
  %arrayidx663 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom662
  %289 = load i8, i8* %arrayidx663, align 1
  %conv664 = zext i8 %289 to i32
  %cmp665 = icmp ne i32 %conv664, 0
  br i1 %cmp665, label %if.then.672, label %lor.lhs.false.667

lor.lhs.false.667:                                ; preds = %for.body.657
  %290 = load i32, i32* %pos, align 4
  %idxprom668 = sext i32 %290 to i64
  %arrayidx669 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom668
  %291 = load i32, i32* %arrayidx669, align 4
  %cmp670 = icmp ne i32 %291, -1
  br i1 %cmp670, label %if.then.672, label %if.end.673

if.then.672:                                      ; preds = %lor.lhs.false.667, %for.body.657
  br label %for.inc.1008

if.end.673:                                       ; preds = %lor.lhs.false.667
  %292 = bitcast [400 x i32]* %mx659 to i8*
  call void @llvm.memset.p0i8.i64(i8* %292, i8 0, i64 1600, i32 16, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond.674

for.cond.674:                                     ; preds = %for.inc.894, %if.end.673
  %293 = load i32, i32* %k, align 4
  %cmp675 = icmp slt i32 %293, 8
  br i1 %cmp675, label %for.body.677, label %for.end.896

for.body.677:                                     ; preds = %for.cond.674
  %294 = load i32, i32* %pos, align 4
  %295 = load i32, i32* %k, align 4
  %idxprom679 = sext i32 %295 to i64
  %arrayidx680 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom679
  %296 = load i32, i32* %arrayidx680, align 4
  %add681 = add nsw i32 %294, %296
  store i32 %add681, i32* %pos2678, align 4
  %297 = load i32, i32* %pos2678, align 4
  %idxprom682 = sext i32 %297 to i64
  %arrayidx683 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom682
  %298 = load i8, i8* %arrayidx683, align 1
  %conv684 = zext i8 %298 to i32
  %cmp685 = icmp ne i32 %conv684, 3
  br i1 %cmp685, label %if.end.688, label %if.then.687

if.then.687:                                      ; preds = %for.body.677
  br label %for.inc.894

if.end.688:                                       ; preds = %for.body.677
  %299 = load i32, i32* %pos2678, align 4
  %idxprom689 = sext i32 %299 to i64
  %arrayidx690 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom689
  %300 = load i8, i8* %arrayidx690, align 1
  %conv691 = zext i8 %300 to i32
  %cmp692 = icmp eq i32 %conv691, 0
  br i1 %cmp692, label %if.then.694, label %if.end.700

if.then.694:                                      ; preds = %if.end.688
  %301 = load i32, i32* %k, align 4
  %cmp695 = icmp slt i32 %301, 4
  br i1 %cmp695, label %if.then.697, label %if.end.699

if.then.697:                                      ; preds = %if.then.694
  %302 = load i32, i32* %eyespace_neighbors, align 4
  %inc698 = add nsw i32 %302, 1
  store i32 %inc698, i32* %eyespace_neighbors, align 4
  br label %if.end.699

if.end.699:                                       ; preds = %if.then.697, %if.then.694
  br label %for.inc.894

if.end.700:                                       ; preds = %if.end.688
  %303 = load i32, i32* %pos2678, align 4
  %idxprom701 = sext i32 %303 to i64
  %arrayidx702 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom701
  %304 = load i8, i8* %arrayidx702, align 1
  %conv703 = zext i8 %304 to i32
  %305 = load i32, i32* %other, align 4
  %cmp704 = icmp eq i32 %conv703, %305
  br i1 %cmp704, label %if.then.706, label %if.else.764

if.then.706:                                      ; preds = %if.end.700
  %306 = load i32, i32* %pos2678, align 4
  %idxprom707 = sext i32 %306 to i64
  %arrayidx708 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom707
  %origin709 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx708, i32 0, i32 2
  %307 = load i32, i32* %origin709, align 4
  store i32 %307, i32* %origin, align 4
  %308 = load i32, i32* %k, align 4
  %cmp710 = icmp slt i32 %308, 4
  br i1 %cmp710, label %if.then.712, label %if.end.727

if.then.712:                                      ; preds = %if.then.706
  %309 = load i32, i32* %pos2678, align 4
  %idxprom713 = sext i32 %309 to i64
  %arrayidx714 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom713
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx714, i32 0, i32 16
  %310 = load i32, i32* %status, align 4
  %cmp715 = icmp eq i32 %310, 1
  br i1 %cmp715, label %if.then.717, label %if.else.718

if.then.717:                                      ; preds = %if.then.712
  store i32 0, i32* %safety658, align 4
  br label %for.end.896

if.else.718:                                      ; preds = %if.then.712
  %311 = load i32, i32* %origin, align 4
  %idxprom719 = sext i32 %311 to i64
  %arrayidx720 = getelementptr inbounds [400 x i32], [400 x i32]* %mx659, i32 0, i64 %idxprom719
  %312 = load i32, i32* %arrayidx720, align 4
  %tobool721 = icmp ne i32 %312, 0
  br i1 %tobool721, label %if.end.725, label %if.then.722

if.then.722:                                      ; preds = %if.else.718
  %313 = load i32, i32* %eyespace_neighbors, align 4
  %inc723 = add nsw i32 %313, 1
  store i32 %inc723, i32* %eyespace_neighbors, align 4
  %314 = load i32, i32* %opponent_dragons, align 4
  %inc724 = add nsw i32 %314, 1
  store i32 %inc724, i32* %opponent_dragons, align 4
  br label %if.end.725

if.end.725:                                       ; preds = %if.then.722, %if.else.718
  br label %if.end.726

if.end.726:                                       ; preds = %if.end.725
  br label %if.end.727

if.end.727:                                       ; preds = %if.end.726, %if.then.706
  %315 = load i32, i32* %origin, align 4
  %idxprom728 = sext i32 %315 to i64
  %arrayidx729 = getelementptr inbounds [400 x i32], [400 x i32]* %mx659, i32 0, i64 %idxprom728
  %316 = load i32, i32* %arrayidx729, align 4
  %tobool730 = icmp ne i32 %316, 0
  br i1 %tobool730, label %if.end.761, label %land.lhs.true.731

land.lhs.true.731:                                ; preds = %if.end.727
  %317 = load i32, i32* %pos2678, align 4
  %idxprom732 = sext i32 %317 to i64
  %arrayidx733 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom732
  %status734 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx733, i32 0, i32 16
  %318 = load i32, i32* %status734, align 4
  %cmp735 = icmp eq i32 %318, 0
  br i1 %cmp735, label %if.then.737, label %if.end.761

if.then.737:                                      ; preds = %land.lhs.true.731
  %319 = load i32, i32* %bonus, align 4
  %inc738 = add nsw i32 %319, 1
  store i32 %inc738, i32* %bonus, align 4
  %320 = load i32, i32* %k, align 4
  %cmp739 = icmp slt i32 %320, 4
  br i1 %cmp739, label %land.lhs.true.741, label %if.end.751

land.lhs.true.741:                                ; preds = %if.then.737
  %321 = load i32, i32* %pos2678, align 4
  %call742 = call i32 @countlib(i32 %321)
  %cmp743 = icmp sle i32 %call742, 2
  br i1 %cmp743, label %land.lhs.true.745, label %if.end.751

land.lhs.true.745:                                ; preds = %land.lhs.true.741
  %322 = load i32, i32* %pos2678, align 4
  %call746 = call i32 @countstones(i32 %322)
  %cmp747 = icmp sge i32 %call746, 3
  br i1 %cmp747, label %if.then.749, label %if.end.751

if.then.749:                                      ; preds = %land.lhs.true.745
  %323 = load i32, i32* %bonus, align 4
  %inc750 = add nsw i32 %323, 1
  store i32 %inc750, i32* %bonus, align 4
  br label %if.end.751

if.end.751:                                       ; preds = %if.then.749, %land.lhs.true.745, %land.lhs.true.741, %if.then.737
  %324 = load i32, i32* %k, align 4
  %cmp752 = icmp slt i32 %324, 4
  br i1 %cmp752, label %land.lhs.true.754, label %if.end.760

land.lhs.true.754:                                ; preds = %if.end.751
  %325 = load i32, i32* %pos2678, align 4
  %call755 = call i32 @countlib(i32 %325)
  %cmp756 = icmp eq i32 %call755, 1
  br i1 %cmp756, label %if.then.758, label %if.end.760

if.then.758:                                      ; preds = %land.lhs.true.754
  %326 = load i32, i32* %bonus, align 4
  %add759 = add nsw i32 %326, 3
  store i32 %add759, i32* %bonus, align 4
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.758, %land.lhs.true.754, %if.end.751
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %land.lhs.true.731, %if.end.727
  %327 = load i32, i32* %origin, align 4
  %idxprom762 = sext i32 %327 to i64
  %arrayidx763 = getelementptr inbounds [400 x i32], [400 x i32]* %mx659, i32 0, i64 %idxprom762
  store i32 1, i32* %arrayidx763, align 4
  br label %if.end.893

if.else.764:                                      ; preds = %if.end.700
  %328 = load i32, i32* %pos2678, align 4
  %idxprom765 = sext i32 %328 to i64
  %arrayidx766 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom765
  %329 = load i8, i8* %arrayidx766, align 1
  %conv767 = zext i8 %329 to i32
  %330 = load i32, i32* %color.addr, align 4
  %cmp768 = icmp eq i32 %conv767, %330
  br i1 %cmp768, label %if.then.770, label %if.end.892

if.then.770:                                      ; preds = %if.else.764
  %331 = load i32, i32* %pos2678, align 4
  %332 = load i32, i32* %pos, align 4
  %idxprom771 = sext i32 %332 to i64
  %arrayidx772 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom771
  store i32 %331, i32* %arrayidx772, align 4
  %333 = load i32, i32* %safety658, align 4
  %cmp773 = icmp eq i32 %333, 3
  br i1 %cmp773, label %land.lhs.true.775, label %if.end.782

land.lhs.true.775:                                ; preds = %if.then.770
  %334 = load i32, i32* %pos2678, align 4
  %idxprom776 = sext i32 %334 to i64
  %arrayidx777 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom776
  %status778 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx777, i32 0, i32 16
  %335 = load i32, i32* %status778, align 4
  %cmp779 = icmp eq i32 %335, 1
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %land.lhs.true.775
  store i32 1, i32* %safety658, align 4
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.781, %land.lhs.true.775, %if.then.770
  %336 = load i32, i32* %pos2678, align 4
  %idxprom783 = sext i32 %336 to i64
  %arrayidx784 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom783
  %id785 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx784, i32 0, i32 1
  %337 = load i32, i32* %id785, align 4
  %idxprom786 = sext i32 %337 to i64
  %338 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx787 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %338, i64 %idxprom786
  %safety788 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx787, i32 0, i32 6
  %339 = load i32, i32* %safety788, align 4
  %cmp789 = icmp eq i32 %339, 9
  br i1 %cmp789, label %if.then.791, label %if.end.792

if.then.791:                                      ; preds = %if.end.782
  store i32 9, i32* %safety658, align 4
  br label %if.end.792

if.end.792:                                       ; preds = %if.then.791, %if.end.782
  %340 = load i32, i32* %k, align 4
  %cmp793 = icmp slt i32 %340, 4
  br i1 %cmp793, label %if.then.795, label %if.else.889

if.then.795:                                      ; preds = %if.end.792
  %341 = load i32, i32* %pos2678, align 4
  %idxprom796 = sext i32 %341 to i64
  %arrayidx797 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom796
  %origin798 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx797, i32 0, i32 3
  %342 = load i32, i32* %origin798, align 4
  store i32 %342, i32* %apos, align 4
  %343 = load i32, i32* %apos, align 4
  %idxprom799 = sext i32 %343 to i64
  %arrayidx800 = getelementptr inbounds [400 x i32], [400 x i32]* %mx659, i32 0, i64 %idxprom799
  %344 = load i32, i32* %arrayidx800, align 4
  %tobool801 = icmp ne i32 %344, 0
  br i1 %tobool801, label %if.end.823, label %if.then.802

if.then.802:                                      ; preds = %if.then.795
  %345 = load i32, i32* %own_worms, align 4
  %inc803 = add nsw i32 %345, 1
  store i32 %inc803, i32* %own_worms, align 4
  %346 = load i32, i32* %apos, align 4
  %call804 = call i32 @countstones(i32 %346)
  %cmp805 = icmp eq i32 %call804, 1
  br i1 %cmp805, label %if.then.807, label %if.end.809

if.then.807:                                      ; preds = %if.then.802
  %347 = load i32, i32* %bonus, align 4
  %add808 = add nsw i32 %347, 2
  store i32 %add808, i32* %bonus, align 4
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.807, %if.then.802
  %348 = load i32, i32* %apos, align 4
  %call810 = call i32 @countlib(i32 %348)
  %cmp811 = icmp slt i32 %call810, 6
  br i1 %cmp811, label %land.lhs.true.813, label %if.end.820

land.lhs.true.813:                                ; preds = %if.end.809
  %349 = load i32, i32* %pos, align 4
  %350 = load i32, i32* %color.addr, align 4
  %call814 = call i32 @approxlib(i32 %349, i32 %350, i32 5, i32* null)
  %351 = load i32, i32* %apos, align 4
  %call815 = call i32 @countlib(i32 %351)
  %cmp816 = icmp slt i32 %call814, %call815
  br i1 %cmp816, label %if.then.818, label %if.end.820

if.then.818:                                      ; preds = %land.lhs.true.813
  %352 = load i32, i32* %bonus, align 4
  %sub819 = sub nsw i32 %352, 5
  store i32 %sub819, i32* %bonus, align 4
  br label %if.end.820

if.end.820:                                       ; preds = %if.then.818, %land.lhs.true.813, %if.end.809
  %353 = load i32, i32* %apos, align 4
  %idxprom821 = sext i32 %353 to i64
  %arrayidx822 = getelementptr inbounds [400 x i32], [400 x i32]* %mx659, i32 0, i64 %idxprom821
  store i32 1, i32* %arrayidx822, align 4
  br label %if.end.823

if.end.823:                                       ; preds = %if.end.820, %if.then.795
  %354 = load i32, i32* %apos, align 4
  %call824 = call i32 @countlib(i32 %354)
  %cmp825 = icmp sle i32 %call824, 2
  br i1 %cmp825, label %if.then.827, label %if.end.887

if.then.827:                                      ; preds = %if.end.823
  store i32 0, i32* %important, align 4
  store i32 0, i32* %safe_atari, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.828

for.cond.828:                                     ; preds = %for.inc.870, %if.then.827
  %355 = load i32, i32* %r, align 4
  %cmp829 = icmp slt i32 %355, 4
  br i1 %cmp829, label %for.body.831, label %for.end.872

for.body.831:                                     ; preds = %for.cond.828
  %356 = load i32, i32* %r, align 4
  %idxprom832 = sext i32 %356 to i64
  %arrayidx833 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom832
  %357 = load i32, i32* %arrayidx833, align 4
  store i32 %357, i32* %d, align 4
  %358 = load i32, i32* %apos, align 4
  %359 = load i32, i32* %d, align 4
  %add834 = add nsw i32 %358, %359
  %idxprom835 = sext i32 %add834 to i64
  %arrayidx836 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom835
  %360 = load i8, i8* %arrayidx836, align 1
  %conv837 = zext i8 %360 to i32
  %cmp838 = icmp ne i32 %conv837, 3
  br i1 %cmp838, label %if.end.841, label %if.then.840

if.then.840:                                      ; preds = %for.body.831
  br label %for.inc.870

if.end.841:                                       ; preds = %for.body.831
  %361 = load i32, i32* %apos, align 4
  %362 = load i32, i32* %d, align 4
  %add842 = add nsw i32 %361, %362
  %idxprom843 = sext i32 %add842 to i64
  %arrayidx844 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom843
  %363 = load i8, i8* %arrayidx844, align 1
  %conv845 = zext i8 %363 to i32
  %364 = load i32, i32* %other, align 4
  %cmp846 = icmp eq i32 %conv845, %364
  br i1 %cmp846, label %land.lhs.true.848, label %if.else.856

land.lhs.true.848:                                ; preds = %if.end.841
  %365 = load i32, i32* %apos, align 4
  %366 = load i32, i32* %d, align 4
  %add849 = add nsw i32 %365, %366
  %idxprom850 = sext i32 %add849 to i64
  %arrayidx851 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom850
  %status852 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx851, i32 0, i32 16
  %367 = load i32, i32* %status852, align 4
  %cmp853 = icmp eq i32 %367, 0
  br i1 %cmp853, label %if.then.855, label %if.else.856

if.then.855:                                      ; preds = %land.lhs.true.848
  store i32 1, i32* %important, align 4
  br label %if.end.869

if.else.856:                                      ; preds = %land.lhs.true.848, %if.end.841
  %368 = load i32, i32* %apos, align 4
  %369 = load i32, i32* %d, align 4
  %add857 = add nsw i32 %368, %369
  %idxprom858 = sext i32 %add857 to i64
  %arrayidx859 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom858
  %370 = load i8, i8* %arrayidx859, align 1
  %conv860 = zext i8 %370 to i32
  %cmp861 = icmp eq i32 %conv860, 0
  br i1 %cmp861, label %land.lhs.true.863, label %if.end.868

land.lhs.true.863:                                ; preds = %if.else.856
  %371 = load i32, i32* %apos, align 4
  %372 = load i32, i32* %d, align 4
  %add864 = add nsw i32 %371, %372
  %373 = load i32, i32* %other, align 4
  %call865 = call i32 @is_self_atari(i32 %add864, i32 %373)
  %tobool866 = icmp ne i32 %call865, 0
  br i1 %tobool866, label %if.end.868, label %if.then.867

if.then.867:                                      ; preds = %land.lhs.true.863
  store i32 1, i32* %safe_atari, align 4
  br label %if.end.868

if.end.868:                                       ; preds = %if.then.867, %land.lhs.true.863, %if.else.856
  br label %if.end.869

if.end.869:                                       ; preds = %if.end.868, %if.then.855
  br label %for.inc.870

for.inc.870:                                      ; preds = %if.end.869, %if.then.840
  %374 = load i32, i32* %r, align 4
  %inc871 = add nsw i32 %374, 1
  store i32 %inc871, i32* %r, align 4
  br label %for.cond.828

for.end.872:                                      ; preds = %for.cond.828
  %375 = load i32, i32* %pos, align 4
  %376 = load i32, i32* %color.addr, align 4
  %call873 = call i32 @approxlib(i32 %375, i32 %376, i32 3, i32* null)
  %cmp874 = icmp sgt i32 %call873, 2
  br i1 %cmp874, label %if.then.876, label %if.end.886

if.then.876:                                      ; preds = %for.end.872
  %377 = load i32, i32* %bonus, align 4
  %inc877 = add nsw i32 %377, 1
  store i32 %inc877, i32* %bonus, align 4
  %378 = load i32, i32* %important, align 4
  %tobool878 = icmp ne i32 %378, 0
  br i1 %tobool878, label %if.then.879, label %if.end.885

if.then.879:                                      ; preds = %if.then.876
  %379 = load i32, i32* %bonus, align 4
  %add880 = add nsw i32 %379, 2
  store i32 %add880, i32* %bonus, align 4
  %380 = load i32, i32* %safe_atari, align 4
  %tobool881 = icmp ne i32 %380, 0
  br i1 %tobool881, label %if.then.882, label %if.end.884

if.then.882:                                      ; preds = %if.then.879
  %381 = load i32, i32* %bonus, align 4
  %add883 = add nsw i32 %381, 2
  store i32 %add883, i32* %bonus, align 4
  br label %if.end.884

if.end.884:                                       ; preds = %if.then.882, %if.then.879
  br label %if.end.885

if.end.885:                                       ; preds = %if.end.884, %if.then.876
  br label %if.end.886

if.end.886:                                       ; preds = %if.end.885, %for.end.872
  br label %if.end.887

if.end.887:                                       ; preds = %if.end.886, %if.end.823
  %382 = load i32, i32* %own_neighbors, align 4
  %inc888 = add nsw i32 %382, 1
  store i32 %inc888, i32* %own_neighbors, align 4
  br label %if.end.891

if.else.889:                                      ; preds = %if.end.792
  %383 = load i32, i32* %own_diagonals, align 4
  %inc890 = add nsw i32 %383, 1
  store i32 %inc890, i32* %own_diagonals, align 4
  br label %if.end.891

if.end.891:                                       ; preds = %if.else.889, %if.end.887
  br label %if.end.892

if.end.892:                                       ; preds = %if.end.891, %if.else.764
  br label %if.end.893

if.end.893:                                       ; preds = %if.end.892, %if.end.761
  br label %for.inc.894

for.inc.894:                                      ; preds = %if.end.893, %if.end.699, %if.then.687
  %384 = load i32, i32* %k, align 4
  %inc895 = add nsw i32 %384, 1
  store i32 %inc895, i32* %k, align 4
  br label %for.cond.674

for.end.896:                                      ; preds = %if.then.717, %for.cond.674
  %385 = load i32, i32* %safety658, align 4
  %cmp897 = icmp eq i32 %385, 0
  br i1 %cmp897, label %if.then.909, label %lor.lhs.false.899

lor.lhs.false.899:                                ; preds = %for.end.896
  %386 = load i32, i32* %safety658, align 4
  %cmp900 = icmp eq i32 %386, 3
  br i1 %cmp900, label %if.then.909, label %lor.lhs.false.902

lor.lhs.false.902:                                ; preds = %lor.lhs.false.899
  %387 = load i32, i32* %eyespace_neighbors, align 4
  %cmp903 = icmp eq i32 %387, 0
  br i1 %cmp903, label %if.then.909, label %lor.lhs.false.905

lor.lhs.false.905:                                ; preds = %lor.lhs.false.902
  %388 = load i32, i32* %own_neighbors, align 4
  %389 = load i32, i32* %own_diagonals, align 4
  %add906 = add nsw i32 %388, %389
  %cmp907 = icmp eq i32 %add906, 0
  br i1 %cmp907, label %if.then.909, label %if.end.910

if.then.909:                                      ; preds = %lor.lhs.false.905, %lor.lhs.false.902, %lor.lhs.false.899, %for.end.896
  br label %for.inc.1008

if.end.910:                                       ; preds = %lor.lhs.false.905
  %390 = load i32, i32* %bonus, align 4
  %cmp911 = icmp slt i32 %390, 0
  br i1 %cmp911, label %if.then.913, label %if.end.914

if.then.913:                                      ; preds = %if.end.910
  store i32 0, i32* %bonus, align 4
  br label %if.end.914

if.end.914:                                       ; preds = %if.then.913, %if.end.910
  %391 = load i32, i32* %eyespace_neighbors, align 4
  %mul915 = mul nsw i32 4, %391
  %392 = load i32, i32* %bonus, align 4
  %add916 = add nsw i32 %mul915, %392
  %393 = load i32, i32* %pos, align 4
  %idxprom917 = sext i32 %393 to i64
  %arrayidx918 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom917
  store i32 %add916, i32* %arrayidx918, align 4
  %394 = load i32, i32* %safety658, align 4
  %cmp919 = icmp eq i32 %394, 9
  br i1 %cmp919, label %if.then.921, label %if.else.945

if.then.921:                                      ; preds = %if.end.914
  %395 = load i32, i32* %own_neighbors, align 4
  %396 = load i32, i32* %pos, align 4
  %idxprom922 = sext i32 %396 to i64
  %arrayidx923 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom922
  %397 = load i32, i32* %arrayidx923, align 4
  %add924 = add nsw i32 %397, %395
  store i32 %add924, i32* %arrayidx923, align 4
  %398 = load i32, i32* %own_neighbors, align 4
  %cmp925 = icmp slt i32 %398, 2
  br i1 %cmp925, label %if.then.927, label %if.end.931

if.then.927:                                      ; preds = %if.then.921
  %399 = load i32, i32* %own_diagonals, align 4
  %400 = load i32, i32* %pos, align 4
  %idxprom928 = sext i32 %400 to i64
  %arrayidx929 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom928
  %401 = load i32, i32* %arrayidx929, align 4
  %add930 = add nsw i32 %401, %399
  store i32 %add930, i32* %arrayidx929, align 4
  br label %if.end.931

if.end.931:                                       ; preds = %if.then.927, %if.then.921
  %402 = load i32, i32* %own_worms, align 4
  %cmp932 = icmp sgt i32 %402, 1
  br i1 %cmp932, label %land.lhs.true.934, label %if.end.944

land.lhs.true.934:                                ; preds = %if.end.931
  %403 = load i32, i32* %eyespace_neighbors, align 4
  %cmp935 = icmp sge i32 %403, 1
  br i1 %cmp935, label %if.then.937, label %if.end.944

if.then.937:                                      ; preds = %land.lhs.true.934
  %404 = load i32, i32* %own_worms, align 4
  %sub938 = sub nsw i32 %404, 2
  %mul939 = mul nsw i32 5, %sub938
  %add940 = add nsw i32 10, %mul939
  %405 = load i32, i32* %pos, align 4
  %idxprom941 = sext i32 %405 to i64
  %arrayidx942 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom941
  %406 = load i32, i32* %arrayidx942, align 4
  %add943 = add nsw i32 %406, %add940
  store i32 %add943, i32* %arrayidx942, align 4
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.937, %land.lhs.true.934, %if.end.931
  br label %if.end.953

if.else.945:                                      ; preds = %if.end.914
  %407 = load i32, i32* %eyespace_neighbors, align 4
  %cmp946 = icmp sgt i32 %407, 2
  br i1 %cmp946, label %if.then.948, label %if.end.952

if.then.948:                                      ; preds = %if.else.945
  %408 = load i32, i32* %own_diagonals, align 4
  %409 = load i32, i32* %pos, align 4
  %idxprom949 = sext i32 %409 to i64
  %arrayidx950 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom949
  %410 = load i32, i32* %arrayidx950, align 4
  %add951 = add nsw i32 %410, %408
  store i32 %add951, i32* %arrayidx950, align 4
  br label %if.end.952

if.end.952:                                       ; preds = %if.then.948, %if.else.945
  br label %if.end.953

if.end.953:                                       ; preds = %if.end.952, %if.end.944
  %411 = load i32, i32* %opponent_dragons, align 4
  %cmp954 = icmp sgt i32 %411, 1
  br i1 %cmp954, label %if.then.956, label %if.end.962

if.then.956:                                      ; preds = %if.end.953
  %412 = load i32, i32* %opponent_dragons, align 4
  %sub957 = sub nsw i32 %412, 1
  %mul958 = mul nsw i32 10, %sub957
  %413 = load i32, i32* %pos, align 4
  %idxprom959 = sext i32 %413 to i64
  %arrayidx960 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom959
  %414 = load i32, i32* %arrayidx960, align 4
  %add961 = add nsw i32 %414, %mul958
  store i32 %add961, i32* %arrayidx960, align 4
  br label %if.end.962

if.end.962:                                       ; preds = %if.then.956, %if.end.953
  %415 = load i32, i32* %pos, align 4
  %idxprom963 = sext i32 %415 to i64
  %arrayidx964 = getelementptr inbounds [400 x float], [400 x float]* %owl_hotspot, i32 0, i64 %idxprom963
  %416 = load float, float* %arrayidx964, align 4
  %conv965 = fpext float %416 to double
  %mul966 = fmul double 2.000000e+01, %conv965
  %conv967 = fptosi double %mul966 to i32
  store i32 %conv967, i32* %owl_hotspot_bonus, align 4
  %417 = load i32, i32* %pos, align 4
  %idxprom968 = sext i32 %417 to i64
  %arrayidx969 = getelementptr inbounds [400 x float], [400 x float]* %reading_hotspot, i32 0, i64 %idxprom968
  %418 = load float, float* %arrayidx969, align 4
  %conv970 = fpext float %418 to double
  %mul971 = fmul double 2.000000e+01, %conv970
  %conv972 = fptosi double %mul971 to i32
  store i32 %conv972, i32* %reading_hotspot_bonus, align 4
  %419 = load i32, i32* %owl_hotspot_bonus, align 4
  %420 = load i32, i32* %reading_hotspot_bonus, align 4
  %add973 = add nsw i32 %419, %420
  store i32 %add973, i32* %hotspot_bonus, align 4
  %421 = load i32, i32* %pos, align 4
  %idxprom974 = sext i32 %421 to i64
  %arrayidx975 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom974
  %422 = load i32, i32* %arrayidx975, align 4
  %cmp976 = icmp sgt i32 %422, 0
  br i1 %cmp976, label %land.lhs.true.978, label %if.end.988

land.lhs.true.978:                                ; preds = %if.end.962
  %423 = load i32, i32* %pos, align 4
  %idxprom979 = sext i32 %423 to i64
  %arrayidx980 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom979
  %424 = load i32, i32* %arrayidx980, align 4
  %425 = load i32, i32* %hotspot_bonus, align 4
  %add981 = add nsw i32 %424, %425
  %cmp982 = icmp sle i32 %add981, 0
  br i1 %cmp982, label %if.then.984, label %if.end.988

if.then.984:                                      ; preds = %land.lhs.true.978
  %426 = load i32, i32* %pos, align 4
  %idxprom985 = sext i32 %426 to i64
  %arrayidx986 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom985
  %427 = load i32, i32* %arrayidx986, align 4
  %sub987 = sub nsw i32 1, %427
  store i32 %sub987, i32* %hotspot_bonus, align 4
  br label %if.end.988

if.end.988:                                       ; preds = %if.then.984, %land.lhs.true.978, %if.end.962
  %428 = load i32, i32* %hotspot_bonus, align 4
  %429 = load i32, i32* %pos, align 4
  %idxprom989 = sext i32 %429 to i64
  %arrayidx990 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom989
  %430 = load i32, i32* %arrayidx990, align 4
  %add991 = add nsw i32 %430, %428
  store i32 %add991, i32* %arrayidx990, align 4
  %431 = load i32, i32* @debug, align 4
  %and992 = and i32 %431, 131072
  %tobool993 = icmp ne i32 %and992, 0
  br i1 %tobool993, label %if.then.994, label %if.end.998

if.then.994:                                      ; preds = %if.end.988
  %432 = load i32, i32* %pos, align 4
  %433 = load i32, i32* %pos, align 4
  %idxprom995 = sext i32 %433 to i64
  %arrayidx996 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom995
  %434 = load i32, i32* %arrayidx996, align 4
  %435 = load i32, i32* %owl_hotspot_bonus, align 4
  %436 = load i32, i32* %reading_hotspot_bonus, align 4
  %call997 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0), i32 %432, i32 %434, i32 %435, i32 %436)
  br label %if.end.998

if.end.998:                                       ; preds = %if.then.994, %if.end.988
  %437 = load i32, i32* %pos, align 4
  %438 = load i32, i32* %color.addr, align 4
  %call999 = call i32 @is_ko(i32 %437, i32 %438, i32* null)
  %tobool1000 = icmp ne i32 %call999, 0
  br i1 %tobool1000, label %if.then.1001, label %if.end.1007

if.then.1001:                                     ; preds = %if.end.998
  %439 = load i32, i32* %pos, align 4
  %idxprom1002 = sext i32 %439 to i64
  %arrayidx1003 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1002
  %440 = load i32, i32* %arrayidx1003, align 4
  %add1004 = add nsw i32 %440, 1
  %div = sdiv i32 %add1004, 2
  %441 = load i32, i32* %pos, align 4
  %idxprom1005 = sext i32 %441 to i64
  %arrayidx1006 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1005
  store i32 %div, i32* %arrayidx1006, align 4
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.then.1001, %if.end.998
  br label %for.inc.1008

for.inc.1008:                                     ; preds = %if.end.1007, %if.then.909, %if.then.672
  %442 = load i32, i32* %pos, align 4
  %inc1009 = add nsw i32 %442, 1
  store i32 %inc1009, i32* %pos, align 4
  br label %for.cond.654

for.end.1010:                                     ; preds = %for.cond.654
  br label %while.body.1012

while.body.1012:                                  ; preds = %for.end.1010, %if.end.1196
  store i32 0, i32* %best_score, align 4
  store i32 0, i32* %move, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.1013

for.cond.1013:                                    ; preds = %for.inc.1031, %while.body.1012
  %443 = load i32, i32* %pos, align 4
  %cmp1014 = icmp slt i32 %443, 400
  br i1 %cmp1014, label %for.body.1016, label %for.end.1033

for.body.1016:                                    ; preds = %for.cond.1013
  %444 = load i32, i32* %pos, align 4
  %idxprom1017 = sext i32 %444 to i64
  %arrayidx1018 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1017
  %445 = load i8, i8* %arrayidx1018, align 1
  %conv1019 = zext i8 %445 to i32
  %cmp1020 = icmp ne i32 %conv1019, 3
  br i1 %cmp1020, label %land.lhs.true.1022, label %if.end.1030

land.lhs.true.1022:                               ; preds = %for.body.1016
  %446 = load i32, i32* %pos, align 4
  %idxprom1023 = sext i32 %446 to i64
  %arrayidx1024 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1023
  %447 = load i32, i32* %arrayidx1024, align 4
  %448 = load i32, i32* %best_score, align 4
  %cmp1025 = icmp sgt i32 %447, %448
  br i1 %cmp1025, label %if.then.1027, label %if.end.1030

if.then.1027:                                     ; preds = %land.lhs.true.1022
  %449 = load i32, i32* %pos, align 4
  %idxprom1028 = sext i32 %449 to i64
  %arrayidx1029 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1028
  %450 = load i32, i32* %arrayidx1029, align 4
  store i32 %450, i32* %best_score, align 4
  %451 = load i32, i32* %pos, align 4
  store i32 %451, i32* %move, align 4
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.then.1027, %land.lhs.true.1022, %for.body.1016
  br label %for.inc.1031

for.inc.1031:                                     ; preds = %if.end.1030
  %452 = load i32, i32* %pos, align 4
  %inc1032 = add nsw i32 %452, 1
  store i32 %inc1032, i32* %pos, align 4
  br label %for.cond.1013

for.end.1033:                                     ; preds = %for.cond.1013
  %453 = load i32, i32* %move, align 4
  %cmp1034 = icmp eq i32 %453, 0
  br i1 %cmp1034, label %if.then.1036, label %if.end.1037

if.then.1036:                                     ; preds = %for.end.1033
  br label %while.end.1197

if.end.1037:                                      ; preds = %for.end.1033
  %454 = load i32, i32* %move, align 4
  %idxprom1038 = sext i32 %454 to i64
  %arrayidx1039 = getelementptr inbounds [400 x i32], [400 x i32]* %dragons, i32 0, i64 %idxprom1038
  %455 = load i32, i32* %arrayidx1039, align 4
  store i32 %455, i32* %bb, align 4
  %456 = load i32, i32* %move, align 4
  %457 = load i32, i32* %color.addr, align 4
  %call1040 = call i32 @is_illegal_ko_capture(i32 %456, i32 %457)
  %tobool1041 = icmp ne i32 %call1040, 0
  br i1 %tobool1041, label %if.then.1070, label %lor.lhs.false.1042

lor.lhs.false.1042:                               ; preds = %if.end.1037
  %458 = load i32, i32* %move, align 4
  %459 = load i32, i32* %color.addr, align 4
  %call1043 = call i32 @safe_move(i32 %458, i32 %459)
  %tobool1044 = icmp ne i32 %call1043, 0
  br i1 %tobool1044, label %lor.lhs.false.1045, label %if.then.1070

lor.lhs.false.1045:                               ; preds = %lor.lhs.false.1042
  %460 = load i32, i32* %bb, align 4
  %idxprom1046 = sext i32 %460 to i64
  %arrayidx1047 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1046
  %id1048 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1047, i32 0, i32 1
  %461 = load i32, i32* %id1048, align 4
  %idxprom1049 = sext i32 %461 to i64
  %462 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1050 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %462, i64 %idxprom1049
  %safety1051 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1050, i32 0, i32 6
  %463 = load i32, i32* %safety1051, align 4
  %cmp1052 = icmp ne i32 %463, 9
  br i1 %cmp1052, label %land.lhs.true.1054, label %lor.lhs.false.1067

land.lhs.true.1054:                               ; preds = %lor.lhs.false.1045
  %464 = load i32, i32* %bb, align 4
  %idxprom1055 = sext i32 %464 to i64
  %arrayidx1056 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1055
  %id1057 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1056, i32 0, i32 1
  %465 = load i32, i32* %id1057, align 4
  %idxprom1058 = sext i32 %465 to i64
  %466 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1059 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %466, i64 %idxprom1058
  %safety1060 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1059, i32 0, i32 6
  %467 = load i32, i32* %safety1060, align 4
  %cmp1061 = icmp ne i32 %467, 8
  br i1 %cmp1061, label %land.lhs.true.1063, label %lor.lhs.false.1067

land.lhs.true.1063:                               ; preds = %land.lhs.true.1054
  %468 = load i32, i32* %move, align 4
  %469 = load i32, i32* %bb, align 4
  %call1064 = call i32 @owl_does_defend(i32 %468, i32 %469, i32* null)
  %cmp1065 = icmp ne i32 %call1064, 5
  br i1 %cmp1065, label %if.then.1070, label %lor.lhs.false.1067

lor.lhs.false.1067:                               ; preds = %land.lhs.true.1063, %land.lhs.true.1054, %lor.lhs.false.1045
  %470 = load i32, i32* %move, align 4
  %471 = load i32, i32* %color.addr, align 4
  %call1068 = call i32 @confirm_safety(i32 %470, i32 %471, i32* null, i8* null)
  %tobool1069 = icmp ne i32 %call1068, 0
  br i1 %tobool1069, label %if.else.1073, label %if.then.1070

if.then.1070:                                     ; preds = %lor.lhs.false.1067, %land.lhs.true.1063, %lor.lhs.false.1042, %if.end.1037
  %472 = load i32, i32* %move, align 4
  %idxprom1071 = sext i32 %472 to i64
  %arrayidx1072 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1071
  store i32 0, i32* %arrayidx1072, align 4
  br label %if.end.1196

if.else.1073:                                     ; preds = %lor.lhs.false.1067
  %473 = load i32, i32* %move, align 4
  %474 = load i32, i32* %color.addr, align 4
  %call1075 = call i32 @approxlib(i32 %473, i32 %474, i32 5, i32* null)
  store i32 %call1075, i32* %libs1074, align 4
  store i32 1, i32* %move_ok1076, align 4
  %475 = load i32, i32* %libs1074, align 4
  %cmp1077 = icmp slt i32 %475, 5
  br i1 %cmp1077, label %if.then.1079, label %if.end.1183

if.then.1079:                                     ; preds = %if.else.1073
  store i32 0, i32* %k, align 4
  br label %for.cond.1080

for.cond.1080:                                    ; preds = %for.inc.1101, %if.then.1079
  %476 = load i32, i32* %k, align 4
  %cmp1081 = icmp slt i32 %476, 4
  br i1 %cmp1081, label %for.body.1083, label %for.end.1103

for.body.1083:                                    ; preds = %for.cond.1080
  %477 = load i32, i32* %move, align 4
  %478 = load i32, i32* %k, align 4
  %idxprom1084 = sext i32 %478 to i64
  %arrayidx1085 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1084
  %479 = load i32, i32* %arrayidx1085, align 4
  %add1086 = add nsw i32 %477, %479
  %idxprom1087 = sext i32 %add1086 to i64
  %arrayidx1088 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1087
  %480 = load i8, i8* %arrayidx1088, align 1
  %conv1089 = zext i8 %480 to i32
  %481 = load i32, i32* %color.addr, align 4
  %cmp1090 = icmp eq i32 %conv1089, %481
  br i1 %cmp1090, label %land.lhs.true.1092, label %if.end.1100

land.lhs.true.1092:                               ; preds = %for.body.1083
  %482 = load i32, i32* %move, align 4
  %483 = load i32, i32* %k, align 4
  %idxprom1093 = sext i32 %483 to i64
  %arrayidx1094 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1093
  %484 = load i32, i32* %arrayidx1094, align 4
  %add1095 = add nsw i32 %482, %484
  %call1096 = call i32 @countlib(i32 %add1095)
  %485 = load i32, i32* %libs1074, align 4
  %cmp1097 = icmp sgt i32 %call1096, %485
  br i1 %cmp1097, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %land.lhs.true.1092
  br label %for.end.1103

if.end.1100:                                      ; preds = %land.lhs.true.1092, %for.body.1083
  br label %for.inc.1101

for.inc.1101:                                     ; preds = %if.end.1100
  %486 = load i32, i32* %k, align 4
  %inc1102 = add nsw i32 %486, 1
  store i32 %inc1102, i32* %k, align 4
  br label %for.cond.1080

for.end.1103:                                     ; preds = %if.then.1099, %for.cond.1080
  %487 = load i32, i32* %k, align 4
  %cmp1104 = icmp slt i32 %487, 4
  br i1 %cmp1104, label %if.then.1106, label %if.end.1182

if.then.1106:                                     ; preds = %for.end.1103
  %488 = load i32, i32* %move, align 4
  %489 = load i32, i32* %color.addr, align 4
  %490 = load i32, i32* %move, align 4
  %491 = load i32, i32* %k, align 4
  %idxprom1107 = sext i32 %491 to i64
  %arrayidx1108 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1107
  %492 = load i32, i32* %arrayidx1108, align 4
  %add1109 = add nsw i32 %490, %492
  %call1110 = call i32 @trymove(i32 %488, i32 %489, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %add1109, i32 0, i32 0)
  %tobool1111 = icmp ne i32 %call1110, 0
  br i1 %tobool1111, label %if.then.1112, label %if.end.1181

if.then.1112:                                     ; preds = %if.then.1106
  %493 = load i32, i32* %move, align 4
  %arraydecay1114 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call1115 = call i32 @chainlinks(i32 %493, i32* %arraydecay1114)
  store i32 %call1115, i32* %neighbors, align 4
  store i32 0, i32* %r1113, align 4
  br label %for.cond.1116

for.cond.1116:                                    ; preds = %for.inc.1148, %if.then.1112
  %494 = load i32, i32* %r1113, align 4
  %495 = load i32, i32* %neighbors, align 4
  %cmp1117 = icmp slt i32 %494, %495
  br i1 %cmp1117, label %for.body.1119, label %for.end.1150

for.body.1119:                                    ; preds = %for.cond.1116
  %496 = load i32, i32* %r1113, align 4
  %idxprom1120 = sext i32 %496 to i64
  %arrayidx1121 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1120
  %497 = load i32, i32* %arrayidx1121, align 4
  %idxprom1122 = sext i32 %497 to i64
  %arrayidx1123 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1122
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1123, i32 0, i32 16
  %arrayidx1124 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %498 = load i32, i32* %arrayidx1124, align 4
  %cmp1125 = icmp ne i32 %498, 0
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.end.1147

land.lhs.true.1127:                               ; preds = %for.body.1119
  %499 = load i32, i32* %r1113, align 4
  %idxprom1128 = sext i32 %499 to i64
  %arrayidx1129 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1128
  %500 = load i32, i32* %arrayidx1129, align 4
  %call1130 = call i32 @find_defense(i32 %500, i32* null)
  %501 = load i32, i32* %r1113, align 4
  %idxprom1131 = sext i32 %501 to i64
  %arrayidx1132 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1131
  %502 = load i32, i32* %arrayidx1132, align 4
  %idxprom1133 = sext i32 %502 to i64
  %arrayidx1134 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1133
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1134, i32 0, i32 18
  %arrayidx1135 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %503 = load i32, i32* %arrayidx1135, align 4
  %cmp1136 = icmp sgt i32 %call1130, %503
  br i1 %cmp1136, label %if.then.1138, label %if.end.1147

if.then.1138:                                     ; preds = %land.lhs.true.1127
  %504 = load i32, i32* @debug, align 4
  %and1139 = and i32 %504, 131072
  %tobool1140 = icmp ne i32 %and1139, 0
  br i1 %tobool1140, label %cond.false.1142, label %cond.true.1141

cond.true.1141:                                   ; preds = %if.then.1138
  br label %cond.end.1146

cond.false.1142:                                  ; preds = %if.then.1138
  %505 = load i32, i32* %r1113, align 4
  %idxprom1143 = sext i32 %505 to i64
  %arrayidx1144 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1143
  %506 = load i32, i32* %arrayidx1144, align 4
  %507 = load i32, i32* %move, align 4
  %call1145 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i32 0, i32 0), i32 %506, i32 %507)
  br label %cond.end.1146

cond.end.1146:                                    ; preds = %cond.false.1142, %cond.true.1141
  store i32 0, i32* %move_ok1076, align 4
  br label %if.end.1147

if.end.1147:                                      ; preds = %cond.end.1146, %land.lhs.true.1127, %for.body.1119
  br label %for.inc.1148

for.inc.1148:                                     ; preds = %if.end.1147
  %508 = load i32, i32* %r1113, align 4
  %inc1149 = add nsw i32 %508, 1
  store i32 %inc1149, i32* %r1113, align 4
  br label %for.cond.1116

for.end.1150:                                     ; preds = %for.cond.1116
  call void @popgo()
  store i32 0, i32* %r1113, align 4
  br label %for.cond.1151

for.cond.1151:                                    ; preds = %for.inc.1178, %for.end.1150
  %509 = load i32, i32* %r1113, align 4
  %510 = load i32, i32* %neighbors, align 4
  %cmp1152 = icmp slt i32 %509, %510
  br i1 %cmp1152, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1151
  %511 = load i32, i32* %move_ok1076, align 4
  %tobool1154 = icmp ne i32 %511, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1151
  %512 = phi i1 [ false, %for.cond.1151 ], [ %tobool1154, %land.rhs ]
  br i1 %512, label %for.body.1155, label %for.end.1180

for.body.1155:                                    ; preds = %land.end
  %513 = load i32, i32* %r1113, align 4
  %idxprom1156 = sext i32 %513 to i64
  %arrayidx1157 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1156
  %514 = load i32, i32* %arrayidx1157, align 4
  %idxprom1158 = sext i32 %514 to i64
  %arrayidx1159 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1158
  %status1160 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1159, i32 0, i32 16
  %515 = load i32, i32* %status1160, align 4
  %cmp1161 = icmp eq i32 %515, 0
  br i1 %cmp1161, label %land.lhs.true.1163, label %if.end.1177

land.lhs.true.1163:                               ; preds = %for.body.1155
  %516 = load i32, i32* %move, align 4
  %517 = load i32, i32* %r1113, align 4
  %idxprom1164 = sext i32 %517 to i64
  %arrayidx1165 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1164
  %518 = load i32, i32* %arrayidx1165, align 4
  %call1166 = call i32 @owl_does_attack(i32 %516, i32 %518, i32* null)
  %tobool1167 = icmp ne i32 %call1166, 0
  br i1 %tobool1167, label %if.end.1177, label %if.then.1168

if.then.1168:                                     ; preds = %land.lhs.true.1163
  %519 = load i32, i32* @debug, align 4
  %and1169 = and i32 %519, 131072
  %tobool1170 = icmp ne i32 %and1169, 0
  br i1 %tobool1170, label %cond.false.1172, label %cond.true.1171

cond.true.1171:                                   ; preds = %if.then.1168
  br label %cond.end.1176

cond.false.1172:                                  ; preds = %if.then.1168
  %520 = load i32, i32* %r1113, align 4
  %idxprom1173 = sext i32 %520 to i64
  %arrayidx1174 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom1173
  %521 = load i32, i32* %arrayidx1174, align 4
  %522 = load i32, i32* %move, align 4
  %call1175 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i32 0, i32 0), i32 %521, i32 %522)
  br label %cond.end.1176

cond.end.1176:                                    ; preds = %cond.false.1172, %cond.true.1171
  store i32 0, i32* %move_ok1076, align 4
  br label %if.end.1177

if.end.1177:                                      ; preds = %cond.end.1176, %land.lhs.true.1163, %for.body.1155
  br label %for.inc.1178

for.inc.1178:                                     ; preds = %if.end.1177
  %523 = load i32, i32* %r1113, align 4
  %inc1179 = add nsw i32 %523, 1
  store i32 %inc1179, i32* %r1113, align 4
  br label %for.cond.1151

for.end.1180:                                     ; preds = %land.end
  br label %if.end.1181

if.end.1181:                                      ; preds = %for.end.1180, %if.then.1106
  br label %if.end.1182

if.end.1182:                                      ; preds = %if.end.1181, %for.end.1103
  br label %if.end.1183

if.end.1183:                                      ; preds = %if.end.1182, %if.else.1073
  %524 = load i32, i32* %move_ok1076, align 4
  %tobool1184 = icmp ne i32 %524, 0
  br i1 %tobool1184, label %if.else.1188, label %if.then.1185

if.then.1185:                                     ; preds = %if.end.1183
  %525 = load i32, i32* %move, align 4
  %idxprom1186 = sext i32 %525 to i64
  %arrayidx1187 = getelementptr inbounds [400 x i32], [400 x i32]* %score, i32 0, i64 %idxprom1186
  store i32 0, i32* %arrayidx1187, align 4
  br label %if.end.1195

if.else.1188:                                     ; preds = %if.end.1183
  %526 = load i32, i32* %move, align 4
  %527 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %526, i32* %527, align 4
  %528 = load i32, i32* @debug, align 4
  %and1189 = and i32 %528, 131072
  %tobool1190 = icmp ne i32 %and1189, 0
  br i1 %tobool1190, label %cond.false.1192, label %cond.true.1191

cond.true.1191:                                   ; preds = %if.else.1188
  br label %cond.end.1194

cond.false.1192:                                  ; preds = %if.else.1188
  %529 = load i32, i32* %move, align 4
  %call1193 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), i32 %529)
  br label %cond.end.1194

cond.end.1194:                                    ; preds = %cond.false.1192, %cond.true.1191
  store i32 1, i32* %retval
  br label %return

if.end.1195:                                      ; preds = %if.then.1185
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.end.1195, %if.then.1070
  br label %while.body.1012

while.end.1197:                                   ; preds = %if.then.1036
  store i32 21, i32* %pos, align 4
  br label %for.cond.1198

for.cond.1198:                                    ; preds = %for.inc.1361, %while.end.1197
  %530 = load i32, i32* %pos, align 4
  %cmp1199 = icmp slt i32 %530, 400
  br i1 %cmp1199, label %for.body.1201, label %for.end.1363

for.body.1201:                                    ; preds = %for.cond.1198
  store i32 0, i32* %cc, align 4
  store i32 0, i32* %self_atari_ok, align 4
  %531 = load i32, i32* %pos, align 4
  %idxprom1202 = sext i32 %531 to i64
  %arrayidx1203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1202
  %532 = load i8, i8* %arrayidx1203, align 1
  %conv1204 = zext i8 %532 to i32
  %cmp1205 = icmp ne i32 %conv1204, 0
  br i1 %cmp1205, label %if.then.1212, label %lor.lhs.false.1207

lor.lhs.false.1207:                               ; preds = %for.body.1201
  %533 = load i32, i32* %pos, align 4
  %idxprom1208 = sext i32 %533 to i64
  %arrayidx1209 = getelementptr inbounds [400 x i32], [400 x i32]* %distance, i32 0, i64 %idxprom1208
  %534 = load i32, i32* %arrayidx1209, align 4
  %cmp1210 = icmp ne i32 %534, -1
  br i1 %cmp1210, label %if.then.1212, label %if.end.1213

if.then.1212:                                     ; preds = %lor.lhs.false.1207, %for.body.1201
  br label %for.inc.1361

if.end.1213:                                      ; preds = %lor.lhs.false.1207
  store i32 0, i32* %target, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.1214

for.cond.1214:                                    ; preds = %for.inc.1259, %if.end.1213
  %535 = load i32, i32* %k, align 4
  %cmp1215 = icmp slt i32 %535, 4
  br i1 %cmp1215, label %for.body.1217, label %for.end.1261

for.body.1217:                                    ; preds = %for.cond.1214
  %536 = load i32, i32* %pos, align 4
  %537 = load i32, i32* %k, align 4
  %idxprom1219 = sext i32 %537 to i64
  %arrayidx1220 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1219
  %538 = load i32, i32* %arrayidx1220, align 4
  %add1221 = add nsw i32 %536, %538
  store i32 %add1221, i32* %pos21218, align 4
  %539 = load i32, i32* %pos21218, align 4
  %idxprom1222 = sext i32 %539 to i64
  %arrayidx1223 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1222
  %540 = load i8, i8* %arrayidx1223, align 1
  %conv1224 = zext i8 %540 to i32
  %cmp1225 = icmp ne i32 %conv1224, 3
  br i1 %cmp1225, label %if.end.1228, label %if.then.1227

if.then.1227:                                     ; preds = %for.body.1217
  br label %for.inc.1259

if.end.1228:                                      ; preds = %for.body.1217
  %541 = load i32, i32* %pos21218, align 4
  %idxprom1229 = sext i32 %541 to i64
  %arrayidx1230 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1229
  %542 = load i8, i8* %arrayidx1230, align 1
  %conv1231 = zext i8 %542 to i32
  %543 = load i32, i32* %other, align 4
  %cmp1232 = icmp eq i32 %conv1231, %543
  br i1 %cmp1232, label %land.lhs.true.1234, label %if.end.1258

land.lhs.true.1234:                               ; preds = %if.end.1228
  %544 = load i32, i32* %pos21218, align 4
  %idxprom1235 = sext i32 %544 to i64
  %arrayidx1236 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1235
  %status1237 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1236, i32 0, i32 16
  %545 = load i32, i32* %status1237, align 4
  %cmp1238 = icmp ne i32 %545, 1
  br i1 %cmp1238, label %land.lhs.true.1240, label %if.end.1258

land.lhs.true.1240:                               ; preds = %land.lhs.true.1234
  %546 = load i32, i32* %do_capture_dead_stones.addr, align 4
  %tobool1241 = icmp ne i32 %546, 0
  br i1 %tobool1241, label %land.lhs.true.1248, label %lor.lhs.false.1242

lor.lhs.false.1242:                               ; preds = %land.lhs.true.1240
  %547 = load i32, i32* %pos21218, align 4
  %idxprom1243 = sext i32 %547 to i64
  %arrayidx1244 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1243
  %unconditional_status1245 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1244, i32 0, i32 14
  %548 = load i32, i32* %unconditional_status1245, align 4
  %cmp1246 = icmp ne i32 %548, 0
  br i1 %cmp1246, label %land.lhs.true.1248, label %if.end.1258

land.lhs.true.1248:                               ; preds = %lor.lhs.false.1242, %land.lhs.true.1240
  %549 = load i32, i32* %pos21218, align 4
  %idxprom1249 = sext i32 %549 to i64
  %arrayidx1250 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1249
  %id1251 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1250, i32 0, i32 1
  %550 = load i32, i32* %id1251, align 4
  %idxprom1252 = sext i32 %550 to i64
  %551 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1253 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %551, i64 %idxprom1252
  %safety1254 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1253, i32 0, i32 6
  %552 = load i32, i32* %safety1254, align 4
  %cmp1255 = icmp ne i32 %552, 5
  br i1 %cmp1255, label %if.then.1257, label %if.end.1258

if.then.1257:                                     ; preds = %land.lhs.true.1248
  %553 = load i32, i32* %pos21218, align 4
  store i32 %553, i32* %target, align 4
  br label %for.end.1261

if.end.1258:                                      ; preds = %land.lhs.true.1248, %lor.lhs.false.1242, %land.lhs.true.1234, %if.end.1228
  br label %for.inc.1259

for.inc.1259:                                     ; preds = %if.end.1258, %if.then.1227
  %554 = load i32, i32* %k, align 4
  %inc1260 = add nsw i32 %554, 1
  store i32 %inc1260, i32* %k, align 4
  br label %for.cond.1214

for.end.1261:                                     ; preds = %if.then.1257, %for.cond.1214
  %555 = load i32, i32* %target, align 4
  %cmp1262 = icmp eq i32 %555, 0
  br i1 %cmp1262, label %if.then.1264, label %if.end.1265

if.then.1264:                                     ; preds = %for.end.1261
  br label %for.inc.1361

if.end.1265:                                      ; preds = %for.end.1261
  %556 = load i32, i32* %pos, align 4
  %557 = load i32, i32* %color.addr, align 4
  %558 = load i32, i32* %target, align 4
  %call1266 = call i32 @trymove(i32 %556, i32 %557, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %558, i32 0, i32 0)
  %tobool1267 = icmp ne i32 %call1266, 0
  br i1 %tobool1267, label %if.end.1269, label %if.then.1268

if.then.1268:                                     ; preds = %if.end.1265
  br label %for.inc.1361

if.end.1269:                                      ; preds = %if.end.1265
  store i32 1, i32* %self_atari_ok, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.1270

for.cond.1270:                                    ; preds = %for.inc.1299, %if.end.1269
  %559 = load i32, i32* %k, align 4
  %cmp1271 = icmp slt i32 %559, 4
  br i1 %cmp1271, label %for.body.1273, label %for.end.1301

for.body.1273:                                    ; preds = %for.cond.1270
  %560 = load i32, i32* %pos, align 4
  %561 = load i32, i32* %k, align 4
  %idxprom1274 = sext i32 %561 to i64
  %arrayidx1275 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1274
  %562 = load i32, i32* %arrayidx1275, align 4
  %add1276 = add nsw i32 %560, %562
  %idxprom1277 = sext i32 %add1276 to i64
  %arrayidx1278 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1277
  %563 = load i8, i8* %arrayidx1278, align 1
  %conv1279 = zext i8 %563 to i32
  %564 = load i32, i32* %color.addr, align 4
  %cmp1280 = icmp eq i32 %conv1279, %564
  br i1 %cmp1280, label %land.lhs.true.1282, label %if.end.1298

land.lhs.true.1282:                               ; preds = %for.body.1273
  %565 = load i32, i32* %pos, align 4
  %566 = load i32, i32* %k, align 4
  %idxprom1283 = sext i32 %566 to i64
  %arrayidx1284 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1283
  %567 = load i32, i32* %arrayidx1284, align 4
  %add1285 = add nsw i32 %565, %567
  %idxprom1286 = sext i32 %add1285 to i64
  %arrayidx1287 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1286
  %id1288 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1287, i32 0, i32 1
  %568 = load i32, i32* %id1288, align 4
  %idxprom1289 = sext i32 %568 to i64
  %569 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1290 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %569, i64 %idxprom1289
  %safety1291 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1290, i32 0, i32 6
  %570 = load i32, i32* %safety1291, align 4
  %cmp1292 = icmp ne i32 %570, 5
  br i1 %cmp1292, label %if.then.1294, label %if.end.1298

if.then.1294:                                     ; preds = %land.lhs.true.1282
  store i32 0, i32* %self_atari_ok, align 4
  %571 = load i32, i32* %pos, align 4
  %572 = load i32, i32* %k, align 4
  %idxprom1295 = sext i32 %572 to i64
  %arrayidx1296 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom1295
  %573 = load i32, i32* %arrayidx1296, align 4
  %add1297 = add nsw i32 %571, %573
  store i32 %add1297, i32* %cc, align 4
  br label %for.end.1301

if.end.1298:                                      ; preds = %land.lhs.true.1282, %for.body.1273
  br label %for.inc.1299

for.inc.1299:                                     ; preds = %if.end.1298
  %574 = load i32, i32* %k, align 4
  %inc1300 = add nsw i32 %574, 1
  store i32 %inc1300, i32* %k, align 4
  br label %for.cond.1270

for.end.1301:                                     ; preds = %if.then.1294, %for.cond.1270
  %575 = load i32, i32* %pos, align 4
  store i32 %575, i32* %move, align 4
  %576 = load i32, i32* %self_atari_ok, align 4
  %tobool1302 = icmp ne i32 %576, 0
  br i1 %tobool1302, label %if.end.1321, label %if.then.1303

if.then.1303:                                     ; preds = %for.end.1301
  br label %while.cond.1304

while.cond.1304:                                  ; preds = %if.end.1314, %if.then.1303
  %577 = load i32, i32* %pos, align 4
  %call1305 = call i32 @countlib(i32 %577)
  %cmp1306 = icmp eq i32 %call1305, 1
  br i1 %cmp1306, label %while.body.1308, label %while.end.1315

while.body.1308:                                  ; preds = %while.cond.1304
  %578 = load i32, i32* %pos, align 4
  %call1310 = call i32 @findlib(i32 %578, i32 1, i32* %lib1309)
  %579 = load i32, i32* %lib1309, align 4
  store i32 %579, i32* %move, align 4
  %580 = load i32, i32* %move, align 4
  %581 = load i32, i32* %color.addr, align 4
  %582 = load i32, i32* %target, align 4
  %call1311 = call i32 @trymove(i32 %580, i32 %581, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 %582, i32 0, i32 0)
  %tobool1312 = icmp ne i32 %call1311, 0
  br i1 %tobool1312, label %if.end.1314, label %if.then.1313

if.then.1313:                                     ; preds = %while.body.1308
  br label %while.end.1315

if.end.1314:                                      ; preds = %while.body.1308
  br label %while.cond.1304

while.end.1315:                                   ; preds = %if.then.1313, %while.cond.1304
  %583 = load i32, i32* %pos, align 4
  %call1316 = call i32 @countlib(i32 %583)
  %cmp1317 = icmp eq i32 %call1316, 1
  br i1 %cmp1317, label %if.then.1319, label %if.end.1320

if.then.1319:                                     ; preds = %while.end.1315
  store i32 0, i32* %move, align 4
  br label %if.end.1320

if.end.1320:                                      ; preds = %if.then.1319, %while.end.1315
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.end.1320, %for.end.1301
  br label %while.cond.1322

while.cond.1322:                                  ; preds = %while.body.1325, %if.end.1321
  %584 = load i32, i32* @stackp, align 4
  %cmp1323 = icmp sgt i32 %584, 0
  br i1 %cmp1323, label %while.body.1325, label %while.end.1326

while.body.1325:                                  ; preds = %while.cond.1322
  call void @popgo()
  br label %while.cond.1322

while.end.1326:                                   ; preds = %while.cond.1322
  %585 = load i32, i32* %move, align 4
  %cmp1327 = icmp eq i32 %585, 0
  br i1 %cmp1327, label %if.then.1329, label %if.end.1330

if.then.1329:                                     ; preds = %while.end.1326
  br label %for.inc.1361

if.end.1330:                                      ; preds = %while.end.1326
  %586 = load i32, i32* %self_atari_ok, align 4
  %tobool1331 = icmp ne i32 %586, 0
  br i1 %tobool1331, label %if.end.1336, label %land.lhs.true.1332

land.lhs.true.1332:                               ; preds = %if.end.1330
  %587 = load i32, i32* %move, align 4
  %588 = load i32, i32* %color.addr, align 4
  %call1333 = call i32 @is_self_atari(i32 %587, i32 %588)
  %tobool1334 = icmp ne i32 %call1333, 0
  br i1 %tobool1334, label %if.then.1335, label %if.end.1336

if.then.1335:                                     ; preds = %land.lhs.true.1332
  br label %for.inc.1361

if.end.1336:                                      ; preds = %land.lhs.true.1332, %if.end.1330
  %589 = load i32, i32* %move, align 4
  %590 = load i32, i32* %target, align 4
  %call1337 = call i32 @owl_does_attack(i32 %589, i32 %590, i32* null)
  %cmp1338 = icmp eq i32 %call1337, 5
  br i1 %cmp1338, label %if.then.1340, label %if.end.1360

if.then.1340:                                     ; preds = %if.end.1336
  %591 = load i32, i32* %cc, align 4
  %cmp1341 = icmp ne i32 %591, 0
  br i1 %cmp1341, label %land.lhs.true.1343, label %if.end.1347

land.lhs.true.1343:                               ; preds = %if.then.1340
  %592 = load i32, i32* %move, align 4
  %593 = load i32, i32* %cc, align 4
  %call1344 = call i32 @owl_does_defend(i32 %592, i32 %593, i32* null)
  %tobool1345 = icmp ne i32 %call1344, 0
  br i1 %tobool1345, label %if.end.1347, label %if.then.1346

if.then.1346:                                     ; preds = %land.lhs.true.1343
  br label %for.inc.1361

if.end.1347:                                      ; preds = %land.lhs.true.1343, %if.then.1340
  %594 = load i32, i32* %self_atari_ok, align 4
  %tobool1348 = icmp ne i32 %594, 0
  br i1 %tobool1348, label %if.end.1353, label %land.lhs.true.1349

land.lhs.true.1349:                               ; preds = %if.end.1347
  %595 = load i32, i32* %move, align 4
  %596 = load i32, i32* %color.addr, align 4
  %call1350 = call i32 @confirm_safety(i32 %595, i32 %596, i32* null, i8* null)
  %tobool1351 = icmp ne i32 %call1350, 0
  br i1 %tobool1351, label %if.end.1353, label %if.then.1352

if.then.1352:                                     ; preds = %land.lhs.true.1349
  br label %for.inc.1361

if.end.1353:                                      ; preds = %land.lhs.true.1349, %if.end.1347
  %597 = load i32, i32* %move, align 4
  %598 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %597, i32* %598, align 4
  %599 = load i32, i32* @debug, align 4
  %and1354 = and i32 %599, 131072
  %tobool1355 = icmp ne i32 %and1354, 0
  br i1 %tobool1355, label %cond.false.1357, label %cond.true.1356

cond.true.1356:                                   ; preds = %if.end.1353
  br label %cond.end.1359

cond.false.1357:                                  ; preds = %if.end.1353
  %600 = load i32, i32* %move, align 4
  %call1358 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i32 0, i32 0), i32 %600)
  br label %cond.end.1359

cond.end.1359:                                    ; preds = %cond.false.1357, %cond.true.1356
  store i32 1, i32* %retval
  br label %return

if.end.1360:                                      ; preds = %if.end.1336
  br label %for.inc.1361

for.inc.1361:                                     ; preds = %if.end.1360, %if.then.1352, %if.then.1346, %if.then.1335, %if.then.1329, %if.then.1268, %if.then.1264, %if.then.1212
  %601 = load i32, i32* %pos, align 4
  %inc1362 = add nsw i32 %601, 1
  store i32 %inc1362, i32* %pos, align 4
  br label %for.cond.1198

for.end.1363:                                     ; preds = %for.cond.1198
  store i32 21, i32* %pos, align 4
  br label %for.cond.1364

for.cond.1364:                                    ; preds = %for.inc.1424, %for.end.1363
  %602 = load i32, i32* %pos, align 4
  %cmp1365 = icmp slt i32 %602, 400
  br i1 %cmp1365, label %for.body.1367, label %for.end.1426

for.body.1367:                                    ; preds = %for.cond.1364
  %603 = load i32, i32* %pos, align 4
  %idxprom1368 = sext i32 %603 to i64
  %arrayidx1369 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1368
  %604 = load i8, i8* %arrayidx1369, align 1
  %conv1370 = zext i8 %604 to i32
  %605 = load i32, i32* %other, align 4
  %cmp1371 = icmp eq i32 %conv1370, %605
  br i1 %cmp1371, label %land.lhs.true.1373, label %if.end.1423

land.lhs.true.1373:                               ; preds = %for.body.1367
  %606 = load i32, i32* %pos, align 4
  %idxprom1374 = sext i32 %606 to i64
  %arrayidx1375 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1374
  %unconditional_status1376 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1375, i32 0, i32 14
  %607 = load i32, i32* %unconditional_status1376, align 4
  %cmp1377 = icmp eq i32 %607, 3
  br i1 %cmp1377, label %land.lhs.true.1381, label %lor.lhs.false.1379

lor.lhs.false.1379:                               ; preds = %land.lhs.true.1373
  %608 = load i32, i32* %do_capture_dead_stones.addr, align 4
  %tobool1380 = icmp ne i32 %608, 0
  br i1 %tobool1380, label %land.lhs.true.1381, label %if.end.1423

land.lhs.true.1381:                               ; preds = %lor.lhs.false.1379, %land.lhs.true.1373
  %609 = load i32, i32* %pos, align 4
  %idxprom1382 = sext i32 %609 to i64
  %arrayidx1383 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1382
  %id1384 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1383, i32 0, i32 1
  %610 = load i32, i32* %id1384, align 4
  %idxprom1385 = sext i32 %610 to i64
  %611 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1386 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %611, i64 %idxprom1385
  %safety1387 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1386, i32 0, i32 6
  %612 = load i32, i32* %safety1387, align 4
  %cmp1388 = icmp eq i32 %612, 0
  br i1 %cmp1388, label %land.lhs.true.1399, label %lor.lhs.false.1390

lor.lhs.false.1390:                               ; preds = %land.lhs.true.1381
  %613 = load i32, i32* %pos, align 4
  %idxprom1391 = sext i32 %613 to i64
  %arrayidx1392 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1391
  %id1393 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx1392, i32 0, i32 1
  %614 = load i32, i32* %id1393, align 4
  %idxprom1394 = sext i32 %614 to i64
  %615 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx1395 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %615, i64 %idxprom1394
  %safety1396 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx1395, i32 0, i32 6
  %616 = load i32, i32* %safety1396, align 4
  %cmp1397 = icmp eq i32 %616, 6
  br i1 %cmp1397, label %land.lhs.true.1399, label %if.end.1423

land.lhs.true.1399:                               ; preds = %lor.lhs.false.1390, %land.lhs.true.1381
  %617 = load i32, i32* %pos, align 4
  %idxprom1400 = sext i32 %617 to i64
  %arrayidx1401 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1400
  %attack_codes1402 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1401, i32 0, i32 16
  %arrayidx1403 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes1402, i32 0, i64 0
  %618 = load i32, i32* %arrayidx1403, align 4
  %cmp1404 = icmp ne i32 %618, 0
  br i1 %cmp1404, label %land.lhs.true.1406, label %if.end.1423

land.lhs.true.1406:                               ; preds = %land.lhs.true.1399
  %619 = load i32, i32* %pos, align 4
  %idxprom1407 = sext i32 %619 to i64
  %arrayidx1408 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1407
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1408, i32 0, i32 15
  %arrayidx1409 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %620 = load i32, i32* %arrayidx1409, align 4
  %621 = load i32, i32* %color.addr, align 4
  %call1410 = call i32 @is_illegal_ko_capture(i32 %620, i32 %621)
  %tobool1411 = icmp ne i32 %call1410, 0
  br i1 %tobool1411, label %if.end.1423, label %if.then.1412

if.then.1412:                                     ; preds = %land.lhs.true.1406
  %622 = load i32, i32* %pos, align 4
  %idxprom1413 = sext i32 %622 to i64
  %arrayidx1414 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1413
  %attack_points1415 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx1414, i32 0, i32 15
  %arrayidx1416 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points1415, i32 0, i64 0
  %623 = load i32, i32* %arrayidx1416, align 4
  %624 = load i32*, i32** %aftermath_move.addr, align 8
  store i32 %623, i32* %624, align 4
  %625 = load i32, i32* @debug, align 4
  %and1417 = and i32 %625, 131072
  %tobool1418 = icmp ne i32 %and1417, 0
  br i1 %tobool1418, label %cond.false.1420, label %cond.true.1419

cond.true.1419:                                   ; preds = %if.then.1412
  br label %cond.end.1422

cond.false.1420:                                  ; preds = %if.then.1412
  %626 = load i32, i32* %pos, align 4
  %627 = load i32*, i32** %aftermath_move.addr, align 8
  %628 = load i32, i32* %627, align 4
  %call1421 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i32 %626, i32 %628)
  br label %cond.end.1422

cond.end.1422:                                    ; preds = %cond.false.1420, %cond.true.1419
  store i32 1, i32* %retval
  br label %return

if.end.1423:                                      ; preds = %land.lhs.true.1406, %land.lhs.true.1399, %lor.lhs.false.1390, %lor.lhs.false.1379, %for.body.1367
  br label %for.inc.1424

for.inc.1424:                                     ; preds = %if.end.1423
  %629 = load i32, i32* %pos, align 4
  %inc1425 = add nsw i32 %629, 1
  store i32 %inc1425, i32* %pos, align 4
  br label %for.cond.1364

for.end.1426:                                     ; preds = %for.cond.1364
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.1426, %cond.end.1422, %cond.end.1359, %cond.end.1194, %while.end, %if.then.470, %cond.end
  %630 = load i32, i32* %retval
  ret i32 %630
}

declare void @owl_hotspots(float*) #1

declare void @reading_hotspots(float*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @gprintf(i8*, ...) #1

declare i32 @approxlib(i32, i32, i32, i32*) #1

declare i32 @is_self_atari(i32, i32) #1

declare i32 @countlib(i32) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @findlib(i32, i32, i32*) #1

declare i32 @countstones(i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @mark_string(i32, i8*, i8 signext) #1

declare i32 @is_suicide(i32, i32) #1

declare i32 @is_ko(i32, i32, i32*) #1

declare i32 @is_illegal_ko_capture(i32, i32) #1

declare i32 @owl_does_defend(i32, i32, i32*) #1

declare i32 @confirm_safety(i32, i32, i32*, i8*) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @chainlinks(i32, i32*) #1

declare i32 @find_defense(i32, i32*) #1

declare void @popgo() #1

declare i32 @owl_does_attack(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define float @aftermath_compute_score(i32 %color, float %komi, %struct.SGFTree_t* %tree) #0 {
entry:
  %retval = alloca float, align 4
  %color.addr = alloca i32, align 4
  %komi.addr = alloca float, align 4
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %a = alloca %struct.aftermath_data*, align 8
  store i32 %color, i32* %color.addr, align 4
  store float %komi, float* %komi.addr, align 4
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.aftermath_data* @aftermath, %struct.aftermath_data** %a, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %1 = load i32, i32* %color.addr, align 4
  call void @play_aftermath(i32 %1)
  %2 = load i32, i32* @chinese_rules, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_area = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %3, i32 0, i32 6
  %4 = load i32, i32* %white_area, align 4
  %5 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_area = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %5, i32 0, i32 7
  %6 = load i32, i32* %black_area, align 4
  %sub = sub nsw i32 %4, %6
  %conv = sitofp i32 %sub to float
  %7 = load float, float* %komi.addr, align 4
  %add = fadd float %conv, %7
  store float %add, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_territory = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %8, i32 0, i32 4
  %9 = load i32, i32* %white_territory, align 4
  %10 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_captured = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %10, i32 0, i32 1
  %11 = load i32, i32* %black_captured, align 4
  %add1 = add nsw i32 %9, %11
  %12 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_prisoners = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %12, i32 0, i32 3
  %13 = load i32, i32* %black_prisoners, align 4
  %add2 = add nsw i32 %add1, %13
  %14 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_territory = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %14, i32 0, i32 5
  %15 = load i32, i32* %black_territory, align 4
  %16 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_captured = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %16, i32 0, i32 0
  %17 = load i32, i32* %white_captured, align 4
  %add3 = add nsw i32 %15, %17
  %18 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_prisoners = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %18, i32 0, i32 2
  %19 = load i32, i32* %white_prisoners, align 4
  %add4 = add nsw i32 %add3, %19
  %sub5 = sub nsw i32 %add2, %add4
  %conv6 = sitofp i32 %sub5 to float
  %20 = load float, float* %komi.addr, align 4
  %add7 = fadd float %conv6, %20
  store float %add7, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %21 = load float, float* %retval
  ret float %21
}

; Function Attrs: nounwind uwtable
define internal void @play_aftermath(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %saved_board = alloca %struct.board_state, align 4
  %a = alloca %struct.aftermath_data*, align 8
  %cached_board = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.aftermath_data* @aftermath, %struct.aftermath_data** %a, align 8
  store i32 1, i32* %cached_board, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 927, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* @play_aftermath.current_color, align 4
  %3 = load i32, i32* %color.addr, align 4
  %cmp2 = icmp ne i32 %2, %3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %color.addr, align 4
  store i32 %4, i32* @play_aftermath.current_color, align 4
  store i32 0, i32* %cached_board, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load i32, i32* %pos, align 4
  %cmp5 = icmp slt i32 %5, 400
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv, 3
  br i1 %cmp6, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* @play_aftermath.current_board, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %conv10, %11
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %13 to i32
  %14 = load i32, i32* %pos, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [400 x i32], [400 x i32]* @play_aftermath.current_board, i32 0, i64 %idxprom19
  store i32 %conv18, i32* %arrayidx20, align 4
  store i32 0, i32* %cached_board, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %15 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %cached_board, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end
  br label %if.end.158

if.end.23:                                        ; preds = %for.end
  %17 = load i32, i32* @white_captured, align 4
  %18 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_captured = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %18, i32 0, i32 0
  store i32 %17, i32* %white_captured, align 4
  %19 = load i32, i32* @black_captured, align 4
  %20 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_captured = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %20, i32 0, i32 1
  store i32 %19, i32* %black_captured, align 4
  %21 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_prisoners = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %21, i32 0, i32 2
  store i32 0, i32* %white_prisoners, align 4
  %22 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_prisoners = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %22, i32 0, i32 3
  store i32 0, i32* %black_prisoners, align 4
  %23 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_territory = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %23, i32 0, i32 4
  store i32 0, i32* %white_territory, align 4
  %24 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_territory = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %24, i32 0, i32 5
  store i32 0, i32* %black_territory, align 4
  %25 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_area = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %25, i32 0, i32 6
  store i32 0, i32* %white_area, align 4
  %26 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_area = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %26, i32 0, i32 7
  store i32 0, i32* %black_area, align 4
  call void @store_board(%struct.board_state* %saved_board)
  %27 = load i32, i32* %color.addr, align 4
  %28 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  call void @do_play_aftermath(i32 %27, %struct.aftermath_data* %28)
  call void @restore_board(%struct.board_state* %saved_board)
  store i32 21, i32* %pos, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.138, %if.end.23
  %29 = load i32, i32* %pos, align 4
  %cmp25 = icmp slt i32 %29, 400
  br i1 %cmp25, label %for.body.27, label %for.end.140

for.body.27:                                      ; preds = %for.cond.24
  %30 = load i32, i32* %pos, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %31 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %31 to i32
  %cmp31 = icmp ne i32 %conv30, 3
  br i1 %cmp31, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %for.body.27
  br label %for.inc.138

if.end.34:                                        ; preds = %for.body.27
  %32 = load i32, i32* %pos, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_control = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %33, i32 0, i32 9
  %arrayidx36 = getelementptr inbounds [400 x i32], [400 x i32]* %black_control, i32 0, i64 %idxprom35
  %34 = load i32, i32* %arrayidx36, align 4
  %tobool37 = icmp ne i32 %34, 0
  br i1 %tobool37, label %if.then.38, label %if.else.71

if.then.38:                                       ; preds = %if.end.34
  %35 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_area39 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %35, i32 0, i32 7
  %36 = load i32, i32* %black_area39, align 4
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, i32* %black_area39, align 4
  %37 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %38 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %38 to i32
  %cmp44 = icmp eq i32 %conv43, 1
  br i1 %cmp44, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %if.then.38
  %39 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_territory47 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %39, i32 0, i32 5
  %40 = load i32, i32* %black_territory47, align 4
  %inc48 = add nsw i32 %40, 1
  store i32 %inc48, i32* %black_territory47, align 4
  %41 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_prisoners49 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %41, i32 0, i32 2
  %42 = load i32, i32* %white_prisoners49, align 4
  %inc50 = add nsw i32 %42, 1
  store i32 %inc50, i32* %white_prisoners49, align 4
  %43 = load i32, i32* %pos, align 4
  %idxprom51 = sext i32 %43 to i64
  %44 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %44, i32 0, i32 10
  %arrayidx52 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status, i32 0, i64 %idxprom51
  store i32 0, i32* %arrayidx52, align 4
  br label %if.end.70

if.else.53:                                       ; preds = %if.then.38
  %45 = load i32, i32* %pos, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %46 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %46 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.65

if.then.59:                                       ; preds = %if.else.53
  %47 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_territory60 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %47, i32 0, i32 5
  %48 = load i32, i32* %black_territory60, align 4
  %inc61 = add nsw i32 %48, 1
  store i32 %inc61, i32* %black_territory60, align 4
  %49 = load i32, i32* %pos, align 4
  %idxprom62 = sext i32 %49 to i64
  %50 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status63 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %50, i32 0, i32 10
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status63, i32 0, i64 %idxprom62
  store i32 13, i32* %arrayidx64, align 4
  br label %if.end.69

if.else.65:                                       ; preds = %if.else.53
  %51 = load i32, i32* %pos, align 4
  %idxprom66 = sext i32 %51 to i64
  %52 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status67 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %52, i32 0, i32 10
  %arrayidx68 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status67, i32 0, i64 %idxprom66
  store i32 1, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.65, %if.then.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.46
  br label %if.end.137

if.else.71:                                       ; preds = %if.end.34
  %53 = load i32, i32* %pos, align 4
  %idxprom72 = sext i32 %53 to i64
  %54 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_control = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %54, i32 0, i32 8
  %arrayidx73 = getelementptr inbounds [400 x i32], [400 x i32]* %white_control, i32 0, i64 %idxprom72
  %55 = load i32, i32* %arrayidx73, align 4
  %tobool74 = icmp ne i32 %55, 0
  br i1 %tobool74, label %if.then.75, label %if.else.109

if.then.75:                                       ; preds = %if.else.71
  %56 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_area76 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %56, i32 0, i32 6
  %57 = load i32, i32* %white_area76, align 4
  %inc77 = add nsw i32 %57, 1
  store i32 %inc77, i32* %white_area76, align 4
  %58 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %58 to i64
  %arrayidx79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom78
  %59 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %59 to i32
  %cmp81 = icmp eq i32 %conv80, 2
  br i1 %cmp81, label %if.then.83, label %if.else.91

if.then.83:                                       ; preds = %if.then.75
  %60 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_territory84 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %60, i32 0, i32 4
  %61 = load i32, i32* %white_territory84, align 4
  %inc85 = add nsw i32 %61, 1
  store i32 %inc85, i32* %white_territory84, align 4
  %62 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_prisoners86 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %62, i32 0, i32 3
  %63 = load i32, i32* %black_prisoners86, align 4
  %inc87 = add nsw i32 %63, 1
  store i32 %inc87, i32* %black_prisoners86, align 4
  %64 = load i32, i32* %pos, align 4
  %idxprom88 = sext i32 %64 to i64
  %65 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status89 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %65, i32 0, i32 10
  %arrayidx90 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status89, i32 0, i64 %idxprom88
  store i32 0, i32* %arrayidx90, align 4
  br label %if.end.108

if.else.91:                                       ; preds = %if.then.75
  %66 = load i32, i32* %pos, align 4
  %idxprom92 = sext i32 %66 to i64
  %arrayidx93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom92
  %67 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %67 to i32
  %cmp95 = icmp eq i32 %conv94, 0
  br i1 %cmp95, label %if.then.97, label %if.else.103

if.then.97:                                       ; preds = %if.else.91
  %68 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_territory98 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %68, i32 0, i32 4
  %69 = load i32, i32* %white_territory98, align 4
  %inc99 = add nsw i32 %69, 1
  store i32 %inc99, i32* %white_territory98, align 4
  %70 = load i32, i32* %pos, align 4
  %idxprom100 = sext i32 %70 to i64
  %71 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status101 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %71, i32 0, i32 10
  %arrayidx102 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status101, i32 0, i64 %idxprom100
  store i32 14, i32* %arrayidx102, align 4
  br label %if.end.107

if.else.103:                                      ; preds = %if.else.91
  %72 = load i32, i32* %pos, align 4
  %idxprom104 = sext i32 %72 to i64
  %73 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status105 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %73, i32 0, i32 10
  %arrayidx106 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status105, i32 0, i64 %idxprom104
  store i32 1, i32* %arrayidx106, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.103, %if.then.97
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.83
  br label %if.end.136

if.else.109:                                      ; preds = %if.else.71
  %74 = load i32, i32* %pos, align 4
  %idxprom110 = sext i32 %74 to i64
  %arrayidx111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom110
  %75 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %75 to i32
  %cmp113 = icmp eq i32 %conv112, 0
  br i1 %cmp113, label %if.then.115, label %if.else.119

if.then.115:                                      ; preds = %if.else.109
  %76 = load i32, i32* %pos, align 4
  %idxprom116 = sext i32 %76 to i64
  %77 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status117 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %77, i32 0, i32 10
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status117, i32 0, i64 %idxprom116
  store i32 15, i32* %arrayidx118, align 4
  br label %if.end.135

if.else.119:                                      ; preds = %if.else.109
  %78 = load i32, i32* %pos, align 4
  %idxprom120 = sext i32 %78 to i64
  %79 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %final_status121 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %79, i32 0, i32 10
  %arrayidx122 = getelementptr inbounds [400 x i32], [400 x i32]* %final_status121, i32 0, i64 %idxprom120
  store i32 7, i32* %arrayidx122, align 4
  %80 = load i32, i32* %pos, align 4
  %idxprom123 = sext i32 %80 to i64
  %arrayidx124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom123
  %81 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %81 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %if.else.119
  %82 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_area129 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %82, i32 0, i32 6
  %83 = load i32, i32* %white_area129, align 4
  %inc130 = add nsw i32 %83, 1
  store i32 %inc130, i32* %white_area129, align 4
  br label %if.end.134

if.else.131:                                      ; preds = %if.else.119
  %84 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_area132 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %84, i32 0, i32 7
  %85 = load i32, i32* %black_area132, align 4
  %inc133 = add nsw i32 %85, 1
  store i32 %inc133, i32* %black_area132, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.128
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.115
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.108
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.70
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137, %if.then.33
  %86 = load i32, i32* %pos, align 4
  %inc139 = add nsw i32 %86, 1
  store i32 %inc139, i32* %pos, align 4
  br label %for.cond.24

for.end.140:                                      ; preds = %for.cond.24
  %87 = load i32, i32* @debug, align 4
  %and = and i32 %87, 131072
  %tobool141 = icmp ne i32 %and, 0
  br i1 %tobool141, label %if.then.142, label %if.end.158

if.then.142:                                      ; preds = %for.end.140
  %88 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_captured143 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %88, i32 0, i32 0
  %89 = load i32, i32* %white_captured143, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 %89)
  %90 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_captured144 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %90, i32 0, i32 1
  %91 = load i32, i32* %black_captured144, align 4
  %call145 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 %91)
  %92 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_prisoners146 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %92, i32 0, i32 2
  %93 = load i32, i32* %white_prisoners146, align 4
  %call147 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), i32 %93)
  %94 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_prisoners148 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %94, i32 0, i32 3
  %95 = load i32, i32* %black_prisoners148, align 4
  %call149 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %95)
  %96 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_territory150 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %96, i32 0, i32 4
  %97 = load i32, i32* %white_territory150, align 4
  %call151 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 %97)
  %98 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_territory152 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %98, i32 0, i32 5
  %99 = load i32, i32* %black_territory152, align 4
  %call153 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i32 %99)
  %100 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %white_area154 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %100, i32 0, i32 6
  %101 = load i32, i32* %white_area154, align 4
  %call155 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %101)
  %102 = load %struct.aftermath_data*, %struct.aftermath_data** %a, align 8
  %black_area156 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %102, i32 0, i32 7
  %103 = load i32, i32* %black_area156, align 4
  %call157 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %103)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.22, %if.then.142, %for.end.140
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @aftermath_final_status(i32 %color, i32 %pos) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 1043, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %5 = load i32, i32* %color.addr, align 4
  call void @play_aftermath(i32 %5)
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* getelementptr inbounds (%struct.aftermath_data, %struct.aftermath_data* @aftermath, i32 0, i32 10), i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  ret i32 %7
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare void @store_board(%struct.board_state*) #1

; Function Attrs: nounwind uwtable
define internal void @do_play_aftermath(i32 %color, %struct.aftermath_data* %a) #0 {
entry:
  %color.addr = alloca i32, align 4
  %a.addr = alloca %struct.aftermath_data*, align 8
  %move = alloca i32, align 4
  %pass = alloca i32, align 4
  %moves = alloca i32, align 4
  %color_to_play = alloca i32, align 4
  %reading_nodes = alloca i32, align 4
  %owl_nodes = alloca i32, align 4
  %move_val = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.aftermath_data* %a, %struct.aftermath_data** %a.addr, align 8
  store i32 0, i32* %pass, align 4
  store i32 0, i32* %moves, align 4
  %0 = load i32, i32* %color.addr, align 4
  store i32 %0, i32* %color_to_play, align 4
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 131072
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* @disable_threat_computation, align 4
  store i32 1, i32* @disable_endgame_patterns, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %cond.end
  %2 = load i32, i32* %pass, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %moves, align 4
  %4 = load i32, i32* @board_size, align 4
  %5 = load i32, i32* @board_size, align 4
  %mul = mul nsw i32 %4, %5
  %cmp1 = icmp slt i32 %3, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call2 = call i32 @get_reading_node_counter()
  store i32 %call2, i32* %reading_nodes, align 4
  %call3 = call i32 @get_owl_node_counter()
  store i32 %call3, i32* %owl_nodes, align 4
  %7 = load i32, i32* %color_to_play, align 4
  %call4 = call i32 @reduced_genmove(i32* %move, i32 %7)
  store i32 %call4, i32* %move_val, align 4
  %8 = load i32, i32* %move_val, align 4
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end.14

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* @verbose, align 4
  store i32 %9, i32* %save_verbose, align 4
  %10 = load i32, i32* @verbose, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load i32, i32* %color_to_play, align 4
  %13 = load i32, i32* %color_to_play, align 4
  %cmp8 = icmp eq i32 %13, 1
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.end
  %14 = load %struct.aftermath_data*, %struct.aftermath_data** %a.addr, align 8
  %white_control = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %14, i32 0, i32 8
  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %white_control, i32 0, i32 0
  br label %cond.end.12

cond.false.10:                                    ; preds = %if.end
  %15 = load %struct.aftermath_data*, %struct.aftermath_data** %a.addr, align 8
  %black_control = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %15, i32 0, i32 9
  %arraydecay11 = getelementptr inbounds [400 x i32], [400 x i32]* %black_control, i32 0, i32 0
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.9
  %cond = phi i32* [ %arraydecay, %cond.true.9 ], [ %arraydecay11, %cond.false.10 ]
  %call13 = call i32 @aftermath_genmove(i32* %move, i32 %12, i32* %cond, i32 0)
  store i32 %call13, i32* %move_val, align 4
  %16 = load i32, i32* %save_verbose, align 4
  store i32 %16, i32* @verbose, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end.12, %while.body
  %17 = load i32, i32* %move, align 4
  %18 = load i32, i32* %color_to_play, align 4
  call void @play_move(i32 %17, i32 %18)
  %19 = load %struct.SGFTree_t*, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %tobool15 = icmp ne %struct.SGFTree_t* %19, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct.SGFTree_t*, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %21 = load i32, i32* %color_to_play, align 4
  %22 = load i32, i32* %move, align 4
  %div = sdiv i32 %22, 20
  %sub = sub nsw i32 %div, 1
  %23 = load i32, i32* %move, align 4
  %rem = srem i32 %23, 20
  %sub17 = sub nsw i32 %rem, 1
  call void @sgftreeAddPlay(%struct.SGFTree_t* %20, i32 %21, i32 %sub, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %24 = load i32, i32* %moves, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %moves, align 4
  %25 = load i32, i32* @debug, align 4
  %and19 = and i32 %25, 131072
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.false.22, label %cond.true.21

cond.true.21:                                     ; preds = %if.end.18
  br label %cond.end.30

cond.false.22:                                    ; preds = %if.end.18
  %26 = load i32, i32* @movenum, align 4
  %27 = load i32, i32* %color_to_play, align 4
  %28 = load i32, i32* %move, align 4
  %call23 = call i32 @get_owl_node_counter()
  %29 = load i32, i32* %owl_nodes, align 4
  %sub24 = sub nsw i32 %call23, %29
  %call25 = call i32 @get_reading_node_counter()
  %30 = load i32, i32* %reading_nodes, align 4
  %sub26 = sub nsw i32 %call25, %30
  %call27 = call i32 @get_owl_node_counter()
  %call28 = call i32 @get_reading_node_counter()
  %call29 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i32 0, i32 0), i32 %26, i32 %27, i32 %28, i32 %sub24, i32 %sub26, i32 %call27, i32 %call28)
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.22, %cond.true.21
  %31 = load i32, i32* %move, align 4
  %cmp31 = icmp ne i32 %31, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %cond.end.30
  store i32 0, i32* %pass, align 4
  br label %if.end.34

if.else:                                          ; preds = %cond.end.30
  %32 = load i32, i32* %pass, align 4
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %pass, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.32
  %33 = load i32, i32* %color_to_play, align 4
  %sub35 = sub nsw i32 3, %33
  store i32 %sub35, i32* %color_to_play, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* @disable_threat_computation, align 4
  store i32 0, i32* @disable_endgame_patterns, align 4
  ret void
}

declare void @restore_board(%struct.board_state*) #1

declare i32 @get_reading_node_counter() #1

declare i32 @get_owl_node_counter() #1

; Function Attrs: nounwind uwtable
define internal i32 @reduced_genmove(i32* %move, i32 %color) #0 {
entry:
  %move.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %val = alloca float, align 4
  %save_verbose = alloca i32, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %0, align 4
  store float -1.000000e+00, float* %val, align 4
  call void @reset_engine()
  %1 = load i32, i32* %color.addr, align 4
  call void @examine_position(i32 %1, i32 99)
  %2 = load i32, i32* @level, align 4
  %cmp = icmp sge i32 %2, 8
  br i1 %cmp, label %if.then, label %if.else.39

if.then:                                          ; preds = %entry
  %call = call float @estimate_score(float* @lower_bound, float* @upper_bound)
  %3 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i32, i32* @showscore, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.end.33

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load float, float* @lower_bound, align 4
  %6 = load float, float* @upper_bound, align 4
  %cmp3 = fcmp oeq float %5, %6
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %7 = load float, float* @lower_bound, align 4
  %cmp5 = fcmp ogt float %7, 0.000000e+00
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)
  %8 = load float, float* @lower_bound, align 4
  %cmp6 = fcmp olt float %8, 0.000000e+00
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.4
  %9 = load float, float* @lower_bound, align 4
  %sub = fsub float -0.000000e+00, %9
  br label %cond.end

cond.false:                                       ; preds = %if.then.4
  %10 = load float, float* @lower_bound, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi float [ %sub, %cond.true ], [ %10, %cond.false ]
  %conv = fpext float %cond7 to double
  %call8 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0), i8* %cond, double %conv)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %11 = load float, float* @lower_bound, align 4
  %cmp9 = fcmp ogt float %11, 0.000000e+00
  %cond11 = select i1 %cmp9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)
  %12 = load float, float* @lower_bound, align 4
  %cmp12 = fcmp olt float %12, 0.000000e+00
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.else
  %13 = load float, float* @lower_bound, align 4
  %sub15 = fsub float -0.000000e+00, %13
  br label %cond.end.17

cond.false.16:                                    ; preds = %if.else
  %14 = load float, float* @lower_bound, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.14
  %cond18 = phi float [ %sub15, %cond.true.14 ], [ %14, %cond.false.16 ]
  %conv19 = fpext float %cond18 to double
  %15 = load float, float* @upper_bound, align 4
  %cmp20 = fcmp ogt float %15, 0.000000e+00
  %cond22 = select i1 %cmp20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0)
  %16 = load float, float* @upper_bound, align 4
  %cmp23 = fcmp olt float %16, 0.000000e+00
  br i1 %cmp23, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.17
  %17 = load float, float* @upper_bound, align 4
  %sub26 = fsub float -0.000000e+00, %17
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.17
  %18 = load float, float* @upper_bound, align 4
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi float [ %sub26, %cond.true.25 ], [ %18, %cond.false.27 ]
  %conv30 = fpext float %cond29 to double
  %call31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i32 0, i32 0), i8* %cond11, double %conv19, i8* %cond22, double %conv30)
  br label %if.end

if.end:                                           ; preds = %cond.end.28, %cond.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call32 = call i32 @fflush(%struct._IO_FILE* %19)
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %lor.lhs.false
  %20 = load i32, i32* %color.addr, align 4
  %cmp34 = icmp eq i32 %20, 1
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33
  %21 = load float, float* @lower_bound, align 4
  store float %21, float* @score, align 4
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  %22 = load float, float* @upper_bound, align 4
  store float %22, float* @score, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.else.39:                                       ; preds = %entry
  store float 0.000000e+00, float* @score, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.end.38
  %23 = load i32, i32* @stackp, align 4
  %cmp41 = icmp eq i32 %23, 0
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 831, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.43
  %24 = load i32, i32* %color.addr, align 4
  call void @worm_reasons(i32 %24)
  %25 = load i32, i32* @verbose, align 4
  store i32 %25, i32* %save_verbose, align 4
  %26 = load i32, i32* @verbose, align 4
  %cmp46 = icmp sgt i32 %26, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  %27 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %28 = load i32, i32* %color.addr, align 4
  call void @owl_reasons(i32 %28)
  %29 = load i32, i32* %save_verbose, align 4
  store i32 %29, i32* @verbose, align 4
  %30 = load i32, i32* %color.addr, align 4
  call void @combinations(i32 %30)
  %31 = load i32, i32* @stackp, align 4
  %cmp50 = icmp eq i32 %31, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.49
  br label %if.end.54

if.else.53:                                       ; preds = %if.end.49
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 849, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.52
  %32 = load i32*, i32** %move.addr, align 8
  %33 = load i32, i32* %color.addr, align 4
  %34 = load float, float* @lower_bound, align 4
  %call55 = call i32 @review_move_reasons(i32* %32, float* %val, i32 %33, float 0.000000e+00, float %34, i32* null)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.end.54
  %35 = load i32, i32* @verbose, align 4
  %tobool58 = icmp ne i32 %35, 0
  br i1 %tobool58, label %cond.false.60, label %cond.true.59

cond.true.59:                                     ; preds = %if.then.57
  br label %cond.end.63

cond.false.60:                                    ; preds = %if.then.57
  %36 = load i32*, i32** %move.addr, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load float, float* %val, align 4
  %conv61 = fpext float %38 to double
  %call62 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i32 0, i32 0), i32 %37, double %conv61)
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.60, %cond.true.59
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end.63, %if.end.54
  %39 = load i32, i32* @stackp, align 4
  %cmp65 = icmp eq i32 %39, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.end.64
  br label %if.end.69

if.else.68:                                       ; preds = %if.end.64
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 854, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %if.then.67
  %40 = load float, float* %val, align 4
  %conv70 = fpext float %40 to double
  %cmp71 = fcmp olt double %conv70, 0.000000e+00
  br i1 %cmp71, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %if.end.69
  %41 = load i32, i32* @verbose, align 4
  %tobool74 = icmp ne i32 %41, 0
  br i1 %tobool74, label %cond.false.76, label %cond.true.75

cond.true.75:                                     ; preds = %if.then.73
  br label %cond.end.78

cond.false.76:                                    ; preds = %if.then.73
  %call77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.75
  %42 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %42, align 4
  br label %if.end.86

if.else.79:                                       ; preds = %if.end.69
  %43 = load i32, i32* @verbose, align 4
  %tobool80 = icmp ne i32 %43, 0
  br i1 %tobool80, label %cond.false.82, label %cond.true.81

cond.true.81:                                     ; preds = %if.else.79
  br label %cond.end.85

cond.false.82:                                    ; preds = %if.else.79
  %44 = load i32*, i32** %move.addr, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load float, float* %val, align 4
  %conv83 = fpext float %46 to double
  %call84 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0), i32 %45, double %conv83)
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.81
  br label %if.end.86

if.end.86:                                        ; preds = %cond.end.85, %cond.end.78
  %47 = load float, float* %val, align 4
  %conv87 = fptosi float %47 to i32
  ret i32 %conv87
}

declare void @play_move(i32, i32) #1

declare void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

declare void @reset_engine() #1

declare void @examine_position(i32, i32) #1

declare float @estimate_score(float*, float*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @worm_reasons(i32) #1

declare void @owl_reasons(i32) #1

declare void @combinations(i32) #1

declare i32 @review_move_reasons(i32*, float*, i32, float, float, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
