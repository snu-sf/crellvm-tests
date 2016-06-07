; ModuleID = 'engine/utils.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@dragon = external global [400 x %struct.dragon_data], align 16
@board = external global [421 x i8], align 16
@.str = private unnamed_addr constant [15 x i8] c"defend_against\00", align 1
@black_eye = external global [400 x %struct.eye_data], align 16
@white_eye = external global [400 x %struct.eye_data], align 16
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"does_attack-A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"does_attack-B\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"engine/utils.c\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"spos != 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"does_defend-A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"does_defend-B\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"stackp == 0 || !check_alive\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"(ai == bi) ^ (aj == bj)\00", align 1
@board_size = external global i32, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"ON_BOARD1(pos + k * up)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"play_break_through_n\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"play_attack_defend_n\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"play_connect_n\00", align 1
@set_depth_values.node_limits = internal global [12 x i32] [i32 500, i32 500, i32 450, i32 400, i32 400, i32 325, i32 275, i32 200, i32 150, i32 100, i32 75, i32 50], align 16
@depth = external global i32, align 4
@backfill_depth = external global i32, align 4
@backfill2_depth = external global i32, align 4
@branch_depth = external global i32, align 4
@owl_distrust_depth = external global i32, align 4
@owl_branch_depth = external global i32, align 4
@owl_reading_depth = external global i32, align 4
@urgent = external global i32, align 4
@aa_depth = external global i32, align 4
@ko_depth = external global i32, align 4
@fourlib_depth = external global i32, align 4
@superstring_depth = external global i32, align 4
@owl_node_limit = external global i32, align 4
@mandated_depth = external global i32, align 4
@mandated_backfill_depth = external global i32, align 4
@mandated_backfill2_depth = external global i32, align 4
@mandated_superstring_depth = external global i32, align 4
@mandated_fourlib_depth = external global i32, align 4
@mandated_ko_depth = external global i32, align 4
@mandated_branch_depth = external global i32, align 4
@mandated_aa_depth = external global i32, align 4
@mandated_owl_distrust_depth = external global i32, align 4
@mandated_owl_branch_depth = external global i32, align 4
@mandated_owl_reading_depth = external global i32, align 4
@mandated_owl_node_limit = external global i32, align 4
@save_depth = internal global i32 0, align 4
@save_backfill_depth = internal global i32 0, align 4
@save_backfill2_depth = internal global i32 0, align 4
@save_superstring_depth = internal global i32 0, align 4
@save_branch_depth = internal global i32 0, align 4
@save_fourlib_depth = internal global i32 0, align 4
@save_ko_depth = internal global i32 0, align 4
@verbose = external global i32, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Checking safety of a %s move at %1m\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(apos)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Combination attack appears at %1m.\0A\00", align 1
@deltai = external global [8 x i32], align 16
@deltaj = external global [8 x i32], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"double_atari\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"unconditional_life\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Result: jigo   \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Result: %c+%.1f   \00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"n >= 0 && n < 4\00", align 1
@showtime = external global i32, align 4
@timers = common global [4 x double] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%1m\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c": %.2f sec\0A\00", align 1
@random_seed = external global i32, align 4
@delta = external global [8 x i32], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.25 = private unnamed_addr constant [35 x i8] c"Dragon at %1m becomes attackable.\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"After %1m Worm at %1m becomes attackable.\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"After %1m worm at %1m becomes defendable.\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"No attack found (unexpectedly) on %1m after move at %1m.\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Double threat appears at %1m.\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"mx[str] == 0\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"num_stones\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"num_libs\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"num_adj\00", align 1

; Function Attrs: nounwind uwtable
define void @change_dragon_status(i32 %dr, i32 %status) #0 {
entry:
  %dr.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %origin = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %origin1 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin1, align 4
  store i32 %1, i32* %origin, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 2
  %6 = load i32, i32* %origin8, align 4
  %7 = load i32, i32* %origin, align 4
  %cmp9 = icmp eq i32 %6, %7
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %8 = load i32, i32* %status.addr, align 4
  %9 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom12
  %status14 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx13, i32 0, i32 16
  store i32 %8, i32* %status14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %10 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @defend_against(i32 %move, i32 %color, i32 %apos) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %apos.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %3
  %call1 = call i32 @safe_move(i32 %2, i32 %sub)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @popgo()
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  call void @popgo()
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @safe_move(i32, i32) #1

declare void @popgo() #1

