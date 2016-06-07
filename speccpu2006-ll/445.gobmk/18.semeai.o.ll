; ModuleID = 'engine/semeai.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@verbose = external global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Semeai Player is THINKING for %s!\0A\00", align 1
@number_of_dragons = external global i32, align 4
@dragon2 = external global %struct.dragon_data2*, align 8
@dragon = external global [400 x %struct.dragon_data], align 16
@worm = external global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [48 x i8] c"Experimental Semeai Module is THINKING for %s!\0A\00", align 1
@debug = external global i32, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Considering semeai between %1m and %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Result1: %s %s %1m, \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Result2 %s %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Changing status of %1m from %s to %s.\0A\00", align 1
@board = external global [421 x i8], align 16
@.str.6 = private unnamed_addr constant [39 x i8] c"Changing safety of %1m from %s to %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"semeai_analyzer: %1m (me) vs %1m (them)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"added owl attack of %1m at %1m with code %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"added owl defense of %1m at %1m with code %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"changed owl_status and status of %1m to CRITICAL\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"...owl code sufficient to resolve semeai, exiting\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"...tactical situation detected, exiting\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @semeai(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %bpos, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4
  %call = call i8* @color_to_string(i32 %2)
  %call1 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* %call)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %d1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %cond.end
  %3 = load i32, i32* %d1, align 4
  %4 = load i32, i32* @number_of_dragons, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %d1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %origin, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom2
  %color4 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %color4, align 4
  %9 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %d1, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 0
  %12 = load i32, i32* %origin8, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 16
  %13 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %13, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i32, i32* %d1, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %15, i64 %idxprom12
  %origin14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx13, i32 0, i32 0
  %16 = load i32, i32* %origin14, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %status17 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 16
  %17 = load i32, i32* %status17, align 4
  %cmp18 = icmp ne i32 %17, 2
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc.89

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %d1, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx21 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %20, i64 %idxprom20
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx21, i32 0, i32 2
  %21 = load i32, i32* %neighbors, align 4
  %cmp22 = icmp slt i32 %18, %21
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i32, i32* %d1, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %idxprom25
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom24
  %25 = load i32, i32* %arrayidx27, align 4
  store i32 %25, i32* %d2, align 4
  %26 = load i32, i32* %d2, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx29 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %27, i64 %idxprom28
  %origin30 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx29, i32 0, i32 0
  %28 = load i32, i32* %origin30, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom31
  %color33 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx32, i32 0, i32 0
  %29 = load i32, i32* %color33, align 4
  %30 = load i32, i32* %other, align 4
  %cmp34 = icmp ne i32 %29, %30
  br i1 %cmp34, label %if.then.51, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %for.body.23
  %31 = load i32, i32* %d2, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx37 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %32, i64 %idxprom36
  %origin38 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx37, i32 0, i32 0
  %33 = load i32, i32* %origin38, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom39
  %status41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx40, i32 0, i32 16
  %34 = load i32, i32* %status41, align 4
  %cmp42 = icmp ne i32 %34, 0
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.52

land.lhs.true.43:                                 ; preds = %lor.lhs.false.35
  %35 = load i32, i32* %d2, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx45 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i64 %idxprom44
  %origin46 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx45, i32 0, i32 0
  %37 = load i32, i32* %origin46, align 4
  %idxprom47 = sext i32 %37 to i64
  %arrayidx48 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom47
  %status49 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx48, i32 0, i32 16
  %38 = load i32, i32* %status49, align 4
  %cmp50 = icmp ne i32 %38, 2
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.43, %for.body.23
  br label %for.inc

if.end.52:                                        ; preds = %land.lhs.true.43, %lor.lhs.false.35
  %39 = load i32, i32* %d1, align 4
  %idxprom53 = sext i32 %39 to i64
  %40 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx54 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %40, i64 %idxprom53
  %origin55 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx54, i32 0, i32 0
  %41 = load i32, i32* %origin55, align 4
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom56
  %origin58 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx57, i32 0, i32 2
  %42 = load i32, i32* %origin58, align 4
  store i32 %42, i32* %apos, align 4
  %43 = load i32, i32* %d2, align 4
  %idxprom59 = sext i32 %43 to i64
  %44 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx60 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i64 %idxprom59
  %origin61 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx60, i32 0, i32 0
  %45 = load i32, i32* %origin61, align 4
  %idxprom62 = sext i32 %45 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom62
  %origin64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx63, i32 0, i32 2
  %46 = load i32, i32* %origin64, align 4
  store i32 %46, i32* %bpos, align 4
  %47 = load i32, i32* %apos, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom65
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx66, i32 0, i32 12
  %48 = load i32, i32* %inessential, align 4
  %tobool67 = icmp ne i32 %48, 0
  br i1 %tobool67, label %if.then.87, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.52
  %49 = load i32, i32* %apos, align 4
  %idxprom69 = sext i32 %49 to i64
  %arrayidx70 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom69
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx70, i32 0, i32 1
  %50 = load i32, i32* %id, align 4
  %idxprom71 = sext i32 %50 to i64
  %51 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx72 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i64 %idxprom71
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx72, i32 0, i32 6
  %52 = load i32, i32* %safety, align 4
  %cmp73 = icmp eq i32 %52, 5
  br i1 %cmp73, label %if.then.87, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.68
  %53 = load i32, i32* %bpos, align 4
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom75
  %inessential77 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx76, i32 0, i32 12
  %54 = load i32, i32* %inessential77, align 4
  %tobool78 = icmp ne i32 %54, 0
  br i1 %tobool78, label %if.then.87, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.74
  %55 = load i32, i32* %bpos, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom80
  %id82 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx81, i32 0, i32 1
  %56 = load i32, i32* %id82, align 4
  %idxprom83 = sext i32 %56 to i64
  %57 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx84 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %57, i64 %idxprom83
  %safety85 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx84, i32 0, i32 6
  %58 = load i32, i32* %safety85, align 4
  %cmp86 = icmp eq i32 %58, 5
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.79, %lor.lhs.false.74, %lor.lhs.false.68, %if.end.52
  br label %for.inc

if.end.88:                                        ; preds = %lor.lhs.false.79
  %59 = load i32, i32* %apos, align 4
  %60 = load i32, i32* %bpos, align 4
  call void @analyze_semeai(i32 %59, i32 %60)
  br label %for.inc

for.inc:                                          ; preds = %if.end.88, %if.then.87, %if.then.51
  %61 = load i32, i32* %k, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end, %if.then
  %62 = load i32, i32* %d1, align 4
  %inc90 = add nsw i32 %62, 1
  store i32 %inc90, i32* %d1, align 4
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  ret void
}

declare i32 @gprintf(i8*, ...) #1

declare i8* @color_to_string(i32) #1

; Function Attrs: nounwind uwtable
define internal void @analyze_semeai(i32 %my_dragon, i32 %your_dragon) #0 {
entry:
  %my_dragon.addr = alloca i32, align 4
  %your_dragon.addr = alloca i32, align 4
  %mylibs = alloca i32, align 4
  %yourlibs = alloca i32, align 4
  %commonlibs = alloca i32, align 4
  %yourlib = alloca i32, align 4
  %commonlib = alloca i32, align 4
  %color = alloca i32, align 4
  %my_status = alloca i32, align 4
  %your_status = alloca i32, align 4
  %margin_of_safety = alloca i32, align 4
  %owl_code_sufficient = alloca i32, align 4
  %pos = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %pos102 = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %r = alloca i32, align 4
  %cpos = alloca i32, align 4
  %found_one = alloca i32, align 4
  store i32 %my_dragon, i32* %my_dragon.addr, align 4
  store i32 %your_dragon, i32* %your_dragon.addr, align 4
  store i32 1, i32* %mylibs, align 4
  store i32 1, i32* %yourlibs, align 4
  store i32 0, i32* %commonlibs, align 4
  store i32 0, i32* %yourlib, align 4
  store i32 0, i32* %commonlib, align 4
  %0 = load i32, i32* %my_dragon.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 3, i32* %my_status, align 4
  store i32 3, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  store i32 0, i32* %owl_code_sufficient, align 4
  %2 = load i32, i32* @debug, align 4
  %and = and i32 %2, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %my_dragon.addr, align 4
  %4 = load i32, i32* %your_dragon.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 %3, i32 %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load i32, i32* %my_dragon.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 7
  %6 = load i32, i32* %owl_status, align 4
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %cond.end
  %7 = load i32, i32* %your_dragon.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %owl_status6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 7
  %8 = load i32, i32* %owl_status6, align 4
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %if.then, label %if.end.43

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %your_dragon.addr, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 8
  %10 = load i32, i32* %owl_attack_point, align 4
  %11 = load i32, i32* %my_dragon.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %owl_defense_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 12
  %12 = load i32, i32* %owl_defense_point, align 4
  %cmp13 = icmp eq i32 %10, %12
  br i1 %cmp13, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  br label %if.end.754

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %my_dragon.addr, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom16
  %owl_defense_point18 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx17, i32 0, i32 12
  %14 = load i32, i32* %owl_defense_point18, align 4
  %cmp19 = icmp ne i32 %14, 0
  br i1 %cmp19, label %if.then.21, label %if.end.42

if.then.21:                                       ; preds = %if.end
  %15 = load i32, i32* %my_dragon.addr, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom22
  %owl_defense_point24 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx23, i32 0, i32 12
  %16 = load i32, i32* %owl_defense_point24, align 4
  %17 = load i32, i32* %your_dragon.addr, align 4
  %call25 = call i32 @owl_does_attack(i32 %16, i32 %17, i32* null)
  store i32 %call25, i32* %acode, align 4
  %18 = load i32, i32* %acode, align 4
  %cmp26 = icmp ne i32 %18, 0
  br i1 %cmp26, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.then.21
  %19 = load i32, i32* %my_dragon.addr, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom29
  %owl_defense_point31 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx30, i32 0, i32 12
  %20 = load i32, i32* %owl_defense_point31, align 4
  %21 = load i32, i32* %your_dragon.addr, align 4
  %22 = load i32, i32* %acode, align 4
  call void @add_owl_attack_move(i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* @debug, align 4
  %and32 = and i32 %23, 64
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %cond.false.35, label %cond.true.34

cond.true.34:                                     ; preds = %if.then.28
  br label %cond.end.40

cond.false.35:                                    ; preds = %if.then.28
  %24 = load i32, i32* %your_dragon.addr, align 4
  %25 = load i32, i32* %my_dragon.addr, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom36
  %owl_defense_point38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx37, i32 0, i32 12
  %26 = load i32, i32* %owl_defense_point38, align 4
  %27 = load i32, i32* %acode, align 4
  %call39 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i32 %24, i32 %26, i32 %27)
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.35, %cond.true.34
  store i32 1, i32* %owl_code_sufficient, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %cond.end.40, %if.then.21
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true, %cond.end
  %28 = load i32, i32* %my_dragon.addr, align 4
  %idxprom44 = sext i32 %28 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom44
  %owl_status46 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx45, i32 0, i32 7
  %29 = load i32, i32* %owl_status46, align 4
  %cmp47 = icmp eq i32 %29, 2
  br i1 %cmp47, label %land.lhs.true.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %30 = load i32, i32* %my_dragon.addr, align 4
  %idxprom49 = sext i32 %30 to i64
  %arrayidx50 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom49
  %owl_status51 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx50, i32 0, i32 7
  %31 = load i32, i32* %owl_status51, align 4
  %cmp52 = icmp eq i32 %31, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.139

land.lhs.true.54:                                 ; preds = %lor.lhs.false, %if.end.43
  %32 = load i32, i32* %your_dragon.addr, align 4
  %idxprom55 = sext i32 %32 to i64
  %arrayidx56 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom55
  %owl_status57 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx56, i32 0, i32 7
  %33 = load i32, i32* %owl_status57, align 4
  %cmp58 = icmp eq i32 %33, 2
  br i1 %cmp58, label %if.then.60, label %if.end.139

if.then.60:                                       ; preds = %land.lhs.true.54
  %34 = load i32, i32* %your_dragon.addr, align 4
  %idxprom61 = sext i32 %34 to i64
  %arrayidx62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom61
  %owl_attack_point63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx62, i32 0, i32 8
  %35 = load i32, i32* %owl_attack_point63, align 4
  %36 = load i32, i32* %my_dragon.addr, align 4
  %idxprom64 = sext i32 %36 to i64
  %arrayidx65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom64
  %owl_defense_point66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx65, i32 0, i32 12
  %37 = load i32, i32* %owl_defense_point66, align 4
  %cmp67 = icmp eq i32 %35, %37
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.60
  br label %if.end.754

if.end.70:                                        ; preds = %if.then.60
  %38 = load i32, i32* %your_dragon.addr, align 4
  %idxprom71 = sext i32 %38 to i64
  %arrayidx72 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom71
  %owl_attack_point73 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx72, i32 0, i32 8
  %39 = load i32, i32* %owl_attack_point73, align 4
  %cmp74 = icmp ne i32 %39, 0
  br i1 %cmp74, label %if.then.76, label %if.end.138

