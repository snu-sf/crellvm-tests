; ModuleID = 'patterns/helpers.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.influence_data = type opaque
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, {}*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }

@transformation = external global [1369 x [8 x i32]], align 16
@board = external global [421 x i8], align 16
@.str = private unnamed_addr constant [19 x i8] c"patterns/helpers.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"board[apos] != EMPTY\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"board[bpos] == acolor\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"board[cpos] == ccolor\00", align 1
@worm = external global [400 x %struct.worm_data], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"helper\00", align 1
@white_eye = external global [400 x %struct.eye_data], align 16
@black_eye = external global [400 x %struct.eye_data], align 16
@initial_white_influence = external global %struct.influence_data, align 1
@initial_black_influence = external global %struct.influence_data, align 1
@doing_scoring = external global i32, align 4
@verbose = external global i32, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"...followup value %f\0A\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@dragon2 = external global %struct.dragon_data2*, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"(color == BLACK || color == WHITE)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"countlib(move) == 2\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"countlib(str) == 2\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"...reverse followup value %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"liberties == 2\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%o...setting min move value of %1m to 0.1\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"((color) == 1 || (color) == 2)\00", align 1
@delta = external global [8 x i32], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"epos != 0\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@number_of_dragons = external global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"board[move] == EMPTY\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"board[worma] == OTHER_COLOR(color) && board[wormb] == OTHER_COLOR(color)\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"test_attack_either_move\00", align 1

; Function Attrs: nounwind uwtable
define i32 @basic_cut_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %acolor = alloca i32, align 4
  %ccolor = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %1 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %apos, align 4
  %4 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %bpos, align 4
  %7 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %8, %9
  store i32 %add6, i32* %cpos, align 4
  %10 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %11 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, i32* %acolor, align 4
  %12 = load i32, i32* %acolor, align 4
  %sub = sub nsw i32 3, %12
  store i32 %sub, i32* %ccolor, align 4
  %13 = load i32, i32* %apos, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %14 to i32
  %cmp = icmp ne i32 %conv11, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %apos, align 4
  %div = sdiv i32 %15, 20
  %sub13 = sub nsw i32 %div, 1
  %16 = load i32, i32* %apos, align 4
  %rem = srem i32 %16, 20
  %sub14 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 %sub13, i32 %sub14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %bpos, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  %19 = load i32, i32* %acolor, align 4
  %cmp18 = icmp eq i32 %conv17, %19
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end
  br label %if.end.26

if.else.21:                                       ; preds = %if.end
  %20 = load i32, i32* %bpos, align 4
  %div22 = sdiv i32 %20, 20
  %sub23 = sub nsw i32 %div22, 1
  %21 = load i32, i32* %bpos, align 4
  %rem24 = srem i32 %21, 20
  %sub25 = sub nsw i32 %rem24, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %sub23, i32 %sub25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.21, %if.then.20
  %22 = load i32, i32* %cpos, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %23 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  %24 = load i32, i32* %ccolor, align 4
  %cmp30 = icmp eq i32 %conv29, %24
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.end.26
  br label %if.end.38

