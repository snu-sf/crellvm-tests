; ModuleID = 'engine/fuseki.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fullboard_pattern = type { %struct.patval*, i32, i8*, i32, float }
%struct.patval = type { i32, i32 }

@board_size = external global i32, align 4
@disable_fuseki = external global i32, align 4
@fusekidb = external global i32, align 4
@horizontally_symmetric = internal global i32 0, align 4
@vertically_symmetric = internal global i32 0, align 4
@diagonally_symmetric = internal global i32 0, align 4
@board = external global [421 x i8], align 16
@fuseki9 = external global [0 x %struct.fullboard_pattern], align 8
@fuseki13 = external global [0 x %struct.fullboard_pattern], align 8
@fuseki19 = external global [0 x %struct.fullboard_pattern], align 8
@num_fuseki_moves = internal global i32 0, align 4
@fuseki_total_value = internal global i32 0, align 4
@fuseki_value = internal global [361 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [16 x i8] c"engine/fuseki.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"k < num_fuseki_moves\00", align 1
@fuseki_moves = internal global [361 x i32] zeroinitializer, align 16
@verbose = external global i32, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Fuseki database move at %1m with relative weight %d, pattern %s+%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Fuseki Player suggests %1m with value %d\0A\00", align 1
@small_board = internal global [8 x i32] [i32 50, i32 18, i32 17, i32 15, i32 0, i32 0, i32 0, i32 0], align 16
@medium_board = internal global [8 x i32] [i32 30, i32 20, i32 20, i32 22, i32 2, i32 2, i32 2, i32 2], align 16
@large_board = internal global [8 x i32] [i32 15, i32 15, i32 15, i32 35, i32 5, i32 5, i32 5, i32 5], align 16
@corners = internal global [8 x [2 x i32]] [[2 x i32] [i32 3, i32 3], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 4], [2 x i32] [i32 5, i32 3], [2 x i32] [i32 3, i32 5], [2 x i32] [i32 5, i32 4], [2 x i32] [i32 4, i32 5]], align 16