; Function Attrs: nounwind uwtable
define i32 @cut_possible(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom
  %cut = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 11
  %2 = load i8, i8* %cut, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %3 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom1
  %type = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx2, i32 0, i32 8
  %4 = load i8, i8* %type, align 1
  %conv3 = sext i8 %4 to i32
  %and = and i32 %conv3, 4
  %tobool4 = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %5 = phi i1 [ true, %if.then ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom5
  %cut7 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx6, i32 0, i32 11
  %7 = load i8, i8* %cut7, align 1
  %conv8 = sext i8 %7 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %lor.end.17, label %lor.rhs.10

lor.rhs.10:                                       ; preds = %if.else
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom11
  %type13 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx12, i32 0, i32 8
  %9 = load i8, i8* %type13, align 1
  %conv14 = sext i8 %9 to i32
  %and15 = and i32 %conv14, 4
  %tobool16 = icmp ne i32 %and15, 0
  br label %lor.end.17

lor.end.17:                                       ; preds = %lor.rhs.10, %if.else
  %10 = phi i1 [ true, %if.else ], [ %tobool16, %lor.rhs.10 ]
  %lor.ext18 = zext i1 %10 to i32
  store i32 %lor.ext18, i32* %retval
  br label %return

return:                                           ; preds = %lor.end.17, %lor.end
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @does_attack(i32 %move, i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %result = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %spos = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %spos, align 4
  %3 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 16
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %5 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %7 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %7, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  %8 = load i32, i32* %str.addr, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom13
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx14, i32 0, i32 17
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %9 = load i32, i32* %arrayidx15, align 4
  store i32 %9, i32* %spos, align 4
  br label %if.end.23

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %str.addr, align 4
  %call = call i32 @attack_and_defend(i32 %10, i32* %acode, i32* null, i32* %dcode, i32* %spos)
  %11 = load i32, i32* %acode, align 4
  %cmp16 = icmp ne i32 %11, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.else
  %12 = load i32, i32* %dcode, align 4
  %cmp19 = icmp eq i32 %12, 0
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.18, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %13 = load i32, i32* %move.addr, align 4
  %14 = load i32, i32* %other, align 4
  %15 = load i32, i32* %str.addr, align 4
  %call24 = call i32 @trymove(i32 %13, i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %15, i32 0, i32 0)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then.25, label %if.end.49

if.then.25:                                       ; preds = %if.end.23
  %16 = load i32, i32* %str.addr, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %17 = load i8, i8* %arrayidx27, align 1
  %tobool28 = icmp ne i8 %17, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then.31

lor.lhs.false:                                    ; preds = %if.then.25
  %18 = load i32, i32* %str.addr, align 4
  %call29 = call i32 @find_defense(i32 %18, i32* null)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.48, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false, %if.then.25
  store i32 5, i32* %result, align 4
  call void @increase_depth_values()
  %19 = load i32, i32* %spos, align 4
  %cmp32 = icmp ne i32 %19, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.47

land.lhs.true.34:                                 ; preds = %if.then.31
  %20 = load i32, i32* %spos, align 4
  %21 = load i32, i32* %color, align 4
  %22 = load i32, i32* %str.addr, align 4
  %call35 = call i32 @trymove(i32 %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %22, i32 0, i32 0)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %land.lhs.true.34
  %23 = load i32, i32* %str.addr, align 4
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %24 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %24 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.then.37
  %25 = load i32, i32* %str.addr, align 4
  %call43 = call i32 @attack(i32 %25, i32* null)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.42
  store i32 0, i32* %result, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.then.37
  call void @popgo()
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true.34, %if.then.31
  call void @decrease_depth_values()
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %lor.lhs.false
  call void @popgo()
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.23
  %26 = load i32, i32* %result, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.21, %if.then.12
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

declare i32 @find_defense(i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @increase_depth_values() #0 {
entry:
  call void @modify_depth_values(i32 1)
  ret void
}

declare i32 @attack(i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @decrease_depth_values() #0 {
entry:
  call void @modify_depth_values(i32 -1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @does_defend(i32 %move, i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %result = alloca i32, align 4
  %spos = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %spos, align 4
  %3 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 16
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %5 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 15
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %7 = load i32, i32* %arrayidx10, align 4
  store i32 %7, i32* %spos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.14

if.else.11:                                       ; preds = %entry
  %8 = load i32, i32* %str.addr, align 4
  %call = call i32 @attack(i32 %8, i32* %spos)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.else.11
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.else.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %9 = load i32, i32* %spos, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.14
  br label %if.end.19

if.else.18:                                       ; preds = %if.end.14
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %str.addr, align 4
  %call20 = call i32 @trymove(i32 %10, i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %12, i32 0, i32 0)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.end.19
  %13 = load i32, i32* %str.addr, align 4
  %call23 = call i32 @attack(i32 %13, i32* null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.37, label %if.then.25

if.then.25:                                       ; preds = %if.then.22
  store i32 1, i32* %result, align 4
  call void @increase_depth_values()
  %14 = load i32, i32* %spos, align 4
  %15 = load i32, i32* %other, align 4
  %16 = load i32, i32* %str.addr, align 4
  %call26 = call i32 @trymove(i32 %14, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %16, i32 0, i32 0)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.then.25
  %17 = load i32, i32* %str.addr, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %18 = load i8, i8* %arrayidx30, align 1
  %tobool31 = icmp ne i8 %18, 0
  br i1 %tobool31, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %if.then.28
  %19 = load i32, i32* %str.addr, align 4
  %call32 = call i32 @find_defense(i32 %19, i32* null)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %lor.lhs.false, %if.then.28
  store i32 0, i32* %result, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %lor.lhs.false
  call void @popgo()
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.25
  call void @decrease_depth_values()
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.22
  call void @popgo()
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.19
  %20 = load i32, i32* %result, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.12, %if.then.7
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @somewhere(i32 %color, i32 %check_alive, i32 %num_moves, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %check_alive.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %check_alive, i32* %check_alive.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %check_alive.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %num_moves.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4
  %5 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %6 = bitcast i8* %5 to i32*
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %8 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load i32, i32* %vaarg.addr
  store i32 %9, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %conv, %12
  br i1 %cmp4, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %vaarg.end
  %13 = load i32, i32* %check_alive.addr, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.12

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 16
  %15 = load i32, i32* %status, align 4
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false.7, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false.7, %vaarg.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @visible_along_edge(i32 %color, i32 %apos, i32 %bpos) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %pos = alloca i32, align 4
  %forward = alloca i32, align 4
  %up = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %ai, align 4
  %1 = load i32, i32* %apos.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %aj, align 4
  %2 = load i32, i32* %bpos.addr, align 4
  %div2 = sdiv i32 %2, 20
  %sub3 = sub nsw i32 %div2, 1
  store i32 %sub3, i32* %bi, align 4
  %3 = load i32, i32* %bpos.addr, align 4
  %rem4 = srem i32 %3, 20
  %sub5 = sub nsw i32 %rem4, 1
  store i32 %sub5, i32* %bj, align 4
  %4 = load i32, i32* %ai, align 4
  %5 = load i32, i32* %bi, align 4
  %cmp = icmp eq i32 %4, %5
  %conv = zext i1 %cmp to i32
  %6 = load i32, i32* %aj, align 4
  %7 = load i32, i32* %bj, align 4
  %cmp6 = icmp eq i32 %6, %7
  %conv7 = zext i1 %cmp6 to i32
  %xor = xor i32 %conv, %conv7
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %apos.addr, align 4
  %div8 = sdiv i32 %8, 20
  %sub9 = sub nsw i32 %div8, 1
  %9 = load i32, i32* %apos.addr, align 4
  %rem10 = srem i32 %9, 20
  %sub11 = sub nsw i32 %rem10, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 229, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i32 %sub9, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %ai, align 4
  %11 = load i32, i32* %bi, align 4
  %cmp12 = icmp eq i32 %10, %11
  br i1 %cmp12, label %if.then.14, label %if.else.29

if.then.14:                                       ; preds = %if.end
  %12 = load i32, i32* %aj, align 4
  %13 = load i32, i32* %bj, align 4
  %cmp15 = icmp sgt i32 %12, %13
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.14
  store i32 -1, i32* %forward, align 4
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  store i32 1, i32* %forward, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %14 = load i32, i32* %ai, align 4
  %15 = load i32, i32* @board_size, align 4
  %div20 = sdiv i32 %15, 2
  %cmp21 = icmp slt i32 %14, %div20
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.19
  %16 = load i32, i32* %bj, align 4
  %add = add nsw i32 21, %16
  store i32 %add, i32* %pos, align 4
  store i32 20, i32* %up, align 4
  br label %if.end.28

if.else.24:                                       ; preds = %if.end.19
  %17 = load i32, i32* @board_size, align 4
  %sub25 = sub nsw i32 %17, 1
  %mul = mul nsw i32 %sub25, 20
  %add26 = add nsw i32 21, %mul
  %18 = load i32, i32* %bj, align 4
  %add27 = add nsw i32 %add26, %18
  store i32 %add27, i32* %pos, align 4
  store i32 -20, i32* %up, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.48

if.else.29:                                       ; preds = %if.end
  %19 = load i32, i32* %ai, align 4
  %20 = load i32, i32* %bi, align 4
  %cmp30 = icmp sgt i32 %19, %20
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.29
  store i32 -20, i32* %forward, align 4
  br label %if.end.34

if.else.33:                                       ; preds = %if.else.29
  store i32 20, i32* %forward, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  %21 = load i32, i32* %aj, align 4
  %22 = load i32, i32* @board_size, align 4
  %div35 = sdiv i32 %22, 2
  %cmp36 = icmp slt i32 %21, %div35
  br i1 %cmp36, label %if.then.38, label %if.else.42

if.then.38:                                       ; preds = %if.end.34
  %23 = load i32, i32* %bi, align 4
  %mul39 = mul nsw i32 %23, 20
  %add40 = add nsw i32 21, %mul39
  %add41 = add nsw i32 %add40, 0
  store i32 %add41, i32* %pos, align 4
  store i32 1, i32* %up, align 4
  br label %if.end.47

if.else.42:                                       ; preds = %if.end.34
  %24 = load i32, i32* %bi, align 4
  %mul43 = mul nsw i32 %24, 20
  %add44 = add nsw i32 21, %mul43
  %25 = load i32, i32* @board_size, align 4
  %sub45 = sub nsw i32 %25, 1
  %add46 = add nsw i32 %add44, %sub45
  store i32 %add46, i32* %pos, align 4
  store i32 -1, i32* %up, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.42, %if.then.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.28
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end.48
  %26 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %conv49 = zext i8 %27 to i32
  %cmp50 = icmp ne i32 %conv49, 3
  br i1 %cmp50, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  store i32 4, i32* %k, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %k, align 4
  %cmp53 = icmp sge i32 %28, 0
  br i1 %cmp53, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %for.cond.52
  %29 = load i32, i32* %pos, align 4
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %up, align 4
  %mul56 = mul nsw i32 %30, %31
  %add57 = add nsw i32 %29, %mul56
  %cmp58 = icmp ult i32 %add57, 421
  br i1 %cmp58, label %land.lhs.true, label %if.else.68

land.lhs.true:                                    ; preds = %for.body.55
  %32 = load i32, i32* %pos, align 4
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %up, align 4
  %mul60 = mul nsw i32 %33, %34
  %add61 = add nsw i32 %32, %mul60
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom62
  %35 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %35 to i32
  %cmp65 = icmp ne i32 %conv64, 3
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true
  br label %if.end.77

if.else.68:                                       ; preds = %land.lhs.true, %for.body.55
  %36 = load i32, i32* %pos, align 4
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %up, align 4
  %mul69 = mul nsw i32 %37, %38
  %add70 = add nsw i32 %36, %mul69
  %div71 = sdiv i32 %add70, 20
  %sub72 = sub nsw i32 %div71, 1
  %39 = load i32, i32* %pos, align 4
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %up, align 4
  %mul73 = mul nsw i32 %40, %41
  %add74 = add nsw i32 %39, %mul73
  %rem75 = srem i32 %add74, 20
  %sub76 = sub nsw i32 %rem75, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 %sub72, i32 %sub76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.68, %if.then.67
  %42 = load i32, i32* %pos, align 4
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %up, align 4
  %mul78 = mul nsw i32 %43, %44
  %add79 = add nsw i32 %42, %mul78
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom80
  %45 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %45 to i32
  %46 = load i32, i32* %color.addr, align 4
  %cmp83 = icmp eq i32 %conv82, %46
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.end.77
  store i32 1, i32* %retval
  br label %return

if.else.86:                                       ; preds = %if.end.77
  %47 = load i32, i32* %pos, align 4
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %up, align 4
  %mul87 = mul nsw i32 %48, %49
  %add88 = add nsw i32 %47, %mul87
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom89
  %50 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %50 to i32
  %51 = load i32, i32* %color.addr, align 4
  %sub92 = sub nsw i32 3, %51
  %cmp93 = icmp eq i32 %conv91, %sub92
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.86
  store i32 0, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.else.86
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.97
  %52 = load i32, i32* %k, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end
  %53 = load i32, i32* %forward, align 4
  %54 = load i32, i32* %pos, align 4
  %add99 = add nsw i32 %54, %53
  store i32 %add99, i32* %pos, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.100, %if.then.95, %if.then.85
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define i32 @play_break_through_n(i32 %color, i32 %num_moves, ...) #0 {
entry:
  %color.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %mcolor = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  %played_moves = alloca i32, align 4
  %apos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %zpos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  store i32 %0, i32* %mcolor, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %played_moves, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i32*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i32, i32* %vaarg.addr
  store i32 %8, i32* %apos, align 4
  %9 = load i32, i32* %apos, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %vaarg.end
  %10 = load i32, i32* %apos, align 4
  %11 = load i32, i32* %mcolor, align 4
  %call = call i32 @trymove(i32 %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %apos, align 4
  %13 = load i32, i32* %mcolor, align 4
  %call4 = call i32 @tryko(i32 %12, i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* %played_moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %played_moves, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %vaarg.end
  %15 = load i32, i32* %mcolor, align 4
  %sub = sub nsw i32 3, %15
  store i32 %sub, i32* %mcolor, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset9 = load i32, i32* %gp_offset_p8
  %fits_in_gp10 = icmp ule i32 %gp_offset9, 40
  br i1 %fits_in_gp10, label %vaarg.in_reg.11, label %vaarg.in_mem.13

vaarg.in_reg.11:                                  ; preds = %for.end
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area12 = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area12, i32 %gp_offset9
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset9, 8
  store i32 %20, i32* %gp_offset_p8
  br label %vaarg.end.17

vaarg.in_mem.13:                                  ; preds = %for.end
  %overflow_arg_area_p14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area15 = load i8*, i8** %overflow_arg_area_p14
  %21 = bitcast i8* %overflow_arg_area15 to i32*
  %overflow_arg_area.next16 = getelementptr i8, i8* %overflow_arg_area15, i32 8
  store i8* %overflow_arg_area.next16, i8** %overflow_arg_area_p14
  br label %vaarg.end.17

vaarg.end.17:                                     ; preds = %vaarg.in_mem.13, %vaarg.in_reg.11
  %vaarg.addr18 = phi i32* [ %19, %vaarg.in_reg.11 ], [ %21, %vaarg.in_mem.13 ]
  %22 = load i32, i32* %vaarg.addr18
  store i32 %22, i32* %xpos, align 4
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 0
  %gp_offset21 = load i32, i32* %gp_offset_p20
  %fits_in_gp22 = icmp ule i32 %gp_offset21, 40
  br i1 %fits_in_gp22, label %vaarg.in_reg.23, label %vaarg.in_mem.25

vaarg.in_reg.23:                                  ; preds = %vaarg.end.17
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 3
  %reg_save_area24 = load i8*, i8** %23
  %24 = getelementptr i8, i8* %reg_save_area24, i32 %gp_offset21
  %25 = bitcast i8* %24 to i32*
  %26 = add i32 %gp_offset21, 8
  store i32 %26, i32* %gp_offset_p20
  br label %vaarg.end.29

vaarg.in_mem.25:                                  ; preds = %vaarg.end.17
  %overflow_arg_area_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 2
  %overflow_arg_area27 = load i8*, i8** %overflow_arg_area_p26
  %27 = bitcast i8* %overflow_arg_area27 to i32*
  %overflow_arg_area.next28 = getelementptr i8, i8* %overflow_arg_area27, i32 8
  store i8* %overflow_arg_area.next28, i8** %overflow_arg_area_p26
  br label %vaarg.end.29

vaarg.end.29:                                     ; preds = %vaarg.in_mem.25, %vaarg.in_reg.23
  %vaarg.addr30 = phi i32* [ %25, %vaarg.in_reg.23 ], [ %27, %vaarg.in_mem.25 ]
  %28 = load i32, i32* %vaarg.addr30
  store i32 %28, i32* %ypos, align 4
  %arraydecay31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 0
  %gp_offset33 = load i32, i32* %gp_offset_p32
  %fits_in_gp34 = icmp ule i32 %gp_offset33, 40
  br i1 %fits_in_gp34, label %vaarg.in_reg.35, label %vaarg.in_mem.37

vaarg.in_reg.35:                                  ; preds = %vaarg.end.29
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 3
  %reg_save_area36 = load i8*, i8** %29
  %30 = getelementptr i8, i8* %reg_save_area36, i32 %gp_offset33
  %31 = bitcast i8* %30 to i32*
  %32 = add i32 %gp_offset33, 8
  store i32 %32, i32* %gp_offset_p32
  br label %vaarg.end.41

vaarg.in_mem.37:                                  ; preds = %vaarg.end.29
  %overflow_arg_area_p38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay31, i32 0, i32 2
  %overflow_arg_area39 = load i8*, i8** %overflow_arg_area_p38
  %33 = bitcast i8* %overflow_arg_area39 to i32*
  %overflow_arg_area.next40 = getelementptr i8, i8* %overflow_arg_area39, i32 8
  store i8* %overflow_arg_area.next40, i8** %overflow_arg_area_p38
  br label %vaarg.end.41

vaarg.end.41:                                     ; preds = %vaarg.in_mem.37, %vaarg.in_reg.35
  %vaarg.addr42 = phi i32* [ %31, %vaarg.in_reg.35 ], [ %33, %vaarg.in_mem.37 ]
  %34 = load i32, i32* %vaarg.addr42
  store i32 %34, i32* %zpos, align 4
  %35 = load i32, i32* %xpos, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %36 to i32
  %cmp43 = icmp eq i32 %conv, 0
  br i1 %cmp43, label %if.then.57, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %vaarg.end.41
  %37 = load i32, i32* %ypos, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom46
  %38 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %38 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then.57, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.45
  %39 = load i32, i32* %zpos, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %40 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %40 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.45, %vaarg.end.41
  store i32 1, i32* %success, align 4
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false.51
  %41 = load i32, i32* %xpos, align 4
  %42 = load i32, i32* %ypos, align 4
  %43 = load i32, i32* %zpos, align 4
  %call58 = call i32 @break_through(i32 %41, i32 %42, i32 %43)
  store i32 %call58, i32* %success, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.57
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.64, %if.end.59
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %played_moves, align 4
  %cmp61 = icmp slt i32 %44, %45
  br i1 %cmp61, label %for.body.63, label %for.end.66

for.body.63:                                      ; preds = %for.cond.60
  call void @popgo()
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.63
  %46 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %46, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond.60

for.end.66:                                       ; preds = %for.cond.60
  %arraydecay67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay6768 = bitcast %struct.__va_list_tag* %arraydecay67 to i8*
  call void @llvm.va_end(i8* %arraydecay6768)
  %47 = load i32, i32* %success, align 4
  ret i32 %47
}

declare i32 @tryko(i32, i32, i8*, i32, i32) #1

declare i32 @break_through(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @play_attack_defend_n(i32 %color, i32 %do_attack, i32 %num_moves, ...) #0 {
entry:
  %color.addr = alloca i32, align 4
  %do_attack.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %mcolor = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  %played_moves = alloca i32, align 4
  %apos = alloca i32, align 4
  %zpos = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %do_attack, i32* %do_attack.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  store i32 %0, i32* %mcolor, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %played_moves, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i32*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i32, i32* %vaarg.addr
  store i32 %8, i32* %apos, align 4
  %9 = load i32, i32* %apos, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %vaarg.end
  %10 = load i32, i32* %apos, align 4
  %11 = load i32, i32* %mcolor, align 4
  %call = call i32 @trymove(i32 %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %apos, align 4
  %13 = load i32, i32* %mcolor, align 4
  %call4 = call i32 @tryko(i32 %12, i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* %played_moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %played_moves, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %vaarg.end
  %15 = load i32, i32* %mcolor, align 4
  %sub = sub nsw i32 3, %15
  store i32 %sub, i32* %mcolor, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset9 = load i32, i32* %gp_offset_p8
  %fits_in_gp10 = icmp ule i32 %gp_offset9, 40
  br i1 %fits_in_gp10, label %vaarg.in_reg.11, label %vaarg.in_mem.13

vaarg.in_reg.11:                                  ; preds = %for.end
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area12 = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area12, i32 %gp_offset9
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset9, 8
  store i32 %20, i32* %gp_offset_p8
  br label %vaarg.end.17

vaarg.in_mem.13:                                  ; preds = %for.end
  %overflow_arg_area_p14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area15 = load i8*, i8** %overflow_arg_area_p14
  %21 = bitcast i8* %overflow_arg_area15 to i32*
  %overflow_arg_area.next16 = getelementptr i8, i8* %overflow_arg_area15, i32 8
  store i8* %overflow_arg_area.next16, i8** %overflow_arg_area_p14
  br label %vaarg.end.17

vaarg.end.17:                                     ; preds = %vaarg.in_mem.13, %vaarg.in_reg.11
  %vaarg.addr18 = phi i32* [ %19, %vaarg.in_reg.11 ], [ %21, %vaarg.in_mem.13 ]
  %22 = load i32, i32* %vaarg.addr18
  store i32 %22, i32* %zpos, align 4
  %23 = load i32, i32* %do_attack.addr, align 4
  %tobool19 = icmp ne i32 %23, 0
  br i1 %tobool19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %vaarg.end.17
  %24 = load i32, i32* %zpos, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %cmp21 = icmp eq i32 %conv, 0
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  store i32 5, i32* %success, align 4
  br label %if.end.25

if.else:                                          ; preds = %if.then.20
  %26 = load i32, i32* %zpos, align 4
  %call24 = call i32 @attack(i32 %26, i32* null)
  store i32 %call24, i32* %success, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  br label %if.end.44

if.else.26:                                       ; preds = %vaarg.end.17
  %27 = load i32, i32* %zpos, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %28 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %28 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.26
  store i32 0, i32* %success, align 4
  br label %if.end.43

if.else.33:                                       ; preds = %if.else.26
  %29 = load i32, i32* %zpos, align 4
  %call34 = call i32 @find_defense(i32 %29, i32* null)
  store i32 %call34, i32* %dcode, align 4
  %30 = load i32, i32* %dcode, align 4
  %cmp35 = icmp eq i32 %30, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.else.41

land.lhs.true.37:                                 ; preds = %if.else.33
  %31 = load i32, i32* %zpos, align 4
  %call38 = call i32 @attack(i32 %31, i32* null)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.37
  store i32 5, i32* %success, align 4
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.37, %if.else.33
  %32 = load i32, i32* %dcode, align 4
  store i32 %32, i32* %success, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.32
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.25
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.49, %if.end.44
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %played_moves, align 4
  %cmp46 = icmp slt i32 %33, %34
  br i1 %cmp46, label %for.body.48, label %for.end.51

for.body.48:                                      ; preds = %for.cond.45
  call void @popgo()
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.48
  %35 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.45

for.end.51:                                       ; preds = %for.cond.45
  %arraydecay52 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay5253 = bitcast %struct.__va_list_tag* %arraydecay52 to i8*
  call void @llvm.va_end(i8* %arraydecay5253)
  %36 = load i32, i32* %success, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @play_attack_defend2_n(i32 %color, i32 %do_attack, i32 %num_moves, ...) #0 {
entry:
  %color.addr = alloca i32, align 4
  %do_attack.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %mcolor = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  %played_moves = alloca i32, align 4
  %apos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %zpos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %do_attack, i32* %do_attack.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  store i32 %0, i32* %mcolor, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %played_moves, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i32*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i32, i32* %vaarg.addr
  store i32 %8, i32* %apos, align 4
  %9 = load i32, i32* %apos, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %vaarg.end
  %10 = load i32, i32* %apos, align 4
  %11 = load i32, i32* %mcolor, align 4
  %call = call i32 @trymove(i32 %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %apos, align 4
  %13 = load i32, i32* %mcolor, align 4
  %call4 = call i32 @tryko(i32 %12, i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* %played_moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %played_moves, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %vaarg.end
  %15 = load i32, i32* %mcolor, align 4
  %sub = sub nsw i32 3, %15
  store i32 %sub, i32* %mcolor, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset9 = load i32, i32* %gp_offset_p8
  %fits_in_gp10 = icmp ule i32 %gp_offset9, 40
  br i1 %fits_in_gp10, label %vaarg.in_reg.11, label %vaarg.in_mem.13

vaarg.in_reg.11:                                  ; preds = %for.end
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area12 = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area12, i32 %gp_offset9
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset9, 8
  store i32 %20, i32* %gp_offset_p8
  br label %vaarg.end.17

vaarg.in_mem.13:                                  ; preds = %for.end
  %overflow_arg_area_p14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area15 = load i8*, i8** %overflow_arg_area_p14
  %21 = bitcast i8* %overflow_arg_area15 to i32*
  %overflow_arg_area.next16 = getelementptr i8, i8* %overflow_arg_area15, i32 8
  store i8* %overflow_arg_area.next16, i8** %overflow_arg_area_p14
  br label %vaarg.end.17

vaarg.end.17:                                     ; preds = %vaarg.in_mem.13, %vaarg.in_reg.11
  %vaarg.addr18 = phi i32* [ %19, %vaarg.in_reg.11 ], [ %21, %vaarg.in_mem.13 ]
  %22 = load i32, i32* %vaarg.addr18
  store i32 %22, i32* %ypos, align 4
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 0
  %gp_offset21 = load i32, i32* %gp_offset_p20
  %fits_in_gp22 = icmp ule i32 %gp_offset21, 40
  br i1 %fits_in_gp22, label %vaarg.in_reg.23, label %vaarg.in_mem.25

vaarg.in_reg.23:                                  ; preds = %vaarg.end.17
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 3
  %reg_save_area24 = load i8*, i8** %23
  %24 = getelementptr i8, i8* %reg_save_area24, i32 %gp_offset21
  %25 = bitcast i8* %24 to i32*
  %26 = add i32 %gp_offset21, 8
  store i32 %26, i32* %gp_offset_p20
  br label %vaarg.end.29

vaarg.in_mem.25:                                  ; preds = %vaarg.end.17
  %overflow_arg_area_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 2
  %overflow_arg_area27 = load i8*, i8** %overflow_arg_area_p26
  %27 = bitcast i8* %overflow_arg_area27 to i32*
  %overflow_arg_area.next28 = getelementptr i8, i8* %overflow_arg_area27, i32 8
  store i8* %overflow_arg_area.next28, i8** %overflow_arg_area_p26
  br label %vaarg.end.29

vaarg.end.29:                                     ; preds = %vaarg.in_mem.25, %vaarg.in_reg.23
  %vaarg.addr30 = phi i32* [ %25, %vaarg.in_reg.23 ], [ %27, %vaarg.in_mem.25 ]
  %28 = load i32, i32* %vaarg.addr30
  store i32 %28, i32* %zpos, align 4
  %29 = load i32, i32* %do_attack.addr, align 4
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %if.then.32, label %if.else.44

if.then.32:                                       ; preds = %vaarg.end.29
  %30 = load i32, i32* %ypos, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv, 0
  br i1 %cmp33, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.then.32
  %32 = load i32, i32* %zpos, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %lor.lhs.false.35, %if.then.32
  store i32 5, i32* %success, align 4
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false.35
  %34 = load i32, i32* %ypos, align 4
  %35 = load i32, i32* %zpos, align 4
  %call42 = call i32 @attack_either(i32 %34, i32 %35)
  store i32 %call42, i32* %success, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.41
  br label %if.end.60

if.else.44:                                       ; preds = %vaarg.end.29
  %36 = load i32, i32* %ypos, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %37 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.56, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.else.44
  %38 = load i32, i32* %zpos, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %39 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %39 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %lor.lhs.false.50, %if.else.44
  store i32 0, i32* %success, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %lor.lhs.false.50
  %40 = load i32, i32* %ypos, align 4
  %41 = load i32, i32* %zpos, align 4
  %call58 = call i32 @defend_both(i32 %40, i32 %41)
  store i32 %call58, i32* %success, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.43
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.65, %if.end.60
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %played_moves, align 4
  %cmp62 = icmp slt i32 %42, %43
  br i1 %cmp62, label %for.body.64, label %for.end.67

for.body.64:                                      ; preds = %for.cond.61
  call void @popgo()
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.64
  %44 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %44, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.61

for.end.67:                                       ; preds = %for.cond.61
  %arraydecay68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay6869 = bitcast %struct.__va_list_tag* %arraydecay68 to i8*
  call void @llvm.va_end(i8* %arraydecay6869)
  %45 = load i32, i32* %success, align 4
  ret i32 %45
}

declare i32 @attack_either(i32, i32) #1

declare i32 @defend_both(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @play_connect_n(i32 %color, i32 %do_connect, i32 %num_moves, ...) #0 {
entry:
  %color.addr = alloca i32, align 4
  %do_connect.addr = alloca i32, align 4
  %num_moves.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %mcolor = alloca i32, align 4
  %success = alloca i32, align 4
  %i = alloca i32, align 4
  %played_moves = alloca i32, align 4
  %apos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %zpos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %do_connect, i32* %do_connect.addr, align 4
  store i32 %num_moves, i32* %num_moves.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  store i32 %0, i32* %mcolor, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %played_moves, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_moves.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i32*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i32, i32* %vaarg.addr
  store i32 %8, i32* %apos, align 4
  %9 = load i32, i32* %apos, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %vaarg.end
  %10 = load i32, i32* %apos, align 4
  %11 = load i32, i32* %mcolor, align 4
  %call = call i32 @trymove(i32 %10, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %apos, align 4
  %13 = load i32, i32* %mcolor, align 4
  %call4 = call i32 @tryko(i32 %12, i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load i32, i32* %played_moves, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %played_moves, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %vaarg.end
  %15 = load i32, i32* %mcolor, align 4
  %sub = sub nsw i32 3, %15
  store i32 %sub, i32* %mcolor, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %16, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset9 = load i32, i32* %gp_offset_p8
  %fits_in_gp10 = icmp ule i32 %gp_offset9, 40
  br i1 %fits_in_gp10, label %vaarg.in_reg.11, label %vaarg.in_mem.13

vaarg.in_reg.11:                                  ; preds = %for.end
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area12 = load i8*, i8** %17
  %18 = getelementptr i8, i8* %reg_save_area12, i32 %gp_offset9
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset9, 8
  store i32 %20, i32* %gp_offset_p8
  br label %vaarg.end.17

vaarg.in_mem.13:                                  ; preds = %for.end
  %overflow_arg_area_p14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area15 = load i8*, i8** %overflow_arg_area_p14
  %21 = bitcast i8* %overflow_arg_area15 to i32*
  %overflow_arg_area.next16 = getelementptr i8, i8* %overflow_arg_area15, i32 8
  store i8* %overflow_arg_area.next16, i8** %overflow_arg_area_p14
  br label %vaarg.end.17

vaarg.end.17:                                     ; preds = %vaarg.in_mem.13, %vaarg.in_reg.11
  %vaarg.addr18 = phi i32* [ %19, %vaarg.in_reg.11 ], [ %21, %vaarg.in_mem.13 ]
  %22 = load i32, i32* %vaarg.addr18
  store i32 %22, i32* %ypos, align 4
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %gp_offset_p20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 0
  %gp_offset21 = load i32, i32* %gp_offset_p20
  %fits_in_gp22 = icmp ule i32 %gp_offset21, 40
  br i1 %fits_in_gp22, label %vaarg.in_reg.23, label %vaarg.in_mem.25

vaarg.in_reg.23:                                  ; preds = %vaarg.end.17
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 3
  %reg_save_area24 = load i8*, i8** %23
  %24 = getelementptr i8, i8* %reg_save_area24, i32 %gp_offset21
  %25 = bitcast i8* %24 to i32*
  %26 = add i32 %gp_offset21, 8
  store i32 %26, i32* %gp_offset_p20
  br label %vaarg.end.29

vaarg.in_mem.25:                                  ; preds = %vaarg.end.17
  %overflow_arg_area_p26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 2
  %overflow_arg_area27 = load i8*, i8** %overflow_arg_area_p26
  %27 = bitcast i8* %overflow_arg_area27 to i32*
  %overflow_arg_area.next28 = getelementptr i8, i8* %overflow_arg_area27, i32 8
  store i8* %overflow_arg_area.next28, i8** %overflow_arg_area_p26
  br label %vaarg.end.29

vaarg.end.29:                                     ; preds = %vaarg.in_mem.25, %vaarg.in_reg.23
  %vaarg.addr30 = phi i32* [ %25, %vaarg.in_reg.23 ], [ %27, %vaarg.in_mem.25 ]
  %28 = load i32, i32* %vaarg.addr30
  store i32 %28, i32* %zpos, align 4
  %29 = load i32, i32* %do_connect.addr, align 4
  %tobool31 = icmp ne i32 %29, 0
  br i1 %tobool31, label %if.then.32, label %if.else.44

if.then.32:                                       ; preds = %vaarg.end.29
  %30 = load i32, i32* %ypos, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv, 0
  br i1 %cmp33, label %if.then.41, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.then.32
  %32 = load i32, i32* %zpos, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %33 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %lor.lhs.false.35, %if.then.32
  store i32 0, i32* %success, align 4
  br label %if.end.43

if.else:                                          ; preds = %lor.lhs.false.35
  %34 = load i32, i32* %ypos, align 4
  %35 = load i32, i32* %zpos, align 4
  %call42 = call i32 @string_connect(i32 %34, i32 %35, i32* null)
  store i32 %call42, i32* %success, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.41
  br label %if.end.60

if.else.44:                                       ; preds = %vaarg.end.29
  %36 = load i32, i32* %ypos, align 4
  %idxprom45 = sext i32 %36 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %37 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %37 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.56, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.else.44
  %38 = load i32, i32* %zpos, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %39 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %39 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %lor.lhs.false.50, %if.else.44
  store i32 5, i32* %success, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %lor.lhs.false.50
  %40 = load i32, i32* %ypos, align 4
  %41 = load i32, i32* %zpos, align 4
  %call58 = call i32 @disconnect(i32 %40, i32 %41, i32* null)
  store i32 %call58, i32* %success, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.43
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.65, %if.end.60
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %played_moves, align 4
  %cmp62 = icmp slt i32 %42, %43
  br i1 %cmp62, label %for.body.64, label %for.end.67

for.body.64:                                      ; preds = %for.cond.61
  call void @popgo()
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.64
  %44 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %44, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.61

for.end.67:                                       ; preds = %for.cond.61
  %arraydecay68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay6869 = bitcast %struct.__va_list_tag* %arraydecay68 to i8*
  call void @llvm.va_end(i8* %arraydecay6869)
  %45 = load i32, i32* %success, align 4
  ret i32 %45
}

declare i32 @string_connect(i32, i32, i32*) #1

declare i32 @disconnect(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @set_depth_values(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  %depth_level = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp sge i32 %0, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %sub = sub nsw i32 %1, 10
  store i32 %sub, i32* %depth_level, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %level.addr, align 4
  %cmp1 = icmp sge i32 %2, 8
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %3 = load i32, i32* %level.addr, align 4
  %sub3 = sub nsw i32 %3, 9
  store i32 %sub3, i32* %depth_level, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %4 = load i32, i32* %level.addr, align 4
  %sub5 = sub nsw i32 %4, 8
  store i32 %sub5, i32* %depth_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %5 = load i32, i32* %depth_level, align 4
  %add = add nsw i32 16, %5
  %cmp7 = icmp slt i32 6, %add
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.6
  %6 = load i32, i32* %depth_level, align 4
  %add8 = add nsw i32 16, %6
  br label %cond.end

cond.false:                                       ; preds = %if.end.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add8, %cond.true ], [ 6, %cond.false ]
  store i32 %cond, i32* @depth, align 4
  %7 = load i32, i32* %depth_level, align 4
  %add9 = add nsw i32 12, %7
  %cmp10 = icmp slt i32 2, %add9
  br i1 %cmp10, label %cond.true.11, label %cond.false.13

cond.true.11:                                     ; preds = %cond.end
  %8 = load i32, i32* %depth_level, align 4
  %add12 = add nsw i32 12, %8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.11
  %cond15 = phi i32 [ %add12, %cond.true.11 ], [ 2, %cond.false.13 ]
  store i32 %cond15, i32* @backfill_depth, align 4
  %9 = load i32, i32* %depth_level, align 4
  %add16 = add nsw i32 5, %9
  %cmp17 = icmp slt i32 1, %add16
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.14
  %10 = load i32, i32* %depth_level, align 4
  %add19 = add nsw i32 5, %10
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end.14
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.18
  %cond22 = phi i32 [ %add19, %cond.true.18 ], [ 1, %cond.false.20 ]
  store i32 %cond22, i32* @backfill2_depth, align 4
  %11 = load i32, i32* %depth_level, align 4
  %add23 = add nsw i32 13, %11
  %cmp24 = icmp slt i32 3, %add23
  br i1 %cmp24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.end.21
  %12 = load i32, i32* %depth_level, align 4
  %add26 = add nsw i32 13, %12
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.21
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i32 [ %add26, %cond.true.25 ], [ 3, %cond.false.27 ]
  store i32 %cond29, i32* @branch_depth, align 4
  %13 = load i32, i32* %level.addr, align 4
  %cmp30 = icmp sge i32 %13, 8
  br i1 %cmp30, label %if.then.31, label %if.else.40

if.then.31:                                       ; preds = %cond.end.28
  %14 = load i32, i32* %depth_level, align 4
  %add32 = add nsw i32 12, %14
  %div = sdiv i32 %add32, 2
  %cmp33 = icmp slt i32 1, %div
  br i1 %cmp33, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %if.then.31
  %15 = load i32, i32* %depth_level, align 4
  %add35 = add nsw i32 12, %15
  %div36 = sdiv i32 %add35, 2
  br label %cond.end.38

cond.false.37:                                    ; preds = %if.then.31
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.34
  %cond39 = phi i32 [ %div36, %cond.true.34 ], [ 1, %cond.false.37 ]
  store i32 %cond39, i32* @owl_distrust_depth, align 4
  br label %if.end.50

if.else.40:                                       ; preds = %cond.end.28
  %16 = load i32, i32* %depth_level, align 4
  %add41 = add nsw i32 11, %16
  %div42 = sdiv i32 %add41, 2
  %cmp43 = icmp slt i32 1, %div42
  br i1 %cmp43, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %if.else.40
  %17 = load i32, i32* %depth_level, align 4
  %add45 = add nsw i32 11, %17
  %div46 = sdiv i32 %add45, 2
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.else.40
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.44
  %cond49 = phi i32 [ %div46, %cond.true.44 ], [ 1, %cond.false.47 ]
  store i32 %cond49, i32* @owl_distrust_depth, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end.48, %cond.end.38
  %18 = load i32, i32* %depth_level, align 4
  %add51 = add nsw i32 16, %18
  %div52 = sdiv i32 %add51, 2
  %cmp53 = icmp slt i32 2, %div52
  br i1 %cmp53, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %if.end.50
  %19 = load i32, i32* %depth_level, align 4
  %add55 = add nsw i32 16, %19
  %div56 = sdiv i32 %add55, 2
  br label %cond.end.58

cond.false.57:                                    ; preds = %if.end.50
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.57, %cond.true.54
  %cond59 = phi i32 [ %div56, %cond.true.54 ], [ 2, %cond.false.57 ]
  store i32 %cond59, i32* @owl_branch_depth, align 4
  %20 = load i32, i32* %depth_level, align 4
  %add60 = add nsw i32 40, %20
  %div61 = sdiv i32 %add60, 2
  %cmp62 = icmp slt i32 5, %div61
  br i1 %cmp62, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.end.58
  %21 = load i32, i32* %depth_level, align 4
  %add64 = add nsw i32 40, %21
  %div65 = sdiv i32 %add64, 2
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.58
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.63
  %cond68 = phi i32 [ %div65, %cond.true.63 ], [ 5, %cond.false.66 ]
  store i32 %cond68, i32* @owl_reading_depth, align 4
  store i32 0, i32* @urgent, align 4
  %22 = load i32, i32* %level.addr, align 4
  %cmp69 = icmp sge i32 %22, 8
  br i1 %cmp69, label %if.then.70, label %if.else.80

if.then.70:                                       ; preds = %cond.end.67
  %23 = load i32, i32* %level.addr, align 4
  %sub71 = sub nsw i32 %23, 10
  %add72 = add nsw i32 6, %sub71
  %cmp73 = icmp slt i32 0, %add72
  br i1 %cmp73, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %if.then.70
  %24 = load i32, i32* %level.addr, align 4
  %sub75 = sub nsw i32 %24, 10
  %add76 = add nsw i32 6, %sub75
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.then.70
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.74
  %cond79 = phi i32 [ %add76, %cond.true.74 ], [ 0, %cond.false.77 ]
  store i32 %cond79, i32* @aa_depth, align 4
  br label %if.end.90

if.else.80:                                       ; preds = %cond.end.67
  %25 = load i32, i32* %level.addr, align 4
  %sub81 = sub nsw i32 %25, 9
  %add82 = add nsw i32 6, %sub81
  %cmp83 = icmp slt i32 0, %add82
  br i1 %cmp83, label %cond.true.84, label %cond.false.87

cond.true.84:                                     ; preds = %if.else.80
  %26 = load i32, i32* %level.addr, align 4
  %sub85 = sub nsw i32 %26, 9
  %add86 = add nsw i32 6, %sub85
  br label %cond.end.88

cond.false.87:                                    ; preds = %if.else.80
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.84
  %cond89 = phi i32 [ %add86, %cond.true.84 ], [ 0, %cond.false.87 ]
  store i32 %cond89, i32* @aa_depth, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %cond.end.88, %cond.end.78
  %27 = load i32, i32* %level.addr, align 4
  %cmp91 = icmp sge i32 %27, 10
  br i1 %cmp91, label %if.then.92, label %if.else.102

if.then.92:                                       ; preds = %if.end.90
  %28 = load i32, i32* %level.addr, align 4
  %sub93 = sub nsw i32 %28, 10
  %add94 = add nsw i32 8, %sub93
  %cmp95 = icmp slt i32 1, %add94
  br i1 %cmp95, label %cond.true.96, label %cond.false.99

cond.true.96:                                     ; preds = %if.then.92
  %29 = load i32, i32* %level.addr, align 4
  %sub97 = sub nsw i32 %29, 10
  %add98 = add nsw i32 8, %sub97
  br label %cond.end.100

cond.false.99:                                    ; preds = %if.then.92
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.96
  %cond101 = phi i32 [ %add98, %cond.true.96 ], [ 1, %cond.false.99 ]
  store i32 %cond101, i32* @ko_depth, align 4
  br label %if.end.125

if.else.102:                                      ; preds = %if.end.90
  %30 = load i32, i32* %level.addr, align 4
  %cmp103 = icmp ne i32 %30, 7
  br i1 %cmp103, label %if.then.104, label %if.else.114

if.then.104:                                      ; preds = %if.else.102
  %31 = load i32, i32* %level.addr, align 4
  %sub105 = sub nsw i32 %31, 9
  %add106 = add nsw i32 8, %sub105
  %cmp107 = icmp slt i32 1, %add106
  br i1 %cmp107, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %if.then.104
  %32 = load i32, i32* %level.addr, align 4
  %sub109 = sub nsw i32 %32, 9
  %add110 = add nsw i32 8, %sub109
  br label %cond.end.112

cond.false.111:                                   ; preds = %if.then.104
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.true.108
  %cond113 = phi i32 [ %add110, %cond.true.108 ], [ 1, %cond.false.111 ]
  store i32 %cond113, i32* @ko_depth, align 4
  br label %if.end.124

if.else.114:                                      ; preds = %if.else.102
  %33 = load i32, i32* %level.addr, align 4
  %sub115 = sub nsw i32 %33, 8
  %add116 = add nsw i32 8, %sub115
  %cmp117 = icmp slt i32 1, %add116
  br i1 %cmp117, label %cond.true.118, label %cond.false.121

cond.true.118:                                    ; preds = %if.else.114
  %34 = load i32, i32* %level.addr, align 4
  %sub119 = sub nsw i32 %34, 8
  %add120 = add nsw i32 8, %sub119
  br label %cond.end.122

cond.false.121:                                   ; preds = %if.else.114
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.118
  %cond123 = phi i32 [ %add120, %cond.true.118 ], [ 1, %cond.false.121 ]
  store i32 %cond123, i32* @ko_depth, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %cond.end.122, %cond.end.112
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %cond.end.100
  %35 = load i32, i32* %level.addr, align 4
  %cmp126 = icmp sge i32 %35, 10
  br i1 %cmp126, label %if.then.127, label %if.else.137

if.then.127:                                      ; preds = %if.end.125
  %36 = load i32, i32* %level.addr, align 4
  %sub128 = sub nsw i32 %36, 10
  %add129 = add nsw i32 7, %sub128
  %cmp130 = icmp slt i32 1, %add129
  br i1 %cmp130, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %if.then.127
  %37 = load i32, i32* %level.addr, align 4
  %sub132 = sub nsw i32 %37, 10
  %add133 = add nsw i32 7, %sub132
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.then.127
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.131
  %cond136 = phi i32 [ %add133, %cond.true.131 ], [ 1, %cond.false.134 ]
  store i32 %cond136, i32* @fourlib_depth, align 4
  br label %if.end.151

if.else.137:                                      ; preds = %if.end.125
  %38 = load i32, i32* %level.addr, align 4
  %cmp138 = icmp sge i32 %38, 7
  br i1 %cmp138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %if.else.137
  store i32 7, i32* @fourlib_depth, align 4
  br label %if.end.150

if.else.140:                                      ; preds = %if.else.137
  %39 = load i32, i32* %level.addr, align 4
  %sub141 = sub nsw i32 %39, 7
  %add142 = add nsw i32 7, %sub141
  %cmp143 = icmp slt i32 1, %add142
  br i1 %cmp143, label %cond.true.144, label %cond.false.147

cond.true.144:                                    ; preds = %if.else.140
  %40 = load i32, i32* %level.addr, align 4
  %sub145 = sub nsw i32 %40, 7
  %add146 = add nsw i32 7, %sub145
  br label %cond.end.148

cond.false.147:                                   ; preds = %if.else.140
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.144
  %cond149 = phi i32 [ %add146, %cond.true.144 ], [ 1, %cond.false.147 ]
  store i32 %cond149, i32* @fourlib_depth, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %cond.end.148, %if.then.139
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %cond.end.135
  %41 = load i32, i32* %level.addr, align 4
  %cmp152 = icmp sge i32 %41, 10
  br i1 %cmp152, label %if.then.153, label %if.else.164

if.then.153:                                      ; preds = %if.end.151
  %42 = load i32, i32* %level.addr, align 4
  %sub154 = sub nsw i32 %42, 10
  %add155 = add nsw i32 7, %sub154
  %cmp156 = icmp slt i32 1, %add155
  br i1 %cmp156, label %cond.true.157, label %cond.false.160

cond.true.157:                                    ; preds = %if.then.153
  %43 = load i32, i32* %level.addr, align 4
  %sub158 = sub nsw i32 %43, 10
  %add159 = add nsw i32 7, %sub158
  br label %cond.end.161

cond.false.160:                                   ; preds = %if.then.153
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.157
  %cond162 = phi i32 [ %add159, %cond.true.157 ], [ 1, %cond.false.160 ]
  store i32 %cond162, i32* @superstring_depth, align 4
  %44 = load i32, i32* %depth_level, align 4
  %conv = sitofp i32 %44 to double
  %call = call double @pow(double 1.500000e+00, double %conv) #2
  %mul = fmul double 1.000000e+03, %call
  %conv163 = fptosi double %mul to i32
  store i32 %conv163, i32* @owl_node_limit, align 4
  br label %if.end.174

if.else.164:                                      ; preds = %if.end.151
  store i32 0, i32* @superstring_depth, align 4
  %45 = load i32, i32* %level.addr, align 4
  %sub165 = sub nsw i32 10, %45
  %idxprom = sext i32 %sub165 to i64
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* @set_depth_values.node_limits, i32 0, i64 %idxprom
  %46 = load i32, i32* %arrayidx, align 4
  %mul166 = mul nsw i32 1000, %46
  %47 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @set_depth_values.node_limits, i32 0, i64 0), align 4
  %div167 = sdiv i32 %mul166, %47
  store i32 %div167, i32* @owl_node_limit, align 4
  %48 = load i32, i32* @owl_node_limit, align 4
  %cmp168 = icmp slt i32 20, %48
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.else.164
  %49 = load i32, i32* @owl_node_limit, align 4
  br label %cond.end.172

cond.false.171:                                   ; preds = %if.else.164
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i32 [ %49, %cond.true.170 ], [ 20, %cond.false.171 ]
  store i32 %cond173, i32* @owl_node_limit, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %cond.end.172, %cond.end.161
  %50 = load i32, i32* @mandated_depth, align 4
  %cmp175 = icmp ne i32 %50, -1
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.174
  %51 = load i32, i32* @mandated_depth, align 4
  store i32 %51, i32* @depth, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.177, %if.end.174
  %52 = load i32, i32* @mandated_backfill_depth, align 4
  %cmp179 = icmp ne i32 %52, -1
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.178
  %53 = load i32, i32* @mandated_backfill_depth, align 4
  store i32 %53, i32* @backfill_depth, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.178
  %54 = load i32, i32* @mandated_backfill2_depth, align 4
  %cmp183 = icmp ne i32 %54, -1
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.end.182
  %55 = load i32, i32* @mandated_backfill2_depth, align 4
  store i32 %55, i32* @backfill2_depth, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.end.182
  %56 = load i32, i32* @mandated_superstring_depth, align 4
  %cmp187 = icmp ne i32 %56, -1
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.186
  %57 = load i32, i32* @mandated_superstring_depth, align 4
  store i32 %57, i32* @superstring_depth, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.end.186
  %58 = load i32, i32* @mandated_fourlib_depth, align 4
  %cmp191 = icmp ne i32 %58, -1
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.end.190
  %59 = load i32, i32* @mandated_fourlib_depth, align 4
  store i32 %59, i32* @fourlib_depth, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %if.end.190
  %60 = load i32, i32* @mandated_ko_depth, align 4
  %cmp195 = icmp ne i32 %60, -1
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.194
  %61 = load i32, i32* @mandated_ko_depth, align 4
  store i32 %61, i32* @ko_depth, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %if.end.194
  %62 = load i32, i32* @mandated_branch_depth, align 4
  %cmp199 = icmp ne i32 %62, -1
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.198
  %63 = load i32, i32* @mandated_branch_depth, align 4
  store i32 %63, i32* @branch_depth, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.end.198
  %64 = load i32, i32* @mandated_aa_depth, align 4
  %cmp203 = icmp ne i32 %64, -1
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %if.end.202
  %65 = load i32, i32* @mandated_aa_depth, align 4
  store i32 %65, i32* @aa_depth, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %if.end.202
  %66 = load i32, i32* @mandated_owl_distrust_depth, align 4
  %cmp207 = icmp ne i32 %66, -1
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.206
  %67 = load i32, i32* @mandated_owl_distrust_depth, align 4
  store i32 %67, i32* @owl_distrust_depth, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.209, %if.end.206
  %68 = load i32, i32* @mandated_owl_branch_depth, align 4
  %cmp211 = icmp ne i32 %68, -1
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.end.210
  %69 = load i32, i32* @mandated_owl_branch_depth, align 4
  store i32 %69, i32* @owl_branch_depth, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %if.end.210
  %70 = load i32, i32* @mandated_owl_reading_depth, align 4
  %cmp215 = icmp ne i32 %70, -1
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.end.214
  %71 = load i32, i32* @mandated_owl_reading_depth, align 4
  store i32 %71, i32* @owl_reading_depth, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.end.214
  %72 = load i32, i32* @mandated_owl_node_limit, align 4
  %cmp219 = icmp ne i32 %72, -1
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.end.218
  %73 = load i32, i32* @mandated_owl_node_limit, align 4
  store i32 %73, i32* @owl_node_limit, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.221, %if.end.218
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define void @modify_depth_values(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* @depth, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @depth, align 4
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* @backfill_depth, align 4
  %add1 = add nsw i32 %3, %2
  store i32 %add1, i32* @backfill_depth, align 4
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* @backfill2_depth, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, i32* @backfill2_depth, align 4
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* @superstring_depth, align 4
  %add3 = add nsw i32 %7, %6
  store i32 %add3, i32* @superstring_depth, align 4
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32, i32* @branch_depth, align 4
  %add4 = add nsw i32 %9, %8
  store i32 %add4, i32* @branch_depth, align 4
  %10 = load i32, i32* %n.addr, align 4
  %11 = load i32, i32* @fourlib_depth, align 4
  %add5 = add nsw i32 %11, %10
  store i32 %add5, i32* @fourlib_depth, align 4
  %12 = load i32, i32* %n.addr, align 4
  %13 = load i32, i32* @ko_depth, align 4
  %add6 = add nsw i32 %13, %12
  store i32 %add6, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_temporary_depth_values(i32 %d, i32 %b, i32 %f, i32 %k, i32 %br, i32 %b2, i32 %ss) #0 {
entry:
  %d.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %br.addr = alloca i32, align 4
  %b2.addr = alloca i32, align 4
  %ss.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %br, i32* %br.addr, align 4
  store i32 %b2, i32* %b2.addr, align 4
  store i32 %ss, i32* %ss.addr, align 4
  %0 = load i32, i32* @depth, align 4
  store i32 %0, i32* @save_depth, align 4
  %1 = load i32, i32* @backfill_depth, align 4
  store i32 %1, i32* @save_backfill_depth, align 4
  %2 = load i32, i32* @backfill2_depth, align 4
  store i32 %2, i32* @save_backfill2_depth, align 4
  %3 = load i32, i32* @superstring_depth, align 4
  store i32 %3, i32* @save_superstring_depth, align 4
  %4 = load i32, i32* @branch_depth, align 4
  store i32 %4, i32* @save_branch_depth, align 4
  %5 = load i32, i32* @fourlib_depth, align 4
  store i32 %5, i32* @save_fourlib_depth, align 4
  %6 = load i32, i32* @ko_depth, align 4
  store i32 %6, i32* @save_ko_depth, align 4
  %7 = load i32, i32* %d.addr, align 4
  store i32 %7, i32* @depth, align 4
  %8 = load i32, i32* %b.addr, align 4
  store i32 %8, i32* @backfill_depth, align 4
  %9 = load i32, i32* %b2.addr, align 4
  store i32 %9, i32* @backfill2_depth, align 4
  %10 = load i32, i32* %ss.addr, align 4
  store i32 %10, i32* @superstring_depth, align 4
  %11 = load i32, i32* %br.addr, align 4
  store i32 %11, i32* @branch_depth, align 4
  %12 = load i32, i32* %f.addr, align 4
  store i32 %12, i32* @fourlib_depth, align 4
  %13 = load i32, i32* %k.addr, align 4
  store i32 %13, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @restore_depth_values() #0 {
entry:
  %0 = load i32, i32* @save_depth, align 4
  store i32 %0, i32* @depth, align 4
  %1 = load i32, i32* @save_backfill_depth, align 4
  store i32 %1, i32* @backfill_depth, align 4
  %2 = load i32, i32* @save_backfill2_depth, align 4
  store i32 %2, i32* @backfill2_depth, align 4
  %3 = load i32, i32* @save_superstring_depth, align 4
  store i32 %3, i32* @superstring_depth, align 4
  %4 = load i32, i32* @save_branch_depth, align 4
  store i32 %4, i32* @branch_depth, align 4
  %5 = load i32, i32* @save_fourlib_depth, align 4
  store i32 %5, i32* @fourlib_depth, align 4
  %6 = load i32, i32* @save_ko_depth, align 4
  store i32 %6, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @confirm_safety(i32 %move, i32 %color, i32* %defense_point, i8* %safe_stones) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %safe_stones.addr = alloca i8*, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32*, i32** %defense_point.addr, align 8
  %3 = load i8*, i8** %safe_stones.addr, align 8
  %call = call float @blunder_size(i32 %0, i32 %1, i32* %2, i8* %3)
  %conv = fpext float %call to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define float @blunder_size(i32 %move, i32 %color, i32* %defense_point, i8* %safe_stones) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %libs = alloca [5 x i32], align 16
  %liberties = alloca i32, align 4
  %apos = alloca i32, align 4
  %trouble = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %return_value = alloca float, align 4
  %atari = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %libs, i32 0, i32 0
  %call = call i32 @accuratelib(i32 %0, i32 %1, i32 5, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  store i32 0, i32* %trouble, align 4
  %2 = load i32, i32* @verbose, align 4
  store i32 %2, i32* %save_verbose, align 4
  store float 0.000000e+00, float* %return_value, align 4
  %3 = load i32*, i32** %defense_point.addr, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @verbose, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %call2 = call i8* @color_to_string(i32 %6)
  %7 = load i32, i32* %move.addr, align 4
  %call3 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i8* %call2, i32 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %8 = load i32, i32* @verbose, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %9 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %color.addr, align 4
  %12 = load i32*, i32** %defense_point.addr, align 8
  %13 = load i8*, i8** %safe_stones.addr, align 8
  %14 = load i32, i32* %liberties, align 4
  %15 = load i32, i32* %save_verbose, align 4
  %call6 = call i32 @detect_owl_blunder(i32 %10, i32 %11, i32* %12, i8* %13, i32 %14, float* %return_value, i32 %15)
  store i32 %call6, i32* %trouble, align 4
  %16 = load i32, i32* %trouble, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %17 = load i32, i32* %move.addr, align 4
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32*, i32** %defense_point.addr, align 8
  %20 = load i8*, i8** %safe_stones.addr, align 8
  %21 = load i32, i32* %liberties, align 4
  %arraydecay9 = getelementptr inbounds [5 x i32], [5 x i32]* %libs, i32 0, i32 0
  %22 = load i32, i32* %save_verbose, align 4
  call void @detect_tactical_blunder(i32 %17, i32 %18, i32* %19, i8* %20, i32 %21, i32* %arraydecay9, float* %return_value, i32 %22)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %23 = load i32, i32* %color.addr, align 4
  %24 = load i32, i32* %move.addr, align 4
  %25 = load i8*, i8** %safe_stones.addr, align 8
  %call11 = call i32 @atari_atari_blunder_size(i32 %23, i32 %24, i32* %apos, i8* %25)
  store i32 %call11, i32* %atari, align 4
  %26 = load i32, i32* %atari, align 4
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.10
  %27 = load i32, i32* %apos, align 4
  %cmp14 = icmp ult i32 %27, 421
  br i1 %cmp14, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.13
  %28 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  %cmp15 = icmp ne i32 %conv, 3
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  br label %if.end.19

if.else:                                          ; preds = %land.lhs.true, %if.then.13
  %30 = load i32, i32* %apos, align 4
  %div = sdiv i32 %30, 20
  %sub = sub nsw i32 %div, 1
  %31 = load i32, i32* %apos, align 4
  %rem = srem i32 %31, 20
  %sub18 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 862, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i32 %sub, i32 %sub18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  %32 = load i32*, i32** %defense_point.addr, align 8
  %tobool20 = icmp ne i32* %32, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %33 = load i32, i32* %apos, align 4
  %34 = load i32*, i32** %defense_point.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %35 = load i32, i32* %save_verbose, align 4
  store i32 %35, i32* @verbose, align 4
  %36 = load i32, i32* @verbose, align 4
  %tobool23 = icmp ne i32 %36, 0
  br i1 %tobool23, label %cond.false.25, label %cond.true.24

cond.true.24:                                     ; preds = %if.end.22
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.end.22
  %37 = load i32, i32* %apos, align 4
  %call26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0), i32 %37)
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.true.24
  %38 = load i32, i32* %atari, align 4
  %conv28 = sitofp i32 %38 to float
  %39 = load float, float* %return_value, align 4
  %add = fadd float %39, %conv28
  store float %add, float* %return_value, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end.27, %if.end.10
  %40 = load i32, i32* %save_verbose, align 4
  store i32 %40, i32* @verbose, align 4
  %41 = load float, float* %return_value, align 4
  ret float %41
}

declare i32 @accuratelib(i32, i32, i32, i32*) #1

declare i32 @gprintf(i8*, ...) #1

declare i8* @color_to_string(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @detect_owl_blunder(i32 %move, i32 %color, i32* %defense_point, i8* %safe_stones, i32 %liberties, float* %return_value, i32 %save_verbose) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %liberties.addr = alloca i32, align 4
  %return_value.addr = alloca float*, align 8
  %save_verbose.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %ii = alloca i32, align 4
  %trouble = alloca i32, align 4
  %dragon_analyzed = alloca [4 x i32], align 16
  %current_verbose = alloca i32, align 4
  %bpos = alloca i32, align 4
  %j = alloca i32, align 4
  %kworm = alloca i32, align 4
  %acode = alloca i32, align 4
  %l = alloca i32, align 4
  %kworm121 = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store i32 %liberties, i32* %liberties.addr, align 4
  store float* %return_value, float** %return_value.addr, align 8
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  store i32 0, i32* %trouble, align 4
  %0 = bitcast [4 x i32]* %dragon_analyzed to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 16, i1 false)
  %1 = load i32, i32* @verbose, align 4
  store i32 %1, i32* %current_verbose, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.212, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end.214

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %move.addr, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %bpos, align 4
  %6 = load i32, i32* %bpos, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp ne i32 %conv, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.212

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %liberties.addr, align 4
  %10 = load i32, i32* %bpos, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom5
  %liberties7 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx6, i32 0, i32 4
  %11 = load i32, i32* %liberties7, align 4
  %cmp8 = icmp sle i32 %9, %11
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %liberties.addr, align 4
  %cmp10 = icmp sle i32 %12, 4
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %trouble, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i32, i32* %bpos, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom13
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx14, i32 0, i32 1
  %14 = load i32, i32* %id, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx16 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %15, i64 %idxprom15
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx16, i32 0, i32 10
  %call = call i32 @min_eyes(%struct.eyevalue* %genus)
  %cmp17 = icmp sgt i32 %call, 2
  br i1 %cmp17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %16 = load i32, i32* %move.addr, align 4
  %call19 = call i32 @is_proper_eye_space(i32 %16)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false, %if.else
  br label %for.inc.212

if.end.21:                                        ; preds = %lor.lhs.false
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.12
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.end.22
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %k, align 4
  %cmp24 = icmp slt i32 %17, %18
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %19 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %dragon_analyzed, i32 0, i64 %idxprom27
  %20 = load i32, i32* %arrayidx28, align 4
  %21 = load i32, i32* %bpos, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom29
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx30, i32 0, i32 2
  %22 = load i32, i32* %origin, align 4
  %cmp31 = icmp eq i32 %20, %22
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.26
  br label %for.end

if.end.34:                                        ; preds = %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.23

for.end:                                          ; preds = %if.then.33, %for.cond.23
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %k, align 4
  %cmp35 = icmp slt i32 %24, %25
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end
  br label %for.inc.212

if.end.38:                                        ; preds = %for.end
  %26 = load i32, i32* %bpos, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom39
  %origin41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx40, i32 0, i32 2
  %27 = load i32, i32* %origin41, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %dragon_analyzed, i32 0, i64 %idxprom42
  store i32 %27, i32* %arrayidx43, align 4
  %29 = load i8*, i8** %safe_stones.addr, align 8
  %tobool44 = icmp ne i8* %29, null
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %if.end.38
  %30 = load i32, i32* %bpos, align 4
  %idxprom46 = sext i32 %30 to i64
  %31 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %31, i64 %idxprom46
  %32 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %32 to i32
  %cmp49 = icmp eq i32 %conv48, 2
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.45
  br label %for.inc.212

if.end.52:                                        ; preds = %land.lhs.true.45, %if.end.38
  %33 = load i32, i32* %bpos, align 4
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom53
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx54, i32 0, i32 16
  %34 = load i32, i32* %status, align 4
  %cmp55 = icmp eq i32 %34, 1
  br i1 %cmp55, label %land.lhs.true.64, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.52
  %35 = load i8*, i8** %safe_stones.addr, align 8
  %tobool58 = icmp ne i8* %35, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.211

land.lhs.true.59:                                 ; preds = %lor.lhs.false.57
  %36 = load i32, i32* %bpos, align 4
  %idxprom60 = sext i32 %36 to i64
  %37 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %37, i64 %idxprom60
  %38 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %38 to i32
  %tobool63 = icmp ne i32 %conv62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.211

land.lhs.true.64:                                 ; preds = %land.lhs.true.59, %if.end.52
  %39 = load i32, i32* %bpos, align 4
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom65
  %id67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx66, i32 0, i32 1
  %40 = load i32, i32* %id67, align 4
  %idxprom68 = sext i32 %40 to i64
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx69 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i64 %idxprom68
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx69, i32 0, i32 6
  %42 = load i32, i32* %safety, align 4
  %cmp70 = icmp ne i32 %42, 9
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.211

land.lhs.true.72:                                 ; preds = %land.lhs.true.64
  %43 = load i32, i32* %bpos, align 4
  %idxprom73 = sext i32 %43 to i64
  %arrayidx74 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom73
  %id75 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx74, i32 0, i32 1
  %44 = load i32, i32* %id75, align 4
  %idxprom76 = sext i32 %44 to i64
  %45 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx77 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i64 %idxprom76
  %safety78 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx77, i32 0, i32 6
  %46 = load i32, i32* %safety78, align 4
  %cmp79 = icmp ne i32 %46, 8
  br i1 %cmp79, label %if.then.81, label %if.end.211

if.then.81:                                       ; preds = %land.lhs.true.72
  store i32 0, i32* %kworm, align 4
  %47 = load i32, i32* %move.addr, align 4
  %48 = load i32, i32* %bpos, align 4
  %49 = load i32*, i32** %defense_point.addr, align 8
  %call82 = call i32 @owl_confirm_safety(i32 %47, i32 %48, i32* %49, i32* %kworm)
  store i32 %call82, i32* %acode, align 4
  %50 = load i32, i32* %acode, align 4
  %cmp83 = icmp eq i32 %50, 0
  br i1 %cmp83, label %if.then.85, label %if.else.105

if.then.85:                                       ; preds = %if.then.81
  %51 = load i32, i32* %save_verbose.addr, align 4
  store i32 %51, i32* @verbose, align 4
  %52 = load i32, i32* @verbose, align 4
  %tobool86 = icmp ne i32 %52, 0
  br i1 %tobool86, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.85
  br label %cond.end

cond.false:                                       ; preds = %if.then.85
  %53 = load i32, i32* %bpos, align 4
  %call87 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i32 %53)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %54 = load i32, i32* %current_verbose, align 4
  store i32 %54, i32* @verbose, align 4
  %55 = load i32, i32* %bpos, align 4
  %idxprom88 = sext i32 %55 to i64
  %arrayidx89 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom88
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx89, i32 0, i32 4
  %56 = load float, float* %effective_size, align 4
  %conv90 = fpext float %56 to double
  %mul = fmul double 2.000000e+00, %conv90
  %57 = load float*, float** %return_value.addr, align 8
  %58 = load float, float* %57, align 4
  %conv91 = fpext float %58 to double
  %add92 = fadd double %conv91, %mul
  %conv93 = fptrunc double %add92 to float
  store float %conv93, float* %57, align 4
  %59 = load i8*, i8** %safe_stones.addr, align 8
  %tobool94 = icmp ne i8* %59, null
  br i1 %tobool94, label %if.then.95, label %if.end.104

if.then.95:                                       ; preds = %cond.end
  %60 = load i32, i32* %bpos, align 4
  %call96 = call i32 @first_worm_in_dragon(i32 %60)
  store i32 %call96, i32* %ii, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.101, %if.then.95
  %61 = load i32, i32* %ii, align 4
  %cmp98 = icmp ne i32 %61, 0
  br i1 %cmp98, label %for.body.100, label %for.end.103

for.body.100:                                     ; preds = %for.cond.97
  %62 = load i32, i32* %ii, align 4
  %63 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_string(i32 %62, i8* %63, i8 signext 0)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.100
  %64 = load i32, i32* %ii, align 4
  %call102 = call i32 @next_worm_in_dragon(i32 %64)
  store i32 %call102, i32* %ii, align 4
  br label %for.cond.97

for.end.103:                                      ; preds = %for.cond.97
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %cond.end
  br label %if.end.210

if.else.105:                                      ; preds = %if.then.81
  %65 = load i32, i32* %acode, align 4
  %cmp106 = icmp eq i32 %65, 2
  br i1 %cmp106, label %if.then.108, label %if.end.209

if.then.108:                                      ; preds = %if.else.105
  %66 = load i32, i32* %save_verbose.addr, align 4
  store i32 %66, i32* @verbose, align 4
  %67 = load i32, i32* @verbose, align 4
  %tobool109 = icmp ne i32 %67, 0
  br i1 %tobool109, label %cond.false.111, label %cond.true.110

cond.true.110:                                    ; preds = %if.then.108
  br label %cond.end.113

cond.false.111:                                   ; preds = %if.then.108
  %68 = load i32, i32* %bpos, align 4
  %call112 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i32 0, i32 0), i32 %68)
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.110
  %69 = load i32, i32* %current_verbose, align 4
  store i32 %69, i32* @verbose, align 4
  %70 = load i32, i32* %kworm, align 4
  %71 = load i32, i32* %move.addr, align 4
  %cmp114 = icmp eq i32 %70, %71
  br i1 %cmp114, label %if.then.116, label %if.else.171

if.then.116:                                      ; preds = %cond.end.113
  store i32 0, i32* %l, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.168, %if.then.116
  %72 = load i32, i32* %l, align 4
  %cmp118 = icmp slt i32 %72, 4
  br i1 %cmp118, label %for.body.120, label %for.end.170

for.body.120:                                     ; preds = %for.cond.117
  %73 = load i32, i32* %move.addr, align 4
  %74 = load i32, i32* %l, align 4
  %idxprom122 = sext i32 %74 to i64
  %arrayidx123 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom122
  %75 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %73, %75
  store i32 %add124, i32* %kworm121, align 4
  %76 = load i32, i32* %kworm121, align 4
  %idxprom125 = sext i32 %76 to i64
  %arrayidx126 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom125
  %77 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %77 to i32
  %78 = load i32, i32* %color.addr, align 4
  %cmp128 = icmp eq i32 %conv127, %78
  br i1 %cmp128, label %if.then.130, label %if.end.167

if.then.130:                                      ; preds = %for.body.120
  %79 = load i32, i32* %kworm121, align 4
  %idxprom131 = sext i32 %79 to i64
  %arrayidx132 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom131
  %effective_size133 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx132, i32 0, i32 2
  %80 = load float, float* %effective_size133, align 4
  %conv134 = fpext float %80 to double
  %mul135 = fmul double 2.000000e+00, %conv134
  %81 = load float*, float** %return_value.addr, align 8
  %82 = load float, float* %81, align 4
  %conv136 = fpext float %82 to double
  %add137 = fadd double %conv136, %mul135
  %conv138 = fptrunc double %add137 to float
  store float %conv138, float* %81, align 4
  %83 = load i8*, i8** %safe_stones.addr, align 8
  %tobool139 = icmp ne i8* %83, null
  br i1 %tobool139, label %if.then.140, label %if.end.166

if.then.140:                                      ; preds = %if.then.130
  store i32 21, i32* %ii, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.163, %if.then.140
  %84 = load i32, i32* %ii, align 4
  %cmp142 = icmp slt i32 %84, 400
  br i1 %cmp142, label %for.body.144, label %for.end.165

for.body.144:                                     ; preds = %for.cond.141
  %85 = load i32, i32* %ii, align 4
  %idxprom145 = sext i32 %85 to i64
  %arrayidx146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom145
  %86 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %86 to i32
  %cmp148 = icmp ne i32 %conv147, 3
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.162

land.lhs.true.150:                                ; preds = %for.body.144
  %87 = load i32, i32* %ii, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom151
  %origin153 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx152, i32 0, i32 3
  %88 = load i32, i32* %origin153, align 4
  %89 = load i32, i32* %kworm121, align 4
  %idxprom154 = sext i32 %89 to i64
  %arrayidx155 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom154
  %origin156 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx155, i32 0, i32 3
  %90 = load i32, i32* %origin156, align 4
  %cmp157 = icmp eq i32 %88, %90
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %land.lhs.true.150
  %91 = load i32, i32* %ii, align 4
  %idxprom160 = sext i32 %91 to i64
  %92 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %92, i64 %idxprom160
  store i8 0, i8* %arrayidx161, align 1
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %land.lhs.true.150, %for.body.144
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %93 = load i32, i32* %ii, align 4
  %inc164 = add nsw i32 %93, 1
  store i32 %inc164, i32* %ii, align 4
  br label %for.cond.141

for.end.165:                                      ; preds = %for.cond.141
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %if.then.130
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %for.body.120
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %94 = load i32, i32* %l, align 4
  %inc169 = add nsw i32 %94, 1
  store i32 %inc169, i32* %l, align 4
  br label %for.cond.117

for.end.170:                                      ; preds = %for.cond.117
  br label %if.end.208

if.else.171:                                      ; preds = %cond.end.113
  %95 = load i32, i32* %kworm, align 4
  %idxprom172 = sext i32 %95 to i64
  %arrayidx173 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom172
  %effective_size174 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx173, i32 0, i32 2
  %96 = load float, float* %effective_size174, align 4
  %conv175 = fpext float %96 to double
  %mul176 = fmul double 2.000000e+00, %conv175
  %97 = load float*, float** %return_value.addr, align 8
  %98 = load float, float* %97, align 4
  %conv177 = fpext float %98 to double
  %add178 = fadd double %conv177, %mul176
  %conv179 = fptrunc double %add178 to float
  store float %conv179, float* %97, align 4
  %99 = load i8*, i8** %safe_stones.addr, align 8
  %tobool180 = icmp ne i8* %99, null
  br i1 %tobool180, label %if.then.181, label %if.end.207

if.then.181:                                      ; preds = %if.else.171
  store i32 21, i32* %ii, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.204, %if.then.181
  %100 = load i32, i32* %ii, align 4
  %cmp183 = icmp slt i32 %100, 400
  br i1 %cmp183, label %for.body.185, label %for.end.206

for.body.185:                                     ; preds = %for.cond.182
  %101 = load i32, i32* %ii, align 4
  %idxprom186 = sext i32 %101 to i64
  %arrayidx187 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom186
  %102 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %102 to i32
  %cmp189 = icmp ne i32 %conv188, 3
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.203

land.lhs.true.191:                                ; preds = %for.body.185
  %103 = load i32, i32* %ii, align 4
  %idxprom192 = sext i32 %103 to i64
  %arrayidx193 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom192
  %origin194 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx193, i32 0, i32 3
  %104 = load i32, i32* %origin194, align 4
  %105 = load i32, i32* %kworm, align 4
  %idxprom195 = sext i32 %105 to i64
  %arrayidx196 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom195
  %origin197 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx196, i32 0, i32 3
  %106 = load i32, i32* %origin197, align 4
  %cmp198 = icmp eq i32 %104, %106
  br i1 %cmp198, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %land.lhs.true.191
  %107 = load i32, i32* %ii, align 4
  %idxprom201 = sext i32 %107 to i64
  %108 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %108, i64 %idxprom201
  store i8 0, i8* %arrayidx202, align 1
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.200, %land.lhs.true.191, %for.body.185
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %109 = load i32, i32* %ii, align 4
  %inc205 = add nsw i32 %109, 1
  store i32 %inc205, i32* %ii, align 4
  br label %for.cond.182

for.end.206:                                      ; preds = %for.cond.182
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %if.else.171
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %for.end.170
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.else.105
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.104
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.72, %land.lhs.true.64, %land.lhs.true.59, %lor.lhs.false.57
  br label %for.inc.212

for.inc.212:                                      ; preds = %if.end.211, %if.then.51, %if.then.37, %if.then.20, %if.then
  %110 = load i32, i32* %k, align 4
  %inc213 = add nsw i32 %110, 1
  store i32 %inc213, i32* %k, align 4
  br label %for.cond

for.end.214:                                      ; preds = %for.cond
  %111 = load i32, i32* %trouble, align 4
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal void @detect_tactical_blunder(i32 %move, i32 %color, i32* %defense_point, i8* %safe_stones, i32 %liberties, i32* %libs, float* %return_value, i32 %save_verbose) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %liberties.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %return_value.addr = alloca float*, align 8
  %save_verbose.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %ii = alloca i32, align 4
  %current_verbose = alloca i32, align 4
  %owl_attacks = alloca i32, align 4
  %dpos = alloca i32, align 4
  %d_a_blunder_size = alloca float, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store i32 %liberties, i32* %liberties.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store float* %return_value, float** %return_value.addr, align 8
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %save_verbose.addr, align 4
  store i32 %1, i32* %current_verbose, align 4
  %2 = load i32, i32* %move.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %2, i32 %3, i8* null, i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @increase_depth_values()
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.129, %if.end
  %4 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %4, 400
  br i1 %cmp, label %for.body, label %for.end.131

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %lor.lhs.false.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %lor.lhs.false.8, label %if.then.16

lor.lhs.false.8:                                  ; preds = %lor.lhs.false, %for.body
  %9 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom9
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx10, i32 0, i32 3
  %10 = load i32, i32* %origin, align 4
  %11 = load i32, i32* %pos, align 4
  %cmp11 = icmp ne i32 %10, %11
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %12 = load i32, i32* %pos, align 4
  %13 = load i32, i32* %move.addr, align 4
  %cmp14 = icmp eq i32 %12, %13
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.8, %lor.lhs.false
  br label %for.inc.129

if.end.17:                                        ; preds = %lor.lhs.false.13
  %14 = load i32, i32* %pos, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %16 = load i32, i32* %color.addr, align 4
  %cmp21 = icmp eq i32 %conv20, %16
  br i1 %cmp21, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.17
  %17 = load i8*, i8** %safe_stones.addr, align 8
  %tobool23 = icmp ne i8* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %lor.lhs.false.29

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %19, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  br i1 %tobool28, label %land.lhs.true.37, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %land.lhs.true.24, %land.lhs.true
  %21 = load i8*, i8** %safe_stones.addr, align 8
  %tobool30 = icmp ne i8* %21, null
  br i1 %tobool30, label %if.else, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %lor.lhs.false.29
  %22 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx33, i32 0, i32 16
  %arrayidx34 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %23 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %23, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %land.lhs.true.31, %land.lhs.true.24
  %24 = load i32, i32* %pos, align 4
  %call38 = call i32 @attack(i32 %24, i32* null)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.37
  %25 = load i32*, i32** %defense_point.addr, align 8
  %tobool41 = icmp ne i32* %25, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.40
  %26 = load i32, i32* %pos, align 4
  %27 = load i32*, i32** %defense_point.addr, align 8
  %call43 = call i32 @find_defense(i32 %26, i32* %27)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.40
  %28 = load i32, i32* %save_verbose.addr, align 4
  store i32 %28, i32* @verbose, align 4
  %29 = load i32, i32* @verbose, align 4
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.44
  br label %cond.end

cond.false:                                       ; preds = %if.end.44
  %30 = load i32, i32* %move.addr, align 4
  %31 = load i32, i32* %pos, align 4
  %call46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i32 0, i32 0), i32 %30, i32 %31)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %32 = load i32, i32* %current_verbose, align 4
  store i32 %32, i32* @verbose, align 4
  %33 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom47
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx48, i32 0, i32 2
  %34 = load float, float* %effective_size, align 4
  %35 = load float*, float** %return_value.addr, align 8
  %36 = load float, float* %35, align 4
  %add = fadd float %36, %34
  store float %add, float* %35, align 4
  %37 = load i8*, i8** %safe_stones.addr, align 8
  %tobool49 = icmp ne i8* %37, null
  br i1 %tobool49, label %if.then.50, label %if.end.67

if.then.50:                                       ; preds = %cond.end
  store i32 21, i32* %ii, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.50
  %38 = load i32, i32* %ii, align 4
  %cmp52 = icmp slt i32 %38, 400
  br i1 %cmp52, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.51
  %39 = load i32, i32* %ii, align 4
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom55
  %origin57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx56, i32 0, i32 3
  %40 = load i32, i32* %origin57, align 4
  %41 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom58
  %origin60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx59, i32 0, i32 3
  %42 = load i32, i32* %origin60, align 4
  %cmp61 = icmp eq i32 %40, %42
  br i1 %cmp61, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %for.body.54
  %43 = load i32, i32* %ii, align 4
  %idxprom64 = sext i32 %43 to i64
  %44 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %44, i64 %idxprom64
  store i8 0, i8* %arrayidx65, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %for.body.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %45 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  br label %if.end.67

if.end.67:                                        ; preds = %for.end, %cond.end
  br label %if.end.128

if.else:                                          ; preds = %land.lhs.true.37, %land.lhs.true.31, %lor.lhs.false.29, %if.end.17
  %46 = load i32, i32* %pos, align 4
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %47 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %47 to i32
  %48 = load i32, i32* %other, align 4
  %cmp71 = icmp eq i32 %conv70, %48
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.127

land.lhs.true.73:                                 ; preds = %if.else
  %49 = load i32, i32* %pos, align 4
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom74
  %origin76 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx75, i32 0, i32 3
  %50 = load i32, i32* %origin76, align 4
  %51 = load i32, i32* %pos, align 4
  %cmp77 = icmp eq i32 %50, %51
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.127

land.lhs.true.79:                                 ; preds = %land.lhs.true.73
  %52 = load i32, i32* %pos, align 4
  %idxprom80 = sext i32 %52 to i64
  %arrayidx81 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom80
  %attack_codes82 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx81, i32 0, i32 16
  %arrayidx83 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes82, i32 0, i64 0
  %53 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp ne i32 %53, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.127

land.lhs.true.86:                                 ; preds = %land.lhs.true.79
  %54 = load i32, i32* %pos, align 4
  %idxprom87 = sext i32 %54 to i64
  %arrayidx88 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom87
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx88, i32 0, i32 18
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %55 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %55, 0
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.127

land.lhs.true.92:                                 ; preds = %land.lhs.true.86
  %56 = load i32, i32* %pos, align 4
  %call93 = call i32 @find_defense(i32 %56, i32* null)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.127

if.then.95:                                       ; preds = %land.lhs.true.92
  call void @popgo()
  call void @decrease_depth_values()
  %57 = load i32, i32* %move.addr, align 4
  %58 = load i32, i32* %pos, align 4
  %call96 = call i32 @owl_does_attack(i32 %57, i32 %58, i32* null)
  store i32 %call96, i32* %owl_attacks, align 4
  %59 = load i32, i32* %owl_attacks, align 4
  %cmp97 = icmp ne i32 %59, 5
  br i1 %cmp97, label %if.then.99, label %if.end.109

if.then.99:                                       ; preds = %if.then.95
  %60 = load i32, i32* %pos, align 4
  %idxprom100 = sext i32 %60 to i64
  %arrayidx101 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom100
  %effective_size102 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx101, i32 0, i32 2
  %61 = load float, float* %effective_size102, align 4
  %62 = load float*, float** %return_value.addr, align 8
  %63 = load float, float* %62, align 4
  %add103 = fadd float %63, %61
  store float %add103, float* %62, align 4
  %64 = load i32, i32* %save_verbose.addr, align 4
  store i32 %64, i32* @verbose, align 4
  %65 = load i32, i32* @verbose, align 4
  %tobool104 = icmp ne i32 %65, 0
  br i1 %tobool104, label %cond.false.106, label %cond.true.105

cond.true.105:                                    ; preds = %if.then.99
  br label %cond.end.108

cond.false.106:                                   ; preds = %if.then.99
  %66 = load i32, i32* %move.addr, align 4
  %67 = load i32, i32* %pos, align 4
  %call107 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %66, i32 %67)
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.106, %cond.true.105
  %68 = load i32, i32* %current_verbose, align 4
  store i32 %68, i32* @verbose, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %cond.end.108, %if.then.95
  %69 = load i32, i32* %move.addr, align 4
  %70 = load i32, i32* %color.addr, align 4
  %call110 = call i32 @trymove(i32 %69, i32 %70, i8* null, i32 0, i32 0, i32 0)
  call void @increase_depth_values()
  %71 = load i32, i32* %owl_attacks, align 4
  %cmp111 = icmp ne i32 %71, 5
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.126

land.lhs.true.113:                                ; preds = %if.end.109
  %72 = load i32*, i32** %defense_point.addr, align 8
  %tobool114 = icmp ne i32* %72, null
  br i1 %tobool114, label %if.then.115, label %if.end.126

if.then.115:                                      ; preds = %land.lhs.true.113
  %73 = load i32, i32* %pos, align 4
  %call116 = call i32 @attack(i32 %73, i32* %dpos)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.then.115
  %74 = load i32, i32* %dpos, align 4
  %75 = load i32*, i32** %defense_point.addr, align 8
  store i32 %74, i32* %75, align 4
  br label %if.end.125

if.else.119:                                      ; preds = %if.then.115
  %76 = load i32, i32* %save_verbose.addr, align 4
  store i32 %76, i32* @verbose, align 4
  %77 = load i32, i32* @verbose, align 4
  %tobool120 = icmp ne i32 %77, 0
  br i1 %tobool120, label %cond.false.122, label %cond.true.121

cond.true.121:                                    ; preds = %if.else.119
  br label %cond.end.124

cond.false.122:                                   ; preds = %if.else.119
  %78 = load i32, i32* %pos, align 4
  %79 = load i32, i32* %move.addr, align 4
  %call123 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i32 0, i32 0), i32 %78, i32 %79)
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.121
  %80 = load i32, i32* %current_verbose, align 4
  store i32 %80, i32* @verbose, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.124, %if.then.118
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %land.lhs.true.113, %if.end.109
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.92, %land.lhs.true.86, %land.lhs.true.79, %land.lhs.true.73, %if.else
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.67
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128, %if.then.16
  %81 = load i32, i32* %pos, align 4
  %inc130 = add nsw i32 %81, 1
  store i32 %inc130, i32* %pos, align 4
  br label %for.cond

for.end.131:                                      ; preds = %for.cond
  %82 = load i32, i32* %liberties.addr, align 4
  %cmp132 = icmp eq i32 %82, 2
  br i1 %cmp132, label %if.then.134, label %if.end.178

if.then.134:                                      ; preds = %for.end.131
  %83 = load i32*, i32** %libs.addr, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %83, i64 0
  %84 = load i32, i32* %arrayidx135, align 4
  %85 = load i32, i32* %other, align 4
  %86 = load i8*, i8** %safe_stones.addr, align 8
  %call136 = call i32 @double_atari(i32 %84, i32 %85, float* %d_a_blunder_size, i8* %86)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.138, label %if.else.155

if.then.138:                                      ; preds = %if.then.134
  %87 = load i32*, i32** %defense_point.addr, align 8
  %tobool139 = icmp ne i32* %87, null
  br i1 %tobool139, label %land.lhs.true.140, label %if.end.147

land.lhs.true.140:                                ; preds = %if.then.138
  %88 = load i32*, i32** %libs.addr, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %88, i64 0
  %89 = load i32, i32* %arrayidx141, align 4
  %90 = load i32, i32* %color.addr, align 4
  %call142 = call i32 @safe_move(i32 %89, i32 %90)
  %cmp143 = icmp eq i32 %call142, 5
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %land.lhs.true.140
  %91 = load i32*, i32** %libs.addr, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %91, i64 0
  %92 = load i32, i32* %arrayidx146, align 4
  %93 = load i32*, i32** %defense_point.addr, align 8
  store i32 %92, i32* %93, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %land.lhs.true.140, %if.then.138
  %94 = load float, float* %d_a_blunder_size, align 4
  %95 = load float*, float** %return_value.addr, align 8
  %96 = load float, float* %95, align 4
  %add148 = fadd float %96, %94
  store float %add148, float* %95, align 4
  %97 = load i32, i32* %save_verbose.addr, align 4
  store i32 %97, i32* @verbose, align 4
  %98 = load i32, i32* @verbose, align 4
  %tobool149 = icmp ne i32 %98, 0
  br i1 %tobool149, label %cond.false.151, label %cond.true.150

cond.true.150:                                    ; preds = %if.end.147
  br label %cond.end.154

cond.false.151:                                   ; preds = %if.end.147
  %99 = load i32*, i32** %libs.addr, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx152, align 4
  %call153 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i32 %100)
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.151, %cond.true.150
  %101 = load i32, i32* %current_verbose, align 4
  store i32 %101, i32* @verbose, align 4
  br label %if.end.177

if.else.155:                                      ; preds = %if.then.134
  %102 = load i32*, i32** %libs.addr, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %102, i64 1
  %103 = load i32, i32* %arrayidx156, align 4
  %104 = load i32, i32* %other, align 4
  %105 = load i8*, i8** %safe_stones.addr, align 8
  %call157 = call i32 @double_atari(i32 %103, i32 %104, float* %d_a_blunder_size, i8* %105)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.176

if.then.159:                                      ; preds = %if.else.155
  %106 = load i32*, i32** %defense_point.addr, align 8
  %tobool160 = icmp ne i32* %106, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.168

land.lhs.true.161:                                ; preds = %if.then.159
  %107 = load i32*, i32** %libs.addr, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %107, i64 1
  %108 = load i32, i32* %arrayidx162, align 4
  %109 = load i32, i32* %color.addr, align 4
  %call163 = call i32 @safe_move(i32 %108, i32 %109)
  %cmp164 = icmp eq i32 %call163, 5
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %land.lhs.true.161
  %110 = load i32*, i32** %libs.addr, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %110, i64 1
  %111 = load i32, i32* %arrayidx167, align 4
  %112 = load i32*, i32** %defense_point.addr, align 8
  store i32 %111, i32* %112, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %land.lhs.true.161, %if.then.159
  %113 = load float, float* %d_a_blunder_size, align 4
  %114 = load float*, float** %return_value.addr, align 8
  %115 = load float, float* %114, align 4
  %add169 = fadd float %115, %113
  store float %add169, float* %114, align 4
  %116 = load i32, i32* %save_verbose.addr, align 4
  store i32 %116, i32* @verbose, align 4
  %117 = load i32, i32* @verbose, align 4
  %tobool170 = icmp ne i32 %117, 0
  br i1 %tobool170, label %cond.false.172, label %cond.true.171

cond.true.171:                                    ; preds = %if.end.168
  br label %cond.end.175

cond.false.172:                                   ; preds = %if.end.168
  %118 = load i32*, i32** %libs.addr, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %118, i64 1
  %119 = load i32, i32* %arrayidx173, align 4
  %call174 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i32 %119)
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.172, %cond.true.171
  %120 = load i32, i32* %current_verbose, align 4
  store i32 %120, i32* @verbose, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %cond.end.175, %if.else.155
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %cond.end.154
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.end.131
  call void @decrease_depth_values()
  call void @popgo()
  br label %return

return:                                           ; preds = %if.end.178, %if.then
  ret void
}

declare i32 @atari_atari_blunder_size(i32, i32, i32*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @double_atari(i32 %move, i32 %color, float* %value, i8* %safe_stones) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %value.addr = alloca float*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %dm = alloca i32, align 4
  %dn = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store float* %value, float** %value.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %1, 20
  %sub1 = sub nsw i32 %div, 1
  store i32 %sub1, i32* %m, align 4
  %2 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %2, 20
  %sub2 = sub nsw i32 %rem, 1
  store i32 %sub2, i32* %n, align 4
  %3 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 4, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  store i32 %7, i32* %dm, align 4
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  store i32 %9, i32* %dn, align 4
  %10 = load i32, i32* %m, align 4
  %11 = load i32, i32* %dm, align 4
  %add = add nsw i32 %10, %11
  %mul = mul nsw i32 %add, 20
  %add10 = add nsw i32 21, %mul
  %12 = load i32, i32* %n, align 4
  %13 = load i32, i32* %dn, align 4
  %add11 = add nsw i32 %12, %13
  %add12 = add nsw i32 %add10, %add11
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %cmp16 = icmp eq i32 %conv15, %15
  br i1 %cmp16, label %land.lhs.true, label %if.end.148

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %m, align 4
  %mul18 = mul nsw i32 %16, 20
  %add19 = add nsw i32 21, %mul18
  %17 = load i32, i32* %n, align 4
  %18 = load i32, i32* %dn, align 4
  %add20 = add nsw i32 %17, %18
  %add21 = add nsw i32 %add19, %add20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %20 = load i32, i32* %other, align 4
  %cmp25 = icmp eq i32 %conv24, %20
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.148

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %m, align 4
  %22 = load i32, i32* %dm, align 4
  %add28 = add nsw i32 %21, %22
  %mul29 = mul nsw i32 %add28, 20
  %add30 = add nsw i32 21, %mul29
  %23 = load i32, i32* %n, align 4
  %add31 = add nsw i32 %add30, %23
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %24 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %24 to i32
  %25 = load i32, i32* %other, align 4
  %cmp35 = icmp eq i32 %conv34, %25
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.148

land.lhs.true.37:                                 ; preds = %land.lhs.true.27
  %26 = load i8*, i8** %safe_stones.addr, align 8
  %tobool = icmp ne i8* %26, null
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.55

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %27 = load i32, i32* %m, align 4
  %mul38 = mul nsw i32 %27, 20
  %add39 = add nsw i32 21, %mul38
  %28 = load i32, i32* %n, align 4
  %29 = load i32, i32* %dn, align 4
  %add40 = add nsw i32 %28, %29
  %add41 = add nsw i32 %add39, %add40
  %idxprom42 = sext i32 %add41 to i64
  %30 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %30, i64 %idxprom42
  %31 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %31 to i32
  %tobool45 = icmp ne i32 %conv44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.148

land.lhs.true.46:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %m, align 4
  %33 = load i32, i32* %dm, align 4
  %add47 = add nsw i32 %32, %33
  %mul48 = mul nsw i32 %add47, 20
  %add49 = add nsw i32 21, %mul48
  %34 = load i32, i32* %n, align 4
  %add50 = add nsw i32 %add49, %34
  %idxprom51 = sext i32 %add50 to i64
  %35 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %35, i64 %idxprom51
  %36 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %36 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.148

land.lhs.true.55:                                 ; preds = %land.lhs.true.46, %land.lhs.true.37
  %37 = load i32, i32* %move.addr, align 4
  %38 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool56 = icmp ne i32 %call, 0
  br i1 %tobool56, label %if.then.57, label %if.end.148

if.then.57:                                       ; preds = %land.lhs.true.55
  %39 = load i32, i32* %move.addr, align 4
  %call58 = call i32 @countlib(i32 %39)
  %cmp59 = icmp sgt i32 %call58, 1
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.147

land.lhs.true.61:                                 ; preds = %if.then.57
  %40 = load i32, i32* %m, align 4
  %mul62 = mul nsw i32 %40, 20
  %add63 = add nsw i32 21, %mul62
  %41 = load i32, i32* %n, align 4
  %42 = load i32, i32* %dn, align 4
  %add64 = add nsw i32 %41, %42
  %add65 = add nsw i32 %add63, %add64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %43 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %43 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %if.then.92, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.61
  %44 = load i32, i32* %m, align 4
  %45 = load i32, i32* %dm, align 4
  %add72 = add nsw i32 %44, %45
  %mul73 = mul nsw i32 %add72, 20
  %add74 = add nsw i32 21, %mul73
  %46 = load i32, i32* %n, align 4
  %add75 = add nsw i32 %add74, %46
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %47 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %47 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %if.then.92, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.71
  %48 = load i32, i32* %m, align 4
  %mul82 = mul nsw i32 %48, 20
  %add83 = add nsw i32 21, %mul82
  %49 = load i32, i32* %n, align 4
  %50 = load i32, i32* %dn, align 4
  %add84 = add nsw i32 %49, %50
  %add85 = add nsw i32 %add83, %add84
  %51 = load i32, i32* %m, align 4
  %52 = load i32, i32* %dm, align 4
  %add86 = add nsw i32 %51, %52
  %mul87 = mul nsw i32 %add86, 20
  %add88 = add nsw i32 21, %mul87
  %53 = load i32, i32* %n, align 4
  %add89 = add nsw i32 %add88, %53
  %call90 = call i32 @defend_both(i32 %add85, i32 %add89)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end.147, label %if.then.92

if.then.92:                                       ; preds = %lor.lhs.false.81, %lor.lhs.false.71, %land.lhs.true.61
  call void @popgo()
  %54 = load float*, float** %value.addr, align 8
  %tobool93 = icmp ne float* %54, null
  br i1 %tobool93, label %if.then.94, label %if.end.146

if.then.94:                                       ; preds = %if.then.92
  %55 = load i32, i32* %m, align 4
  %mul95 = mul nsw i32 %55, 20
  %add96 = add nsw i32 21, %mul95
  %56 = load i32, i32* %n, align 4
  %57 = load i32, i32* %dn, align 4
  %add97 = add nsw i32 %56, %57
  %add98 = add nsw i32 %add96, %add97
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom99
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx100, i32 0, i32 2
  %58 = load float, float* %effective_size, align 4
  %59 = load i32, i32* %m, align 4
  %60 = load i32, i32* %dm, align 4
  %add101 = add nsw i32 %59, %60
  %mul102 = mul nsw i32 %add101, 20
  %add103 = add nsw i32 21, %mul102
  %61 = load i32, i32* %n, align 4
  %add104 = add nsw i32 %add103, %61
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom105
  %effective_size107 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx106, i32 0, i32 2
  %62 = load float, float* %effective_size107, align 4
  %cmp108 = fcmp ogt float %58, %62
  br i1 %cmp108, label %if.then.110, label %if.else

if.then.110:                                      ; preds = %if.then.94
  %63 = load i32, i32* %m, align 4
  %mul111 = mul nsw i32 %63, 20
  %add112 = add nsw i32 21, %mul111
  %64 = load i32, i32* %n, align 4
  %65 = load i32, i32* %dn, align 4
  %add113 = add nsw i32 %64, %65
  %add114 = add nsw i32 %add112, %add113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom115
  %effective_size117 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx116, i32 0, i32 2
  %66 = load float, float* %effective_size117, align 4
  %conv118 = fpext float %66 to double
  %mul119 = fmul double 2.000000e+00, %conv118
  %conv120 = fptrunc double %mul119 to float
  %67 = load float*, float** %value.addr, align 8
  store float %conv120, float* %67, align 4
  %68 = load i8*, i8** %safe_stones.addr, align 8
  %tobool121 = icmp ne i8* %68, null
  br i1 %tobool121, label %if.then.122, label %if.end.127

if.then.122:                                      ; preds = %if.then.110
  %69 = load i32, i32* %m, align 4
  %mul123 = mul nsw i32 %69, 20
  %add124 = add nsw i32 21, %mul123
  %70 = load i32, i32* %n, align 4
  %71 = load i32, i32* %dn, align 4
  %add125 = add nsw i32 %70, %71
  %add126 = add nsw i32 %add124, %add125
  %72 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_string(i32 %add126, i8* %72, i8 signext 0)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.122, %if.then.110
  br label %if.end.145

if.else:                                          ; preds = %if.then.94
  %73 = load i32, i32* %m, align 4
  %74 = load i32, i32* %dm, align 4
  %add128 = add nsw i32 %73, %74
  %mul129 = mul nsw i32 %add128, 20
  %add130 = add nsw i32 21, %mul129
  %75 = load i32, i32* %n, align 4
  %add131 = add nsw i32 %add130, %75
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom132
  %effective_size134 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx133, i32 0, i32 2
  %76 = load float, float* %effective_size134, align 4
  %conv135 = fpext float %76 to double
  %mul136 = fmul double 2.000000e+00, %conv135
  %conv137 = fptrunc double %mul136 to float
  %77 = load float*, float** %value.addr, align 8
  store float %conv137, float* %77, align 4
  %78 = load i8*, i8** %safe_stones.addr, align 8
  %tobool138 = icmp ne i8* %78, null
  br i1 %tobool138, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.else
  %79 = load i32, i32* %m, align 4
  %80 = load i32, i32* %dm, align 4
  %add140 = add nsw i32 %79, %80
  %mul141 = mul nsw i32 %add140, 20
  %add142 = add nsw i32 21, %mul141
  %81 = load i32, i32* %n, align 4
  %add143 = add nsw i32 %add142, %81
  %82 = load i8*, i8** %safe_stones.addr, align 8
  call void @mark_string(i32 %add143, i8* %82, i8 signext 0)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.else
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.127
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.92
  store i32 1, i32* %retval
  br label %return

if.end.147:                                       ; preds = %lor.lhs.false.81, %if.then.57
  call void @popgo()
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.55, %land.lhs.true.46, %lor.lhs.false, %land.lhs.true.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %83 = load i32, i32* %k, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.146, %if.then
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @countlib(i32) #1

declare void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @unconditional_life(i32* %unconditional_territory, i32 %color) #0 {
entry:
  %unconditional_territory.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %something_captured = alloca i32, align 4
  %found_one = alloca i32, align 4
  %moves_played = alloca i32, align 4
  %save_moves = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  %other = alloca i32, align 4
  %success = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %aopen = alloca i32, align 4
  %bopen = alloca i32, align 4
  %alib = alloca i32, align 4
  %blib = alloca i32, align 4
  store i32* %unconditional_territory, i32** %unconditional_territory.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32 1, i32* %something_captured, align 4
  store i32 0, i32* %moves_played, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.44, %entry
  %1 = load i32, i32* %something_captured, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end.45

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %something_captured, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %while.body
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp ne i32 %conv, %5
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i32, i32* %pos, align 4
  %7 = load i32, i32* %pos, align 4
  %call = call i32 @is_worm_origin(i32 %6, i32 %7)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.42

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call4 = call i32 @findlib(i32 %8, i32 241, i32* %arraydecay)
  store i32 %call4, i32* %liberties, align 4
  %9 = load i32, i32* %moves_played, align 4
  store i32 %9, i32* %save_moves, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %liberties, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %12 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  %14 = load i32, i32* %other, align 4
  %15 = load i32, i32* %pos, align 4
  %call11 = call i32 @trymove(i32 %13, i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %15, i32 0, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.8
  %16 = load i32, i32* %moves_played, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %moves_played, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %17 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %18 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %19 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.end
  store i32 1, i32* %something_captured, align 4
  br label %if.end.41

if.else:                                          ; preds = %for.end
  %20 = load i32, i32* %pos, align 4
  %arraydecay22 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call23 = call i32 @findlib(i32 %20, i32 2, i32* %arraydecay22)
  %cmp24 = icmp eq i32 %call23, 1
  br i1 %cmp24, label %if.then.26, label %if.else.35

if.then.26:                                       ; preds = %if.else
  %arrayidx27 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 0
  %21 = load i32, i32* %arrayidx27, align 4
  %22 = load i32, i32* %other, align 4
  %call28 = call i32 @tryko(i32 %21, i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0)
  store i32 %call28, i32* %success, align 4
  %23 = load i32, i32* %success, align 4
  %tobool29 = icmp ne i32 %23, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.then.26
  br label %if.end.32

if.else.31:                                       ; preds = %if.then.26
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %24 = load i32, i32* %moves_played, align 4
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, i32* %moves_played, align 4
  %25 = load i32, i32* %something_captured, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, i32* %something_captured, align 4
  br label %if.end.40

if.else.35:                                       ; preds = %if.else
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.39, %if.else.35
  %26 = load i32, i32* %moves_played, align 4
  %27 = load i32, i32* %save_moves, align 4
  %cmp37 = icmp sgt i32 %26, %27
  br i1 %cmp37, label %while.body.39, label %while.end

while.body.39:                                    ; preds = %while.cond.36
  call void @popgo()
  %28 = load i32, i32* %moves_played, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %moves_played, align 4
  br label %while.cond.36

while.end:                                        ; preds = %while.cond.36
  br label %if.end.40

if.end.40:                                        ; preds = %while.end, %if.end.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.21
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41, %if.then
  %29 = load i32, i32* %pos, align 4
  %inc43 = add nsw i32 %29, 1
  store i32 %inc43, i32* %pos, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  br label %while.cond

while.end.45:                                     ; preds = %while.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.76, %while.end.45
  %30 = load i32, i32* %pos, align 4
  %cmp47 = icmp slt i32 %30, 400
  br i1 %cmp47, label %for.body.49, label %for.end.78

for.body.49:                                      ; preds = %for.cond.46
  %31 = load i32, i32* %pos, align 4
  %idxprom50 = sext i32 %31 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %32 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %32 to i32
  %33 = load i32, i32* %color.addr, align 4
  %cmp53 = icmp ne i32 %conv52, %33
  br i1 %cmp53, label %if.then.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %for.body.49
  %34 = load i32, i32* %pos, align 4
  %35 = load i32, i32* %pos, align 4
  %call56 = call i32 @is_worm_origin(i32 %34, i32 %35)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %lor.lhs.false.55, %for.body.49
  br label %for.inc.76

if.end.59:                                        ; preds = %lor.lhs.false.55
  %36 = load i32, i32* %pos, align 4
  %arraydecay60 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call61 = call i32 @findlib(i32 %36, i32 241, i32* %arraydecay60)
  store i32 %call61, i32* %liberties, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.73, %if.end.59
  %37 = load i32, i32* %k, align 4
  %38 = load i32, i32* %liberties, align 4
  %cmp63 = icmp slt i32 %37, %38
  br i1 %cmp63, label %for.body.65, label %for.end.75

for.body.65:                                      ; preds = %for.cond.62
  %39 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %39 to i64
  %arrayidx67 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom66
  %40 = load i32, i32* %arrayidx67, align 4
  %41 = load i32, i32* %other, align 4
  %42 = load i32, i32* %pos, align 4
  %call68 = call i32 @trymove(i32 %40, i32 %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %42, i32 0, i32 0)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %for.body.65
  %43 = load i32, i32* %moves_played, align 4
  %inc71 = add nsw i32 %43, 1
  store i32 %inc71, i32* %moves_played, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.body.65
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %44 = load i32, i32* %k, align 4
  %inc74 = add nsw i32 %44, 1
  store i32 %inc74, i32* %k, align 4
  br label %for.cond.62

for.end.75:                                       ; preds = %for.cond.62
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75, %if.then.58
  %45 = load i32, i32* %pos, align 4
  %inc77 = add nsw i32 %45, 1
  store i32 %inc77, i32* %pos, align 4
  br label %for.cond.46

for.end.78:                                       ; preds = %for.cond.46
  store i32 1, i32* %found_one, align 4
  br label %while.cond.79

while.cond.79:                                    ; preds = %for.end.107, %for.end.78
  %46 = load i32, i32* %found_one, align 4
  %tobool80 = icmp ne i32 %46, 0
  br i1 %tobool80, label %while.body.81, label %while.end.108

while.body.81:                                    ; preds = %while.cond.79
  store i32 0, i32* %found_one, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.105, %while.body.81
  %47 = load i32, i32* %pos, align 4
  %cmp83 = icmp slt i32 %47, 400
  br i1 %cmp83, label %for.body.85, label %for.end.107

for.body.85:                                      ; preds = %for.cond.82
  %48 = load i32, i32* %pos, align 4
  %idxprom86 = sext i32 %48 to i64
  %arrayidx87 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom86
  %49 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %49 to i32
  %50 = load i32, i32* %other, align 4
  %cmp89 = icmp ne i32 %conv88, %50
  br i1 %cmp89, label %if.then.95, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %for.body.85
  %51 = load i32, i32* %pos, align 4
  %call92 = call i32 @countlib(i32 %51)
  %cmp93 = icmp sgt i32 %call92, 1
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %lor.lhs.false.91, %for.body.85
  br label %for.inc.105

if.end.96:                                        ; preds = %lor.lhs.false.91
  %52 = load i32, i32* %pos, align 4
  %arraydecay97 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call98 = call i32 @findlib(i32 %52, i32 1, i32* %arraydecay97)
  %arrayidx99 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 0
  %53 = load i32, i32* %arrayidx99, align 4
  %54 = load i32, i32* %other, align 4
  %55 = load i32, i32* %pos, align 4
  %call100 = call i32 @trymove(i32 %53, i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %55, i32 0, i32 0)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.end.96
  %56 = load i32, i32* %moves_played, align 4
  %inc103 = add nsw i32 %56, 1
  store i32 %inc103, i32* %moves_played, align 4
  store i32 1, i32* %found_one, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.end.96
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104, %if.then.95
  %57 = load i32, i32* %pos, align 4
  %inc106 = add nsw i32 %57, 1
  store i32 %inc106, i32* %pos, align 4
  br label %for.cond.82

for.end.107:                                      ; preds = %for.cond.82
  br label %while.cond.79

while.end.108:                                    ; preds = %while.cond.79
  store i32 21, i32* %pos, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.160, %while.end.108
  %58 = load i32, i32* %pos, align 4
  %cmp110 = icmp slt i32 %58, 400
  br i1 %cmp110, label %for.body.112, label %for.end.162

for.body.112:                                     ; preds = %for.cond.109
  %59 = load i32, i32* %pos, align 4
  %idxprom113 = sext i32 %59 to i64
  %arrayidx114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom113
  %60 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %60 to i32
  %61 = load i32, i32* %other, align 4
  %cmp116 = icmp ne i32 %conv115, %61
  br i1 %cmp116, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %for.body.112
  %62 = load i32, i32* %pos, align 4
  %call119 = call i32 @countlib(i32 %62)
  %cmp120 = icmp ne i32 %call119, 2
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %lor.lhs.false.118, %for.body.112
  br label %for.inc.160

if.end.123:                                       ; preds = %lor.lhs.false.118
  %63 = load i32, i32* %pos, align 4
  %arraydecay124 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call125 = call i32 @findlib(i32 %63, i32 2, i32* %arraydecay124)
  %arrayidx126 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 0
  %64 = load i32, i32* %arrayidx126, align 4
  store i32 %64, i32* %apos, align 4
  %arrayidx127 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 1
  %65 = load i32, i32* %arrayidx127, align 4
  store i32 %65, i32* %bpos, align 4
  %66 = load i32, i32* %apos, align 4
  %div = sdiv i32 %66, 20
  %sub128 = sub nsw i32 %div, 1
  %67 = load i32, i32* %bpos, align 4
  %div129 = sdiv i32 %67, 20
  %sub130 = sub nsw i32 %div129, 1
  %sub131 = sub nsw i32 %sub128, %sub130
  %call132 = call i32 @abs(i32 %sub131) #5
  %68 = load i32, i32* %apos, align 4
  %rem = srem i32 %68, 20
  %sub133 = sub nsw i32 %rem, 1
  %69 = load i32, i32* %bpos, align 4
  %rem134 = srem i32 %69, 20
  %sub135 = sub nsw i32 %rem134, 1
  %sub136 = sub nsw i32 %sub133, %sub135
  %call137 = call i32 @abs(i32 %sub136) #5
  %add = add nsw i32 %call132, %call137
  %cmp138 = icmp ne i32 %add, 1
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.123
  br label %for.inc.160

if.end.141:                                       ; preds = %if.end.123
  %70 = load i32, i32* %apos, align 4
  %71 = load i32, i32* %color.addr, align 4
  %call142 = call i32 @approxlib(i32 %70, i32 %71, i32 4, i32* null)
  store i32 %call142, i32* %aopen, align 4
  %72 = load i32, i32* %bpos, align 4
  %73 = load i32, i32* %color.addr, align 4
  %call143 = call i32 @approxlib(i32 %72, i32 %73, i32 4, i32* null)
  store i32 %call143, i32* %bopen, align 4
  %74 = load i32, i32* %apos, align 4
  %75 = load i32, i32* %other, align 4
  %call144 = call i32 @approxlib(i32 %74, i32 %75, i32 4, i32* null)
  store i32 %call144, i32* %alib, align 4
  %76 = load i32, i32* %bpos, align 4
  %77 = load i32, i32* %other, align 4
  %call145 = call i32 @approxlib(i32 %76, i32 %77, i32 4, i32* null)
  store i32 %call145, i32* %blib, align 4
  %78 = load i32, i32* %aopen, align 4
  %79 = load i32, i32* %bopen, align 4
  %cmp146 = icmp sgt i32 %78, %79
  br i1 %cmp146, label %if.then.153, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.end.141
  %80 = load i32, i32* %aopen, align 4
  %81 = load i32, i32* %bopen, align 4
  %cmp149 = icmp eq i32 %80, %81
  br i1 %cmp149, label %land.lhs.true, label %if.else.156

land.lhs.true:                                    ; preds = %lor.lhs.false.148
  %82 = load i32, i32* %alib, align 4
  %83 = load i32, i32* %blib, align 4
  %cmp151 = icmp sge i32 %82, %83
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %land.lhs.true, %if.end.141
  %84 = load i32, i32* %apos, align 4
  %85 = load i32, i32* %other, align 4
  %86 = load i32, i32* %pos, align 4
  %call154 = call i32 @trymove(i32 %84, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %86, i32 0, i32 0)
  %87 = load i32, i32* %moves_played, align 4
  %inc155 = add nsw i32 %87, 1
  store i32 %inc155, i32* %moves_played, align 4
  br label %if.end.159

if.else.156:                                      ; preds = %land.lhs.true, %lor.lhs.false.148
  %88 = load i32, i32* %bpos, align 4
  %89 = load i32, i32* %other, align 4
  %90 = load i32, i32* %pos, align 4
  %call157 = call i32 @trymove(i32 %88, i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 %90, i32 0, i32 0)
  %91 = load i32, i32* %moves_played, align 4
  %inc158 = add nsw i32 %91, 1
  store i32 %inc158, i32* %moves_played, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.153
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.159, %if.then.140, %if.then.122
  %92 = load i32, i32* %pos, align 4
  %inc161 = add nsw i32 %92, 1
  store i32 %inc161, i32* %pos, align 4
  br label %for.cond.109

for.end.162:                                      ; preds = %for.cond.109
  %93 = load i32*, i32** %unconditional_territory.addr, align 8
  %94 = bitcast i32* %93 to i8*
  call void @llvm.memset.p0i8.i64(i8* %94, i8 0, i64 1600, i32 4, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.212, %for.end.162
  %95 = load i32, i32* %pos, align 4
  %cmp164 = icmp slt i32 %95, 400
  br i1 %cmp164, label %for.body.166, label %for.end.214

for.body.166:                                     ; preds = %for.cond.163
  %96 = load i32, i32* %pos, align 4
  %idxprom167 = sext i32 %96 to i64
  %arrayidx168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom167
  %97 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %97 to i32
  %98 = load i32, i32* %color.addr, align 4
  %cmp170 = icmp eq i32 %conv169, %98
  br i1 %cmp170, label %if.then.172, label %if.else.192

if.then.172:                                      ; preds = %for.body.166
  %99 = load i32, i32* %pos, align 4
  %idxprom173 = sext i32 %99 to i64
  %100 = load i32*, i32** %unconditional_territory.addr, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %100, i64 %idxprom173
  store i32 1, i32* %arrayidx174, align 4
  %101 = load i32, i32* %pos, align 4
  %102 = load i32, i32* %pos, align 4
  %call175 = call i32 @is_worm_origin(i32 %101, i32 %102)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.191

if.then.177:                                      ; preds = %if.then.172
  %103 = load i32, i32* %pos, align 4
  %arraydecay178 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call179 = call i32 @findlib(i32 %103, i32 241, i32* %arraydecay178)
  store i32 %call179, i32* %liberties, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.188, %if.then.177
  %104 = load i32, i32* %k, align 4
  %105 = load i32, i32* %liberties, align 4
  %cmp181 = icmp slt i32 %104, %105
  br i1 %cmp181, label %for.body.183, label %for.end.190

for.body.183:                                     ; preds = %for.cond.180
  %106 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %106 to i64
  %arrayidx185 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom184
  %107 = load i32, i32* %arrayidx185, align 4
  %idxprom186 = sext i32 %107 to i64
  %108 = load i32*, i32** %unconditional_territory.addr, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %108, i64 %idxprom186
  store i32 2, i32* %arrayidx187, align 4
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.183
  %109 = load i32, i32* %k, align 4
  %inc189 = add nsw i32 %109, 1
  store i32 %inc189, i32* %k, align 4
  br label %for.cond.180

for.end.190:                                      ; preds = %for.cond.180
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %if.then.172
  br label %if.end.211

if.else.192:                                      ; preds = %for.body.166
  %110 = load i32, i32* %pos, align 4
  %idxprom193 = sext i32 %110 to i64
  %arrayidx194 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom193
  %111 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %111 to i32
  %112 = load i32, i32* %other, align 4
  %cmp196 = icmp eq i32 %conv195, %112
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.210

land.lhs.true.198:                                ; preds = %if.else.192
  %113 = load i32, i32* %pos, align 4
  %call199 = call i32 @countlib(i32 %113)
  %cmp200 = icmp eq i32 %call199, 1
  br i1 %cmp200, label %if.then.202, label %if.end.210

if.then.202:                                      ; preds = %land.lhs.true.198
  %114 = load i32, i32* %pos, align 4
  %idxprom203 = sext i32 %114 to i64
  %115 = load i32*, i32** %unconditional_territory.addr, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %115, i64 %idxprom203
  store i32 2, i32* %arrayidx204, align 4
  %116 = load i32, i32* %pos, align 4
  %arraydecay205 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call206 = call i32 @findlib(i32 %116, i32 1, i32* %arraydecay205)
  %arrayidx207 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 0
  %117 = load i32, i32* %arrayidx207, align 4
  %idxprom208 = sext i32 %117 to i64
  %118 = load i32*, i32** %unconditional_territory.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %118, i64 %idxprom208
  store i32 2, i32* %arrayidx209, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.202, %land.lhs.true.198, %if.else.192
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.191
  br label %for.inc.212

for.inc.212:                                      ; preds = %if.end.211
  %119 = load i32, i32* %pos, align 4
  %inc213 = add nsw i32 %119, 1
  store i32 %inc213, i32* %pos, align 4
  br label %for.cond.163

for.end.214:                                      ; preds = %for.cond.163
  br label %while.cond.215

while.cond.215:                                   ; preds = %while.body.218, %for.end.214
  %120 = load i32, i32* %moves_played, align 4
  %cmp216 = icmp sgt i32 %120, 0
  br i1 %cmp216, label %while.body.218, label %while.end.220

while.body.218:                                   ; preds = %while.cond.215
  call void @popgo()
  %121 = load i32, i32* %moves_played, align 4
  %dec219 = add nsw i32 %121, -1
  store i32 %dec219, i32* %moves_played, align 4
  br label %while.cond.215

while.end.220:                                    ; preds = %while.cond.215
  ret void
}

declare i32 @is_worm_origin(i32, i32) #1

declare i32 @findlib(i32, i32, i32*) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

declare i32 @approxlib(i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @who_wins(i32 %color, %struct._IO_FILE* %outfile) #0 {
entry:
  %color.addr = alloca i32, align 4
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %result = alloca float, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* %color.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call float @estimate_score(float* null, float* null)
  store float %call, float* %result, align 4
  %2 = load float, float* %result, align 4
  %conv = fpext float %2 to double
  %cmp2 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  %5 = load float, float* %result, align 4
  %conv6 = fpext float %5 to double
  %cmp7 = fcmp ogt double %conv6, 0.000000e+00
  %cond = select i1 %cmp7, i32 87, i32 66
  %6 = load float, float* %result, align 4
  %cmp9 = fcmp olt float %6, 0.000000e+00
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load float, float* %result, align 4
  %sub = fsub float -0.000000e+00, %7
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %8 = load float, float* %result, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi float [ %sub, %cond.true ], [ %8, %cond.false ]
  %conv12 = fpext float %cond11 to double
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 %cond, double %conv12)
  br label %if.end.14

if.end.14:                                        ; preds = %cond.end, %if.then.4
  ret void
}

declare float @estimate_score(float*, float*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @find_superstring(i32 %str, i32* %num_stones, i32* %stones) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_stones.addr = alloca i32*, align 8
  %stones.addr = alloca i32*, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_stones, i32** %num_stones.addr, align 8
  store i32* %stones, i32** %stones.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_stones.addr, align 8
  %2 = load i32*, i32** %stones.addr, align 8
  call void @do_find_superstring(i32 %0, i32* %1, i32* %2, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_find_superstring(i32 %str, i32* %num_stones, i32* %stones, i32* %num_libs, i32* %libs, i32 %maxlibs, i32* %num_adj, i32* %adjs, i32 %liberty_cap, i32 %proper, i32 %type) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_stones.addr = alloca i32*, align 8
  %stones.addr = alloca i32*, align 8
  %num_libs.addr = alloca i32*, align 8
  %libs.addr = alloca i32*, align 8
  %maxlibs.addr = alloca i32, align 4
  %num_adj.addr = alloca i32*, align 8
  %adjs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  %proper.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %num_my_stones = alloca i32, align 4
  %my_stones = alloca [361 x i32], align 16
  %mx = alloca [400 x i8], align 16
  %ml = alloca [400 x i8], align 16
  %ma = alloca [400 x i8], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %right = alloca i32, align 4
  %up = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  %gpos = alloca i32, align 4
  %unsafe_move = alloca i32, align 4
  %upos = alloca i32, align 4
  %lunch_stones = alloca [361 x i32], align 16
  %num_lunch_stones = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %vpos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_stones, i32** %num_stones.addr, align 8
  store i32* %stones, i32** %stones.addr, align 8
  store i32* %num_libs, i32** %num_libs.addr, align 8
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %maxlibs, i32* %maxlibs.addr, align 4
  store i32* %num_adj, i32** %num_adj.addr, align 8
  store i32* %adjs, i32** %adjs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  store i32 %proper, i32* %proper.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = bitcast [400 x i8]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 400, i32 16, i1 false)
  %4 = bitcast [400 x i8]* %ml to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 400, i32 16, i1 false)
  %5 = bitcast [400 x i8]* %ma to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 400, i32 16, i1 false)
  %6 = load i32*, i32** %num_stones.addr, align 8
  %tobool = icmp ne i32* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %num_stones.addr, align 8
  store i32 0, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32*, i32** %num_libs.addr, align 8
  %tobool1 = icmp ne i32* %8, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load i32*, i32** %num_libs.addr, align 8
  store i32 0, i32* %9, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load i32*, i32** %num_adj.addr, align 8
  %tobool4 = icmp ne i32* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %11 = load i32*, i32** %num_adj.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  store i32 0, i32* %num_my_stones, align 4
  %12 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %13 = load i32*, i32** %num_stones.addr, align 8
  %14 = load i32*, i32** %stones.addr, align 8
  %15 = load i32*, i32** %num_libs.addr, align 8
  %16 = load i32*, i32** %libs.addr, align 8
  %17 = load i32, i32* %maxlibs.addr, align 4
  %18 = load i32*, i32** %num_adj.addr, align 8
  %19 = load i32*, i32** %adjs.addr, align 8
  %20 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay7 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  %21 = load i32, i32* %proper.addr, align 4
  %tobool10 = icmp ne i32 %21, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  call void @superstring_add_string(i32 %12, i32* %num_my_stones, i32* %arraydecay, i32* %13, i32* %14, i32* %15, i32* %16, i32 %17, i32* %18, i32* %19, i32 %20, i8* %arraydecay7, i8* %arraydecay8, i8* %arraydecay9, i32 %lnot.ext)
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.262, %if.end.6
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %num_my_stones, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end.264

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i64 %idxprom12
  %25 = load i32, i32* %arrayidx13, align 4
  store i32 %25, i32* %pos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.259, %for.body
  %26 = load i32, i32* %k, align 4
  %cmp15 = icmp slt i32 %26, 4
  br i1 %cmp15, label %for.body.17, label %for.end.261

for.body.17:                                      ; preds = %for.cond.14
  %27 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom18
  %28 = load i32, i32* %arrayidx19, align 4
  store i32 %28, i32* %right, align 4
  %29 = load i32, i32* %k, align 4
  %add = add nsw i32 %29, 1
  %rem = srem i32 %add, 4
  %idxprom20 = sext i32 %rem to i64
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  store i32 %30, i32* %up, align 4
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %right, align 4
  %add22 = add nsw i32 %31, %32
  store i32 %add22, i32* %apos, align 4
  %33 = load i32, i32* %pos, align 4
  %34 = load i32, i32* %right, align 4
  %add23 = add nsw i32 %33, %34
  %35 = load i32, i32* %up, align 4
  %add24 = add nsw i32 %add23, %35
  store i32 %add24, i32* %bpos, align 4
  %36 = load i32, i32* %pos, align 4
  %37 = load i32, i32* %right, align 4
  %mul = mul nsw i32 2, %37
  %add25 = add nsw i32 %36, %mul
  store i32 %add25, i32* %cpos, align 4
  %38 = load i32, i32* %pos, align 4
  %39 = load i32, i32* %right, align 4
  %add26 = add nsw i32 %38, %39
  %40 = load i32, i32* %up, align 4
  %sub27 = sub nsw i32 %add26, %40
  store i32 %sub27, i32* %dpos, align 4
  %41 = load i32, i32* %pos, align 4
  %42 = load i32, i32* %up, align 4
  %mul28 = mul nsw i32 2, %42
  %add29 = add nsw i32 %41, %mul28
  store i32 %add29, i32* %epos, align 4
  %43 = load i32, i32* %pos, align 4
  %44 = load i32, i32* %right, align 4
  %add30 = add nsw i32 %43, %44
  %45 = load i32, i32* %up, align 4
  %mul31 = mul nsw i32 2, %45
  %add32 = add nsw i32 %add30, %mul31
  store i32 %add32, i32* %fpos, align 4
  %46 = load i32, i32* %pos, align 4
  %47 = load i32, i32* %up, align 4
  %add33 = add nsw i32 %46, %47
  store i32 %add33, i32* %gpos, align 4
  %48 = load i32, i32* %apos, align 4
  %idxprom34 = sext i32 %48 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %49 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %49 to i32
  %cmp37 = icmp ne i32 %conv36, 3
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %for.body.17
  br label %for.inc.259

if.end.40:                                        ; preds = %for.body.17
  %50 = load i32, i32* %apos, align 4
  %idxprom41 = sext i32 %50 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %51 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %51 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.110

if.then.46:                                       ; preds = %if.end.40
  %52 = load i32, i32* %type.addr, align 4
  %cmp47 = icmp eq i32 %52, 2
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.46
  %53 = load i32, i32* %apos, align 4
  %54 = load i32, i32* %other, align 4
  %call = call i32 @approxlib(i32 %53, i32 %54, i32 2, i32* null)
  %cmp50 = icmp slt i32 %call, 2
  %conv51 = zext i1 %cmp50 to i32
  store i32 %conv51, i32* %unsafe_move, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.then.46
  %55 = load i32, i32* %apos, align 4
  %56 = load i32, i32* %other, align 4
  %call52 = call i32 @is_self_atari(i32 %55, i32 %56)
  store i32 %call52, i32* %unsafe_move, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.49
  %57 = load i32, i32* %unsafe_move, align 4
  %tobool54 = icmp ne i32 %57, 0
  br i1 %tobool54, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.end.53
  %58 = load i32, i32* %type.addr, align 4
  %cmp55 = icmp eq i32 %58, 1
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.61

land.lhs.true.57:                                 ; preds = %land.lhs.true
  %59 = load i32, i32* %apos, align 4
  %60 = load i32, i32* %other, align 4
  %call58 = call i32 @is_ko(i32 %59, i32 %60, i32* null)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.57
  store i32 0, i32* %unsafe_move, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %land.lhs.true.57, %land.lhs.true, %if.end.53
  %61 = load i32, i32* %unsafe_move, align 4
  %tobool62 = icmp ne i32 %61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.109

if.then.63:                                       ; preds = %if.end.61
  %62 = load i32, i32* %bpos, align 4
  %idxprom64 = sext i32 %62 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %63 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %63 to i32
  %64 = load i32, i32* %color, align 4
  %cmp67 = icmp eq i32 %conv66, %64
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.78

land.lhs.true.69:                                 ; preds = %if.then.63
  %65 = load i32, i32* %bpos, align 4
  %idxprom70 = sext i32 %65 to i64
  %arrayidx71 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom70
  %66 = load i8, i8* %arrayidx71, align 1
  %tobool72 = icmp ne i8 %66, 0
  br i1 %tobool72, label %if.end.78, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.69
  %67 = load i32, i32* %bpos, align 4
  %arraydecay74 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %68 = load i32*, i32** %num_stones.addr, align 8
  %69 = load i32*, i32** %stones.addr, align 8
  %70 = load i32*, i32** %num_libs.addr, align 8
  %71 = load i32*, i32** %libs.addr, align 8
  %72 = load i32, i32* %maxlibs.addr, align 4
  %73 = load i32*, i32** %num_adj.addr, align 8
  %74 = load i32*, i32** %adjs.addr, align 8
  %75 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay75 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay76 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %67, i32* %num_my_stones, i32* %arraydecay74, i32* %68, i32* %69, i32* %70, i32* %71, i32 %72, i32* %73, i32* %74, i32 %75, i8* %arraydecay75, i8* %arraydecay76, i8* %arraydecay77, i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %land.lhs.true.69, %if.then.63
  %76 = load i32, i32* %cpos, align 4
  %idxprom79 = sext i32 %76 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %77 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %77 to i32
  %78 = load i32, i32* %color, align 4
  %cmp82 = icmp eq i32 %conv81, %78
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.93

land.lhs.true.84:                                 ; preds = %if.end.78
  %79 = load i32, i32* %cpos, align 4
  %idxprom85 = sext i32 %79 to i64
  %arrayidx86 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom85
  %80 = load i8, i8* %arrayidx86, align 1
  %tobool87 = icmp ne i8 %80, 0
  br i1 %tobool87, label %if.end.93, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.84
  %81 = load i32, i32* %cpos, align 4
  %arraydecay89 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %82 = load i32*, i32** %num_stones.addr, align 8
  %83 = load i32*, i32** %stones.addr, align 8
  %84 = load i32*, i32** %num_libs.addr, align 8
  %85 = load i32*, i32** %libs.addr, align 8
  %86 = load i32, i32* %maxlibs.addr, align 4
  %87 = load i32*, i32** %num_adj.addr, align 8
  %88 = load i32*, i32** %adjs.addr, align 8
  %89 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay90 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay92 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %81, i32* %num_my_stones, i32* %arraydecay89, i32* %82, i32* %83, i32* %84, i32* %85, i32 %86, i32* %87, i32* %88, i32 %89, i8* %arraydecay90, i8* %arraydecay91, i8* %arraydecay92, i32 1)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %land.lhs.true.84, %if.end.78
  %90 = load i32, i32* %dpos, align 4
  %idxprom94 = sext i32 %90 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %91 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %91 to i32
  %92 = load i32, i32* %color, align 4
  %cmp97 = icmp eq i32 %conv96, %92
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.108

land.lhs.true.99:                                 ; preds = %if.end.93
  %93 = load i32, i32* %dpos, align 4
  %idxprom100 = sext i32 %93 to i64
  %arrayidx101 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom100
  %94 = load i8, i8* %arrayidx101, align 1
  %tobool102 = icmp ne i8 %94, 0
  br i1 %tobool102, label %if.end.108, label %if.then.103

if.then.103:                                      ; preds = %land.lhs.true.99
  %95 = load i32, i32* %dpos, align 4
  %arraydecay104 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %96 = load i32*, i32** %num_stones.addr, align 8
  %97 = load i32*, i32** %stones.addr, align 8
  %98 = load i32*, i32** %num_libs.addr, align 8
  %99 = load i32*, i32** %libs.addr, align 8
  %100 = load i32, i32* %maxlibs.addr, align 4
  %101 = load i32*, i32** %num_adj.addr, align 8
  %102 = load i32*, i32** %adjs.addr, align 8
  %103 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay105 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay106 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay107 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %95, i32* %num_my_stones, i32* %arraydecay104, i32* %96, i32* %97, i32* %98, i32* %99, i32 %100, i32* %101, i32* %102, i32 %103, i8* %arraydecay105, i8* %arraydecay106, i8* %arraydecay107, i32 1)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %land.lhs.true.99, %if.end.93
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.61
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.40
  %104 = load i32, i32* %apos, align 4
  %idxprom111 = sext i32 %104 to i64
  %arrayidx112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom111
  %105 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %105 to i32
  %106 = load i32, i32* %color, align 4
  %cmp114 = icmp eq i32 %conv113, %106
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.149

land.lhs.true.116:                                ; preds = %if.end.110
  %107 = load i32, i32* %bpos, align 4
  %idxprom117 = sext i32 %107 to i64
  %arrayidx118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom117
  %108 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %108 to i32
  %cmp120 = icmp eq i32 %conv119, 0
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.149

land.lhs.true.122:                                ; preds = %land.lhs.true.116
  %109 = load i32, i32* %fpos, align 4
  %idxprom123 = sext i32 %109 to i64
  %arrayidx124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom123
  %110 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %110 to i32
  %111 = load i32, i32* %color, align 4
  %cmp126 = icmp eq i32 %conv125, %111
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.149

land.lhs.true.128:                                ; preds = %land.lhs.true.122
  %112 = load i32, i32* %epos, align 4
  %idxprom129 = sext i32 %112 to i64
  %arrayidx130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom129
  %113 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %113 to i32
  %114 = load i32, i32* %color, align 4
  %cmp132 = icmp eq i32 %conv131, %114
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.149

land.lhs.true.134:                                ; preds = %land.lhs.true.128
  %115 = load i32, i32* %epos, align 4
  %idxprom135 = sext i32 %115 to i64
  %arrayidx136 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom135
  %116 = load i8, i8* %arrayidx136, align 1
  %tobool137 = icmp ne i8 %116, 0
  br i1 %tobool137, label %if.end.149, label %land.lhs.true.138

land.lhs.true.138:                                ; preds = %land.lhs.true.134
  %117 = load i32, i32* %gpos, align 4
  %idxprom139 = sext i32 %117 to i64
  %arrayidx140 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom139
  %118 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %118 to i32
  %cmp142 = icmp eq i32 %conv141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.149

if.then.144:                                      ; preds = %land.lhs.true.138
  %119 = load i32, i32* %epos, align 4
  %arraydecay145 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %120 = load i32*, i32** %num_stones.addr, align 8
  %121 = load i32*, i32** %stones.addr, align 8
  %122 = load i32*, i32** %num_libs.addr, align 8
  %123 = load i32*, i32** %libs.addr, align 8
  %124 = load i32, i32* %maxlibs.addr, align 4
  %125 = load i32*, i32** %num_adj.addr, align 8
  %126 = load i32*, i32** %adjs.addr, align 8
  %127 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay146 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay148 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %119, i32* %num_my_stones, i32* %arraydecay145, i32* %120, i32* %121, i32* %122, i32* %123, i32 %124, i32* %125, i32* %126, i32 %127, i8* %arraydecay146, i8* %arraydecay147, i8* %arraydecay148, i32 1)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.144, %land.lhs.true.138, %land.lhs.true.134, %land.lhs.true.128, %land.lhs.true.122, %land.lhs.true.116, %if.end.110
  %128 = load i32, i32* %bpos, align 4
  %idxprom150 = sext i32 %128 to i64
  %arrayidx151 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom150
  %129 = load i8, i8* %arrayidx151, align 1
  %conv152 = zext i8 %129 to i32
  %130 = load i32, i32* %color, align 4
  %cmp153 = icmp eq i32 %conv152, %130
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.176