if.then.76:                                       ; preds = %if.end.70
  %40 = load i32, i32* %your_dragon.addr, align 4
  %idxprom77 = sext i32 %40 to i64
  %arrayidx78 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom77
  %owl_attack_point79 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx78, i32 0, i32 8
  %41 = load i32, i32* %owl_attack_point79, align 4
  %42 = load i32, i32* %my_dragon.addr, align 4
  %call80 = call i32 @owl_does_defend(i32 %41, i32 %42, i32* null)
  store i32 %call80, i32* %dcode, align 4
  %43 = load i32, i32* %dcode, align 4
  %cmp81 = icmp ne i32 %43, 0
  br i1 %cmp81, label %if.then.83, label %if.end.137

if.then.83:                                       ; preds = %if.then.76
  %44 = load i32, i32* %your_dragon.addr, align 4
  %idxprom84 = sext i32 %44 to i64
  %arrayidx85 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom84
  %owl_attack_point86 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx85, i32 0, i32 8
  %45 = load i32, i32* %owl_attack_point86, align 4
  %46 = load i32, i32* %my_dragon.addr, align 4
  %47 = load i32, i32* %dcode, align 4
  call void @add_owl_defense_move(i32 %45, i32 %46, i32 %47)
  %48 = load i32, i32* @debug, align 4
  %and87 = and i32 %48, 64
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %cond.false.90, label %cond.true.89

cond.true.89:                                     ; preds = %if.then.83
  br label %cond.end.95

cond.false.90:                                    ; preds = %if.then.83
  %49 = load i32, i32* %my_dragon.addr, align 4
  %50 = load i32, i32* %your_dragon.addr, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom91
  %owl_attack_point93 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx92, i32 0, i32 8
  %51 = load i32, i32* %owl_attack_point93, align 4
  %52 = load i32, i32* %dcode, align 4
  %call94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i32 %49, i32 %51, i32 %52)
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.90, %cond.true.89
  %53 = load i32, i32* %my_dragon.addr, align 4
  %idxprom96 = sext i32 %53 to i64
  %arrayidx97 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom96
  %owl_status98 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx97, i32 0, i32 7
  %54 = load i32, i32* %owl_status98, align 4
  %cmp99 = icmp eq i32 %54, 0
  br i1 %cmp99, label %if.then.101, label %if.end.136

if.then.101:                                      ; preds = %cond.end.95
  store i32 21, i32* %pos102, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.101
  %55 = load i32, i32* %pos102, align 4
  %cmp103 = icmp slt i32 %55, 400
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %pos102, align 4
  %idxprom105 = sext i32 %56 to i64
  %arrayidx106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom105
  %57 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %57 to i32
  %cmp108 = icmp ne i32 %conv107, 3
  br i1 %cmp108, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %for.body
  br label %for.inc

if.end.111:                                       ; preds = %for.body
  %58 = load i32, i32* %pos102, align 4
  %idxprom112 = sext i32 %58 to i64
  %arrayidx113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom112
  %59 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %59 to i32
  %60 = load i32, i32* %my_dragon.addr, align 4
  %idxprom115 = sext i32 %60 to i64
  %arrayidx116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom115
  %61 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %61 to i32
  %cmp118 = icmp eq i32 %conv114, %conv117
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.129

land.lhs.true.120:                                ; preds = %if.end.111
  %62 = load i32, i32* %pos102, align 4
  %63 = load i32, i32* %my_dragon.addr, align 4
  %call121 = call i32 @is_same_dragon(i32 %62, i32 %63)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %land.lhs.true.120
  %64 = load i32, i32* %pos102, align 4
  %idxprom124 = sext i32 %64 to i64
  %arrayidx125 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom124
  %owl_status126 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx125, i32 0, i32 7
  store i32 2, i32* %owl_status126, align 4
  %65 = load i32, i32* %pos102, align 4
  %idxprom127 = sext i32 %65 to i64
  %arrayidx128 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom127
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx128, i32 0, i32 16
  store i32 2, i32* %status, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.123, %land.lhs.true.120, %if.end.111
  br label %for.inc

for.inc:                                          ; preds = %if.end.129, %if.then.110
  %66 = load i32, i32* %pos102, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %pos102, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i32, i32* @debug, align 4
  %and130 = and i32 %67, 64
  %tobool131 = icmp ne i32 %and130, 0
  br i1 %tobool131, label %cond.false.133, label %cond.true.132

cond.true.132:                                    ; preds = %for.end
  br label %cond.end.135

cond.false.133:                                   ; preds = %for.end
  %68 = load i32, i32* %my_dragon.addr, align 4
  %call134 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 %68)
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.133, %cond.true.132
  br label %if.end.136

if.end.136:                                       ; preds = %cond.end.135, %cond.end.95
  store i32 1, i32* %owl_code_sufficient, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.76
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.70
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.54, %lor.lhs.false
  %69 = load i32, i32* %owl_code_sufficient, align 4
  %tobool140 = icmp ne i32 %69, 0
  br i1 %tobool140, label %if.then.141, label %if.end.148

if.then.141:                                      ; preds = %if.end.139
  %70 = load i32, i32* @debug, align 4
  %and142 = and i32 %70, 64
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %cond.false.145, label %cond.true.144

cond.true.144:                                    ; preds = %if.then.141
  br label %cond.end.147

cond.false.145:                                   ; preds = %if.then.141
  %call146 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0))
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.144
  br label %if.end.754

if.end.148:                                       ; preds = %if.end.139
  store i32 21, i32* %pos, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.218, %if.end.148
  %71 = load i32, i32* %pos, align 4
  %cmp150 = icmp slt i32 %71, 400
  br i1 %cmp150, label %for.body.152, label %for.end.220

for.body.152:                                     ; preds = %for.cond.149
  %72 = load i32, i32* %pos, align 4
  %idxprom153 = sext i32 %72 to i64
  %arrayidx154 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom153
  %73 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %73 to i32
  %cmp156 = icmp ne i32 %conv155, 3
  br i1 %cmp156, label %if.end.159, label %if.then.158

if.then.158:                                      ; preds = %for.body.152
  br label %for.inc.218

if.end.159:                                       ; preds = %for.body.152
  %74 = load i32, i32* %pos, align 4
  %idxprom160 = sext i32 %74 to i64
  %arrayidx161 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom160
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx161, i32 0, i32 3
  %75 = load i32, i32* %origin, align 4
  %76 = load i32, i32* %pos, align 4
  %cmp162 = icmp eq i32 %75, %76
  br i1 %cmp162, label %land.lhs.true.164, label %if.end.217

land.lhs.true.164:                                ; preds = %if.end.159
  %77 = load i32, i32* %pos, align 4
  %idxprom165 = sext i32 %77 to i64
  %arrayidx166 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom165
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx166, i32 0, i32 16
  %arrayidx167 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %78 = load i32, i32* %arrayidx167, align 4
  %cmp168 = icmp eq i32 %78, 5
  br i1 %cmp168, label %if.then.170, label %if.end.217

if.then.170:                                      ; preds = %land.lhs.true.164
  %79 = load i32, i32* %pos, align 4
  %idxprom171 = sext i32 %79 to i64
  %arrayidx172 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom171
  %origin173 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx172, i32 0, i32 2
  %80 = load i32, i32* %origin173, align 4
  %81 = load i32, i32* %my_dragon.addr, align 4
  %cmp174 = icmp eq i32 %80, %81
  br i1 %cmp174, label %if.then.182, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %if.then.170
  %82 = load i32, i32* %pos, align 4
  %idxprom177 = sext i32 %82 to i64
  %arrayidx178 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom177
  %origin179 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx178, i32 0, i32 2
  %83 = load i32, i32* %origin179, align 4
  %84 = load i32, i32* %your_dragon.addr, align 4
  %cmp180 = icmp eq i32 %83, %84
  br i1 %cmp180, label %if.then.182, label %if.end.216

if.then.182:                                      ; preds = %lor.lhs.false.176, %if.then.170
  %85 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call183 = call i32 @chainlinks(i32 %85, i32* %arraydecay)
  store i32 %call183, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.213, %if.then.182
  %86 = load i32, i32* %r, align 4
  %87 = load i32, i32* %adj, align 4
  %cmp185 = icmp slt i32 %86, %87
  br i1 %cmp185, label %for.body.187, label %for.end.215

for.body.187:                                     ; preds = %for.cond.184
  %88 = load i32, i32* %r, align 4
  %idxprom188 = sext i32 %88 to i64
  %arrayidx189 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom188
  %89 = load i32, i32* %arrayidx189, align 4
  store i32 %89, i32* %cpos, align 4
  %90 = load i32, i32* %cpos, align 4
  %idxprom190 = sext i32 %90 to i64
  %arrayidx191 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom190
  %origin192 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx191, i32 0, i32 2
  %91 = load i32, i32* %origin192, align 4
  %92 = load i32, i32* %my_dragon.addr, align 4
  %cmp193 = icmp eq i32 %91, %92
  br i1 %cmp193, label %if.then.201, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %for.body.187
  %93 = load i32, i32* %cpos, align 4
  %idxprom196 = sext i32 %93 to i64
  %arrayidx197 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom196
  %origin198 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx197, i32 0, i32 2
  %94 = load i32, i32* %origin198, align 4
  %95 = load i32, i32* %your_dragon.addr, align 4
  %cmp199 = icmp eq i32 %94, %95
  br i1 %cmp199, label %if.then.201, label %if.end.212

if.then.201:                                      ; preds = %lor.lhs.false.195, %for.body.187
  %96 = load i32, i32* %pos, align 4
  %call202 = call i32 @owl_substantial(i32 %96)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.211

if.then.204:                                      ; preds = %if.then.201
  %97 = load i32, i32* @debug, align 4
  %and205 = and i32 %97, 64
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %cond.false.208, label %cond.true.207

cond.true.207:                                    ; preds = %if.then.204
  br label %cond.end.210

cond.false.208:                                   ; preds = %if.then.204
  %call209 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.207
  br label %if.end.754

if.end.211:                                       ; preds = %if.then.201
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %lor.lhs.false.195
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.212
  %98 = load i32, i32* %r, align 4
  %inc214 = add nsw i32 %98, 1
  store i32 %inc214, i32* %r, align 4
  br label %for.cond.184

for.end.215:                                      ; preds = %for.cond.184
  br label %if.end.216

if.end.216:                                       ; preds = %for.end.215, %lor.lhs.false.176
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %land.lhs.true.164, %if.end.159
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217, %if.then.158
  %99 = load i32, i32* %pos, align 4
  %inc219 = add nsw i32 %99, 1
  store i32 %inc219, i32* %pos, align 4
  br label %for.cond.149

for.end.220:                                      ; preds = %for.cond.149
  store i32 21, i32* %pos, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.242, %for.end.220
  %100 = load i32, i32* %pos, align 4
  %cmp222 = icmp slt i32 %100, 400
  br i1 %cmp222, label %for.body.224, label %for.end.244

for.body.224:                                     ; preds = %for.cond.221
  %101 = load i32, i32* %pos, align 4
  %idxprom225 = sext i32 %101 to i64
  %arrayidx226 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom225
  %102 = load i8, i8* %arrayidx226, align 1
  %conv227 = zext i8 %102 to i32
  %cmp228 = icmp ne i32 %conv227, 3
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.241

land.lhs.true.230:                                ; preds = %for.body.224
  %103 = load i32, i32* %pos, align 4
  %104 = load i32, i32* %my_dragon.addr, align 4
  %call231 = call i32 @is_same_dragon(i32 %103, i32 %104)
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.then.236, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %land.lhs.true.230
  %105 = load i32, i32* %pos, align 4
  %106 = load i32, i32* %your_dragon.addr, align 4
  %call234 = call i32 @is_same_dragon(i32 %105, i32 %106)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.241

if.then.236:                                      ; preds = %lor.lhs.false.233, %land.lhs.true.230
  %107 = load i32, i32* %pos, align 4
  %idxprom237 = sext i32 %107 to i64
  %arrayidx238 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom237
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx238, i32 0, i32 1
  %108 = load i32, i32* %id, align 4
  %idxprom239 = sext i32 %108 to i64
  %109 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx240 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %109, i64 %idxprom239
  %semeai = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx240, i32 0, i32 13
  store i32 1, i32* %semeai, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.236, %lor.lhs.false.233, %for.body.224
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %110 = load i32, i32* %pos, align 4
  %inc243 = add nsw i32 %110, 1
  store i32 %inc243, i32* %pos, align 4
  br label %for.cond.221

for.end.244:                                      ; preds = %for.cond.221
  store i32 21, i32* %pos, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.309, %for.end.244
  %111 = load i32, i32* %pos, align 4
  %cmp246 = icmp slt i32 %111, 400
  br i1 %cmp246, label %for.body.248, label %for.end.311

for.body.248:                                     ; preds = %for.cond.245
  %112 = load i32, i32* %pos, align 4
  %idxprom249 = sext i32 %112 to i64
  %arrayidx250 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom249
  %113 = load i8, i8* %arrayidx250, align 1
  %conv251 = zext i8 %113 to i32
  %cmp252 = icmp ne i32 %conv251, 3
  br i1 %cmp252, label %if.end.255, label %if.then.254

if.then.254:                                      ; preds = %for.body.248
  br label %for.inc.309

if.end.255:                                       ; preds = %for.body.248
  %114 = load i32, i32* %pos, align 4
  %idxprom256 = sext i32 %114 to i64
  %arrayidx257 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom256
  %115 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %115 to i32
  %cmp259 = icmp eq i32 %conv258, 1
  br i1 %cmp259, label %land.lhs.true.267, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %if.end.255
  %116 = load i32, i32* %pos, align 4
  %idxprom262 = sext i32 %116 to i64
  %arrayidx263 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom262
  %117 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %117 to i32
  %cmp265 = icmp eq i32 %conv264, 2
  br i1 %cmp265, label %land.lhs.true.267, label %if.else

