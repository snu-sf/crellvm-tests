; ModuleID = 'engine/handicap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.handicap_match = type { i32, i32, %struct.pattern*, i32 }

@board_size = external global i32, align 4
@places = internal constant [9 x [2 x i32]] [[2 x i32] [i32 2, i32 -2], [2 x i32] [i32 -2, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -2, i32 -2], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 -2], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 -2, i32 0], [2 x i32] zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"engine/handicap.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"handicap == 0 || handicap >= 2\00", align 1
@total_handicap_stones = internal global i32 -1, align 4
@remaining_handicap_stones = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"remaining_handicap_stones >= 0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"total_handicap_stones >= 0\00", align 1
@number_of_matches = internal global i32 0, align 4
@handipat_db = external global %struct.pattern_db, align 8
@handicap_matches = internal global [40 x %struct.handicap_match] zeroinitializer, align 16
@transformation = external global [1369 x [8 x i32]], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"r >= 0 && r < 40\00", align 1

; Function Attrs: nounwind uwtable
define i32 @place_fixed_handicap(i32 %handicap) #0 {
entry:
  %retval = alloca i32, align 4
  %handicap.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %maxhand = alloca i32, align 4
  %three = alloca i32, align 4
  %mid = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %handicap, i32* %handicap.addr, align 4
  %0 = load i32, i32* @board_size, align 4
  %cmp = icmp sgt i32 %0, 11
  %cond = select i1 %cmp, i32 3, i32 2
  store i32 %cond, i32* %three, align 4
  %1 = load i32, i32* @board_size, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %mid, align 4
  %2 = load i32, i32* %handicap.addr, align 4
  store i32 %2, i32* %retval1, align 4
  %3 = load i32, i32* %handicap.addr, align 4
  %cmp2 = icmp slt i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @board_size, align 4
  %rem = srem i32 %4, 2
  %cmp3 = icmp eq i32 %rem, 1
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @board_size, align 4
  %cmp4 = icmp sge i32 %5, 9
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  store i32 9, i32* %maxhand, align 4
  br label %if.end.10

if.else:                                          ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* @board_size, align 4
  %cmp6 = icmp sge i32 %6, 7
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i32 4, i32* %maxhand, align 4
  br label %if.end.9