land.lhs.true.155:                                ; preds = %if.end.149
  %131 = load i32, i32* %bpos, align 4
  %idxprom156 = sext i32 %131 to i64
  %arrayidx157 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom156
  %132 = load i8, i8* %arrayidx157, align 1
  %tobool158 = icmp ne i8 %132, 0
  br i1 %tobool158, label %if.end.176, label %land.lhs.true.159

land.lhs.true.159:                                ; preds = %land.lhs.true.155
  %133 = load i32, i32* %apos, align 4
  %idxprom160 = sext i32 %133 to i64
  %arrayidx161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom160
  %134 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %134 to i32
  %cmp163 = icmp eq i32 %conv162, 0
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.176

land.lhs.true.165:                                ; preds = %land.lhs.true.159
  %135 = load i32, i32* %gpos, align 4
  %idxprom166 = sext i32 %135 to i64
  %arrayidx167 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom166
  %136 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %136 to i32
  %cmp169 = icmp eq i32 %conv168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.176

if.then.171:                                      ; preds = %land.lhs.true.165
  %137 = load i32, i32* %bpos, align 4
  %arraydecay172 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %138 = load i32*, i32** %num_stones.addr, align 8
  %139 = load i32*, i32** %stones.addr, align 8
  %140 = load i32*, i32** %num_libs.addr, align 8
  %141 = load i32*, i32** %libs.addr, align 8
  %142 = load i32, i32* %maxlibs.addr, align 4
  %143 = load i32*, i32** %num_adj.addr, align 8
  %144 = load i32*, i32** %adjs.addr, align 8
  %145 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay173 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay174 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay175 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %137, i32* %num_my_stones, i32* %arraydecay172, i32* %138, i32* %139, i32* %140, i32* %141, i32 %142, i32* %143, i32* %144, i32 %145, i8* %arraydecay173, i8* %arraydecay174, i8* %arraydecay175, i32 1)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.171, %land.lhs.true.165, %land.lhs.true.159, %land.lhs.true.155, %if.end.149
  %146 = load i32, i32* %type.addr, align 4
  %cmp177 = icmp eq i32 %146, 1
  br i1 %cmp177, label %if.then.179, label %if.end.249