land.lhs.true.267:                                ; preds = %lor.lhs.false.261, %if.end.255
  %118 = load i32, i32* %pos, align 4
  %idxprom268 = sext i32 %118 to i64
  %arrayidx269 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom268
  %origin270 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx269, i32 0, i32 3
  %119 = load i32, i32* %origin270, align 4
  %120 = load i32, i32* %pos, align 4
  %cmp271 = icmp eq i32 %119, %120
  br i1 %cmp271, label %if.then.273, label %if.else

if.then.273:                                      ; preds = %land.lhs.true.267
  %121 = load i32, i32* %pos, align 4
  %122 = load i32, i32* %my_dragon.addr, align 4
  %call274 = call i32 @is_same_dragon(i32 %121, i32 %122)
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.then.273
  %123 = load i32, i32* %mylibs, align 4
  %dec = add nsw i32 %123, -1
  store i32 %dec, i32* %mylibs, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %if.then.273
  %124 = load i32, i32* %pos, align 4
  %125 = load i32, i32* %your_dragon.addr, align 4
  %call278 = call i32 @is_same_dragon(i32 %124, i32 %125)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.282

if.then.280:                                      ; preds = %if.end.277
  %126 = load i32, i32* %yourlibs, align 4
  %dec281 = add nsw i32 %126, -1
  store i32 %dec281, i32* %yourlibs, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.280, %if.end.277
  br label %if.end.308

if.else:                                          ; preds = %land.lhs.true.267, %lor.lhs.false.261
  %127 = load i32, i32* %pos, align 4
  %idxprom283 = sext i32 %127 to i64
  %arrayidx284 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom283
  %128 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %128 to i32
  %cmp286 = icmp eq i32 %conv285, 0
  br i1 %cmp286, label %if.then.288, label %if.end.307

if.then.288:                                      ; preds = %if.else
  %129 = load i32, i32* %pos, align 4
  %130 = load i32, i32* %your_dragon.addr, align 4
  %call289 = call i32 @liberty_of_dragon(i32 %129, i32 %130)
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %if.then.291, label %if.else.300

if.then.291:                                      ; preds = %if.then.288
  %131 = load i32, i32* %yourlibs, align 4
  %inc292 = add nsw i32 %131, 1
  store i32 %inc292, i32* %yourlibs, align 4
  %132 = load i32, i32* %pos, align 4
  %133 = load i32, i32* %my_dragon.addr, align 4
  %call293 = call i32 @liberty_of_dragon(i32 %132, i32 %133)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then.295, label %if.else.298

if.then.295:                                      ; preds = %if.then.291
  %134 = load i32, i32* %commonlibs, align 4
  %inc296 = add nsw i32 %134, 1
  store i32 %inc296, i32* %commonlibs, align 4
  %135 = load i32, i32* %mylibs, align 4
  %inc297 = add nsw i32 %135, 1
  store i32 %inc297, i32* %mylibs, align 4
  %136 = load i32, i32* %pos, align 4
  store i32 %136, i32* %commonlib, align 4
  br label %if.end.299

if.else.298:                                      ; preds = %if.then.291
  %137 = load i32, i32* %pos, align 4
  store i32 %137, i32* %yourlib, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.298, %if.then.295
  br label %if.end.306

if.else.300:                                      ; preds = %if.then.288
  %138 = load i32, i32* %pos, align 4
  %139 = load i32, i32* %my_dragon.addr, align 4
  %call301 = call i32 @liberty_of_dragon(i32 %138, i32 %139)
  %tobool302 = icmp ne i32 %call301, 0
  br i1 %tobool302, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.else.300
  %140 = load i32, i32* %mylibs, align 4
  %inc304 = add nsw i32 %140, 1
  store i32 %inc304, i32* %mylibs, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.else.300
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305, %if.end.299
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.else
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.282
  br label %for.inc.309

for.inc.309:                                      ; preds = %if.end.308, %if.then.254
  %141 = load i32, i32* %pos, align 4
  %inc310 = add nsw i32 %141, 1
  store i32 %inc310, i32* %pos, align 4
  br label %for.cond.245

for.end.311:                                      ; preds = %for.cond.245
  %142 = load i32, i32* %my_dragon.addr, align 4
  %idxprom312 = sext i32 %142 to i64
  %arrayidx313 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom312
  %owl_status314 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx313, i32 0, i32 7
  %143 = load i32, i32* %owl_status314, align 4
  %cmp315 = icmp eq i32 %143, 2
  br i1 %cmp315, label %land.lhs.true.317, label %if.end.331

land.lhs.true.317:                                ; preds = %for.end.311
  %144 = load i32, i32* %my_dragon.addr, align 4
  %idxprom318 = sext i32 %144 to i64
  %arrayidx319 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom318
  %owl_attack_point320 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx319, i32 0, i32 8
  %145 = load i32, i32* %owl_attack_point320, align 4
  %cmp321 = icmp ne i32 %145, 0
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.331

land.lhs.true.323:                                ; preds = %land.lhs.true.317
  %146 = load i32, i32* %my_dragon.addr, align 4
  %idxprom324 = sext i32 %146 to i64
  %arrayidx325 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom324
  %owl_attack_point326 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx325, i32 0, i32 8
  %147 = load i32, i32* %owl_attack_point326, align 4
  %148 = load i32, i32* %my_dragon.addr, align 4
  %call327 = call i32 @liberty_of_string(i32 %147, i32 %148)
  %tobool328 = icmp ne i32 %call327, 0
  br i1 %tobool328, label %if.end.331, label %if.then.329

if.then.329:                                      ; preds = %land.lhs.true.323
  %149 = load i32, i32* %mylibs, align 4
  %inc330 = add nsw i32 %149, 1
  store i32 %inc330, i32* %mylibs, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.329, %land.lhs.true.323, %land.lhs.true.317, %for.end.311
  %150 = load i32, i32* %your_dragon.addr, align 4
  %idxprom332 = sext i32 %150 to i64
  %arrayidx333 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom332
  %owl_status334 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx333, i32 0, i32 7
  %151 = load i32, i32* %owl_status334, align 4
  %cmp335 = icmp eq i32 %151, 2
  br i1 %cmp335, label %land.lhs.true.337, label %if.end.351

land.lhs.true.337:                                ; preds = %if.end.331
  %152 = load i32, i32* %your_dragon.addr, align 4
  %idxprom338 = sext i32 %152 to i64
  %arrayidx339 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom338
  %owl_attack_point340 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx339, i32 0, i32 8
  %153 = load i32, i32* %owl_attack_point340, align 4
  %cmp341 = icmp ne i32 %153, 0
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.351

land.lhs.true.343:                                ; preds = %land.lhs.true.337
  %154 = load i32, i32* %your_dragon.addr, align 4
  %idxprom344 = sext i32 %154 to i64
  %arrayidx345 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom344
  %owl_attack_point346 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx345, i32 0, i32 8
  %155 = load i32, i32* %owl_attack_point346, align 4
  %156 = load i32, i32* %your_dragon.addr, align 4
  %call347 = call i32 @liberty_of_string(i32 %155, i32 %156)
  %tobool348 = icmp ne i32 %call347, 0
  br i1 %tobool348, label %if.end.351, label %if.then.349

if.then.349:                                      ; preds = %land.lhs.true.343
  %157 = load i32, i32* %yourlibs, align 4
  %inc350 = add nsw i32 %157, 1
  store i32 %inc350, i32* %yourlibs, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %land.lhs.true.343, %land.lhs.true.337, %if.end.331
  %158 = load i32, i32* %my_dragon.addr, align 4
  %idxprom352 = sext i32 %158 to i64
  %arrayidx353 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom352
  %id354 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx353, i32 0, i32 1
  %159 = load i32, i32* %id354, align 4
  %idxprom355 = sext i32 %159 to i64
  %160 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx356 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %160, i64 %idxprom355
  %genus = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx356, i32 0, i32 10
  %call357 = call i32 @min_eyes(%struct.eyevalue* %genus)
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.435

land.lhs.true.360:                                ; preds = %if.end.351
  %161 = load i32, i32* %your_dragon.addr, align 4
  %idxprom361 = sext i32 %161 to i64
  %arrayidx362 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom361
  %id363 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx362, i32 0, i32 1
  %162 = load i32, i32* %id363, align 4
  %idxprom364 = sext i32 %162 to i64
  %163 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx365 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %163, i64 %idxprom364
  %genus366 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx365, i32 0, i32 10
  %call367 = call i32 @min_eyes(%struct.eyevalue* %genus366)
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then.370, label %if.end.435

if.then.370:                                      ; preds = %land.lhs.true.360
  %164 = load i32, i32* %commonlibs, align 4
  %cmp371 = icmp eq i32 %164, 0
  br i1 %cmp371, label %if.then.373, label %if.else.385

if.then.373:                                      ; preds = %if.then.370
  %165 = load i32, i32* %mylibs, align 4
  %166 = load i32, i32* %yourlibs, align 4
  %cmp374 = icmp sgt i32 %165, %166
  br i1 %cmp374, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %if.then.373
  store i32 1, i32* %my_status, align 4
  store i32 0, i32* %your_status, align 4
  %167 = load i32, i32* %mylibs, align 4
  %168 = load i32, i32* %yourlibs, align 4
  %sub = sub nsw i32 %167, %168
  store i32 %sub, i32* %margin_of_safety, align 4
  br label %if.end.384

if.else.377:                                      ; preds = %if.then.373
  %169 = load i32, i32* %mylibs, align 4
  %170 = load i32, i32* %yourlibs, align 4
  %cmp378 = icmp slt i32 %169, %170
  br i1 %cmp378, label %if.then.380, label %if.else.382

if.then.380:                                      ; preds = %if.else.377
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %171 = load i32, i32* %yourlibs, align 4
  %172 = load i32, i32* %mylibs, align 4
  %sub381 = sub nsw i32 %171, %172
  store i32 %sub381, i32* %margin_of_safety, align 4
  br label %if.end.383

if.else.382:                                      ; preds = %if.else.377
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.382, %if.then.380
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.then.376
  br label %if.end.434

if.else.385:                                      ; preds = %if.then.370
  %173 = load i32, i32* %mylibs, align 4
  %174 = load i32, i32* %yourlibs, align 4
  %175 = load i32, i32* %commonlibs, align 4
  %add = add nsw i32 %174, %175
  %sub386 = sub nsw i32 %add, 1
  %cmp387 = icmp eq i32 %173, %sub386
  br i1 %cmp387, label %if.then.389, label %if.else.395

if.then.389:                                      ; preds = %if.else.385
  %176 = load i32, i32* %mylibs, align 4
  %cmp390 = icmp eq i32 %176, 0
  br i1 %cmp390, label %if.then.392, label %if.else.393

if.then.392:                                      ; preds = %if.then.389
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.394

if.else.393:                                      ; preds = %if.then.389
  store i32 1, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.else.393, %if.then.392
  br label %if.end.433

if.else.395:                                      ; preds = %if.else.385
  %177 = load i32, i32* %mylibs, align 4
  %178 = load i32, i32* %yourlibs, align 4
  %179 = load i32, i32* %commonlibs, align 4
  %add396 = add nsw i32 %178, %179
  %sub397 = sub nsw i32 %add396, 1
  %cmp398 = icmp slt i32 %177, %sub397
  br i1 %cmp398, label %land.lhs.true.400, label %if.else.406

land.lhs.true.400:                                ; preds = %if.else.395
  %180 = load i32, i32* %yourlibs, align 4
  %181 = load i32, i32* %mylibs, align 4
  %182 = load i32, i32* %commonlibs, align 4
  %add401 = add nsw i32 %181, %182
  %sub402 = sub nsw i32 %add401, 1
  %cmp403 = icmp slt i32 %180, %sub402
  br i1 %cmp403, label %if.then.405, label %if.else.406

if.then.405:                                      ; preds = %land.lhs.true.400
  store i32 1, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  store i32 1000, i32* %margin_of_safety, align 4
  br label %if.end.432

if.else.406:                                      ; preds = %land.lhs.true.400, %if.else.395
  %183 = load i32, i32* %commonlibs, align 4
  %cmp407 = icmp sgt i32 %183, 0
  br i1 %cmp407, label %land.lhs.true.409, label %if.else.420

land.lhs.true.409:                                ; preds = %if.else.406
  %184 = load i32, i32* %yourlibs, align 4
  %185 = load i32, i32* %mylibs, align 4
  %186 = load i32, i32* %commonlibs, align 4
  %add410 = add nsw i32 %185, %186
  %sub411 = sub nsw i32 %add410, 1
  %cmp412 = icmp eq i32 %184, %sub411
  br i1 %cmp412, label %if.then.414, label %if.else.420

if.then.414:                                      ; preds = %land.lhs.true.409
  %187 = load i32, i32* %yourlibs, align 4
  %cmp415 = icmp eq i32 %187, 0
  br i1 %cmp415, label %if.then.417, label %if.else.418

if.then.417:                                      ; preds = %if.then.414
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.419

if.else.418:                                      ; preds = %if.then.414
  store i32 2, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.else.418, %if.then.417
  br label %if.end.431

