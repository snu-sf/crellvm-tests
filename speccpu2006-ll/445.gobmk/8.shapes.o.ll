; ModuleID = 'engine/shapes.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@verbose = external global i32, align 4
@.str = private unnamed_addr constant [54 x i8] c"\0APattern matcher is looking for move reasons for %s!\0A\00", align 1
@pat_db = external global %struct.pattern_db, align 8
@josekidb = external global i32, align 4
@joseki_db = external global %struct.pattern_db, align 8
@disable_fuseki = external global i32, align 4
@doing_scoring = external global i32, align 4
@fusekipat_db = external global %struct.pattern_db, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"\0AEndgame pattern matcher is looking for move reasons for %s!\0A\00", align 1
@endpat_db = external global %struct.pattern_db, align 8
@transformation = external global [1369 x [8 x i32]], align 16
@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@experimental_connections = external global i32, align 4
@allpats = external global i32, align 4
@debug = external global i32, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"  asking helper to consider '%s'+%d at %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"helper likes pattern '%s' at %1m\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"  helper does not like pattern '%s' at %1m\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"pattern '%s'+%d matched at %1m\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"...cuts strings %1m, %1m\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"...connects dragons %1m, %1m\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"...connects strings %1m, %1m\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"...strategical defense (weak connection) of %1m\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"...shape value 1\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"engine/shapes.c\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"!(class & 0x0800)\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"...expands territory\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"...expands moyo\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"...is an invasion\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"...strategical attack on %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"...strategical defense of %1m\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"...joseki standard move\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"... minimum move value %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"...less urgent joseki move\0A\00", align 1
@board_size = external global i32, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"...move value %f (shape %f)\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"...minimum move value %f (shape %f)\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"...minor joseki move\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"...joseki urgent move\0A\00", align 1
@urgent = external global i32, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"...shape value 15\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"...(min) move value %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"...joseki trick move\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"...antisuji\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"...worthwhile threat move\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"...max move value %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"...(min) territorial value %f\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"...max territorial value %f\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"...shape value %f\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"...followup value %f\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"...reverse followup value %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @shapes(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %call = call i8* @color_to_string(i32 %1)
  %call1 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0), i8* %call)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %2 = load i32, i32* %color.addr, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %2, %struct.pattern_db* @pat_db, i8* null, i8* null)
  %3 = load i32, i32* @josekidb, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %4 = load i32, i32* %color.addr, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %4, %struct.pattern_db* @joseki_db, i8* null, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %5 = load i32, i32* @disable_fuseki, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end.6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* @doing_scoring, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %color.addr, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %7, %struct.pattern_db* @fusekipat_db, i8* null, i8* null)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  ret void
}

declare i32 @gprintf(i8*, ...) #1

declare i8* @color_to_string(i32) #1

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @shapes_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %move = alloca i32, align 4
  %my_dragons = alloca [5 x i32], align 16
  %my_ndragons = alloca i32, align 4
  %your_dragons = alloca [5 x i32], align 16
  %your_ndragons = alloca i32, align 4
  %my_strings = alloca [5 x i32], align 16
  %my_nstrings = alloca i32, align 4
  %your_strings = alloca [5 x i32], align 16
  %your_nstrings = alloca i32, align 4
  %class = alloca i32, align 4
  %pos = alloca i32, align 4
  %origin = alloca i32, align 4
  %accepted = alloca i32, align 4
  %min_value = alloca float, align 4
  %min_value632 = alloca float, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %my_ndragons, align 4
  store i32 0, i32* %your_ndragons, align 4
  store i32 0, i32* %my_nstrings, align 4
  store i32 0, i32* %your_nstrings, align 4
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %class1 = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 14
  %2 = load i32, i32* %class1, align 4
  store i32 %2, i32* %class, align 4
  %3 = load i32, i32* @doing_scoring, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %class, align 4
  %and = and i32 %4, 8388608
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.837

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i32 0, i32 11
  %8 = load i32, i32* %move_offset, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* %move, align 4
  %11 = load i32, i32* %class, align 4
  %and5 = and i32 %11, 4113281
  %cmp = icmp ne i32 %and5, 0
  br i1 %cmp, label %if.then.6, label %if.end.197

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.194, %if.then.6
  %12 = load i32, i32* %k, align 4
  %13 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 1
  %14 = load i32, i32* %patlen, align 4
  %cmp7 = icmp slt i32 %12, %14
  br i1 %cmp7, label %for.body, label %for.end.196

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %16, i32 0, i32 0
  %17 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx9 = getelementptr inbounds %struct.patval, %struct.patval* %17, i64 %idxprom8
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx9, i32 0, i32 1
  %18 = load i32, i32* %att, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %for.inc.194

if.end.12:                                        ; preds = %for.body
  %19 = load i32, i32* %ll.addr, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn15 = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 0
  %22 = load %struct.patval*, %struct.patval** %patn15, align 8
  %arrayidx16 = getelementptr inbounds %struct.patval, %struct.patval* %22, i64 %idxprom14
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx16, i32 0, i32 0
  %23 = load i32, i32* %offset, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx18, i32 0, i64 %idxprom13
  %24 = load i32, i32* %arrayidx19, align 4
  %25 = load i32, i32* %anchor.addr, align 4
  %add20 = add nsw i32 %24, %25
  store i32 %add20, i32* %pos, align 4
  %26 = load i32, i32* %class, align 4
  %and21 = and i32 %26, 1
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.37

land.lhs.true.23:                                 ; preds = %if.end.12
  %27 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %28 = load i8, i8* %arrayidx25, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %color.addr, align 4
  %cmp26 = icmp eq i32 %conv, %29
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.37

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %30 = load i32, i32* %pos, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom29
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx30, i32 0, i32 15
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %31 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp ne i32 %31, 0
  br i1 %cmp32, label %land.lhs.true.34, label %if.end.37

land.lhs.true.34:                                 ; preds = %land.lhs.true.28
  %32 = load i32, i32* %move, align 4
  %33 = load i32, i32* %pos, align 4
  %call = call i32 @does_defend(i32 %32, i32 %33)
  %tobool35 = icmp ne i32 %call, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.34
  br label %if.end.837

if.end.37:                                        ; preds = %land.lhs.true.34, %land.lhs.true.28, %land.lhs.true.23, %if.end.12
  %34 = load i32, i32* %pos, align 4
  %idxprom38 = sext i32 %34 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom38
  %origin40 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx39, i32 0, i32 2
  %35 = load i32, i32* %origin40, align 4
  store i32 %35, i32* %origin, align 4
  %36 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %37 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %37 to i32
  %38 = load i32, i32* %color.addr, align 4
  %cmp44 = icmp eq i32 %conv43, %38
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.76

land.lhs.true.46:                                 ; preds = %if.end.37
  %39 = load i32, i32* %my_ndragons, align 4
  %cmp47 = icmp slt i32 %39, 5
  br i1 %cmp47, label %if.then.49, label %if.end.76

if.then.49:                                       ; preds = %land.lhs.true.46
  store i32 0, i32* %l, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %if.then.49
  %40 = load i32, i32* %l, align 4
  %41 = load i32, i32* %my_ndragons, align 4
  %cmp51 = icmp slt i32 %40, %41
  br i1 %cmp51, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.50
  %42 = load i32, i32* %l, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom54
  %43 = load i32, i32* %arrayidx55, align 4
  %44 = load i32, i32* %origin, align 4
  %cmp56 = icmp eq i32 %43, %44
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body.53
  br label %for.end

if.end.59:                                        ; preds = %for.body.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %45 = load i32, i32* %l, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.50

for.end:                                          ; preds = %if.then.58, %for.cond.50
  %46 = load i32, i32* %l, align 4
  %47 = load i32, i32* %my_ndragons, align 4
  %cmp60 = icmp eq i32 %46, %47
  br i1 %cmp60, label %if.then.62, label %if.end.75

if.then.62:                                       ; preds = %for.end
  %48 = load i32, i32* %pos, align 4
  %idxprom63 = sext i32 %48 to i64
  %arrayidx64 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom63
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx64, i32 0, i32 16
  %arrayidx65 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %49 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %49, 0
  br i1 %cmp66, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.62
  %50 = load i32, i32* %move, align 4
  %51 = load i32, i32* %pos, align 4
  %call68 = call i32 @does_defend(i32 %50, i32 %51)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %lor.lhs.false, %if.then.62
  %52 = load i32, i32* %origin, align 4
  %53 = load i32, i32* %l, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom71
  store i32 %52, i32* %arrayidx72, align 4
  %54 = load i32, i32* %my_ndragons, align 4
  %inc73 = add nsw i32 %54, 1
  store i32 %inc73, i32* %my_ndragons, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %lor.lhs.false
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %for.end
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.46, %if.end.37
  %55 = load i32, i32* %pos, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom77
  %56 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %56 to i32
  %57 = load i32, i32* %other, align 4
  %cmp80 = icmp eq i32 %conv79, %57
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.106

land.lhs.true.82:                                 ; preds = %if.end.76
  %58 = load i32, i32* %your_ndragons, align 4
  %cmp83 = icmp slt i32 %58, 5
  br i1 %cmp83, label %if.then.85, label %if.end.106

if.then.85:                                       ; preds = %land.lhs.true.82
  store i32 0, i32* %l, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %if.then.85
  %59 = load i32, i32* %l, align 4
  %60 = load i32, i32* %your_ndragons, align 4
  %cmp87 = icmp slt i32 %59, %60
  br i1 %cmp87, label %for.body.89, label %for.end.98

for.body.89:                                      ; preds = %for.cond.86
  %61 = load i32, i32* %l, align 4
  %idxprom90 = sext i32 %61 to i64
  %arrayidx91 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom90
  %62 = load i32, i32* %arrayidx91, align 4
  %63 = load i32, i32* %origin, align 4
  %cmp92 = icmp eq i32 %62, %63
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.89
  br label %for.end.98

if.end.95:                                        ; preds = %for.body.89
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %64 = load i32, i32* %l, align 4
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, i32* %l, align 4
  br label %for.cond.86

