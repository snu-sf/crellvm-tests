; ModuleID = 'engine/filllib.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }

@board = external global [421 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@delta = external global [8 x i32], align 16
@debug = external global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Filllib: Considering move at %1m.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Filllib: Tactically safe.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Filllib: Safety confirmed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Filllib: Safety not confirmed, but %1m defends.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Filllib: Safety not confirmed, discarded.\0A\00", align 1
@verbose = external global i32, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Warning: Blunder detected in fill_liberty().\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fill_liberty\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Filllib: Legal but not safe, looking for backfilling move.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Filllib: Backfilling move at %1m.\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Filllib: Was illegal, discarded.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Filllib: Not tactically safe, but captures stones.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Filllib: Illegal, looking for back-capture.\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Filllib: Found at %1m.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Filllib: Nothing found, looking for ko back-capture.\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Filllib: Nothing found, looking for threat to back-capture.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Filllib: No move found.\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"find_backfilling_move\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"engine/filllib.c\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"acode != 0 && apos > 0\00", align 1
@libs = internal global [241 x i32] zeroinitializer, align 16
@adjs = internal global [160 x i32] zeroinitializer, align 16
@stackp = external global i32, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"defense_point != ((void*)0)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @fill_liberty(i32* %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %pos = alloca i32, align 4
  %other = alloca i32, align 4
  %defense_point = alloca i32, align 4
  %potential_color = alloca [400 x i32], align 16
  %pos2 = alloca i32, align 4
  %d = alloca i32, align 4
  %found_white = alloca i32, align 4
  %found_black = alloca i32, align 4
  %d111 = alloca i32, align 4
  %d243 = alloca i32, align 4
  %d284 = alloca i32, align 4
  %d335 = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = bitcast [400 x i32]* %potential_color to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.87, %entry
  %2 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %2, 400
  br i1 %cmp, label %for.body, label %for.end.89

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv5, 2
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  br label %for.inc.87

if.end:                                           ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom8
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx9, i32 0, i32 12
  %8 = load i32, i32* %inessential, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.17, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end
  %9 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 1
  %10 = load i32, i32* %id, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom13
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx14, i32 0, i32 6
  %12 = load i32, i32* %safety, align 4
  %cmp15 = icmp eq i32 %12, 5
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.10, %if.end
  br label %for.inc.87

if.end.18:                                        ; preds = %lor.lhs.false.10
  %13 = load i32, i32* %pos, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom19
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx20, i32 0, i32 16
  %14 = load i32, i32* %status, align 4
  %cmp21 = icmp ne i32 %14, 1
  br i1 %cmp21, label %if.then.23, label %if.end.43

if.then.23:                                       ; preds = %if.end.18
  store i32 0, i32* %k, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.23
  %15 = load i32, i32* %k, align 4
  %cmp25 = icmp slt i32 %15, 4
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %16 = load i32, i32* %pos, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom28
  %18 = load i32, i32* %arrayidx29, align 4
  %add = add nsw i32 %16, %18
  store i32 %add, i32* %pos2, align 4
  %19 = load i32, i32* %pos2, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom30
  %20 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %20 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %for.body.27
  %21 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %21 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %22 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %22 to i32
  %sub39 = sub nsw i32 3, %conv38
  %23 = load i32, i32* %pos2, align 4
  %idxprom40 = sext i32 %23 to i64
  %arrayidx41 = getelementptr inbounds [400 x i32], [400 x i32]* %potential_color, i32 0, i64 %idxprom40
  %24 = load i32, i32* %arrayidx41, align 4
  %or = or i32 %24, %sub39
  store i32 %or, i32* %arrayidx41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.end.18
  %26 = load i32, i32* %pos, align 4
  %idxprom44 = sext i32 %26 to i64
  %arrayidx45 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom44
  %status46 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx45, i32 0, i32 16
  %27 = load i32, i32* %status46, align 4
  %cmp47 = icmp ne i32 %27, 0
  br i1 %cmp47, label %if.then.49, label %if.end.86

if.then.49:                                       ; preds = %if.end.43
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.83, %if.then.49
  %28 = load i32, i32* %k, align 4
  %cmp51 = icmp slt i32 %28, 12
  br i1 %cmp51, label %for.body.53, label %for.end.85

for.body.53:                                      ; preds = %for.cond.50
  %29 = load i32, i32* %k, align 4
  %rem = srem i32 %29, 8
  %idxprom54 = sext i32 %rem to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom54
  %30 = load i32, i32* %arrayidx55, align 4
  store i32 %30, i32* %d, align 4
  %31 = load i32, i32* %k, align 4
  %cmp56 = icmp sge i32 %31, 8
  br i1 %cmp56, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %for.body.53
  %32 = load i32, i32* %pos, align 4
  %33 = load i32, i32* %d, align 4
  %add59 = add nsw i32 %32, %33
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom60
  %34 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %34 to i32
  %cmp63 = icmp ne i32 %conv62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.58
  br label %for.inc.83

if.end.66:                                        ; preds = %if.then.58
  %35 = load i32, i32* %d, align 4
  %mul = mul nsw i32 %35, 2
  store i32 %mul, i32* %d, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.body.53
  %36 = load i32, i32* %pos, align 4
  %37 = load i32, i32* %d, align 4
  %add68 = add nsw i32 %36, %37
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom69
  %38 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %38 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %if.end.67
  %39 = load i32, i32* %pos, align 4
  %idxprom75 = sext i32 %39 to i64
  %arrayidx76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom75
  %40 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %40 to i32
  %41 = load i32, i32* %pos, align 4
  %42 = load i32, i32* %d, align 4
  %add78 = add nsw i32 %41, %42
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [400 x i32], [400 x i32]* %potential_color, i32 0, i64 %idxprom79
  %43 = load i32, i32* %arrayidx80, align 4
  %or81 = or i32 %43, %conv77
  store i32 %or81, i32* %arrayidx80, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.74, %if.end.67
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82, %if.then.65
  %44 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %44, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.50

for.end.85:                                       ; preds = %for.cond.50
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.85, %if.end.43
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86, %if.then.17, %if.then
  %45 = load i32, i32* %pos, align 4
  %inc88 = add nsw i32 %45, 1
  store i32 %inc88, i32* %pos, align 4
  br label %for.cond

for.end.89:                                       ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.384, %for.end.89
  %46 = load i32, i32* %pos, align 4
  %cmp91 = icmp slt i32 %46, 400
  br i1 %cmp91, label %for.body.93, label %for.end.386

for.body.93:                                      ; preds = %for.cond.90
  store i32 0, i32* %found_white, align 4
  store i32 0, i32* %found_black, align 4
  %47 = load i32, i32* %pos, align 4
  %idxprom94 = sext i32 %47 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %48 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %48 to i32
  %cmp97 = icmp ne i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.body.93
  br label %for.inc.384

if.end.100:                                       ; preds = %for.body.93
  %49 = load i32, i32* %pos, align 4
  %idxprom101 = sext i32 %49 to i64
  %arrayidx102 = getelementptr inbounds [400 x i32], [400 x i32]* %potential_color, i32 0, i64 %idxprom101
  %50 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp ne i32 %50, 3
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.100
  br label %for.inc.384

if.end.106:                                       ; preds = %if.end.100
  store i32 0, i32* %k, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.123, %if.end.106
  %51 = load i32, i32* %k, align 4
  %cmp108 = icmp slt i32 %51, 4
  br i1 %cmp108, label %for.body.110, label %for.end.125

for.body.110:                                     ; preds = %for.cond.107
  %52 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %52 to i64
  %arrayidx113 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom112
  %53 = load i32, i32* %arrayidx113, align 4
  store i32 %53, i32* %d111, align 4
  %54 = load i32, i32* %pos, align 4
  %55 = load i32, i32* %d111, align 4
  %add114 = add nsw i32 %54, %55
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom115
  %56 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %56 to i32
  %cmp118 = icmp ne i32 %conv117, 3
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %for.body.110
  %57 = load i32, i32* %pos, align 4
  %58 = load i32, i32* %d111, align 4
  %add121 = add nsw i32 %57, %58
  call void @analyze_neighbor(i32 %add121, i32* %found_black, i32* %found_white)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %for.body.110
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %59 = load i32, i32* %k, align 4
  %inc124 = add nsw i32 %59, 1
  store i32 %inc124, i32* %k, align 4
  br label %for.cond.107

for.end.125:                                      ; preds = %for.cond.107
  %60 = load i32, i32* %found_white, align 4
  %tobool126 = icmp ne i32 %60, 0
  br i1 %tobool126, label %land.lhs.true, label %if.then.128

land.lhs.true:                                    ; preds = %for.end.125
  %61 = load i32, i32* %found_black, align 4
  %tobool127 = icmp ne i32 %61, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %land.lhs.true, %for.end.125
  br label %for.inc.384

if.end.129:                                       ; preds = %land.lhs.true
  %62 = load i32, i32* @debug, align 4
  %and = and i32 %62, 16384
  %tobool130 = icmp ne i32 %and, 0
  br i1 %tobool130, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.129
  br label %cond.end

cond.false:                                       ; preds = %if.end.129
  %63 = load i32, i32* %pos, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %63)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %64 = load i32, i32* %pos, align 4
  %65 = load i32, i32* %color.addr, align 4
  %call131 = call i32 @safe_move(i32 %64, i32 %65)
  %cmp132 = icmp eq i32 %call131, 5
  br i1 %cmp132, label %if.then.134, label %if.end.171

