; ModuleID = 'engine/combination.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.aa_move = type { i32, [4 x i32] }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.influence_data = type opaque

@verbose = external global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"\0Alooking for combination attacks ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Combination attack for %C with size %d found at %1m\0A\00", align 1
@board = external global [421 x i8], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"- defense at %1m\0A\00", align 1
@aa_depth = external global i32, align 4
@forbidden = internal global [400 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [12 x i8] c"atari_atari\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%1m deleted defense point, illegal\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%1m deleted defense point, unsafe\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%1m deleted defense point, didn't work\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"engine/combination.c\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"trymove\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"find_double_threats-A\00", align 1
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@count_variations = external global i32, align 4
@aa_status = internal global [400 x i32] zeroinitializer, align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@worm = external global [400 x %struct.worm_data], align 16
@debug = external global i32, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"compute_aa_status() for %C\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"aa_status: (ALIVE worms not listed)\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"UNKNOWN (shouldn't happen)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"INSUBSTANTIAL\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%1M: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%odo_atari_atari: \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%oforbidden moves: \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%o%1m \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"attack found\00", align 1
@stackp = external global i32, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"do_atari_atari-A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"%oError condition found by atari_atari\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"do_atari_atari-B\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"%oThe worm %1m can be attacked at %1m after \00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"%oreturn value:%d (%1m)\0A\00", align 1
@board_size = external global i32, align 4
@.str.27 = private unnamed_addr constant [40 x i8] c"Considering attack of %1m. depth = %d.\0A\00", align 1
@depth = external global i32, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"Attack moves:\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%o %1m(\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%o%s%1m\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%o)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@current_minsize = internal global i32 0, align 4
@current_attacks = internal global %struct.aa_move* null, align 8
@conditional_attack_point = internal global [400 x i32] zeroinitializer, align 16
@aa_attackpat_db = external global %struct.pattern_db, align 8
@transformation = external global [1369 x [8 x i32]], align 16
@.str.35 = private unnamed_addr constant [16 x i8] c"attack_callback\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"aa_attack pattern %s+%d (conditional) found threat on %1m at %1m with code %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"aa_attack pattern %s+%d found threat on %1m at %1m with code %d\0A\00", align 1
@aa_values = internal global [400 x i32] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [12 x i8] c"aa_defend-A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"aa_defend-B\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Defense moves for %1m:\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%o %1m\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"queue_end < 19 * 19\00", align 1
@delta = external global [8 x i32], align 16
@initial_black_influence = external global %struct.influence_data, align 1
@initial_white_influence = external global %struct.influence_data, align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"aa_value for %1m = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @combinations(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %attack_point = alloca i32, align 4
  %defense_points = alloca [400 x i8], align 16
  %other = alloca i32, align 4
  %aa_val = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %color.addr, align 4
  call void @find_double_threats(i32 %1)
  %2 = load i32, i32* @verbose, align 4
  store i32 %2, i32* %save_verbose, align 4
  %3 = load i32, i32* @verbose, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %save_verbose, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i32, i32* %color.addr, align 4
  %7 = load i32, i32* %save_verbose, align 4
  %call3 = call i32 @atari_atari(i32 %6, i32* %attack_point, i8* null, i32 %7)
  store i32 %call3, i32* %aa_val, align 4
  %8 = load i32, i32* %aa_val, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.2
  %9 = load i32, i32* %save_verbose, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.then.5
  %10 = load i32, i32* %color.addr, align 4
  %11 = load i32, i32* %aa_val, align 4
  %12 = load i32, i32* %attack_point, align 4
  %call8 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 %10, i32 %11, i32 %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.then.5
  %13 = load i32, i32* %attack_point, align 4
  %14 = load i32, i32* %aa_val, align 4
  call void @add_my_atari_atari_move(i32 %13, i32 %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.2
  %15 = load i32, i32* %other, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %defense_points, i32 0, i32 0
  %16 = load i32, i32* %save_verbose, align 4
  %call11 = call i32 @atari_atari(i32 %15, i32* %attack_point, i8* %arraydecay, i32 %16)
  store i32 %call11, i32* %aa_val, align 4
  %17 = load i32, i32* %aa_val, align 4
  %cmp12 = icmp sgt i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.31

if.then.13:                                       ; preds = %if.end.10
  %18 = load i32, i32* %save_verbose, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.13
  %19 = load i32, i32* %other, align 4
  %20 = load i32, i32* %aa_val, align 4
  %21 = load i32, i32* %attack_point, align 4
  %call16 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i32 0, i32 0), i32 %19, i32 %20, i32 %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.13
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %22 = load i32, i32* %pos, align 4
  %cmp18 = icmp slt i32 %22, 400
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %24 to i32
  %cmp19 = icmp ne i32 %conv, 3
  br i1 %cmp19, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %25 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [400 x i8], [400 x i8]* %defense_points, i32 0, i64 %idxprom21
  %26 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %26 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %pos, align 4
  %28 = load i32, i32* %aa_val, align 4
  call void @add_your_atari_atari_move(i32 %27, i32 %28)
  %29 = load i32, i32* %save_verbose, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.25
  %30 = load i32, i32* %pos, align 4
  %call28 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %30)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %31 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.end.10
  %32 = load i32, i32* %save_verbose, align 4
  store i32 %32, i32* @verbose, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_double_threats(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %num_a_threatened_groups = alloca i32, align 4
  %a_threatened_groups = alloca [10 x i32], align 16
  store i32 %color, i32* %color.addr, align 4
  store i32 21, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end.67

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.65

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i32 0
  %call = call i32 @get_attack_threats(i32 %3, i32 10, i32* %arraydecay)
  store i32 %call, i32* %num_a_threatened_groups, align 4
  %4 = load i32, i32* %num_a_threatened_groups, align 4
  %cmp3 = icmp sgt i32 %4, 1
  br i1 %cmp3, label %if.then.5, label %if.end.64

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %ii, align 4
  %6 = load i32, i32* %color.addr, align 4
  %7 = load i32, i32* %ii, align 4
  %call6 = call i32 @trymove(i32 %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %7, i32 0, i32 0)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.63

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.60, %if.then.7
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* %num_a_threatened_groups, align 4
  %sub = sub nsw i32 %9, 1
  %cmp9 = icmp slt i32 %8, %sub
  br i1 %cmp9, label %for.body.11, label %for.end.62

for.body.11:                                      ; preds = %for.cond.8
  %10 = load i32, i32* %k, align 4
  %add = add nsw i32 %10, 1
  store i32 %add, i32* %l, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.11
  %11 = load i32, i32* %l, align 4
  %12 = load i32, i32* %num_a_threatened_groups, align 4
  %cmp13 = icmp slt i32 %11, %12
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %13 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %15 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.15
  %16 = load i32, i32* %l, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %lor.lhs.false, %for.body.15
  %19 = load i32, i32* %ii, align 4
  %call31 = call i32 @attack(i32 %19, i32* null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.42, label %if.then.33

if.then.33:                                       ; preds = %if.then.30
  %20 = load i32, i32* %ii, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom34
  %22 = load i32, i32* %arrayidx35, align 4
  %23 = load i32, i32* %l, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom36
  %24 = load i32, i32* %arrayidx37, align 4
  call void @add_either_move(i32 %20, i32 1, i32 %22, i32 1, i32 %24)
  %25 = load i32, i32* %ii, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom38
  %27 = load i32, i32* %arrayidx39, align 4
  call void @remove_attack_threat_move(i32 %25, i32 %27)
  %28 = load i32, i32* %ii, align 4
  %29 = load i32, i32* %l, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom40
  %30 = load i32, i32* %arrayidx41, align 4
  call void @remove_attack_threat_move(i32 %28, i32 %30)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.33, %if.then.30
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false
  %31 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom43
  %32 = load i32, i32* %arrayidx44, align 4
  %33 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %33 to i64
  %arrayidx46 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  %call47 = call i32 @defend_both(i32 %32, i32 %34)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.58, label %if.then.49

if.then.49:                                       ; preds = %if.else
  %35 = load i32, i32* %ii, align 4
  %36 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom50
  %37 = load i32, i32* %arrayidx51, align 4
  %38 = load i32, i32* %l, align 4
  %idxprom52 = sext i32 %38 to i64
  %arrayidx53 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom52
  %39 = load i32, i32* %arrayidx53, align 4
  call void @add_either_move(i32 %35, i32 1, i32 %37, i32 1, i32 %39)
  %40 = load i32, i32* %ii, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom54
  %42 = load i32, i32* %arrayidx55, align 4
  call void @remove_attack_threat_move(i32 %40, i32 %42)
  %43 = load i32, i32* %ii, align 4
  %44 = load i32, i32* %l, align 4
  %idxprom56 = sext i32 %44 to i64
  %arrayidx57 = getelementptr inbounds [10 x i32], [10 x i32]* %a_threatened_groups, i32 0, i64 %idxprom56
  %45 = load i32, i32* %arrayidx57, align 4
  call void @remove_attack_threat_move(i32 %43, i32 %45)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.49, %if.else
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %46 = load i32, i32* %l, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end
  %47 = load i32, i32* %k, align 4
  %inc61 = add nsw i32 %47, 1
  store i32 %inc61, i32* %k, align 4
  br label %for.cond.8

for.end.62:                                       ; preds = %for.cond.8
  call void @popgo()
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %if.then.5
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64, %if.then
  %48 = load i32, i32* %ii, align 4
  %inc66 = add nsw i32 %48, 1
  store i32 %inc66, i32* %ii, align 4
  br label %for.cond

for.end.67:                                       ; preds = %for.cond
  ret void
}

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @atari_atari(i32 %color, i32* %attack_move, i8* %defense_moves, i32 %save_verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %attack_move.addr = alloca i32*, align 8
  %defense_moves.addr = alloca i8*, align 8
  %save_verbose.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %aa_val = alloca i32, align 4
  %saved_defense_moves = alloca [400 x i8], align 16
  %new_aa_val = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %attack_move, i32** %attack_move.addr, align 8
  store i8* %defense_moves, i8** %defense_moves.addr, align 8
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @aa_depth, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @forbidden to i8*), i8 0, i64 1600, i32 16, i1 false)
  %2 = load i32, i32* %color.addr, align 4
  call void @compute_aa_status(i32 %2, i8* null)
  %3 = load i32, i32* %color.addr, align 4
  call void @compute_aa_values(i32 %3)
  %4 = load i8*, i8** %defense_moves.addr, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load i8*, i8** %defense_moves.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 400, i32 1, i1 false)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i32, i32* %color.addr, align 4
  %7 = load i8*, i8** %defense_moves.addr, align 8
  %8 = load i32, i32* %save_verbose.addr, align 4
  %call = call i32 @do_atari_atari(i32 %6, i32* %apos, i32* %dpos, i8* %7, i32 0, i32 %8, i32 0, i8* null)
  store i32 %call, i32* %aa_val, align 4
  %9 = load i32, i32* %aa_val, align 4
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end.2
  br label %while.body

while.body:                                       ; preds = %if.end.5, %if.end.15
  %10 = load i32*, i32** %attack_move.addr, align 8
  %tobool6 = icmp ne i32* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %while.body
  %11 = load i32, i32* %apos, align 4
  %12 = load i32*, i32** %attack_move.addr, align 8
  store i32 %11, i32* %12, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %while.body
  %13 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %14 = load i8*, i8** %defense_moves.addr, align 8
  %tobool9 = icmp ne i8* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %15 = bitcast [400 x i8]* %saved_defense_moves to i8*
  %16 = load i8*, i8** %defense_moves.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 400, i32 1, i1 false)
  %17 = load i8*, i8** %defense_moves.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 400, i32 1, i1 false)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i8*, i8** %defense_moves.addr, align 8
  %20 = load i32, i32* %save_verbose.addr, align 4
  %21 = load i32, i32* %aa_val, align 4
  %call12 = call i32 @do_atari_atari(i32 %18, i32* %apos, i32* %dpos, i8* %19, i32 0, i32 %20, i32 %21, i8* null)
  store i32 %call12, i32* %new_aa_val, align 4
  %22 = load i32, i32* %new_aa_val, align 4
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.11
  br label %while.end

if.else:                                          ; preds = %if.end.11
  %23 = load i32, i32* %new_aa_val, align 4
  store i32 %23, i32* %aa_val, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  br label %while.body

while.end:                                        ; preds = %if.then.14
  %24 = load i8*, i8** %defense_moves.addr, align 8
  %tobool16 = icmp ne i8* %24, null
  br i1 %tobool16, label %if.then.17, label %if.end.61

if.then.17:                                       ; preds = %while.end
  %25 = load i8*, i8** %defense_moves.addr, align 8
  %26 = bitcast [400 x i8]* %saved_defense_moves to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 400, i32 1, i1 false)
  %27 = load i32, i32* %apos, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.17
  %28 = load i32, i32* %pos, align 4
  %cmp20 = icmp slt i32 %28, 400
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %30 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %30 to i32
  %cmp23 = icmp ne i32 %conv, 3
  br i1 %cmp23, label %lor.lhs.false, label %if.then.28

