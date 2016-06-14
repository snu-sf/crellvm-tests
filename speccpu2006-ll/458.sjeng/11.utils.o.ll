; ModuleID = 'utils.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@left = global i32 -1, align 4
@moves_to_tc = external global i32, align 4
@min_per_game = external global i32, align 4
@inc = external global i32, align 4
@time_left = external global i32, align 4
@sec_per_game = external global i32, align 4
@opp_time = external global i32, align 4
@xb_mode = external global i32, align 4
@Variant = external global i32, align 4
@time_cushion = external global i32, align 4
@comp_to_san.type_to_char = internal constant [14 x i32] [i32 70, i32 80, i32 80, i32 78, i32 78, i32 75, i32 75, i32 82, i32 82, i32 81, i32 81, i32 66, i32 66, i32 69], align 16
@Xrank = external constant [144 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@.str = private unnamed_addr constant [8 x i8] c"%c@%c%d\00", align 1
@board = external global [144 x i32], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c%d=%c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%cx%c%d\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%cx%c%d=%c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"O-O\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"O-O-O\00", align 1
@numb_moves = external global i32, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%c%c%c%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%c%d%c%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%c%cx%c%d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"%c%dx%c%d\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%c%c%d\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"illg\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@comp_to_coord.type_to_char = internal constant [14 x i32] [i32 70, i32 80, i32 112, i32 78, i32 110, i32 75, i32 107, i32 82, i32 114, i32 81, i32 113, i32 66, i32 98, i32 69], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"%c%d%c%dn\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"%c%d%c%dr\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%c%d%c%db\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"%c%d%c%dk\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%c%d%c%dq\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"+----+----+----+----+----+----+----+----+\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" P\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"*P\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" N\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"*N\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c" K\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"*K\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" R\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"*R\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" Q\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"*Q\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c" B\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"*B\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@display_board.piece_rep = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%d |\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c" %s |\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\0A  %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"\0A     a    b    c    d    e    f    g    h\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\0A     h    g    f    e    d    c    b    a\0A\0A\00", align 1
@init_game.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 11, i32 9, i32 5, i32 11, i32 3, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 8, i32 4, i32 12, i32 10, i32 6, i32 12, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32], align 16
@white_to_move = external global i32, align 4
@ep_square = external global i32, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@result = external global i32, align 4
@captures = external global i32, align 4
@piece_count = external global i32, align 4
@Material = external global i32, align 4
@is_promoted = external global [62 x i32], align 16
@holding = external global [2 x [16 x i32]], align 16
@white_hand_eval = external global i32, align 4
@black_hand_eval = external global i32, align 4
@bookidx = external global i32, align 4
@book_ply = external global i32, align 4
@fifty = external global i32, align 4
@ply = external global i32, align 4
@phase = external global i32, align 4
@.str.41 = private unnamed_addr constant [47 x i8] c"\0A\0APlease enter the desired depth for perft():\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@raw_nodes = external global i32, align 4
@.str.42 = private unnamed_addr constant [31 x i8] c"\0A\0ARaw nodes for depth %d: %i\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [31 x i8] c"\0APlease input a move/command:\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"\0AIllegal move/command!  Please input a new move/command:\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@pv_length = external global [300 x i32], align 16
@pv = external global [300 x [300 x %struct.move_s]], align 16
@.str.49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@start_time = external global i64, align 8
@nodes = external global i32, align 4
@.str.50 = private unnamed_addr constant [18 x i8] c"%2i %7i %5i %8i  \00", align 1
@i_depth = external global i32, align 4
@.str.51 = private unnamed_addr constant [20 x i8] c"%2i %c%1i.%02i %9i \00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"%s !\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%s !!\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%s ??\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"stat01: %i %i %i %i %i\0A\00", align 1
@moveleft = external global i32, align 4
@movetotal = external global i32, align 4
@.str.59 = private unnamed_addr constant [27 x i8] c"stat01: %i %i %i %i %i %s\0A\00", align 1
@searching_move = external global [20 x i8], align 16
@pieces = external global [62 x i32], align 16
@squares = external global [144 x i32], align 16
@.str.60 = private unnamed_addr constant [36 x i8] c"Piece->square->piece inconsistency\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"Board/Piece->square inconsistency\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Zero-ed piece inconsistency\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Empty square has piece pointer\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"Filled square %d has no piece pointer\0A\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Square->piece->square inconsistency\0A\00", align 1
@material = external global [14 x i32], align 16
@.str.66 = private unnamed_addr constant [71 x i8] c"\0ASjeng version SPEC 1.0, Copyright (C) 2000-2005 Gian-Carlo Pascutto\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"\0APlease enter the desired depth:\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"\0ADo you want tree () output?  (y/n)\0A\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"\0APlease enter the name of the output file for tree ():\0A\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.71 = private unnamed_addr constant [23 x i8] c"Couldn't open file %s\0A\00", align 1
@.str.72 = private unnamed_addr constant [40 x i8] c"\0ADo you want to output diagrams? (y/n)\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"\0A\0A%s\0ARaw nodes for depth %d: %i\0A%s\0A\0A\00", align 1
@divider = external global [50 x i8], align 16
@reset_board.init_board = private unnamed_addr constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@state = internal global [625 x i32] zeroinitializer, align 16
@next = internal global i32* null, align 8

; Function Attrs: nounwind uwtable
define i32 @allocate_time() #0 {
entry:
  %allocated_time = alloca double, align 8
  %move_speed = alloca double, align 8
  store double 0.000000e+00, double* %allocated_time, align 8
  store double 2.000000e+01, double* %move_speed, align 8
  %0 = load i32, i32* @moves_to_tc, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else.110, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @min_per_game, align 4
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* @inc, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %3 = load i32, i32* @time_left, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* @min_per_game, align 4
  %mul = mul nsw i32 %4, 6000
  %5 = load i32, i32* @sec_per_game, align 4
  %mul2 = mul nsw i32 %5, 100
  %add = add nsw i32 %mul, %mul2
  %conv3 = sitofp i32 %add to double
  %mul4 = fmul double %conv3, 4.000000e+00
  %div = fdiv double %mul4, 5.000000e+00
  %cmp5 = fcmp olt double %conv, %div
  br i1 %cmp5, label %if.then.7, label %if.end.37

if.then.7:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i32, i32* @opp_time, align 4
  %7 = load i32, i32* @time_left, align 4
  %sub = sub nsw i32 %6, %7
  %conv8 = sitofp i32 %sub to double
  %8 = load i32, i32* @opp_time, align 4
  %conv9 = sitofp i32 %8 to double
  %div10 = fdiv double %conv9, 5.000000e+00
  %cmp11 = fcmp ogt double %conv8, %div10
  br i1 %cmp11, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %if.then.7
  %9 = load i32, i32* @xb_mode, align 4
  %tobool14 = icmp ne i32 %9, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true.13
  store double 4.000000e+01, double* %move_speed, align 8
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true.13, %if.then.7
  %10 = load i32, i32* @opp_time, align 4
  %11 = load i32, i32* @time_left, align 4
  %sub16 = sub nsw i32 %10, %11
  %conv17 = sitofp i32 %sub16 to double
  %12 = load i32, i32* @opp_time, align 4
  %conv18 = sitofp i32 %12 to double
  %div19 = fdiv double %conv18, 1.000000e+01
  %cmp20 = fcmp ogt double %conv17, %div19
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %if.else
  %13 = load i32, i32* @xb_mode, align 4
  %tobool23 = icmp ne i32 %13, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  store double 3.000000e+01, double* %move_speed, align 8
  br label %if.end.35

if.else.25:                                       ; preds = %land.lhs.true.22, %if.else
  %14 = load i32, i32* @opp_time, align 4
  %15 = load i32, i32* @time_left, align 4
  %sub26 = sub nsw i32 %14, %15
  %conv27 = sitofp i32 %sub26 to double
  %16 = load i32, i32* @opp_time, align 4
  %conv28 = sitofp i32 %16 to double
  %div29 = fdiv double %conv28, 2.000000e+01
  %cmp30 = fcmp ogt double %conv27, %div29
  br i1 %cmp30, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %if.else.25
  %17 = load i32, i32* @xb_mode, align 4
  %tobool33 = icmp ne i32 %17, 0
  br i1 %tobool33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.32
  store double 2.500000e+01, double* %move_speed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.32, %if.else.25
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then.24
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.15
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %lor.lhs.false
  %18 = load i32, i32* @Variant, align 4
  %cmp38 = icmp ne i32 %18, 3
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.67

land.lhs.true.40:                                 ; preds = %if.end.37
  %19 = load i32, i32* @Variant, align 4
  %cmp41 = icmp ne i32 %19, 4
  br i1 %cmp41, label %if.then.43, label %if.else.67

if.then.43:                                       ; preds = %land.lhs.true.40
  %20 = load i32, i32* @time_left, align 4
  %21 = load i32, i32* @opp_time, align 4
  %sub44 = sub nsw i32 %20, %21
  %conv45 = sitofp i32 %sub44 to double
  %22 = load i32, i32* @time_left, align 4
  %conv46 = sitofp i32 %22 to double
  %div47 = fdiv double %conv46, 5.000000e+00
  %cmp48 = fcmp ogt double %conv45, %div47
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.54

land.lhs.true.50:                                 ; preds = %if.then.43
  %23 = load i32, i32* @xb_mode, align 4
  %tobool51 = icmp ne i32 %23, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %land.lhs.true.50
  %24 = load double, double* %move_speed, align 8
  %sub53 = fsub double %24, 1.000000e+01
  store double %sub53, double* %move_speed, align 8
  br label %if.end.66

if.else.54:                                       ; preds = %land.lhs.true.50, %if.then.43
  %25 = load i32, i32* @time_left, align 4
  %26 = load i32, i32* @opp_time, align 4
  %sub55 = sub nsw i32 %25, %26
  %conv56 = sitofp i32 %sub55 to double
  %27 = load i32, i32* @time_left, align 4
  %conv57 = sitofp i32 %27 to double
  %div58 = fdiv double %conv57, 1.000000e+01
  %cmp59 = fcmp ogt double %conv56, %div58
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.else.54
  %28 = load i32, i32* @xb_mode, align 4
  %tobool62 = icmp ne i32 %28, 0
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %land.lhs.true.61
  %29 = load double, double* %move_speed, align 8
  %sub64 = fsub double %29, 5.000000e+00
  store double %sub64, double* %move_speed, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %land.lhs.true.61, %if.else.54
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.52
  br label %if.end.79

if.else.67:                                       ; preds = %land.lhs.true.40, %if.end.37
  %30 = load i32, i32* @Variant, align 4
  %cmp68 = icmp eq i32 %30, 3
  br i1 %cmp68, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %if.else.67
  %31 = load double, double* %move_speed, align 8
  %sub71 = fsub double %31, 1.000000e+01
  store double %sub71, double* %move_speed, align 8
  br label %if.end.78