if.then.134:                                      ; preds = %cond.end
  %66 = load i32, i32* @debug, align 4
  %and135 = and i32 %66, 16384
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %cond.false.138, label %cond.true.137

cond.true.137:                                    ; preds = %if.then.134
  br label %cond.end.140

cond.false.138:                                   ; preds = %if.then.134
  %call139 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.138, %cond.true.137
  %67 = load i32, i32* %pos, align 4
  %68 = load i32, i32* %color.addr, align 4
  %call141 = call i32 @filllib_confirm_safety(i32 %67, i32 %68, i32* %defense_point)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %cond.end.140
  %69 = load i32, i32* @debug, align 4
  %and144 = and i32 %69, 16384
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %cond.false.147, label %cond.true.146

cond.true.146:                                    ; preds = %if.then.143
  br label %cond.end.149

cond.false.147:                                   ; preds = %if.then.143
  %call148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.147, %cond.true.146
  %70 = load i32, i32* %pos, align 4
  %71 = load i32*, i32** %move.addr, align 8
  store i32 %70, i32* %71, align 4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end.140
  %72 = load i32, i32* %defense_point, align 4
  %cmp150 = icmp ne i32 %72, 0
  br i1 %cmp150, label %if.then.152, label %if.else.159

if.then.152:                                      ; preds = %if.else
  %73 = load i32, i32* @debug, align 4
  %and153 = and i32 %73, 16384
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %cond.false.156, label %cond.true.155

cond.true.155:                                    ; preds = %if.then.152
  br label %cond.end.158

cond.false.156:                                   ; preds = %if.then.152
  %74 = load i32, i32* %defense_point, align 4
  %call157 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 %74)
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.true.155
  %75 = load i32, i32* %defense_point, align 4
  %76 = load i32*, i32** %move.addr, align 8
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %retval
  br label %return

if.else.159:                                      ; preds = %if.else
  %77 = load i32, i32* @debug, align 4
  %and160 = and i32 %77, 16384
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %cond.false.163, label %cond.true.162

cond.true.162:                                    ; preds = %if.else.159
  br label %cond.end.165

cond.false.163:                                   ; preds = %if.else.159
  %call164 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.162
  %78 = load i32, i32* @verbose, align 4
  %tobool166 = icmp ne i32 %78, 0
  br i1 %tobool166, label %cond.false.168, label %cond.true.167

cond.true.167:                                    ; preds = %cond.end.165
  br label %cond.end.170

cond.false.168:                                   ; preds = %cond.end.165
  %call169 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.168, %cond.true.167
  br label %for.inc.384

if.end.171:                                       ; preds = %cond.end
  %79 = load i32, i32* %pos, align 4
  %80 = load i32, i32* %color.addr, align 4
  %call172 = call i32 @trymove(i32 %79, i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.else.232

if.then.174:                                      ; preds = %if.end.171
  call void @popgo()
  %81 = load i32, i32* @debug, align 4
  %and175 = and i32 %81, 16384
  %tobool176 = icmp ne i32 %and175, 0
  br i1 %tobool176, label %cond.false.178, label %cond.true.177

cond.true.177:                                    ; preds = %if.then.174
  br label %cond.end.180

cond.false.178:                                   ; preds = %if.then.174
  %call179 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i32 0, i32 0))
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.178, %cond.true.177
  %82 = load i32, i32* %pos, align 4
  %83 = load i32, i32* %color.addr, align 4
  %84 = load i32*, i32** %move.addr, align 8
  %call181 = call i32 @find_backfilling_move(i32 %82, i32 %83, i32* %84)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then.183, label %if.else.210