if.else.420:                                      ; preds = %land.lhs.true.409, %if.else.406
  %188 = load i32, i32* %commonlibs, align 4
  %cmp421 = icmp sgt i32 %188, 0
  br i1 %cmp421, label %land.lhs.true.423, label %if.end.430

land.lhs.true.423:                                ; preds = %if.else.420
  %189 = load i32, i32* %yourlibs, align 4
  %190 = load i32, i32* %mylibs, align 4
  %191 = load i32, i32* %commonlibs, align 4
  %add424 = add nsw i32 %190, %191
  %cmp425 = icmp sgt i32 %189, %add424
  br i1 %cmp425, label %if.then.427, label %if.end.430

if.then.427:                                      ; preds = %land.lhs.true.423
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %192 = load i32, i32* %yourlibs, align 4
  %193 = load i32, i32* %mylibs, align 4
  %sub428 = sub nsw i32 %192, %193
  %194 = load i32, i32* %commonlibs, align 4
  %sub429 = sub nsw i32 %sub428, %194
  store i32 %sub429, i32* %margin_of_safety, align 4
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.427, %land.lhs.true.423, %if.else.420
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.419
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.then.405
  br label %if.end.433

if.end.433:                                       ; preds = %if.end.432, %if.end.394
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %if.end.384
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434, %land.lhs.true.360, %if.end.351
  %195 = load i32, i32* %my_dragon.addr, align 4
  %idxprom436 = sext i32 %195 to i64
  %arrayidx437 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom436
  %id438 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx437, i32 0, i32 1
  %196 = load i32, i32* %id438, align 4
  %idxprom439 = sext i32 %196 to i64
  %197 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx440 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %197, i64 %idxprom439
  %genus441 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx440, i32 0, i32 10
  %call442 = call i32 @min_eyes(%struct.eyevalue* %genus441)
  %cmp443 = icmp sgt i32 %call442, 0
  br i1 %cmp443, label %land.lhs.true.445, label %if.end.510

land.lhs.true.445:                                ; preds = %if.end.435
  %198 = load i32, i32* %your_dragon.addr, align 4
  %idxprom446 = sext i32 %198 to i64
  %arrayidx447 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom446
  %id448 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx447, i32 0, i32 1
  %199 = load i32, i32* %id448, align 4
  %idxprom449 = sext i32 %199 to i64
  %200 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx450 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %200, i64 %idxprom449
  %genus451 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx450, i32 0, i32 10
  %call452 = call i32 @min_eyes(%struct.eyevalue* %genus451)
  %cmp453 = icmp sgt i32 %call452, 0
  br i1 %cmp453, label %if.then.455, label %if.end.510

if.then.455:                                      ; preds = %land.lhs.true.445
  %201 = load i32, i32* %mylibs, align 4
  %202 = load i32, i32* %yourlibs, align 4
  %203 = load i32, i32* %commonlibs, align 4
  %add456 = add nsw i32 %202, %203
  %cmp457 = icmp sgt i32 %201, %add456
  br i1 %cmp457, label %if.then.459, label %if.else.462

if.then.459:                                      ; preds = %if.then.455
  store i32 1, i32* %my_status, align 4
  store i32 0, i32* %your_status, align 4
  %204 = load i32, i32* %mylibs, align 4
  %205 = load i32, i32* %yourlibs, align 4
  %sub460 = sub nsw i32 %204, %205
  %206 = load i32, i32* %commonlibs, align 4
  %sub461 = sub nsw i32 %sub460, %206
  store i32 %sub461, i32* %margin_of_safety, align 4
  br label %if.end.509

if.else.462:                                      ; preds = %if.then.455
  %207 = load i32, i32* %yourlibs, align 4
  %208 = load i32, i32* %mylibs, align 4
  %209 = load i32, i32* %commonlibs, align 4
  %add463 = add nsw i32 %208, %209
  %cmp464 = icmp sgt i32 %207, %add463
  br i1 %cmp464, label %if.then.466, label %if.else.469

if.then.466:                                      ; preds = %if.else.462
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %210 = load i32, i32* %yourlibs, align 4
  %211 = load i32, i32* %mylibs, align 4
  %sub467 = sub nsw i32 %210, %211
  %212 = load i32, i32* %commonlibs, align 4
  %sub468 = sub nsw i32 %sub467, %212
  store i32 %sub468, i32* %margin_of_safety, align 4
  br label %if.end.508

if.else.469:                                      ; preds = %if.else.462
  %213 = load i32, i32* %commonlibs, align 4
  %cmp470 = icmp eq i32 %213, 0
  br i1 %cmp470, label %land.lhs.true.472, label %if.else.476

land.lhs.true.472:                                ; preds = %if.else.469
  %214 = load i32, i32* %mylibs, align 4
  %215 = load i32, i32* %yourlibs, align 4
  %cmp473 = icmp eq i32 %214, %215
  br i1 %cmp473, label %if.then.475, label %if.else.476

if.then.475:                                      ; preds = %land.lhs.true.472
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.507

if.else.476:                                      ; preds = %land.lhs.true.472, %if.else.469
  %216 = load i32, i32* %commonlibs, align 4
  %cmp477 = icmp sgt i32 %216, 0
  br i1 %cmp477, label %land.lhs.true.479, label %if.else.484

land.lhs.true.479:                                ; preds = %if.else.476
  %217 = load i32, i32* %mylibs, align 4
  %218 = load i32, i32* %commonlibs, align 4
  %219 = load i32, i32* %yourlibs, align 4
  %add480 = add nsw i32 %218, %219
  %cmp481 = icmp eq i32 %217, %add480
  br i1 %cmp481, label %if.then.483, label %if.else.484

if.then.483:                                      ; preds = %land.lhs.true.479
  store i32 1, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.506

if.else.484:                                      ; preds = %land.lhs.true.479, %if.else.476
  %220 = load i32, i32* %commonlibs, align 4
  %cmp485 = icmp sgt i32 %220, 0
  br i1 %cmp485, label %land.lhs.true.487, label %if.else.496

land.lhs.true.487:                                ; preds = %if.else.484
  %221 = load i32, i32* %mylibs, align 4
  %222 = load i32, i32* %commonlibs, align 4
  %223 = load i32, i32* %yourlibs, align 4
  %add488 = add nsw i32 %222, %223
  %cmp489 = icmp slt i32 %221, %add488
  br i1 %cmp489, label %land.lhs.true.491, label %if.else.496

land.lhs.true.491:                                ; preds = %land.lhs.true.487
  %224 = load i32, i32* %yourlibs, align 4
  %225 = load i32, i32* %commonlibs, align 4
  %226 = load i32, i32* %mylibs, align 4
  %add492 = add nsw i32 %225, %226
  %cmp493 = icmp slt i32 %224, %add492
  br i1 %cmp493, label %if.then.495, label %if.else.496

if.then.495:                                      ; preds = %land.lhs.true.491
  store i32 1, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  store i32 1000, i32* %margin_of_safety, align 4
  br label %if.end.505

if.else.496:                                      ; preds = %land.lhs.true.491, %land.lhs.true.487, %if.else.484
  %227 = load i32, i32* %commonlibs, align 4
  %cmp497 = icmp sgt i32 %227, 0
  br i1 %cmp497, label %land.lhs.true.499, label %if.end.504

land.lhs.true.499:                                ; preds = %if.else.496
  %228 = load i32, i32* %yourlibs, align 4
  %229 = load i32, i32* %commonlibs, align 4
  %230 = load i32, i32* %mylibs, align 4
  %add500 = add nsw i32 %229, %230
  %cmp501 = icmp eq i32 %228, %add500
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %land.lhs.true.499
  store i32 2, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.503, %land.lhs.true.499, %if.else.496
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.then.495
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.483
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %if.then.475
  br label %if.end.508

if.end.508:                                       ; preds = %if.end.507, %if.then.466
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.508, %if.then.459
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %land.lhs.true.445, %if.end.435
  %231 = load i32, i32* %my_dragon.addr, align 4
  %idxprom511 = sext i32 %231 to i64
  %arrayidx512 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom511
  %id513 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx512, i32 0, i32 1
  %232 = load i32, i32* %id513, align 4
  %idxprom514 = sext i32 %232 to i64
  %233 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx515 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %233, i64 %idxprom514
  %genus516 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx515, i32 0, i32 10
  %call517 = call i32 @min_eyes(%struct.eyevalue* %genus516)
  %cmp518 = icmp sgt i32 %call517, 0
  br i1 %cmp518, label %land.lhs.true.520, label %if.end.552

land.lhs.true.520:                                ; preds = %if.end.510
  %234 = load i32, i32* %your_dragon.addr, align 4
  %idxprom521 = sext i32 %234 to i64
  %arrayidx522 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom521
  %id523 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx522, i32 0, i32 1
  %235 = load i32, i32* %id523, align 4
  %idxprom524 = sext i32 %235 to i64
  %236 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx525 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %236, i64 %idxprom524
  %genus526 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx525, i32 0, i32 10
  %call527 = call i32 @min_eyes(%struct.eyevalue* %genus526)
  %cmp528 = icmp eq i32 %call527, 0
  br i1 %cmp528, label %if.then.530, label %if.end.552

if.then.530:                                      ; preds = %land.lhs.true.520
  %237 = load i32, i32* %mylibs, align 4
  %238 = load i32, i32* %commonlibs, align 4
  %239 = load i32, i32* %yourlibs, align 4
  %add531 = add nsw i32 %238, %239
  %cmp532 = icmp sgt i32 %237, %add531
  br i1 %cmp532, label %if.then.534, label %if.else.537

if.then.534:                                      ; preds = %if.then.530
  store i32 1, i32* %my_status, align 4
  store i32 0, i32* %your_status, align 4
  %240 = load i32, i32* %mylibs, align 4
  %241 = load i32, i32* %commonlibs, align 4
  %sub535 = sub nsw i32 %240, %241
  %242 = load i32, i32* %yourlibs, align 4
  %sub536 = sub nsw i32 %sub535, %242
  store i32 %sub536, i32* %margin_of_safety, align 4
  br label %if.end.551

if.else.537:                                      ; preds = %if.then.530
  %243 = load i32, i32* %mylibs, align 4
  %244 = load i32, i32* %commonlibs, align 4
  %add538 = add nsw i32 %243, %244
  %245 = load i32, i32* %yourlibs, align 4
  %cmp539 = icmp eq i32 %add538, %245
  br i1 %cmp539, label %if.then.541, label %if.else.542

if.then.541:                                      ; preds = %if.else.537
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  br label %if.end.550

if.else.542:                                      ; preds = %if.else.537
  %246 = load i32, i32* %mylibs, align 4
  %247 = load i32, i32* %commonlibs, align 4
  %add543 = add nsw i32 %246, %247
  %248 = load i32, i32* %yourlibs, align 4
  %cmp544 = icmp slt i32 %add543, %248
  br i1 %cmp544, label %if.then.546, label %if.end.549

if.then.546:                                      ; preds = %if.else.542
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %249 = load i32, i32* %mylibs, align 4
  %250 = load i32, i32* %commonlibs, align 4
  %add547 = add nsw i32 %249, %250
  %251 = load i32, i32* %yourlibs, align 4
  %sub548 = sub nsw i32 %add547, %251
  store i32 %sub548, i32* %margin_of_safety, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.546, %if.else.542
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549, %if.then.541
  br label %if.end.551

if.end.551:                                       ; preds = %if.end.550, %if.then.534
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %land.lhs.true.520, %if.end.510
  %252 = load i32, i32* %my_dragon.addr, align 4
  %idxprom553 = sext i32 %252 to i64
  %arrayidx554 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom553
  %id555 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx554, i32 0, i32 1
  %253 = load i32, i32* %id555, align 4
  %idxprom556 = sext i32 %253 to i64
  %254 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx557 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %254, i64 %idxprom556
  %genus558 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx557, i32 0, i32 10
  %call559 = call i32 @min_eyes(%struct.eyevalue* %genus558)
  %cmp560 = icmp eq i32 %call559, 0
  br i1 %cmp560, label %land.lhs.true.562, label %if.end.594

land.lhs.true.562:                                ; preds = %if.end.552
  %255 = load i32, i32* %your_dragon.addr, align 4
  %idxprom563 = sext i32 %255 to i64
  %arrayidx564 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom563
  %id565 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx564, i32 0, i32 1
  %256 = load i32, i32* %id565, align 4
  %idxprom566 = sext i32 %256 to i64
  %257 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx567 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %257, i64 %idxprom566
  %genus568 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx567, i32 0, i32 10
  %call569 = call i32 @min_eyes(%struct.eyevalue* %genus568)
  %cmp570 = icmp sgt i32 %call569, 0
  br i1 %cmp570, label %if.then.572, label %if.end.594

if.then.572:                                      ; preds = %land.lhs.true.562
  %258 = load i32, i32* %yourlibs, align 4
  %259 = load i32, i32* %commonlibs, align 4
  %add573 = add nsw i32 %258, %259
  %260 = load i32, i32* %mylibs, align 4
  %cmp574 = icmp sgt i32 %add573, %260
  br i1 %cmp574, label %if.then.576, label %if.else.579

if.then.576:                                      ; preds = %if.then.572
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %261 = load i32, i32* %yourlibs, align 4
  %262 = load i32, i32* %commonlibs, align 4
  %add577 = add nsw i32 %261, %262
  %263 = load i32, i32* %mylibs, align 4
  %sub578 = sub nsw i32 %add577, %263
  store i32 %sub578, i32* %margin_of_safety, align 4
  br label %if.end.593