for.end.98:                                       ; preds = %if.then.94, %for.cond.86
  %65 = load i32, i32* %l, align 4
  %66 = load i32, i32* %your_ndragons, align 4
  %cmp99 = icmp eq i32 %65, %66
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %for.end.98
  %67 = load i32, i32* %origin, align 4
  %68 = load i32, i32* %l, align 4
  %idxprom102 = sext i32 %68 to i64
  %arrayidx103 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom102
  store i32 %67, i32* %arrayidx103, align 4
  %69 = load i32, i32* %your_ndragons, align 4
  %inc104 = add nsw i32 %69, 1
  store i32 %inc104, i32* %your_ndragons, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %for.end.98
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %land.lhs.true.82, %if.end.76
  %70 = load i32, i32* %k, align 4
  %idxprom107 = sext i32 %70 to i64
  %71 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn108 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 0
  %72 = load %struct.patval*, %struct.patval** %patn108, align 8
  %arrayidx109 = getelementptr inbounds %struct.patval, %struct.patval* %72, i64 %idxprom107
  %att110 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx109, i32 0, i32 1
  %73 = load i32, i32* %att110, align 4
  %cmp111 = icmp eq i32 %73, 2
  br i1 %cmp111, label %if.then.120, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.106
  %74 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %74 to i64
  %75 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn115 = getelementptr inbounds %struct.pattern, %struct.pattern* %75, i32 0, i32 0
  %76 = load %struct.patval*, %struct.patval** %patn115, align 8
  %arrayidx116 = getelementptr inbounds %struct.patval, %struct.patval* %76, i64 %idxprom114
  %att117 = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx116, i32 0, i32 1
  %77 = load i32, i32* %att117, align 4
  %cmp118 = icmp eq i32 %77, 1
  br i1 %cmp118, label %if.then.120, label %if.end.193

if.then.120:                                      ; preds = %lor.lhs.false.113, %if.end.106
  %78 = load i32, i32* %pos, align 4
  %call121 = call i32 @find_origin(i32 %78)
  store i32 %call121, i32* %origin, align 4
  %79 = load i32, i32* %pos, align 4
  %idxprom122 = sext i32 %79 to i64
  %arrayidx123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom122
  %80 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %80 to i32
  %81 = load i32, i32* %color.addr, align 4
  %cmp125 = icmp eq i32 %conv124, %81
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.162

land.lhs.true.127:                                ; preds = %if.then.120
  %82 = load i32, i32* %my_nstrings, align 4
  %cmp128 = icmp slt i32 %82, 5
  br i1 %cmp128, label %if.then.130, label %if.end.162

if.then.130:                                      ; preds = %land.lhs.true.127
  store i32 0, i32* %l, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.141, %if.then.130
  %83 = load i32, i32* %l, align 4
  %84 = load i32, i32* %my_nstrings, align 4
  %cmp132 = icmp slt i32 %83, %84
  br i1 %cmp132, label %for.body.134, label %for.end.143

for.body.134:                                     ; preds = %for.cond.131
  %85 = load i32, i32* %l, align 4
  %idxprom135 = sext i32 %85 to i64
  %arrayidx136 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom135
  %86 = load i32, i32* %arrayidx136, align 4
  %87 = load i32, i32* %origin, align 4
  %cmp137 = icmp eq i32 %86, %87
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.body.134
  br label %for.end.143

if.end.140:                                       ; preds = %for.body.134
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %88 = load i32, i32* %l, align 4
  %inc142 = add nsw i32 %88, 1
  store i32 %inc142, i32* %l, align 4
  br label %for.cond.131

for.end.143:                                      ; preds = %if.then.139, %for.cond.131
  %89 = load i32, i32* %l, align 4
  %90 = load i32, i32* %my_nstrings, align 4
  %cmp144 = icmp eq i32 %89, %90
  br i1 %cmp144, label %if.then.146, label %if.end.161

if.then.146:                                      ; preds = %for.end.143
  %91 = load i32, i32* %pos, align 4
  %idxprom147 = sext i32 %91 to i64
  %arrayidx148 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom147
  %attack_codes149 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx148, i32 0, i32 16
  %arrayidx150 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes149, i32 0, i64 0
  %92 = load i32, i32* %arrayidx150, align 4
  %cmp151 = icmp eq i32 %92, 0
  br i1 %cmp151, label %if.then.156, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %if.then.146
  %93 = load i32, i32* %move, align 4
  %94 = load i32, i32* %pos, align 4
  %call154 = call i32 @does_defend(i32 %93, i32 %94)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.160

if.then.156:                                      ; preds = %lor.lhs.false.153, %if.then.146
  %95 = load i32, i32* %origin, align 4
  %96 = load i32, i32* %l, align 4
  %idxprom157 = sext i32 %96 to i64
  %arrayidx158 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom157
  store i32 %95, i32* %arrayidx158, align 4
  %97 = load i32, i32* %my_nstrings, align 4
  %inc159 = add nsw i32 %97, 1
  store i32 %inc159, i32* %my_nstrings, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.156, %lor.lhs.false.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %for.end.143
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.127, %if.then.120
  %98 = load i32, i32* %pos, align 4
  %idxprom163 = sext i32 %98 to i64
  %arrayidx164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom163
  %99 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %99 to i32
  %100 = load i32, i32* %other, align 4
  %cmp166 = icmp eq i32 %conv165, %100
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.192

land.lhs.true.168:                                ; preds = %if.end.162
  %101 = load i32, i32* %your_nstrings, align 4
  %cmp169 = icmp slt i32 %101, 5
  br i1 %cmp169, label %if.then.171, label %if.end.192

if.then.171:                                      ; preds = %land.lhs.true.168
  store i32 0, i32* %l, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.182, %if.then.171
  %102 = load i32, i32* %l, align 4
  %103 = load i32, i32* %your_nstrings, align 4
  %cmp173 = icmp slt i32 %102, %103
  br i1 %cmp173, label %for.body.175, label %for.end.184

for.body.175:                                     ; preds = %for.cond.172
  %104 = load i32, i32* %l, align 4
  %idxprom176 = sext i32 %104 to i64
  %arrayidx177 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom176
  %105 = load i32, i32* %arrayidx177, align 4
  %106 = load i32, i32* %origin, align 4
  %cmp178 = icmp eq i32 %105, %106
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.175
  br label %for.end.184

if.end.181:                                       ; preds = %for.body.175
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %107 = load i32, i32* %l, align 4
  %inc183 = add nsw i32 %107, 1
  store i32 %inc183, i32* %l, align 4
  br label %for.cond.172

for.end.184:                                      ; preds = %if.then.180, %for.cond.172
  %108 = load i32, i32* %l, align 4
  %109 = load i32, i32* %your_nstrings, align 4
  %cmp185 = icmp eq i32 %108, %109
  br i1 %cmp185, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %for.end.184
  %110 = load i32, i32* %origin, align 4
  %111 = load i32, i32* %l, align 4
  %idxprom188 = sext i32 %111 to i64
  %arrayidx189 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom188
  store i32 %110, i32* %arrayidx189, align 4
  %112 = load i32, i32* %your_nstrings, align 4
  %inc190 = add nsw i32 %112, 1
  store i32 %inc190, i32* %your_nstrings, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.187, %for.end.184
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %land.lhs.true.168, %if.end.162
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %lor.lhs.false.113
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193, %if.then.11
  %113 = load i32, i32* %k, align 4
  %inc195 = add nsw i32 %113, 1
  store i32 %inc195, i32* %k, align 4
  br label %for.cond

for.end.196:                                      ; preds = %for.cond
  br label %if.end.197

if.end.197:                                       ; preds = %for.end.196, %if.end
  %114 = load i32, i32* %my_ndragons, align 4
  %cmp198 = icmp slt i32 %114, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.204

land.lhs.true.200:                                ; preds = %if.end.197
  %115 = load i32, i32* @experimental_connections, align 4
  %tobool201 = icmp ne i32 %115, 0
  br i1 %tobool201, label %if.end.204, label %if.then.202

if.then.202:                                      ; preds = %land.lhs.true.200
  %116 = load i32, i32* %class, align 4
  %and203 = and i32 %116, -129
  store i32 %and203, i32* %class, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %land.lhs.true.200, %if.end.197
  %117 = load i32, i32* %my_nstrings, align 4
  %cmp205 = icmp slt i32 %117, 2
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.211

land.lhs.true.207:                                ; preds = %if.end.204
  %118 = load i32, i32* @experimental_connections, align 4
  %tobool208 = icmp ne i32 %118, 0
  br i1 %tobool208, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %land.lhs.true.207
  %119 = load i32, i32* %class, align 4
  %and210 = and i32 %119, -129
  store i32 %and210, i32* %class, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %land.lhs.true.207, %if.end.204
  %120 = load i32, i32* %your_ndragons, align 4
  %cmp212 = icmp slt i32 %120, 2
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.218

land.lhs.true.214:                                ; preds = %if.end.211
  %121 = load i32, i32* @experimental_connections, align 4
  %tobool215 = icmp ne i32 %121, 0
  br i1 %tobool215, label %if.end.218, label %if.then.216

if.then.216:                                      ; preds = %land.lhs.true.214
  %122 = load i32, i32* %class, align 4
  %and217 = and i32 %122, -513
  store i32 %and217, i32* %class, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %land.lhs.true.214, %if.end.211
  %123 = load i32, i32* %your_nstrings, align 4
  %cmp219 = icmp slt i32 %123, 2
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.225

land.lhs.true.221:                                ; preds = %if.end.218
  %124 = load i32, i32* @experimental_connections, align 4
  %tobool222 = icmp ne i32 %124, 0
  br i1 %tobool222, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %land.lhs.true.221
  %125 = load i32, i32* %class, align 4
  %and224 = and i32 %125, -513
  store i32 %and224, i32* %class, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %land.lhs.true.221, %if.end.218
  %126 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper = getelementptr inbounds %struct.pattern, %struct.pattern* %126, i32 0, i32 23
  %127 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper, align 8
  %tobool226 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %127, null
  br i1 %tobool226, label %if.end.236, label %land.lhs.true.227

land.lhs.true.227:                                ; preds = %if.end.225
  %128 = load i32, i32* @allpats, align 4
  %tobool228 = icmp ne i32 %128, 0
  br i1 %tobool228, label %if.end.236, label %land.lhs.true.229

land.lhs.true.229:                                ; preds = %land.lhs.true.227
  %129 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %129, i32 0, i32 22
  %130 = load i32, i32* %autohelper_flag, align 4
  %and230 = and i32 %130, 2
  %tobool231 = icmp ne i32 %and230, 0
  br i1 %tobool231, label %if.end.236, label %land.lhs.true.232