if.then.183:                                      ; preds = %cond.end.180
  %85 = load i32, i32* @debug, align 4
  %and184 = and i32 %85, 16384
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %cond.false.187, label %cond.true.186

cond.true.186:                                    ; preds = %if.then.183
  br label %cond.end.189

cond.false.187:                                   ; preds = %if.then.183
  %86 = load i32*, i32** %move.addr, align 8
  %87 = load i32, i32* %86, align 4
  %call188 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %87)
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.false.187, %cond.true.186
  %88 = load i32*, i32** %move.addr, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %color.addr, align 4
  %call190 = call i32 @is_legal(i32 %89, i32 %90)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.end.199, label %if.then.192

if.then.192:                                      ; preds = %cond.end.189
  %91 = load i32, i32* @debug, align 4
  %and193 = and i32 %91, 16384
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %cond.false.196, label %cond.true.195

cond.true.195:                                    ; preds = %if.then.192
  br label %cond.end.198

cond.false.196:                                   ; preds = %if.then.192
  %call197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i32 0, i32 0))
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.196, %cond.true.195
  %92 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %92, align 4
  br label %for.inc.384

if.end.199:                                       ; preds = %cond.end.189
  %93 = load i32*, i32** %move.addr, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %color.addr, align 4
  %call200 = call i32 @filllib_confirm_safety(i32 %94, i32 %95, i32* %defense_point)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.end.209, label %if.then.202

if.then.202:                                      ; preds = %if.end.199
  %96 = load i32, i32* @debug, align 4
  %and203 = and i32 %96, 16384
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %cond.false.206, label %cond.true.205

cond.true.205:                                    ; preds = %if.then.202
  br label %cond.end.208

cond.false.206:                                   ; preds = %if.then.202
  %call207 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.206, %cond.true.205
  br label %for.inc.384

if.end.209:                                       ; preds = %if.end.199
  store i32 1, i32* %retval
  br label %return

if.else.210:                                      ; preds = %cond.end.180
  %97 = load i32, i32* %pos, align 4
  %98 = load i32, i32* %color.addr, align 4
  %call211 = call i32 @does_capture_something(i32 %97, i32 %98)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.then.213, label %if.end.230

if.then.213:                                      ; preds = %if.else.210
  %99 = load i32, i32* @debug, align 4
  %and214 = and i32 %99, 16384
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %cond.false.217, label %cond.true.216

cond.true.216:                                    ; preds = %if.then.213
  br label %cond.end.219

cond.false.217:                                   ; preds = %if.then.213
  %call218 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i32 0, i32 0))
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.217, %cond.true.216
  %100 = load i32, i32* %pos, align 4
  %101 = load i32, i32* %color.addr, align 4
  %call220 = call i32 @filllib_confirm_safety(i32 %100, i32 %101, i32* %defense_point)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end.229, label %if.then.222

if.then.222:                                      ; preds = %cond.end.219
  %102 = load i32, i32* @debug, align 4
  %and223 = and i32 %102, 16384
  %tobool224 = icmp ne i32 %and223, 0
  br i1 %tobool224, label %cond.false.226, label %cond.true.225

cond.true.225:                                    ; preds = %if.then.222
  br label %cond.end.228

cond.false.226:                                   ; preds = %if.then.222
  %call227 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.226, %cond.true.225
  br label %for.inc.384

if.end.229:                                       ; preds = %cond.end.219
  %103 = load i32, i32* %pos, align 4
  %104 = load i32*, i32** %move.addr, align 8
  store i32 %103, i32* %104, align 4
  store i32 1, i32* %retval
  br label %return

if.end.230:                                       ; preds = %if.else.210
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230
  br label %if.end.383

if.else.232:                                      ; preds = %if.end.171
  %105 = load i32, i32* @debug, align 4
  %and233 = and i32 %105, 16384
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %cond.false.236, label %cond.true.235

cond.true.235:                                    ; preds = %if.else.232
  br label %cond.end.238

cond.false.236:                                   ; preds = %if.else.232
  %call237 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.235
  store i32 0, i32* %k, align 4
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.271, %cond.end.238
  %106 = load i32, i32* %k, align 4
  %cmp240 = icmp slt i32 %106, 4
  br i1 %cmp240, label %for.body.242, label %for.end.273

for.body.242:                                     ; preds = %for.cond.239
  %107 = load i32, i32* %k, align 4
  %idxprom244 = sext i32 %107 to i64
  %arrayidx245 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom244
  %108 = load i32, i32* %arrayidx245, align 4
  store i32 %108, i32* %d243, align 4
  %109 = load i32, i32* %pos, align 4
  %110 = load i32, i32* %d243, align 4
  %add246 = add nsw i32 %109, %110
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom247
  %111 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %111 to i32
  %112 = load i32, i32* %other, align 4
  %cmp250 = icmp eq i32 %conv249, %112
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.270

land.lhs.true.252:                                ; preds = %for.body.242
  %113 = load i32, i32* %pos, align 4
  %114 = load i32, i32* %d243, align 4
  %add253 = add nsw i32 %113, %114
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom254
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx255, i32 0, i32 16
  %arrayidx256 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %115 = load i32, i32* %arrayidx256, align 4
  %cmp257 = icmp eq i32 %115, 5
  br i1 %cmp257, label %if.then.259, label %if.end.270

if.then.259:                                      ; preds = %land.lhs.true.252
  %116 = load i32, i32* %pos, align 4
  %117 = load i32, i32* %d243, align 4
  %add260 = add nsw i32 %116, %117
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom261
  %attack_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx262, i32 0, i32 15
  %arrayidx263 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points, i32 0, i64 0
  %118 = load i32, i32* %arrayidx263, align 4
  %119 = load i32*, i32** %move.addr, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @debug, align 4
  %and264 = and i32 %120, 16384
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %cond.false.267, label %cond.true.266

cond.true.266:                                    ; preds = %if.then.259
  br label %cond.end.269