if.else.72:                                       ; preds = %if.else.67
  %32 = load i32, i32* @Variant, align 4
  %cmp73 = icmp eq i32 %32, 4
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.else.72
  %33 = load double, double* %move_speed, align 8
  %sub76 = fsub double %33, 5.000000e+00
  store double %sub76, double* %move_speed, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.else.72
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.70
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.66
  %34 = load i32, i32* @time_left, align 4
  %conv80 = sitofp i32 %34 to double
  %35 = load double, double* %move_speed, align 8
  %div81 = fdiv double %conv80, %35
  store double %div81, double* %allocated_time, align 8
  %36 = load i32, i32* @inc, align 4
  %tobool82 = icmp ne i32 %36, 0
  br i1 %tobool82, label %if.then.83, label %if.end.109

if.then.83:                                       ; preds = %if.end.79
  %37 = load i32, i32* @time_left, align 4
  %conv84 = sitofp i32 %37 to double
  %38 = load double, double* %allocated_time, align 8
  %sub85 = fsub double %conv84, %38
  %39 = load i32, i32* @inc, align 4
  %conv86 = sitofp i32 %39 to double
  %sub87 = fsub double %sub85, %conv86
  %cmp88 = fcmp ogt double %sub87, 5.000000e+02
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %if.then.83
  %40 = load i32, i32* @inc, align 4
  %conv91 = sitofp i32 %40 to double
  %41 = load double, double* %allocated_time, align 8
  %add92 = fadd double %41, %conv91
  store double %add92, double* %allocated_time, align 8
  br label %if.end.108

if.else.93:                                       ; preds = %if.then.83
  %42 = load i32, i32* @time_left, align 4
  %conv94 = sitofp i32 %42 to double
  %43 = load double, double* %allocated_time, align 8
  %sub95 = fsub double %conv94, %43
  %44 = load i32, i32* @inc, align 4
  %conv96 = sitofp i32 %44 to double
  %mul97 = fmul double %conv96, 2.000000e+00
  %div98 = fdiv double %mul97, 3.000000e+00
  %sub99 = fsub double %sub95, %div98
  %cmp100 = fcmp ogt double %sub99, 1.000000e+02
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %if.else.93
  %45 = load i32, i32* @inc, align 4
  %conv103 = sitofp i32 %45 to double
  %mul104 = fmul double %conv103, 2.000000e+00
  %div105 = fdiv double %mul104, 3.000000e+00
  %46 = load double, double* %allocated_time, align 8
  %add106 = fadd double %46, %div105
  store double %add106, double* %allocated_time, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %if.else.93
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.90
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.79
  br label %if.end.134

if.else.110:                                      ; preds = %entry
  %47 = load i32, i32* @min_per_game, align 4
  %conv111 = sitofp i32 %47 to float
  %conv112 = fpext float %conv111 to double
  %mul113 = fmul double %conv112, 6.000000e+03
  %48 = load i32, i32* @sec_per_game, align 4
  %conv114 = sitofp i32 %48 to float
  %conv115 = fpext float %conv114 to double
  %mul116 = fmul double %conv115, 1.000000e+02
  %add117 = fadd double %mul113, %mul116
  %49 = load i32, i32* @moves_to_tc, align 4
  %conv118 = sitofp i32 %49 to float
  %conv119 = fpext float %conv118 to double
  %div120 = fdiv double %add117, %conv119
  %sub121 = fsub double %div120, 1.000000e+02
  store double %sub121, double* %allocated_time, align 8
  %50 = load i32, i32* @time_cushion, align 4
  %tobool122 = icmp ne i32 %50, 0
  br i1 %tobool122, label %if.then.123, label %if.end.133

if.then.123:                                      ; preds = %if.else.110
  %51 = load i32, i32* @time_cushion, align 4
  %conv124 = sitofp i32 %51 to double
  %mul125 = fmul double %conv124, 2.100000e+00
  %div126 = fdiv double %mul125, 3.000000e+00
  %52 = load double, double* %allocated_time, align 8
  %add127 = fadd double %52, %div126
  store double %add127, double* %allocated_time, align 8
  %53 = load i32, i32* @time_cushion, align 4
  %conv128 = sitofp i32 %53 to double
  %mul129 = fmul double %conv128, 2.100000e+00
  %div130 = fdiv double %mul129, 3.000000e+00
  %conv131 = fptosi double %div130 to i32
  %54 = load i32, i32* @time_cushion, align 4
  %sub132 = sub nsw i32 %54, %conv131
  store i32 %sub132, i32* @time_cushion, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.123, %if.else.110
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.end.109
  %55 = load i32, i32* @Variant, align 4
  %cmp135 = icmp eq i32 %55, 1
  br i1 %cmp135, label %if.then.137, label %if.end.147

if.then.137:                                      ; preds = %if.end.134
  %56 = load double, double* %allocated_time, align 8
  %mul138 = fmul double %56, 2.500000e-01
  store double %mul138, double* %allocated_time, align 8
  %57 = load i32, i32* @opp_time, align 4
  %58 = load i32, i32* @time_left, align 4
  %cmp139 = icmp sgt i32 %57, %58
  br i1 %cmp139, label %if.then.144, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %if.then.137
  %59 = load i32, i32* @opp_time, align 4
  %cmp142 = icmp slt i32 %59, 1500
  br i1 %cmp142, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %lor.lhs.false.141, %if.then.137
  %60 = load double, double* %allocated_time, align 8
  %mul145 = fmul double %60, 5.000000e-01
  store double %mul145, double* %allocated_time, align 8
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %lor.lhs.false.141
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.134
  %61 = load double, double* %allocated_time, align 8
  %conv148 = fptosi double %61 to i32
  ret i32 %conv148
}

; Function Attrs: nounwind uwtable
define void @comp_to_san(%struct.move_s* byval align 8 %move, i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %moves = alloca [512 x %struct.move_s], align 16
  %evade_moves = alloca [512 x %struct.move_s], align 16
  %i = alloca i32, align 4
  %num_moves = alloca i32, align 4
  %evasions = alloca i32, align 4
  %ambig = alloca i32, align 4
  %mate = alloca i32, align 4
  %f_rank = alloca i32, align 4
  %t_rank = alloca i32, align 4
  %converter = alloca i32, align 4
  %f_file = alloca i8, align 1
  %t_file = alloca i8, align 1
  %ic = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %from = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %0 = load i32, i32* %from, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %f_rank, align 4
  %target = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %2 = load i32, i32* %target, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %t_rank, align 4
  store i32 97, i32* %converter, align 4
  %from3 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %4 = load i32, i32* %from3, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %6 = load i32, i32* %converter, align 4
  %add = add nsw i32 %5, %6
  %sub = sub nsw i32 %add, 1
  %conv = trunc i32 %sub to i8
  store i8 %conv, i8* %f_file, align 1
  %target6 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %7 = load i32, i32* %target6, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %9 = load i32, i32* %converter, align 4
  %add9 = add nsw i32 %8, %9
  %sub10 = sub nsw i32 %add9, 1
  %conv11 = trunc i32 %sub10 to i8
  store i8 %conv11, i8* %t_file, align 1
  %from12 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %10 = load i32, i32* %from12, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %str.addr, align 8
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %12 = load i32, i32* %promoted, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %14 = load i8, i8* %t_file, align 1
  %conv16 = sext i8 %14 to i32
  %15 = load i32, i32* %t_rank, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %conv16, i32 %15) #3
  br label %if.end.209

if.else:                                          ; preds = %entry
  %from17 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %16 = load i32, i32* %from17, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %17, 1
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %from22 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %18 = load i32, i32* %from22, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %19 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %19, 2
  br i1 %cmp25, label %if.then.27, label %if.else.61

if.then.27:                                       ; preds = %lor.lhs.false, %if.else
  %target28 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %20 = load i32, i32* %target28, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom29
  %21 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %21, 13
  br i1 %cmp31, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %if.then.27
  %ep = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 5
  %22 = load i32, i32* %ep, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.else.45, label %if.then.33

if.then.33:                                       ; preds = %land.lhs.true
  %promoted34 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %23 = load i32, i32* %promoted34, align 4
  %tobool35 = icmp ne i32 %23, 0
  br i1 %tobool35, label %if.else.39, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i8, i8* %t_file, align 1
  %conv37 = sext i8 %25 to i32
  %26 = load i32, i32* %t_rank, align 4
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %conv37, i32 %26) #3
  br label %if.end

if.else.39:                                       ; preds = %if.then.33
  %27 = load i8*, i8** %str.addr, align 8
  %28 = load i8, i8* %t_file, align 1
  %conv40 = sext i8 %28 to i32
  %29 = load i32, i32* %t_rank, align 4
  %promoted41 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %30 = load i32, i32* %promoted41, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom42
  %31 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %conv40, i32 %29, i32 %31) #3
  br label %if.end

if.end:                                           ; preds = %if.else.39, %if.then.36
  br label %if.end.60

if.else.45:                                       ; preds = %land.lhs.true, %if.then.27
  %promoted46 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %32 = load i32, i32* %promoted46, align 4
  %tobool47 = icmp ne i32 %32, 0
  br i1 %tobool47, label %if.else.52, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  %33 = load i8*, i8** %str.addr, align 8
  %34 = load i8, i8* %f_file, align 1
  %conv49 = sext i8 %34 to i32
  %35 = load i8, i8* %t_file, align 1
  %conv50 = sext i8 %35 to i32
  %36 = load i32, i32* %t_rank, align 4
  %call51 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %conv49, i32 %conv50, i32 %36) #3
  br label %if.end.59

if.else.52:                                       ; preds = %if.else.45
  %37 = load i8*, i8** %str.addr, align 8
  %38 = load i8, i8* %f_file, align 1
  %conv53 = sext i8 %38 to i32
  %39 = load i8, i8* %t_file, align 1
  %conv54 = sext i8 %39 to i32
  %40 = load i32, i32* %t_rank, align 4
  %promoted55 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %41 = load i32, i32* %promoted55, align 4
  %idxprom56 = sext i32 %41 to i64
  %arrayidx57 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom56
  %42 = load i32, i32* %arrayidx57, align 4
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i32 %conv53, i32 %conv54, i32 %40, i32 %42) #3
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.then.48
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end
  br label %if.end.208

if.else.61:                                       ; preds = %lor.lhs.false
  %castled = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 4
  %43 = load i32, i32* %castled, align 4
  %cmp62 = icmp ne i32 %43, 0
  br i1 %cmp62, label %if.then.64, label %if.else.77

if.then.64:                                       ; preds = %if.else.61
  %castled65 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 4
  %44 = load i32, i32* %castled65, align 4
  %cmp66 = icmp eq i32 %44, 1
  br i1 %cmp66, label %if.then.72, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.64
  %castled69 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 4
  %45 = load i32, i32* %castled69, align 4
  %cmp70 = icmp eq i32 %45, 3
  br i1 %cmp70, label %if.then.72, label %if.else.74

if.then.72:                                       ; preds = %lor.lhs.false.68, %if.then.64
  %46 = load i8*, i8** %str.addr, align 8
  %call73 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)) #3
  br label %if.end.76