if.else.33:                                       ; preds = %if.end.26
  %25 = load i32, i32* %cpos, align 4
  %div34 = sdiv i32 %25, 20
  %sub35 = sub nsw i32 %div34, 1
  %26 = load i32, i32* %cpos, align 4
  %rem36 = srem i32 %26, 20
  %sub37 = sub nsw i32 %rem36, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %sub35, i32 %sub37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.33, %if.then.32
  %27 = load i32, i32* %cpos, align 4
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom39
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx40, i32 0, i32 16
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %28 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp ne i32 %28, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.38
  %29 = load i32, i32* %ccolor, align 4
  %30 = load i32, i32* %color.addr, align 4
  %cmp44 = icmp eq i32 %29, %30
  br i1 %cmp44, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load i32, i32* %cpos, align 4
  %call = call i32 @is_ko_point(i32 %31)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false, %if.end.38
  %32 = load i32, i32* %move.addr, align 4
  %call48 = call i32 @is_ko_point(i32 %32)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.end.47
  %33 = load i32, i32* %move.addr, align 4
  %34 = load i32, i32* %ccolor, align 4
  %call52 = call i32 @trymove(i32 %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.64

if.then.54:                                       ; preds = %if.end.51
  %35 = load i32, i32* %move.addr, align 4
  %call55 = call i32 @attack(i32 %35, i32* null)
  %cmp56 = icmp eq i32 %call55, 5
  br i1 %cmp56, label %if.then.62, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.then.54
  %36 = load i32, i32* %cpos, align 4
  %call59 = call i32 @attack(i32 %36, i32* null)
  %cmp60 = icmp eq i32 %call59, 5
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.58, %if.then.54
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end.63:                                        ; preds = %lor.lhs.false.58
  call void @popgo()
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.51
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.63
  %37 = load i32, i32* %move.addr, align 4
  %38 = load i32, i32* %acolor, align 4
  %call66 = call i32 @safe_move(i32 %37, i32 %38)
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.65
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.69, %if.else.64, %if.then.62, %if.then.50, %if.then.46
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @is_ko_point(i32) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare i32 @attack(i32, i32*) #1

declare void @popgo() #1

declare i32 @safe_move(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @jump_out_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %own_eyespace = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %trans.addr, align 4
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %2 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i32 0, i64 %idxprom
  %color1 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %color1, align 4
  %cmp2 = icmp eq i32 %4, 4
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %own_eyespace, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %move.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i32 0, i64 %idxprom3
  %color5 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %arrayidx4, i32 0, i32 0
  %6 = load i32, i32* %color5, align 4
  %cmp6 = icmp eq i32 %6, 5
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %own_eyespace, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %7
  %cmp8 = icmp eq i32 %sub, 1
  %cond = select i1 %cmp8, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %8 = load i32, i32* %move.addr, align 4
  %call = call i32 @whose_area(%struct.influence_data* %cond, i32 %8)
  %9 = load i32, i32* %color.addr, align 4
  %cmp10 = icmp ne i32 %call, %9
  br i1 %cmp10, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %own_eyespace, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.13:                                       ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.13, %if.then.12
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @whose_area(%struct.influence_data*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @jump_out_far_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %1 = load i32, i32* %move.addr, align 4
  %call = call i32 @whose_area(%struct.influence_data* %cond, i32 %1)
  %2 = load i32, i32* %color.addr, align 4
  %sub1 = sub nsw i32 3, %2
  %cmp2 = icmp ne i32 %call, %sub1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %4 = load i32, i32* %trans.addr, align 4
  %5 = load i32, i32* %move.addr, align 4
  %6 = load i32, i32* %color.addr, align 4
  %call3 = call i32 @jump_out_helper(%struct.pattern* %3, i32 %4, i32 %5, i32 %6)
  store i32 %call3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @high_handicap_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %trans.addr, align 4
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %2 = load i32, i32* %move.addr, align 4
  %3 = load i32, i32* @doing_scoring, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %4
  %call = call i32 @stones_on_board(i32 %sub)
  %cmp = icmp eq i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  ret i32 %land.ext
}

declare i32 @stones_on_board(i32) #1

; Function Attrs: nounwind uwtable
define i32 @reinforce_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %trans.addr, align 4
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %2 = load i32, i32* @doing_scoring, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %3
  %call = call i32 @lively_dragon_exists(i32 %sub)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %move.addr, align 4
  %5 = load i32, i32* %color.addr, align 4
  %call2 = call i32 @safe_move(i32 %4, i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

declare i32 @lively_dragon_exists(i32) #1

; Function Attrs: nounwind uwtable
define i32 @throw_in_atari_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %success = alloca i32, align 4
  %other = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %success, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 721), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %apos, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 720), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %cpos, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 722), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %dpos, align 4
  %11 = load i32, i32* %apos, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %11, i32 2, i32* %arraydecay)
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32, i32* %move.addr, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %14 = load i32, i32* %arrayidx8, align 4
  store i32 %14, i32* %bpos, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %15 = load i32, i32* %arrayidx9, align 4
  store i32 %15, i32* %bpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %move.addr, align 4
  %17 = load i32, i32* %color.addr, align 4
  %call10 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.32