cond.false.267:                                   ; preds = %if.then.259
  %121 = load i32*, i32** %move.addr, align 8
  %122 = load i32, i32* %121, align 4
  %call268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %122)
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.267, %cond.true.266
  store i32 1, i32* %retval
  br label %return

if.end.270:                                       ; preds = %land.lhs.true.252, %for.body.242
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %123 = load i32, i32* %k, align 4
  %inc272 = add nsw i32 %123, 1
  store i32 %inc272, i32* %k, align 4
  br label %for.cond.239

for.end.273:                                      ; preds = %for.cond.239
  %124 = load i32, i32* @debug, align 4
  %and274 = and i32 %124, 16384
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %cond.false.277, label %cond.true.276

cond.true.276:                                    ; preds = %for.end.273
  br label %cond.end.279

cond.false.277:                                   ; preds = %for.end.273
  %call278 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i32 0, i32 0))
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.277, %cond.true.276
  store i32 0, i32* %k, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.322, %cond.end.279
  %125 = load i32, i32* %k, align 4
  %cmp281 = icmp slt i32 %125, 4
  br i1 %cmp281, label %for.body.283, label %for.end.324

for.body.283:                                     ; preds = %for.cond.280
  %126 = load i32, i32* %k, align 4
  %idxprom285 = sext i32 %126 to i64
  %arrayidx286 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom285
  %127 = load i32, i32* %arrayidx286, align 4
  store i32 %127, i32* %d284, align 4
  %128 = load i32, i32* %pos, align 4
  %129 = load i32, i32* %d284, align 4
  %add287 = add nsw i32 %128, %129
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom288
  %130 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %130 to i32
  %131 = load i32, i32* %other, align 4
  %cmp291 = icmp eq i32 %conv290, %131
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.321

land.lhs.true.293:                                ; preds = %for.body.283
  %132 = load i32, i32* %pos, align 4
  %133 = load i32, i32* %d284, align 4
  %add294 = add nsw i32 %132, %133
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom295
  %attack_codes297 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx296, i32 0, i32 16
  %arrayidx298 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes297, i32 0, i64 0
  %134 = load i32, i32* %arrayidx298, align 4
  %cmp299 = icmp ne i32 %134, 0
  br i1 %cmp299, label %land.lhs.true.301, label %if.end.321

land.lhs.true.301:                                ; preds = %land.lhs.true.293
  %135 = load i32, i32* %pos, align 4
  %136 = load i32, i32* %d284, align 4
  %add302 = add nsw i32 %135, %136
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom303
  %attack_points305 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx304, i32 0, i32 15
  %arrayidx306 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points305, i32 0, i64 0
  %137 = load i32, i32* %arrayidx306, align 4
  %138 = load i32, i32* %color.addr, align 4
  %call307 = call i32 @is_legal(i32 %137, i32 %138)
  %tobool308 = icmp ne i32 %call307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.321

if.then.309:                                      ; preds = %land.lhs.true.301
  %139 = load i32, i32* %pos, align 4
  %140 = load i32, i32* %d284, align 4
  %add310 = add nsw i32 %139, %140
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom311
  %attack_points313 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx312, i32 0, i32 15
  %arrayidx314 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_points313, i32 0, i64 0
  %141 = load i32, i32* %arrayidx314, align 4
  %142 = load i32*, i32** %move.addr, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @debug, align 4
  %and315 = and i32 %143, 16384
  %tobool316 = icmp ne i32 %and315, 0
  br i1 %tobool316, label %cond.false.318, label %cond.true.317

cond.true.317:                                    ; preds = %if.then.309
  br label %cond.end.320

cond.false.318:                                   ; preds = %if.then.309
  %144 = load i32*, i32** %move.addr, align 8
  %145 = load i32, i32* %144, align 4
  %call319 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %145)
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.318, %cond.true.317
  store i32 1, i32* %retval
  br label %return

if.end.321:                                       ; preds = %land.lhs.true.301, %land.lhs.true.293, %for.body.283
  br label %for.inc.322

for.inc.322:                                      ; preds = %if.end.321
  %146 = load i32, i32* %k, align 4
  %inc323 = add nsw i32 %146, 1
  store i32 %inc323, i32* %k, align 4
  br label %for.cond.280

for.end.324:                                      ; preds = %for.cond.280
  %147 = load i32, i32* @debug, align 4
  %and325 = and i32 %147, 16384
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %cond.false.328, label %cond.true.327

cond.true.327:                                    ; preds = %for.end.324
  br label %cond.end.330

cond.false.328:                                   ; preds = %for.end.324
  %call329 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i32 0, i32 0))
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.328, %cond.true.327
  store i32 0, i32* %k, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.380, %cond.end.330
  %148 = load i32, i32* %k, align 4
  %cmp332 = icmp slt i32 %148, 4
  br i1 %cmp332, label %for.body.334, label %for.end.382

for.body.334:                                     ; preds = %for.cond.331
  %149 = load i32, i32* %k, align 4
  %idxprom336 = sext i32 %149 to i64
  %arrayidx337 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom336
  %150 = load i32, i32* %arrayidx337, align 4
  store i32 %150, i32* %d335, align 4
  %151 = load i32, i32* %pos, align 4
  %152 = load i32, i32* %d335, align 4
  %add338 = add nsw i32 %151, %152
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom339
  %153 = load i8, i8* %arrayidx340, align 1
  %conv341 = zext i8 %153 to i32
  %154 = load i32, i32* %other, align 4
  %cmp342 = icmp eq i32 %conv341, %154
  br i1 %cmp342, label %land.lhs.true.344, label %if.end.379

land.lhs.true.344:                                ; preds = %for.body.334
  %155 = load i32, i32* %pos, align 4
  %156 = load i32, i32* %d335, align 4
  %add345 = add nsw i32 %155, %156
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom346
  %attack_codes348 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx347, i32 0, i32 16
  %arrayidx349 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes348, i32 0, i64 0
  %157 = load i32, i32* %arrayidx349, align 4
  %cmp350 = icmp ne i32 %157, 0
  br i1 %cmp350, label %if.then.352, label %if.end.379

if.then.352:                                      ; preds = %land.lhs.true.344
  %158 = load i32, i32* %pos, align 4
  %159 = load i32, i32* %d335, align 4
  %add353 = add nsw i32 %158, %159
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call354 = call i32 @findlib(i32 %add353, i32 2, i32* %arraydecay)
  %cmp355 = icmp sgt i32 %call354, 1
  br i1 %cmp355, label %if.then.357, label %if.end.378