; Function Attrs: nounwind uwtable
define void @fuseki(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %width = alloca i32, align 4
  %empty_corner_value = alloca i32, align 4
  %middle = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 -1, i32* %i, align 4
  store i32 -1, i32* %j, align 4
  %0 = load i32, i32* @board_size, align 4
  %mul = mul nsw i32 25, %0
  %div = sdiv i32 %mul, 19
  store i32 %div, i32* %empty_corner_value, align 4
  %1 = load i32, i32* @disable_fuseki, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.73

if.end:                                           ; preds = %entry
  call void @set_symmetries()
  %2 = load i32, i32* @fusekidb, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %color.addr, align 4
  %call = call i32 @search_fuseki_database(i32 %3)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %if.end.73

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %4 = load i32, i32* @board_size, align 4
  %cmp = icmp eq i32 %4, 9
  br i1 %cmp, label %land.lhs.true.5, label %if.end.9

land.lhs.true.5:                                  ; preds = %if.end.4
  %5 = load i32, i32* %color.addr, align 4
  %call6 = call i32 @stones_on_board(i32 %5)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.5
  store i32 5, i32* %empty_corner_value, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true.5, %if.end.4
  %6 = load i32, i32* @board_size, align 4
  %cmp10 = icmp sle i32 %6, 11
  br i1 %cmp10, label %if.then.11, label %if.end.22

if.then.11:                                       ; preds = %if.end.9
  %7 = load i32, i32* @board_size, align 4
  %div12 = sdiv i32 %7, 2
  store i32 %div12, i32* %middle, align 4
  %8 = load i32, i32* %middle, align 4
  %sub = sub nsw i32 %8, 2
  %9 = load i32, i32* %middle, align 4
  %add = add nsw i32 %9, 2
  %10 = load i32, i32* %middle, align 4
  %sub13 = sub nsw i32 %10, 2
  %11 = load i32, i32* %middle, align 4
  %add14 = add nsw i32 %11, 2
  %call15 = call i32 @openregion(i32 %sub, i32 %add, i32 %sub13, i32 %add14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.11
  %12 = load i32, i32* %middle, align 4
  %mul18 = mul nsw i32 %12, 20
  %add19 = add nsw i32 21, %mul18
  %13 = load i32, i32* %middle, align 4
  %add20 = add nsw i32 %add19, %13
  %14 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %add20, i32 45, i32 %14)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.9
  %15 = load i32, i32* @board_size, align 4
  %cmp23 = icmp slt i32 %15, 9
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  br label %if.end.73

if.end.25:                                        ; preds = %if.end.22
  %16 = load i32, i32* @board_size, align 4
  %cmp26 = icmp sge i32 %16, 18
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end.25
  store i32 8, i32* %width, align 4
  br label %if.end.33

if.else:                                          ; preds = %if.end.25
  %17 = load i32, i32* @board_size, align 4
  %cmp28 = icmp eq i32 %17, 9
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else
  store i32 5, i32* %width, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %if.else
  %18 = load i32, i32* @board_size, align 4
  %div31 = sdiv i32 %18, 2
  store i32 %div31, i32* %width, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.27
  %19 = load i32, i32* %width, align 4
  %sub34 = sub nsw i32 %19, 1
  %20 = load i32, i32* @board_size, align 4
  %21 = load i32, i32* %width, align 4
  %sub35 = sub nsw i32 %20, %21
  %22 = load i32, i32* @board_size, align 4
  %sub36 = sub nsw i32 %22, 1
  %call37 = call i32 @openregion(i32 0, i32 %sub34, i32 %sub35, i32 %sub36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.33
  call void @choose_corner_move(i32 1, i32* %i, i32* %j)
  %23 = load i32, i32* %i, align 4
  %mul40 = mul nsw i32 %23, 20
  %add41 = add nsw i32 21, %mul40
  %24 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %add41, %24
  %25 = load i32, i32* %empty_corner_value, align 4
  %26 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %add42, i32 %25, i32 %26)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.33
  %27 = load i32, i32* @board_size, align 4
  %28 = load i32, i32* %width, align 4
  %sub44 = sub nsw i32 %27, %28
  %29 = load i32, i32* @board_size, align 4
  %sub45 = sub nsw i32 %29, 1
  %30 = load i32, i32* %width, align 4
  %sub46 = sub nsw i32 %30, 1
  %call47 = call i32 @openregion(i32 %sub44, i32 %sub45, i32 0, i32 %sub46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.43
  call void @choose_corner_move(i32 2, i32* %i, i32* %j)
  %31 = load i32, i32* %i, align 4
  %mul50 = mul nsw i32 %31, 20
  %add51 = add nsw i32 21, %mul50
  %32 = load i32, i32* %j, align 4
  %add52 = add nsw i32 %add51, %32
  %33 = load i32, i32* %empty_corner_value, align 4
  %34 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %add52, i32 %33, i32 %34)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.43
  %35 = load i32, i32* @board_size, align 4
  %36 = load i32, i32* %width, align 4
  %sub54 = sub nsw i32 %35, %36
  %37 = load i32, i32* @board_size, align 4
  %sub55 = sub nsw i32 %37, 1
  %38 = load i32, i32* @board_size, align 4
  %39 = load i32, i32* %width, align 4
  %sub56 = sub nsw i32 %38, %39
  %40 = load i32, i32* @board_size, align 4
  %sub57 = sub nsw i32 %40, 1
  %call58 = call i32 @openregion(i32 %sub54, i32 %sub55, i32 %sub56, i32 %sub57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.64

if.then.60:                                       ; preds = %if.end.53
  call void @choose_corner_move(i32 3, i32* %i, i32* %j)
  %41 = load i32, i32* %i, align 4
  %mul61 = mul nsw i32 %41, 20
  %add62 = add nsw i32 21, %mul61
  %42 = load i32, i32* %j, align 4
  %add63 = add nsw i32 %add62, %42
  %43 = load i32, i32* %empty_corner_value, align 4
  %44 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %add63, i32 %43, i32 %44)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %if.end.53
  %45 = load i32, i32* %width, align 4
  %sub65 = sub nsw i32 %45, 1
  %46 = load i32, i32* %width, align 4
  %sub66 = sub nsw i32 %46, 1
  %call67 = call i32 @openregion(i32 0, i32 %sub65, i32 0, i32 %sub66)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.end.64
  call void @choose_corner_move(i32 0, i32* %i, i32* %j)
  %47 = load i32, i32* %i, align 4
  %mul70 = mul nsw i32 %47, 20
  %add71 = add nsw i32 21, %mul70
  %48 = load i32, i32* %j, align 4
  %add72 = add nsw i32 %add71, %48
  %49 = load i32, i32* %empty_corner_value, align 4
  %50 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %add72, i32 %49, i32 %50)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then, %if.then.3, %if.then.24, %if.then.69, %if.end.64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_symmetries() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 1, i32* @horizontally_symmetric, align 4
  store i32 1, i32* @vertically_symmetric, align 4
  store i32 1, i32* @diagonally_symmetric, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* @vertically_symmetric, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %3 = load i32, i32* @horizontally_symmetric, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* @diagonally_symmetric, align 4
  %tobool2 = icmp ne i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %tobool2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %5, %lor.end ]
  br i1 %6, label %for.body, label %for.end.56