land.lhs.true.232:                                ; preds = %land.lhs.true.229
  %131 = load i32, i32* %class, align 4
  %and233 = and i32 %131, 2147482496
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %if.end.236, label %if.then.235

if.then.235:                                      ; preds = %land.lhs.true.232
  br label %if.end.837

if.end.236:                                       ; preds = %land.lhs.true.232, %land.lhs.true.229, %land.lhs.true.227, %if.end.225
  %132 = load i32, i32* %class, align 4
  %and237 = and i32 %132, 16
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.else, label %if.then.239

if.then.239:                                      ; preds = %if.end.236
  %133 = load i32, i32* %move, align 4
  %134 = load i32, i32* %color.addr, align 4
  %call240 = call i32 @safe_move(i32 %133, i32 %134)
  %cmp241 = icmp ne i32 %call240, 5
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.239
  br label %if.end.837

if.end.244:                                       ; preds = %if.then.239
  br label %if.end.252

if.else:                                          ; preds = %if.end.236
  %135 = load i32, i32* %move, align 4
  %136 = load i32, i32* %color.addr, align 4
  %call245 = call i32 @is_ko(i32 %135, i32 %136, i32* null)
  %tobool246 = icmp ne i32 %call245, 0
  br i1 %tobool246, label %if.end.251, label %land.lhs.true.247

land.lhs.true.247:                                ; preds = %if.else
  %137 = load i32, i32* %move, align 4
  %138 = load i32, i32* %color.addr, align 4
  %call248 = call i32 @is_legal(i32 %137, i32 %138)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.end.251, label %if.then.250

if.then.250:                                      ; preds = %land.lhs.true.247
  br label %if.end.837

if.end.251:                                       ; preds = %land.lhs.true.247, %if.else
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.244
  %139 = load i32, i32* %class, align 4
  %and253 = and i32 %139, 32
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.261

if.then.255:                                      ; preds = %if.end.252
  %140 = load i32, i32* %move, align 4
  %141 = load i32, i32* %other, align 4
  %call256 = call i32 @safe_move(i32 %140, i32 %141)
  %cmp257 = icmp eq i32 %call256, 0
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.then.255
  br label %if.end.837

if.end.260:                                       ; preds = %if.then.255
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.end.252
  %142 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag262 = getelementptr inbounds %struct.pattern, %struct.pattern* %142, i32 0, i32 22
  %143 = load i32, i32* %autohelper_flag262, align 4
  %and263 = and i32 %143, 1
  %tobool264 = icmp ne i32 %and263, 0
  br i1 %tobool264, label %if.then.265, label %if.end.270

if.then.265:                                      ; preds = %if.end.261
  %144 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %144, i32 0, i32 24
  %145 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %146 = load i32, i32* %ll.addr, align 4
  %147 = load i32, i32* %move, align 4
  %148 = load i32, i32* %color.addr, align 4
  %call266 = call i32 %145(i32 %146, i32 %147, i32 %148, i32 0)
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.end.269, label %if.then.268

if.then.268:                                      ; preds = %if.then.265
  br label %if.end.837

if.end.269:                                       ; preds = %if.then.265
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %if.end.261
  %149 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper271 = getelementptr inbounds %struct.pattern, %struct.pattern* %149, i32 0, i32 23
  %150 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper271, align 8
  %tobool272 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %150, null
  br i1 %tobool272, label %if.then.273, label %if.end.297

if.then.273:                                      ; preds = %if.end.270
  %151 = load i32, i32* @debug, align 4
  %and274 = and i32 %151, 256
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.273
  br label %cond.end

cond.false:                                       ; preds = %if.then.273
  %152 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.pattern, %struct.pattern* %152, i32 0, i32 3
  %153 = load i8*, i8** %name, align 8
  %154 = load i32, i32* %ll.addr, align 4
  %155 = load i32, i32* %move, align 4
  %call276 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* %153, i32 %154, i32 %155)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %156 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %helper277 = getelementptr inbounds %struct.pattern, %struct.pattern* %156, i32 0, i32 23
  %157 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %helper277, align 8
  %158 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %159 = load i32, i32* %ll.addr, align 4
  %160 = load i32, i32* %move, align 4
  %161 = load i32, i32* %color.addr, align 4
  %call278 = call i32 %157(%struct.pattern* %158, i32 %159, i32 %160, i32 %161)
  store i32 %call278, i32* %accepted, align 4
  %162 = load i32, i32* %accepted, align 4
  %tobool279 = icmp ne i32 %162, 0
  br i1 %tobool279, label %if.then.280, label %if.else.288

if.then.280:                                      ; preds = %cond.end
  %163 = load i32, i32* @debug, align 4
  %and281 = and i32 %163, 256
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %cond.false.284, label %cond.true.283

cond.true.283:                                    ; preds = %if.then.280
  br label %cond.end.287

cond.false.284:                                   ; preds = %if.then.280
  %164 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name285 = getelementptr inbounds %struct.pattern, %struct.pattern* %164, i32 0, i32 3
  %165 = load i8*, i8** %name285, align 8
  %166 = load i32, i32* %move, align 4
  %call286 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* %165, i32 %166)
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.false.284, %cond.true.283
  br label %if.end.296

if.else.288:                                      ; preds = %cond.end
  %167 = load i32, i32* @debug, align 4
  %and289 = and i32 %167, 256
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %cond.false.292, label %cond.true.291

cond.true.291:                                    ; preds = %if.else.288
  br label %cond.end.295

cond.false.292:                                   ; preds = %if.else.288
  %168 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name293 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 3
  %169 = load i8*, i8** %name293, align 8
  %170 = load i32, i32* %move, align 4
  %call294 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %169, i32 %170)
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.292, %cond.true.291
  br label %if.end.837

if.end.296:                                       ; preds = %cond.end.287
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.270
  %171 = load i32, i32* @allpats, align 4
  %tobool298 = icmp ne i32 %171, 0
  br i1 %tobool298, label %if.then.301, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %if.end.297
  %172 = load i32, i32* @verbose, align 4
  %tobool300 = icmp ne i32 %172, 0
  br i1 %tobool300, label %if.then.301, label %if.end.308

if.then.301:                                      ; preds = %lor.lhs.false.299, %if.end.297
  %173 = load i32, i32* @verbose, align 4
  %tobool302 = icmp ne i32 %173, 0
  br i1 %tobool302, label %cond.false.304, label %cond.true.303

cond.true.303:                                    ; preds = %if.then.301
  br label %cond.end.307

cond.false.304:                                   ; preds = %if.then.301
  %174 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %name305 = getelementptr inbounds %struct.pattern, %struct.pattern* %174, i32 0, i32 3
  %175 = load i8*, i8** %name305, align 8
  %176 = load i32, i32* %ll.addr, align 4
  %177 = load i32, i32* %move, align 4
  %call306 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* %175, i32 %176, i32 %177)
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.304, %cond.true.303
  br label %if.end.308

if.end.308:                                       ; preds = %cond.end.307, %lor.lhs.false.299
  %178 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag309 = getelementptr inbounds %struct.pattern, %struct.pattern* %178, i32 0, i32 22
  %179 = load i32, i32* %autohelper_flag309, align 4
  %and310 = and i32 %179, 2
  %tobool311 = icmp ne i32 %and310, 0
  br i1 %tobool311, label %if.then.312, label %if.end.315

if.then.312:                                      ; preds = %if.end.308
  %180 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper313 = getelementptr inbounds %struct.pattern, %struct.pattern* %180, i32 0, i32 24
  %181 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper313, align 8
  %182 = load i32, i32* %ll.addr, align 4
  %183 = load i32, i32* %move, align 4
  %184 = load i32, i32* %color.addr, align 4
  %call314 = call i32 %181(i32 %182, i32 %183, i32 %184, i32 1)
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.312, %if.end.308
  %185 = load i32, i32* %class, align 4
  %and316 = and i32 %185, 512
  %tobool317 = icmp ne i32 %and316, 0
  br i1 %tobool317, label %if.then.318, label %if.end.362

if.then.318:                                      ; preds = %if.end.315
  store i32 0, i32* %k, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.359, %if.then.318
  %186 = load i32, i32* %k, align 4
  %187 = load i32, i32* %your_nstrings, align 4
  %cmp320 = icmp slt i32 %186, %187
  br i1 %cmp320, label %for.body.322, label %for.end.361

for.body.322:                                     ; preds = %for.cond.319
  %188 = load i32, i32* %k, align 4
  %add323 = add nsw i32 %188, 1
  store i32 %add323, i32* %l, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.356, %for.body.322
  %189 = load i32, i32* %l, align 4
  %190 = load i32, i32* %your_nstrings, align 4
  %cmp325 = icmp slt i32 %189, %190
  br i1 %cmp325, label %for.body.327, label %for.end.358

for.body.327:                                     ; preds = %for.cond.324
  %191 = load i32, i32* %k, align 4
  %idxprom328 = sext i32 %191 to i64
  %arrayidx329 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom328
  %192 = load i32, i32* %arrayidx329, align 4
  %193 = load i32, i32* %l, align 4
  %idxprom330 = sext i32 %193 to i64
  %arrayidx331 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom330
  %194 = load i32, i32* %arrayidx331, align 4
  %call332 = call i32 @string_connect(i32 %192, i32 %194, i32* null)
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %land.lhs.true.334, label %if.end.355

land.lhs.true.334:                                ; preds = %for.body.327
  %195 = load i32, i32* %color.addr, align 4
  %196 = load i32, i32* %move, align 4
  %197 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %197 to i64
  %arrayidx336 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom335
  %198 = load i32, i32* %arrayidx336, align 4
  %199 = load i32, i32* %l, align 4
  %idxprom337 = sext i32 %199 to i64
  %arrayidx338 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom337
  %200 = load i32, i32* %arrayidx338, align 4
  %call339 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %195, i32 1, i32 1, i32 %196, i32 %198, i32 %200)
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.end.355, label %if.then.341