lor.lhs.false:                                    ; preds = %for.body
  %31 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %31 to i64
  %32 = load i8*, i8** %defense_moves.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %32, i64 %idxprom25
  %33 = load i8, i8* %arrayidx26, align 1
  %tobool27 = icmp ne i8 %33, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end.29:                                        ; preds = %lor.lhs.false
  %34 = load i32, i32* %pos, align 4
  %35 = load i32, i32* %other, align 4
  %call30 = call i32 @trymove(i32 %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.39, label %if.then.32

if.then.32:                                       ; preds = %if.end.29
  %36 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i8*, i8** %defense_moves.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %37, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  %38 = load i32, i32* %save_verbose.addr, align 4
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.32
  %39 = load i32, i32* %pos, align 4
  %call37 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i32 %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.32
  br label %for.inc

if.end.39:                                        ; preds = %if.end.29
  %40 = load i32, i32* %pos, align 4
  %call40 = call i32 @attack(i32 %40, i32* null)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.39
  %41 = load i32, i32* %pos, align 4
  %idxprom43 = sext i32 %41 to i64
  %42 = load i8*, i8** %defense_moves.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %42, i64 %idxprom43
  store i8 0, i8* %arrayidx44, align 1
  call void @popgo()
  %43 = load i32, i32* %save_verbose.addr, align 4
  %tobool45 = icmp ne i32 %43, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.42
  %44 = load i32, i32* %pos, align 4
  %call47 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i32 %44)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.42
  br label %for.inc

if.end.49:                                        ; preds = %if.end.39
  %45 = load i32, i32* %color.addr, align 4
  %46 = load i32, i32* %save_verbose.addr, align 4
  %47 = load i32, i32* %aa_val, align 4
  %call50 = call i32 @do_atari_atari(i32 %45, i32* %apos, i32* %dpos, i8* null, i32 0, i32 %46, i32 %47, i8* null)
  %cmp51 = icmp sgt i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.49
  %48 = load i32, i32* %save_verbose.addr, align 4
  %tobool54 = icmp ne i32 %48, 0
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.53
  %49 = load i32, i32* %pos, align 4
  %call56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i32 %49)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.53
  %50 = load i32, i32* %pos, align 4
  %idxprom58 = sext i32 %50 to i64
  %51 = load i8*, i8** %defense_moves.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %51, i64 %idxprom58
  store i8 0, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.57, %if.end.49
  call void @popgo()
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.end.48, %if.end.38, %if.then.28
  %52 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.61

if.end.61:                                        ; preds = %for.end, %while.end
  %53 = load i32, i32* %aa_val, align 4
  store i32 %53, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.4, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @add_my_atari_atari_move(i32, i32) #1

declare void @add_your_atari_atari_move(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @compute_aa_status(i32 %color, i8* %safe_stones) #0 {
entry:
  %color.addr = alloca i32, align 4
  %safe_stones.addr = alloca i8*, align 8
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %status135 = alloca i8*, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %1, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %2 = load i32, i32* @count_variations, align 4
  store i32 %2, i32* %save_count_variations, align 4
  %3 = load i32, i32* @verbose, align 4
  store i32 %3, i32* %save_verbose, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %4 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %6, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %other, align 4
  %cmp1 = icmp eq i32 %conv, %9
  br i1 %cmp1, label %if.then.3, label %if.else.58

if.then.3:                                        ; preds = %for.body
  %10 = load i8*, i8** %safe_stones.addr, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %if.then.5, label %if.else.15

if.then.5:                                        ; preds = %if.then.3
  %11 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i8*, i8** %safe_stones.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %tobool8 = icmp ne i8 %13, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.5
  %14 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom10
  store i32 1, i32* %arrayidx11, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.then.5
  %15 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.9
  br label %if.end.57

if.else.15:                                       ; preds = %if.then.3
  %16 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom16
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx17, i32 0, i32 16
  %17 = load i32, i32* %status, align 4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.15
  %18 = load i32, i32* %pos, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom21
  store i32 0, i32* %arrayidx22, align 4
  br label %if.end.56

if.else.23:                                       ; preds = %if.else.15
  %19 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom24
  %status26 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx25, i32 0, i32 16
  %20 = load i32, i32* %status26, align 4
  %cmp27 = icmp eq i32 %20, 2
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.else.23
  %21 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom30
  store i32 2, i32* %arrayidx31, align 4
  br label %if.end.55

if.else.32:                                       ; preds = %if.else.23
  %22 = load i32, i32* %pos, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom33
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx34, i32 0, i32 16
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %23 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp ne i32 %23, 0
  br i1 %cmp36, label %if.then.38, label %if.else.51

if.then.38:                                       ; preds = %if.else.32
  %24 = load i32, i32* %pos, align 4
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom39
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx40, i32 0, i32 18
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %25 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %25, 0
  br i1 %cmp42, label %if.then.44, label %if.else.47

if.then.44:                                       ; preds = %if.then.38
  %26 = load i32, i32* %pos, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom45
  store i32 2, i32* %arrayidx46, align 4
  br label %if.end.50

if.else.47:                                       ; preds = %if.then.38
  %27 = load i32, i32* %pos, align 4
  %idxprom48 = sext i32 %27 to i64
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom48
  store i32 0, i32* %arrayidx49, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.44
  br label %if.end.54

if.else.51:                                       ; preds = %if.else.32
  %28 = load i32, i32* %pos, align 4
  %idxprom52 = sext i32 %28 to i64
  %arrayidx53 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom52
  store i32 1, i32* %arrayidx53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.end.50
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.29
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.20
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.14
  br label %if.end.68

if.else.58:                                       ; preds = %for.body
  %29 = load i32, i32* %pos, align 4
  %idxprom59 = sext i32 %29 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %30 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %30 to i32
  %cmp62 = icmp ne i32 %conv61, 3
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.else.58
  %31 = load i32, i32* %pos, align 4
  %idxprom65 = sext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom65
  store i32 3, i32* %arrayidx66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.else.58
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.57
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %32 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.115, %for.end
  %33 = load i32, i32* %pos, align 4
  %cmp70 = icmp slt i32 %33, 400
  br i1 %cmp70, label %for.body.72, label %for.end.117

for.body.72:                                      ; preds = %for.cond.69
  %34 = load i32, i32* %pos, align 4
  %idxprom73 = sext i32 %34 to i64
  %arrayidx74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom73
  %35 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %35 to i32
  %36 = load i32, i32* %other, align 4
  %cmp76 = icmp eq i32 %conv75, %36
  br i1 %cmp76, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %for.body.72
  %37 = load i32, i32* %pos, align 4
  %idxprom78 = sext i32 %37 to i64
  %arrayidx79 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom78
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx79, i32 0, i32 3
  %38 = load i32, i32* %origin, align 4
  %39 = load i32, i32* %pos, align 4
  %cmp80 = icmp eq i32 %38, %39
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.114

land.lhs.true.82:                                 ; preds = %land.lhs.true
  %40 = load i32, i32* %pos, align 4
  %idxprom83 = sext i32 %40 to i64
  %arrayidx84 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom83
  %liberties = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx84, i32 0, i32 4
  %41 = load i32, i32* %liberties, align 4
  %cmp85 = icmp eq i32 %41, 2
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.114

land.lhs.true.87:                                 ; preds = %land.lhs.true.82
  %42 = load i32, i32* %pos, align 4
  %idxprom88 = sext i32 %42 to i64
  %arrayidx89 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom88
  %43 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %43, 1
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.114

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %44 = load i32, i32* %pos, align 4
  %call = call i32 @owl_substantial(i32 %44)
  %tobool93 = icmp ne i32 %call, 0
  br i1 %tobool93, label %if.end.114, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.92
  store i32 21, i32* %pos2, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.111, %if.then.94
  %45 = load i32, i32* %pos2, align 4
  %cmp96 = icmp slt i32 %45, 400
  br i1 %cmp96, label %for.body.98, label %for.end.113

for.body.98:                                      ; preds = %for.cond.95
  %46 = load i32, i32* %pos2, align 4
  %idxprom99 = sext i32 %46 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %47 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %47 to i32
  %cmp102 = icmp ne i32 %conv101, 3
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.110

land.lhs.true.104:                                ; preds = %for.body.98
  %48 = load i32, i32* %pos2, align 4
  %49 = load i32, i32* %pos, align 4
  %call105 = call i32 @is_worm_origin(i32 %48, i32 %49)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %land.lhs.true.104
  %50 = load i32, i32* %pos2, align 4
  %idxprom108 = sext i32 %50 to i64
  %arrayidx109 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom108
  store i32 10, i32* %arrayidx109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %land.lhs.true.104, %for.body.98
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %51 = load i32, i32* %pos2, align 4
  %inc112 = add nsw i32 %51, 1
  store i32 %inc112, i32* %pos2, align 4
  br label %for.cond.95

for.end.113:                                      ; preds = %for.cond.95
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %land.lhs.true.92, %land.lhs.true.87, %land.lhs.true.82, %land.lhs.true, %for.body.72
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %52 = load i32, i32* %pos, align 4
  %inc116 = add nsw i32 %52, 1
  store i32 %inc116, i32* %pos, align 4
  br label %for.cond.69

for.end.117:                                      ; preds = %for.cond.69
  %53 = load i32, i32* @debug, align 4
  %and = and i32 %53, 262144
  %tobool118 = icmp ne i32 %and, 0
  br i1 %tobool118, label %if.then.119, label %if.end.167

if.then.119:                                      ; preds = %for.end.117
  %54 = load i32, i32* %color.addr, align 4
  %call120 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i32 %54)
  %call121 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  store i32 21, i32* %pos, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.164, %if.then.119
  %55 = load i32, i32* %pos, align 4
  %cmp123 = icmp slt i32 %55, 400
  br i1 %cmp123, label %for.body.125, label %for.end.166

for.body.125:                                     ; preds = %for.cond.122
  %56 = load i32, i32* %pos, align 4
  %idxprom126 = sext i32 %56 to i64
  %arrayidx127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom126
  %57 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %57 to i32
  %58 = load i32, i32* %other, align 4
  %cmp129 = icmp eq i32 %conv128, %58
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.163

land.lhs.true.131:                                ; preds = %for.body.125
  %59 = load i32, i32* %pos, align 4
  %60 = load i32, i32* %pos, align 4
  %call132 = call i32 @is_worm_origin(i32 %59, i32 %60)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.163

if.then.134:                                      ; preds = %land.lhs.true.131
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0), i8** %status135, align 8
  %61 = load i32, i32* %pos, align 4
  %idxprom136 = sext i32 %61 to i64
  %arrayidx137 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom136
  %62 = load i32, i32* %arrayidx137, align 4
  %cmp138 = icmp eq i32 %62, 0
  br i1 %cmp138, label %if.then.140, label %if.else.141

if.then.140:                                      ; preds = %if.then.134
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8** %status135, align 8
  br label %if.end.155

if.else.141:                                      ; preds = %if.then.134
  %63 = load i32, i32* %pos, align 4
  %idxprom142 = sext i32 %63 to i64
  %arrayidx143 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom142
  %64 = load i32, i32* %arrayidx143, align 4
  %cmp144 = icmp eq i32 %64, 2
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %if.else.141
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8** %status135, align 8
  br label %if.end.154

if.else.147:                                      ; preds = %if.else.141
  %65 = load i32, i32* %pos, align 4
  %idxprom148 = sext i32 %65 to i64
  %arrayidx149 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom148
  %66 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp eq i32 %66, 10
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.else.147
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8** %status135, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.else.147
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.146
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then.140
  %67 = load i32, i32* %pos, align 4
  %idxprom156 = sext i32 %67 to i64
  %arrayidx157 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom156
  %68 = load i32, i32* %arrayidx157, align 4
  %cmp158 = icmp ne i32 %68, 1
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.end.155
  %69 = load i32, i32* %pos, align 4
  %70 = load i8*, i8** %status135, align 8
  %call161 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %69, i8* %70)
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.160, %if.end.155
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %land.lhs.true.131, %for.body.125
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %71 = load i32, i32* %pos, align 4
  %inc165 = add nsw i32 %71, 1
  store i32 %inc165, i32* %pos, align 4
  br label %for.cond.122

for.end.166:                                      ; preds = %for.cond.122
  br label %if.end.167