if.else.74:                                       ; preds = %lor.lhs.false.68
  %47 = load i8*, i8** %str.addr, align 8
  %call75 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #3
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.72
  br label %if.end.207

if.else.77:                                       ; preds = %if.else.61
  store i32 -1, i32* %ambig, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx78 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx78)
  %48 = load i32, i32* @numb_moves, align 4
  store i32 %48, i32* %num_moves, align 4
  %call79 = call i32 @in_check()
  store i32 %call79, i32* %ic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.77
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %num_moves, align 4
  %cmp80 = icmp slt i32 %49, %50
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %51 to i64
  %arrayidx83 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom82
  %target84 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx83, i32 0, i32 1
  %52 = load i32, i32* %target84, align 4
  %target85 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %53 = load i32, i32* %target85, align 4
  %cmp86 = icmp eq i32 %52, %53
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.115

land.lhs.true.88:                                 ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %54 to i64
  %arrayidx90 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom89
  %from91 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx90, i32 0, i32 0
  %55 = load i32, i32* %from91, align 4
  %idxprom92 = sext i32 %55 to i64
  %arrayidx93 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom92
  %56 = load i32, i32* %arrayidx93, align 4
  %from94 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %57 = load i32, i32* %from94, align 4
  %idxprom95 = sext i32 %57 to i64
  %arrayidx96 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom95
  %58 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp eq i32 %56, %58
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.115

land.lhs.true.99:                                 ; preds = %land.lhs.true.88
  %59 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %59 to i64
  %arrayidx101 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom100
  %from102 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx101, i32 0, i32 0
  %60 = load i32, i32* %from102, align 4
  %from103 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %61 = load i32, i32* %from103, align 4
  %cmp104 = icmp ne i32 %60, %61
  br i1 %cmp104, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %land.lhs.true.99
  %arrayidx107 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %62 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx107, i32 %62)
  %arrayidx108 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %ic, align 4
  %call109 = call i32 @check_legal(%struct.move_s* %arrayidx108, i32 %63, i32 %64)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.then.106
  %arrayidx112 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %65 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx112, i32 %65)
  %66 = load i32, i32* %i, align 4
  store i32 %66, i32* %ambig, align 4
  br label %for.end

if.end.113:                                       ; preds = %if.then.106
  %arrayidx114 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %67 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx114, i32 %67)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.113, %land.lhs.true.99, %land.lhs.true.88, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.111, %for.cond
  %69 = load i32, i32* %ambig, align 4
  %cmp116 = icmp ne i32 %69, -1
  br i1 %cmp116, label %if.then.118, label %if.else.183

if.then.118:                                      ; preds = %for.end
  %target119 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %70 = load i32, i32* %target119, align 4
  %idxprom120 = sext i32 %70 to i64
  %arrayidx121 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom120
  %71 = load i32, i32* %arrayidx121, align 4
  %cmp122 = icmp eq i32 %71, 13
  br i1 %cmp122, label %if.then.124, label %if.else.153

if.then.124:                                      ; preds = %if.then.118
  %72 = load i32, i32* %ambig, align 4
  %idxprom125 = sext i32 %72 to i64
  %arrayidx126 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom125
  %from127 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx126, i32 0, i32 0
  %73 = load i32, i32* %from127, align 4
  %idxprom128 = sext i32 %73 to i64
  %arrayidx129 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom128
  %74 = load i32, i32* %arrayidx129, align 4
  %from130 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %75 = load i32, i32* %from130, align 4
  %idxprom131 = sext i32 %75 to i64
  %arrayidx132 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom131
  %76 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp ne i32 %74, %76
  br i1 %cmp133, label %if.then.135, label %if.else.144

if.then.135:                                      ; preds = %if.then.124
  %77 = load i8*, i8** %str.addr, align 8
  %from136 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %78 = load i32, i32* %from136, align 4
  %idxprom137 = sext i32 %78 to i64
  %arrayidx138 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom137
  %79 = load i32, i32* %arrayidx138, align 4
  %idxprom139 = sext i32 %79 to i64
  %arrayidx140 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom139
  %80 = load i32, i32* %arrayidx140, align 4
  %81 = load i8, i8* %f_file, align 1
  %conv141 = sext i8 %81 to i32
  %82 = load i8, i8* %t_file, align 1
  %conv142 = sext i8 %82 to i32
  %83 = load i32, i32* %t_rank, align 4
  %call143 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %80, i32 %conv141, i32 %conv142, i32 %83) #3
  br label %if.end.152

if.else.144:                                      ; preds = %if.then.124
  %84 = load i8*, i8** %str.addr, align 8
  %from145 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %85 = load i32, i32* %from145, align 4
  %idxprom146 = sext i32 %85 to i64
  %arrayidx147 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom146
  %86 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %86 to i64
  %arrayidx149 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom148
  %87 = load i32, i32* %arrayidx149, align 4
  %88 = load i32, i32* %f_rank, align 4
  %89 = load i8, i8* %t_file, align 1
  %conv150 = sext i8 %89 to i32
  %90 = load i32, i32* %t_rank, align 4
  %call151 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %87, i32 %88, i32 %conv150, i32 %90) #3
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.144, %if.then.135
  br label %if.end.182

if.else.153:                                      ; preds = %if.then.118
  %91 = load i32, i32* %ambig, align 4
  %idxprom154 = sext i32 %91 to i64
  %arrayidx155 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom154
  %from156 = getelementptr inbounds %struct.move_s, %struct.move_s* %arrayidx155, i32 0, i32 0
  %92 = load i32, i32* %from156, align 4
  %idxprom157 = sext i32 %92 to i64
  %arrayidx158 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom157
  %93 = load i32, i32* %arrayidx158, align 4
  %from159 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %94 = load i32, i32* %from159, align 4
  %idxprom160 = sext i32 %94 to i64
  %arrayidx161 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom160
  %95 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp ne i32 %93, %95
  br i1 %cmp162, label %if.then.164, label %if.else.173

if.then.164:                                      ; preds = %if.else.153
  %96 = load i8*, i8** %str.addr, align 8
  %from165 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %97 = load i32, i32* %from165, align 4
  %idxprom166 = sext i32 %97 to i64
  %arrayidx167 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom166
  %98 = load i32, i32* %arrayidx167, align 4
  %idxprom168 = sext i32 %98 to i64
  %arrayidx169 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom168
  %99 = load i32, i32* %arrayidx169, align 4
  %100 = load i8, i8* %f_file, align 1
  %conv170 = sext i8 %100 to i32
  %101 = load i8, i8* %t_file, align 1
  %conv171 = sext i8 %101 to i32
  %102 = load i32, i32* %t_rank, align 4
  %call172 = call i32 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %99, i32 %conv170, i32 %conv171, i32 %102) #3
  br label %if.end.181

if.else.173:                                      ; preds = %if.else.153
  %103 = load i8*, i8** %str.addr, align 8
  %from174 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %104 = load i32, i32* %from174, align 4
  %idxprom175 = sext i32 %104 to i64
  %arrayidx176 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom175
  %105 = load i32, i32* %arrayidx176, align 4
  %idxprom177 = sext i32 %105 to i64
  %arrayidx178 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom177
  %106 = load i32, i32* %arrayidx178, align 4
  %107 = load i32, i32* %f_rank, align 4
  %108 = load i8, i8* %t_file, align 1
  %conv179 = sext i8 %108 to i32
  %109 = load i32, i32* %t_rank, align 4
  %call180 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 %106, i32 %107, i32 %conv179, i32 %109) #3
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.173, %if.then.164
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.152
  br label %if.end.206

if.else.183:                                      ; preds = %for.end
  %target184 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %110 = load i32, i32* %target184, align 4
  %idxprom185 = sext i32 %110 to i64
  %arrayidx186 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom185
  %111 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp eq i32 %111, 13
  br i1 %cmp187, label %if.then.189, label %if.else.197

if.then.189:                                      ; preds = %if.else.183
  %112 = load i8*, i8** %str.addr, align 8
  %from190 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %113 = load i32, i32* %from190, align 4
  %idxprom191 = sext i32 %113 to i64
  %arrayidx192 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom191
  %114 = load i32, i32* %arrayidx192, align 4
  %idxprom193 = sext i32 %114 to i64
  %arrayidx194 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom193
  %115 = load i32, i32* %arrayidx194, align 4
  %116 = load i8, i8* %t_file, align 1
  %conv195 = sext i8 %116 to i32
  %117 = load i32, i32* %t_rank, align 4
  %call196 = call i32 (i8*, i8*, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 %115, i32 %conv195, i32 %117) #3
  br label %if.end.205

if.else.197:                                      ; preds = %if.else.183
  %118 = load i8*, i8** %str.addr, align 8
  %from198 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %119 = load i32, i32* %from198, align 4
  %idxprom199 = sext i32 %119 to i64
  %arrayidx200 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom199
  %120 = load i32, i32* %arrayidx200, align 4
  %idxprom201 = sext i32 %120 to i64
  %arrayidx202 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_san.type_to_char, i32 0, i64 %idxprom201
  %121 = load i32, i32* %arrayidx202, align 4
  %122 = load i8, i8* %t_file, align 1
  %conv203 = sext i8 %122 to i32
  %123 = load i32, i32* %t_rank, align 4
  %call204 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %121, i32 %conv203, i32 %123) #3
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.197, %if.then.189
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.end.182
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.76
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %if.end.60
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then
  call void @make(%struct.move_s* %move, i32 0)
  %call210 = call i32 @check_legal(%struct.move_s* %move, i32 0, i32 1)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.end.214, label %if.then.212

if.then.212:                                      ; preds = %if.end.209
  %124 = load i8*, i8** %str.addr, align 8
  %call213 = call i8* @strcpy(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)) #3
  call void @unmake(%struct.move_s* %move, i32 0)
  br label %return

if.end.214:                                       ; preds = %if.end.209
  %call215 = call i32 @in_check()
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.241

if.then.217:                                      ; preds = %if.end.214
  store i32 1, i32* %mate, align 4
  store i32 0, i32* %evasions, align 4
  %arrayidx218 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %evade_moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx218)
  %125 = load i32, i32* @numb_moves, align 4
  store i32 %125, i32* %evasions, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.231, %if.then.217
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %evasions, align 4
  %cmp220 = icmp slt i32 %126, %127
  br i1 %cmp220, label %for.body.222, label %for.end.233

for.body.222:                                     ; preds = %for.cond.219
  %arrayidx223 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %evade_moves, i32 0, i64 0
  %128 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx223, i32 %128)
  %arrayidx224 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %evade_moves, i32 0, i64 0
  %129 = load i32, i32* %i, align 4
  %call225 = call i32 @check_legal(%struct.move_s* %arrayidx224, i32 %129, i32 1)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.229

if.then.227:                                      ; preds = %for.body.222
  store i32 0, i32* %mate, align 4
  %arrayidx228 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %evade_moves, i32 0, i64 0
  %130 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx228, i32 %130)
  br label %for.end.233