for.body:                                         ; preds = %land.end
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* @board_size, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 20
  %add = add nsw i32 21, %mul
  %10 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %add, %10
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = load i32, i32* %i, align 4
  %mul7 = mul nsw i32 %12, 20
  %add8 = add nsw i32 21, %mul7
  %13 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %13, 1
  %14 = load i32, i32* %j, align 4
  %sub9 = sub nsw i32 %sub, %14
  %add10 = add nsw i32 %add8, %sub9
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %15 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv, %conv13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  store i32 0, i32* @horizontally_symmetric, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  %16 = load i32, i32* %i, align 4
  %mul16 = mul nsw i32 %16, 20
  %add17 = add nsw i32 21, %mul16
  %17 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %add17, %17
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %19 = load i32, i32* @board_size, align 4
  %sub22 = sub nsw i32 %19, 1
  %20 = load i32, i32* %i, align 4
  %sub23 = sub nsw i32 %sub22, %20
  %mul24 = mul nsw i32 %sub23, 20
  %add25 = add nsw i32 21, %mul24
  %21 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %add25, %21
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %cmp30 = icmp ne i32 %conv21, %conv29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  store i32 0, i32* @vertically_symmetric, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  %23 = load i32, i32* %i, align 4
  %mul34 = mul nsw i32 %23, 20
  %add35 = add nsw i32 21, %mul34
  %24 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %add35, %24
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom37
  %25 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %25 to i32
  %26 = load i32, i32* @board_size, align 4
  %sub40 = sub nsw i32 %26, 1
  %27 = load i32, i32* %j, align 4
  %sub41 = sub nsw i32 %sub40, %27
  %mul42 = mul nsw i32 %sub41, 20
  %add43 = add nsw i32 21, %mul42
  %28 = load i32, i32* @board_size, align 4
  %sub44 = sub nsw i32 %28, 1
  %29 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %sub44, %29
  %add46 = add nsw i32 %add43, %sub45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %30 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp ne i32 %conv39, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.33
  store i32 0, i32* @diagonally_symmetric, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end
  %32 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %32, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @search_fuseki_database(i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %database = alloca %struct.fullboard_pattern*, align 8
  %q = alloca i32, align 4
  %k = alloca i32, align 4
  %best_fuseki_value = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %call = call i32 @stones_on_board(i32 3)
  %cmp = icmp sgt i32 %call, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @board_size, align 4
  %cmp1 = icmp eq i32 %0, 9
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki9, i32 0, i32 0), %struct.fullboard_pattern** %database, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %1 = load i32, i32* @board_size, align 4
  %cmp3 = icmp eq i32 %1, 13
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki13, i32 0, i32 0), %struct.fullboard_pattern** %database, align 8
  br label %if.end.10