if.end.167:                                       ; preds = %for.end.166, %for.end.117
  %72 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %72, %struct.SGFTree_t** @sgf_dumptree, align 8
  %73 = load i32, i32* %save_count_variations, align 4
  store i32 %73, i32* @count_variations, align 4
  %74 = load i32, i32* %save_verbose, align 4
  store i32 %74, i32* @verbose, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_aa_values(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %pos = alloca i32, align 4
  %value = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %mx = alloca [400 x i32], align 16
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %librd = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, i32* %other, align 4
  %cmp1 = icmp ne i32 %conv, %4
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %6 = load i32, i32* %pos, align 4
  %call = call i32 @find_origin(i32 %6)
  %cmp3 = icmp ne i32 %5, %call
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %pos, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ne i32 %8, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %for.body
  %9 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  br label %for.inc.87

if.end:                                           ; preds = %lor.lhs.false.5
  %10 = bitcast [400 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 1600, i32 16, i1 false)
  %11 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call12 = call i32 @findlib(i32 %11, i32 241, i32* %arraydecay)
  store i32 %call12, i32* %liberties, align 4
  %12 = load i32, i32* %pos, align 4
  %call13 = call i32 @countstones(i32 %12)
  %mul = mul nsw i32 2, %call13
  store i32 %mul, i32* %value, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.80, %if.end
  %13 = load i32, i32* %r, align 4
  %14 = load i32, i32* %liberties, align 4
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body.17, label %for.end.82

for.body.17:                                      ; preds = %for.cond.14
  %15 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end.38, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.17
  %18 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom22
  %19 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @whose_moyo(%struct.influence_data* @initial_black_influence, i32 %19)
  %20 = load i32, i32* %other, align 4
  %cmp25 = icmp eq i32 %call24, %20
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %r, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom28
  %22 = load i32, i32* %arrayidx29, align 4
  %call30 = call i32 @whose_moyo(%struct.influence_data* @initial_white_influence, i32 %22)
  %23 = load i32, i32* %other, align 4
  %cmp31 = icmp eq i32 %call30, %23
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %lor.lhs.false.27, %land.lhs.true
  %24 = load i32, i32* %r, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom34
  %25 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom36
  store i32 1, i32* %arrayidx37, align 4
  %26 = load i32, i32* %value, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %value, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %lor.lhs.false.27, %for.body.17
  store i32 0, i32* %k, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %if.end.38
  %27 = load i32, i32* %k, align 4
  %cmp40 = icmp slt i32 %27, 4
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %28 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom43
  %29 = load i32, i32* %arrayidx44, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom45
  %31 = load i32, i32* %arrayidx46, align 4
  %add = add nsw i32 %29, %31
  store i32 %add, i32* %librd, align 4
  %32 = load i32, i32* %librd, align 4
  %cmp47 = icmp ult i32 %32, 421
  br i1 %cmp47, label %land.lhs.true.49, label %if.then.59

land.lhs.true.49:                                 ; preds = %for.body.42
  %33 = load i32, i32* %librd, align 4
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %34 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %34 to i32
  %cmp53 = icmp ne i32 %conv52, 3
  br i1 %cmp53, label %lor.lhs.false.55, label %if.then.59

lor.lhs.false.55:                                 ; preds = %land.lhs.true.49
  %35 = load i32, i32* %librd, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom56
  %36 = load i32, i32* %arrayidx57, align 4
  %tobool58 = icmp ne i32 %36, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.55, %land.lhs.true.49, %for.body.42
  br label %for.inc

if.end.60:                                        ; preds = %lor.lhs.false.55
  %37 = load i32, i32* %librd, align 4
  %idxprom61 = sext i32 %37 to i64
  %arrayidx62 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom61
  store i32 1, i32* %arrayidx62, align 4
  %38 = load i32, i32* %librd, align 4
  %idxprom63 = sext i32 %38 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %39 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %39 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.78

land.lhs.true.68:                                 ; preds = %if.end.60
  %40 = load i32, i32* %librd, align 4
  %call69 = call i32 @whose_moyo(%struct.influence_data* @initial_black_influence, i32 %40)
  %41 = load i32, i32* %other, align 4
  %cmp70 = icmp eq i32 %call69, %41
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.68
  %42 = load i32, i32* %librd, align 4
  %call73 = call i32 @whose_moyo(%struct.influence_data* @initial_white_influence, i32 %42)
  %43 = load i32, i32* %other, align 4
  %cmp74 = icmp eq i32 %call73, %43
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %lor.lhs.false.72, %land.lhs.true.68
  %44 = load i32, i32* %value, align 4
  %inc77 = add nsw i32 %44, 1
  store i32 %inc77, i32* %value, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %lor.lhs.false.72, %if.end.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.78, %if.then.59
  %45 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %45, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end
  %46 = load i32, i32* %r, align 4
  %inc81 = add nsw i32 %46, 1
  store i32 %inc81, i32* %r, align 4
  br label %for.cond.14

for.end.82:                                       ; preds = %for.cond.14
  %47 = load i32, i32* %value, align 4
  %48 = load i32, i32* %pos, align 4
  %idxprom83 = sext i32 %48 to i64
  %arrayidx84 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i32 0, i64 %idxprom83
  store i32 %47, i32* %arrayidx84, align 4
  %49 = load i32, i32* @debug, align 4
  %and = and i32 %49, 262144
  %tobool85 = icmp ne i32 %and, 0
  br i1 %tobool85, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.end.82
  br label %cond.end

cond.false:                                       ; preds = %for.end.82
  %50 = load i32, i32* %pos, align 4
  %51 = load i32, i32* %value, align 4
  %call86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i32 0, i32 0), i32 %50, i32 %51)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %for.inc.87

for.inc.87:                                       ; preds = %cond.end, %if.then
  %52 = load i32, i32* %pos, align 4
  %inc88 = add nsw i32 %52, 1
  store i32 %inc88, i32* %pos, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @do_atari_atari(i32 %color, i32* %attack_point, i32* %defense_point, i8* %all_potential_defenses, i32 %last_friendly, i32 %save_verbose, i32 %minsize, i8* %goal) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %all_potential_defenses.addr = alloca i8*, align 8
  %last_friendly.addr = alloca i32, align 4
  %save_verbose.addr = alloca i32, align 4
  %minsize.addr = alloca i32, align 4
  %goal.addr = alloca i8*, align 8
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %attacks = alloca [361 x %struct.aa_move], align 16
  %num_defense_moves = alloca i32, align 4
  %defense_moves = alloca [361 x i32], align 16
  %pos = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %retval14 = alloca i32, align 4
  %aa_val = alloca i32, align 4
  %str = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %r = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %num_libs = alloca i32, align 4
  %new_aa_val = alloca i32, align 4
  %new_goal = alloca [400 x i8], align 16
  store i32 %color, i32* %color.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i8* %all_potential_defenses, i8** %all_potential_defenses.addr, align 8
  store i32 %last_friendly, i32* %last_friendly.addr, align 4
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  store i32 %minsize, i32* %minsize.addr, align 4
  store i8* %goal, i8** %goal.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @debug, align 4
  %and = and i32 %1, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0))
  call void @dump_stack()
  %call1 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0))
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %pos, align 4
  %call8 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  %9 = load i32, i32* %last_friendly.addr, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.10
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %10, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %11 = load i32, i32* @count_variations, align 4
  store i32 %11, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %12 = load i32, i32* %color.addr, align 4
  %13 = load i32*, i32** %attack_point.addr, align 8
  %14 = load i32*, i32** %defense_point.addr, align 8
  %15 = load i32, i32* %last_friendly.addr, align 4
  %16 = load i32, i32* %save_verbose.addr, align 4
  %17 = load i32, i32* %minsize.addr, align 4
  %call15 = call i32 @atari_atari_succeeded(i32 %12, i32* %13, i32* %14, i32 %15, i32 %16, i32 %17)
  store i32 %call15, i32* %retval14, align 4
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %18, %struct.SGFTree_t** @sgf_dumptree, align 8
  %19 = load i32, i32* %save_count_variations, align 4
  store i32 %19, i32* @count_variations, align 4
  %20 = load i32, i32* %retval14, align 4
  %cmp16 = icmp ne i32 %20, 0
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.then.13
  %21 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool19 = icmp ne %struct.SGFTree_t* %21, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  %22 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.18
  %23 = load i32, i32* %retval14, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.10
  %24 = load i32, i32* @stackp, align 4
  %25 = load i32, i32* @aa_depth, align 4
  %cmp24 = icmp sgt i32 %24, %25
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  %26 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %26, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %27 = load i32, i32* @count_variations, align 4
  store i32 %27, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %28 = load i32, i32* %color.addr, align 4
  %29 = load i32, i32* %minsize.addr, align 4
  %arraydecay = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %attacks, i32 0, i32 0
  %30 = load i8*, i8** %goal.addr, align 8
  call void @atari_atari_find_attack_moves(i32 %28, i32 %29, %struct.aa_move* %arraydecay, i8* %30)
  %31 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %31, %struct.SGFTree_t** @sgf_dumptree, align 8
  %32 = load i32, i32* %save_count_variations, align 4
  store i32 %32, i32* @count_variations, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.163, %if.end.27
  %33 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %attacks, i32 0, i64 %idxprom29
  %move = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx30, i32 0, i32 0
  %34 = load i32, i32* %move, align 4
  %cmp31 = icmp ne i32 %34, 0
  br i1 %cmp31, label %for.body.33, label %for.end.165

for.body.33:                                      ; preds = %for.cond.28
  %35 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %attacks, i32 0, i64 %idxprom34
  %target = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx35, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [4 x i32], [4 x i32]* %target, i32 0, i64 0
  %36 = load i32, i32* %arrayidx36, align 4
  store i32 %36, i32* %str, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %37 to i64
  %arrayidx38 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %attacks, i32 0, i64 %idxprom37
  %move39 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx38, i32 0, i32 0
  %38 = load i32, i32* %move39, align 4
  store i32 %38, i32* %apos, align 4
  %39 = load i32, i32* %apos, align 4
  %40 = load i32, i32* %color.addr, align 4
  %41 = load i32, i32* %str, align 4
  %call40 = call i32 @trymove(i32 %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 %41, i32 0, i32 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %for.body.33
  br label %for.inc.163

if.end.43:                                        ; preds = %for.body.33
  %42 = load i8*, i8** %all_potential_defenses.addr, align 8
  %tobool44 = icmp ne i8* %42, null
  br i1 %tobool44, label %if.then.45, label %if.end.65

if.then.45:                                       ; preds = %if.end.43
  %43 = load i32, i32* %apos, align 4
  %idxprom46 = sext i32 %43 to i64
  %44 = load i8*, i8** %all_potential_defenses.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %44, i64 %idxprom46
  store i8 1, i8* %arrayidx47, align 1
  %45 = load i32, i32* %apos, align 4
  %call48 = call i32 @countlib(i32 %45)
  %cmp49 = icmp sle i32 %call48, 2
  br i1 %cmp49, label %if.then.51, label %if.end.64

if.then.51:                                       ; preds = %if.then.45
  %46 = load i32, i32* %apos, align 4
  %arraydecay52 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call53 = call i32 @findlib(i32 %46, i32 2, i32* %arraydecay52)
  store i32 %call53, i32* %num_libs, align 4
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %47 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load i8*, i8** %all_potential_defenses.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %48, i64 %idxprom55
  store i8 1, i8* %arrayidx56, align 1
  %49 = load i32, i32* %num_libs, align 4
  %cmp57 = icmp eq i32 %49, 2
  br i1 %cmp57, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.then.51
  %arrayidx60 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %50 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %50 to i64
  %51 = load i8*, i8** %all_potential_defenses.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %51, i64 %idxprom61
  store i8 1, i8* %arrayidx62, align 1
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.then.51
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.45
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.43
  %52 = load i32, i32* %str, align 4
  %idxprom66 = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %53 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %53 to i32
  %cmp69 = icmp eq i32 %conv68, 1
  br i1 %cmp69, label %if.end.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.65
  %54 = load i32, i32* %str, align 4
  %idxprom71 = sext i32 %54 to i64
  %arrayidx72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom71
  %55 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %55 to i32
  %cmp74 = icmp eq i32 %conv73, 2
  br i1 %cmp74, label %if.end.84, label %if.then.76

if.then.76:                                       ; preds = %lor.lhs.false
  %56 = load i32, i32* %save_verbose.addr, align 4
  %tobool77 = icmp ne i32 %56, 0
  br i1 %tobool77, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.then.76
  %57 = load i32, i32* @debug, align 4
  %and79 = and i32 %57, 262144
  %tobool80 = icmp ne i32 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false.78, %if.then.76
  %call82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %lor.lhs.false.78
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end.84:                                        ; preds = %lor.lhs.false, %if.end.65
  %58 = load i32, i32* %str, align 4
  %call85 = call i32 @get_aa_value(i32 %58)
  store i32 %call85, i32* %aa_val, align 4
  %59 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %59, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %60 = load i32, i32* @count_variations, align 4
  store i32 %60, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %61 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %61 to i64
  %arrayidx87 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %attacks, i32 0, i64 %idxprom86
  %target88 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx87, i32 0, i32 1
  %arraydecay89 = getelementptr inbounds [4 x i32], [4 x i32]* %target88, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [361 x i32], [361 x i32]* %defense_moves, i32 0, i32 0
  %call91 = call i32 @atari_atari_find_defense_moves(i32* %arraydecay89, i32* %arraydecay90)
  store i32 %call91, i32* %num_defense_moves, align 4
  %62 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %62, %struct.SGFTree_t** @sgf_dumptree, align 8
  %63 = load i32, i32* %save_count_variations, align 4
  store i32 %63, i32* @count_variations, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.119, %if.end.84
  %64 = load i32, i32* %r, align 4
  %65 = load i32, i32* %num_defense_moves, align 4
  %cmp93 = icmp slt i32 %64, %65
  br i1 %cmp93, label %for.body.95, label %for.end.121

for.body.95:                                      ; preds = %for.cond.92
  %66 = load i32, i32* %r, align 4
  %idxprom96 = sext i32 %66 to i64
  %arrayidx97 = getelementptr inbounds [361 x i32], [361 x i32]* %defense_moves, i32 0, i64 %idxprom96
  %67 = load i32, i32* %arrayidx97, align 4
  store i32 %67, i32* %bpos, align 4
  %68 = load i8*, i8** %all_potential_defenses.addr, align 8
  %tobool98 = icmp ne i8* %68, null
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %for.body.95
  %69 = load i32, i32* %bpos, align 4
  %idxprom100 = sext i32 %69 to i64
  %70 = load i8*, i8** %all_potential_defenses.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %70, i64 %idxprom100
  store i8 1, i8* %arrayidx101, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %for.body.95
  %71 = load i32, i32* %bpos, align 4
  %72 = load i32, i32* %other, align 4
  %73 = load i32, i32* %str, align 4
  %call103 = call i32 @trymove(i32 %71, i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 %73, i32 0, i32 0)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.114

if.then.105:                                      ; preds = %if.end.102
  call void @modify_depth_values(i32 2)
  %74 = load i8*, i8** %goal.addr, align 8
  %arraydecay106 = getelementptr inbounds [400 x i8], [400 x i8]* %new_goal, i32 0, i32 0
  %75 = load i32, i32* %apos, align 4
  %76 = load i32, i32* %color.addr, align 4
  %call107 = call i32 @update_aa_goal(i8* %74, i8* %arraydecay106, i32 %75, i32 %76)
  %77 = load i32, i32* %color.addr, align 4
  %78 = load i32*, i32** %defense_point.addr, align 8
  %79 = load i8*, i8** %all_potential_defenses.addr, align 8
  %80 = load i32, i32* %apos, align 4
  %81 = load i32, i32* %save_verbose.addr, align 4
  %82 = load i32, i32* %minsize.addr, align 4
  %arraydecay108 = getelementptr inbounds [400 x i8], [400 x i8]* %new_goal, i32 0, i32 0
  %call109 = call i32 @do_atari_atari(i32 %77, i32* null, i32* %78, i8* %79, i32 %80, i32 %81, i32 %82, i8* %arraydecay108)
  store i32 %call109, i32* %new_aa_val, align 4
  call void @modify_depth_values(i32 -2)
  %83 = load i32, i32* %new_aa_val, align 4
  %84 = load i32, i32* %aa_val, align 4
  %cmp110 = icmp slt i32 %83, %84
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.105
  %85 = load i32, i32* %new_aa_val, align 4
  store i32 %85, i32* %aa_val, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.then.105
  call void @popgo()
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.102
  %86 = load i32, i32* %aa_val, align 4
  %cmp115 = icmp eq i32 %86, 0
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  br label %for.end.121

if.end.118:                                       ; preds = %if.end.114
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %87 = load i32, i32* %r, align 4
  %inc120 = add nsw i32 %87, 1
  store i32 %inc120, i32* %r, align 4
  br label %for.cond.92

for.end.121:                                      ; preds = %if.then.117, %for.cond.92
  call void @popgo()
  %88 = load i32, i32* %aa_val, align 4
  %cmp122 = icmp eq i32 %88, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.end.121
  br label %for.inc.163

if.end.125:                                       ; preds = %for.end.121
  %89 = load i32, i32* %num_defense_moves, align 4
  %cmp126 = icmp eq i32 %89, 0
  br i1 %cmp126, label %if.then.128, label %if.end.139

if.then.128:                                      ; preds = %if.end.125
  %90 = load i32, i32* %save_verbose.addr, align 4
  %tobool129 = icmp ne i32 %90, 0
  br i1 %tobool129, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %if.then.128
  %91 = load i32, i32* @debug, align 4
  %and131 = and i32 %91, 262144
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %lor.lhs.false.130, %if.then.128
  %92 = load i32, i32* %str, align 4
  %93 = load i32, i32* %apos, align 4
  %call134 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), i32 %92, i32 %93)
  call void @dump_stack()
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %lor.lhs.false.130
  %94 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool136 = icmp ne %struct.SGFTree_t* %94, null
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.135
  %95 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.135
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.end.125
  %96 = load i32*, i32** %attack_point.addr, align 8
  %tobool140 = icmp ne i32* %96, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.139
  %97 = load i32, i32* %apos, align 4
  %98 = load i32*, i32** %attack_point.addr, align 8
  store i32 %97, i32* %98, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.139
  %99 = load i32*, i32** %defense_point.addr, align 8
  %tobool143 = icmp ne i32* %99, null
  br i1 %tobool143, label %if.then.144, label %if.end.159