if.then.179:                                      ; preds = %if.end.176
  store i32 0, i32* %l, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.246, %if.then.179
  %147 = load i32, i32* %l, align 4
  %cmp181 = icmp slt i32 %147, 2
  br i1 %cmp181, label %for.body.183, label %for.end.248

for.body.183:                                     ; preds = %for.cond.180
  %148 = load i32, i32* %l, align 4
  %cmp184 = icmp eq i32 %148, 0
  br i1 %cmp184, label %if.then.186, label %if.else.187

if.then.186:                                      ; preds = %for.body.183
  %149 = load i32, i32* %apos, align 4
  store i32 %149, i32* %upos, align 4
  br label %if.end.188

if.else.187:                                      ; preds = %for.body.183
  %150 = load i32, i32* %bpos, align 4
  store i32 %150, i32* %upos, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.then.186
  %151 = load i32, i32* %upos, align 4
  %idxprom189 = sext i32 %151 to i64
  %arrayidx190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom189
  %152 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %152 to i32
  %153 = load i32, i32* %other, align 4
  %cmp192 = icmp ne i32 %conv191, %153
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.188
  br label %for.inc.246

if.end.195:                                       ; preds = %if.end.188
  %154 = load i32, i32* %upos, align 4
  %call196 = call i32 @find_origin(i32 %154)
  store i32 %call196, i32* %upos, align 4
  %155 = load i32, i32* %upos, align 4
  %idxprom197 = sext i32 %155 to i64
  %arrayidx198 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom197
  %156 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %156 to i32
  %cmp200 = icmp eq i32 %conv199, 1
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.195
  br label %for.inc.246