if.then.357:                                      ; preds = %if.then.352
  %arrayidx358 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %160 = load i32, i32* %arrayidx358, align 4
  %161 = load i32, i32* %color.addr, align 4
  %call359 = call i32 @is_legal(i32 %160, i32 %161)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %if.then.357
  %arrayidx362 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %162 = load i32, i32* %arrayidx362, align 4
  %163 = load i32*, i32** %move.addr, align 8
  store i32 %162, i32* %163, align 4
  br label %if.end.371

if.else.363:                                      ; preds = %if.then.357
  %arrayidx364 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %164 = load i32, i32* %arrayidx364, align 4
  %165 = load i32, i32* %color.addr, align 4
  %call365 = call i32 @is_legal(i32 %164, i32 %165)
  %tobool366 = icmp ne i32 %call365, 0
  br i1 %tobool366, label %if.then.367, label %if.else.369

if.then.367:                                      ; preds = %if.else.363
  %arrayidx368 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %166 = load i32, i32* %arrayidx368, align 4
  %167 = load i32*, i32** %move.addr, align 8
  store i32 %166, i32* %167, align 4
  br label %if.end.370

if.else.369:                                      ; preds = %if.else.363
  br label %for.inc.380

if.end.370:                                       ; preds = %if.then.367
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.then.361
  %168 = load i32, i32* @debug, align 4
  %and372 = and i32 %168, 16384
  %tobool373 = icmp ne i32 %and372, 0
  br i1 %tobool373, label %cond.false.375, label %cond.true.374

cond.true.374:                                    ; preds = %if.end.371
  br label %cond.end.377

cond.false.375:                                   ; preds = %if.end.371
  %169 = load i32*, i32** %move.addr, align 8
  %170 = load i32, i32* %169, align 4
  %call376 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i32 %170)
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.375, %cond.true.374
  store i32 1, i32* %retval
  br label %return

if.end.378:                                       ; preds = %if.then.352
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %land.lhs.true.344, %for.body.334
  br label %for.inc.380

for.inc.380:                                      ; preds = %if.end.379, %if.else.369
  %171 = load i32, i32* %k, align 4
  %inc381 = add nsw i32 %171, 1
  store i32 %inc381, i32* %k, align 4
  br label %for.cond.331

for.end.382:                                      ; preds = %for.cond.331
  br label %if.end.383

if.end.383:                                       ; preds = %for.end.382, %if.end.231
  br label %for.inc.384

for.inc.384:                                      ; preds = %if.end.383, %cond.end.228, %cond.end.208, %cond.end.198, %cond.end.170, %if.then.128, %if.then.105, %if.then.99
  %172 = load i32, i32* %pos, align 4
  %inc385 = add nsw i32 %172, 1
  store i32 %inc385, i32* %pos, align 4
  br label %for.cond.90

for.end.386:                                      ; preds = %for.cond.90
  %173 = load i32, i32* @debug, align 4
  %and387 = and i32 %173, 16384
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %cond.false.390, label %cond.true.389

cond.true.389:                                    ; preds = %for.end.386
  br label %cond.end.392