if.then.144:                                      ; preds = %if.end.142
  %100 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %100, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %101 = load i32, i32* @count_variations, align 4
  store i32 %101, i32* %save_count_variations, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %102 = load i32, i32* %str, align 4
  %103 = load i32*, i32** %defense_point.addr, align 8
  %call145 = call i32 @find_defense(i32 %102, i32* %103)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.end.148, label %if.then.147

if.then.147:                                      ; preds = %if.then.144
  %104 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %104, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.then.144
  %105 = load i32*, i32** %defense_point.addr, align 8
  %106 = load i32, i32* %105, align 4
  %cmp149 = icmp eq i32 %106, 0
  br i1 %cmp149, label %land.lhs.true.154, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.148
  %107 = load i32*, i32** %defense_point.addr, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %other, align 4
  %call152 = call i32 @safe_move(i32 %108, i32 %109)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.end.158, label %land.lhs.true.154

land.lhs.true.154:                                ; preds = %lor.lhs.false.151, %if.end.148
  %110 = load i32, i32* %apos, align 4
  %111 = load i32, i32* %other, align 4
  %call155 = call i32 @safe_move(i32 %110, i32 %111)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.154
  %112 = load i32, i32* %apos, align 4
  %113 = load i32*, i32** %defense_point.addr, align 8
  store i32 %112, i32* %113, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %land.lhs.true.154, %lor.lhs.false.151
  %114 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %114, %struct.SGFTree_t** @sgf_dumptree, align 8
  %115 = load i32, i32* %save_count_variations, align 4
  store i32 %115, i32* @count_variations, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.142
  %116 = load i32, i32* @debug, align 4
  %and160 = and i32 %116, 262144
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.159
  br label %cond.end

cond.false:                                       ; preds = %if.end.159
  %117 = load i32, i32* %aa_val, align 4
  %118 = load i32, i32* %str, align 4
  %call162 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %117, i32 %118)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %119 = load i32, i32* %aa_val, align 4
  store i32 %119, i32* %retval
  br label %return

for.inc.163:                                      ; preds = %if.then.124, %if.then.42
  %120 = load i32, i32* %k, align 4
  %inc164 = add nsw i32 %120, 1
  store i32 %inc164, i32* %k, align 4
  br label %for.cond.28

for.end.165:                                      ; preds = %for.cond.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.165, %cond.end, %if.end.83, %if.then.26, %if.end.21
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @attack(i32, i32*) #1

declare void @popgo() #1

; Function Attrs: nounwind uwtable
define i32 @atari_atari_confirm_safety(i32 %color, i32 %move, i32* %defense, i32 %minsize, i8* %saved_dragons, i8* %saved_worms) #0 {
entry:
  %color.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %defense.addr = alloca i32*, align 8
  %minsize.addr = alloca i32, align 4
  %saved_dragons.addr = alloca i8*, align 8
  %saved_worms.addr = alloca i8*, align 8
  %safe_stones = alloca [400 x i8], align 16
  store i32 %color, i32* %color.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32* %defense, i32** %defense.addr, align 8
  store i32 %minsize, i32* %minsize.addr, align 4
  store i8* %saved_dragons, i8** %saved_dragons.addr, align 8
  store i8* %saved_worms, i8** %saved_worms.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %move.addr, align 4
  %2 = load i8*, i8** %saved_dragons.addr, align 8
  %3 = load i8*, i8** %saved_worms.addr, align 8
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  call void @mark_safe_stones(i32 %0, i32 %1, i8* %2, i8* %3, i8* %arraydecay)
  %4 = load i32, i32* %color.addr, align 4
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32*, i32** %defense.addr, align 8
  %arraydecay1 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %call = call i32 @atari_atari_blunder_size(i32 %4, i32 %5, i32* %6, i8* %arraydecay1)
  %7 = load i32, i32* %minsize.addr, align 4
  %cmp = icmp sge i32 %call, %7
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @mark_safe_stones(i32, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @atari_atari_blunder_size(i32 %color, i32 %move, i32* %defense, i8* %safe_stones) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %defense.addr = alloca i32*, align 8
  %safe_stones.addr = alloca i8*, align 8
  %apos = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %after_defense_point = alloca i32, align 4
  %aa_val = alloca i32, align 4
  %after_aa_val = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32* %defense, i32** %defense.addr, align 8
  store i8* %safe_stones, i8** %safe_stones.addr, align 8
  store i32 0, i32* %defense_point, align 4
  store i32 0, i32* %after_defense_point, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @aa_depth, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @forbidden to i8*), i8 0, i64 1600, i32 16, i1 false)
  %2 = load i32, i32* %other, align 4
  %3 = load i8*, i8** %safe_stones.addr, align 8
  call void @compute_aa_status(i32 %2, i8* %3)
  %4 = load i32, i32* %other, align 4
  call void @compute_aa_values(i32 %4)
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32, i32* %color.addr, align 4
  %call = call i32 @tryko(i32 %5, i32 %6, i8* null, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %7 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %7, 20
  %sub2 = sub nsw i32 %div, 1
  %8 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %8, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.1, %if.end
  call void @increase_depth_values()
  %9 = load i32, i32* %other, align 4
  %call5 = call i32 @do_atari_atari(i32 %9, i32* %apos, i32* %defense_point, i8* null, i32 0, i32 0, i32 0, i8* null)
  store i32 %call5, i32* %aa_val, align 4
  %10 = load i32, i32* %aa_val, align 4
  store i32 %10, i32* %after_aa_val, align 4
  %11 = load i32, i32* %aa_val, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %12 = load i32, i32* %defense_point, align 4
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.4
  call void @popgo()
  call void @decrease_depth_values()
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %13 = load i32, i32* %aa_val, align 4
  %14 = load i32, i32* %after_aa_val, align 4
  %cmp10 = icmp sge i32 %13, %14
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i32, i32* %defense_point, align 4
  %cmp11 = icmp ne i32 %15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i32, i32* %defense_point, align 4
  store i32 %17, i32* %after_defense_point, align 4
  %18 = load i32, i32* %apos, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %19 = load i32, i32* %other, align 4
  %20 = load i32, i32* %aa_val, align 4
  %call12 = call i32 @do_atari_atari(i32 %19, i32* %apos, i32* %defense_point, i8* null, i32 0, i32 0, i32 %20, i8* null)
  store i32 %call12, i32* %aa_val, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @popgo()
  call void @decrease_depth_values()
  %21 = load i32, i32* %other, align 4
  call void @compute_aa_status(i32 %21, i8* null)
  %22 = load i32, i32* %other, align 4
  call void @compute_aa_values(i32 %22)
  %23 = load i32, i32* %other, align 4
  %call13 = call i32 @do_atari_atari(i32 %23, i32* null, i32* null, i8* null, i32 0, i32 0, i32 0, i8* null)
  store i32 %call13, i32* %aa_val, align 4
  %24 = load i32, i32* %after_aa_val, align 4
  %25 = load i32, i32* %aa_val, align 4
  %sub14 = sub nsw i32 %24, %25
  %cmp15 = icmp sgt i32 %sub14, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %while.end
  %26 = load i32*, i32** %defense.addr, align 8
  %tobool17 = icmp ne i32* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.16
  %27 = load i32, i32* %after_defense_point, align 4
  %28 = load i32*, i32** %defense.addr, align 8
  store i32 %27, i32* %28, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.16
  %29 = load i32, i32* %after_aa_val, align 4
  %30 = load i32, i32* %aa_val, align 4
  %sub20 = sub nsw i32 %29, %30
  store i32 %sub20, i32* %retval
  br label %return

if.else:                                          ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.19, %if.then.8, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @tryko(i32, i32, i8*, i32, i32) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare void @increase_depth_values() #1

declare void @decrease_depth_values() #1

declare i32 @get_attack_threats(i32, i32, i32*) #1

declare void @add_either_move(i32, i32, i32, i32, i32) #1

declare void @remove_attack_threat_move(i32, i32) #1

declare i32 @defend_both(i32, i32) #1

declare i32 @owl_substantial(i32) #1

declare i32 @is_worm_origin(i32, i32) #1

declare void @dump_stack() #1

; Function Attrs: nounwind uwtable
define internal i32 @atari_atari_succeeded(i32 %color, i32* %attack_point, i32* %defense_point, i32 %last_friendly, i32 %save_verbose, i32 %minsize) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %attack_point.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %last_friendly.addr = alloca i32, align 4
  %save_verbose.addr = alloca i32, align 4
  %minsize.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %other = alloca i32, align 4
  %ii = alloca i32, align 4
  %aa = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i32 %last_friendly, i32* %last_friendly.addr, align 4
  store i32 %save_verbose, i32* %save_verbose.addr, align 4
  store i32 %minsize, i32* %minsize.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %entry
  %1 = load i32, i32* %m, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %6
  store i32 %add4, i32* %ii, align 4
  %7 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %other, align 4
  %cmp5 = icmp ne i32 %conv, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %for.inc

if.end:                                           ; preds = %for.body.3
  %10 = load i32, i32* %ii, align 4
  %11 = load i32, i32* %ii, align 4
  %call = call i32 @find_origin(i32 %11)
  %cmp7 = icmp ne i32 %10, %call
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %for.inc

if.end.10:                                        ; preds = %if.end
  %12 = load i32, i32* %minsize.addr, align 4
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.10
  %13 = load i32, i32* %ii, align 4
  %call13 = call i32 @get_aa_value(i32 %13)
  %14 = load i32, i32* %minsize.addr, align 4
  %cmp14 = icmp slt i32 %call13, %14
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.17:                                        ; preds = %land.lhs.true, %if.end.10
  %15 = load i32, i32* %ii, align 4
  %call18 = call i32 @get_aa_status(i32 %15)
  %cmp19 = icmp ne i32 %call18, 1
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  br label %for.inc

if.end.22:                                        ; preds = %if.end.17
  %16 = load i32, i32* %last_friendly.addr, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %17 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.31

land.lhs.true.28:                                 ; preds = %if.end.22
  %18 = load i32, i32* %last_friendly.addr, align 4
  %19 = load i32, i32* %ii, align 4
  %call29 = call i32 @adjacent_strings(i32 %18, i32 %19)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  br label %for.inc

if.end.31:                                        ; preds = %land.lhs.true.28, %if.end.22
  %20 = load i32, i32* %last_friendly.addr, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %21 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.end.31
  %22 = load i32, i32* %last_friendly.addr, align 4
  %23 = load i32, i32* %ii, align 4
  %call38 = call i32 @liberty_of_string(i32 %22, i32 %23)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.37
  br label %for.inc

if.end.41:                                        ; preds = %land.lhs.true.37, %if.end.31
  %24 = load i32, i32* @debug, align 4
  %and = and i32 %24, 262144
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  %25 = load i32, i32* %ii, align 4
  %26 = load i32, i32* @depth, align 4
  %call44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i32 0, i32 0), i32 %25, i32 %26)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.41
  %27 = load i32, i32* %ii, align 4
  %call46 = call i32 @attack(i32 %27, i32* %aa)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.78