if.end.229:                                       ; preds = %for.body.222
  %arrayidx230 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %evade_moves, i32 0, i64 0
  %131 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx230, i32 %131)
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.229
  %132 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %132, 1
  store i32 %inc232, i32* %i, align 4
  br label %for.cond.219

for.end.233:                                      ; preds = %if.then.227, %for.cond.219
  %133 = load i32, i32* %mate, align 4
  %cmp234 = icmp eq i32 %133, 1
  br i1 %cmp234, label %if.then.236, label %if.else.238

if.then.236:                                      ; preds = %for.end.233
  %134 = load i8*, i8** %str.addr, align 8
  %call237 = call i8* @strcat(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #3
  br label %if.end.240

if.else.238:                                      ; preds = %for.end.233
  %135 = load i8*, i8** %str.addr, align 8
  %call239 = call i8* @strcat(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #3
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.238, %if.then.236
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.214
  call void @unmake(%struct.move_s* %move, i32 0)
  br label %return

return:                                           ; preds = %if.end.241, %if.then.212
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

declare void @gen(%struct.move_s*) #2

declare i32 @in_check() #2

declare void @make(%struct.move_s*, i32) #2

declare i32 @check_legal(%struct.move_s*, i32, i32) #2

declare void @unmake(%struct.move_s*, i32) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @comp_to_coord(%struct.move_s* byval align 8 %move, i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %prom = alloca i32, align 4
  %from = alloca i32, align 4
  %target = alloca i32, align 4
  %f_rank = alloca i32, align 4
  %t_rank = alloca i32, align 4
  %converter = alloca i32, align 4
  %f_file = alloca i8, align 1
  %t_file = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  %promoted = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 3
  %0 = load i32, i32* %promoted, align 4
  store i32 %0, i32* %prom, align 4
  %from1 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 0
  %1 = load i32, i32* %from1, align 4
  store i32 %1, i32* %from, align 4
  %target2 = getelementptr inbounds %struct.move_s, %struct.move_s* %move, i32 0, i32 1
  %2 = load i32, i32* %target2, align 4
  store i32 %2, i32* %target, align 4
  %3 = load i32, i32* %from, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %f_rank, align 4
  %5 = load i32, i32* %target, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  store i32 %6, i32* %t_rank, align 4
  store i32 97, i32* %converter, align 4
  %7 = load i32, i32* %from, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %9 = load i32, i32* %converter, align 4
  %add = add nsw i32 %8, %9
  %sub = sub nsw i32 %add, 1
  %conv = trunc i32 %sub to i8
  store i8 %conv, i8* %f_file, align 1
  %10 = load i32, i32* %target, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  %12 = load i32, i32* %converter, align 4
  %add9 = add nsw i32 %11, %12
  %sub10 = sub nsw i32 %add9, 1
  %conv11 = trunc i32 %sub10 to i8
  store i8 %conv11, i8* %t_file, align 1
  %13 = load i32, i32* %from, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i8*, i8** %str.addr, align 8
  %15 = load i32, i32* %prom, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [14 x i32], [14 x i32]* @comp_to_coord.type_to_char, i32 0, i64 %idxprom13
  %16 = load i32, i32* %arrayidx14, align 4
  %17 = load i8, i8* %t_file, align 1
  %conv15 = sext i8 %17 to i32
  %18 = load i32, i32* %t_rank, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %16, i32 %conv15, i32 %18) #3
  br label %if.end.67

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %prom, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.else.20, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i8, i8* %f_file, align 1
  %conv17 = sext i8 %21 to i32
  %22 = load i32, i32* %f_rank, align 4
  %23 = load i8, i8* %t_file, align 1
  %conv18 = sext i8 %23 to i32
  %24 = load i32, i32* %t_rank, align 4
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 %conv17, i32 %22, i32 %conv18, i32 %24) #3
  br label %if.end.66

if.else.20:                                       ; preds = %if.else
  %25 = load i32, i32* %prom, align 4
  %cmp21 = icmp eq i32 %25, 3
  br i1 %cmp21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.20
  %26 = load i32, i32* %prom, align 4
  %cmp23 = icmp eq i32 %26, 4
  br i1 %cmp23, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %lor.lhs.false, %if.else.20
  %27 = load i8*, i8** %str.addr, align 8
  %28 = load i8, i8* %f_file, align 1
  %conv26 = sext i8 %28 to i32
  %29 = load i32, i32* %f_rank, align 4
  %30 = load i8, i8* %t_file, align 1
  %conv27 = sext i8 %30 to i32
  %31 = load i32, i32* %t_rank, align 4
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %conv26, i32 %29, i32 %conv27, i32 %31) #3
  br label %if.end.65

if.else.29:                                       ; preds = %lor.lhs.false
  %32 = load i32, i32* %prom, align 4
  %cmp30 = icmp eq i32 %32, 7
  br i1 %cmp30, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.else.29
  %33 = load i32, i32* %prom, align 4
  %cmp33 = icmp eq i32 %33, 8
  br i1 %cmp33, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %lor.lhs.false.32, %if.else.29
  %34 = load i8*, i8** %str.addr, align 8
  %35 = load i8, i8* %f_file, align 1
  %conv36 = sext i8 %35 to i32
  %36 = load i32, i32* %f_rank, align 4
  %37 = load i8, i8* %t_file, align 1
  %conv37 = sext i8 %37 to i32
  %38 = load i32, i32* %t_rank, align 4
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 %conv36, i32 %36, i32 %conv37, i32 %38) #3
  br label %if.end.64

if.else.39:                                       ; preds = %lor.lhs.false.32
  %39 = load i32, i32* %prom, align 4
  %cmp40 = icmp eq i32 %39, 11
  br i1 %cmp40, label %if.then.45, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.else.39
  %40 = load i32, i32* %prom, align 4
  %cmp43 = icmp eq i32 %40, 12
  br i1 %cmp43, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.else.39
  %41 = load i8*, i8** %str.addr, align 8
  %42 = load i8, i8* %f_file, align 1
  %conv46 = sext i8 %42 to i32
  %43 = load i32, i32* %f_rank, align 4
  %44 = load i8, i8* %t_file, align 1
  %conv47 = sext i8 %44 to i32
  %45 = load i32, i32* %t_rank, align 4
  %call48 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 %conv46, i32 %43, i32 %conv47, i32 %45) #3
  br label %if.end.63

if.else.49:                                       ; preds = %lor.lhs.false.42
  %46 = load i32, i32* %prom, align 4
  %cmp50 = icmp eq i32 %46, 5
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.else.49
  %47 = load i32, i32* %prom, align 4
  %cmp53 = icmp eq i32 %47, 6
  br i1 %cmp53, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %lor.lhs.false.52, %if.else.49
  %48 = load i8*, i8** %str.addr, align 8
  %49 = load i8, i8* %f_file, align 1
  %conv56 = sext i8 %49 to i32
  %50 = load i32, i32* %f_rank, align 4
  %51 = load i8, i8* %t_file, align 1
  %conv57 = sext i8 %51 to i32
  %52 = load i32, i32* %t_rank, align 4
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 %conv56, i32 %50, i32 %conv57, i32 %52) #3
  br label %if.end

if.else.59:                                       ; preds = %lor.lhs.false.52
  %53 = load i8*, i8** %str.addr, align 8
  %54 = load i8, i8* %f_file, align 1
  %conv60 = sext i8 %54 to i32
  %55 = load i32, i32* %f_rank, align 4
  %56 = load i8, i8* %t_file, align 1
  %conv61 = sext i8 %56 to i32
  %57 = load i32, i32* %t_rank, align 4
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %conv60, i32 %55, i32 %conv61, i32 %57) #3
  br label %if.end

if.end:                                           ; preds = %if.else.59, %if.then.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %if.then.45
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.35
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.25
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.16
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @display_board(%struct._IO_FILE* %stream, i32 %color) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %color.addr = alloca i32, align 4
  %line_sep = alloca i8*, align 8
  %piece_rep = alloca [14 x i8*], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i32 0, i32 0), i8** %line_sep, align 8
  %0 = bitcast [14 x i8*]* %piece_rep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([14 x i8*]* @display_board.piece_rep to i8*), i64 112, i32 16, i1 false)
  %1 = load i32, i32* %color.addr, align 4
  %rem = srem i32 %1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** %line_sep, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %3)
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.then
  %4 = load i32, i32* %a, align 4
  %cmp = icmp sle i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i32, i32* %a, align 4
  %sub = sub nsw i32 9, %6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %sub)
  store i32 0, i32* %b, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %b, align 4
  %cmp3 = icmp sle i32 %7, 11
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %a, align 4
  %mul = mul nsw i32 %8, 12
  %sub5 = sub nsw i32 120, %mul
  %9 = load i32, i32* %b, align 4
  %add = add nsw i32 %sub5, %9
  store i32 %add, i32* %c, align 4
  %10 = load i32, i32* %c, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %13 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [14 x i8*], [14 x i8*]* %piece_rep, i32 0, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %b, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %18 = load i8*, i8** %line_sep, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %18)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %19 = load i32, i32* %a, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %a, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.47

if.else:                                          ; preds = %entry
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %22 = load i8*, i8** %line_sep, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* %22)
  store i32 1, i32* %a, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.43, %if.else
  %23 = load i32, i32* %a, align 4
  %cmp20 = icmp sle i32 %23, 8
  br i1 %cmp20, label %for.body.21, label %for.end.45

for.body.21:                                      ; preds = %for.cond.19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %25 = load i32, i32* %a, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %25)
  store i32 0, i32* %b, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %for.body.21
  %26 = load i32, i32* %b, align 4
  %cmp24 = icmp sle i32 %26, 11
  br i1 %cmp24, label %for.body.25, label %for.end.41

for.body.25:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %a, align 4
  %mul26 = mul nsw i32 %27, 12
  %add27 = add nsw i32 24, %mul26
  %28 = load i32, i32* %b, align 4
  %sub28 = sub nsw i32 %add27, %28
  store i32 %sub28, i32* %c, align 4
  %29 = load i32, i32* %c, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom29
  %30 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp ne i32 %30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %for.body.25
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %32 = load i32, i32* %c, align 4
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom33
  %33 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [14 x i8*], [14 x i8*]* %piece_rep, i32 0, i64 %idxprom35
  %34 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* %34)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %for.body.25
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %35 = load i32, i32* %b, align 4
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, i32* %b, align 4
  br label %for.cond.23

for.end.41:                                       ; preds = %for.cond.23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %37 = load i8*, i8** %line_sep, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %37)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.41
  %38 = load i32, i32* %a, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %a, align 4
  br label %for.cond.19