if.else.8:                                        ; preds = %if.else
  store i32 0, i32* %maxhand, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.5
  %7 = load i32, i32* %handicap.addr, align 4
  %8 = load i32, i32* %maxhand, align 4
  %cmp11 = icmp sgt i32 %7, %8
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %9 = load i32, i32* %maxhand, align 4
  store i32 %9, i32* %handicap.addr, align 4
  %10 = load i32, i32* %maxhand, align 4
  store i32 %10, i32* %retval1, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %11 = load i32, i32* %handicap.addr, align 4
  %cmp14 = icmp eq i32 %11, 5
  br i1 %cmp14, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.13
  %12 = load i32, i32* %handicap.addr, align 4
  %cmp15 = icmp eq i32 %12, 7
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %lor.lhs.false, %if.end.13
  %13 = load i32, i32* %mid, align 4
  %mul = mul nsw i32 %13, 20
  %add = add nsw i32 21, %mul
  %14 = load i32, i32* %mid, align 4
  %add17 = add nsw i32 %add, %14
  call void @add_stone(i32 %add17, i32 2)
  %15 = load i32, i32* %handicap.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %handicap.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %lor.lhs.false
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %16 = load i32, i32* %x, align 4
  %17 = load i32, i32* %handicap.addr, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %x, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @places, i32 0, i64 %idxprom
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %19 = load i32, i32* %arrayidx20, align 4
  store i32 %19, i32* %i, align 4
  %20 = load i32, i32* %x, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @places, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  %21 = load i32, i32* %arrayidx23, align 4
  store i32 %21, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %cmp24 = icmp eq i32 %22, 2
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  %23 = load i32, i32* %three, align 4
  store i32 %23, i32* %i, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.body
  %24 = load i32, i32* %i, align 4
  %cmp27 = icmp eq i32 %24, -2
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %25 = load i32, i32* %three, align 4
  %sub = sub nsw i32 0, %25
  store i32 %sub, i32* %i, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %26 = load i32, i32* %j, align 4
  %cmp30 = icmp eq i32 %26, 2
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %27 = load i32, i32* %three, align 4
  store i32 %27, i32* %j, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  %28 = load i32, i32* %j, align 4
  %cmp33 = icmp eq i32 %28, -2
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.32
  %29 = load i32, i32* %three, align 4
  %sub35 = sub nsw i32 0, %29
  store i32 %sub35, i32* %j, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.32
  %30 = load i32, i32* %i, align 4
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %31 = load i32, i32* %mid, align 4
  store i32 %31, i32* %i, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  %32 = load i32, i32* %j, align 4
  %cmp40 = icmp eq i32 %32, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %33 = load i32, i32* %mid, align 4
  store i32 %33, i32* %j, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %34 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %34, 0
  br i1 %cmp43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.42
  %35 = load i32, i32* @board_size, align 4
  %sub45 = sub nsw i32 %35, 1
  %36 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %36, %sub45
  store i32 %add46, i32* %i, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.42
  %37 = load i32, i32* %j, align 4
  %cmp48 = icmp slt i32 %37, 0
  br i1 %cmp48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.47
  %38 = load i32, i32* @board_size, align 4
  %sub50 = sub nsw i32 %38, 1
  %39 = load i32, i32* %j, align 4
  %add51 = add nsw i32 %39, %sub50
  store i32 %add51, i32* %j, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.47
  %40 = load i32, i32* %i, align 4
  %mul53 = mul nsw i32 %40, 20
  %add54 = add nsw i32 21, %mul53
  %41 = load i32, i32* %j, align 4
  %add55 = add nsw i32 %add54, %41
  call void @add_stone(i32 %add55, i32 2)
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %42 = load i32, i32* %x, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %retval1, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare void @add_stone(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @place_free_handicap(i32 %handicap) #0 {
entry:
  %retval = alloca i32, align 4
  %handicap.addr = alloca i32, align 4
  %move = alloca i32, align 4
  store i32 %handicap, i32* %handicap.addr, align 4
  %0 = load i32, i32* %handicap.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %handicap.addr, align 4
  %cmp1 = icmp sge i32 %1, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %handicap.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i32, i32* %handicap.addr, align 4
  store i32 %3, i32* @total_handicap_stones, align 4
  %4 = load i32, i32* %handicap.addr, align 4
  store i32 %4, i32* @remaining_handicap_stones, align 4
  call void @add_stone(i32 21, i32 2)
  %5 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %5, 1
  %add = add nsw i32 21, %sub
  call void @add_stone(i32 %add, i32 2)
  %6 = load i32, i32* @board_size, align 4
  %sub5 = sub nsw i32 %6, 1
  %mul = mul nsw i32 %sub5, 20
  %add6 = add nsw i32 21, %mul
  %add7 = add nsw i32 %add6, 0
  call void @add_stone(i32 %add7, i32 2)
  %7 = load i32, i32* @board_size, align 4
  %sub8 = sub nsw i32 %7, 1
  %mul9 = mul nsw i32 %sub8, 20
  %add10 = add nsw i32 21, %mul9
  %8 = load i32, i32* @board_size, align 4
  %sub11 = sub nsw i32 %8, 1
  %add12 = add nsw i32 %add10, %sub11
  call void @add_stone(i32 %add12, i32 2)
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.4
  %9 = load i32, i32* @remaining_handicap_stones, align 4
  %cmp13 = icmp sgt i32 %9, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @find_free_handicap_pattern()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %while.body
  br label %while.end

if.end.15:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.14, %while.cond
  call void @remove_stone(i32 21)
  %10 = load i32, i32* @board_size, align 4
  %sub16 = sub nsw i32 %10, 1
  %add17 = add nsw i32 21, %sub16
  call void @remove_stone(i32 %add17)
  %11 = load i32, i32* @board_size, align 4
  %sub18 = sub nsw i32 %11, 1
  %mul19 = mul nsw i32 %sub18, 20
  %add20 = add nsw i32 21, %mul19
  %add21 = add nsw i32 %add20, 0
  call void @remove_stone(i32 %add21)
  %12 = load i32, i32* @board_size, align 4
  %sub22 = sub nsw i32 %12, 1
  %mul23 = mul nsw i32 %sub22, 20
  %add24 = add nsw i32 21, %mul23
  %13 = load i32, i32* @board_size, align 4
  %sub25 = sub nsw i32 %13, 1
  %add26 = add nsw i32 %add24, %sub25
  call void @remove_stone(i32 %add26)
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.35, %while.end
  %14 = load i32, i32* @remaining_handicap_stones, align 4
  %cmp28 = icmp sgt i32 %14, 0
  br i1 %cmp28, label %while.body.29, label %while.end.36

while.body.29:                                    ; preds = %while.cond.27
  %call30 = call i32 @genmove_conservative(i32* null, i32* null, i32 2)
  %call31 = call i32 @aftermath_genmove(i32* %move, i32 2, i32* null, i32 0)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %while.body.29
  %15 = load i32, i32* %move, align 4
  call void @add_stone(i32 %15, i32 2)
  %16 = load i32, i32* @remaining_handicap_stones, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* @remaining_handicap_stones, align 4
  br label %if.end.35

if.else.34:                                       ; preds = %while.body.29
  br label %while.end.36

if.end.35:                                        ; preds = %if.then.33
  br label %while.cond.27

while.end.36:                                     ; preds = %if.else.34, %while.cond.27
  %17 = load i32, i32* @remaining_handicap_stones, align 4
  %18 = load i32, i32* %handicap.addr, align 4
  %sub37 = sub nsw i32 %18, %17
  store i32 %sub37, i32* %handicap.addr, align 4
  store i32 -1, i32* @total_handicap_stones, align 4
  store i32 -1, i32* @remaining_handicap_stones, align 4
  %19 = load i32, i32* %handicap.addr, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %while.end.36, %if.then.3
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_free_handicap_pattern() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %highest_value = alloca i32, align 4
  %sum_values = alloca i32, align 4
  %r = alloca i32, align 4
  %anchor = alloca i32, align 4
  %pattern = alloca %struct.pattern*, align 8
  %ll = alloca i32, align 4
  %move = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 -1, i32* %highest_value, align 4
  store i32 0, i32* %sum_values, align 4
  store i32 0, i32* @number_of_matches, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @free_handicap_callback, i32 2, %struct.pattern_db* @handipat_db, i8* null, i8* null)
  %0 = load i32, i32* @number_of_matches, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* @number_of_matches, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %highest_value, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom
  %value = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %value, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom4
  %value6 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %value6, align 4
  store i32 %7, i32* %highest_value, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.31, %for.end
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* @number_of_matches, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.10, label %for.end.33