if.else.5:                                        ; preds = %if.else
  %2 = load i32, i32* @board_size, align 4
  %cmp6 = icmp eq i32 %2, 19
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.5
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki19, i32 0, i32 0), %struct.fullboard_pattern** %database, align 8
  br label %if.end.9

if.else.8:                                        ; preds = %if.else.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.4
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.2
  store i32 0, i32* @num_fuseki_moves, align 4
  store i32 0, i32* @fuseki_total_value, align 4
  %3 = load i32, i32* %color.addr, align 4
  %4 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %database, align 8
  call void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)* @fuseki_callback, i32 %3, %struct.fullboard_pattern* %4)
  %5 = load i32, i32* @num_fuseki_moves, align 4
  %cmp12 = icmp eq i32 %5, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %6 = load i32, i32* getelementptr inbounds ([361 x i32], [361 x i32]* @fuseki_value, i32 0, i64 0), align 4
  store i32 %6, i32* %best_fuseki_value, align 4
  %call15 = call i32 @gg_rand()
  %7 = load i32, i32* @fuseki_total_value, align 4
  %rem = srem i32 %call15, %7
  store i32 %rem, i32* %q, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %8 = load i32, i32* %k, align 4
  %9 = load i32, i32* @num_fuseki_moves, align 4
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %best_fuseki_value, align 4
  %div = sdiv i32 %12, 5
  %cmp17 = icmp slt i32 %11, %div
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i32 0, i64 %idxprom20
  %14 = load i32, i32* %arrayidx21, align 4
  %15 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %q, align 4
  %16 = load i32, i32* %q, align 4
  %cmp22 = icmp slt i32 %16, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  br label %for.end

if.end.24:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.23, %if.then.18, %for.cond
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* @num_fuseki_moves, align 4
  %cmp25 = icmp slt i32 %18, %19
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %for.end
  br label %if.end.28

if.else.27:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  %20 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i32 0, i64 %idxprom29
  %21 = load i32, i32* %arrayidx30, align 4
  %22 = load i32, i32* %color.addr, align 4
  call void @announce_move(i32 %21, i32 75, i32 %22)
  store i32 0, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.37, %if.end.28
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* @num_fuseki_moves, align 4
  %cmp32 = icmp slt i32 %23, %24
  br i1 %cmp32, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.31
  %25 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i32 0, i64 %idxprom34
  %26 = load i32, i32* %arrayidx35, align 4
  %call36 = call i32 @set_minimum_move_value(i32 %26, float 7.400000e+01)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.33
  %27 = load i32, i32* %k, align 4
  %inc38 = add nsw i32 %27, 1
  store i32 %inc38, i32* %k, align 4
  br label %for.cond.31