if.then.11:                                       ; preds = %if.end
  %18 = load i32, i32* %cpos, align 4
  %call12 = call i32 @attack(i32 %18, i32* null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.11
  %19 = load i32, i32* %dpos, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %20 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %20 to i32
  %cmp16 = icmp ne i32 %conv, 3
  br i1 %cmp16, label %land.lhs.true.18, label %if.then.21

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %21 = load i32, i32* %dpos, align 4
  %call19 = call i32 @attack(i32 %21, i32* null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.31, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18, %land.lhs.true
  %22 = load i32, i32* %bpos, align 4
  %23 = load i32, i32* %other, align 4
  %call22 = call i32 @trymove(i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %if.then.21
  %24 = load i32, i32* %apos, align 4
  %call25 = call i32 @attack(i32 %24, i32* null)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 1, i32* %success, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.24
  call void @popgo()
  br label %if.end.30

if.else.29:                                       ; preds = %if.then.21
  store i32 1, i32* %success, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.29, %if.end.28
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %land.lhs.true.18, %if.then.11
  call void @popgo()
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  %25 = load i32, i32* %move.addr, align 4
  %26 = load i32, i32* %apos, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom33
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx34, i32 0, i32 2
  %27 = load float, float* %effective_size, align 4
  %mul = fmul float 2.000000e+00, %27
  call void @add_followup_value(i32 %25, float %mul)
  %28 = load i32, i32* @verbose, align 4
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.32
  br label %cond.end

cond.false:                                       ; preds = %if.end.32
  %29 = load i32, i32* %apos, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %effective_size38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 2
  %30 = load float, float* %effective_size38, align 4
  %mul39 = fmul float 2.000000e+00, %30
  %conv40 = fpext float %mul39 to double
  %call41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %conv40)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %31 = load i32, i32* %success, align 4
  ret i32 %31
}

declare i32 @findlib(i32, i32, i32*) #1

declare void @add_followup_value(i32, float) #1

declare i32 @gprintf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @not_lunch_helper(i32 %apos, i32 %bpos) #0 {
entry:
  %retval = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %bpos.addr, align 4
  %3 = load i32, i32* %apos.addr, align 4
  call void @remove_lunch(i32 %2, i32 %3)
  %4 = load i32, i32* %bpos.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %id, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx4 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %idxprom3
  %lunch = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx4, i32 0, i32 12
  %7 = load i32, i32* %lunch, align 4
  %8 = load i32, i32* %apos.addr, align 4
  %cmp5 = icmp eq i32 %7, %8
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %bpos.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom7
  %id9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx8, i32 0, i32 1
  %10 = load i32, i32* %id9, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %11, i64 %idxprom10
  %lunch12 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx11, i32 0, i32 12
  store i32 0, i32* %lunch12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @remove_lunch(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @seki_helper(i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks(i32 %0, i32* %arraydecay)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %r, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %attack_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %attack_codes, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %r, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @chainlinks(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @ugly_cutstone_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %apos, align 4
  %5 = load i32, i32* %apos, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %cutstone = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 9
  %6 = load i32, i32* %cutstone, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %cutstone, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @cutstone2_helper(%struct.pattern* %pattern, i32 %trans, i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca %struct.pattern*, align 8
  %trans.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  store %struct.pattern* %pattern, %struct.pattern** %pattern.addr, align 8
  store i32 %trans, i32* %trans.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load %struct.pattern*, %struct.pattern** %pattern.addr, align 8
  %1 = load i32, i32* %color.addr, align 4
  %2 = load i32, i32* %trans.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 646), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %apos, align 4
  %5 = load i32, i32* %trans.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 683), i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %6, %7
  store i32 %add3, i32* %bpos, align 4
  %8 = load i32, i32* %trans.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i32 0, i64 647), i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %move.addr, align 4
  %add6 = add nsw i32 %9, %10
  store i32 %add6, i32* %cpos, align 4
  %11 = load i32, i32* %apos, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom7
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx8, i32 0, i32 18
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %12 = load i32, i32* %arrayidx9, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %apos, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom10
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx11, i32 0, i32 17
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 0
  %14 = load i32, i32* %arrayidx12, align 4
  store i32 %14, i32* %dpos, align 4
  %15 = load i32, i32* %dpos, align 4
  %16 = load i32, i32* %apos, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv = zext i8 %17 to i32
  %call = call i32 @trymove(i32 %15, i32 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.15, label %if.end.44

if.then.15:                                       ; preds = %if.end
  %18 = load i32, i32* %bpos, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %tobool18 = icmp ne i8 %19, 0
  br i1 %tobool18, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %if.then.15
  %20 = load i32, i32* %bpos, align 4
  %call19 = call i32 @attack(i32 %20, i32* null)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.35, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %21 = load i32, i32* %cpos, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %22 = load i8, i8* %arrayidx23, align 1
  %tobool24 = icmp ne i8 %22, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.35

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %23 = load i32, i32* %cpos, align 4
  %call26 = call i32 @attack(i32 %23, i32* null)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.35, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %24 = load i32, i32* %move.addr, align 4
  %25 = load i32, i32* %apos, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %26 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %26 to i32
  %call32 = call i32 @safe_move(i32 %24, i32 %conv31)
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false, %if.then.15
  call void @popgo()
  %27 = load i32, i32* %apos, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %origin = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 3
  %28 = load i32, i32* %origin, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %cutstone2 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 10
  %29 = load i32, i32* %cutstone2, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %cutstone2, align 4
  %30 = load i32, i32* %apos, align 4
  %idxprom40 = sext i32 %30 to i64
  %arrayidx41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom40
  %origin42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx41, i32 0, i32 3
  %31 = load i32, i32* %origin42, align 4
  call void @propagate_worm(i32 %31)
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.28
  call void @popgo()
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.35, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @propagate_worm(i32) #1

; Function Attrs: nounwind uwtable
define i32 @edge_double_sente_helper(i32 %move, i32 %apos, i32 %bpos, i32 %cpos) #0 {
entry:
  %move.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %success = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  %0 = load i32, i32* %cpos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %success, align 4
  %2 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %color, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 367, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %color, align 4
  %call = call i32 @trymove(i32 %6, i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* %move.addr, align 4
  %call6 = call i32 @countlib(i32 %8)
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.then.5
  br label %if.end.15

if.else.10:                                       ; preds = %if.then.5
  %9 = load i32, i32* %move.addr, align 4
  %div11 = sdiv i32 %9, 20
  %sub12 = sub nsw i32 %div11, 1
  %10 = load i32, i32* %move.addr, align 4
  %rem13 = srem i32 %10, 20
  %sub14 = sub nsw i32 %rem13, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 370, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 %sub12, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %11 = load i32, i32* %move.addr, align 4
  %12 = load i32, i32* %apos.addr, align 4
  %13 = load i32, i32* %bpos.addr, align 4
  %call16 = call i32 @connect_and_cut_helper(i32 %11, i32 %12, i32 %13)
  store i32 %call16, i32* %success, align 4
  call void @popgo()
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %if.end
  %14 = load i32, i32* %success, align 4
  ret i32 %14
}

declare i32 @countlib(i32) #1

; Function Attrs: nounwind uwtable
define i32 @connect_and_cut_helper(i32 %Apos, i32 %bpos, i32 %cpos) #0 {
entry:
  %Apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %other = alloca i32, align 4
  %color = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %liberties = alloca i32, align 4
  %result = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %Apos, i32* %Apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  store i32 0, i32* %epos, align 4
  %0 = load i32, i32* %Apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %other, align 4
  %2 = load i32, i32* %other, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %color, align 4
  %3 = load i32, i32* %Apos.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %3, i32 2, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  store i32 0, i32* %result, align 4
  %4 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %color, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 628, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %liberties, align 4
  %cmp4 = icmp eq i32 %6, 2
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.end
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 629, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %7 = load i32, i32* %arrayidx9, align 4
  %8 = load i32, i32* %bpos.addr, align 4
  %cmp10 = icmp eq i32 %7, %8
  br i1 %cmp10, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.end.8
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %9 = load i32, i32* %arrayidx13, align 4
  store i32 %9, i32* %dpos, align 4
  br label %if.end.16

if.else.14:                                       ; preds = %if.end.8
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %10 = load i32, i32* %arrayidx15, align 4
  store i32 %10, i32* %dpos, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.12
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %11 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %11, 4
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %cpos.addr, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom19
  %14 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %12, %14
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %15 to i32
  %16 = load i32, i32* %color, align 4
  %cmp24 = icmp eq i32 %conv23, %16
  br i1 %cmp24, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, i32* %cpos.addr, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom26
  %19 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %17, %19
  %20 = load i32, i32* %Apos.addr, align 4
  %call29 = call i32 @neighbor_of_string(i32 %add28, i32 %20)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %cpos.addr, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom31
  %23 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %21, %23
  store i32 %add33, i32* %epos, align 4
  br label %for.end

if.end.34:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %24 = load i32, i32* %k, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %for.cond
  %25 = load i32, i32* %epos, align 4
  %cmp35 = icmp ne i32 %25, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %for.end
  br label %if.end.39

if.else.38:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 643, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  %26 = load i32, i32* %bpos.addr, align 4
  %27 = load i32, i32* %color, align 4
  %call40 = call i32 @trymove(i32 %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.67

if.then.42:                                       ; preds = %if.end.39
  %28 = load i32, i32* %dpos, align 4
  %29 = load i32, i32* %other, align 4
  %call43 = call i32 @trymove(i32 %28, i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.66

if.then.45:                                       ; preds = %if.then.42
  %30 = load i32, i32* %cpos.addr, align 4
  %31 = load i32, i32* %other, align 4
  %call46 = call i32 @trymove(i32 %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %if.then.45
  %32 = load i32, i32* %bpos.addr, align 4
  %idxprom49 = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom49
  %33 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %33 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %if.then.63, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.then.48
  %34 = load i32, i32* %epos, align 4
  %idxprom55 = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %35 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %35 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %if.then.63, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.54
  %36 = load i32, i32* %bpos.addr, align 4
  %37 = load i32, i32* %epos, align 4
  %call61 = call i32 @defend_both(i32 %36, i32 %37)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false.54, %if.then.48
  store i32 1, i32* %result, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %lor.lhs.false.60
  call void @popgo()
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.45
  call void @popgo()
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.42
  call void @popgo()
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.39
  %38 = load i32, i32* %result, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define void @threaten_to_save_helper(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx, i32 0, i32 2
  %2 = load float, float* %effective_size, align 4
  %conv = fpext float %2 to double
  %mul = fmul double 2.000000e+00, %conv
  %add = fadd double 2.000000e+00, %mul
  %conv1 = fptrunc double %add to float
  call void @add_followup_value(i32 %0, float %conv1)
  %3 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom2
  %effective_size4 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx3, i32 0, i32 2
  %5 = load float, float* %effective_size4, align 4
  %conv5 = fpext float %5 to double
  %mul6 = fmul double 2.000000e+00, %conv5
  %add7 = fadd double 2.000000e+00, %mul6
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %add7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void
}

; Function Attrs: nounwind uwtable
define void @threaten_to_capture_helper(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %defense_move = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %0, i32* %arraydecay, i32 1)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom1
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx2, i32 0, i32 18
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %move.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %call7 = call i32 @does_defend(i32 %6, i32 %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %cond.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %move.addr, align 4
  %11 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %12 to i32
  %sub = sub nsw i32 3, %conv
  %call10 = call i32 @trymove(i32 %10, i32 %sub, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %for.end
  br label %cond.end

if.end.13:                                        ; preds = %for.end
  %13 = load i32, i32* %str.addr, align 4
  %call14 = call i32 @find_defense(i32 %13, i32* %defense_move)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.37

land.lhs.true.17:                                 ; preds = %if.end.13
  %14 = load i32, i32* %defense_move, align 4
  %cmp18 = icmp ne i32 %14, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.37

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %15 = load i32, i32* %defense_move, align 4
  %16 = load i32, i32* %str.addr, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %call24 = call i32 @trymove(i32 %15, i32 %conv23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %land.lhs.true.20
  %18 = load i32, i32* %move.addr, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %19 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.26
  %20 = load i32, i32* %move.addr, align 4
  %call32 = call i32 @attack(i32 %20, i32* null)
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.then.26
  call void @popgo()
  call void @popgo()
  br label %cond.end

if.end.36:                                        ; preds = %lor.lhs.false
  call void @popgo()
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.20, %land.lhs.true.17, %if.end.13
  call void @popgo()
  %21 = load i32, i32* %move.addr, align 4
  %22 = load i32, i32* %str.addr, align 4
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom38
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx39, i32 0, i32 2
  %23 = load float, float* %effective_size, align 4
  %conv40 = fpext float %23 to double
  %mul = fmul double 2.000000e+00, %conv40
  %conv41 = fptrunc double %mul to float
  call void @add_followup_value(i32 %21, float %conv41)
  %24 = load i32, i32* @verbose, align 4
  %tobool42 = icmp ne i32 %24, 0
  br i1 %tobool42, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.37
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %25 = load i32, i32* %str.addr, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom43
  %effective_size45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx44, i32 0, i32 2
  %26 = load float, float* %effective_size45, align 4
  %conv46 = fpext float %26 to double
  %mul47 = fmul double 2.000000e+00, %conv46
  %call48 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %mul47)
  br label %cond.end

cond.end:                                         ; preds = %if.then, %if.then.12, %if.then.35, %cond.false, %cond.true
  ret void
}

declare i32 @chainlinks2(i32, i32*, i32) #1

declare i32 @does_defend(i32, i32) #1

declare i32 @find_defense(i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @defend_against_atari_helper(i32 %move, i32 %str) #0 {
entry:
  %move.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  %k = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %0)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %1, 20
  %sub = sub nsw i32 %div, 1
  %2 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %2, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call2 = call i32 @chainlinks2(i32 %3, i32* %arraydecay, i32 1)
  store i32 %call2, i32* %adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %adj, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom4
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx5, i32 0, i32 18
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 0
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %call10 = call i32 @does_defend(i32 %9, i32 %11)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %str.addr, align 4
  %arraydecay13 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call14 = call i32 @findlib(i32 %13, i32 2, i32* %arraydecay13)
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load i32, i32* %str.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %16 to i32
  %sub18 = sub nsw i32 3, %conv
  %call19 = call i32 @safe_move(i32 %14, i32 %sub18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.30, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %for.end
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %17 = load i32, i32* %arrayidx22, align 4
  %18 = load i32, i32* %str.addr, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %19 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %19 to i32
  %sub26 = sub nsw i32 3, %conv25
  %call27 = call i32 @safe_move(i32 %17, i32 %sub26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.21
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.21, %for.end
  %20 = load i32, i32* @verbose, align 4
  %tobool31 = icmp ne i32 %20, 0
  br i1 %tobool31, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.30
  br label %cond.end

cond.false:                                       ; preds = %if.end.30
  %21 = load i32, i32* %str.addr, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom32
  %effective_size = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx33, i32 0, i32 2
  %22 = load float, float* %effective_size, align 4
  %conv34 = fpext float %22 to double
  %mul = fmul double 2.000000e+00, %conv34
  %call35 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), double %mul)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %23 = load i32, i32* %move.addr, align 4
  %24 = load i32, i32* %str.addr, align 4
  %idxprom36 = sext i32 %24 to i64
  %arrayidx37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom36
  %effective_size38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx37, i32 0, i32 2
  %25 = load float, float* %effective_size38, align 4
  %conv39 = fpext float %25 to double
  %mul40 = fmul double 2.000000e+00, %conv39
  %conv41 = fptrunc double %mul40 to float
  call void @add_reverse_followup_value(i32 %23, float %conv41)
  br label %return

return:                                           ; preds = %cond.end, %if.then.29, %if.then.11
  ret void
}

declare void @add_reverse_followup_value(i32, float) #1

; Function Attrs: nounwind uwtable
define void @amalgamate_most_valuable_helper(i32 %apos, i32 %bpos, i32 %cpos) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %1 = load i32, i32* %bpos.addr, align 4
  %call = call i32 @is_same_dragon(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %bpos.addr, align 4
  %3 = load i32, i32* %cpos.addr, align 4
  %call1 = call i32 @is_same_dragon(i32 %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.7, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %effective_size = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 4
  %5 = load float, float* %effective_size, align 4
  %6 = load i32, i32* %cpos.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom3
  %effective_size5 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx4, i32 0, i32 4
  %7 = load float, float* %effective_size5, align 4
  %cmp = fcmp oge float %5, %7
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %8 = load i32, i32* %apos.addr, align 4
  %9 = load i32, i32* %bpos.addr, align 4
  call void @join_dragons(i32 %8, i32 %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %bpos.addr, align 4
  %11 = load i32, i32* %cpos.addr, align 4
  call void @join_dragons(i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i32 @is_same_dragon(i32, i32) #1

declare void @join_dragons(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @finish_ko_helper(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %k = alloca i32, align 4
  %aa = alloca i32, align 4
  %xx = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %0, i32* %arraydecay, i32 1)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %aa, align 4
  %5 = load i32, i32* %aa, align 4
  %call1 = call i32 @countstones(i32 %5)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %aa, align 4
  %call3 = call i32 @findlib(i32 %6, i32 1, i32* %xx)
  %7 = load i32, i32* %xx, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %call6 = call i32 @is_ko(i32 %7, i32 %conv, i32* null)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @countstones(i32) #1

declare i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @squeeze_ko_helper(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %liberties = alloca i32, align 4
  %k = alloca i32, align 4
  %aa = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %0, i32 2, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  %1 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %3, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 547, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %liberties, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %aa, align 4
  %8 = load i32, i32* %aa, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom3
  %10 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %10 to i32
  %sub5 = sub nsw i32 3, %conv
  %call6 = call i32 @is_ko(i32 %8, i32 %sub5, i32* null)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @backfill_helper(i32 %apos, i32 %bpos, i32 %cpos) #0 {
entry:
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %dpos = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  %0 = load i32, i32* %cpos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %dpos, align 4
  %3 = load i32, i32* %apos.addr, align 4
  %4 = load i32, i32* %color, align 4
  %call = call i32 @trymove(i32 %3, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %bpos.addr, align 4
  %6 = load i32, i32* %other, align 4
  %call1 = call i32 @trymove(i32 %5, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %cpos.addr, align 4
  %call4 = call i32 @attack(i32 %7, i32* null)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.3
  %8 = load i32, i32* %cpos.addr, align 4
  %call6 = call i32 @find_defense(i32 %8, i32* %dpos)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %dpos, align 4
  %call9 = call i32 @set_minimum_move_value(i32 %9, float 0x3FB99999A0000000)
  %10 = load i32, i32* @verbose, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %11 = load i32, i32* %dpos, align 4
  %call11 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %land.lhs.true, %if.then.3
  call void @popgo()
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  call void @popgo()
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  ret i32 0
}

declare i32 @set_minimum_move_value(i32, float) #1

; Function Attrs: nounwind uwtable
define i32 @owl_threatens_attack(i32 %apos, i32 %bpos) #0 {
entry:
  %retval = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  %0 = load i32, i32* %bpos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %owl_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 7
  %1 = load i32, i32* %owl_status, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %bpos.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom1
  %owl_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx2, i32 0, i32 8
  %3 = load i32, i32* %owl_attack_point, align 4
  %4 = load i32, i32* %apos.addr, align 4
  %cmp3 = icmp eq i32 %3, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %bpos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 6
  %6 = load i32, i32* %owl_threat_status, align 4
  %cmp6 = icmp eq i32 %6, 11
  br i1 %cmp6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %if.end
  %7 = load i32, i32* %bpos.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %owl_attack_point10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 8
  %8 = load i32, i32* %owl_attack_point10, align 4
  %9 = load i32, i32* %apos.addr, align 4
  %cmp11 = icmp eq i32 %8, %9
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %10 = load i32, i32* %bpos.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom12
  %owl_second_attack_point = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx13, i32 0, i32 11
  %11 = load i32, i32* %owl_second_attack_point, align 4
  %12 = load i32, i32* %apos.addr, align 4
  %cmp14 = icmp eq i32 %11, %12
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.then.7
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.15, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @neighbor_of_string(i32, i32) #1

declare i32 @defend_both(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @connect_and_cut_helper2(i32 %Apos, i32 %bpos, i32 %cpos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %Apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %other = alloca i32, align 4
  %result = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %Apos, i32* %Apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %epos, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %result, align 4
  %1 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 684, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %Apos.addr, align 4
  %4 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %3, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.58

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %5 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %cpos.addr, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %6, %8
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %other, align 4
  %cmp6 = icmp eq i32 %conv, %10
  br i1 %cmp6, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %cpos.addr, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %11, %13
  %14 = load i32, i32* %Apos.addr, align 4
  %call11 = call i32 @neighbor_of_string(i32 %add10, i32 %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* %cpos.addr, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %15, %17
  store i32 %add16, i32* %epos, align 4
  br label %for.end

if.end.17:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  %19 = load i32, i32* %epos, align 4
  %cmp18 = icmp ne i32 %19, 0
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %for.end
  br label %if.end.22

if.else.21:                                       ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 695, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.20
  %20 = load i32, i32* %bpos.addr, align 4
  %21 = load i32, i32* %other, align 4
  %call23 = call i32 @trymove(i32 %20, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.57

if.then.25:                                       ; preds = %if.end.22
  %22 = load i32, i32* %Apos.addr, align 4
  %call26 = call i32 @find_defense(i32 %22, i32* %dpos)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.31

lor.lhs.false.28:                                 ; preds = %if.then.25
  %23 = load i32, i32* %dpos, align 4
  %cmp29 = icmp eq i32 %23, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %if.then.25
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  %24 = load i32, i32* %dpos, align 4
  %25 = load i32, i32* %color.addr, align 4
  %call33 = call i32 @trymove(i32 %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.56

if.then.35:                                       ; preds = %if.end.32
  %26 = load i32, i32* %cpos.addr, align 4
  %27 = load i32, i32* %color.addr, align 4
  %call36 = call i32 @trymove(i32 %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.55

if.then.38:                                       ; preds = %if.then.35
  %28 = load i32, i32* %bpos.addr, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %29 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %29 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then.53, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.then.38
  %30 = load i32, i32* %epos, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %31 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.44
  %32 = load i32, i32* %bpos.addr, align 4
  %33 = load i32, i32* %epos, align 4
  %call51 = call i32 @defend_both(i32 %32, i32 %33)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.44, %if.then.38
  store i32 1, i32* %result, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %lor.lhs.false.50
  call void @popgo()
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.35
  call void @popgo()
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.32
  call void @popgo()
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.22
  call void @popgo()
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end
  %34 = load i32, i32* %result, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.31
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @dragon_weak(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 728, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 1
  %6 = load i32, i32* %id, align 4
  %cmp6 = icmp slt i32 %6, 0
  br i1 %cmp6, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom8
  %id10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx9, i32 0, i32 1
  %8 = load i32, i32* %id10, align 4
  %9 = load i32, i32* @number_of_dragons, align 4
  %cmp11 = icmp sge i32 %8, %9
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %id17 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 1
  %11 = load i32, i32* %id17, align 4
  %idxprom18 = sext i32 %11 to i64
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx19 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %idxprom18
  %weakness = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx19, i32 0, i32 7
  %13 = load float, float* %weakness, align 4
  %conv20 = fpext float %13 to double
  %cmp21 = fcmp ogt double %conv20, 4.000100e-01
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @test_attack_either_move(i32 %move, i32 %color, i32 %worma, i32 %wormb) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %worma.addr = alloca i32, align 4
  %wormb.addr = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %worma, i32* %worma.addr, align 4
  store i32 %wormb, i32* %wormb.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 741, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %move.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  br label %if.end.15

if.else.10:                                       ; preds = %if.end
  %7 = load i32, i32* %move.addr, align 4
  %div11 = sdiv i32 %7, 20
  %sub12 = sub nsw i32 %div11, 1
  %8 = load i32, i32* %move.addr, align 4
  %rem13 = srem i32 %8, 20
  %sub14 = sub nsw i32 %rem13, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 742, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 %sub12, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %9 = load i32, i32* %worma.addr, align 4
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %10 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %11 = load i32, i32* %color.addr, align 4
  %sub19 = sub nsw i32 3, %11
  %cmp20 = icmp eq i32 %conv18, %sub19
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.30

land.lhs.true.22:                                 ; preds = %if.end.15
  %12 = load i32, i32* %wormb.addr, align 4
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %14 = load i32, i32* %color.addr, align 4
  %sub26 = sub nsw i32 3, %14
  %cmp27 = icmp eq i32 %conv25, %sub26
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.22
  br label %if.end.35

if.else.30:                                       ; preds = %land.lhs.true.22, %if.end.15
  %15 = load i32, i32* %move.addr, align 4
  %div31 = sdiv i32 %15, 20
  %sub32 = sub nsw i32 %div31, 1
  %16 = load i32, i32* %move.addr, align 4
  %rem33 = srem i32 %16, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 744, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %17 = load i32, i32* %worma.addr, align 4
  %18 = load i32, i32* %wormb.addr, align 4
  %call = call i32 @defend_both(i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.35
  br label %if.end.62

if.end.37:                                        ; preds = %if.end.35
  %19 = load i32, i32* %move.addr, align 4
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %worma.addr, align 4
  %call38 = call i32 @trymove(i32 %19, i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i32 %21, i32 0, i32 0)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.62

if.then.40:                                       ; preds = %if.end.37
  %22 = load i32, i32* %worma.addr, align 4
  %idxprom41 = sext i32 %22 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %23 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %23 to i32
  %24 = load i32, i32* %color.addr, align 4
  %sub44 = sub nsw i32 3, %24
  %cmp45 = icmp eq i32 %conv43, %sub44
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.60

land.lhs.true.47:                                 ; preds = %if.then.40
  %25 = load i32, i32* %wormb.addr, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %26 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %26 to i32
  %27 = load i32, i32* %color.addr, align 4
  %sub51 = sub nsw i32 3, %27
  %cmp52 = icmp eq i32 %conv50, %sub51
  br i1 %cmp52, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %land.lhs.true.47
  %28 = load i32, i32* %worma.addr, align 4
  %29 = load i32, i32* %wormb.addr, align 4
  %call55 = call i32 @defend_both(i32 %28, i32 %29)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  %30 = load i32, i32* %move.addr, align 4
  %31 = load i32, i32* %worma.addr, align 4
  %32 = load i32, i32* %wormb.addr, align 4
  call void @add_either_move(i32 %30, i32 1, i32 %31, i32 1, i32 %32)
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.else.60:                                       ; preds = %land.lhs.true.47, %if.then.40
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.end.59
  call void @popgo()
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.36, %if.end.61, %if.end.37
  ret void
}

declare void @add_either_move(i32, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