for.body.10:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom11
  %value13 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx12, i32 0, i32 0
  %12 = load i32, i32* %value13, align 4
  %13 = load i32, i32* %highest_value, align 4
  %sub = sub nsw i32 %13, 10
  %cmp14 = icmp slt i32 %12, %sub
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body.10
  %14 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom16
  %value18 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx17, i32 0, i32 0
  store i32 0, i32* %value18, align 4
  br label %if.end.26

if.else:                                          ; preds = %for.body.10
  %15 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom19
  %value21 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx20, i32 0, i32 0
  %16 = load i32, i32* %value21, align 4
  %17 = load i32, i32* %highest_value, align 4
  %sub22 = sub nsw i32 %16, %17
  %add = add nsw i32 %sub22, 10
  %shl = shl i32 1, %add
  %18 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom23
  %value25 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx24, i32 0, i32 0
  store i32 %shl, i32* %value25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.15
  %19 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom27
  %value29 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx28, i32 0, i32 0
  %20 = load i32, i32* %value29, align 4
  %21 = load i32, i32* %sum_values, align 4
  %add30 = add nsw i32 %21, %20
  store i32 %add30, i32* %sum_values, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.26
  %22 = load i32, i32* %k, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %k, align 4
  br label %for.cond.8

for.end.33:                                       ; preds = %for.cond.8
  %call = call i32 @gg_rand()
  %23 = load i32, i32* %sum_values, align 4
  %rem = srem i32 %call, %23
  store i32 %rem, i32* %r, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.44, %for.end.33
  %24 = load i32, i32* %k, align 4
  %25 = load i32, i32* @number_of_matches, align 4
  %cmp35 = icmp slt i32 %24, %25
  br i1 %cmp35, label %for.body.36, label %for.end.46

for.body.36:                                      ; preds = %for.cond.34
  %26 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom37
  %value39 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx38, i32 0, i32 0
  %27 = load i32, i32* %value39, align 4
  %28 = load i32, i32* %r, align 4
  %sub40 = sub nsw i32 %28, %27
  store i32 %sub40, i32* %r, align 4
  %29 = load i32, i32* %r, align 4
  %cmp41 = icmp slt i32 %29, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.36
  br label %for.end.46