for.end.39:                                       ; preds = %for.cond.31
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.39, %if.then.13, %if.else.8, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @stones_on_board(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @openregion(i32 %i1, i32 %i2, i32 %j1, i32 %j2) #0 {
entry:
  %retval = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %j1.addr = alloca i32, align 4
  %j2.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %i1, i32* %i1.addr, align 4
  store i32 %i2, i32* %i2.addr, align 4
  store i32 %j1, i32* %j1.addr, align 4
  store i32 %j2, i32* %j2.addr, align 4
  %0 = load i32, i32* %i1.addr, align 4
  %1 = load i32, i32* %i2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i2.addr, align 4
  %3 = load i32, i32* %i1.addr, align 4
  %4 = load i32, i32* %j1.addr, align 4
  %5 = load i32, i32* %j2.addr, align 4
  %call = call i32 @openregion(i32 %2, i32 %3, i32 %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %j1.addr, align 4
  %7 = load i32, i32* %j2.addr, align 4
  %cmp1 = icmp sgt i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %i1.addr, align 4
  %9 = load i32, i32* %i2.addr, align 4
  %10 = load i32, i32* %j2.addr, align 4
  %11 = load i32, i32* %j1.addr, align 4
  %call3 = call i32 @openregion(i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %call3, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %12 = load i32, i32* %i1.addr, align 4
  store i32 %12, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end.4
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %i2.addr, align 4
  %cmp5 = icmp sle i32 %13, %14
  br i1 %cmp5, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j1.addr, align 4
  store i32 %15, i32* %y, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %j2.addr, align 4
  %cmp7 = icmp sle i32 %16, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %18, 20
  %add = add nsw i32 21, %mul
  %19 = load i32, i32* %y, align 4
  %add9 = add nsw i32 %add, %19
  %idxprom = sext i32 %add9 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  %cmp10 = icmp ne i32 %conv, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %21 = load i32, i32* %y, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %22 = load i32, i32* %x, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %x, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.16, %if.then.12, %if.then.2, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal void @announce_move(i32 %move, i32 %val, i32 %color) #0 {
entry:
  %move.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.68

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @horizontally_symmetric, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end.16

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %i, align 4
  %4 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  store i32 %sub3, i32* %j, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 2, %5
  %6 = load i32, i32* @board_size, align 4
  %sub4 = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %mul, %sub4
  %conv6 = zext i1 %cmp5 to i32
  %7 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %7, 1
  %conv8 = zext i1 %cmp7 to i32
  %xor = xor i32 %conv6, %conv8
  %tobool9 = icmp ne i32 %xor, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.then.2
  %8 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %8, 20
  %add = add nsw i32 21, %mul11
  %9 = load i32, i32* @board_size, align 4
  %sub12 = sub nsw i32 %9, 1
  %10 = load i32, i32* %j, align 4
  %sub13 = sub nsw i32 %sub12, %10
  %add14 = add nsw i32 %add, %sub13
  store i32 %add14, i32* %move.addr, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.then.2
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  %11 = load i32, i32* @vertically_symmetric, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %if.end.16
  %12 = load i32, i32* %move.addr, align 4
  %div19 = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div19, 1
  store i32 %sub20, i32* %i, align 4
  %13 = load i32, i32* %move.addr, align 4
  %rem21 = srem i32 %13, 20
  %sub22 = sub nsw i32 %rem21, 1
  store i32 %sub22, i32* %j, align 4
  %14 = load i32, i32* %i, align 4
  %mul23 = mul nsw i32 2, %14
  %15 = load i32, i32* @board_size, align 4
  %sub24 = sub nsw i32 %15, 1
  %cmp25 = icmp sgt i32 %mul23, %sub24
  %conv26 = zext i1 %cmp25 to i32
  %16 = load i32, i32* %color.addr, align 4
  %cmp27 = icmp eq i32 %16, 1
  %conv28 = zext i1 %cmp27 to i32
  %xor29 = xor i32 %conv26, %conv28
  %tobool30 = icmp ne i32 %xor29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %if.then.18
  %17 = load i32, i32* @board_size, align 4
  %sub32 = sub nsw i32 %17, 1
  %18 = load i32, i32* %i, align 4
  %sub33 = sub nsw i32 %sub32, %18
  %mul34 = mul nsw i32 %sub33, 20
  %add35 = add nsw i32 21, %mul34
  %19 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %add35, %19
  store i32 %add36, i32* %move.addr, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.31, %if.then.18
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.16
  %20 = load i32, i32* @diagonally_symmetric, align 4
  %tobool39 = icmp ne i32 %20, 0
  br i1 %tobool39, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %if.end.38
  %21 = load i32, i32* %move.addr, align 4
  %div41 = sdiv i32 %21, 20
  %sub42 = sub nsw i32 %div41, 1
  store i32 %sub42, i32* %i, align 4
  %22 = load i32, i32* %move.addr, align 4
  %rem43 = srem i32 %22, 20
  %sub44 = sub nsw i32 %rem43, 1
  store i32 %sub44, i32* %j, align 4
  %23 = load i32, i32* @board_size, align 4
  %sub45 = sub nsw i32 %23, 1
  %24 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %sub45, %24
  %25 = load i32, i32* %i, align 4
  %cmp47 = icmp sgt i32 %sub46, %25
  %conv48 = zext i1 %cmp47 to i32
  %26 = load i32, i32* %color.addr, align 4
  %cmp49 = icmp eq i32 %26, 1
  %conv50 = zext i1 %cmp49 to i32
  %xor51 = xor i32 %conv48, %conv50
  %tobool52 = icmp ne i32 %xor51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %if.then.40
  %27 = load i32, i32* @board_size, align 4
  %sub54 = sub nsw i32 %27, 1
  %28 = load i32, i32* %j, align 4
  %sub55 = sub nsw i32 %sub54, %28
  %mul56 = mul nsw i32 %sub55, 20
  %add57 = add nsw i32 21, %mul56
  %29 = load i32, i32* @board_size, align 4
  %sub58 = sub nsw i32 %29, 1
  %30 = load i32, i32* %i, align 4
  %sub59 = sub nsw i32 %sub58, %30
  %add60 = add nsw i32 %add57, %sub59
  store i32 %add60, i32* %move.addr, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %if.then.40
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.38
  %31 = load i32, i32* %move.addr, align 4
  %32 = load i32, i32* %val.addr, align 4
  %conv63 = sitofp i32 %32 to float
  %call = call i32 @set_minimum_move_value(i32 %31, float %conv63)
  %tobool64 = icmp ne i32 %call, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.62
  %33 = load i32, i32* @verbose, align 4
  %tobool66 = icmp ne i32 %33, 0
  br i1 %tobool66, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.65
  br label %cond.end

cond.false:                                       ; preds = %if.then.65
  %34 = load i32, i32* %move.addr, align 4
  %35 = load i32, i32* %val.addr, align 4
  %call67 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i32 %34, i32 %35)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.68

if.end.68:                                        ; preds = %if.then, %cond.end, %if.end.62
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @choose_corner_move(i32 %corner, i32* %m, i32* %n) #0 {
entry:
  %corner.addr = alloca i32, align 4
  %m.addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %table = alloca i32*, align 8
  %sum_of_weights = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 %corner, i32* %corner.addr, align 4
  store i32* %m, i32** %m.addr, align 8
  store i32* %n, i32** %n.addr, align 8
  store i32* null, i32** %table, align 8
  store i32 0, i32* %sum_of_weights, align 4
  %0 = load i32, i32* @board_size, align 4
  %cmp = icmp sle i32 %0, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @small_board, i32 0, i32 0), i32** %table, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %cmp1 = icmp sle i32 %1, 15
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @medium_board, i32 0, i32 0), i32** %table, align 8
  br label %if.end