if.then.341:                                      ; preds = %land.lhs.true.334
  %201 = load i32, i32* %move, align 4
  %202 = load i32, i32* %k, align 4
  %idxprom342 = sext i32 %202 to i64
  %arrayidx343 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom342
  %203 = load i32, i32* %arrayidx343, align 4
  %204 = load i32, i32* %l, align 4
  %idxprom344 = sext i32 %204 to i64
  %arrayidx345 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom344
  %205 = load i32, i32* %arrayidx345, align 4
  call void @add_cut_move(i32 %201, i32 %203, i32 %205)
  %206 = load i32, i32* @verbose, align 4
  %tobool346 = icmp ne i32 %206, 0
  br i1 %tobool346, label %cond.false.348, label %cond.true.347

cond.true.347:                                    ; preds = %if.then.341
  br label %cond.end.354

cond.false.348:                                   ; preds = %if.then.341
  %207 = load i32, i32* %k, align 4
  %idxprom349 = sext i32 %207 to i64
  %arrayidx350 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom349
  %208 = load i32, i32* %arrayidx350, align 4
  %209 = load i32, i32* %l, align 4
  %idxprom351 = sext i32 %209 to i64
  %arrayidx352 = getelementptr inbounds [5 x i32], [5 x i32]* %your_strings, i32 0, i64 %idxprom351
  %210 = load i32, i32* %arrayidx352, align 4
  %call353 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), i32 %208, i32 %210)
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.348, %cond.true.347
  br label %if.end.355

if.end.355:                                       ; preds = %cond.end.354, %land.lhs.true.334, %for.body.327
  br label %for.inc.356

for.inc.356:                                      ; preds = %if.end.355
  %211 = load i32, i32* %l, align 4
  %inc357 = add nsw i32 %211, 1
  store i32 %inc357, i32* %l, align 4
  br label %for.cond.324

for.end.358:                                      ; preds = %for.cond.324
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.end.358
  %212 = load i32, i32* %k, align 4
  %inc360 = add nsw i32 %212, 1
  store i32 %inc360, i32* %k, align 4
  br label %for.cond.319

for.end.361:                                      ; preds = %for.cond.319
  br label %if.end.362

if.end.362:                                       ; preds = %for.end.361, %if.end.315
  %213 = load i32, i32* %class, align 4
  %and363 = and i32 %213, 128
  %tobool364 = icmp ne i32 %and363, 0
  br i1 %tobool364, label %land.lhs.true.365, label %if.end.396

land.lhs.true.365:                                ; preds = %if.end.362
  %214 = load i32, i32* @experimental_connections, align 4
  %tobool366 = icmp ne i32 %214, 0
  br i1 %tobool366, label %if.end.396, label %if.then.367

if.then.367:                                      ; preds = %land.lhs.true.365
  store i32 0, i32* %k, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.393, %if.then.367
  %215 = load i32, i32* %k, align 4
  %216 = load i32, i32* %my_ndragons, align 4
  %cmp369 = icmp slt i32 %215, %216
  br i1 %cmp369, label %for.body.371, label %for.end.395

for.body.371:                                     ; preds = %for.cond.368
  %217 = load i32, i32* %k, align 4
  %add372 = add nsw i32 %217, 1
  store i32 %add372, i32* %l, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.390, %for.body.371
  %218 = load i32, i32* %l, align 4
  %219 = load i32, i32* %my_ndragons, align 4
  %cmp374 = icmp slt i32 %218, %219
  br i1 %cmp374, label %for.body.376, label %for.end.392

for.body.376:                                     ; preds = %for.cond.373
  %220 = load i32, i32* %move, align 4
  %221 = load i32, i32* %k, align 4
  %idxprom377 = sext i32 %221 to i64
  %arrayidx378 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom377
  %222 = load i32, i32* %arrayidx378, align 4
  %223 = load i32, i32* %l, align 4
  %idxprom379 = sext i32 %223 to i64
  %arrayidx380 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom379
  %224 = load i32, i32* %arrayidx380, align 4
  call void @add_connection_move(i32 %220, i32 %222, i32 %224)
  %225 = load i32, i32* @verbose, align 4
  %tobool381 = icmp ne i32 %225, 0
  br i1 %tobool381, label %cond.false.383, label %cond.true.382

cond.true.382:                                    ; preds = %for.body.376
  br label %cond.end.389

cond.false.383:                                   ; preds = %for.body.376
  %226 = load i32, i32* %k, align 4
  %idxprom384 = sext i32 %226 to i64
  %arrayidx385 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom384
  %227 = load i32, i32* %arrayidx385, align 4
  %228 = load i32, i32* %l, align 4
  %idxprom386 = sext i32 %228 to i64
  %arrayidx387 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom386
  %229 = load i32, i32* %arrayidx387, align 4
  %call388 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32 %227, i32 %229)
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.false.383, %cond.true.382
  br label %for.inc.390

for.inc.390:                                      ; preds = %cond.end.389
  %230 = load i32, i32* %l, align 4
  %inc391 = add nsw i32 %230, 1
  store i32 %inc391, i32* %l, align 4
  br label %for.cond.373

for.end.392:                                      ; preds = %for.cond.373
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.end.392
  %231 = load i32, i32* %k, align 4
  %inc394 = add nsw i32 %231, 1
  store i32 %inc394, i32* %k, align 4
  br label %for.cond.368

for.end.395:                                      ; preds = %for.cond.368
  br label %if.end.396

if.end.396:                                       ; preds = %for.end.395, %land.lhs.true.365, %if.end.362
  %232 = load i32, i32* %class, align 4
  %and397 = and i32 %232, 128
  %tobool398 = icmp ne i32 %and397, 0
  br i1 %tobool398, label %land.lhs.true.399, label %if.end.445

land.lhs.true.399:                                ; preds = %if.end.396
  %233 = load i32, i32* @experimental_connections, align 4
  %tobool400 = icmp ne i32 %233, 0
  br i1 %tobool400, label %if.then.401, label %if.end.445

if.then.401:                                      ; preds = %land.lhs.true.399
  store i32 0, i32* %k, align 4
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.442, %if.then.401
  %234 = load i32, i32* %k, align 4
  %235 = load i32, i32* %my_nstrings, align 4
  %cmp403 = icmp slt i32 %234, %235
  br i1 %cmp403, label %for.body.405, label %for.end.444

for.body.405:                                     ; preds = %for.cond.402
  %236 = load i32, i32* %k, align 4
  %add406 = add nsw i32 %236, 1
  store i32 %add406, i32* %l, align 4
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.439, %for.body.405
  %237 = load i32, i32* %l, align 4
  %238 = load i32, i32* %my_nstrings, align 4
  %cmp408 = icmp slt i32 %237, %238
  br i1 %cmp408, label %for.body.410, label %for.end.441

for.body.410:                                     ; preds = %for.cond.407
  %239 = load i32, i32* %k, align 4
  %idxprom411 = sext i32 %239 to i64
  %arrayidx412 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom411
  %240 = load i32, i32* %arrayidx412, align 4
  %241 = load i32, i32* %l, align 4
  %idxprom413 = sext i32 %241 to i64
  %arrayidx414 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom413
  %242 = load i32, i32* %arrayidx414, align 4
  %call415 = call i32 @disconnect(i32 %240, i32 %242, i32* null)
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %land.lhs.true.417, label %if.end.438

land.lhs.true.417:                                ; preds = %for.body.410
  %243 = load i32, i32* %color.addr, align 4
  %244 = load i32, i32* %move, align 4
  %245 = load i32, i32* %k, align 4
  %idxprom418 = sext i32 %245 to i64
  %arrayidx419 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom418
  %246 = load i32, i32* %arrayidx419, align 4
  %247 = load i32, i32* %l, align 4
  %idxprom420 = sext i32 %247 to i64
  %arrayidx421 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom420
  %248 = load i32, i32* %arrayidx421, align 4
  %call422 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %243, i32 0, i32 1, i32 %244, i32 %246, i32 %248)
  %tobool423 = icmp ne i32 %call422, 0
  br i1 %tobool423, label %if.end.438, label %if.then.424

if.then.424:                                      ; preds = %land.lhs.true.417
  %249 = load i32, i32* %move, align 4
  %250 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %250 to i64
  %arrayidx426 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom425
  %251 = load i32, i32* %arrayidx426, align 4
  %252 = load i32, i32* %l, align 4
  %idxprom427 = sext i32 %252 to i64
  %arrayidx428 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom427
  %253 = load i32, i32* %arrayidx428, align 4
  call void @add_connection_move(i32 %249, i32 %251, i32 %253)
  %254 = load i32, i32* @verbose, align 4
  %tobool429 = icmp ne i32 %254, 0
  br i1 %tobool429, label %cond.false.431, label %cond.true.430

cond.true.430:                                    ; preds = %if.then.424
  br label %cond.end.437

cond.false.431:                                   ; preds = %if.then.424
  %255 = load i32, i32* %k, align 4
  %idxprom432 = sext i32 %255 to i64
  %arrayidx433 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom432
  %256 = load i32, i32* %arrayidx433, align 4
  %257 = load i32, i32* %l, align 4
  %idxprom434 = sext i32 %257 to i64
  %arrayidx435 = getelementptr inbounds [5 x i32], [5 x i32]* %my_strings, i32 0, i64 %idxprom434
  %258 = load i32, i32* %arrayidx435, align 4
  %call436 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i32 %256, i32 %258)
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.false.431, %cond.true.430
  br label %if.end.438

if.end.438:                                       ; preds = %cond.end.437, %land.lhs.true.417, %for.body.410
  br label %for.inc.439

for.inc.439:                                      ; preds = %if.end.438
  %259 = load i32, i32* %l, align 4
  %inc440 = add nsw i32 %259, 1
  store i32 %inc440, i32* %l, align 4
  br label %for.cond.407

for.end.441:                                      ; preds = %for.cond.407
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.end.441
  %260 = load i32, i32* %k, align 4
  %inc443 = add nsw i32 %260, 1
  store i32 %inc443, i32* %k, align 4
  br label %for.cond.402

for.end.444:                                      ; preds = %for.cond.402
  br label %if.end.445

if.end.445:                                       ; preds = %for.end.444, %land.lhs.true.399, %if.end.396
  %261 = load i32, i32* %class, align 4
  %and446 = and i32 %261, 256
  %tobool447 = icmp ne i32 %and446, 0
  br i1 %tobool447, label %if.then.448, label %if.end.470