if.end.43:                                        ; preds = %for.body.36
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %30 = load i32, i32* %k, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* %k, align 4
  br label %for.cond.34

for.end.46:                                       ; preds = %if.then.42, %for.cond.34
  %31 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom47
  %anchor49 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx48, i32 0, i32 1
  %32 = load i32, i32* %anchor49, align 4
  store i32 %32, i32* %anchor, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom50
  %pattern52 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx51, i32 0, i32 2
  %34 = load %struct.pattern*, %struct.pattern** %pattern52, align 8
  store %struct.pattern* %34, %struct.pattern** %pattern, align 8
  %35 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %35 to i64
  %arrayidx54 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom53
  %ll55 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx54, i32 0, i32 3
  %36 = load i32, i32* %ll55, align 4
  store i32 %36, i32* %ll, align 4
  %37 = load i32, i32* %ll, align 4
  %idxprom56 = sext i32 %37 to i64
  %38 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %38, i32 0, i32 11
  %39 = load i32, i32* %move_offset, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx58, i32 0, i64 %idxprom56
  %40 = load i32, i32* %arrayidx59, align 4
  %41 = load i32, i32* %anchor, align 4
  %add60 = add nsw i32 %40, %41
  store i32 %add60, i32* %move, align 4
  %42 = load i32, i32* %move, align 4
  call void @add_stone(i32 %42, i32 2)
  %43 = load i32, i32* @remaining_handicap_stones, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* @remaining_handicap_stones, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.78, %for.end.46
  %44 = load i32, i32* %k, align 4
  %45 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 1
  %46 = load i32, i32* %patlen, align 4
  %cmp62 = icmp slt i32 %44, %46
  br i1 %cmp62, label %for.body.63, label %for.end.80

for.body.63:                                      ; preds = %for.cond.61
  %47 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %47 to i64
  %48 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %48, i32 0, i32 0
  %49 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx65 = getelementptr inbounds %struct.patval, %struct.patval* %49, i64 %idxprom64
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx65, i32 0, i32 1
  %50 = load i32, i32* %att, align 4
  %cmp66 = icmp eq i32 %50, 7
  br i1 %cmp66, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %for.body.63
  %51 = load i32, i32* %ll, align 4
  %idxprom68 = sext i32 %51 to i64
  %52 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %52 to i64
  %53 = load %struct.pattern*, %struct.pattern** %pattern, align 8
  %patn70 = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 0
  %54 = load %struct.patval*, %struct.patval** %patn70, align 8
  %arrayidx71 = getelementptr inbounds %struct.patval, %struct.patval* %54, i64 %idxprom69
  %offset = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx71, i32 0, i32 0
  %55 = load i32, i32* %offset, align 4
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx73, i32 0, i64 %idxprom68
  %56 = load i32, i32* %arrayidx74, align 4
  %57 = load i32, i32* %anchor, align 4
  %add75 = add nsw i32 %56, %57
  store i32 %add75, i32* %pos, align 4
  %58 = load i32, i32* %pos, align 4
  call void @add_stone(i32 %58, i32 2)
  %59 = load i32, i32* @remaining_handicap_stones, align 4
  %dec76 = add nsw i32 %59, -1
  store i32 %dec76, i32* @remaining_handicap_stones, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.67, %for.body.63
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %60 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %60, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond.61

for.end.80:                                       ; preds = %for.cond.61
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.80, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare void @remove_stone(i32) #1

declare i32 @genmove_conservative(i32*, i32*, i32) #1

declare i32 @aftermath_genmove(i32*, i32, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @free_handicap_remaining_stones() #0 {
entry:
  %0 = load i32, i32* @remaining_handicap_stones, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 414, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @remaining_handicap_stones, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @free_handicap_total_stones() #0 {
entry:
  %0 = load i32, i32* @total_handicap_stones, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 421, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @total_handicap_stones, align 4
  ret i32 %1
}