for.end.45:                                       ; preds = %for.cond.19
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.45, %for.end.16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @init_game() #0 {
entry:
  %init_board = alloca [144 x i32], align 16
  %0 = bitcast [144 x i32]* %init_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([144 x i32]* @init_game.init_board to i8*), i64 576, i32 16, i1 false)
  %1 = bitcast [144 x i32]* %init_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* %1, i64 576, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([144 x i32]* @moved to i8*), i8 0, i64 576, i32 16, i1 false)
  store i32 1, i32* @white_to_move, align 4
  store i32 0, i32* @ep_square, align 4
  store i32 30, i32* @wking_loc, align 4
  store i32 114, i32* @bking_loc, align 4
  store i32 0, i32* @white_castled, align 4
  store i32 0, i32* @black_castled, align 4
  store i32 0, i32* @result, align 4
  store i32 0, i32* @captures, align 4
  store i32 32, i32* @piece_count, align 4
  store i32 0, i32* @Material, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  call void @reset_piece_square()
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @book_ply, align 4
  store i32 0, i32* @fifty, align 4
  store i32 0, i32* @ply, align 4
  store i32 0, i32* @phase, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @reset_piece_square() #0 {
entry:
  %i = alloca i32, align 4
  %promoted_board = alloca [144 x i32], align 16
  %0 = bitcast [144 x i32]* %promoted_board to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 576, i32 16, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [144 x i32], [144 x i32]* %promoted_board, i32 0, i64 %idxprom3
  store i32 1, i32* %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @Material, align 4
  store i32 0, i32* @piece_count, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @pieces to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  store i32 0, i32* getelementptr inbounds ([62 x i32], [62 x i32]* @pieces, i32 0, i64 0), align 4
  store i32 26, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.34, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 118
  br i1 %cmp6, label %for.body.7, label %for.end.36

for.body.7:                                       ; preds = %for.cond.5
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.7
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %12, 13
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom17
  %15 = load i32, i32* %arrayidx18, align 4
  %16 = load i32, i32* @Material, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* @Material, align 4
  %17 = load i32, i32* @piece_count, align 4
  %add19 = add nsw i32 %17, 1
  store i32 %add19, i32* @piece_count, align 4
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* @piece_count, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom20
  store i32 %18, i32* %arrayidx21, align 4
  %20 = load i32, i32* @piece_count, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom22
  store i32 %20, i32* %arrayidx23, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [144 x i32], [144 x i32]* %promoted_board, i32 0, i64 %idxprom24
  %23 = load i32, i32* %arrayidx25, align 4
  %tobool26 = icmp ne i32 %23, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.14
  %24 = load i32, i32* @piece_count, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [62 x i32], [62 x i32]* @is_promoted, i32 0, i64 %idxprom28
  store i32 1, i32* %arrayidx29, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.14
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %for.body.7
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom31
  store i32 0, i32* %arrayidx32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.end.30
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %26 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.5

for.end.36:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_move(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx1, align 2
  %conv2 = zext i16 %3 to i32
  %and = and i32 %conv2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %call6 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %6, i64 %idxprom5
  %7 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 2048
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %8 = load i8*, i8** %str.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %10, i64 %idxprom14
  %11 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %11 to i32
  %and18 = and i32 %conv17, 1024
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %land.lhs.true.11
  %12 = load i8*, i8** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %13 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %14, i64 %idxprom23
  %15 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %15 to i32
  %and27 = and i32 %conv26, 2048
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.20
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.11, %land.lhs.true, %entry
  %16 = load i8*, i8** %str.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %17 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %call32 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %18, i64 %idxprom31
  %19 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %19 to i32
  %and35 = and i32 %conv34, 1024
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.else.60

land.lhs.true.37:                                 ; preds = %if.else
  %20 = load i8*, i8** %str.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %21 to i32
  %cmp = icmp eq i32 %conv39, 64
  br i1 %cmp, label %land.lhs.true.41, label %if.else.60

land.lhs.true.41:                                 ; preds = %land.lhs.true.37
  %22 = load i8*, i8** %str.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %23 to i32
  %idxprom44 = sext i32 %conv43 to i64
  %call45 = call i16** @__ctype_b_loc() #7
  %24 = load i16*, i16** %call45, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %24, i64 %idxprom44
  %25 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %25 to i32
  %and48 = and i32 %conv47, 1024
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.60

land.lhs.true.50:                                 ; preds = %land.lhs.true.41
  %26 = load i8*, i8** %str.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %26, i64 3
  %27 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %27 to i32
  %idxprom53 = sext i32 %conv52 to i64
  %call54 = call i16** @__ctype_b_loc() #7
  %28 = load i16*, i16** %call54, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %28, i64 %idxprom53
  %29 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %29 to i32
  %and57 = and i32 %conv56, 2048
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %land.lhs.true.50
  store i32 1, i32* %retval
  br label %return

if.else.60:                                       ; preds = %land.lhs.true.50, %land.lhs.true.41, %land.lhs.true.37, %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.60, %if.then.59, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define void @perft_debug() #0 {
entry:
  %input = alloca [256 x i8], align 16
  %p = alloca i8*, align 8
  %move = alloca %struct.move_s, align 4
  %depth = alloca i32, align 4
  call void @init_game()
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.43
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @atoi(i8* %arraydecay1) #8
  store i32 %call2, i32* %depth, align 4
  store i32 0, i32* @raw_nodes, align 4
  %1 = load i32, i32* %depth, align 4
  call void @perft(i32 %1)
  %2 = load i32, i32* %depth, align 4
  %3 = load i32, i32* @raw_nodes, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 %2, i32 %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %4, i32 1)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i32 0, i32 0))
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay5, i32 256, %struct._IO_FILE* %5)
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  store i8* %arraydecay6, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %call7 = call i32 @tolower(i32 %conv) #3
  %conv8 = trunc i32 %call7 to i8
  %10 = load i8*, i8** %p, align 8
  store i8 %conv8, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* %arraydecay12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.end
  call void @exit(i32 0) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call16 = call i32 @verify_coord(i8* %arraydecay15, %struct.move_s* %move)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.43, label %if.then.18

if.then.18:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.18
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i32 0, i32 0))
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay20, i32 256, %struct._IO_FILE* %12)
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  store i8* %arraydecay21, i8** %p, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %do.body
  %13 = load i8*, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %tobool23 = icmp ne i8 %14, 0
  br i1 %tobool23, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.22
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv25 = sext i8 %16 to i32
  %call26 = call i32 @tolower(i32 %conv25) #3
  %conv27 = trunc i32 %call26 to i8
  %17 = load i8*, i8** %p, align 8
  store i8 %conv27, i8* %17, align 1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #8
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %lor.lhs.false.34, label %if.then.38

lor.lhs.false.34:                                 ; preds = %for.end.30
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call36 = call i32 @strcmp(i8* %arraydecay35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0)) #8
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false.34, %for.end.30
  call void @exit(i32 0) #9
  unreachable

if.end.39:                                        ; preds = %lor.lhs.false.34
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call41 = call i32 @verify_coord(i8* %arraydecay40, %struct.move_s* %move)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot = xor i1 %tobool42, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.43

if.end.43:                                        ; preds = %do.end, %if.end
  call void @make(%struct.move_s* %move, i32 0)
  br label %while.body

return:                                           ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rinput(i8* %str, i32 %n, %struct._IO_FILE* %stream) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %ch, align 4
  %cmp1 = icmp ne i32 %1, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %4, 1
  %cmp2 = icmp slt i32 %3, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %ch, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i8*, i8** %str.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

declare void @perft(i32) #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define i32 @verify_coord(i8* %input, %struct.move_s* %move) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %move.addr = alloca %struct.move_s*, align 8
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %i = alloca i32, align 4
  %comp_move = alloca [6 x i8], align 1
  %legal = alloca i32, align 4
  %mate = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store %struct.move_s* %move, %struct.move_s** %move.addr, align 8
  store i32 0, i32* %legal, align 4
  %0 = load i32, i32* @Variant, align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %1 = load i32, i32* @numb_moves, align 4
  store i32 %1, i32* %num_moves, align 4
  store i32 0, i32* @captures, align 4
  store i32 1, i32* %mate, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_moves, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %4 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx2, i32 %4)
  %arrayidx3 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %5 = load i32, i32* %i, align 4
  %call = call i32 @check_legal(%struct.move_s* %arrayidx3, i32 %5, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  store i32 0, i32* %mate, align 4
  %arrayidx5 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %6 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx5, i32 %6)
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx6 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %7 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx6, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.4, %for.cond
  %9 = load i32, i32* %mate, align 4
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* @captures, align 4
  store i32 0, i32* %num_moves, align 4
  %arrayidx9 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx9)
  %10 = load i32, i32* @numb_moves, align 4
  store i32 %10, i32* %num_moves, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.end
  br label %if.end.12

if.else:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx11)
  %11 = load i32, i32* @numb_moves, align 4
  store i32 %11, i32* %num_moves, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.end.10
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.31, %if.end.12
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_moves, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.33

for.body.15:                                      ; preds = %for.cond.13
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %comp_move, i32 0, i32 0
  call void @comp_to_coord(%struct.move_s* byval align 8 %arrayidx16, i8* %arraydecay)
  %15 = load i8*, i8** %input.addr, align 8
  %arraydecay17 = getelementptr inbounds [6 x i8], [6 x i8]* %comp_move, i32 0, i32 0
  %call18 = call i32 @strcmp(i8* %15, i8* %arraydecay17) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.30, label %if.then.20

if.then.20:                                       ; preds = %for.body.15
  %arrayidx21 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %16 = load i32, i32* %i, align 4
  call void @make(%struct.move_s* %arrayidx21, i32 %16)
  %arrayidx22 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %17 = load i32, i32* %i, align 4
  %call23 = call i32 @check_legal(%struct.move_s* %arrayidx22, i32 %17, i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.then.20
  store i32 1, i32* %legal, align 4
  %18 = load %struct.move_s*, %struct.move_s** %move.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom26
  %20 = bitcast %struct.move_s* %18 to i8*
  %21 = bitcast %struct.move_s* %arrayidx27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 4, i1 false)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.then.20
  %arrayidx29 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %22 = load i32, i32* %i, align 4
  call void @unmake(%struct.move_s* %arrayidx29, i32 %22)
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.28, %for.body.15
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %23 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.13

for.end.33:                                       ; preds = %for.cond.13
  %24 = load i32, i32* %legal, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @hash_extract_pv(i32 %level, i8* %str) #0 {
entry:
  %level.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %xdummy = alloca i32, align 4
  %bm = alloca i32, align 4
  %moves = alloca [512 x %struct.move_s], align 16
  %num_moves = alloca i32, align 4
  %output = alloca [256 x i8], align 16
  store i32 %level, i32* %level.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %level.addr, align 4
  %1 = load i32, i32* %level.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %call = call i32 @ProbeTT(i32* %xdummy, i32 0, i32* %bm, i32* %xdummy, i32* %xdummy, i32 0)
  %cmp = icmp ne i32 %call, 4
  br i1 %cmp, label %if.then.1, label %if.end.18