land.lhs.true.48:                                 ; preds = %if.end.45
  %28 = load i32, i32* %aa, align 4
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom49
  %29 = load i32, i32* %arrayidx50, align 4
  %tobool51 = icmp ne i32 %29, 0
  br i1 %tobool51, label %if.end.78, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.48
  %30 = load i32, i32* %save_verbose.addr, align 4
  %tobool53 = icmp ne i32 %30, 0
  br i1 %tobool53, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %31 = load i32, i32* @debug, align 4
  %and54 = and i32 %31, 262144
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %lor.lhs.false, %if.then.52
  %32 = load i32, i32* %ii, align 4
  %33 = load i32, i32* %aa, align 4
  %call57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), i32 %32, i32 %33)
  call void @dump_stack()
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %lor.lhs.false
  %34 = load i32*, i32** %attack_point.addr, align 8
  %tobool59 = icmp ne i32* %34, null
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %35 = load i32, i32* %aa, align 4
  %36 = load i32*, i32** %attack_point.addr, align 8
  store i32 %35, i32* %36, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %37 = load i32*, i32** %defense_point.addr, align 8
  %tobool62 = icmp ne i32* %37, null
  br i1 %tobool62, label %if.then.63, label %if.end.72

if.then.63:                                       ; preds = %if.end.61
  %38 = load i32, i32* %ii, align 4
  %39 = load i32*, i32** %defense_point.addr, align 8
  %call64 = call i32 @find_defense(i32 %38, i32* %39)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.71, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  %40 = load i32, i32* %aa, align 4
  %41 = load i32, i32* %other, align 4
  %call67 = call i32 @safe_move(i32 %40, i32 %41)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.66
  %42 = load i32, i32* %aa, align 4
  %43 = load i32*, i32** %defense_point.addr, align 8
  store i32 %42, i32* %43, align 4
  br label %if.end.70

if.else:                                          ; preds = %if.then.66
  %44 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %44, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else, %if.then.69
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.63
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.61
  %45 = load i32, i32* @debug, align 4
  %and73 = and i32 %45, 262144
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.72
  br label %cond.end

cond.false:                                       ; preds = %if.end.72
  %46 = load i32, i32* %ii, align 4
  %call75 = call i32 @get_aa_value(i32 %46)
  %47 = load i32, i32* %ii, align 4
  %call76 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), i32 %call75, i32 %47)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %48 = load i32, i32* %ii, align 4
  %call77 = call i32 @get_aa_value(i32 %48)
  store i32 %call77, i32* %retval
  br label %return

if.end.78:                                        ; preds = %land.lhs.true.48, %if.end.45
  br label %for.inc

for.inc:                                          ; preds = %if.end.78, %if.then.40, %if.then.30, %if.then.21, %if.then.16, %if.then.9, %if.then
  %49 = load i32, i32* %n, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end
  %50 = load i32, i32* %m, align 4
  %inc80 = add nsw i32 %50, 1
  store i32 %inc80, i32* %m, align 4
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.81, %cond.end
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @atari_atari_find_attack_moves(i32 %color, i32 %minsize, %struct.aa_move* %attacks, i8* %goal) #0 {
entry:
  %color.addr = alloca i32, align 4
  %minsize.addr = alloca i32, align 4
  %attacks.addr = alloca %struct.aa_move*, align 8
  %goal.addr = alloca i8*, align 8
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %minsize, i32* %minsize.addr, align 4
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  %0 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  call void @aa_init_moves(%struct.aa_move* %0)
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %minsize.addr, align 4
  %3 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %4 = load i8*, i8** %goal.addr, align 8
  call void @atari_atari_attack_patterns(i32 %1, i32 %2, %struct.aa_move* %3, i8* %4)
  %5 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  call void @aa_sort_moves(%struct.aa_move* %5)
  %6 = load i32, i32* @debug, align 4
  %and = and i32 %6, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %if.then
  %7 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %7, 361
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx = getelementptr inbounds %struct.aa_move, %struct.aa_move* %9, i64 %idxprom
  %move = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %move, align 4
  %cmp1 = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %11, label %for.body, label %for.end.25

for.body:                                         ; preds = %land.end
  %12 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %13, i64 %idxprom2
  %move4 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx3, i32 0, i32 0
  %14 = load i32, i32* %move4, align 4
  %call5 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 %14)
  store i32 0, i32* %r, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %r, align 4
  %cmp7 = icmp slt i32 %15, 4
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %r, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %18, i64 %idxprom10
  %target = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %target, i32 0, i64 %idxprom9
  %19 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp eq i32 %19, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body.8
  br label %for.end

if.end:                                           ; preds = %for.body.8
  %20 = load i32, i32* %r, align 4
  %cmp15 = icmp eq i32 %20, 0
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)
  %21 = load i32, i32* %r, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %23, i64 %idxprom17
  %target19 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %target19, i32 0, i64 %idxprom16
  %24 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* %cond, i32 %24)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %r, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.6

for.end:                                          ; preds = %if.then.14, %for.cond.6
  %call22 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %26 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond

for.end.25:                                       ; preds = %land.end
  %call26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.25, %entry
  ret void
}

declare i32 @countlib(i32) #1

declare i32 @findlib(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_aa_value(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %k = alloca i32, align 4
  %num_stones = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call = call i32 @findstones(i32 %0, i32 361, i32* %arraydecay)
  store i32 %call, i32* %num_stones, align 4
  store i32 0, i32* %value, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %num_stones, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %value, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %value, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %value, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @atari_atari_find_defense_moves(i32* %targets, i32* %moves) #0 {
entry:
  %retval = alloca i32, align 4
  %targets.addr = alloca i32*, align 8
  %moves.addr = alloca i32*, align 8
  %num_moves = alloca i32, align 4
  %move = alloca i32, align 4
  %k = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [4 x i32], align 16
  %neighbors = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %mx = alloca [400 x i32], align 16
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %str = alloca i32, align 4
  %attack_point = alloca i32, align 4
  store i32* %targets, i32** %targets.addr, align 8
  store i32* %moves, i32** %moves.addr, align 8
  store i32 0, i32* %num_moves, align 4
  %0 = bitcast [400 x i32]* %mx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.156, %entry
  %1 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %r, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %targets.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %for.body, label %for.end.158

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %targets.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  store i32 %8, i32* %str, align 4
  %9 = load i32, i32* %str, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.156

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %str, align 4
  %call = call i32 @find_defense(i32 %11, i32* %move)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %for.inc.156

if.end.9:                                         ; preds = %if.end
  %12 = load i32, i32* %move, align 4
  %13 = load i32, i32* %num_moves, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %num_moves, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i32*, i32** %moves.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 %idxprom10
  store i32 %12, i32* %arrayidx11, align 4
  %15 = load i32, i32* %num_moves, align 4
  %cmp12 = icmp eq i32 %15, 361
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  %16 = load i32, i32* %num_moves, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %17 = load i32, i32* %move, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom16
  store i32 1, i32* %arrayidx17, align 4
  %18 = load i32, i32* %str, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call18 = call i32 @findlib(i32 %18, i32 4, i32* %arraydecay)
  store i32 %call18, i32* %liberties, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end.15
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %liberties, align 4
  %cmp20 = icmp slt i32 %19, %20
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %21 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %tobool27 = icmp ne i32 %23, 0
  br i1 %tobool27, label %if.end.54, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.22
  %24 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %26 = load i32, i32* %str, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %27 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %28 = load i32, i32* %str, align 4
  %call33 = call i32 @trymove(i32 %25, i32 %conv32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i32 %28, i32 0, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.54

if.then.35:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %str, align 4
  %call36 = call i32 @attack(i32 %29, i32* null)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.then.35
  %30 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %32 = load i32, i32* %num_moves, align 4
  %inc42 = add nsw i32 %32, 1
  store i32 %inc42, i32* %num_moves, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load i32*, i32** %moves.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %33, i64 %idxprom43
  store i32 %31, i32* %arrayidx44, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom45
  %35 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom47
  store i32 1, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %if.then.35
  call void @popgo()
  %36 = load i32, i32* %num_moves, align 4
  %cmp50 = icmp eq i32 %36, 361
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.49
  %37 = load i32, i32* %num_moves, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %38 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %38, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %39 = load i32, i32* %str, align 4
  %arraydecay56 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call57 = call i32 @chainlinks(i32 %39, i32* %arraydecay56)
  store i32 %call57, i32* %neighbors, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.138, %for.end
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %neighbors, align 4
  %cmp59 = icmp slt i32 %40, %41
  br i1 %cmp59, label %for.body.61, label %for.end.140

for.body.61:                                      ; preds = %for.cond.58
  %42 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %42 to i64
  %arrayidx63 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom62
  %43 = load i32, i32* %arrayidx63, align 4
  %call64 = call i32 @attack(i32 %43, i32* %attack_point)
  %cmp65 = icmp eq i32 %call64, 5
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.81

land.lhs.true.67:                                 ; preds = %for.body.61
  %44 = load i32, i32* %attack_point, align 4
  %idxprom68 = sext i32 %44 to i64
  %arrayidx69 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom68
  %45 = load i32, i32* %arrayidx69, align 4
  %tobool70 = icmp ne i32 %45, 0
  br i1 %tobool70, label %if.end.81, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.67
  %46 = load i32, i32* %attack_point, align 4
  %47 = load i32, i32* %num_moves, align 4
  %inc72 = add nsw i32 %47, 1
  store i32 %inc72, i32* %num_moves, align 4
  %idxprom73 = sext i32 %47 to i64
  %48 = load i32*, i32** %moves.addr, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %48, i64 %idxprom73
  store i32 %46, i32* %arrayidx74, align 4
  %49 = load i32, i32* %num_moves, align 4
  %cmp75 = icmp eq i32 %49, 361
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.71
  %50 = load i32, i32* %num_moves, align 4
  store i32 %50, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.then.71
  %51 = load i32, i32* %attack_point, align 4
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom79
  store i32 1, i32* %arrayidx80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.78, %land.lhs.true.67, %for.body.61
  %52 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom82
  %53 = load i32, i32* %arrayidx83, align 4
  %arraydecay84 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call85 = call i32 @findlib(i32 %53, i32 3, i32* %arraydecay84)
  store i32 %call85, i32* %liberties, align 4
  %54 = load i32, i32* %liberties, align 4
  %cmp86 = icmp sle i32 %54, 3
  br i1 %cmp86, label %if.then.88, label %if.end.137

if.then.88:                                       ; preds = %if.end.81
  store i32 0, i32* %s, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.134, %if.then.88
  %55 = load i32, i32* %s, align 4
  %56 = load i32, i32* %liberties, align 4
  %cmp90 = icmp slt i32 %55, %56
  br i1 %cmp90, label %for.body.92, label %for.end.136

for.body.92:                                      ; preds = %for.cond.89
  %57 = load i32, i32* %s, align 4
  %idxprom93 = sext i32 %57 to i64
  %arrayidx94 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom93
  %58 = load i32, i32* %arrayidx94, align 4
  %idxprom95 = sext i32 %58 to i64
  %arrayidx96 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom95
  %59 = load i32, i32* %arrayidx96, align 4
  %tobool97 = icmp ne i32 %59, 0
  br i1 %tobool97, label %if.end.133, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %for.body.92
  %60 = load i32, i32* %s, align 4
  %idxprom99 = sext i32 %60 to i64
  %arrayidx100 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom99
  %61 = load i32, i32* %arrayidx100, align 4
  %62 = load i32, i32* %str, align 4
  %idxprom101 = sext i32 %62 to i64
  %arrayidx102 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom101
  %63 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %63 to i32
  %call104 = call i32 @is_self_atari(i32 %61, i32 %conv103)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.133, label %land.lhs.true.106

land.lhs.true.106:                                ; preds = %land.lhs.true.98
  %64 = load i32, i32* %s, align 4
  %idxprom107 = sext i32 %64 to i64
  %arrayidx108 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom107
  %65 = load i32, i32* %arrayidx108, align 4
  %66 = load i32, i32* %str, align 4
  %idxprom109 = sext i32 %66 to i64
  %arrayidx110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom109
  %67 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %67 to i32
  %68 = load i32, i32* %str, align 4
  %call112 = call i32 @trymove(i32 %65, i32 %conv111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %68, i32 0, i32 0)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %land.lhs.true.106
  %69 = load i32, i32* %str, align 4
  %call115 = call i32 @attack(i32 %69, i32* null)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.128

if.then.118:                                      ; preds = %if.then.114
  %70 = load i32, i32* %s, align 4
  %idxprom119 = sext i32 %70 to i64
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom119
  %71 = load i32, i32* %arrayidx120, align 4
  %72 = load i32, i32* %num_moves, align 4
  %inc121 = add nsw i32 %72, 1
  store i32 %inc121, i32* %num_moves, align 4
  %idxprom122 = sext i32 %72 to i64
  %73 = load i32*, i32** %moves.addr, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %73, i64 %idxprom122
  store i32 %71, i32* %arrayidx123, align 4
  %74 = load i32, i32* %s, align 4
  %idxprom124 = sext i32 %74 to i64
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom124
  %75 = load i32, i32* %arrayidx125, align 4
  %idxprom126 = sext i32 %75 to i64
  %arrayidx127 = getelementptr inbounds [400 x i32], [400 x i32]* %mx, i32 0, i64 %idxprom126
  store i32 1, i32* %arrayidx127, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.118, %if.then.114
  call void @popgo()
  %76 = load i32, i32* %num_moves, align 4
  %cmp129 = icmp eq i32 %76, 361
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  %77 = load i32, i32* %num_moves, align 4
  store i32 %77, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.end.128
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %land.lhs.true.106, %land.lhs.true.98, %for.body.92
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %78 = load i32, i32* %s, align 4
  %inc135 = add nsw i32 %78, 1
  store i32 %inc135, i32* %s, align 4
  br label %for.cond.89

for.end.136:                                      ; preds = %for.cond.89
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %if.end.81
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %79 = load i32, i32* %k, align 4
  %inc139 = add nsw i32 %79, 1
  store i32 %inc139, i32* %k, align 4
  br label %for.cond.58

for.end.140:                                      ; preds = %for.cond.58
  %80 = load i32, i32* @debug, align 4
  %and = and i32 %80, 262144
  %tobool141 = icmp ne i32 %and, 0
  br i1 %tobool141, label %if.then.142, label %if.end.155

if.then.142:                                      ; preds = %for.end.140
  %81 = load i32, i32* %str, align 4
  %call143 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0), i32 %81)
  store i32 0, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.151, %if.then.142
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %num_moves, align 4
  %cmp145 = icmp slt i32 %82, %83
  br i1 %cmp145, label %for.body.147, label %for.end.153

for.body.147:                                     ; preds = %for.cond.144
  %84 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %84 to i64
  %85 = load i32*, i32** %moves.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %85, i64 %idxprom148
  %86 = load i32, i32* %arrayidx149, align 4
  %call150 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %86)
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.147
  %87 = load i32, i32* %k, align 4
  %inc152 = add nsw i32 %87, 1
  store i32 %inc152, i32* %k, align 4
  br label %for.cond.144