declare void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @free_handicap_callback(i32 %anchor, i32 %color, %struct.pattern* %pattern, i32 %ll, i8* %data) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %ll.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %number_of_stones = alloca i32, align 4
  %move = alloca i32, align 4
  %least_value = alloca i32, align 4
  store i32 %anchor, i32* %anchor.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 -1, i32* %r, align 4
  store i32 1, i32* %number_of_stones, align 4
  %0 = load i32, i32* %ll.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %move_offset = getelementptr inbounds %struct.pattern, %struct.pattern* %1, i32 0, i32 11
  %2 = load i32, i32* %move_offset, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load i32, i32* %anchor.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %move, align 4
  %5 = load i8*, i8** %data.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patlen = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i32 0, i32 1
  %8 = load i32, i32* %patlen, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %patn = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 0
  %11 = load %struct.patval*, %struct.patval** %patn, align 8
  %arrayidx4 = getelementptr inbounds %struct.patval, %struct.patval* %11, i64 %idxprom3
  %att = getelementptr inbounds %struct.patval, %struct.patval* %arrayidx4, i32 0, i32 1
  %12 = load i32, i32* %att, align 4
  %cmp5 = icmp eq i32 %12, 7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %number_of_stones, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %number_of_stones, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %k, align 4
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %number_of_stones, align 4
  %16 = load i32, i32* @remaining_handicap_stones, align 4
  %cmp7 = icmp sgt i32 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.end
  br label %return

if.end.9:                                         ; preds = %for.end
  %17 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper_flag = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 22
  %18 = load i32, i32* %autohelper_flag, align 4
  %and = and i32 %18, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.9
  %19 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %autohelper = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 24
  %20 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %autohelper, align 8
  %21 = load i32, i32* %ll.addr, align 4
  %22 = load i32, i32* %move, align 4
  %23 = load i32, i32* %color.addr, align 4
  %call = call i32 %20(i32 %21, i32 %22, i32 %23, i32 0)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.9
  %24 = load i32, i32* @number_of_matches, align 4
  %cmp15 = icmp slt i32 %24, 40
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %25 = load i32, i32* @number_of_matches, align 4
  store i32 %25, i32* %r, align 4
  %26 = load i32, i32* @number_of_matches, align 4
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, i32* @number_of_matches, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end.14
  %27 = load i32, i32* getelementptr inbounds ([40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 0, i32 0), align 4
  %add18 = add nsw i32 %27, 1
  store i32 %add18, i32* %least_value, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.30, %if.else
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* @number_of_matches, align 4
  %cmp20 = icmp slt i32 %28, %29
  br i1 %cmp20, label %for.body.21, label %for.end.32

for.body.21:                                      ; preds = %for.cond.19
  %30 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom22
  %value = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx23, i32 0, i32 0
  %31 = load i32, i32* %value, align 4
  %32 = load i32, i32* %least_value, align 4
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.body.21
  %33 = load i32, i32* %k, align 4
  store i32 %33, i32* %r, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom26
  %value28 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx27, i32 0, i32 0
  %35 = load i32, i32* %value28, align 4
  store i32 %35, i32* %least_value, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %for.body.21
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %36 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond.19

for.end.32:                                       ; preds = %for.cond.19
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %if.then.16
  %37 = load i32, i32* %r, align 4
  %cmp34 = icmp sge i32 %37, 0
  br i1 %cmp34, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %if.end.33
  %38 = load i32, i32* %r, align 4
  %cmp35 = icmp slt i32 %38, 40
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true
  br label %if.end.38

if.else.37:                                       ; preds = %land.lhs.true, %if.end.33
  call void @abortgo(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 404, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  %39 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %value39 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 15
  %40 = load float, float* %value39, align 4
  %conv = fptosi float %40 to i32
  %41 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom40
  %value42 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx41, i32 0, i32 0
  store i32 %conv, i32* %value42, align 4
  %42 = load i32, i32* %anchor.addr, align 4
  %43 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %43 to i64
  %arrayidx44 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom43
  %anchor45 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx44, i32 0, i32 1
  store i32 %42, i32* %anchor45, align 4
  %44 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %45 = load i32, i32* %r, align 4
  %idxprom46 = sext i32 %45 to i64
  %arrayidx47 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom46
  %pattern48 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx47, i32 0, i32 2
  store %struct.pattern* %44, %struct.pattern** %pattern48, align 8
  %46 = load i32, i32* %ll.addr, align 4
  %47 = load i32, i32* %r, align 4
  %idxprom49 = sext i32 %47 to i64
  %arrayidx50 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i32 0, i64 %idxprom49
  %ll51 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %arrayidx50, i32 0, i32 3
  store i32 %46, i32* %ll51, align 4
  br label %return

return:                                           ; preds = %if.end.38, %if.then.12, %if.then.8
  ret void
}

declare i32 @gg_rand() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