if.then.448:                                      ; preds = %if.end.445
  store i32 0, i32* %k, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.462, %if.then.448
  %262 = load i32, i32* %k, align 4
  %263 = load i32, i32* %my_ndragons, align 4
  %cmp450 = icmp slt i32 %262, %263
  br i1 %cmp450, label %for.body.452, label %for.end.464

for.body.452:                                     ; preds = %for.cond.449
  %264 = load i32, i32* %move, align 4
  %265 = load i32, i32* %k, align 4
  %idxprom453 = sext i32 %265 to i64
  %arrayidx454 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom453
  %266 = load i32, i32* %arrayidx454, align 4
  call void @add_strategical_defense_move(i32 %264, i32 %266)
  %267 = load i32, i32* @verbose, align 4
  %tobool455 = icmp ne i32 %267, 0
  br i1 %tobool455, label %cond.false.457, label %cond.true.456

cond.true.456:                                    ; preds = %for.body.452
  br label %cond.end.461

cond.false.457:                                   ; preds = %for.body.452
  %268 = load i32, i32* %k, align 4
  %idxprom458 = sext i32 %268 to i64
  %arrayidx459 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom458
  %269 = load i32, i32* %arrayidx459, align 4
  %call460 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 %269)
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.457, %cond.true.456
  br label %for.inc.462

for.inc.462:                                      ; preds = %cond.end.461
  %270 = load i32, i32* %k, align 4
  %inc463 = add nsw i32 %270, 1
  store i32 %inc463, i32* %k, align 4
  br label %for.cond.449

for.end.464:                                      ; preds = %for.cond.449
  %271 = load i32, i32* %move, align 4
  call void @add_shape_value(i32 %271, float 1.000000e+00)
  %272 = load i32, i32* @verbose, align 4
  %tobool465 = icmp ne i32 %272, 0
  br i1 %tobool465, label %cond.false.467, label %cond.true.466

cond.true.466:                                    ; preds = %for.end.464
  br label %cond.end.469

cond.false.467:                                   ; preds = %for.end.464
  %call468 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  br label %cond.end.469

cond.end.469:                                     ; preds = %cond.false.467, %cond.true.466
  br label %if.end.470

if.end.470:                                       ; preds = %cond.end.469, %if.end.445
  %273 = load i32, i32* %class, align 4
  %and471 = and i32 %273, 2048
  %tobool472 = icmp ne i32 %and471, 0
  br i1 %tobool472, label %if.else.474, label %if.then.473

if.then.473:                                      ; preds = %if.end.470
  br label %if.end.475

if.else.474:                                      ; preds = %if.end.470
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 331, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.475

if.end.475:                                       ; preds = %if.else.474, %if.then.473
  %274 = load i32, i32* %class, align 4
  %and476 = and i32 %274, 4096
  %tobool477 = icmp ne i32 %and476, 0
  br i1 %tobool477, label %if.then.478, label %if.end.484

if.then.478:                                      ; preds = %if.end.475
  %275 = load i32, i32* %move, align 4
  call void @add_expand_territory_move(i32 %275)
  %276 = load i32, i32* @verbose, align 4
  %tobool479 = icmp ne i32 %276, 0
  br i1 %tobool479, label %cond.false.481, label %cond.true.480

cond.true.480:                                    ; preds = %if.then.478
  br label %cond.end.483

cond.false.481:                                   ; preds = %if.then.478
  %call482 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %cond.end.483

cond.end.483:                                     ; preds = %cond.false.481, %cond.true.480
  br label %if.end.484

if.end.484:                                       ; preds = %cond.end.483, %if.end.475
  %277 = load i32, i32* %class, align 4
  %and485 = and i32 %277, 8192
  %tobool486 = icmp ne i32 %and485, 0
  br i1 %tobool486, label %if.then.487, label %if.end.493

if.then.487:                                      ; preds = %if.end.484
  %278 = load i32, i32* %move, align 4
  call void @add_expand_moyo_move(i32 %278)
  %279 = load i32, i32* @verbose, align 4
  %tobool488 = icmp ne i32 %279, 0
  br i1 %tobool488, label %cond.false.490, label %cond.true.489

cond.true.489:                                    ; preds = %if.then.487
  br label %cond.end.492

cond.false.490:                                   ; preds = %if.then.487
  %call491 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.false.490, %cond.true.489
  br label %if.end.493

if.end.493:                                       ; preds = %cond.end.492, %if.end.484
  %280 = load i32, i32* %class, align 4
  %and494 = and i32 %280, 65536
  %tobool495 = icmp ne i32 %and494, 0
  br i1 %tobool495, label %if.then.496, label %if.end.502

if.then.496:                                      ; preds = %if.end.493
  %281 = load i32, i32* %move, align 4
  call void @add_invasion_move(i32 %281)
  %282 = load i32, i32* @verbose, align 4
  %tobool497 = icmp ne i32 %282, 0
  br i1 %tobool497, label %cond.false.499, label %cond.true.498

cond.true.498:                                    ; preds = %if.then.496
  br label %cond.end.501

cond.false.499:                                   ; preds = %if.then.496
  %call500 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  br label %cond.end.501

cond.end.501:                                     ; preds = %cond.false.499, %cond.true.498
  br label %if.end.502

if.end.502:                                       ; preds = %cond.end.501, %if.end.493
  %283 = load i32, i32* %class, align 4
  %and503 = and i32 %283, 16384
  %tobool504 = icmp ne i32 %and503, 0
  br i1 %tobool504, label %if.then.505, label %if.end.522

if.then.505:                                      ; preds = %if.end.502
  store i32 0, i32* %k, align 4
  br label %for.cond.506

for.cond.506:                                     ; preds = %for.inc.519, %if.then.505
  %284 = load i32, i32* %k, align 4
  %285 = load i32, i32* %your_ndragons, align 4
  %cmp507 = icmp slt i32 %284, %285
  br i1 %cmp507, label %for.body.509, label %for.end.521

for.body.509:                                     ; preds = %for.cond.506
  %286 = load i32, i32* %move, align 4
  %287 = load i32, i32* %k, align 4
  %idxprom510 = sext i32 %287 to i64
  %arrayidx511 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom510
  %288 = load i32, i32* %arrayidx511, align 4
  call void @add_strategical_attack_move(i32 %286, i32 %288)
  %289 = load i32, i32* @verbose, align 4
  %tobool512 = icmp ne i32 %289, 0
  br i1 %tobool512, label %cond.false.514, label %cond.true.513

cond.true.513:                                    ; preds = %for.body.509
  br label %cond.end.518

cond.false.514:                                   ; preds = %for.body.509
  %290 = load i32, i32* %k, align 4
  %idxprom515 = sext i32 %290 to i64
  %arrayidx516 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom515
  %291 = load i32, i32* %arrayidx516, align 4
  %call517 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 %291)
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.514, %cond.true.513
  br label %for.inc.519

for.inc.519:                                      ; preds = %cond.end.518
  %292 = load i32, i32* %k, align 4
  %inc520 = add nsw i32 %292, 1
  store i32 %inc520, i32* %k, align 4
  br label %for.cond.506

for.end.521:                                      ; preds = %for.cond.506
  br label %if.end.522

if.end.522:                                       ; preds = %for.end.521, %if.end.502
  %293 = load i32, i32* %class, align 4
  %and523 = and i32 %293, 32768
  %tobool524 = icmp ne i32 %and523, 0
  br i1 %tobool524, label %if.then.525, label %if.end.542

if.then.525:                                      ; preds = %if.end.522
  store i32 0, i32* %k, align 4
  br label %for.cond.526

for.cond.526:                                     ; preds = %for.inc.539, %if.then.525
  %294 = load i32, i32* %k, align 4
  %295 = load i32, i32* %my_ndragons, align 4
  %cmp527 = icmp slt i32 %294, %295
  br i1 %cmp527, label %for.body.529, label %for.end.541

for.body.529:                                     ; preds = %for.cond.526
  %296 = load i32, i32* %move, align 4
  %297 = load i32, i32* %k, align 4
  %idxprom530 = sext i32 %297 to i64
  %arrayidx531 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom530
  %298 = load i32, i32* %arrayidx531, align 4
  call void @add_strategical_defense_move(i32 %296, i32 %298)
  %299 = load i32, i32* @verbose, align 4
  %tobool532 = icmp ne i32 %299, 0
  br i1 %tobool532, label %cond.false.534, label %cond.true.533

cond.true.533:                                    ; preds = %for.body.529
  br label %cond.end.538

cond.false.534:                                   ; preds = %for.body.529
  %300 = load i32, i32* %k, align 4
  %idxprom535 = sext i32 %300 to i64
  %arrayidx536 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom535
  %301 = load i32, i32* %arrayidx536, align 4
  %call537 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %301)
  br label %cond.end.538

cond.end.538:                                     ; preds = %cond.false.534, %cond.true.533
  br label %for.inc.539

for.inc.539:                                      ; preds = %cond.end.538
  %302 = load i32, i32* %k, align 4
  %inc540 = add nsw i32 %302, 1
  store i32 %inc540, i32* %k, align 4
  br label %for.cond.526

for.end.541:                                      ; preds = %for.cond.526
  br label %if.end.542

if.end.542:                                       ; preds = %for.end.541, %if.end.522
  %303 = load i32, i32* %class, align 4
  %and543 = and i32 %303, 131072
  %tobool544 = icmp ne i32 %and543, 0
  br i1 %tobool544, label %if.then.545, label %if.end.567

if.then.545:                                      ; preds = %if.end.542
  %304 = load i32, i32* @verbose, align 4
  %tobool546 = icmp ne i32 %304, 0
  br i1 %tobool546, label %cond.false.548, label %cond.true.547

cond.true.547:                                    ; preds = %if.then.545
  br label %cond.end.550

cond.false.548:                                   ; preds = %if.then.545
  %call549 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0))
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.false.548, %cond.true.547
  %305 = load i32, i32* %move, align 4
  call void @add_expand_territory_move(i32 %305)
  %306 = load i32, i32* @verbose, align 4
  %tobool551 = icmp ne i32 %306, 0
  br i1 %tobool551, label %cond.false.553, label %cond.true.552

cond.true.552:                                    ; preds = %cond.end.550
  br label %cond.end.555