if.else.579:                                      ; preds = %if.then.572
  %264 = load i32, i32* %yourlibs, align 4
  %265 = load i32, i32* %commonlibs, align 4
  %add580 = add nsw i32 %264, %265
  %266 = load i32, i32* %mylibs, align 4
  %cmp581 = icmp eq i32 %add580, %266
  br i1 %cmp581, label %if.then.583, label %if.else.584

if.then.583:                                      ; preds = %if.else.579
  store i32 2, i32* %my_status, align 4
  store i32 2, i32* %your_status, align 4
  store i32 0, i32* %margin_of_safety, align 4
  br label %if.end.592

if.else.584:                                      ; preds = %if.else.579
  %267 = load i32, i32* %yourlibs, align 4
  %268 = load i32, i32* %commonlibs, align 4
  %add585 = add nsw i32 %267, %268
  %269 = load i32, i32* %mylibs, align 4
  %cmp586 = icmp sgt i32 %add585, %269
  br i1 %cmp586, label %if.then.588, label %if.end.591

if.then.588:                                      ; preds = %if.else.584
  store i32 0, i32* %my_status, align 4
  store i32 1, i32* %your_status, align 4
  %270 = load i32, i32* %yourlibs, align 4
  %271 = load i32, i32* %mylibs, align 4
  %sub589 = sub nsw i32 %270, %271
  %272 = load i32, i32* %commonlibs, align 4
  %sub590 = sub nsw i32 %sub589, %272
  store i32 %sub590, i32* %margin_of_safety, align 4
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.588, %if.else.584
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.then.583
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %if.then.576
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.593, %land.lhs.true.562, %if.end.552
  %273 = load i32, i32* %my_dragon.addr, align 4
  %idxprom595 = sext i32 %273 to i64
  %arrayidx596 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom595
  %owl_status597 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx596, i32 0, i32 7
  %274 = load i32, i32* %owl_status597, align 4
  %cmp598 = icmp ne i32 %274, 2
  br i1 %cmp598, label %if.then.600, label %if.end.615

if.then.600:                                      ; preds = %if.end.594
  %275 = load i32, i32* %my_status, align 4
  %cmp601 = icmp eq i32 %275, 1
  br i1 %cmp601, label %if.then.603, label %if.else.604

if.then.603:                                      ; preds = %if.then.600
  %276 = load i32, i32* %my_dragon.addr, align 4
  call void @update_status(i32 %276, i32 1, i32 7)
  br label %if.end.614

if.else.604:                                      ; preds = %if.then.600
  %277 = load i32, i32* %my_status, align 4
  %cmp605 = icmp eq i32 %277, 2
  br i1 %cmp605, label %if.then.607, label %if.else.608

if.then.607:                                      ; preds = %if.else.604
  %278 = load i32, i32* %my_dragon.addr, align 4
  call void @update_status(i32 %278, i32 2, i32 2)
  br label %if.end.613

if.else.608:                                      ; preds = %if.else.604
  %279 = load i32, i32* %my_status, align 4
  %cmp609 = icmp eq i32 %279, 0
  br i1 %cmp609, label %if.then.611, label %if.end.612

if.then.611:                                      ; preds = %if.else.608
  %280 = load i32, i32* %my_dragon.addr, align 4
  call void @update_status(i32 %280, i32 0, i32 0)
  br label %if.end.612

if.end.612:                                       ; preds = %if.then.611, %if.else.608
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %if.then.607
  br label %if.end.614

if.end.614:                                       ; preds = %if.end.613, %if.then.603
  br label %if.end.615

if.end.615:                                       ; preds = %if.end.614, %if.end.594
  %281 = load i32, i32* %your_status, align 4
  %cmp616 = icmp eq i32 %281, 1
  br i1 %cmp616, label %if.then.618, label %if.else.619

if.then.618:                                      ; preds = %if.end.615
  %282 = load i32, i32* %your_dragon.addr, align 4
  call void @update_status(i32 %282, i32 1, i32 7)
  br label %if.end.629

if.else.619:                                      ; preds = %if.end.615
  %283 = load i32, i32* %your_status, align 4
  %cmp620 = icmp eq i32 %283, 2
  br i1 %cmp620, label %if.then.622, label %if.else.623

if.then.622:                                      ; preds = %if.else.619
  %284 = load i32, i32* %your_dragon.addr, align 4
  call void @update_status(i32 %284, i32 2, i32 2)
  br label %if.end.628

if.else.623:                                      ; preds = %if.else.619
  %285 = load i32, i32* %your_status, align 4
  %cmp624 = icmp eq i32 %285, 0
  br i1 %cmp624, label %if.then.626, label %if.end.627

if.then.626:                                      ; preds = %if.else.623
  %286 = load i32, i32* %your_dragon.addr, align 4
  call void @update_status(i32 %286, i32 0, i32 0)
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.626, %if.else.623
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %if.then.622
  br label %if.end.629

if.end.629:                                       ; preds = %if.end.628, %if.then.618
  %287 = load i32, i32* %my_status, align 4
  %cmp630 = icmp eq i32 %287, 2
  br i1 %cmp630, label %if.then.635, label %lor.lhs.false.632

lor.lhs.false.632:                                ; preds = %if.end.629
  %288 = load i32, i32* %your_status, align 4
  %cmp633 = icmp eq i32 %288, 2
  br i1 %cmp633, label %if.then.635, label %if.end.754

if.then.635:                                      ; preds = %lor.lhs.false.632, %if.end.629
  store i32 0, i32* %found_one, align 4
  %289 = load i32, i32* %my_dragon.addr, align 4
  %idxprom636 = sext i32 %289 to i64
  %arrayidx637 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom636
  %owl_status638 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx637, i32 0, i32 7
  %290 = load i32, i32* %owl_status638, align 4
  %cmp639 = icmp eq i32 %290, 2
  br i1 %cmp639, label %land.lhs.true.641, label %if.else.651

land.lhs.true.641:                                ; preds = %if.then.635
  %291 = load i32, i32* %my_dragon.addr, align 4
  %idxprom642 = sext i32 %291 to i64
  %arrayidx643 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom642
  %owl_defense_point644 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx643, i32 0, i32 12
  %292 = load i32, i32* %owl_defense_point644, align 4
  %cmp645 = icmp ne i32 %292, 0
  br i1 %cmp645, label %if.then.647, label %if.else.651

if.then.647:                                      ; preds = %land.lhs.true.641
  %293 = load i32, i32* %my_dragon.addr, align 4
  %idxprom648 = sext i32 %293 to i64
  %arrayidx649 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom648
  %owl_defense_point650 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx649, i32 0, i32 12
  %294 = load i32, i32* %owl_defense_point650, align 4
  %295 = load i32, i32* %my_dragon.addr, align 4
  %296 = load i32, i32* %your_dragon.addr, align 4
  %297 = load i32, i32* %my_status, align 4
  %298 = load i32, i32* %your_status, align 4
  %299 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299)
  br label %if.end.753

if.else.651:                                      ; preds = %land.lhs.true.641, %if.then.635
  %300 = load i32, i32* %your_dragon.addr, align 4
  %idxprom652 = sext i32 %300 to i64
  %arrayidx653 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom652
  %owl_status654 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx653, i32 0, i32 7
  %301 = load i32, i32* %owl_status654, align 4
  %cmp655 = icmp eq i32 %301, 2
  br i1 %cmp655, label %land.lhs.true.657, label %if.else.667

land.lhs.true.657:                                ; preds = %if.else.651
  %302 = load i32, i32* %your_dragon.addr, align 4
  %idxprom658 = sext i32 %302 to i64
  %arrayidx659 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom658
  %owl_attack_point660 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx659, i32 0, i32 8
  %303 = load i32, i32* %owl_attack_point660, align 4
  %cmp661 = icmp ne i32 %303, 0
  br i1 %cmp661, label %if.then.663, label %if.else.667

if.then.663:                                      ; preds = %land.lhs.true.657
  %304 = load i32, i32* %your_dragon.addr, align 4
  %idxprom664 = sext i32 %304 to i64
  %arrayidx665 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom664
  %owl_attack_point666 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx665, i32 0, i32 8
  %305 = load i32, i32* %owl_attack_point666, align 4
  %306 = load i32, i32* %my_dragon.addr, align 4
  %307 = load i32, i32* %your_dragon.addr, align 4
  %308 = load i32, i32* %my_status, align 4
  %309 = load i32, i32* %your_status, align 4
  %310 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310)
  br label %if.end.752

if.else.667:                                      ; preds = %land.lhs.true.657, %if.else.651
  %311 = load i32, i32* %commonlibs, align 4
  %cmp668 = icmp sgt i32 %311, 1
  br i1 %cmp668, label %if.then.670, label %if.else.703

if.then.670:                                      ; preds = %if.else.667
  %312 = load i32, i32* %my_dragon.addr, align 4
  %idxprom671 = sext i32 %312 to i64
  %arrayidx672 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom671
  %id673 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx672, i32 0, i32 1
  %313 = load i32, i32* %id673, align 4
  %idxprom674 = sext i32 %313 to i64
  %314 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx675 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %314, i64 %idxprom674
  %genus676 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx675, i32 0, i32 10
  %call677 = call i32 @eye_move_urgency(%struct.eyevalue* %genus676)
  %cmp678 = icmp sgt i32 %call677, 0
  br i1 %cmp678, label %if.then.680, label %if.end.686

if.then.680:                                      ; preds = %if.then.670
  %315 = load i32, i32* %my_dragon.addr, align 4
  %idxprom681 = sext i32 %315 to i64
  %arrayidx682 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom681
  %id683 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx682, i32 0, i32 1
  %316 = load i32, i32* %id683, align 4
  %idxprom684 = sext i32 %316 to i64
  %317 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx685 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %317, i64 %idxprom684
  %heye = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx685, i32 0, i32 11
  %318 = load i32, i32* %heye, align 4
  %319 = load i32, i32* %my_dragon.addr, align 4
  %320 = load i32, i32* %your_dragon.addr, align 4
  %321 = load i32, i32* %my_status, align 4
  %322 = load i32, i32* %your_status, align 4
  %323 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323)
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.680, %if.then.670
  %324 = load i32, i32* %your_dragon.addr, align 4
  %idxprom687 = sext i32 %324 to i64
  %arrayidx688 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom687
  %id689 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx688, i32 0, i32 1
  %325 = load i32, i32* %id689, align 4
  %idxprom690 = sext i32 %325 to i64
  %326 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx691 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %326, i64 %idxprom690
  %genus692 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx691, i32 0, i32 10
  %call693 = call i32 @eye_move_urgency(%struct.eyevalue* %genus692)
  %tobool694 = icmp ne i32 %call693, 0
  br i1 %tobool694, label %if.then.695, label %if.end.702

if.then.695:                                      ; preds = %if.end.686
  %327 = load i32, i32* %your_dragon.addr, align 4
  %idxprom696 = sext i32 %327 to i64
  %arrayidx697 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom696
  %id698 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx697, i32 0, i32 1
  %328 = load i32, i32* %id698, align 4
  %idxprom699 = sext i32 %328 to i64
  %329 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx700 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %329, i64 %idxprom699
  %heye701 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx700, i32 0, i32 11
  %330 = load i32, i32* %heye701, align 4
  %331 = load i32, i32* %my_dragon.addr, align 4
  %332 = load i32, i32* %your_dragon.addr, align 4
  %333 = load i32, i32* %my_status, align 4
  %334 = load i32, i32* %your_status, align 4
  %335 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335)
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.695, %if.end.686
  br label %if.end.751

if.else.703:                                      ; preds = %if.else.667
  store i32 21, i32* %pos, align 4
  br label %for.cond.704

for.cond.704:                                     ; preds = %for.inc.725, %if.else.703
  %336 = load i32, i32* %pos, align 4
  %cmp705 = icmp slt i32 %336, 400
  br i1 %cmp705, label %for.body.707, label %for.end.727

for.body.707:                                     ; preds = %for.cond.704
  %337 = load i32, i32* %pos, align 4
  %idxprom708 = sext i32 %337 to i64
  %arrayidx709 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom708
  %338 = load i8, i8* %arrayidx709, align 1
  %conv710 = zext i8 %338 to i32
  %cmp711 = icmp ne i32 %conv710, 3
  br i1 %cmp711, label %if.end.714, label %if.then.713

if.then.713:                                      ; preds = %for.body.707
  br label %for.inc.725

if.end.714:                                       ; preds = %for.body.707
  %339 = load i32, i32* %pos, align 4
  %340 = load i32, i32* %your_dragon.addr, align 4
  %call715 = call i32 @liberty_of_dragon(i32 %339, i32 %340)
  %tobool716 = icmp ne i32 %call715, 0
  br i1 %tobool716, label %land.lhs.true.717, label %if.end.724

land.lhs.true.717:                                ; preds = %if.end.714
  %341 = load i32, i32* %pos, align 4
  %342 = load i32, i32* %my_dragon.addr, align 4
  %call718 = call i32 @liberty_of_dragon(i32 %341, i32 %342)
  %tobool719 = icmp ne i32 %call718, 0
  br i1 %tobool719, label %if.end.724, label %land.lhs.true.720