if.else.3:                                        ; preds = %if.else
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @large_board, i32 0, i32 0), i32** %table, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %table, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %sum_of_weights, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %sum_of_weights, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call = call i32 @gg_rand()
  %8 = load i32, i32* %sum_of_weights, align 4
  %rem = srem i32 %call, %8
  store i32 %rem, i32* %q, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.14, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %9, 8
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.6
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32*, i32** %table, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %13 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %13, %12
  store i32 %sub, i32* %q, align 4
  %14 = load i32, i32* %q, align 4
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.8
  br label %for.end.16

if.end.13:                                        ; preds = %for.body.8
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %15 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.6

for.end.16:                                       ; preds = %if.then.12, %for.cond.6
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @corners, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx18, i32 0, i64 0
  %17 = load i32, i32* %arrayidx19, align 4
  %18 = load i32*, i32** %m.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @corners, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx21, i32 0, i64 1
  %20 = load i32, i32* %arrayidx22, align 4
  %21 = load i32*, i32** %n.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %corner.addr, align 4
  switch i32 %22, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
    i32 2, label %sw.bb.28
    i32 3, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %for.end.16
  %23 = load i32*, i32** %m.addr, align 8
  %24 = load i32, i32* %23, align 4
  %sub23 = sub nsw i32 %24, 1
  %25 = load i32*, i32** %m.addr, align 8
  store i32 %sub23, i32* %25, align 4
  %26 = load i32*, i32** %n.addr, align 8
  %27 = load i32, i32* %26, align 4
  %sub24 = sub nsw i32 %27, 1
  %28 = load i32*, i32** %n.addr, align 8
  store i32 %sub24, i32* %28, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %for.end.16
  %29 = load i32*, i32** %m.addr, align 8
  %30 = load i32, i32* %29, align 4
  %sub26 = sub nsw i32 %30, 1
  %31 = load i32*, i32** %m.addr, align 8
  store i32 %sub26, i32* %31, align 4
  %32 = load i32, i32* @board_size, align 4
  %33 = load i32*, i32** %n.addr, align 8
  %34 = load i32, i32* %33, align 4
  %sub27 = sub nsw i32 %32, %34
  %35 = load i32*, i32** %n.addr, align 8
  store i32 %sub27, i32* %35, align 4
  br label %sw.epilog