cond.false.553:                                   ; preds = %cond.end.550
  %call554 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.553, %cond.true.552
  %307 = load i32, i32* %move, align 4
  call void @add_expand_moyo_move(i32 %307)
  %308 = load i32, i32* @verbose, align 4
  %tobool556 = icmp ne i32 %308, 0
  br i1 %tobool556, label %cond.false.558, label %cond.true.557

cond.true.557:                                    ; preds = %cond.end.555
  br label %cond.end.560

cond.false.558:                                   ; preds = %cond.end.555
  %call559 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %cond.end.560

cond.end.560:                                     ; preds = %cond.false.558, %cond.true.557
  %309 = load i32, i32* %move, align 4
  %call561 = call i32 @set_minimum_move_value(i32 %309, float 3.500000e+01)
  %310 = load i32, i32* @verbose, align 4
  %tobool562 = icmp ne i32 %310, 0
  br i1 %tobool562, label %cond.false.564, label %cond.true.563

cond.true.563:                                    ; preds = %cond.end.560
  br label %cond.end.566

cond.false.564:                                   ; preds = %cond.end.560
  %call565 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), double 3.500000e+01)
  br label %cond.end.566

cond.end.566:                                     ; preds = %cond.false.564, %cond.true.563
  br label %if.end.567

if.end.567:                                       ; preds = %cond.end.566, %if.end.542
  %311 = load i32, i32* %class, align 4
  %and568 = and i32 %311, 262144
  %tobool569 = icmp ne i32 %and568, 0
  br i1 %tobool569, label %if.then.570, label %if.end.628

if.then.570:                                      ; preds = %if.end.567
  store float 2.400000e+01, float* %min_value, align 4
  %312 = load i32, i32* @verbose, align 4
  %tobool571 = icmp ne i32 %312, 0
  br i1 %tobool571, label %cond.false.573, label %cond.true.572

cond.true.572:                                    ; preds = %if.then.570
  br label %cond.end.575

cond.false.573:                                   ; preds = %if.then.570
  %call574 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0))
  br label %cond.end.575

cond.end.575:                                     ; preds = %cond.false.573, %cond.true.572
  %313 = load i32, i32* %move, align 4
  call void @add_expand_territory_move(i32 %313)
  %314 = load i32, i32* @verbose, align 4
  %tobool576 = icmp ne i32 %314, 0
  br i1 %tobool576, label %cond.false.578, label %cond.true.577

cond.true.577:                                    ; preds = %cond.end.575
  br label %cond.end.580

cond.false.578:                                   ; preds = %cond.end.575
  %call579 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0))
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.false.578, %cond.true.577
  %315 = load i32, i32* %move, align 4
  call void @add_expand_moyo_move(i32 %315)
  %316 = load i32, i32* @verbose, align 4
  %tobool581 = icmp ne i32 %316, 0
  br i1 %tobool581, label %cond.false.583, label %cond.true.582

cond.true.582:                                    ; preds = %cond.end.580
  br label %cond.end.585

cond.false.583:                                   ; preds = %cond.end.580
  %call584 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %cond.end.585

cond.end.585:                                     ; preds = %cond.false.583, %cond.true.582
  %317 = load i32, i32* @board_size, align 4
  %conv586 = sitofp i32 %317 to double
  %div = fdiv double %conv586, 1.900000e+01
  %318 = load float, float* %min_value, align 4
  %conv587 = fpext float %318 to double
  %mul = fmul double %conv587, %div
  %conv588 = fptrunc double %mul to float
  store float %conv588, float* %min_value, align 4
  %319 = load i32, i32* %class, align 4
  %and589 = and i32 %319, 268435456
  %tobool590 = icmp ne i32 %and589, 0
  br i1 %tobool590, label %if.then.591, label %if.end.599

if.then.591:                                      ; preds = %cond.end.585
  %320 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape = getelementptr inbounds %struct.pattern, %struct.pattern* %320, i32 0, i32 19
  %321 = load float, float* %shape, align 4
  %conv592 = fpext float %321 to double
  %mul593 = fmul double 1.000000e-02, %conv592
  %add594 = fadd double 1.000000e+00, %mul593
  %322 = load float, float* %min_value, align 4
  %conv595 = fpext float %322 to double
  %mul596 = fmul double %conv595, %add594
  %conv597 = fptrunc double %mul596 to float
  store float %conv597, float* %min_value, align 4
  %323 = load i32, i32* %class, align 4
  %and598 = and i32 %323, -268435457
  store i32 %and598, i32* %class, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.591, %cond.end.585
  %324 = load i32, i32* @board_size, align 4
  %cmp600 = icmp sge i32 %324, 17
  br i1 %cmp600, label %land.lhs.true.602, label %if.else.617

land.lhs.true.602:                                ; preds = %if.end.599
  %325 = load i32, i32* %class, align 4
  %and603 = and i32 %325, 8388608
  %tobool604 = icmp ne i32 %and603, 0
  br i1 %tobool604, label %if.then.605, label %if.else.617

if.then.605:                                      ; preds = %land.lhs.true.602
  %326 = load float, float* %min_value, align 4
  %conv606 = fpext float %326 to double
  %mul607 = fmul double %conv606, 1.005000e+00
  %conv608 = fptrunc double %mul607 to float
  store float %conv608, float* %min_value, align 4
  %327 = load i32, i32* %move, align 4
  %328 = load float, float* %min_value, align 4
  call void @set_maximum_move_value(i32 %327, float %328)
  %329 = load i32, i32* %move, align 4
  call void @scale_randomness(i32 %329, float 5.000000e+00)
  %330 = load i32, i32* @verbose, align 4
  %tobool609 = icmp ne i32 %330, 0
  br i1 %tobool609, label %cond.false.611, label %cond.true.610

cond.true.610:                                    ; preds = %if.then.605
  br label %cond.end.616

cond.false.611:                                   ; preds = %if.then.605
  %331 = load float, float* %min_value, align 4
  %conv612 = fpext float %331 to double
  %332 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape613 = getelementptr inbounds %struct.pattern, %struct.pattern* %332, i32 0, i32 19
  %333 = load float, float* %shape613, align 4
  %conv614 = fpext float %333 to double
  %call615 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), double %conv612, double %conv614)
  br label %cond.end.616

cond.end.616:                                     ; preds = %cond.false.611, %cond.true.610
  br label %if.end.626

if.else.617:                                      ; preds = %land.lhs.true.602, %if.end.599
  %334 = load i32, i32* @verbose, align 4
  %tobool618 = icmp ne i32 %334, 0
  br i1 %tobool618, label %cond.false.620, label %cond.true.619

cond.true.619:                                    ; preds = %if.else.617
  br label %cond.end.625

cond.false.620:                                   ; preds = %if.else.617
  %335 = load float, float* %min_value, align 4
  %conv621 = fpext float %335 to double
  %336 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape622 = getelementptr inbounds %struct.pattern, %struct.pattern* %336, i32 0, i32 19
  %337 = load float, float* %shape622, align 4
  %conv623 = fpext float %337 to double
  %call624 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), double %conv621, double %conv623)
  br label %cond.end.625

cond.end.625:                                     ; preds = %cond.false.620, %cond.true.619
  br label %if.end.626

if.end.626:                                       ; preds = %cond.end.625, %cond.end.616
  %338 = load i32, i32* %move, align 4
  %339 = load float, float* %min_value, align 4
  %call627 = call i32 @set_minimum_move_value(i32 %338, float %339)
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.626, %if.end.567
  %340 = load i32, i32* %class, align 4
  %and629 = and i32 %340, 524288
  %tobool630 = icmp ne i32 %and629, 0
  br i1 %tobool630, label %if.then.631, label %if.end.683

if.then.631:                                      ; preds = %if.end.628
  store float 1.700000e+01, float* %min_value632, align 4
  %341 = load i32, i32* @verbose, align 4
  %tobool633 = icmp ne i32 %341, 0
  br i1 %tobool633, label %cond.false.635, label %cond.true.634

cond.true.634:                                    ; preds = %if.then.631
  br label %cond.end.637

cond.false.635:                                   ; preds = %if.then.631
  %call636 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  br label %cond.end.637

cond.end.637:                                     ; preds = %cond.false.635, %cond.true.634
  %342 = load i32, i32* @board_size, align 4
  %conv638 = sitofp i32 %342 to double
  %div639 = fdiv double %conv638, 1.900000e+01
  %343 = load float, float* %min_value632, align 4
  %conv640 = fpext float %343 to double
  %mul641 = fmul double %conv640, %div639
  %conv642 = fptrunc double %mul641 to float
  store float %conv642, float* %min_value632, align 4
  %344 = load i32, i32* %class, align 4
  %and643 = and i32 %344, 268435456
  %tobool644 = icmp ne i32 %and643, 0
  br i1 %tobool644, label %if.then.645, label %if.end.654

if.then.645:                                      ; preds = %cond.end.637
  %345 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape646 = getelementptr inbounds %struct.pattern, %struct.pattern* %345, i32 0, i32 19
  %346 = load float, float* %shape646, align 4
  %conv647 = fpext float %346 to double
  %mul648 = fmul double 1.000000e-02, %conv647
  %add649 = fadd double 1.000000e+00, %mul648
  %347 = load float, float* %min_value632, align 4
  %conv650 = fpext float %347 to double
  %mul651 = fmul double %conv650, %add649
  %conv652 = fptrunc double %mul651 to float
  store float %conv652, float* %min_value632, align 4
  %348 = load i32, i32* %class, align 4
  %and653 = and i32 %348, -268435457
  store i32 %and653, i32* %class, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.645, %cond.end.637
  %349 = load i32, i32* @board_size, align 4
  %cmp655 = icmp sge i32 %349, 17
  br i1 %cmp655, label %land.lhs.true.657, label %if.else.672

land.lhs.true.657:                                ; preds = %if.end.654
  %350 = load i32, i32* %class, align 4
  %and658 = and i32 %350, 8388608
  %tobool659 = icmp ne i32 %and658, 0
  br i1 %tobool659, label %if.then.660, label %if.else.672