land.lhs.true.720:                                ; preds = %land.lhs.true.717
  %343 = load i32, i32* %pos, align 4
  %344 = load i32, i32* %color, align 4
  %call721 = call i32 @safe_move(i32 %343, i32 %344)
  %tobool722 = icmp ne i32 %call721, 0
  br i1 %tobool722, label %if.then.723, label %if.end.724

if.then.723:                                      ; preds = %land.lhs.true.720
  %345 = load i32, i32* %pos, align 4
  %346 = load i32, i32* %my_dragon.addr, align 4
  %347 = load i32, i32* %your_dragon.addr, align 4
  %348 = load i32, i32* %my_status, align 4
  %349 = load i32, i32* %your_status, align 4
  %350 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350)
  store i32 1, i32* %found_one, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.723, %land.lhs.true.720, %land.lhs.true.717, %if.end.714
  br label %for.inc.725

for.inc.725:                                      ; preds = %if.end.724, %if.then.713
  %351 = load i32, i32* %pos, align 4
  %inc726 = add nsw i32 %351, 1
  store i32 %inc726, i32* %pos, align 4
  br label %for.cond.704

for.end.727:                                      ; preds = %for.cond.704
  %352 = load i32, i32* %found_one, align 4
  %tobool728 = icmp ne i32 %352, 0
  br i1 %tobool728, label %if.end.750, label %if.then.729

if.then.729:                                      ; preds = %for.end.727
  store i32 21, i32* %pos, align 4
  br label %for.cond.730

for.cond.730:                                     ; preds = %for.inc.747, %if.then.729
  %353 = load i32, i32* %pos, align 4
  %cmp731 = icmp slt i32 %353, 400
  br i1 %cmp731, label %for.body.733, label %for.end.749

for.body.733:                                     ; preds = %for.cond.730
  %354 = load i32, i32* %pos, align 4
  %idxprom734 = sext i32 %354 to i64
  %arrayidx735 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom734
  %355 = load i8, i8* %arrayidx735, align 1
  %conv736 = zext i8 %355 to i32
  %cmp737 = icmp ne i32 %conv736, 3
  br i1 %cmp737, label %land.lhs.true.739, label %if.end.746

land.lhs.true.739:                                ; preds = %for.body.733
  %356 = load i32, i32* %pos, align 4
  %357 = load i32, i32* %your_dragon.addr, align 4
  %call740 = call i32 @liberty_of_dragon(i32 %356, i32 %357)
  %tobool741 = icmp ne i32 %call740, 0
  br i1 %tobool741, label %land.lhs.true.742, label %if.end.746

land.lhs.true.742:                                ; preds = %land.lhs.true.739
  %358 = load i32, i32* %pos, align 4
  %359 = load i32, i32* %color, align 4
  %call743 = call i32 @safe_move(i32 %358, i32 %359)
  %tobool744 = icmp ne i32 %call743, 0
  br i1 %tobool744, label %if.then.745, label %if.end.746

if.then.745:                                      ; preds = %land.lhs.true.742
  %360 = load i32, i32* %pos, align 4
  %361 = load i32, i32* %my_dragon.addr, align 4
  %362 = load i32, i32* %your_dragon.addr, align 4
  %363 = load i32, i32* %my_status, align 4
  %364 = load i32, i32* %your_status, align 4
  %365 = load i32, i32* %margin_of_safety, align 4
  call void @add_appropriate_semeai_moves(i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365)
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.745, %land.lhs.true.742, %land.lhs.true.739, %for.body.733
  br label %for.inc.747

for.inc.747:                                      ; preds = %if.end.746
  %366 = load i32, i32* %pos, align 4
  %inc748 = add nsw i32 %366, 1
  store i32 %inc748, i32* %pos, align 4
  br label %for.cond.730

for.end.749:                                      ; preds = %for.cond.730
  br label %if.end.750

if.end.750:                                       ; preds = %for.end.749, %for.end.727
  br label %if.end.751

if.end.751:                                       ; preds = %if.end.750, %if.end.702
  br label %if.end.752

if.end.752:                                       ; preds = %if.end.751, %if.then.663
  br label %if.end.753

if.end.753:                                       ; preds = %if.end.752, %if.then.647
  br label %if.end.754

if.end.754:                                       ; preds = %if.then.15, %if.then.69, %cond.end.147, %cond.end.210, %if.end.753, %lor.lhs.false.632
  ret void
}

; Function Attrs: nounwind uwtable
define void @new_semeai(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %other = alloca i32, align 4
  %best_result_a = alloca [10 x i32], align 16
  %best_result_b = alloca [10 x i32], align 16
  %worst_result_a = alloca [10 x i32], align 16
  %worst_result_b = alloca [10 x i32], align 16
  %a_best_status = alloca i32, align 4
  %b_worst_status = alloca i32, align 4
  %a_worst_status = alloca i32, align 4
  %b_best_status = alloca i32, align 4
  %move = alloca [10 x i32], align 16
  %a_status = alloca i32, align 4
  %b_status = alloca i32, align 4
  %pass = alloca i32, align 4
  %semeai_found = alloca i32, align 4
  %a_status259 = alloca i32, align 4
  %b_status260 = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %bpos, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 3, i32* %a_best_status, align 4
  store i32 3, i32* %b_worst_status, align 4
  store i32 3, i32* %a_worst_status, align 4
  store i32 3, i32* %b_best_status, align 4
  store i32 3, i32* %a_status, align 4
  store i32 3, i32* %b_status, align 4
  %1 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4
  %call = call i8* @color_to_string(i32 %2)
  %call1 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i8* %call)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 0, i32* %d1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.283, %cond.end
  %3 = load i32, i32* %d1, align 4
  %4 = load i32, i32* @number_of_dragons, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.285

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %semeai_found, align 4
  %5 = load i32, i32* %d1, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %idxprom
  %origin = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %origin, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom2
  %color4 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx3, i32 0, i32 0
  %8 = load i32, i32* %color4, align 4
  %9 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %d1, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx7 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom6
  %origin8 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx7, i32 0, i32 0
  %12 = load i32, i32* %origin8, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom9
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx10, i32 0, i32 16
  %13 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %13, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i32, i32* %d1, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %15, i64 %idxprom12
  %origin14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx13, i32 0, i32 0
  %16 = load i32, i32* %origin14, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %status17 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 16
  %17 = load i32, i32* %status17, align 4
  %cmp18 = icmp ne i32 %17, 2
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc.283

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %d1, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx21 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %20, i64 %idxprom20
  %neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx21, i32 0, i32 2
  %21 = load i32, i32* %neighbors, align 4
  %cmp22 = icmp slt i32 %18, %21
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.19
  %22 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i64 %idxprom24
  store i32 0, i32* %arrayidx25, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_b, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %move, i32 0, i64 %idxprom28
  store i32 0, i32* %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  store i32 0, i32* %pass, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.280, %for.end
  %26 = load i32, i32* %pass, align 4
  %cmp31 = icmp slt i32 %26, 2
  br i1 %cmp31, label %for.body.32, label %for.end.282

for.body.32:                                      ; preds = %for.cond.30
  store i32 0, i32* %k, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.252, %for.body.32
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %d1, align 4
  %idxprom34 = sext i32 %28 to i64
  %29 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx35 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %29, i64 %idxprom34
  %neighbors36 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx35, i32 0, i32 2
  %30 = load i32, i32* %neighbors36, align 4
  %cmp37 = icmp slt i32 %27, %30
  br i1 %cmp37, label %for.body.38, label %for.end.254

for.body.38:                                      ; preds = %for.cond.33
  %31 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %31 to i64
  %32 = load i32, i32* %d1, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %33, i64 %idxprom40
  %adjacent = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx41, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %adjacent, i32 0, i64 %idxprom39
  %34 = load i32, i32* %arrayidx42, align 4
  store i32 %34, i32* %d2, align 4
  %35 = load i32, i32* %d2, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx44 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i64 %idxprom43
  %origin45 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx44, i32 0, i32 0
  %37 = load i32, i32* %origin45, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom46
  %color48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx47, i32 0, i32 0
  %38 = load i32, i32* %color48, align 4
  %39 = load i32, i32* %other, align 4
  %cmp49 = icmp ne i32 %38, %39
  br i1 %cmp49, label %if.then.66, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %for.body.38
  %40 = load i32, i32* %d2, align 4
  %idxprom51 = sext i32 %40 to i64
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i64 %idxprom51
  %origin53 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx52, i32 0, i32 0
  %42 = load i32, i32* %origin53, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom54
  %status56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx55, i32 0, i32 16
  %43 = load i32, i32* %status56, align 4
  %cmp57 = icmp ne i32 %43, 0
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.67

land.lhs.true.58:                                 ; preds = %lor.lhs.false.50
  %44 = load i32, i32* %d2, align 4
  %idxprom59 = sext i32 %44 to i64
  %45 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx60 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i64 %idxprom59
  %origin61 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx60, i32 0, i32 0
  %46 = load i32, i32* %origin61, align 4
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom62
  %status64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx63, i32 0, i32 16
  %47 = load i32, i32* %status64, align 4
  %cmp65 = icmp ne i32 %47, 2
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.58, %for.body.38
  br label %for.inc.252

if.end.67:                                        ; preds = %land.lhs.true.58, %lor.lhs.false.50
  %48 = load i32, i32* %d1, align 4
  %idxprom68 = sext i32 %48 to i64
  %49 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx69 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %49, i64 %idxprom68
  %origin70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx69, i32 0, i32 0
  %50 = load i32, i32* %origin70, align 4
  %idxprom71 = sext i32 %50 to i64
  %arrayidx72 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom71
  %origin73 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx72, i32 0, i32 2
  %51 = load i32, i32* %origin73, align 4
  store i32 %51, i32* %apos, align 4
  %52 = load i32, i32* %d2, align 4
  %idxprom74 = sext i32 %52 to i64
  %53 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx75 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %53, i64 %idxprom74
  %origin76 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx75, i32 0, i32 0
  %54 = load i32, i32* %origin76, align 4
  %idxprom77 = sext i32 %54 to i64
  %arrayidx78 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom77
  %origin79 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx78, i32 0, i32 2
  %55 = load i32, i32* %origin79, align 4
  store i32 %55, i32* %bpos, align 4
  %56 = load i32, i32* %apos, align 4
  %idxprom80 = sext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom80
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx81, i32 0, i32 12
  %57 = load i32, i32* %inessential, align 4
  %tobool82 = icmp ne i32 %57, 0
  br i1 %tobool82, label %if.then.102, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.end.67
  %58 = load i32, i32* %apos, align 4
  %idxprom84 = sext i32 %58 to i64
  %arrayidx85 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom84
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx85, i32 0, i32 1
  %59 = load i32, i32* %id, align 4
  %idxprom86 = sext i32 %59 to i64
  %60 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx87 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %60, i64 %idxprom86
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx87, i32 0, i32 6
  %61 = load i32, i32* %safety, align 4
  %cmp88 = icmp eq i32 %61, 5
  br i1 %cmp88, label %if.then.102, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.83
  %62 = load i32, i32* %bpos, align 4
  %idxprom90 = sext i32 %62 to i64
  %arrayidx91 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom90
  %inessential92 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx91, i32 0, i32 12
  %63 = load i32, i32* %inessential92, align 4
  %tobool93 = icmp ne i32 %63, 0
  br i1 %tobool93, label %if.then.102, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.89
  %64 = load i32, i32* %bpos, align 4
  %idxprom95 = sext i32 %64 to i64
  %arrayidx96 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom95
  %id97 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx96, i32 0, i32 1
  %65 = load i32, i32* %id97, align 4
  %idxprom98 = sext i32 %65 to i64
  %66 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx99 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %66, i64 %idxprom98
  %safety100 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx99, i32 0, i32 6
  %67 = load i32, i32* %safety100, align 4
  %cmp101 = icmp eq i32 %67, 5
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %lor.lhs.false.94, %lor.lhs.false.89, %lor.lhs.false.83, %if.end.67
  br label %for.inc.252

if.end.103:                                       ; preds = %lor.lhs.false.94
  %68 = load i32, i32* %apos, align 4
  %idxprom104 = sext i32 %68 to i64
  %arrayidx105 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom104
  %size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx105, i32 0, i32 3
  %69 = load i32, i32* %size, align 4
  %70 = load i32, i32* %apos, align 4
  %idxprom106 = sext i32 %70 to i64
  %arrayidx107 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom106
  %size108 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx107, i32 0, i32 1
  %71 = load i32, i32* %size108, align 4
  %cmp109 = icmp eq i32 %69, %71
  br i1 %cmp109, label %land.lhs.true.110, label %if.end.123

land.lhs.true.110:                                ; preds = %if.end.103
  %72 = load i32, i32* %apos, align 4
  %idxprom111 = sext i32 %72 to i64
  %arrayidx112 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom111
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx112, i32 0, i32 16
  %arrayidx113 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %73 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp eq i32 %73, 5
  br i1 %cmp114, label %land.lhs.true.115, label %if.end.123

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %74 = load i32, i32* %apos, align 4
  %idxprom116 = sext i32 %74 to i64
  %arrayidx117 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom116
  %id118 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx117, i32 0, i32 1
  %75 = load i32, i32* %id118, align 4
  %idxprom119 = sext i32 %75 to i64
  %76 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx120 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %76, i64 %idxprom119
  %hostile_neighbors = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx120, i32 0, i32 3
  %77 = load i32, i32* %hostile_neighbors, align 4
  %cmp121 = icmp eq i32 %77, 1
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %land.lhs.true.115
  br label %for.inc.252