if.end.203:                                       ; preds = %if.end.195
  %157 = load i32, i32* %upos, align 4
  %idxprom204 = sext i32 %157 to i64
  %arrayidx205 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom204
  store i8 1, i8* %arrayidx205, align 1
  %158 = load i32, i32* %upos, align 4
  %call206 = call i32 @attack(i32 %158, i32* null)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %land.lhs.true.208, label %if.end.245

land.lhs.true.208:                                ; preds = %if.end.203
  %159 = load i32, i32* %upos, align 4
  %call209 = call i32 @find_defense(i32 %159, i32* null)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.end.245, label %if.then.211

if.then.211:                                      ; preds = %land.lhs.true.208
  %160 = load i32, i32* %upos, align 4
  %arraydecay212 = getelementptr inbounds [361 x i32], [361 x i32]* %lunch_stones, i32 0, i32 0
  %call213 = call i32 @findstones(i32 %160, i32 361, i32* %arraydecay212)
  store i32 %call213, i32* %num_lunch_stones, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.242, %if.then.211
  %161 = load i32, i32* %m, align 4
  %162 = load i32, i32* %num_lunch_stones, align 4
  %cmp215 = icmp slt i32 %161, %162
  br i1 %cmp215, label %for.body.217, label %for.end.244

for.body.217:                                     ; preds = %for.cond.214
  store i32 0, i32* %n, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc, %for.body.217
  %163 = load i32, i32* %n, align 4
  %cmp219 = icmp slt i32 %163, 8
  br i1 %cmp219, label %for.body.221, label %for.end