cond.false.390:                                   ; preds = %for.end.386
  %call391 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0))
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.false.390, %cond.true.389
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.392, %cond.end.377, %cond.end.320, %cond.end.269, %if.end.229, %if.end.209, %cond.end.158, %cond.end.149
  %174 = load i32, i32* %retval
  ret i32 %174
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @analyze_neighbor(i32 %pos, i32* %found_black, i32* %found_white) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %found_black.addr = alloca i32*, align 8
  %found_white.addr = alloca i32*, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i32* %found_black, i32** %found_black.addr, align 8
  store i32* %found_white, i32** %found_white.addr, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.15
    i32 1, label %sw.bb.39
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32*, i32** %found_black.addr, align 8
  %3 = load i32, i32* %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  %4 = load i32, i32* %pos.addr, align 4
  %call = call i32 @living_neighbor(i32 %4, i32 2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %pos.addr, align 4
  %call3 = call i32 @safe_move(i32 %5, i32 1)
  %cmp = icmp ne i32 %call3, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load i32*, i32** %found_black.addr, align 8
  store i32 1, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %sw.bb
  %7 = load i32*, i32** %found_white.addr, align 8
  %8 = load i32, i32* %7, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end.14, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %9 = load i32, i32* %pos.addr, align 4
  %call7 = call i32 @living_neighbor(i32 %9, i32 1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.14

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %10 = load i32, i32* %pos.addr, align 4
  %call10 = call i32 @safe_move(i32 %10, i32 2)
  %cmp11 = icmp ne i32 %call10, 5
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.9
  %11 = load i32*, i32** %found_white.addr, align 8
  store i32 1, i32* %11, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.9, %land.lhs.true.6, %if.end
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %12 = load i32, i32* %pos.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom16
  %inessential = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx17, i32 0, i32 12
  %13 = load i32, i32* %inessential, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %if.end.38, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %sw.bb.15
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom20
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx21, i32 0, i32 1
  %15 = load i32, i32* %id, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx23 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %16, i64 %idxprom22
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx23, i32 0, i32 6
  %17 = load i32, i32* %safety, align 4
  %cmp24 = icmp ne i32 %17, 5
  br i1 %cmp24, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %land.lhs.true.19
  %18 = load i32, i32* %pos.addr, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom27
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx28, i32 0, i32 16
  %19 = load i32, i32* %status, align 4
  %cmp29 = icmp eq i32 %19, 1
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom31
  %status33 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx32, i32 0, i32 16
  %21 = load i32, i32* %status33, align 4
  %cmp34 = icmp eq i32 %21, 3
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %lor.lhs.false, %if.then.26
  %22 = load i32*, i32** %found_black.addr, align 8
  store i32 1, i32* %22, align 4
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i32*, i32** %found_white.addr, align 8
  store i32 1, i32* %23, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true.19, %sw.bb.15
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %24 = load i32, i32* %pos.addr, align 4
  %idxprom40 = sext i32 %24 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom40
  %inessential42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx41, i32 0, i32 12
  %25 = load i32, i32* %inessential42, align 4
  %tobool43 = icmp ne i32 %25, 0
  br i1 %tobool43, label %if.end.68, label %land.lhs.true.44

land.lhs.true.44:                                 ; preds = %sw.bb.39
  %26 = load i32, i32* %pos.addr, align 4
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom45
  %id47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx46, i32 0, i32 1
  %27 = load i32, i32* %id47, align 4
  %idxprom48 = sext i32 %27 to i64
  %28 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx49 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i64 %idxprom48
  %safety50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx49, i32 0, i32 6
  %29 = load i32, i32* %safety50, align 4
  %cmp51 = icmp ne i32 %29, 5
  br i1 %cmp51, label %if.then.53, label %if.end.68

if.then.53:                                       ; preds = %land.lhs.true.44
  %30 = load i32, i32* %pos.addr, align 4
  %idxprom54 = sext i32 %30 to i64
  %arrayidx55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom54
  %status56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx55, i32 0, i32 16
  %31 = load i32, i32* %status56, align 4
  %cmp57 = icmp eq i32 %31, 1
  br i1 %cmp57, label %if.then.65, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.then.53
  %32 = load i32, i32* %pos.addr, align 4
  %idxprom60 = sext i32 %32 to i64
  %arrayidx61 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom60
  %status62 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx61, i32 0, i32 16
  %33 = load i32, i32* %status62, align 4
  %cmp63 = icmp eq i32 %33, 3
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %lor.lhs.false.59, %if.then.53
  %34 = load i32*, i32** %found_white.addr, align 8
  store i32 1, i32* %34, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %lor.lhs.false.59
  %35 = load i32*, i32** %found_black.addr, align 8
  store i32 1, i32* %35, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %land.lhs.true.44, %sw.bb.39
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.68, %if.end.38, %if.end.14
  ret void
}

declare i32 @gprintf(i8*, ...) #2

declare i32 @safe_move(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @filllib_confirm_safety(i32 %move, i32 %color, i32* %defense_point) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %defense_point.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %adj = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i32 0, i32* %apos, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32*, i32** %defense_point.addr, align 8
  %cmp1 = icmp ne i32* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 505, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %2 = load i32*, i32** %defense_point.addr, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %3 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %move.addr, align 4
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %4, %6
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* %color.addr, align 4
  %cmp8 = icmp eq i32 %conv, %8
  br i1 %cmp8, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.body
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %9, %11
  store i32 %add13, i32* %apos, align 4
  br label %for.end

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %13 = load i32, i32* %apos, align 4
  %cmp15 = icmp eq i32 %13, 0
  br i1 %cmp15, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.37, %if.then.17
  %14 = load i32, i32* %k, align 4
  %cmp19 = icmp slt i32 %14, 4
  br i1 %cmp19, label %for.body.21, label %for.end.39

for.body.21:                                      ; preds = %for.cond.18
  %15 = load i32, i32* %move.addr, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom22
  %17 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %15, %17
  store i32 %add24, i32* %pos2, align 4
  %18 = load i32, i32* %pos2, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %20 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %20
  %cmp28 = icmp eq i32 %conv27, %sub
  br i1 %cmp28, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.body.21
  %21 = load i32, i32* %color.addr, align 4
  %22 = load i32, i32* %move.addr, align 4
  %23 = load i32, i32* %pos2, align 4
  %call = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %21, i32 0, i32 1, i32 %22, i32 %23)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.36, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %pos2, align 4
  %call31 = call i32 @chainlinks(i32 %24, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i32 0, i32 0))
  store i32 %call31, i32* %adj, align 4
  %25 = load i32, i32* %adj, align 4
  %cmp32 = icmp eq i32 %25, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  %26 = load i32, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i32 0, i64 0), align 4
  store i32 %26, i32* %apos, align 4
  br label %for.end.39

if.end.36:                                        ; preds = %land.lhs.true, %for.body.21
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %27 = load i32, i32* %k, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %k, align 4
  br label %for.cond.18

for.end.39:                                       ; preds = %if.end.35, %for.cond.18
  br label %if.end.40

if.end.40:                                        ; preds = %for.end.39, %for.end
  %28 = load i32, i32* %apos, align 4
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %if.then.43, label %if.end.64

if.then.43:                                       ; preds = %if.end.40
  store i32 4, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.61, %if.then.43
  %29 = load i32, i32* %k, align 4
  %cmp45 = icmp slt i32 %29, 8
  br i1 %cmp45, label %for.body.47, label %for.end.63

for.body.47:                                      ; preds = %for.cond.44
  %30 = load i32, i32* %move.addr, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom48
  %32 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %30, %32
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %33 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %33 to i32
  %34 = load i32, i32* %color.addr, align 4
  %cmp54 = icmp eq i32 %conv53, %34
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %for.body.47
  %35 = load i32, i32* %move.addr, align 4
  %36 = load i32, i32* %k, align 4
  %idxprom57 = sext i32 %36 to i64
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom57
  %37 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %35, %37
  store i32 %add59, i32* %apos, align 4
  br label %for.end.63

if.end.60:                                        ; preds = %for.body.47
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %38 = load i32, i32* %k, align 4
  %inc62 = add nsw i32 %38, 1
  store i32 %inc62, i32* %k, align 4
  br label %for.cond.44

for.end.63:                                       ; preds = %if.then.56, %for.cond.44
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %if.end.40
  %39 = load i32, i32* %apos, align 4
  %cmp65 = icmp eq i32 %39, 0
  br i1 %cmp65, label %if.then.67, label %if.end.89

if.then.67:                                       ; preds = %if.end.64
  store i32 0, i32* %k, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.86, %if.then.67
  %40 = load i32, i32* %k, align 4
  %cmp69 = icmp slt i32 %40, 4
  br i1 %cmp69, label %for.body.71, label %for.end.88

for.body.71:                                      ; preds = %for.cond.68
  %41 = load i32, i32* %move.addr, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom72
  %43 = load i32, i32* %arrayidx73, align 4
  %mul = mul nsw i32 2, %43
  %add74 = add nsw i32 %41, %mul
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom75
  %44 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %44 to i32
  %45 = load i32, i32* %color.addr, align 4
  %cmp78 = icmp eq i32 %conv77, %45
  br i1 %cmp78, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %for.body.71
  %46 = load i32, i32* %move.addr, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom81
  %48 = load i32, i32* %arrayidx82, align 4
  %mul83 = mul nsw i32 2, %48
  %add84 = add nsw i32 %46, %mul83
  store i32 %add84, i32* %apos, align 4
  br label %for.end.88