if.end.123:                                       ; preds = %land.lhs.true.115, %land.lhs.true.110, %if.end.103
  %78 = load i32, i32* %bpos, align 4
  %idxprom124 = sext i32 %78 to i64
  %arrayidx125 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom124
  %size126 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx125, i32 0, i32 3
  %79 = load i32, i32* %size126, align 4
  %80 = load i32, i32* %bpos, align 4
  %idxprom127 = sext i32 %80 to i64
  %arrayidx128 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom127
  %size129 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx128, i32 0, i32 1
  %81 = load i32, i32* %size129, align 4
  %cmp130 = icmp eq i32 %79, %81
  br i1 %cmp130, label %land.lhs.true.131, label %if.end.146

land.lhs.true.131:                                ; preds = %if.end.123
  %82 = load i32, i32* %bpos, align 4
  %idxprom132 = sext i32 %82 to i64
  %arrayidx133 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom132
  %attack_codes134 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx133, i32 0, i32 16
  %arrayidx135 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes134, i32 0, i64 0
  %83 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp eq i32 %83, 5
  br i1 %cmp136, label %land.lhs.true.137, label %if.end.146

land.lhs.true.137:                                ; preds = %land.lhs.true.131
  %84 = load i32, i32* %bpos, align 4
  %idxprom138 = sext i32 %84 to i64
  %arrayidx139 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom138
  %id140 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx139, i32 0, i32 1
  %85 = load i32, i32* %id140, align 4
  %idxprom141 = sext i32 %85 to i64
  %86 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx142 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i64 %idxprom141
  %hostile_neighbors143 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx142, i32 0, i32 3
  %87 = load i32, i32* %hostile_neighbors143, align 4
  %cmp144 = icmp eq i32 %87, 1
  br i1 %cmp144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true.137
  br label %for.inc.252

if.end.146:                                       ; preds = %land.lhs.true.137, %land.lhs.true.131, %if.end.123
  %88 = load i32, i32* %apos, align 4
  %idxprom147 = sext i32 %88 to i64
  %arrayidx148 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom147
  %size149 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx148, i32 0, i32 3
  %89 = load i32, i32* %size149, align 4
  %cmp150 = icmp eq i32 %89, 1
  br i1 %cmp150, label %if.then.156, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %if.end.146
  %90 = load i32, i32* %bpos, align 4
  %idxprom152 = sext i32 %90 to i64
  %arrayidx153 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom152
  %size154 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx153, i32 0, i32 3
  %91 = load i32, i32* %size154, align 4
  %cmp155 = icmp eq i32 %91, 1
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %lor.lhs.false.151, %if.end.146
  br label %for.inc.252

if.end.157:                                       ; preds = %lor.lhs.false.151
  store i32 1, i32* %semeai_found, align 4
  store i32 3, i32* %a_best_status, align 4
  store i32 3, i32* %b_best_status, align 4
  store i32 3, i32* %a_worst_status, align 4
  store i32 3, i32* %b_worst_status, align 4
  %92 = load i32, i32* %pass, align 4
  %cmp158 = icmp eq i32 %92, 0
  br i1 %cmp158, label %if.then.159, label %if.else

if.then.159:                                      ; preds = %if.end.157
  %93 = load i32, i32* @debug, align 4
  %and = and i32 %93, 64
  %tobool160 = icmp ne i32 %and, 0
  br i1 %tobool160, label %cond.false.162, label %cond.true.161

cond.true.161:                                    ; preds = %if.then.159
  br label %cond.end.164

cond.false.162:                                   ; preds = %if.then.159
  %94 = load i32, i32* %apos, align 4
  %95 = load i32, i32* %bpos, align 4
  %call163 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i32 %94, i32 %95)
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.162, %cond.true.161
  %96 = load i32, i32* %apos, align 4
  %97 = load i32, i32* %bpos, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i32 0
  %98 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %98 to i64
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %idx.ext
  %arraydecay165 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_b, i32 0, i32 0
  %99 = load i32, i32* %k, align 4
  %idx.ext166 = sext i32 %99 to i64
  %add.ptr167 = getelementptr inbounds i32, i32* %arraydecay165, i64 %idx.ext166
  %arraydecay168 = getelementptr inbounds [10 x i32], [10 x i32]* %move, i32 0, i32 0
  %100 = load i32, i32* %k, align 4
  %idx.ext169 = sext i32 %100 to i64
  %add.ptr170 = getelementptr inbounds i32, i32* %arraydecay168, i64 %idx.ext169
  call void @owl_analyze_semeai(i32 %96, i32 %97, i32* %add.ptr, i32* %add.ptr167, i32* %add.ptr170, i32 1)
  %101 = load i32, i32* @debug, align 4
  %and171 = and i32 %101, 64
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %cond.false.174, label %cond.true.173

cond.true.173:                                    ; preds = %cond.end.164
  br label %cond.end.184

cond.false.174:                                   ; preds = %cond.end.164
  %102 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %102 to i64
  %arrayidx176 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i64 %idxprom175
  %103 = load i32, i32* %arrayidx176, align 4
  %call177 = call i8* @safety_to_string(i32 %103)
  %104 = load i32, i32* %k, align 4
  %idxprom178 = sext i32 %104 to i64
  %arrayidx179 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_b, i32 0, i64 %idxprom178
  %105 = load i32, i32* %arrayidx179, align 4
  %call180 = call i8* @safety_to_string(i32 %105)
  %106 = load i32, i32* %k, align 4
  %idxprom181 = sext i32 %106 to i64
  %arrayidx182 = getelementptr inbounds [10 x i32], [10 x i32]* %move, i32 0, i64 %idxprom181
  %107 = load i32, i32* %arrayidx182, align 4
  %call183 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* %call177, i8* %call180, i32 %107)
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.174, %cond.true.173
  %108 = load i32, i32* %a_best_status, align 4
  %cmp185 = icmp eq i32 %108, 0
  br i1 %cmp185, label %if.then.194, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %cond.end.184
  %109 = load i32, i32* %a_best_status, align 4
  %cmp187 = icmp eq i32 %109, 3
  br i1 %cmp187, label %if.then.194, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %lor.lhs.false.186
  %110 = load i32, i32* %a_best_status, align 4
  %cmp189 = icmp eq i32 %110, 7
  br i1 %cmp189, label %land.lhs.true.190, label %if.end.199

land.lhs.true.190:                                ; preds = %lor.lhs.false.188
  %111 = load i32, i32* %k, align 4
  %idxprom191 = sext i32 %111 to i64
  %arrayidx192 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i64 %idxprom191
  %112 = load i32, i32* %arrayidx192, align 4
  %cmp193 = icmp eq i32 %112, 1
  br i1 %cmp193, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %land.lhs.true.190, %lor.lhs.false.186, %cond.end.184
  %113 = load i32, i32* %k, align 4
  %idxprom195 = sext i32 %113 to i64
  %arrayidx196 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i64 %idxprom195
  %114 = load i32, i32* %arrayidx196, align 4
  store i32 %114, i32* %a_best_status, align 4
  %115 = load i32, i32* %k, align 4
  %idxprom197 = sext i32 %115 to i64
  %arrayidx198 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_b, i32 0, i64 %idxprom197
  %116 = load i32, i32* %arrayidx198, align 4
  store i32 %116, i32* %b_worst_status, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %land.lhs.true.190, %lor.lhs.false.188
  %117 = load i32, i32* %bpos, align 4
  %118 = load i32, i32* %apos, align 4
  %arraydecay200 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_b, i32 0, i32 0
  %119 = load i32, i32* %k, align 4
  %idx.ext201 = sext i32 %119 to i64
  %add.ptr202 = getelementptr inbounds i32, i32* %arraydecay200, i64 %idx.ext201
  %arraydecay203 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_a, i32 0, i32 0
  %120 = load i32, i32* %k, align 4
  %idx.ext204 = sext i32 %120 to i64
  %add.ptr205 = getelementptr inbounds i32, i32* %arraydecay203, i64 %idx.ext204
  call void @owl_analyze_semeai(i32 %117, i32 %118, i32* %add.ptr202, i32* %add.ptr205, i32* null, i32 1)
  %121 = load i32, i32* @debug, align 4
  %and206 = and i32 %121, 64
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %cond.false.209, label %cond.true.208

cond.true.208:                                    ; preds = %if.end.199
  br label %cond.end.217

cond.false.209:                                   ; preds = %if.end.199
  %122 = load i32, i32* %k, align 4
  %idxprom210 = sext i32 %122 to i64
  %arrayidx211 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_b, i32 0, i64 %idxprom210
  %123 = load i32, i32* %arrayidx211, align 4
  %call212 = call i8* @safety_to_string(i32 %123)
  %124 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %124 to i64
  %arrayidx214 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_a, i32 0, i64 %idxprom213
  %125 = load i32, i32* %arrayidx214, align 4
  %call215 = call i8* @safety_to_string(i32 %125)
  %call216 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* %call212, i8* %call215)
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.209, %cond.true.208
  %126 = load i32, i32* %b_best_status, align 4
  %cmp218 = icmp eq i32 %126, 0
  br i1 %cmp218, label %if.then.227, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %cond.end.217
  %127 = load i32, i32* %b_best_status, align 4
  %cmp220 = icmp eq i32 %127, 3
  br i1 %cmp220, label %if.then.227, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %lor.lhs.false.219
  %128 = load i32, i32* %b_best_status, align 4
  %cmp222 = icmp eq i32 %128, 7
  br i1 %cmp222, label %land.lhs.true.223, label %if.end.232

land.lhs.true.223:                                ; preds = %lor.lhs.false.221
  %129 = load i32, i32* %k, align 4
  %idxprom224 = sext i32 %129 to i64
  %arrayidx225 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_b, i32 0, i64 %idxprom224
  %130 = load i32, i32* %arrayidx225, align 4
  %cmp226 = icmp eq i32 %130, 1
  br i1 %cmp226, label %if.then.227, label %if.end.232

if.then.227:                                      ; preds = %land.lhs.true.223, %lor.lhs.false.219, %cond.end.217
  %131 = load i32, i32* %k, align 4
  %idxprom228 = sext i32 %131 to i64
  %arrayidx229 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_b, i32 0, i64 %idxprom228
  %132 = load i32, i32* %arrayidx229, align 4
  store i32 %132, i32* %b_best_status, align 4
  %133 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %133 to i64
  %arrayidx231 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_a, i32 0, i64 %idxprom230
  %134 = load i32, i32* %arrayidx231, align 4
  store i32 %134, i32* %a_worst_status, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.227, %land.lhs.true.223, %lor.lhs.false.221
  br label %if.end.251

if.else:                                          ; preds = %if.end.157
  %135 = load i32, i32* %a_status, align 4
  %cmp233 = icmp eq i32 %135, 2
  br i1 %cmp233, label %land.lhs.true.234, label %if.end.241

land.lhs.true.234:                                ; preds = %if.else
  %136 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %136 to i64
  %arrayidx236 = getelementptr inbounds [10 x i32], [10 x i32]* %best_result_a, i32 0, i64 %idxprom235
  %137 = load i32, i32* %arrayidx236, align 4
  %cmp237 = icmp ne i32 %137, 0
  br i1 %cmp237, label %if.then.238, label %if.end.241

if.then.238:                                      ; preds = %land.lhs.true.234
  %138 = load i32, i32* %k, align 4
  %idxprom239 = sext i32 %138 to i64
  %arrayidx240 = getelementptr inbounds [10 x i32], [10 x i32]* %move, i32 0, i64 %idxprom239
  %139 = load i32, i32* %arrayidx240, align 4
  %140 = load i32, i32* %apos, align 4
  call void @add_owl_defense_move(i32 %139, i32 %140, i32 5)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.238, %land.lhs.true.234, %if.else
  %141 = load i32, i32* %b_status, align 4
  %cmp242 = icmp eq i32 %141, 2
  br i1 %cmp242, label %land.lhs.true.243, label %if.end.250

land.lhs.true.243:                                ; preds = %if.end.241
  %142 = load i32, i32* %k, align 4
  %idxprom244 = sext i32 %142 to i64
  %arrayidx245 = getelementptr inbounds [10 x i32], [10 x i32]* %worst_result_b, i32 0, i64 %idxprom244
  %143 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp eq i32 %143, 0
  br i1 %cmp246, label %if.then.247, label %if.end.250

if.then.247:                                      ; preds = %land.lhs.true.243
  %144 = load i32, i32* %k, align 4
  %idxprom248 = sext i32 %144 to i64
  %arrayidx249 = getelementptr inbounds [10 x i32], [10 x i32]* %move, i32 0, i64 %idxprom248
  %145 = load i32, i32* %arrayidx249, align 4
  %146 = load i32, i32* %bpos, align 4
  call void @add_owl_attack_move(i32 %145, i32 %146, i32 5)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.247, %land.lhs.true.243, %if.end.241
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.232
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251, %if.then.156, %if.then.145, %if.then.122, %if.then.102, %if.then.66
  %147 = load i32, i32* %k, align 4
  %inc253 = add nsw i32 %147, 1
  store i32 %inc253, i32* %k, align 4
  br label %for.cond.33