if.then.1:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  call void @gen(%struct.move_s* %arrayidx)
  %2 = load i32, i32* @numb_moves, align 4
  store i32 %2, i32* %num_moves, align 4
  %3 = load i32, i32* %bm, align 4
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.then.1
  %4 = load i32, i32* %bm, align 4
  %5 = load i32, i32* %num_moves, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %bm, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx5, i8* %arraydecay)
  %arrayidx6 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %7 = load i32, i32* %bm, align 4
  call void @make(%struct.move_s* %arrayidx6, i32 %7)
  %arrayidx7 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %8 = load i32, i32* %bm, align 4
  %call8 = call i32 @check_legal(%struct.move_s* %arrayidx7, i32 %8, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.then.4
  %9 = load i8*, i8** %str.addr, align 8
  %call11 = call i8* @strcat(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0)) #3
  %10 = load i8*, i8** %str.addr, align 8
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call13 = call i8* @strcat(i8* %10, i8* %arraydecay12) #3
  %11 = load i8*, i8** %str.addr, align 8
  %call14 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)) #3
  %12 = load i32, i32* %level.addr, align 4
  %13 = load i8*, i8** %str.addr, align 8
  call void @hash_extract_pv(i32 %12, i8* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.then.4
  %arrayidx16 = getelementptr inbounds [512 x %struct.move_s], [512 x %struct.move_s]* %moves, i32 0, i64 0
  %14 = load i32, i32* %bm, align 4
  call void @unmake(%struct.move_s* %arrayidx16, i32 %14)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %land.lhs.true, %if.then.1
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.end.17, %if.end
  ret void
}

declare i32 @ProbeTT(i32*, i32, i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind uwtable
define void @stringize_pv(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %output = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 256, i32 1, i1 false)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i32 0, i64 1), align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx, i8* %arraydecay)
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom1
  call void @make(%struct.move_s* %arrayidx2, i32 0)
  %5 = load i8*, i8** %str.addr, align 8
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call = call i8* @strcat(i8* %5, i8* %arraydecay3) #3
  %6 = load i8*, i8** %str.addr, align 8
  %call4 = call i8* @strcat(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0)) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %str.addr, align 8
  call void @hash_extract_pv(i32 7, i8* %8)
  %9 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i32 0, i64 1), align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp sgt i32 %10, 0
  br i1 %cmp6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom8
  call void @unmake(%struct.move_s* %arrayidx9, i32 0)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define void @post_thinking(i32 %score) #0 {
entry:
  %score.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %remake = alloca i32, align 4
  %nps = alloca i32, align 4
  %elapsed = alloca i32, align 4
  %output = alloca [256 x i8], align 16
  %hashpv = alloca [256 x i8], align 16
  %dnps = alloca double, align 8
  store i32 %score, i32* %score.addr, align 4
  store i32 0, i32* %remake, align 4
  %call = call i64 @rtime()
  %0 = load i64, i64* @start_time, align 8
  %call1 = call i32 @rdifftime(i64 %call, i64 %0)
  store i32 %call1, i32* %elapsed, align 4
  %1 = load i32, i32* %elapsed, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nodes, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+02, %conv
  %3 = load i32, i32* %elapsed, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv2
  store double %div, double* %dnps, align 8
  %4 = load double, double* %dnps, align 8
  %conv3 = fptosi double %4 to i32
  store i32 %conv3, i32* %nps, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @nodes, align 4
  store i32 %5, i32* %nps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @xb_mode, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @i_depth, align 4
  %8 = load i32, i32* %score.addr, align 4
  %9 = load i32, i32* %elapsed, align 4
  %10 = load i32, i32* @nodes, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10)
  br label %if.end.13

if.else.6:                                        ; preds = %if.end
  %11 = load i32, i32* @i_depth, align 4
  %12 = load i32, i32* %score.addr, align 4
  %cmp7 = icmp slt i32 %12, 0
  %cond = select i1 %cmp7, i32 45, i32 32
  %13 = load i32, i32* %score.addr, align 4
  %div9 = sdiv i32 %13, 100
  %call10 = call i32 @abs(i32 %div9) #7
  %14 = load i32, i32* %score.addr, align 4
  %rem = srem i32 %14, 100
  %call11 = call i32 @abs(i32 %rem) #7
  %15 = load i32, i32* @nodes, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %11, i32 %cond, i32 %call10, i32 %call11, i32 %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.6, %if.then.4
  %16 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1, i32 0), align 4
  %cmp14 = icmp ne i32 %16, 0
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.13
  %17 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1, i32 0), align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %cmp16 = icmp eq i32 %18, 13
  br i1 %cmp16, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.13
  %19 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1, i32 0), align 4
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.26

land.lhs.true.20:                                 ; preds = %lor.lhs.false
  %20 = load i32, i32* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1, i32 1), align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom21
  %21 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp ne i32 %21, 13
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.20, %land.lhs.true
  call void @unmake(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1), i32 0)
  store i32 1, i32* %remake, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %land.lhs.true.20, %lor.lhs.false
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i32 0, i64 1), align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom29
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  call void @comp_to_san(%struct.move_s* byval align 8 %arrayidx30, i8* %arraydecay)
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom31
  call void @make(%struct.move_s* %arrayidx32, i32 0)
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* %arraydecay33)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = bitcast [256 x i8]* %hashpv to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 256, i32 16, i1 false)
  %arraydecay35 = getelementptr inbounds [256 x i8], [256 x i8]* %hashpv, i32 0, i32 0
  call void @hash_extract_pv(i32 7, i8* %arraydecay35)
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %hashpv, i32 0, i32 0
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay36)
  %28 = load i32, i32* getelementptr inbounds ([300 x i32], [300 x i32]* @pv_length, i32 0, i64 1), align 4
  %sub = sub nsw i32 %28, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.44, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp39 = icmp sgt i32 %29, 0
  br i1 %cmp39, label %for.body.41, label %for.end.45

for.body.41:                                      ; preds = %for.cond.38
  %30 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [300 x %struct.move_s], [300 x %struct.move_s]* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1), i32 0, i64 %idxprom42
  call void @unmake(%struct.move_s* %arrayidx43, i32 0)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.41
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.38

for.end.45:                                       ; preds = %for.cond.38
  %32 = load i32, i32* %remake, align 4
  %tobool46 = icmp ne i32 %32, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.end.45
  call void @make(%struct.move_s* getelementptr inbounds ([300 x [300 x %struct.move_s]], [300 x [300 x %struct.move_s]]* @pv, i32 0, i64 1, i64 1), i32 0)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.end.45
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @rdifftime(i64 %end, i64 %start) #0 {
entry:
  %end.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  store i64 %end, i64* %end.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load i64, i64* %start.addr, align 8
  %call = call double @difftime(i64 %0, i64 %1) #7
  %conv = fptosi double %call to i32
  %mul = mul nsw i32 100, %conv
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define i64 @rtime() #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define void @post_fail_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %score.addr = alloca i32, align 4
  %failmove.addr = alloca %struct.move_s*, align 8
  %elapsed = alloca i32, align 4
  %nps = alloca i32, align 4
  %output = alloca [256 x i8], align 16
  %dnps = alloca double, align 8
  %tmp = alloca %struct.move_s, align 8
  store i32 %score, i32* %score.addr, align 4
  store %struct.move_s* %failmove, %struct.move_s** %failmove.addr, align 8
  %call = call i64 @rtime()
  %0 = load i64, i64* @start_time, align 8
  %call1 = call i32 @rdifftime(i64 %call, i64 %0)
  store i32 %call1, i32* %elapsed, align 4
  %1 = load i32, i32* %elapsed, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nodes, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+02, %conv
  %3 = load i32, i32* %elapsed, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv2
  store double %div, double* %dnps, align 8
  %4 = load double, double* %dnps, align 8
  %conv3 = fptosi double %4 to i32
  store i32 %conv3, i32* %nps, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @nodes, align 4
  store i32 %5, i32* %nps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @xb_mode, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @i_depth, align 4
  %8 = load i32, i32* %score.addr, align 4
  %9 = load i32, i32* %elapsed, align 4
  %10 = load i32, i32* @nodes, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10)
  br label %if.end.13

if.else.6:                                        ; preds = %if.end
  %11 = load i32, i32* @i_depth, align 4
  %12 = load i32, i32* %score.addr, align 4
  %cmp7 = icmp slt i32 %12, 0
  %cond = select i1 %cmp7, i32 45, i32 32
  %13 = load i32, i32* %score.addr, align 4
  %div9 = sdiv i32 %13, 100
  %call10 = call i32 @abs(i32 %div9) #7
  %14 = load i32, i32* %score.addr, align 4
  %rem = srem i32 %14, 100
  %call11 = call i32 @abs(i32 %rem) #7
  %15 = load i32, i32* @nodes, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %11, i32 %cond, i32 %call10, i32 %call11, i32 %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.6, %if.then.4
  %16 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @unmake(%struct.move_s* %16, i32 0)
  %17 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %18 = bitcast %struct.move_s* %tmp to i8*
  %19 = bitcast %struct.move_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay)
  %20 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @make(%struct.move_s* %20, i32 0)
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay14)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @post_fh_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %score.addr = alloca i32, align 4
  %failmove.addr = alloca %struct.move_s*, align 8
  %elapsed = alloca i32, align 4
  %nps = alloca i32, align 4
  %output = alloca [256 x i8], align 16
  %dnps = alloca double, align 8
  %tmp = alloca %struct.move_s, align 8
  store i32 %score, i32* %score.addr, align 4
  store %struct.move_s* %failmove, %struct.move_s** %failmove.addr, align 8
  %call = call i64 @rtime()
  %0 = load i64, i64* @start_time, align 8
  %call1 = call i32 @rdifftime(i64 %call, i64 %0)
  store i32 %call1, i32* %elapsed, align 4
  %1 = load i32, i32* %elapsed, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nodes, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+02, %conv
  %3 = load i32, i32* %elapsed, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv2
  store double %div, double* %dnps, align 8
  %4 = load double, double* %dnps, align 8
  %conv3 = fptosi double %4 to i32
  store i32 %conv3, i32* %nps, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @nodes, align 4
  store i32 %5, i32* %nps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @xb_mode, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @i_depth, align 4
  %8 = load i32, i32* %score.addr, align 4
  %9 = load i32, i32* %elapsed, align 4
  %10 = load i32, i32* @nodes, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10)
  br label %if.end.13