if.end.85:                                        ; preds = %for.body.71
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %49 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %49, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond.68

for.end.88:                                       ; preds = %if.then.80, %for.cond.68
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.end.64
  %50 = load i32, i32* %apos, align 4
  %cmp90 = icmp eq i32 %50, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.89
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.89
  %51 = load i32, i32* @verbose, align 4
  store i32 %51, i32* %save_verbose, align 4
  %52 = load i32, i32* @verbose, align 4
  %cmp94 = icmp sgt i32 %52, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  %53 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.93
  %54 = load i32, i32* %move.addr, align 4
  %55 = load i32, i32* %apos, align 4
  %call98 = call i32 @owl_does_defend(i32 %54, i32 %55, i32* null)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end.101, label %if.then.100

if.then.100:                                      ; preds = %if.end.97
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.97
  %56 = load i32, i32* %save_verbose, align 4
  store i32 %56, i32* @verbose, align 4
  %57 = load i32, i32* %move.addr, align 4
  %58 = load i32, i32* %color.addr, align 4
  %59 = load i32*, i32** %defense_point.addr, align 8
  %call102 = call i32 @confirm_safety(i32 %57, i32 %58, i32* %59, i8* null)
  store i32 %call102, i32* %retval
  br label %return

return:                                           ; preds = %if.end.101, %if.then.100, %if.then.92, %if.then.34
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #2

declare void @popgo() #2

; Function Attrs: nounwind uwtable
define internal i32 @find_backfilling_move(i32 %move, i32 %color, i32* %backfill_move) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %backfill_move.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %liberties = alloca i32, align 4
  %neighbors = alloca i32, align 4
  %found_one = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %extra_pop = alloca i32, align 4
  %success = alloca i32, align 4
  %acode = alloca i32, align 4
  %saved_move = alloca i32, align 4
  %opponent_libs = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %backfill_move, i32** %backfill_move.addr, align 8
  store i32 0, i32* %found_one, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %bpos, align 4
  store i32 0, i32* %extra_pop, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %saved_move, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %move.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %2, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %move.addr, align 4
  %call1 = call i32 @attack(i32 %3, i32* %apos)
  store i32 %call1, i32* %acode, align 4
  %4 = load i32, i32* %acode, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %apos, align 4
  %cmp2 = icmp sgt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  br label %if.end.4

if.else:                                          ; preds = %land.lhs.true, %if.end
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i32 378, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %6 = load i32, i32* %move.addr, align 4
  %call5 = call i32 @findlib(i32 %6, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @libs, i32 0, i32 0))
  store i32 %call5, i32* %liberties, align 4
  %7 = load i32, i32* %move.addr, align 4
  %call6 = call i32 @chainlinks(i32 %7, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i32 0, i32 0))
  store i32 %call6, i32* %neighbors, align 4
  call void @popgo()
  store i32 1, i32* %opponent_libs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %if.end.4
  %8 = load i32, i32* %opponent_libs, align 4
  %cmp7 = icmp sle i32 %8, 5
  br i1 %cmp7, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %neighbors, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %opponent_libs, align 4
  %cmp11 = icmp slt i32 %11, 5
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %for.body.10
  %12 = load i32, i32* %k, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %call13 = call i32 @countlib(i32 %13)
  %14 = load i32, i32* %opponent_libs, align 4
  %cmp14 = icmp ne i32 %call13, %14
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12
  br label %for.inc

if.end.16:                                        ; preds = %land.lhs.true.12, %for.body.10
  %15 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i32 0, i64 %idxprom17
  %16 = load i32, i32* %arrayidx18, align 4
  %call19 = call i32 @attack(i32 %16, i32* %bpos)
  %cmp20 = icmp eq i32 %call19, 5
  br i1 %cmp20, label %if.then.21, label %if.end.29

if.then.21:                                       ; preds = %if.end.16
  %17 = load i32, i32* %bpos, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i32 0, i64 %idxprom22
  %19 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @liberty_of_string(i32 %17, i32 %19)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.21
  %20 = load i32, i32* %bpos, align 4
  %21 = load i32*, i32** %backfill_move.addr, align 8
  store i32 %20, i32* %21, align 4
  store i32 1, i32* %retval
  br label %return

if.else.27:                                       ; preds = %if.then.21
  %22 = load i32, i32* %bpos, align 4
  store i32 %22, i32* %saved_move, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.29, %if.then.15
  %23 = load i32, i32* %k, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %24 = load i32, i32* %opponent_libs, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %opponent_libs, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %25 = load i32, i32* %found_one, align 4
  %tobool33 = icmp ne i32 %25, 0
  br i1 %tobool33, label %if.end.49, label %if.then.34

if.then.34:                                       ; preds = %for.end.32
  store i32 0, i32* %k, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.46, %if.then.34
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %liberties, align 4
  %cmp36 = icmp slt i32 %26, %27
  br i1 %cmp36, label %for.body.37, label %for.end.48

for.body.37:                                      ; preds = %for.cond.35
  %28 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i32 0, i64 %idxprom38
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %color.addr, align 4
  %call40 = call i32 @safe_move(i32 %29, i32 %30)
  %cmp41 = icmp eq i32 %call40, 5
  br i1 %cmp41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.body.37
  %31 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i32 0, i64 %idxprom43
  %32 = load i32, i32* %arrayidx44, align 4
  %33 = load i32*, i32** %backfill_move.addr, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %found_one, align 4
  br label %for.end.48

if.end.45:                                        ; preds = %for.body.37
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %34 = load i32, i32* %k, align 4
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, i32* %k, align 4
  br label %for.cond.35

for.end.48:                                       ; preds = %if.then.42, %for.cond.35
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %for.end.32
  %35 = load i32, i32* %found_one, align 4
  %tobool50 = icmp ne i32 %35, 0
  br i1 %tobool50, label %if.end.67, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %36 = load i32, i32* %move.addr, align 4
  %37 = load i32, i32* %color.addr, align 4
  %38 = load i32, i32* %move.addr, align 4
  %call52 = call i32 @trymove(i32 %36, i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %38, i32 0, i32 0)
  %39 = load i32, i32* %move.addr, align 4
  call void @find_proper_superstring_liberties(i32 %39, i32* %liberties, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @libs, i32 0, i32 0), i32 0)
  call void @popgo()
  store i32 0, i32* %k, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.64, %if.then.51
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %liberties, align 4
  %cmp54 = icmp slt i32 %40, %41
  br i1 %cmp54, label %for.body.55, label %for.end.66