if.then.660:                                      ; preds = %land.lhs.true.657
  %351 = load float, float* %min_value632, align 4
  %conv661 = fpext float %351 to double
  %mul662 = fmul double %conv661, 1.005000e+00
  %conv663 = fptrunc double %mul662 to float
  store float %conv663, float* %min_value632, align 4
  %352 = load i32, i32* %move, align 4
  %353 = load float, float* %min_value632, align 4
  call void @set_maximum_move_value(i32 %352, float %353)
  %354 = load i32, i32* %move, align 4
  call void @scale_randomness(i32 %354, float 5.000000e+00)
  %355 = load i32, i32* @verbose, align 4
  %tobool664 = icmp ne i32 %355, 0
  br i1 %tobool664, label %cond.false.666, label %cond.true.665

cond.true.665:                                    ; preds = %if.then.660
  br label %cond.end.671

cond.false.666:                                   ; preds = %if.then.660
  %356 = load float, float* %min_value632, align 4
  %conv667 = fpext float %356 to double
  %357 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape668 = getelementptr inbounds %struct.pattern, %struct.pattern* %357, i32 0, i32 19
  %358 = load float, float* %shape668, align 4
  %conv669 = fpext float %358 to double
  %call670 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i32 0, i32 0), double %conv667, double %conv669)
  br label %cond.end.671

cond.end.671:                                     ; preds = %cond.false.666, %cond.true.665
  br label %if.end.681

if.else.672:                                      ; preds = %land.lhs.true.657, %if.end.654
  %359 = load i32, i32* @verbose, align 4
  %tobool673 = icmp ne i32 %359, 0
  br i1 %tobool673, label %cond.false.675, label %cond.true.674

cond.true.674:                                    ; preds = %if.else.672
  br label %cond.end.680

cond.false.675:                                   ; preds = %if.else.672
  %360 = load float, float* %min_value632, align 4
  %conv676 = fpext float %360 to double
  %361 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape677 = getelementptr inbounds %struct.pattern, %struct.pattern* %361, i32 0, i32 19
  %362 = load float, float* %shape677, align 4
  %conv678 = fpext float %362 to double
  %call679 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0), double %conv676, double %conv678)
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.675, %cond.true.674
  br label %if.end.681

if.end.681:                                       ; preds = %cond.end.680, %cond.end.671
  %363 = load i32, i32* %move, align 4
  %364 = load float, float* %min_value632, align 4
  %call682 = call i32 @set_minimum_move_value(i32 %363, float %364)
  br label %if.end.683

if.end.683:                                       ; preds = %if.end.681, %if.end.628
  %365 = load i32, i32* %class, align 4
  %and684 = and i32 %365, 1048576
  %tobool685 = icmp ne i32 %and684, 0
  br i1 %tobool685, label %if.then.686, label %if.end.735

if.then.686:                                      ; preds = %if.end.683
  %366 = load i32, i32* @verbose, align 4
  %tobool687 = icmp ne i32 %366, 0
  br i1 %tobool687, label %cond.false.689, label %cond.true.688

cond.true.688:                                    ; preds = %if.then.686
  br label %cond.end.691

cond.false.689:                                   ; preds = %if.then.686
  %call690 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %cond.end.691

cond.end.691:                                     ; preds = %cond.false.689, %cond.true.688
  store i32 0, i32* %k, align 4
  br label %for.cond.692

for.cond.692:                                     ; preds = %for.inc.705, %cond.end.691
  %367 = load i32, i32* %k, align 4
  %368 = load i32, i32* %my_ndragons, align 4
  %cmp693 = icmp slt i32 %367, %368
  br i1 %cmp693, label %for.body.695, label %for.end.707

for.body.695:                                     ; preds = %for.cond.692
  %369 = load i32, i32* %move, align 4
  %370 = load i32, i32* %k, align 4
  %idxprom696 = sext i32 %370 to i64
  %arrayidx697 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom696
  %371 = load i32, i32* %arrayidx697, align 4
  call void @add_strategical_defense_move(i32 %369, i32 %371)
  %372 = load i32, i32* @verbose, align 4
  %tobool698 = icmp ne i32 %372, 0
  br i1 %tobool698, label %cond.false.700, label %cond.true.699

cond.true.699:                                    ; preds = %for.body.695
  br label %cond.end.704

cond.false.700:                                   ; preds = %for.body.695
  %373 = load i32, i32* %k, align 4
  %idxprom701 = sext i32 %373 to i64
  %arrayidx702 = getelementptr inbounds [5 x i32], [5 x i32]* %my_dragons, i32 0, i64 %idxprom701
  %374 = load i32, i32* %arrayidx702, align 4
  %call703 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i32 %374)
  br label %cond.end.704

cond.end.704:                                     ; preds = %cond.false.700, %cond.true.699
  br label %for.inc.705

for.inc.705:                                      ; preds = %cond.end.704
  %375 = load i32, i32* %k, align 4
  %inc706 = add nsw i32 %375, 1
  store i32 %inc706, i32* %k, align 4
  br label %for.cond.692

for.end.707:                                      ; preds = %for.cond.692
  store i32 1, i32* @urgent, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.708

for.cond.708:                                     ; preds = %for.inc.721, %for.end.707
  %376 = load i32, i32* %k, align 4
  %377 = load i32, i32* %your_ndragons, align 4
  %cmp709 = icmp slt i32 %376, %377
  br i1 %cmp709, label %for.body.711, label %for.end.723

for.body.711:                                     ; preds = %for.cond.708
  %378 = load i32, i32* %move, align 4
  %379 = load i32, i32* %k, align 4
  %idxprom712 = sext i32 %379 to i64
  %arrayidx713 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom712
  %380 = load i32, i32* %arrayidx713, align 4
  call void @add_strategical_attack_move(i32 %378, i32 %380)
  %381 = load i32, i32* @verbose, align 4
  %tobool714 = icmp ne i32 %381, 0
  br i1 %tobool714, label %cond.false.716, label %cond.true.715

cond.true.715:                                    ; preds = %for.body.711
  br label %cond.end.720

cond.false.716:                                   ; preds = %for.body.711
  %382 = load i32, i32* %k, align 4
  %idxprom717 = sext i32 %382 to i64
  %arrayidx718 = getelementptr inbounds [5 x i32], [5 x i32]* %your_dragons, i32 0, i64 %idxprom717
  %383 = load i32, i32* %arrayidx718, align 4
  %call719 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i32 %383)
  br label %cond.end.720

cond.end.720:                                     ; preds = %cond.false.716, %cond.true.715
  br label %for.inc.721

for.inc.721:                                      ; preds = %cond.end.720
  %384 = load i32, i32* %k, align 4
  %inc722 = add nsw i32 %384, 1
  store i32 %inc722, i32* %k, align 4
  br label %for.cond.708

for.end.723:                                      ; preds = %for.cond.708
  %385 = load i32, i32* %move, align 4
  call void @add_shape_value(i32 %385, float 1.500000e+01)
  %386 = load i32, i32* @verbose, align 4
  %tobool724 = icmp ne i32 %386, 0
  br i1 %tobool724, label %cond.false.726, label %cond.true.725

cond.true.725:                                    ; preds = %for.end.723
  br label %cond.end.728

cond.false.726:                                   ; preds = %for.end.723
  %call727 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0))
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.726, %cond.true.725
  %387 = load i32, i32* %move, align 4
  %call729 = call i32 @set_minimum_move_value(i32 %387, float 4.000000e+01)
  %388 = load i32, i32* @verbose, align 4
  %tobool730 = icmp ne i32 %388, 0
  br i1 %tobool730, label %cond.false.732, label %cond.true.731

cond.true.731:                                    ; preds = %cond.end.728
  br label %cond.end.734

cond.false.732:                                   ; preds = %cond.end.728
  %call733 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), double 4.000000e+01)
  br label %cond.end.734

cond.end.734:                                     ; preds = %cond.false.732, %cond.true.731
  br label %if.end.735

if.end.735:                                       ; preds = %cond.end.734, %if.end.683
  %389 = load i32, i32* %class, align 4
  %and736 = and i32 %389, 2097152
  %tobool737 = icmp ne i32 %and736, 0
  br i1 %tobool737, label %if.then.738, label %if.end.749

if.then.738:                                      ; preds = %if.end.735
  %390 = load i32, i32* @verbose, align 4
  %tobool739 = icmp ne i32 %390, 0
  br i1 %tobool739, label %cond.false.741, label %cond.true.740

cond.true.740:                                    ; preds = %if.then.738
  br label %cond.end.743

cond.false.741:                                   ; preds = %if.then.738
  %call742 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0))
  br label %cond.end.743

cond.end.743:                                     ; preds = %cond.false.741, %cond.true.740
  %391 = load i32, i32* %move, align 4
  call void @add_antisuji_move(i32 %391)
  %392 = load i32, i32* @verbose, align 4
  %tobool744 = icmp ne i32 %392, 0
  br i1 %tobool744, label %cond.false.746, label %cond.true.745

cond.true.745:                                    ; preds = %cond.end.743
  br label %cond.end.748

cond.false.746:                                   ; preds = %cond.end.743
  %call747 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0))
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.false.746, %cond.true.745
  br label %if.end.749

if.end.749:                                       ; preds = %cond.end.748, %if.end.735
  %393 = load i32, i32* %class, align 4
  %and750 = and i32 %393, 4194304
  %tobool751 = icmp ne i32 %and750, 0
  br i1 %tobool751, label %if.then.752, label %if.end.758

if.then.752:                                      ; preds = %if.end.749
  %394 = load i32, i32* @verbose, align 4
  %tobool753 = icmp ne i32 %394, 0
  br i1 %tobool753, label %cond.false.755, label %cond.true.754

cond.true.754:                                    ; preds = %if.then.752
  br label %cond.end.757

cond.false.755:                                   ; preds = %if.then.752
  %call756 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0))
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.false.755, %cond.true.754
  %395 = load i32, i32* %move, align 4
  call void @add_worthwhile_threat_move(i32 %395)
  br label %if.end.758

if.end.758:                                       ; preds = %cond.end.757, %if.end.749
  %396 = load i32, i32* %class, align 4
  %and759 = and i32 %396, 16777216
  %tobool760 = icmp ne i32 %and759, 0
  br i1 %tobool760, label %if.then.761, label %if.end.770

if.then.761:                                      ; preds = %if.end.758
  %397 = load i32, i32* %move, align 4
  %398 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value = getelementptr inbounds %struct.pattern, %struct.pattern* %398, i32 0, i32 15
  %399 = load float, float* %value, align 4
  %call762 = call i32 @set_minimum_move_value(i32 %397, float %399)
  %400 = load i32, i32* @verbose, align 4
  %tobool763 = icmp ne i32 %400, 0
  br i1 %tobool763, label %cond.false.765, label %cond.true.764