if.else.6:                                        ; preds = %if.end
  %11 = load i32, i32* @i_depth, align 4
  %12 = load i32, i32* %score.addr, align 4
  %cmp7 = icmp slt i32 %12, 0
  %cond = select i1 %cmp7, i32 45, i32 32
  %13 = load i32, i32* %score.addr, align 4
  %div9 = sdiv i32 %13, 100
  %call10 = call i32 @abs(i32 %div9) #7
  %14 = load i32, i32* %score.addr, align 4
  %rem = srem i32 %14, 100
  %call11 = call i32 @abs(i32 %rem) #7
  %15 = load i32, i32* @nodes, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %11, i32 %cond, i32 %call10, i32 %call11, i32 %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.6, %if.then.4
  %16 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @unmake(%struct.move_s* %16, i32 0)
  %17 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %18 = bitcast %struct.move_s* %tmp to i8*
  %19 = bitcast %struct.move_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay)
  %20 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @make(%struct.move_s* %20, i32 0)
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay14)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @post_fl_thinking(i32 %score, %struct.move_s* %failmove) #0 {
entry:
  %score.addr = alloca i32, align 4
  %failmove.addr = alloca %struct.move_s*, align 8
  %elapsed = alloca i32, align 4
  %nps = alloca i32, align 4
  %output = alloca [256 x i8], align 16
  %dnps = alloca double, align 8
  %tmp = alloca %struct.move_s, align 8
  store i32 %score, i32* %score.addr, align 4
  store %struct.move_s* %failmove, %struct.move_s** %failmove.addr, align 8
  %call = call i64 @rtime()
  %0 = load i64, i64* @start_time, align 8
  %call1 = call i32 @rdifftime(i64 %call, i64 %0)
  store i32 %call1, i32* %elapsed, align 4
  %1 = load i32, i32* %elapsed, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @nodes, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+02, %conv
  %3 = load i32, i32* %elapsed, align 4
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv2
  store double %div, double* %dnps, align 8
  %4 = load double, double* %dnps, align 8
  %conv3 = fptosi double %4 to i32
  store i32 %conv3, i32* %nps, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @nodes, align 4
  store i32 %5, i32* %nps, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @xb_mode, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.end
  %7 = load i32, i32* @i_depth, align 4
  %8 = load i32, i32* %score.addr, align 4
  %9 = load i32, i32* %elapsed, align 4
  %10 = load i32, i32* @nodes, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i32 %7, i32 %8, i32 %9, i32 %10)
  br label %if.end.13

if.else.6:                                        ; preds = %if.end
  %11 = load i32, i32* @i_depth, align 4
  %12 = load i32, i32* %score.addr, align 4
  %cmp7 = icmp slt i32 %12, 0
  %cond = select i1 %cmp7, i32 45, i32 32
  %13 = load i32, i32* %score.addr, align 4
  %div9 = sdiv i32 %13, 100
  %call10 = call i32 @abs(i32 %div9) #7
  %14 = load i32, i32* %score.addr, align 4
  %rem = srem i32 %14, 100
  %call11 = call i32 @abs(i32 %rem) #7
  %15 = load i32, i32* @nodes, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 %11, i32 %cond, i32 %call10, i32 %call11, i32 %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.6, %if.then.4
  %16 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @unmake(%struct.move_s* %16, i32 0)
  %17 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %18 = bitcast %struct.move_s* %tmp to i8*
  %19 = bitcast %struct.move_s* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay)
  %20 = load %struct.move_s*, %struct.move_s** %failmove.addr, align 8
  call void @make(%struct.move_s* %20, i32 0)
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %output, i32 0, i32 0
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* %arraydecay14)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @post_stat_thinking() #0 {
entry:
  %elapsed = alloca i32, align 4
  %call = call i64 @rtime()
  %0 = load i64, i64* @start_time, align 8
  %call1 = call i32 @rdifftime(i64 %call, i64 %0)
  store i32 %call1, i32* %elapsed, align 4
  %1 = load i32, i32* @xb_mode, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %elapsed, align 4
  %3 = load i32, i32* @nodes, align 4
  %4 = load i32, i32* @i_depth, align 4
  %5 = load i32, i32* @moveleft, align 4
  %6 = load i32, i32* @movetotal, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0), i32 %2, i32 %3, i32 %4, i32 %5, i32 %6)
  br label %if.end.6

if.else:                                          ; preds = %entry
  %7 = load i32, i32* @xb_mode, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load i32, i32* %elapsed, align 4
  %9 = load i32, i32* @nodes, align 4
  %10 = load i32, i32* @i_depth, align 4
  %11 = load i32, i32* @moveleft, align 4
  %12 = load i32, i32* @movetotal, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @searching_move, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_move(%struct.move_s* %moves, i32 %m, %struct._IO_FILE* %stream) #0 {
entry:
  %moves.addr = alloca %struct.move_s*, align 8
  %m.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %move = alloca [256 x i8], align 16
  %tmp = alloca %struct.move_s, align 8
  store %struct.move_s* %moves, %struct.move_s** %moves.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.move_s*, %struct.move_s** %moves.addr, align 8
  %arrayidx = getelementptr inbounds %struct.move_s, %struct.move_s* %1, i64 %idxprom
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %move, i32 0, i32 0
  %2 = bitcast %struct.move_s* %tmp to i8*
  %3 = bitcast %struct.move_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 4, i1 false)
  call void @comp_to_san(%struct.move_s* byval align 8 %tmp, i8* %arraydecay)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %move, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @rdelay(i32 %time_in_s) #0 {
entry:
  %time_in_s.addr = alloca i32, align 4
  %time1 = alloca i64, align 8
  %time2 = alloca i64, align 8
  %timer = alloca i32, align 4
  store i32 %time_in_s, i32* %time_in_s.addr, align 4
  store i32 0, i32* %timer, align 4
  %call = call i64 @rtime()
  store i64 %call, i64* %time1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %timer, align 4
  %div = sdiv i32 %0, 100
  %1 = load i32, i32* %time_in_s.addr, align 4
  %cmp = icmp slt i32 %div, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i64 @rtime()
  store i64 %call1, i64* %time2, align 8
  %2 = load i64, i64* %time2, align 8
  %3 = load i64, i64* %time1, align 8
  %call2 = call i32 @rdifftime(i64 %2, i64 %3)
  store i32 %call2, i32* %timer, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind readnone
declare double @difftime(i64, i64) #4

; Function Attrs: nounwind uwtable
define void @check_piece_square() #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %8, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp eq i32 %11, 13
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.18

land.lhs.true.12:                                 ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp ne i32 %13, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %land.lhs.true.12
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %14, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %land.lhs.true.12, %if.end
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.30

land.lhs.true.22:                                 ; preds = %if.end.18
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom25
  %19 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp ne i32 %19, 0
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.22
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %20, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true.22, %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.73, %for.end
  %22 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %22, 144
  br i1 %cmp32, label %for.body.33, label %for.end.75

for.body.33:                                      ; preds = %for.cond.31
  %23 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom34
  %24 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %24, 13
  br i1 %cmp36, label %land.lhs.true.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.33
  %25 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom37
  %26 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp eq i32 %26, 0
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.46

land.lhs.true.40:                                 ; preds = %lor.lhs.false, %for.body.33
  %27 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom41
  %28 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp ne i32 %28, 0
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.40
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %29, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.40, %lor.lhs.false
  %30 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom47
  %31 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp ne i32 %31, 13
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.60

land.lhs.true.50:                                 ; preds = %if.end.46
  %32 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom51
  %33 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp ne i32 %33, 0
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.60

land.lhs.true.54:                                 ; preds = %land.lhs.true.50
  %34 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %34 to i64
  %arrayidx56 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom55
  %35 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %35, 0
  br i1 %cmp57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %land.lhs.true.54
  %36 = load i32, i32* %i, align 4
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0), i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %37, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %land.lhs.true.54, %land.lhs.true.50, %if.end.46
  %38 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom61
  %39 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %39 to i64
  %arrayidx64 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom63
  %40 = load i32, i32* %arrayidx64, align 4
  %41 = load i32, i32* %i, align 4
  %cmp65 = icmp ne i32 %40, %41
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.72

land.lhs.true.66:                                 ; preds = %if.end.60
  %42 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %42 to i64
  %arrayidx68 = getelementptr inbounds [144 x i32], [144 x i32]* @squares, i32 0, i64 %idxprom67
  %43 = load i32, i32* %arrayidx68, align 4
  %cmp69 = icmp ne i32 %43, 0
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %land.lhs.true.66
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @display_board(%struct._IO_FILE* %44, i32 0)
  store i32 0, i32* null, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %land.lhs.true.66, %if.end.60
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %45 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %45, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.31

for.end.75:                                       ; preds = %for.cond.31
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @start_up() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @toggle_bool(i32* %var) #0 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  %0 = load i32*, i32** %var.addr, align 8
  %1 = load i32, i32* %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %var.addr, align 8
  store i32 0, i32* %2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %var.addr, align 8
  store i32 1, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tree_debug() #0 {