for.body.55:                                      ; preds = %for.cond.53
  %42 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i32 0, i64 %idxprom56
  %43 = load i32, i32* %arrayidx57, align 4
  %44 = load i32, i32* %color.addr, align 4
  %call58 = call i32 @safe_move(i32 %43, i32 %44)
  %cmp59 = icmp eq i32 %call58, 5
  br i1 %cmp59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %for.body.55
  %45 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i32 0, i64 %idxprom61
  %46 = load i32, i32* %arrayidx62, align 4
  %47 = load i32*, i32** %backfill_move.addr, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %found_one, align 4
  br label %for.end.66

if.end.63:                                        ; preds = %for.body.55
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %48 = load i32, i32* %k, align 4
  %inc65 = add nsw i32 %48, 1
  store i32 %inc65, i32* %k, align 4
  br label %for.cond.53

for.end.66:                                       ; preds = %if.then.60, %for.cond.53
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.66, %if.end.49
  %49 = load i32, i32* %found_one, align 4
  %tobool68 = icmp ne i32 %49, 0
  br i1 %tobool68, label %if.end.89, label %if.then.69

if.then.69:                                       ; preds = %if.end.67
  %50 = load i32, i32* %move.addr, align 4
  %51 = load i32, i32* %color.addr, align 4
  %52 = load i32, i32* %move.addr, align 4
  %call70 = call i32 @trymove(i32 %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %52, i32 0, i32 0)
  %53 = load i32, i32* %move.addr, align 4
  call void @superstring_chainlinks(i32 %53, i32* %neighbors, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i32 0, i32 0), i32 4)
  call void @popgo()
  store i32 0, i32* %k, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.86, %if.then.69
  %54 = load i32, i32* %k, align 4
  %55 = load i32, i32* %neighbors, align 4
  %cmp72 = icmp slt i32 %54, %55
  br i1 %cmp72, label %for.body.73, label %for.end.88

for.body.73:                                      ; preds = %for.cond.71
  %56 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %56 to i64
  %arrayidx75 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i32 0, i64 %idxprom74
  %57 = load i32, i32* %arrayidx75, align 4
  %call76 = call i32 @attack(i32 %57, i32* %bpos)
  %cmp77 = icmp eq i32 %call76, 5
  br i1 %cmp77, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %for.body.73
  %58 = load i32, i32* %bpos, align 4
  %59 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i32 0, i64 %idxprom79
  %60 = load i32, i32* %arrayidx80, align 4
  %call81 = call i32 @liberty_of_string(i32 %58, i32 %60)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.78
  %61 = load i32, i32* %bpos, align 4
  %62 = load i32*, i32** %backfill_move.addr, align 8
  store i32 %61, i32* %62, align 4
  store i32 1, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.then.78
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body.73
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %63 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %63, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond.71

for.end.88:                                       ; preds = %for.cond.71
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.end.67
  %64 = load i32, i32* %found_one, align 4
  %tobool90 = icmp ne i32 %64, 0
  br i1 %tobool90, label %if.then.91, label %if.end.109

if.then.91:                                       ; preds = %if.end.89
  %65 = load i32*, i32** %backfill_move.addr, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %color.addr, align 4
  %68 = load i32, i32* %move.addr, align 4
  %call92 = call i32 @trymove(i32 %66, i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %68, i32 0, i32 0)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.91
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.91
  %69 = load i32, i32* %apos, align 4
  %70 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %70
  %71 = load i32, i32* %move.addr, align 4
  %call96 = call i32 @trymove(i32 %69, i32 %sub, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 %71, i32 0, i32 0)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.95
  store i32 1, i32* %extra_pop, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.95
  %72 = load i32, i32* %move.addr, align 4
  %73 = load i32, i32* %color.addr, align 4
  %call100 = call i32 @safe_move(i32 %72, i32 %73)
  %cmp101 = icmp eq i32 %call100, 5
  br i1 %cmp101, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.end.99
  store i32 1, i32* %success, align 4
  br label %if.end.105

if.else.103:                                      ; preds = %if.end.99
  %74 = load i32, i32* %move.addr, align 4
  %75 = load i32, i32* %color.addr, align 4
  %76 = load i32*, i32** %backfill_move.addr, align 8
  %call104 = call i32 @find_backfilling_move(i32 %74, i32 %75, i32* %76)
  store i32 %call104, i32* %success, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.103, %if.then.102
  %77 = load i32, i32* %extra_pop, align 4
  %tobool106 = icmp ne i32 %77, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  call void @popgo()
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  call void @popgo()
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.89
  %78 = load i32, i32* %success, align 4
  %tobool110 = icmp ne i32 %78, 0
  br i1 %tobool110, label %if.end.114, label %land.lhs.true.111

land.lhs.true.111:                                ; preds = %if.end.109
  %79 = load i32, i32* %saved_move, align 4
  %cmp112 = icmp ne i32 %79, 0
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.111
  %80 = load i32, i32* %saved_move, align 4
  %81 = load i32*, i32** %backfill_move.addr, align 8
  store i32 %80, i32* %81, align 4
  store i32 1, i32* %success, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.111, %if.end.109
  %82 = load i32, i32* %success, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %if.end.114, %if.then.94, %if.then.83, %if.then.26, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @is_legal(i32, i32) #2

declare i32 @does_capture_something(i32, i32) #2

declare i32 @findlib(i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @living_neighbor(i32 %pos, i32 %color) #0 {
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
  %5 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %conv, %5
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %pos.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %6, %8
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 16
  %9 = load i32, i32* %status, align 4
  %cmp10 = icmp ne i32 %9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @attack(i32, i32*) #2

declare void @abortgo(i8*, i32, i8*, i32, i32) #2

declare i32 @chainlinks(i32, i32*) #2

declare i32 @countlib(i32) #2

declare i32 @liberty_of_string(i32, i32) #2

declare void @find_proper_superstring_liberties(i32, i32*, i32*, i32) #2

declare void @superstring_chainlinks(i32, i32*, i32*, i32) #2

declare i32 @play_attack_defend_n(i32, i32, i32, ...) #2

declare i32 @owl_does_defend(i32, i32, i32*) #2

declare i32 @confirm_safety(i32, i32, i32*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