cond.true.764:                                    ; preds = %if.then.761
  br label %cond.end.769

cond.false.765:                                   ; preds = %if.then.761
  %401 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value766 = getelementptr inbounds %struct.pattern, %struct.pattern* %401, i32 0, i32 15
  %402 = load float, float* %value766, align 4
  %conv767 = fpext float %402 to double
  %call768 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0), double %conv767)
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.false.765, %cond.true.764
  br label %if.end.770

if.end.770:                                       ; preds = %cond.end.769, %if.end.758
  %403 = load i32, i32* %class, align 4
  %and771 = and i32 %403, 33554432
  %tobool772 = icmp ne i32 %and771, 0
  br i1 %tobool772, label %if.then.773, label %if.end.781

if.then.773:                                      ; preds = %if.end.770
  %404 = load i32, i32* %move, align 4
  %405 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxvalue = getelementptr inbounds %struct.pattern, %struct.pattern* %405, i32 0, i32 16
  %406 = load float, float* %maxvalue, align 4
  call void @set_maximum_move_value(i32 %404, float %406)
  %407 = load i32, i32* @verbose, align 4
  %tobool774 = icmp ne i32 %407, 0
  br i1 %tobool774, label %cond.false.776, label %cond.true.775

cond.true.775:                                    ; preds = %if.then.773
  br label %cond.end.780

cond.false.776:                                   ; preds = %if.then.773
  %408 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxvalue777 = getelementptr inbounds %struct.pattern, %struct.pattern* %408, i32 0, i32 16
  %409 = load float, float* %maxvalue777, align 4
  %conv778 = fpext float %409 to double
  %call779 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), double %conv778)
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.false.776, %cond.true.775
  br label %if.end.781

if.end.781:                                       ; preds = %cond.end.780, %if.end.770
  %410 = load i32, i32* %class, align 4
  %and782 = and i32 %410, 67108864
  %tobool783 = icmp ne i32 %and782, 0
  br i1 %tobool783, label %if.then.784, label %if.end.792

if.then.784:                                      ; preds = %if.end.781
  %411 = load i32, i32* %move, align 4
  %412 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minterritory = getelementptr inbounds %struct.pattern, %struct.pattern* %412, i32 0, i32 17
  %413 = load float, float* %minterritory, align 4
  call void @set_minimum_territorial_value(i32 %411, float %413)
  %414 = load i32, i32* @verbose, align 4
  %tobool785 = icmp ne i32 %414, 0
  br i1 %tobool785, label %cond.false.787, label %cond.true.786

cond.true.786:                                    ; preds = %if.then.784
  br label %cond.end.791

cond.false.787:                                   ; preds = %if.then.784
  %415 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %minterritory788 = getelementptr inbounds %struct.pattern, %struct.pattern* %415, i32 0, i32 17
  %416 = load float, float* %minterritory788, align 4
  %conv789 = fpext float %416 to double
  %call790 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i32 0, i32 0), double %conv789)
  br label %cond.end.791

cond.end.791:                                     ; preds = %cond.false.787, %cond.true.786
  br label %if.end.792

if.end.792:                                       ; preds = %cond.end.791, %if.end.781
  %417 = load i32, i32* %class, align 4
  %and793 = and i32 %417, 134217728
  %tobool794 = icmp ne i32 %and793, 0
  br i1 %tobool794, label %if.then.795, label %if.end.803

if.then.795:                                      ; preds = %if.end.792
  %418 = load i32, i32* %move, align 4
  %419 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxterritory = getelementptr inbounds %struct.pattern, %struct.pattern* %419, i32 0, i32 18
  %420 = load float, float* %maxterritory, align 4
  call void @set_maximum_territorial_value(i32 %418, float %420)
  %421 = load i32, i32* @verbose, align 4
  %tobool796 = icmp ne i32 %421, 0
  br i1 %tobool796, label %cond.false.798, label %cond.true.797

cond.true.797:                                    ; preds = %if.then.795
  br label %cond.end.802

cond.false.798:                                   ; preds = %if.then.795
  %422 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %maxterritory799 = getelementptr inbounds %struct.pattern, %struct.pattern* %422, i32 0, i32 18
  %423 = load float, float* %maxterritory799, align 4
  %conv800 = fpext float %423 to double
  %call801 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), double %conv800)
  br label %cond.end.802

cond.end.802:                                     ; preds = %cond.false.798, %cond.true.797
  br label %if.end.803

if.end.803:                                       ; preds = %cond.end.802, %if.end.792
  %424 = load i32, i32* %class, align 4
  %and804 = and i32 %424, 268435456
  %tobool805 = icmp ne i32 %and804, 0
  br i1 %tobool805, label %if.then.806, label %if.end.815

if.then.806:                                      ; preds = %if.end.803
  %425 = load i32, i32* %move, align 4
  %426 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape807 = getelementptr inbounds %struct.pattern, %struct.pattern* %426, i32 0, i32 19
  %427 = load float, float* %shape807, align 4
  call void @add_shape_value(i32 %425, float %427)
  %428 = load i32, i32* @verbose, align 4
  %tobool808 = icmp ne i32 %428, 0
  br i1 %tobool808, label %cond.false.810, label %cond.true.809

cond.true.809:                                    ; preds = %if.then.806
  br label %cond.end.814

cond.false.810:                                   ; preds = %if.then.806
  %429 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %shape811 = getelementptr inbounds %struct.pattern, %struct.pattern* %429, i32 0, i32 19
  %430 = load float, float* %shape811, align 4
  %conv812 = fpext float %430 to double
  %call813 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), double %conv812)
  br label %cond.end.814

cond.end.814:                                     ; preds = %cond.false.810, %cond.true.809
  br label %if.end.815

if.end.815:                                       ; preds = %cond.end.814, %if.end.803
  %431 = load i32, i32* %class, align 4
  %and816 = and i32 %431, 536870912
  %tobool817 = icmp ne i32 %and816, 0
  br i1 %tobool817, label %if.then.818, label %if.end.826

if.then.818:                                      ; preds = %if.end.815
  %432 = load i32, i32* %move, align 4
  %433 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %followup = getelementptr inbounds %struct.pattern, %struct.pattern* %433, i32 0, i32 20
  %434 = load float, float* %followup, align 4
  call void @add_followup_value(i32 %432, float %434)
  %435 = load i32, i32* @verbose, align 4
  %tobool819 = icmp ne i32 %435, 0
  br i1 %tobool819, label %cond.false.821, label %cond.true.820

cond.true.820:                                    ; preds = %if.then.818
  br label %cond.end.825

cond.false.821:                                   ; preds = %if.then.818
  %436 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %followup822 = getelementptr inbounds %struct.pattern, %struct.pattern* %436, i32 0, i32 20
  %437 = load float, float* %followup822, align 4
  %conv823 = fpext float %437 to double
  %call824 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), double %conv823)
  br label %cond.end.825

cond.end.825:                                     ; preds = %cond.false.821, %cond.true.820
  br label %if.end.826

if.end.826:                                       ; preds = %cond.end.825, %if.end.815
  %438 = load i32, i32* %class, align 4
  %and827 = and i32 %438, 1073741824
  %tobool828 = icmp ne i32 %and827, 0
  br i1 %tobool828, label %if.then.829, label %if.end.837

if.then.829:                                      ; preds = %if.end.826
  %439 = load i32, i32* %move, align 4
  %440 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %reverse_followup = getelementptr inbounds %struct.pattern, %struct.pattern* %440, i32 0, i32 21
  %441 = load float, float* %reverse_followup, align 4
  call void @add_reverse_followup_value(i32 %439, float %441)
  %442 = load i32, i32* @verbose, align 4
  %tobool830 = icmp ne i32 %442, 0
  br i1 %tobool830, label %cond.false.832, label %cond.true.831

cond.true.831:                                    ; preds = %if.then.829
  br label %cond.end.836

cond.false.832:                                   ; preds = %if.then.829
  %443 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %reverse_followup833 = getelementptr inbounds %struct.pattern, %struct.pattern* %443, i32 0, i32 21
  %444 = load float, float* %reverse_followup833, align 4
  %conv834 = fpext float %444 to double
  %call835 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0), double %conv834)
  br label %cond.end.836

cond.end.836:                                     ; preds = %cond.false.832, %cond.true.831
  br label %if.end.837

if.end.837:                                       ; preds = %if.then, %if.then.36, %if.then.235, %if.then.243, %if.then.250, %if.then.259, %if.then.268, %cond.end.295, %cond.end.836, %if.end.826
  ret void
}

; Function Attrs: nounwind uwtable
define void @endgame_shapes(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4
  %call = call i8* @color_to_string(i32 %1)
  %call1 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0), i8* %call)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %2 = load i32, i32* %color.addr, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %2, %struct.pattern_db* @endpat_db, i8* null, i8* null)
  ret void
}

declare i32 @does_defend(i32, i32) #1

declare i32 @find_origin(i32) #1

declare i32 @safe_move(i32, i32) #1

declare i32 @is_ko(i32, i32, i32*) #1

declare i32 @is_legal(i32, i32) #1

declare i32 @string_connect(i32, i32, i32*) #1

declare i32 @play_connect_n(i32, i32, i32, ...) #1

declare void @add_cut_move(i32, i32, i32) #1

declare void @add_connection_move(i32, i32, i32) #1

declare i32 @disconnect(i32, i32, i32*) #1

declare void @add_strategical_defense_move(i32, i32) #1

declare void @add_shape_value(i32, float) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare void @add_expand_territory_move(i32) #1

declare void @add_expand_moyo_move(i32) #1

declare void @add_invasion_move(i32) #1

declare void @add_strategical_attack_move(i32, i32) #1

declare i32 @set_minimum_move_value(i32, float) #1

declare void @set_maximum_move_value(i32, float) #1

declare void @scale_randomness(i32, float) #1

declare void @add_antisuji_move(i32) #1

declare void @add_worthwhile_threat_move(i32) #1

declare void @set_minimum_territorial_value(i32, float) #1

declare void @set_maximum_territorial_value(i32, float) #1

declare void @add_followup_value(i32, float) #1

declare void @add_reverse_followup_value(i32, float) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