entry:
  %input = alloca [256 x i8], align 16
  %stream = alloca %struct._IO_FILE*, align 8
  %depth = alloca i32, align 4
  call void @init_game()
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0))
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay, i32 256, %struct._IO_FILE* %0)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call2 = call i32 @atoi(i8* %arraydecay1) #8
  store i32 %call2, i32* %depth, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0))
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay4, i32 256, %struct._IO_FILE* %1)
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 121
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.69, i32 0, i32 0))
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay7, i32 256, %struct._IO_FILE* %3)
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call9 = call %struct._IO_FILE* @fopen(i8* %arraydecay8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call9, %struct._IO_FILE** %stream, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* %arraydecay13)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.72, i32 0, i32 0))
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @rinput(i8* %arraydecay16, i32 256, %struct._IO_FILE* %5)
  %6 = load i32, i32* %depth, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %input, i32 0, i32 0
  call void @tree(i32 %6, i32 0, %struct._IO_FILE* %7, i8* %arraydecay17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %entry
  store i32 0, i32* @raw_nodes, align 4
  %8 = load i32, i32* %depth, align 4
  call void @perft(i32 %8)
  %9 = load i32, i32* %depth, align 4
  %10 = load i32, i32* @raw_nodes, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0), i32 %9, i32 %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @divider, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare void @tree(i32, i32, %struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @interrupt() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @PutPiece(i32 %color, i8 signext %piece, i8 signext %pfile, i32 %prank) #0 {
entry:
  %color.addr = alloca i32, align 4
  %piece.addr = alloca i8, align 1
  %pfile.addr = alloca i8, align 1
  %prank.addr = alloca i32, align 4
  %converterf = alloca i32, align 4
  %converterr = alloca i32, align 4
  %norm_file = alloca i32, align 4
  %norm_rank = alloca i32, align 4
  %norm_square = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8 %piece, i8* %piece.addr, align 1
  store i8 %pfile, i8* %pfile.addr, align 1
  store i32 %prank, i32* %prank.addr, align 4
  store i32 97, i32* %converterf, align 4
  store i32 49, i32* %converterr, align 4
  %0 = load i8, i8* %pfile.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i32, i32* %converterf, align 4
  %sub = sub nsw i32 %conv, %1
  store i32 %sub, i32* %norm_file, align 4
  %2 = load i32, i32* %prank.addr, align 4
  %3 = load i32, i32* %converterr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %norm_rank, align 4
  %4 = load i32, i32* %norm_rank, align 4
  %mul = mul nsw i32 %4, 12
  %add = add nsw i32 %mul, 26
  %5 = load i32, i32* %norm_file, align 4
  %add2 = add nsw i32 %add, %5
  store i32 %add2, i32* %norm_square, align 4
  %6 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i8, i8* %piece.addr, align 1
  %conv4 = sext i8 %7 to i32
  switch i32 %conv4, label %sw.epilog [
    i32 112, label %sw.bb
    i32 110, label %sw.bb.5
    i32 98, label %sw.bb.8
    i32 114, label %sw.bb.11
    i32 113, label %sw.bb.14
    i32 107, label %sw.bb.17
    i32 120, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load i32, i32* %norm_square, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %9 = load i32, i32* %norm_square, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom6
  store i32 3, i32* %arrayidx7, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then
  %10 = load i32, i32* %norm_square, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom9
  store i32 11, i32* %arrayidx10, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  %11 = load i32, i32* %norm_square, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  store i32 7, i32* %arrayidx13, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  %12 = load i32, i32* %norm_square, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom15
  store i32 9, i32* %arrayidx16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then
  %13 = load i32, i32* %norm_square, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom18
  store i32 5, i32* %arrayidx19, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  %14 = load i32, i32* %norm_square, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom21
  store i32 13, i32* %arrayidx22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.20, %sw.bb.17, %sw.bb.14, %sw.bb.11, %sw.bb.8, %sw.bb.5, %sw.bb
  br label %if.end.49

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %color.addr, align 4
  %cmp23 = icmp eq i32 %15, 1
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else
  %16 = load i8, i8* %piece.addr, align 1
  %conv26 = sext i8 %16 to i32
  switch i32 %conv26, label %sw.epilog.48 [
    i32 112, label %sw.bb.27
    i32 110, label %sw.bb.30
    i32 98, label %sw.bb.33
    i32 114, label %sw.bb.36
    i32 113, label %sw.bb.39
    i32 107, label %sw.bb.42
    i32 120, label %sw.bb.45
  ]

sw.bb.27:                                         ; preds = %if.then.25
  %17 = load i32, i32* %norm_square, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom28
  store i32 2, i32* %arrayidx29, align 4
  br label %sw.epilog.48

sw.bb.30:                                         ; preds = %if.then.25
  %18 = load i32, i32* %norm_square, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom31
  store i32 4, i32* %arrayidx32, align 4
  br label %sw.epilog.48

sw.bb.33:                                         ; preds = %if.then.25
  %19 = load i32, i32* %norm_square, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom34
  store i32 12, i32* %arrayidx35, align 4
  br label %sw.epilog.48

sw.bb.36:                                         ; preds = %if.then.25
  %20 = load i32, i32* %norm_square, align 4
  %idxprom37 = sext i32 %20 to i64
  %arrayidx38 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom37
  store i32 8, i32* %arrayidx38, align 4
  br label %sw.epilog.48

sw.bb.39:                                         ; preds = %if.then.25
  %21 = load i32, i32* %norm_square, align 4
  %idxprom40 = sext i32 %21 to i64
  %arrayidx41 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom40
  store i32 10, i32* %arrayidx41, align 4
  br label %sw.epilog.48

sw.bb.42:                                         ; preds = %if.then.25
  %22 = load i32, i32* %norm_square, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom43
  store i32 6, i32* %arrayidx44, align 4
  br label %sw.epilog.48

sw.bb.45:                                         ; preds = %if.then.25
  %23 = load i32, i32* %norm_square, align 4
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom46
  store i32 13, i32* %arrayidx47, align 4
  br label %sw.epilog.48

sw.epilog.48:                                     ; preds = %if.then.25, %sw.bb.45, %sw.bb.42, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.27
  br label %if.end

if.end:                                           ; preds = %sw.epilog.48, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %sw.epilog
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_board() #0 {
entry:
  %i = alloca i32, align 4
  %init_board = alloca [144 x i32], align 16
  %0 = bitcast [144 x i32]* %init_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([144 x i32]* @reset_board.init_board to i8*), i64 576, i32 16, i1 false)
  %1 = bitcast [144 x i32]* %init_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([144 x i32]* @board to i8*), i8* %1, i64 576, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %2, 143
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @moved, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @ep_square, align 4
  store i32 0, i32* @piece_count, align 4
  store i32 0, i32* @Material, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([62 x i32]* @is_promoted to i8*), i8 0, i64 248, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x [16 x i32]]* @holding to i8*), i8 0, i64 128, i32 16, i1 false)
  store i32 0, i32* @white_hand_eval, align 4
  store i32 0, i32* @black_hand_eval, align 4
  store i32 0, i32* @bookidx, align 4
  store i32 0, i32* @fifty, align 4
  call void @reset_piece_square()
  ret void
}

; Function Attrs: nounwind uwtable
define void @seedMT(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %s = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %or = or i32 %0, 1
  store i32 %or, i32* %x, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %s, align 8
  store i32 0, i32* @left, align 4
  %1 = load i32, i32* %x, align 4
  %2 = load i32*, i32** %s, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %s, align 8
  store i32 %1, i32* %2, align 4
  store i32 624, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %x, align 4
  %mul = mul i32 %4, 69069
  store i32 %mul, i32* %x, align 4
  %5 = load i32*, i32** %s, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr1, i32** %s, align 8
  store i32 %mul, i32* %5, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @reloadMT() #0 {
entry:
  %p0 = alloca i32*, align 8
  %p2 = alloca i32*, align 8
  %pM = alloca i32*, align 8
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %p0, align 8
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 2), i32** %p2, align 8
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 397), i32** %pM, align 8
  %0 = load i32, i32* @left, align 4
  %cmp = icmp slt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @seedMT(i32 4357)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 623, i32* @left, align 4
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 1), i32** @next, align 8
  %1 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 0), align 4
  store i32 %1, i32* %s0, align 4
  %2 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 1), align 4
  store i32 %2, i32* %s1, align 4
  store i32 228, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %j, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %pM, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr, i32** %pM, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %s0, align 4
  %and = and i32 %6, -2147483648
  %7 = load i32, i32* %s1, align 4
  %and1 = and i32 %7, 2147483647
  %or = or i32 %and, %and1
  %shr = lshr i32 %or, 1
  %xor = xor i32 %5, %shr
  %8 = load i32, i32* %s1, align 4
  %and2 = and i32 %8, 1
  %tobool3 = icmp ne i32 %and2, 0
  %cond = select i1 %tobool3, i32 -1727483681, i32 0
  %xor4 = xor i32 %xor, %cond
  %9 = load i32*, i32** %p0, align 8
  %incdec.ptr5 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr5, i32** %p0, align 8
  store i32 %xor4, i32* %9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %s1, align 4
  store i32 %10, i32* %s0, align 4
  %11 = load i32*, i32** %p2, align 8
  %incdec.ptr6 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr6, i32** %p2, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %s1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i32 0), i32** %pM, align 8
  store i32 397, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.22, %for.end
  %13 = load i32, i32* %j, align 4
  %dec8 = add nsw i32 %13, -1
  store i32 %dec8, i32* %j, align 4
  %tobool9 = icmp ne i32 %dec8, 0
  br i1 %tobool9, label %for.body.10, label %for.end.24

for.body.10:                                      ; preds = %for.cond.7
  %14 = load i32*, i32** %pM, align 8
  %incdec.ptr11 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr11, i32** %pM, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %s0, align 4
  %and12 = and i32 %16, -2147483648
  %17 = load i32, i32* %s1, align 4
  %and13 = and i32 %17, 2147483647
  %or14 = or i32 %and12, %and13
  %shr15 = lshr i32 %or14, 1
  %xor16 = xor i32 %15, %shr15
  %18 = load i32, i32* %s1, align 4
  %and17 = and i32 %18, 1
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i32 -1727483681, i32 0
  %xor20 = xor i32 %xor16, %cond19
  %19 = load i32*, i32** %p0, align 8
  %incdec.ptr21 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %incdec.ptr21, i32** %p0, align 8
  store i32 %xor20, i32* %19, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.10
  %20 = load i32, i32* %s1, align 4
  store i32 %20, i32* %s0, align 4
  %21 = load i32*, i32** %p2, align 8
  %incdec.ptr23 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %incdec.ptr23, i32** %p2, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %s1, align 4
  br label %for.cond.7

for.end.24:                                       ; preds = %for.cond.7
  %23 = load i32, i32* getelementptr inbounds ([625 x i32], [625 x i32]* @state, i32 0, i64 0), align 4
  store i32 %23, i32* %s1, align 4
  %24 = load i32*, i32** %pM, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %s0, align 4
  %and25 = and i32 %26, -2147483648
  %27 = load i32, i32* %s1, align 4
  %and26 = and i32 %27, 2147483647
  %or27 = or i32 %and25, %and26
  %shr28 = lshr i32 %or27, 1
  %xor29 = xor i32 %25, %shr28
  %28 = load i32, i32* %s1, align 4
  %and30 = and i32 %28, 1
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 -1727483681, i32 0
  %xor33 = xor i32 %xor29, %cond32
  %29 = load i32*, i32** %p0, align 8
  store i32 %xor33, i32* %29, align 4
  %30 = load i32, i32* %s1, align 4
  %shr34 = lshr i32 %30, 11
  %31 = load i32, i32* %s1, align 4
  %xor35 = xor i32 %31, %shr34
  store i32 %xor35, i32* %s1, align 4
  %32 = load i32, i32* %s1, align 4
  %shl = shl i32 %32, 7
  %and36 = and i32 %shl, -1658038656
  %33 = load i32, i32* %s1, align 4
  %xor37 = xor i32 %33, %and36
  store i32 %xor37, i32* %s1, align 4
  %34 = load i32, i32* %s1, align 4
  %shl38 = shl i32 %34, 15
  %and39 = and i32 %shl38, -272236544
  %35 = load i32, i32* %s1, align 4
  %xor40 = xor i32 %35, %and39
  store i32 %xor40, i32* %s1, align 4
  %36 = load i32, i32* %s1, align 4
  %37 = load i32, i32* %s1, align 4
  %shr41 = lshr i32 %37, 18
  %xor42 = xor i32 %36, %shr41
  ret i32 %xor42
}

; Function Attrs: nounwind uwtable
define i32 @randomMT() #0 {
entry:
  %retval = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = load i32, i32* @left, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @left, align 4
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @reloadMT()
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** @next, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %1, i32 1
  store i32* %incdec.ptr, i32** @next, align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %y, align 4
  %3 = load i32, i32* %y, align 4
  %shr = lshr i32 %3, 11
  %4 = load i32, i32* %y, align 4
  %xor = xor i32 %4, %shr
  store i32 %xor, i32* %y, align 4
  %5 = load i32, i32* %y, align 4
  %shl = shl i32 %5, 7
  %and = and i32 %shl, -1658038656
  %6 = load i32, i32* %y, align 4
  %xor1 = xor i32 %6, %and
  store i32 %xor1, i32* %y, align 4
  %7 = load i32, i32* %y, align 4
  %shl2 = shl i32 %7, 15
  %and3 = and i32 %shl2, -272236544
  %8 = load i32, i32* %y, align 4
  %xor4 = xor i32 %8, %and3
  store i32 %xor4, i32* %y, align 4
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %y, align 4
  %shr5 = lshr i32 %10, 18
  %xor6 = xor i32 %9, %shr5
  store i32 %xor6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