for.body.221:                                     ; preds = %for.cond.218
  %164 = load i32, i32* %m, align 4
  %idxprom222 = sext i32 %164 to i64
  %arrayidx223 = getelementptr inbounds [361 x i32], [361 x i32]* %lunch_stones, i32 0, i64 %idxprom222
  %165 = load i32, i32* %arrayidx223, align 4
  %166 = load i32, i32* %n, align 4
  %idxprom224 = sext i32 %166 to i64
  %arrayidx225 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom224
  %167 = load i32, i32* %arrayidx225, align 4
  %add226 = add nsw i32 %165, %167
  store i32 %add226, i32* %vpos, align 4
  %168 = load i32, i32* %vpos, align 4
  %idxprom227 = sext i32 %168 to i64
  %arrayidx228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom227
  %169 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %169 to i32
  %170 = load i32, i32* %color, align 4
  %cmp230 = icmp eq i32 %conv229, %170
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.241

land.lhs.true.232:                                ; preds = %for.body.221
  %171 = load i32, i32* %vpos, align 4
  %idxprom233 = sext i32 %171 to i64
  %arrayidx234 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i64 %idxprom233
  %172 = load i8, i8* %arrayidx234, align 1
  %tobool235 = icmp ne i8 %172, 0
  br i1 %tobool235, label %if.end.241, label %if.then.236