for.end.153:                                      ; preds = %for.cond.144
  %call154 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.153, %for.end.140
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155, %if.then.8, %if.then
  %88 = load i32, i32* %r, align 4
  %inc157 = add nsw i32 %88, 1
  store i32 %inc157, i32* %r, align 4
  br label %for.cond

for.end.158:                                      ; preds = %land.end
  %89 = load i32, i32* %num_moves, align 4
  store i32 %89, i32* %retval
  br label %return

return:                                           ; preds = %for.end.158, %if.then.131, %if.then.77, %if.then.52, %if.then.14
  %90 = load i32, i32* %retval
  ret i32 %90
}

declare void @modify_depth_values(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @update_aa_goal(i8* %goal, i8* %new_goal, i32 %apos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %goal.addr = alloca i8*, align 8
  %new_goal.addr = alloca i8*, align 8
  %apos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %dists = alloca [400 x i32], align 16
  %queue = alloca [361 x i32], align 16
  %queue_end = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %pos = alloca i32, align 4
  %smallest_dist = alloca i32, align 4
  %best_index = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %size = alloca i32, align 4
  %libs = alloca i32, align 4
  %deltadist = alloca i32, align 4
  store i8* %goal, i8** %goal.addr, align 8
  store i8* %new_goal, i8** %new_goal.addr, align 8
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %queue_end, align 4
  %1 = load i8*, i8** %goal.addr, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %new_goal.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 400, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %new_goal.addr, align 8
  %4 = load i8*, i8** %goal.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 400, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = bitcast [400 x i32]* %dists to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 1600, i32 16, i1 false)
  %6 = load i32, i32* %apos.addr, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %8 = load i32, i32* %apos.addr, align 4
  %9 = load i32, i32* %queue_end, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %queue_end, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* %queue_end, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.196, %if.end.8
  %11 = load i32, i32* %r, align 4
  %12 = load i32, i32* %queue_end, align 4
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond
  store i32 361, i32* %smallest_dist, align 4
  store i32 -1, i32* %best_index, align 4
  %13 = load i32, i32* %queue_end, align 4
  %cmp10 = icmp slt i32 %13, 361
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %for.body
  br label %if.end.13

if.else.12:                                       ; preds = %for.body
  call void @abortgo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 1229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  %14 = load i32, i32* %r, align 4
  store i32 %14, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.13
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %queue_end, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %17 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load i32, i32* %smallest_dist, align 4
  %cmp21 = icmp slt i32 %19, %20
  br i1 %cmp21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %for.body.16
  %21 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  store i32 %23, i32* %smallest_dist, align 4
  %24 = load i32, i32* %k, align 4
  store i32 %24, i32* %best_index, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %25 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %25, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %26 = load i32, i32* %best_index, align 4
  %27 = load i32, i32* %r, align 4
  %cmp29 = icmp ne i32 %26, %27
  br i1 %cmp29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %for.end
  %28 = load i32, i32* %r, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom31
  %29 = load i32, i32* %arrayidx32, align 4
  store i32 %29, i32* %tmp, align 4
  %30 = load i32, i32* %best_index, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom33
  %31 = load i32, i32* %arrayidx34, align 4
  %32 = load i32, i32* %r, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom35
  store i32 %31, i32* %arrayidx36, align 4
  %33 = load i32, i32* %tmp, align 4
  %34 = load i32, i32* %best_index, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom37
  store i32 %33, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.30, %for.end
  %35 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom40
  %36 = load i32, i32* %arrayidx41, align 4
  store i32 %36, i32* %pos, align 4
  %37 = load i32, i32* %pos, align 4
  %idxprom42 = sext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %38 = load i8, i8* %arrayidx43, align 1
  %conv = zext i8 %38 to i32
  %39 = load i32, i32* %other, align 4
  %cmp44 = icmp eq i32 %conv, %39
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.end.39
  %40 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %40 to i64
  %41 = load i8*, i8** %new_goal.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %41, i64 %idxprom47
  store i8 1, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.end.39
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.193, %if.end.49
  %42 = load i32, i32* %k, align 4
  %cmp51 = icmp slt i32 %42, 4
  br i1 %cmp51, label %for.body.53, label %for.end.195

for.body.53:                                      ; preds = %for.cond.50
  %43 = load i32, i32* %pos, align 4
  %44 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom55
  %45 = load i32, i32* %arrayidx56, align 4
  %add = add nsw i32 %43, %45
  store i32 %add, i32* %pos2, align 4
  %46 = load i32, i32* %pos2, align 4
  %idxprom57 = sext i32 %46 to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %47 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %47 to i32
  %cmp60 = icmp ne i32 %conv59, 3
  br i1 %cmp60, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %for.body.53
  br label %for.inc.193

if.end.63:                                        ; preds = %for.body.53
  %48 = load i32, i32* %pos, align 4
  %idxprom64 = sext i32 %48 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %49 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %49 to i32
  %50 = load i32, i32* %other, align 4
  %cmp67 = icmp eq i32 %conv66, %50
  br i1 %cmp67, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.63
  %51 = load i32, i32* %pos, align 4
  %52 = load i32, i32* %apos.addr, align 4
  %cmp69 = icmp eq i32 %51, %52
  br i1 %cmp69, label %land.lhs.true, label %if.else.113

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.63
  %53 = load i32, i32* %pos2, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom71
  %54 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %54 to i32
  %cmp74 = icmp eq i32 %conv73, 0
  br i1 %cmp74, label %if.then.76, label %if.else.113

if.then.76:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.76
  %55 = load i32, i32* %pos, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom77
  %56 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %56, 1
  %cmp80 = icmp sle i32 %add79, 5
  br i1 %cmp80, label %if.then.82, label %if.end.112

if.then.82:                                       ; preds = %do.body
  %57 = load i32, i32* %pos2, align 4
  %idxprom83 = sext i32 %57 to i64
  %arrayidx84 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom83
  %58 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp eq i32 %58, 0
  br i1 %cmp85, label %if.then.87, label %if.else.96

if.then.87:                                       ; preds = %if.then.82
  %59 = load i32, i32* %pos2, align 4
  %60 = load i32, i32* %queue_end, align 4
  %inc88 = add nsw i32 %60, 1
  store i32 %inc88, i32* %queue_end, align 4
  %idxprom89 = sext i32 %60 to i64
  %arrayidx90 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom89
  store i32 %59, i32* %arrayidx90, align 4
  %61 = load i32, i32* %pos, align 4
  %idxprom91 = sext i32 %61 to i64
  %arrayidx92 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom91
  %62 = load i32, i32* %arrayidx92, align 4
  %add93 = add nsw i32 %62, 1
  %63 = load i32, i32* %pos2, align 4
  %idxprom94 = sext i32 %63 to i64
  %arrayidx95 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom94
  store i32 %add93, i32* %arrayidx95, align 4
  br label %if.end.111

if.else.96:                                       ; preds = %if.then.82
  %64 = load i32, i32* %pos2, align 4
  %idxprom97 = sext i32 %64 to i64
  %arrayidx98 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom97
  %65 = load i32, i32* %arrayidx98, align 4
  %66 = load i32, i32* %pos, align 4
  %idxprom99 = sext i32 %66 to i64
  %arrayidx100 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom99
  %67 = load i32, i32* %arrayidx100, align 4
  %add101 = add nsw i32 %67, 1
  %cmp102 = icmp slt i32 %65, %add101
  br i1 %cmp102, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %if.else.96
  %68 = load i32, i32* %pos, align 4
  %idxprom105 = sext i32 %68 to i64
  %arrayidx106 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom105
  %69 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %69, 1
  %70 = load i32, i32* %pos2, align 4
  %idxprom108 = sext i32 %70 to i64
  %arrayidx109 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom108
  store i32 %add107, i32* %arrayidx109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %if.else.96
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.87
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.112
  br label %if.end.192

if.else.113:                                      ; preds = %land.lhs.true, %lor.lhs.false
  %71 = load i32, i32* %pos, align 4
  %idxprom114 = sext i32 %71 to i64
  %arrayidx115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom114
  %72 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %72 to i32
  %73 = load i32, i32* %other, align 4
  %cmp117 = icmp ne i32 %conv116, %73
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.191

land.lhs.true.119:                                ; preds = %if.else.113
  %74 = load i32, i32* %pos2, align 4
  %idxprom120 = sext i32 %74 to i64
  %arrayidx121 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom120
  %75 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %75 to i32
  %76 = load i32, i32* %other, align 4
  %cmp123 = icmp eq i32 %conv122, %76
  br i1 %cmp123, label %if.then.125, label %if.end.191

if.then.125:                                      ; preds = %land.lhs.true.119
  %77 = load i32, i32* %pos2, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call = call i32 @findstones(i32 %77, i32 361, i32* %arraydecay)
  store i32 %call, i32* %size, align 4
  %78 = load i32, i32* %pos2, align 4
  %call129 = call i32 @countlib(i32 %78)
  store i32 %call129, i32* %libs, align 4
  %79 = load i32, i32* %libs, align 4
  %sub131 = sub nsw i32 %79, 3
  store i32 %sub131, i32* %deltadist, align 4
  %80 = load i32, i32* %deltadist, align 4
  %cmp132 = icmp slt i32 %80, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.then.125
  store i32 0, i32* %deltadist, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %if.then.125
  store i32 0, i32* %s, align 4
  br label %for.cond.136

for.cond.136:                                     ; preds = %for.inc.188, %if.end.135
  %81 = load i32, i32* %s, align 4
  %82 = load i32, i32* %size, align 4
  %cmp137 = icmp slt i32 %81, %82
  br i1 %cmp137, label %for.body.139, label %for.end.190

for.body.139:                                     ; preds = %for.cond.136
  br label %do.body.140

do.body.140:                                      ; preds = %for.body.139
  %83 = load i32, i32* %pos, align 4
  %idxprom141 = sext i32 %83 to i64
  %arrayidx142 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom141
  %84 = load i32, i32* %arrayidx142, align 4
  %85 = load i32, i32* %deltadist, align 4
  %add143 = add nsw i32 %84, %85
  %cmp144 = icmp sle i32 %add143, 5
  br i1 %cmp144, label %if.then.146, label %if.end.186

if.then.146:                                      ; preds = %do.body.140
  %86 = load i32, i32* %s, align 4
  %idxprom147 = sext i32 %86 to i64
  %arrayidx148 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom147
  %87 = load i32, i32* %arrayidx148, align 4
  %idxprom149 = sext i32 %87 to i64
  %arrayidx150 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom149
  %88 = load i32, i32* %arrayidx150, align 4
  %cmp151 = icmp eq i32 %88, 0
  br i1 %cmp151, label %if.then.153, label %if.else.166

if.then.153:                                      ; preds = %if.then.146
  %89 = load i32, i32* %s, align 4
  %idxprom154 = sext i32 %89 to i64
  %arrayidx155 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom154
  %90 = load i32, i32* %arrayidx155, align 4
  %91 = load i32, i32* %queue_end, align 4
  %inc156 = add nsw i32 %91, 1
  store i32 %inc156, i32* %queue_end, align 4
  %idxprom157 = sext i32 %91 to i64
  %arrayidx158 = getelementptr inbounds [361 x i32], [361 x i32]* %queue, i32 0, i64 %idxprom157
  store i32 %90, i32* %arrayidx158, align 4
  %92 = load i32, i32* %pos, align 4
  %idxprom159 = sext i32 %92 to i64
  %arrayidx160 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom159
  %93 = load i32, i32* %arrayidx160, align 4
  %94 = load i32, i32* %deltadist, align 4
  %add161 = add nsw i32 %93, %94
  %95 = load i32, i32* %s, align 4
  %idxprom162 = sext i32 %95 to i64
  %arrayidx163 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom162
  %96 = load i32, i32* %arrayidx163, align 4
  %idxprom164 = sext i32 %96 to i64
  %arrayidx165 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom164
  store i32 %add161, i32* %arrayidx165, align 4
  br label %if.end.185

if.else.166:                                      ; preds = %if.then.146
  %97 = load i32, i32* %s, align 4
  %idxprom167 = sext i32 %97 to i64
  %arrayidx168 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom167
  %98 = load i32, i32* %arrayidx168, align 4
  %idxprom169 = sext i32 %98 to i64
  %arrayidx170 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom169
  %99 = load i32, i32* %arrayidx170, align 4
  %100 = load i32, i32* %pos, align 4
  %idxprom171 = sext i32 %100 to i64
  %arrayidx172 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom171
  %101 = load i32, i32* %arrayidx172, align 4
  %102 = load i32, i32* %deltadist, align 4
  %add173 = add nsw i32 %101, %102
  %cmp174 = icmp slt i32 %99, %add173
  br i1 %cmp174, label %if.then.176, label %if.end.184

if.then.176:                                      ; preds = %if.else.166
  %103 = load i32, i32* %pos, align 4
  %idxprom177 = sext i32 %103 to i64
  %arrayidx178 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom177
  %104 = load i32, i32* %arrayidx178, align 4
  %105 = load i32, i32* %deltadist, align 4
  %add179 = add nsw i32 %104, %105
  %106 = load i32, i32* %s, align 4
  %idxprom180 = sext i32 %106 to i64
  %arrayidx181 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom180
  %107 = load i32, i32* %arrayidx181, align 4
  %idxprom182 = sext i32 %107 to i64
  %arrayidx183 = getelementptr inbounds [400 x i32], [400 x i32]* %dists, i32 0, i64 %idxprom182
  store i32 %add179, i32* %arrayidx183, align 4
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.176, %if.else.166
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.153
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %do.body.140
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  br label %for.inc.188

for.inc.188:                                      ; preds = %do.end.187
  %108 = load i32, i32* %s, align 4
  %inc189 = add nsw i32 %108, 1
  store i32 %inc189, i32* %s, align 4
  br label %for.cond.136

for.end.190:                                      ; preds = %for.cond.136
  br label %if.end.191

if.end.191:                                       ; preds = %for.end.190, %land.lhs.true.119, %if.else.113
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %do.end
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192, %if.then.62
  %109 = load i32, i32* %k, align 4
  %inc194 = add nsw i32 %109, 1
  store i32 %inc194, i32* %k, align 4
  br label %for.cond.50

for.end.195:                                      ; preds = %for.cond.50
  br label %for.inc.196

for.inc.196:                                      ; preds = %for.end.195
  %110 = load i32, i32* %r, align 4
  %inc197 = add nsw i32 %110, 1
  store i32 %inc197, i32* %r, align 4
  br label %for.cond

for.end.198:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.198, %if.then.7
  %111 = load i32, i32* %retval
  ret i32 %111
}