for.end.254:                                      ; preds = %for.cond.33
  %148 = load i32, i32* %pass, align 4
  %cmp255 = icmp eq i32 %148, 0
  br i1 %cmp255, label %land.lhs.true.256, label %if.end.279

land.lhs.true.256:                                ; preds = %for.end.254
  %149 = load i32, i32* %semeai_found, align 4
  %tobool257 = icmp ne i32 %149, 0
  br i1 %tobool257, label %if.then.258, label %if.end.279

if.then.258:                                      ; preds = %land.lhs.true.256
  %150 = load i32, i32* %a_best_status, align 4
  %cmp261 = icmp ne i32 %150, 0
  br i1 %cmp261, label %land.lhs.true.262, label %if.else.265

land.lhs.true.262:                                ; preds = %if.then.258
  %151 = load i32, i32* %a_worst_status, align 4
  %cmp263 = icmp eq i32 %151, 0
  br i1 %cmp263, label %if.then.264, label %if.else.265

if.then.264:                                      ; preds = %land.lhs.true.262
  store i32 2, i32* %a_status259, align 4
  br label %if.end.266

if.else.265:                                      ; preds = %land.lhs.true.262, %if.then.258
  %152 = load i32, i32* %a_worst_status, align 4
  store i32 %152, i32* %a_status259, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.265, %if.then.264
  %153 = load i32, i32* %b_best_status, align 4
  %cmp267 = icmp ne i32 %153, 0
  br i1 %cmp267, label %land.lhs.true.268, label %if.else.271

land.lhs.true.268:                                ; preds = %if.end.266
  %154 = load i32, i32* %b_worst_status, align 4
  %cmp269 = icmp eq i32 %154, 0
  br i1 %cmp269, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %land.lhs.true.268
  store i32 2, i32* %b_status260, align 4
  br label %if.end.272

if.else.271:                                      ; preds = %land.lhs.true.268, %if.end.266
  %155 = load i32, i32* %b_worst_status, align 4
  store i32 %155, i32* %b_status260, align 4
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.271, %if.then.270
  %156 = load i32, i32* %a_status259, align 4
  store i32 %156, i32* %a_status259, align 4
  %157 = load i32, i32* %b_status260, align 4
  store i32 %157, i32* %b_status260, align 4
  %158 = load i32, i32* %a_status259, align 4
  %cmp273 = icmp eq i32 %158, 7
  br i1 %cmp273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.end.272
  store i32 1, i32* %a_status259, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.end.272
  %159 = load i32, i32* %b_status260, align 4
  %cmp276 = icmp eq i32 %159, 7
  br i1 %cmp276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.end.275
  store i32 1, i32* %b_status260, align 4
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.end.275
  %160 = load i32, i32* %apos, align 4
  %161 = load i32, i32* %a_status259, align 4
  %162 = load i32, i32* %a_status259, align 4
  call void @update_status(i32 %160, i32 %161, i32 %162)
  %163 = load i32, i32* %bpos, align 4
  %164 = load i32, i32* %b_status260, align 4
  %165 = load i32, i32* %b_status260, align 4
  call void @update_status(i32 %163, i32 %164, i32 %165)
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %land.lhs.true.256, %for.end.254
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %166 = load i32, i32* %pass, align 4
  %inc281 = add nsw i32 %166, 1
  store i32 %inc281, i32* %pass, align 4
  br label %for.cond.30

for.end.282:                                      ; preds = %for.cond.30
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.end.282, %if.then
  %167 = load i32, i32* %d1, align 4
  %inc284 = add nsw i32 %167, 1
  store i32 %inc284, i32* %d1, align 4
  br label %for.cond

for.end.285:                                      ; preds = %for.cond
  ret void
}

declare void @owl_analyze_semeai(i32, i32, i32*, i32*, i32*, i32) #1

declare i8* @safety_to_string(i32) #1

declare void @add_owl_defense_move(i32, i32, i32) #1

declare void @add_owl_attack_move(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @update_status(i32 %dr, i32 %new_status, i32 %new_safety) #0 {
entry:
  %dr.addr = alloca i32, align 4
  %new_status.addr = alloca i32, align 4
  %new_safety.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %dr, i32* %dr.addr, align 4
  store i32 %new_status, i32* %new_status.addr, align 4
  store i32 %new_safety, i32* %new_safety.addr, align 4
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 16
  %1 = load i32, i32* %status, align 4
  %2 = load i32, i32* %new_status.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %dr.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %status3 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 16
  %4 = load i32, i32* %status3, align 4
  %cmp4 = icmp ne i32 %4, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %new_status.addr, align 4
  %cmp5 = icmp ne i32 %5, 0
  br i1 %cmp5, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i32, i32* @debug, align 4
  %and = and i32 %6, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* %dr.addr, align 4
  %8 = load i32, i32* %dr.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom6
  %status8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx7, i32 0, i32 16
  %9 = load i32, i32* %status8, align 4
  %call = call i8* @status_to_string(i32 %9)
  %10 = load i32, i32* %new_status.addr, align 4
  %call9 = call i8* @status_to_string(i32 %10)
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i32 %7, i8* %call, i8* %call9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %pos, align 4
  %cmp11 = icmp slt i32 %11, 400
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %13 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %13 to i32
  %cmp14 = icmp eq i32 %conv, 1
  br i1 %cmp14, label %land.lhs.true.22, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %for.body
  %14 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %lor.lhs.false.16, %for.body
  %16 = load i32, i32* %dr.addr, align 4
  %17 = load i32, i32* %pos, align 4
  %call23 = call i32 @is_same_dragon(i32 %16, i32 %17)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %land.lhs.true.22
  %18 = load i32, i32* %new_status.addr, align 4
  %19 = load i32, i32* %pos, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom26
  %status28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx27, i32 0, i32 16
  store i32 %18, i32* %status28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.25, %land.lhs.true.22, %lor.lhs.false.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %lor.lhs.false, %entry
  %21 = load i32, i32* %dr.addr, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom30
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx31, i32 0, i32 1
  %22 = load i32, i32* %id, align 4
  %idxprom32 = sext i32 %22 to i64
  %23 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx33 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %23, i64 %idxprom32
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx33, i32 0, i32 6
  %24 = load i32, i32* %safety, align 4
  %25 = load i32, i32* %new_safety.addr, align 4
  %cmp34 = icmp ne i32 %24, %25
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.69

land.lhs.true.36:                                 ; preds = %if.end.29
  %26 = load i32, i32* %dr.addr, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom37
  %id39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx38, i32 0, i32 1
  %27 = load i32, i32* %id39, align 4
  %idxprom40 = sext i32 %27 to i64
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i64 %idxprom40
  %safety42 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx41, i32 0, i32 6
  %29 = load i32, i32* %safety42, align 4
  %cmp43 = icmp ne i32 %29, 2
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.36
  %30 = load i32, i32* %new_safety.addr, align 4
  %cmp46 = icmp ne i32 %30, 0
  br i1 %cmp46, label %if.then.48, label %if.end.69

if.then.48:                                       ; preds = %lor.lhs.false.45, %land.lhs.true.36
  %31 = load i32, i32* @debug, align 4
  %and49 = and i32 %31, 64
  %tobool50 = icmp ne i32 %and49, 0
  br i1 %tobool50, label %cond.false.52, label %cond.true.51

cond.true.51:                                     ; preds = %if.then.48
  br label %cond.end.62

cond.false.52:                                    ; preds = %if.then.48
  %32 = load i32, i32* %dr.addr, align 4
  %33 = load i32, i32* %dr.addr, align 4
  %idxprom53 = sext i32 %33 to i64
  %arrayidx54 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom53
  %id55 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx54, i32 0, i32 1
  %34 = load i32, i32* %id55, align 4
  %idxprom56 = sext i32 %34 to i64
  %35 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %35, i64 %idxprom56
  %safety58 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx57, i32 0, i32 6
  %36 = load i32, i32* %safety58, align 4
  %call59 = call i8* @safety_to_string(i32 %36)
  %37 = load i32, i32* %new_safety.addr, align 4
  %call60 = call i8* @safety_to_string(i32 %37)
  %call61 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 %32, i8* %call59, i8* %call60)
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.52, %cond.true.51
  %38 = load i32, i32* %new_safety.addr, align 4
  %39 = load i32, i32* %dr.addr, align 4
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom63
  %id65 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx64, i32 0, i32 1
  %40 = load i32, i32* %id65, align 4
  %idxprom66 = sext i32 %40 to i64
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i64 %idxprom66
  %safety68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx67, i32 0, i32 6
  store i32 %38, i32* %safety68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %cond.end.62, %lor.lhs.false.45, %if.end.29
  ret void
}

declare i8* @status_to_string(i32) #1

declare i32 @is_same_dragon(i32, i32) #1

declare i32 @owl_does_attack(i32, i32, i32*) #1

declare i32 @owl_does_defend(i32, i32, i32*) #1

declare i32 @chainlinks(i32, i32*) #1

declare i32 @owl_substantial(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @liberty_of_dragon(i32 %pos, i32 %origin) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %origin.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %origin, i32* %origin.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %3, 20
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %4 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %4 to i32
  %cmp8 = icmp ne i32 %conv7, 3
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load i32, i32* %pos.addr, align 4
  %add10 = add nsw i32 %5, 20
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %origin13 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 2
  %6 = load i32, i32* %origin13, align 4
  %7 = load i32, i32* %origin.addr, align 4
  %cmp14 = icmp eq i32 %6, %7
  br i1 %cmp14, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.4
  %8 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %9 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %9 to i32
  %cmp19 = icmp ne i32 %conv18, 3
  br i1 %cmp19, label %land.lhs.true.21, label %lor.lhs.false.28

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %pos.addr, align 4
  %sub22 = sub nsw i32 %10, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom23
  %origin25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx24, i32 0, i32 2
  %11 = load i32, i32* %origin25, align 4
  %12 = load i32, i32* %origin.addr, align 4
  %cmp26 = icmp eq i32 %11, %12
  br i1 %cmp26, label %if.then.56, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %land.lhs.true.21, %lor.lhs.false
  %13 = load i32, i32* %pos.addr, align 4
  %sub29 = sub nsw i32 %13, 20
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %14 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %14 to i32
  %cmp33 = icmp ne i32 %conv32, 3
  br i1 %cmp33, label %land.lhs.true.35, label %lor.lhs.false.42

land.lhs.true.35:                                 ; preds = %lor.lhs.false.28
  %15 = load i32, i32* %pos.addr, align 4
  %sub36 = sub nsw i32 %15, 20
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom37
  %origin39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx38, i32 0, i32 2
  %16 = load i32, i32* %origin39, align 4
  %17 = load i32, i32* %origin.addr, align 4
  %cmp40 = icmp eq i32 %16, %17
  br i1 %cmp40, label %if.then.56, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.35, %lor.lhs.false.28
  %18 = load i32, i32* %pos.addr, align 4
  %add43 = add nsw i32 %18, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom44
  %19 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %19 to i32
  %cmp47 = icmp ne i32 %conv46, 3
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.57

land.lhs.true.49:                                 ; preds = %lor.lhs.false.42
  %20 = load i32, i32* %pos.addr, align 4
  %add50 = add nsw i32 %20, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom51
  %origin53 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx52, i32 0, i32 2
  %21 = load i32, i32* %origin53, align 4
  %22 = load i32, i32* %origin.addr, align 4
  %cmp54 = icmp eq i32 %21, %22
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.49, %land.lhs.true.35, %land.lhs.true.21, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %land.lhs.true.49, %lor.lhs.false.42
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.57, %if.then.56, %if.then.3, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @liberty_of_string(i32, i32) #1

declare i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: nounwind uwtable
define internal void @add_appropriate_semeai_moves(i32 %move, i32 %my_dragon, i32 %your_dragon, i32 %my_status, i32 %your_status, i32 %margin_of_safety) #0 {
entry:
  %move.addr = alloca i32, align 4
  %my_dragon.addr = alloca i32, align 4
  %your_dragon.addr = alloca i32, align 4
  %my_status.addr = alloca i32, align 4
  %your_status.addr = alloca i32, align 4
  %margin_of_safety.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %my_dragon, i32* %my_dragon.addr, align 4
  store i32 %your_dragon, i32* %your_dragon.addr, align 4
  store i32 %my_status, i32* %my_status.addr, align 4
  store i32 %your_status, i32* %your_status.addr, align 4
  store i32 %margin_of_safety, i32* %margin_of_safety.addr, align 4
  %0 = load i32, i32* %my_status.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %move.addr, align 4
  %2 = load i32, i32* %my_dragon.addr, align 4
  call void @add_semeai_move(i32 %1, i32 %2)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %margin_of_safety.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %move.addr, align 4
  %5 = load i32, i32* %my_dragon.addr, align 4
  call void @add_semeai_threat(i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %6 = load i32, i32* %your_status.addr, align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* %your_dragon.addr, align 4
  call void @add_semeai_move(i32 %7, i32 %8)
  br label %if.end.10

if.else.6:                                        ; preds = %if.end.3
  %9 = load i32, i32* %margin_of_safety.addr, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.else.6
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %your_dragon.addr, align 4
  call void @add_semeai_threat(i32 %10, i32 %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else.6
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.5
  ret void
}

declare i32 @eye_move_urgency(%struct.eyevalue*) #1

declare i32 @safe_move(i32, i32) #1

declare void @add_semeai_move(i32, i32) #1

declare void @add_semeai_threat(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