if.then.236:                                      ; preds = %land.lhs.true.232
  %173 = load i32, i32* %vpos, align 4
  %arraydecay237 = getelementptr inbounds [361 x i32], [361 x i32]* %my_stones, i32 0, i32 0
  %174 = load i32*, i32** %num_stones.addr, align 8
  %175 = load i32*, i32** %stones.addr, align 8
  %176 = load i32*, i32** %num_libs.addr, align 8
  %177 = load i32*, i32** %libs.addr, align 8
  %178 = load i32, i32* %maxlibs.addr, align 4
  %179 = load i32*, i32** %num_adj.addr, align 8
  %180 = load i32*, i32** %adjs.addr, align 8
  %181 = load i32, i32* %liberty_cap.addr, align 4
  %arraydecay238 = getelementptr inbounds [400 x i8], [400 x i8]* %mx, i32 0, i32 0
  %arraydecay239 = getelementptr inbounds [400 x i8], [400 x i8]* %ml, i32 0, i32 0
  %arraydecay240 = getelementptr inbounds [400 x i8], [400 x i8]* %ma, i32 0, i32 0
  call void @superstring_add_string(i32 %173, i32* %num_my_stones, i32* %arraydecay237, i32* %174, i32* %175, i32* %176, i32* %177, i32 %178, i32* %179, i32* %180, i32 %181, i8* %arraydecay238, i8* %arraydecay239, i8* %arraydecay240, i32 1)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.236, %land.lhs.true.232, %for.body.221
  br label %for.inc