declare i32 @find_defense(i32, i32*) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @find_origin(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_aa_status(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %stones = alloca [361 x i32], align 16
  %num_stones = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i32 0
  %call = call i32 @findstones(i32 %4, i32 361, i32* %arraydecay)
  store i32 %call, i32* %num_stones, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %num_stones, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp ne i32 %9, 3
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [361 x i32], [361 x i32]* %stones, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %13 = load i32, i32* %k, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @adjacent_strings(i32, i32) #1

declare i32 @liberty_of_string(i32, i32) #1

declare i32 @findstones(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @aa_init_moves(%struct.aa_move* %attacks) #0 {
entry:
  %attacks.addr = alloca %struct.aa_move*, align 8
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  %0 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx = getelementptr inbounds %struct.aa_move, %struct.aa_move* %0, i64 0
  %move = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx, i32 0, i32 0
  store i32 0, i32* %move, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @atari_atari_attack_patterns(i32 %color, i32 %minsize, %struct.aa_move* %attacks, i8* %goal) #0 {
entry:
  %color.addr = alloca i32, align 4
  %minsize.addr = alloca i32, align 4
  %attacks.addr = alloca %struct.aa_move*, align 8
  %goal.addr = alloca i8*, align 8
  %revised_goal = alloca [400 x i8], align 16
  store i32 %color, i32* %color.addr, align 4
  store i32 %minsize, i32* %minsize.addr, align 4
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  store i8* %goal, i8** %goal.addr, align 8
  %0 = load i32, i32* %minsize.addr, align 4
  store i32 %0, i32* @current_minsize, align 4
  %1 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  store %struct.aa_move* %1, %struct.aa_move** @current_attacks, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @conditional_attack_point to i8*), i8 0, i64 1600, i32 16, i1 false)
  %2 = load i8*, i8** %goal.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %goal.addr, align 8
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %revised_goal, i32 0, i32 0
  %4 = load i32, i32* %color.addr, align 4
  %call = call i32 @update_aa_goal(i8* %3, i8* %arraydecay, i32 0, i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %arraydecay1 = getelementptr inbounds [400 x i8], [400 x i8]* %revised_goal, i32 0, i32 0
  store i8* %arraydecay1, i8** %goal.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i8*, i8** %goal.addr, align 8
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @atari_atari_attack_callback, i32 %5, %struct.pattern_db* @aa_attackpat_db, i8* null, i8* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aa_sort_moves(%struct.aa_move* %attacks) #0 {
entry:
  %attacks.addr = alloca %struct.aa_move*, align 8
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %number_of_attacks = alloca i32, align 4
  %number_of_targets = alloca i32, align 4
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 361
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx = getelementptr inbounds %struct.aa_move, %struct.aa_move* %2, i64 %idxprom
  %move = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %move, align 4
  %cmp1 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end.15

for.body:                                         ; preds = %land.end
  store i32 0, i32* %r, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %r, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %6 = load i32, i32* %r, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %8, i64 %idxprom6
  %target = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %target, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %r, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %11 = load i32, i32* %r, align 4
  store i32 %11, i32* %number_of_targets, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %13, i64 %idxprom10
  %target12 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx11, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %target12, i32 0, i32 0
  %14 = bitcast i32* %arraydecay to i8*
  %15 = load i32, i32* %number_of_targets, align 4
  %conv = sext i32 %15 to i64
  call void @gg_sort(i8* %14, i64 %conv, i64 4, i32 (i8*, i8*)* @target_comp_func)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %16 = load i32, i32* %k, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %k, align 4
  br label %for.cond

for.end.15:                                       ; preds = %land.end
  %17 = load i32, i32* %k, align 4
  store i32 %17, i32* %number_of_attacks, align 4
  %18 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %19 = bitcast %struct.aa_move* %18 to i8*
  %20 = load i32, i32* %number_of_attacks, align 4
  %conv16 = sext i32 %20 to i64
  call void @gg_sort(i8* %19, i64 %conv16, i64 20, i32 (i8*, i8*)* @move_comp_func)
  ret void
}

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @atari_atari_attack_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %move = alloca i32, align 4
  %k = alloca i32, align 4
  %str = alloca i32, align 4
  %acode = alloca i32, align 4
  %attack_point = alloca i32, align 4
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
  %6 = load i32, i32* %move, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i32 0, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %8 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 22
  %9 = load i32, i32* %autohelper_flag, align 4
  %and = and i32 %9, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 24
  %11 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %12 = load i32, i32* %ll.addr, align 4
  %13 = load i32, i32* %move, align 4
  %14 = load i32, i32* %color.addr, align 4
  %call = call i32 %11(i32 %12, i32 %13, i32 %14, i32 0)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  br label %for.end

if.end.9:                                         ; preds = %if.then.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %15 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 23
  %16 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool11 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper13 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 23
  %18 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper13, align 8
  %19 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %20 = load i32, i32* %ll.addr, align 4
  %21 = load i32, i32* %move, align 4
  %22 = load i32, i32* %color.addr, align 4
  %call14 = call i32 %18(%struct.pattern* %19, i32 %20, i32 %21, i32 %22)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.12
  br label %for.end

if.end.17:                                        ; preds = %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.10
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %23 = load i32, i32* %k, align 4
  %24 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %24, i32 0, i32 1
  %25 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 0
  %28 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx20 = getelementptr inbounds %struct.patval, %struct.patval* %28, i64 %idxprom19
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx20, i32 0, i32 1
  %29 = load i32, i32* %att, align 4
  %cmp21 = icmp eq i32 %29, 1
  br i1 %cmp21, label %if.then.22, label %if.end.107

if.then.22:                                       ; preds = %for.body
  %30 = load i32, i32* %ll.addr, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %31 to i64
  %32 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn25 = getelementptr inbounds %struct.pattern, %struct.pattern* %32, i32 0, i32 0
  %33 = load %struct.patval*, %struct.patval** %patn25, align 8
  %arrayidx26 = getelementptr inbounds %struct.patval, %struct.patval* %33, i64 %idxprom24
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx26, i32 0, i32 0
  %34 = load i32, i32* %offset, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28, i32 0, i64 %idxprom23
  %35 = load i32, i32* %arrayidx29, align 4
  %36 = load i32, i32* %anchor.addr, align 4
  %add30 = add nsw i32 %35, %36
  %call31 = call i32 @find_origin(i32 %add30)
  store i32 %call31, i32* %str, align 4
  %37 = load i32, i32* @current_minsize, align 4
  %cmp32 = icmp sgt i32 %37, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.then.22
  %38 = load i32, i32* %str, align 4
  %call33 = call i32 @get_aa_value(i32 %38)
  %39 = load i32, i32* @current_minsize, align 4
  %cmp34 = icmp slt i32 %call33, %39
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.36:                                        ; preds = %land.lhs.true, %if.then.22
  %40 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %41 = load i32, i32* %move, align 4
  %42 = load i32, i32* %str, align 4
  %call37 = call i32 @aa_move_known(%struct.aa_move* %40, i32 %41, i32 %42)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  br label %for.inc

if.end.40:                                        ; preds = %if.end.36
  %43 = load i32, i32* %str, align 4
  %call41 = call i32 @get_aa_status(i32 %43)
  %cmp42 = icmp ne i32 %call41, 1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  br label %for.inc

if.end.44:                                        ; preds = %if.end.40
  %44 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class = getelementptr inbounds %struct.pattern, %struct.pattern* %44, i32 0, i32 14
  %45 = load i32, i32* %class, align 4
  %and45 = and i32 %45, 16
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.end.59, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %if.end.44
  %46 = load i32, i32* %move, align 4
  %47 = load i32, i32* %color.addr, align 4
  %call48 = call i32 @is_self_atari(i32 %46, i32 %47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %land.lhs.true.47
  %48 = load i32, i32* %str, align 4
  %call51 = call i32 @countlib(i32 %48)
  %cmp52 = icmp sgt i32 %call51, 2
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.50
  br label %for.inc

if.end.54:                                        ; preds = %if.then.50
  %49 = load i32, i32* %move, align 4
  %50 = load i32, i32* %color.addr, align 4
  %call55 = call i32 @safe_move(i32 %49, i32 %50)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.end.54
  br label %for.inc

if.end.58:                                        ; preds = %if.end.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %land.lhs.true.47, %if.end.44
  %51 = load i32, i32* %move, align 4
  %52 = load i32, i32* %color.addr, align 4
  %53 = load i32, i32* %str, align 4
  %call60 = call i32 @trymove(i32 %51, i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0), i32 %53, i32 0, i32 0)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.106

if.then.62:                                       ; preds = %if.end.59
  store i32 0, i32* %attack_point, align 4
  %54 = load i32, i32* %str, align 4
  %idxprom63 = sext i32 %54 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %55 = load i8, i8* %arrayidx64, align 1
  %tobool65 = icmp ne i8 %55, 0
  br i1 %tobool65, label %if.else, label %if.then.66

if.then.66:                                       ; preds = %if.then.62
  store i32 5, i32* %acode, align 4
  br label %if.end.68

if.else:                                          ; preds = %if.then.62
  %56 = load i32, i32* %str, align 4
  %call67 = call i32 @attack(i32 %56, i32* %attack_point)
  store i32 %call67, i32* %acode, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.66
  call void @popgo()
  %57 = load i32, i32* %acode, align 4
  %cmp69 = icmp ne i32 %57, 0
  br i1 %cmp69, label %if.then.70, label %if.end.105

if.then.70:                                       ; preds = %if.end.68
  %58 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class71 = getelementptr inbounds %struct.pattern, %struct.pattern* %58, i32 0, i32 14
  %59 = load i32, i32* %class71, align 4
  %and72 = and i32 %59, 256
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.else.96

land.lhs.true.74:                                 ; preds = %if.then.70
  %60 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %61 = load i32, i32* %move, align 4
  %call75 = call i32 @aa_move_known(%struct.aa_move* %60, i32 %61, i32 0)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.else.96, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.74
  %62 = load i32, i32* @debug, align 4
  %and78 = and i32 %62, 262144
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.77
  br label %cond.end

cond.false:                                       ; preds = %if.then.77
  %63 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %63, i32 0, i32 3
  %64 = load i8*, i8** %name, align 8
  %65 = load i32, i32* %ll.addr, align 4
  %66 = load i32, i32* %str, align 4
  %67 = load i32, i32* %move, align 4
  %68 = load i32, i32* %acode, align 4
  %call80 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i32 0, i32 0), i8* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %69 = load i32, i32* %move, align 4
  %idxprom81 = sext i32 %69 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i32 0, i64 %idxprom81
  %70 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %70, 0
  br i1 %cmp83, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %cond.end
  %71 = load i32, i32* %str, align 4
  %72 = load i32, i32* %move, align 4
  %idxprom85 = sext i32 %72 to i64
  %arrayidx86 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i32 0, i64 %idxprom85
  store i32 %71, i32* %arrayidx86, align 4
  br label %if.end.95