sw.bb.28:                                         ; preds = %for.end.16
  %36 = load i32, i32* @board_size, align 4
  %37 = load i32*, i32** %m.addr, align 8
  %38 = load i32, i32* %37, align 4
  %sub29 = sub nsw i32 %36, %38
  %39 = load i32*, i32** %m.addr, align 8
  store i32 %sub29, i32* %39, align 4
  %40 = load i32*, i32** %n.addr, align 8
  %41 = load i32, i32* %40, align 4
  %sub30 = sub nsw i32 %41, 1
  %42 = load i32*, i32** %n.addr, align 8
  store i32 %sub30, i32* %42, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %for.end.16
  %43 = load i32, i32* @board_size, align 4
  %44 = load i32*, i32** %m.addr, align 8
  %45 = load i32, i32* %44, align 4
  %sub32 = sub nsw i32 %43, %45
  %46 = load i32*, i32** %m.addr, align 8
  store i32 %sub32, i32* %46, align 4
  %47 = load i32, i32* @board_size, align 4
  %48 = load i32*, i32** %n.addr, align 8
  %49 = load i32, i32* %48, align 4
  %sub33 = sub nsw i32 %47, %49
  %50 = load i32*, i32** %n.addr, align 8
  store i32 %sub33, i32* %50, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.16, %sw.bb.31, %sw.bb.28, %sw.bb.25, %sw.bb
  ret void
}

declare void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)*, i32, %struct.fullboard_pattern*) #1

; Function Attrs: nounwind uwtable
define internal void @fuseki_callback(i32 %move, %struct.fullboard_pattern* %pattern, i32 %ll) #0 {
entry:
  %move.addr = alloca i32, align 4
  %pattern.addr = alloca %struct.fullboard_pattern*, align 8
  %ll.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store %struct.fullboard_pattern* %pattern, %struct.fullboard_pattern** %pattern.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %move.addr, align 4
  %2 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %value = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %2, i32 0, i32 4
  %3 = load float, float* %value, align 4
  %conv = fptosi float %3 to i32
  %4 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %name = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %4, i32 0, i32 2
  %5 = load i8*, i8** %name, align 8
  %6 = load i32, i32* %ll.addr, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0), i32 %1, i32 %conv, i8* %5, i32 %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = load i32, i32* %move.addr, align 4
  %8 = load i32, i32* @num_fuseki_moves, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i32 0, i64 %idxprom
  store i32 %7, i32* %arrayidx, align 4
  %9 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %value1 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %9, i32 0, i32 4
  %10 = load float, float* %value1, align 4
  %conv2 = fptosi float %10 to i32
  %11 = load i32, i32* @num_fuseki_moves, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i32 0, i64 %idxprom3
  store i32 %conv2, i32* %arrayidx4, align 4
  %12 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %pattern.addr, align 8
  %value5 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %12, i32 0, i32 4
  %13 = load float, float* %value5, align 4
  %14 = load i32, i32* @fuseki_total_value, align 4
  %conv6 = sitofp i32 %14 to float
  %add = fadd float %conv6, %13
  %conv7 = fptosi float %add to i32
  store i32 %conv7, i32* @fuseki_total_value, align 4
  %15 = load i32, i32* @num_fuseki_moves, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @num_fuseki_moves, align 4
  ret void
}

declare i32 @gg_rand() #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @set_minimum_move_value(i32, float) #1

declare i32 @gprintf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