for.inc:                                          ; preds = %if.end.241
  %182 = load i32, i32* %n, align 4
  %inc = add nsw i32 %182, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.218

for.end:                                          ; preds = %for.cond.218
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end
  %183 = load i32, i32* %m, align 4
  %inc243 = add nsw i32 %183, 1
  store i32 %inc243, i32* %m, align 4
  br label %for.cond.214

for.end.244:                                      ; preds = %for.cond.214
  br label %if.end.245

if.end.245:                                       ; preds = %for.end.244, %land.lhs.true.208, %if.end.203
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245, %if.then.202, %if.then.194
  %184 = load i32, i32* %l, align 4
  %inc247 = add nsw i32 %184, 1
  store i32 %inc247, i32* %l, align 4
  br label %for.cond.180

for.end.248:                                      ; preds = %for.cond.180
  br label %if.end.249

if.end.249:                                       ; preds = %for.end.248, %if.end.176
  %185 = load i32*, i32** %num_libs.addr, align 8
  %tobool250 = icmp ne i32* %185, null
  br i1 %tobool250, label %land.lhs.true.251, label %if.end.258

land.lhs.true.251:                                ; preds = %if.end.249
  %186 = load i32, i32* %maxlibs.addr, align 4
  %cmp252 = icmp sgt i32 %186, 0
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.258

land.lhs.true.254:                                ; preds = %land.lhs.true.251
  %187 = load i32*, i32** %num_libs.addr, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %maxlibs.addr, align 4
  %cmp255 = icmp sge i32 %188, %189
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %land.lhs.true.254
  br label %for.end.264

if.end.258:                                       ; preds = %land.lhs.true.254, %land.lhs.true.251, %if.end.249
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258, %if.then.39
  %190 = load i32, i32* %k, align 4
  %inc260 = add nsw i32 %190, 1
  store i32 %inc260, i32* %k, align 4
  br label %for.cond.14

for.end.261:                                      ; preds = %for.cond.14
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.261
  %191 = load i32, i32* %r, align 4
  %inc263 = add nsw i32 %191, 1
  store i32 %inc263, i32* %r, align 4
  br label %for.cond

for.end.264:                                      ; preds = %if.then.257, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_superstring_conservative(i32 %str, i32* %num_stones, i32* %stones) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_stones.addr = alloca i32*, align 8
  %stones.addr = alloca i32*, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_stones, i32** %num_stones.addr, align 8
  store i32* %stones, i32** %stones.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_stones.addr, align 8
  %2 = load i32*, i32** %stones.addr, align 8
  call void @do_find_superstring(i32 %0, i32* %1, i32* %2, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_superstring_liberties(i32 %str, i32* %num_libs, i32* %libs, i32 %liberty_cap) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_libs.addr = alloca i32*, align 8
  %libs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_libs, i32** %num_libs.addr, align 8
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_libs.addr, align 8
  %2 = load i32*, i32** %libs.addr, align 8
  %3 = load i32, i32* %liberty_cap.addr, align 4
  call void @do_find_superstring(i32 %0, i32* null, i32* null, i32* %1, i32* %2, i32 20, i32* null, i32* null, i32 %3, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_proper_superstring_liberties(i32 %str, i32* %num_libs, i32* %libs, i32 %liberty_cap) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_libs.addr = alloca i32*, align 8
  %libs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_libs, i32** %num_libs.addr, align 8
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_libs.addr, align 8
  %2 = load i32*, i32** %libs.addr, align 8
  %3 = load i32, i32* %liberty_cap.addr, align 4
  call void @do_find_superstring(i32 %0, i32* null, i32* null, i32* %1, i32* %2, i32 20, i32* null, i32* null, i32 %3, i32 1, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_superstring_stones_and_liberties(i32 %str, i32* %num_stones, i32* %stones, i32* %num_libs, i32* %libs, i32 %liberty_cap) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_stones.addr = alloca i32*, align 8
  %stones.addr = alloca i32*, align 8
  %num_libs.addr = alloca i32*, align 8
  %libs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_stones, i32** %num_stones.addr, align 8
  store i32* %stones, i32** %stones.addr, align 8
  store i32* %num_libs, i32** %num_libs.addr, align 8
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_stones.addr, align 8
  %2 = load i32*, i32** %stones.addr, align 8
  %3 = load i32*, i32** %num_libs.addr, align 8
  %4 = load i32*, i32** %libs.addr, align 8
  %5 = load i32, i32* %liberty_cap.addr, align 4
  call void @do_find_superstring(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 20, i32* null, i32* null, i32 %5, i32 0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @superstring_chainlinks(i32 %str, i32* %num_adj, i32* %adjs, i32 %liberty_cap) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_adj.addr = alloca i32*, align 8
  %adjs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_adj, i32** %num_adj.addr, align 8
  store i32* %adjs, i32** %adjs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_adj.addr, align 8
  %2 = load i32*, i32** %adjs.addr, align 8
  %3 = load i32, i32* %liberty_cap.addr, align 4
  call void @do_find_superstring(i32 %0, i32* null, i32* null, i32* null, i32* null, i32 0, i32* %1, i32* %2, i32 %3, i32 0, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @proper_superstring_chainlinks(i32 %str, i32* %num_adj, i32* %adjs, i32 %liberty_cap) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_adj.addr = alloca i32*, align 8
  %adjs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_adj, i32** %num_adj.addr, align 8
  store i32* %adjs, i32** %adjs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %num_adj.addr, align 8
  %2 = load i32*, i32** %adjs.addr, align 8
  %3 = load i32, i32* %liberty_cap.addr, align 4
  call void @do_find_superstring(i32 %0, i32* null, i32* null, i32* null, i32* null, i32 0, i32* %1, i32* %2, i32 %3, i32 1, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @start_timer(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* @showtime, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call double @gg_cputime()
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* @timers, i32 0, i64 %idxprom
  store double %call, double* %arrayidx, align 8
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  ret void
}

declare double @gg_cputime() #1

; Function Attrs: nounwind uwtable
define double @time_report(i32 %n, i8* %occupation, i32 %move, double %mintime) #0 {
entry:
  %retval = alloca double, align 8
  %n.addr = alloca i32, align 4
  %occupation.addr = alloca i8*, align 8
  %move.addr = alloca i32, align 4
  %mintime.addr = alloca double, align 8
  %t = alloca double, align 8
  %dt = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %occupation, i8** %occupation.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store double %mintime, double* %mintime.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1839, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* @showtime, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store double 0.000000e+00, double* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call = call double @gg_cputime()
  store double %call, double* %t, align 8
  %3 = load double, double* %t, align 8
  %4 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* @timers, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %sub = fsub double %3, %5
  store double %sub, double* %dt, align 8
  %6 = load double, double* %dt, align 8
  %7 = load double, double* %mintime.addr, align 8
  %cmp4 = fcmp ogt double %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end.3
  %8 = load i8*, i8** %occupation.addr, align 8
  %call6 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* %8)
  %9 = load i32, i32* %move.addr, align 4
  %cmp7 = icmp ne i32 %9, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.5
  %10 = load i32, i32* %move.addr, align 4
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.then.5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load double, double* %dt, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), double %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.10, %if.end.3
  %13 = load double, double* %t, align 8
  %14 = load i32, i32* %n.addr, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* @timers, i32 0, i64 %idxprom13
  store double %13, double* %arrayidx14, align 8
  %15 = load double, double* %dt, align 8
  store double %15, double* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.2
  %16 = load double, double* %retval
  ret double %16
}

; Function Attrs: nounwind uwtable
define void @update_random_seed() #0 {
entry:
  %call = call i32 @gg_rand()
  store i32 %call, i32* @random_seed, align 4
  %0 = load i32, i32* @random_seed, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @random_seed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @gg_rand() #1

declare i32 @min_eyes(%struct.eyevalue*) #1

declare i32 @is_proper_eye_space(i32) #1

declare i32 @owl_confirm_safety(i32, i32, i32*, i32*) #1

declare i32 @first_worm_in_dragon(i32) #1

declare i32 @next_worm_in_dragon(i32) #1

declare i32 @owl_does_attack(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @superstring_add_string(i32 %str, i32* %num_my_stones, i32* %my_stones, i32* %num_stones, i32* %stones, i32* %num_libs, i32* %libs, i32 %maxlibs, i32* %num_adj, i32* %adjs, i32 %liberty_cap, i8* %mx, i8* %ml, i8* %ma, i32 %do_add) #0 {
entry:
  %str.addr = alloca i32, align 4
  %num_my_stones.addr = alloca i32*, align 8
  %my_stones.addr = alloca i32*, align 8
  %num_stones.addr = alloca i32*, align 8
  %stones.addr = alloca i32*, align 8
  %num_libs.addr = alloca i32*, align 8
  %libs.addr = alloca i32*, align 8
  %maxlibs.addr = alloca i32, align 4
  %num_adj.addr = alloca i32*, align 8
  %adjs.addr = alloca i32*, align 8
  %liberty_cap.addr = alloca i32, align 4
  %mx.addr = alloca i8*, align 8
  %ml.addr = alloca i8*, align 8
  %ma.addr = alloca i8*, align 8
  %do_add.addr = alloca i32, align 4
  %num_my_libs = alloca i32, align 4
  %my_libs = alloca [241 x i32], align 16
  %num_my_adj = alloca i32, align 4
  %my_adjs = alloca [160 x i32], align 16
  %new_stones = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %num_my_stones, i32** %num_my_stones.addr, align 8
  store i32* %my_stones, i32** %my_stones.addr, align 8
  store i32* %num_stones, i32** %num_stones.addr, align 8
  store i32* %stones, i32** %stones.addr, align 8
  store i32* %num_libs, i32** %num_libs.addr, align 8
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %maxlibs, i32* %maxlibs.addr, align 4
  store i32* %num_adj, i32** %num_adj.addr, align 8
  store i32* %adjs, i32** %adjs.addr, align 8
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  store i8* %mx, i8** %mx.addr, align 8
  store i8* %ml, i8** %ml.addr, align 8
  store i8* %ma, i8** %ma.addr, align 8
  store i32 %do_add, i32* %do_add.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %mx.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %4, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1755, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %6 = load i32, i32* @board_size, align 4
  %7 = load i32, i32* @board_size, align 4
  %mul = mul nsw i32 %6, %7
  %8 = load i32*, i32** %num_my_stones.addr, align 8
  %9 = load i32, i32* %8, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load i32*, i32** %my_stones.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %call = call i32 @findstones(i32 %5, i32 %mul, i32* %arrayidx4)
  store i32 %call, i32* %new_stones, align 4
  %11 = load i32, i32* %str.addr, align 4
  %12 = load i8*, i8** %mx.addr, align 8
  call void @mark_string(i32 %11, i8* %12, i8 signext 1)
  %13 = load i32*, i32** %stones.addr, align 8
  %tobool = icmp ne i32* %13, null
  br i1 %tobool, label %if.then.5, label %if.end.20

if.then.5:                                        ; preds = %if.end
  %14 = load i32*, i32** %num_stones.addr, align 8
  %tobool6 = icmp ne i32* %14, null
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.then.5
  br label %if.end.9

if.else.8:                                        ; preds = %if.then.5
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1763, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %new_stones, align 4
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %do_add.addr, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %for.body
  %18 = load i32*, i32** %num_my_stones.addr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %k, align 4
  %add = add nsw i32 %19, %20
  %idxprom14 = sext i32 %add to i64
  %21 = load i32*, i32** %my_stones.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load i32*, i32** %num_stones.addr, align 8
  %24 = load i32, i32* %23, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load i32*, i32** %stones.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 %22, i32* %arrayidx17, align 4
  %26 = load i32*, i32** %num_stones.addr, align 8
  %27 = load i32, i32* %26, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %26, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %28 = load i32, i32* %k, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end
  %29 = load i32, i32* %new_stones, align 4
  %30 = load i32*, i32** %num_my_stones.addr, align 8
  %31 = load i32, i32* %30, align 4
  %add21 = add nsw i32 %31, %29
  store i32 %add21, i32* %30, align 4
  %32 = load i32*, i32** %libs.addr, align 8
  %tobool22 = icmp ne i32* %32, null
  br i1 %tobool22, label %if.then.23, label %if.end.71

if.then.23:                                       ; preds = %if.end.20
  %33 = load i32*, i32** %num_libs.addr, align 8
  %tobool24 = icmp ne i32* %33, null
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.23
  br label %if.end.27

if.else.26:                                       ; preds = %if.then.23
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1775, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  %34 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %my_libs, i32 0, i32 0
  %call28 = call i32 @findlib(i32 %34, i32 241, i32* %arraydecay)
  store i32 %call28, i32* %num_my_libs, align 4
  %35 = load i32, i32* %liberty_cap.addr, align 4
  %cmp29 = icmp sgt i32 %35, 0
  br i1 %cmp29, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end.27
  %36 = load i32, i32* %num_my_libs, align 4
  %37 = load i32, i32* %liberty_cap.addr, align 4
  %cmp31 = icmp sgt i32 %36, %37
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %new_stones, align 4
  %39 = load i32*, i32** %num_my_stones.addr, align 8
  %40 = load i32, i32* %39, align 4
  %sub34 = sub nsw i32 %40, %38
  store i32 %sub34, i32* %39, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %land.lhs.true, %if.end.27
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.68, %if.end.35
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %num_my_libs, align 4
  %cmp37 = icmp slt i32 %41, %42
  br i1 %cmp37, label %for.body.39, label %for.end.70

for.body.39:                                      ; preds = %for.cond.36
  %43 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [241 x i32], [241 x i32]* %my_libs, i32 0, i64 %idxprom40
  %44 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %44 to i64
  %45 = load i8*, i8** %ml.addr, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %45, i64 %idxprom42
  %46 = load i8, i8* %arrayidx43, align 1
  %tobool44 = icmp ne i8 %46, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body.39
  br label %for.inc.68

if.end.46:                                        ; preds = %for.body.39
  %47 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds [241 x i32], [241 x i32]* %my_libs, i32 0, i64 %idxprom47
  %48 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load i8*, i8** %ml.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %49, i64 %idxprom49
  store i8 1, i8* %arrayidx50, align 1
  %50 = load i32, i32* %do_add.addr, align 4
  %tobool51 = icmp ne i32 %50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.67

land.lhs.true.52:                                 ; preds = %if.end.46
  %51 = load i32, i32* %liberty_cap.addr, align 4
  %cmp53 = icmp eq i32 %51, 0
  br i1 %cmp53, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.52
  %52 = load i32, i32* %num_my_libs, align 4
  %53 = load i32, i32* %liberty_cap.addr, align 4
  %cmp55 = icmp sle i32 %52, %53
  br i1 %cmp55, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %lor.lhs.false, %land.lhs.true.52
  %54 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %54 to i64
  %arrayidx59 = getelementptr inbounds [241 x i32], [241 x i32]* %my_libs, i32 0, i64 %idxprom58
  %55 = load i32, i32* %arrayidx59, align 4
  %56 = load i32*, i32** %num_libs.addr, align 8
  %57 = load i32, i32* %56, align 4
  %idxprom60 = sext i32 %57 to i64
  %58 = load i32*, i32** %libs.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %58, i64 %idxprom60
  store i32 %55, i32* %arrayidx61, align 4
  %59 = load i32*, i32** %num_libs.addr, align 8
  %60 = load i32, i32* %59, align 4
  %inc62 = add nsw i32 %60, 1
  store i32 %inc62, i32* %59, align 4
  %61 = load i32*, i32** %num_libs.addr, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %maxlibs.addr, align 4
  %cmp63 = icmp eq i32 %62, %63
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.57
  br label %for.end.70

if.end.66:                                        ; preds = %if.then.57
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false, %if.end.46
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67, %if.then.45
  %64 = load i32, i32* %k, align 4
  %inc69 = add nsw i32 %64, 1
  store i32 %inc69, i32* %k, align 4
  br label %for.cond.36

for.end.70:                                       ; preds = %if.then.65, %for.cond.36
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.70, %if.end.20
  %65 = load i32*, i32** %adjs.addr, align 8
  %tobool72 = icmp ne i32* %65, null
  br i1 %tobool72, label %if.then.73, label %if.end.116

if.then.73:                                       ; preds = %if.end.71
  %66 = load i32*, i32** %num_adj.addr, align 8
  %tobool74 = icmp ne i32* %66, null
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.then.73
  br label %if.end.77

if.else.76:                                       ; preds = %if.then.73
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1800, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  %67 = load i32, i32* %str.addr, align 4
  %arraydecay78 = getelementptr inbounds [160 x i32], [160 x i32]* %my_adjs, i32 0, i32 0
  %call79 = call i32 @chainlinks(i32 %67, i32* %arraydecay78)
  store i32 %call79, i32* %num_my_adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.113, %if.end.77
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %num_my_adj, align 4
  %cmp81 = icmp slt i32 %68, %69
  br i1 %cmp81, label %for.body.83, label %for.end.115

for.body.83:                                      ; preds = %for.cond.80
  %70 = load i32, i32* %liberty_cap.addr, align 4
  %cmp84 = icmp sgt i32 %70, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.93

land.lhs.true.86:                                 ; preds = %for.body.83
  %71 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %71 to i64
  %arrayidx88 = getelementptr inbounds [160 x i32], [160 x i32]* %my_adjs, i32 0, i64 %idxprom87
  %72 = load i32, i32* %arrayidx88, align 4
  %call89 = call i32 @countlib(i32 %72)
  %73 = load i32, i32* %liberty_cap.addr, align 4
  %cmp90 = icmp sgt i32 %call89, %73
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true.86
  br label %for.inc.113

if.end.93:                                        ; preds = %land.lhs.true.86, %for.body.83
  %74 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %74 to i64
  %arrayidx95 = getelementptr inbounds [160 x i32], [160 x i32]* %my_adjs, i32 0, i64 %idxprom94
  %75 = load i32, i32* %arrayidx95, align 4
  %idxprom96 = sext i32 %75 to i64
  %76 = load i8*, i8** %ma.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %76, i64 %idxprom96
  %77 = load i8, i8* %arrayidx97, align 1
  %tobool98 = icmp ne i8 %77, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.93
  br label %for.inc.113

if.end.100:                                       ; preds = %if.end.93
  %78 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %78 to i64
  %arrayidx102 = getelementptr inbounds [160 x i32], [160 x i32]* %my_adjs, i32 0, i64 %idxprom101
  %79 = load i32, i32* %arrayidx102, align 4
  %idxprom103 = sext i32 %79 to i64
  %80 = load i8*, i8** %ma.addr, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %80, i64 %idxprom103
  store i8 1, i8* %arrayidx104, align 1
  %81 = load i32, i32* %do_add.addr, align 4
  %tobool105 = icmp ne i32 %81, 0
  br i1 %tobool105, label %if.then.106, label %if.end.112

if.then.106:                                      ; preds = %if.end.100
  %82 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %82 to i64
  %arrayidx108 = getelementptr inbounds [160 x i32], [160 x i32]* %my_adjs, i32 0, i64 %idxprom107
  %83 = load i32, i32* %arrayidx108, align 4
  %84 = load i32*, i32** %num_adj.addr, align 8
  %85 = load i32, i32* %84, align 4
  %idxprom109 = sext i32 %85 to i64
  %86 = load i32*, i32** %adjs.addr, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %86, i64 %idxprom109
  store i32 %83, i32* %arrayidx110, align 4
  %87 = load i32*, i32** %num_adj.addr, align 8
  %88 = load i32, i32* %87, align 4
  %inc111 = add nsw i32 %88, 1
  store i32 %inc111, i32* %87, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.106, %if.end.100
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112, %if.then.99, %if.then.92
  %89 = load i32, i32* %k, align 4
  %inc114 = add nsw i32 %89, 1
  store i32 %inc114, i32* %k, align 4
  br label %for.cond.80

for.end.115:                                      ; preds = %for.cond.80
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.115, %if.end.71
  ret void
}

declare i32 @is_self_atari(i32, i32) #1

declare i32 @is_ko(i32, i32, i32*) #1

declare i32 @find_origin(i32) #1

declare i32 @findstones(i32, i32, i32*) #1

declare i32 @chainlinks(i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