if.else.87:                                       ; preds = %cond.end
  %73 = load i32, i32* %move, align 4
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i32 0, i64 %idxprom88
  %74 = load i32, i32* %arrayidx89, align 4
  %75 = load i32, i32* %str, align 4
  %cmp90 = icmp ne i32 %74, %75
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.else.87
  %76 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %77 = load i32, i32* %move, align 4
  %78 = load i32, i32* %move, align 4
  %idxprom92 = sext i32 %78 to i64
  %arrayidx93 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i32 0, i64 %idxprom92
  %79 = load i32, i32* %arrayidx93, align 4
  call void @aa_add_move(%struct.aa_move* %76, i32 %77, i32 %79)
  %80 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %81 = load i32, i32* %move, align 4
  %82 = load i32, i32* %str, align 4
  call void @aa_add_move(%struct.aa_move* %80, i32 %81, i32 %82)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.else.87
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.84
  br label %if.end.104

if.else.96:                                       ; preds = %land.lhs.true.74, %if.then.70
  %83 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %84 = load i32, i32* %move, align 4
  %85 = load i32, i32* %str, align 4
  call void @aa_add_move(%struct.aa_move* %83, i32 %84, i32 %85)
  %86 = load i32, i32* @debug, align 4
  %and97 = and i32 %86, 262144
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %cond.false.100, label %cond.true.99

cond.true.99:                                     ; preds = %if.else.96
  br label %cond.end.103

cond.false.100:                                   ; preds = %if.else.96
  %87 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name101 = getelementptr inbounds %struct.pattern, %struct.pattern* %87, i32 0, i32 3
  %88 = load i8*, i8** %name101, align 8
  %89 = load i32, i32* %ll.addr, align 4
  %90 = load i32, i32* %str, align 4
  %91 = load i32, i32* %move, align 4
  %92 = load i32, i32* %acode, align 4
  %call102 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.37, i32 0, i32 0), i8* %88, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.100, %cond.true.99
  br label %if.end.104

if.end.104:                                       ; preds = %cond.end.103, %if.end.95
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.68
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.59
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.107, %if.then.57, %if.then.53, %if.then.43, %if.then.39, %if.then.35
  %93 = load i32, i32* %k, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.8, %if.then.16, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @aa_move_known(%struct.aa_move* %attacks, i32 %move, i32 %target) #0 {
entry:
  %retval = alloca i32, align 4
  %attacks.addr = alloca %struct.aa_move*, align 8
  %move.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 361
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx = getelementptr inbounds %struct.aa_move, %struct.aa_move* %2, i64 %idxprom
  %move1 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %move1, align 4
  %4 = load i32, i32* %move.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %6, i64 %idxprom3
  %move5 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %move5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %k, align 4
  %cmp7 = icmp eq i32 %9, 361
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.end
  %10 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %11, i64 %idxprom10
  %move12 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx11, i32 0, i32 0
  %12 = load i32, i32* %move12, align 4
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %13 = load i32, i32* %target.addr, align 4
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.15
  %14 = load i32, i32* %target.addr, align 4
  %call = call i32 @find_origin(i32 %14)
  store i32 %call, i32* %target.addr, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.37, %if.end.18
  %15 = load i32, i32* %r, align 4
  %cmp20 = icmp slt i32 %15, 4
  br i1 %cmp20, label %for.body.21, label %for.end.39

for.body.21:                                      ; preds = %for.cond.19
  %16 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %18, i64 %idxprom23
  %target25 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %target25, i32 0, i64 %idxprom22
  %19 = load i32, i32* %arrayidx26, align 4
  %20 = load i32, i32* %target.addr, align 4
  %cmp27 = icmp eq i32 %19, %20
  br i1 %cmp27, label %if.then.35, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %for.body.21
  %21 = load i32, i32* %r, align 4
  %idxprom29 = sext i32 %21 to i64
  %22 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %23, i64 %idxprom30
  %target32 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %target32, i32 0, i64 %idxprom29
  %24 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false.28, %for.body.21
  br label %for.end.39

if.end.36:                                        ; preds = %lor.lhs.false.28
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %25 = load i32, i32* %r, align 4
  %inc38 = add nsw i32 %25, 1
  store i32 %inc38, i32* %r, align 4
  br label %for.cond.19

for.end.39:                                       ; preds = %if.then.35, %for.cond.19
  %26 = load i32, i32* %r, align 4
  %cmp40 = icmp eq i32 %26, 4
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end.39
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %for.end.39
  %27 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %27 to i64
  %28 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %29, i64 %idxprom44
  %target46 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %target46, i32 0, i64 %idxprom43
  %30 = load i32, i32* %arrayidx47, align 4
  %31 = load i32, i32* %target.addr, align 4
  %cmp48 = icmp eq i32 %30, %31
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.42
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.49, %if.then.41, %if.then.17, %if.then.14, %if.then.8
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @is_self_atari(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @aa_add_move(%struct.aa_move* %attacks, i32 %move, i32 %target) #0 {
entry:
  %attacks.addr = alloca %struct.aa_move*, align 8
  %move.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.aa_move* %attacks, %struct.aa_move** %attacks.addr, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 361
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx = getelementptr inbounds %struct.aa_move, %struct.aa_move* %2, i64 %idxprom
  %move1 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %move1, align 4
  %4 = load i32, i32* %move.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %6, i64 %idxprom3
  %move5 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %move5, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %k, align 4
  %cmp7 = icmp eq i32 %9, 361
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  br label %if.end.78

if.end.9:                                         ; preds = %for.end
  %10 = load i32, i32* %target.addr, align 4
  %call = call i32 @find_origin(i32 %10)
  store i32 %call, i32* %target.addr, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %12, i64 %idxprom10
  %move12 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx11, i32 0, i32 0
  %13 = load i32, i32* %move12, align 4
  %cmp13 = icmp eq i32 %13, 0
  br i1 %cmp13, label %if.then.14, label %if.end.32

if.then.14:                                       ; preds = %if.end.9
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %16, i64 %idxprom15
  %move17 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx16, i32 0, i32 0
  store i32 %14, i32* %move17, align 4
  %17 = load i32, i32* %target.addr, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %19, i64 %idxprom18
  %target20 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %target20, i32 0, i64 0
  store i32 %17, i32* %arrayidx21, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %20 to i64
  %21 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %21, i64 %idxprom22
  %target24 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [4 x i32], [4 x i32]* %target24, i32 0, i64 1
  store i32 0, i32* %arrayidx25, align 4
  %22 = load i32, i32* %k, align 4
  %cmp26 = icmp slt i32 %22, 360
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.then.14
  %23 = load i32, i32* %k, align 4
  %add = add nsw i32 %23, 1
  %idxprom28 = sext i32 %add to i64
  %24 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %24, i64 %idxprom28
  %move30 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx29, i32 0, i32 0
  store i32 0, i32* %move30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.then.14
  br label %if.end.78

if.end.32:                                        ; preds = %if.end.9
  store i32 0, i32* %r, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.51, %if.end.32
  %25 = load i32, i32* %r, align 4
  %cmp34 = icmp slt i32 %25, 4
  br i1 %cmp34, label %for.body.35, label %for.end.53

for.body.35:                                      ; preds = %for.cond.33
  %26 = load i32, i32* %r, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %27 to i64
  %28 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %28, i64 %idxprom37
  %target39 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %target39, i32 0, i64 %idxprom36
  %29 = load i32, i32* %arrayidx40, align 4
  %30 = load i32, i32* %target.addr, align 4
  %cmp41 = icmp eq i32 %29, %30
  br i1 %cmp41, label %if.then.49, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %for.body.35
  %31 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %33, i64 %idxprom44
  %target46 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %target46, i32 0, i64 %idxprom43
  %34 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %34, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.42, %for.body.35
  br label %for.end.53

if.end.50:                                        ; preds = %lor.lhs.false.42
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %35 = load i32, i32* %r, align 4
  %inc52 = add nsw i32 %35, 1
  store i32 %inc52, i32* %r, align 4
  br label %for.cond.33

for.end.53:                                       ; preds = %if.then.49, %for.cond.33
  %36 = load i32, i32* %r, align 4
  %cmp54 = icmp eq i32 %36, 4
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.53
  br label %if.end.78

if.end.56:                                        ; preds = %for.end.53
  %37 = load i32, i32* %r, align 4
  %idxprom57 = sext i32 %37 to i64
  %38 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %38 to i64
  %39 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %39, i64 %idxprom58
  %target60 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx59, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [4 x i32], [4 x i32]* %target60, i32 0, i64 %idxprom57
  %40 = load i32, i32* %arrayidx61, align 4
  %41 = load i32, i32* %target.addr, align 4
  %cmp62 = icmp eq i32 %40, %41
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.56
  br label %if.end.78

if.end.64:                                        ; preds = %if.end.56
  %42 = load i32, i32* %target.addr, align 4
  %43 = load i32, i32* %r, align 4
  %idxprom65 = sext i32 %43 to i64
  %44 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %44 to i64
  %45 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx67 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %45, i64 %idxprom66
  %target68 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %target68, i32 0, i64 %idxprom65
  store i32 %42, i32* %arrayidx69, align 4
  %46 = load i32, i32* %r, align 4
  %cmp70 = icmp slt i32 %46, 3
  br i1 %cmp70, label %if.then.71, label %if.end.78

if.then.71:                                       ; preds = %if.end.64
  %47 = load i32, i32* %r, align 4
  %add72 = add nsw i32 %47, 1
  %idxprom73 = sext i32 %add72 to i64
  %48 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %48 to i64
  %49 = load %struct.aa_move*, %struct.aa_move** %attacks.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %49, i64 %idxprom74
  %target76 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %arrayidx75, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %target76, i32 0, i64 %idxprom73
  store i32 0, i32* %arrayidx77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.8, %if.end.31, %if.then.55, %if.then.63, %if.then.71, %if.end.64
  ret void
}

declare void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @target_comp_func(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %asize = alloca i32, align 4
  %bsize = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %call = call i32 @get_aa_value(i32 %2)
  store i32 %call, i32* %asize, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %call1 = call i32 @get_aa_value(i32 %5)
  store i32 %call1, i32* %bsize, align 4
  %6 = load i32, i32* %asize, align 4
  %7 = load i32, i32* %bsize, align 4
  %sub = sub nsw i32 %6, %7
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal i32 @move_comp_func(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %aa = alloca %struct.aa_move*, align 8
  %bb = alloca %struct.aa_move*, align 8
  %asize = alloca i32, align 4
  %bsize = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.aa_move*
  store %struct.aa_move* %1, %struct.aa_move** %aa, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.aa_move*
  store %struct.aa_move* %3, %struct.aa_move** %bb, align 8
  %4 = load %struct.aa_move*, %struct.aa_move** %aa, align 8
  %target = getelementptr inbounds %struct.aa_move, %struct.aa_move* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %target, i32 0, i64 0
  %5 = load i32, i32* %arrayidx, align 4
  %call = call i32 @get_aa_value(i32 %5)
  store i32 %call, i32* %asize, align 4
  %6 = load %struct.aa_move*, %struct.aa_move** %bb, align 8
  %target1 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %target1, i32 0, i64 0
  %7 = load i32, i32* %arrayidx2, align 4
  %call3 = call i32 @get_aa_value(i32 %7)
  store i32 %call3, i32* %bsize, align 4
  %8 = load i32, i32* %asize, align 4
  %9 = load i32, i32* %bsize, align 4
  %sub = sub nsw i32 %8, %9
  ret i32 %sub
}

declare i32 @chainlinks(i32, i32*) #1

declare i32 @countstones(i32) #1

declare i32 @whose_moyo(%struct.influence_data*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
