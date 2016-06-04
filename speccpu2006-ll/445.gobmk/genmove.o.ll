; ModuleID = 'engine/genmove.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_data = type { [1 x i64] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.influence_data = type opaque

@random_seed = external global i32, align 4
@hashdata = external global %struct.Hash_data, align 8
@board = external global [421 x i8], align 16
@board_ko_pos = external global i32, align 4
@worms_examined = internal global i32 -1, align 4
@initial_influence_examined = internal global i32 -1, align 4
@dragons_examined_without_owl = internal global i32 -1, align 4
@dragons_examined = internal global i32 -1, align 4
@initial_influence2_examined = internal global i32 -1, align 4
@dragons_refinedly_examined = internal global i32 -1, align 4
@level = external global i32, align 4
@verbose = external global i32, align 4
@position_number = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"  make worms\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"engine/genmove.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test_gray_border() < 0\00", align 1
@printworms = external global i32, align 4
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@count_variations = external global i32, align 4
@debug = external global i32, align 4
@printmoyo = external global i32, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"retval < 0 || (((unsigned) (move) < ((19 + 2) * (19 + 1) + 1)) && board[move] != 3)\00", align 1
@potential_moves = external global [19 x [19 x float]], align 16
@stats = external global %struct.stats_data, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"level = %d\0A\00", align 1
@depth = external global i32, align 4
@play_mirror_go = external global i32, align 4
@mirror_stones_limit = external global i32, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"genmove() recommends mirror move at %1m\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"examine position\00", align 1
@lower_bound = external global float, align 4
@upper_bound = external global float, align 4
@showscore = external global i32, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"\0AScore estimate: %s %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"W \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\0AScore estimate: %s %f to %s %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"estimate score\00", align 1
@score = external global float, align 4
@printboard = external global i32, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"\0A          dragon_status display:\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\0A          eye display:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\0A           owl_status display:\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\0A           matcher_status display:\0A\0A\00", align 1
@stackp = external global i32, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"shapes\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"combinations\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Move generation likes %1m with value %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"review move reasons\00", align 1
@doing_scoring = external global i32, align 4
@disable_endgame_patterns = external global i32, align 4
@.str.21 = private unnamed_addr constant [62 x i8] c"Upon reconsideration move generation likes %1m with value %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"move reasons with revised semeai status\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"endgame\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Filling a liberty at %1m\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"fill liberty\00", align 1
@play_out_aftermath = external global i32, align 4
@capture_all_dead = external global i32, align 4
@thrashing_dragon = external global i32, align 4
@.str.26 = private unnamed_addr constant [23 x i8] c"is_legal(*move, color)\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Aftermath move at %1m\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"aftermath_genmove\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"genmove() recommends %1m with value %f\0A\00", align 1
@showstatistics = external global i32, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"Nodes:                %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Positions entered:    %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Position hits:        %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Read results entered: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Read result hits:     %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Hash collisions:      %d\0A\00", align 1
@showtime = external global i32, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"TIME to generate move at \00", align 1
@total_time = internal global double 0.000000e+00, align 8
@slowest_time = internal global double 0.000000e+00, align 8
@slowest_move = internal global i32 0, align 4
@movenum = external global i32, align 4
@slowest_movenum = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [26 x i8] c"\0ASLOWEST MOVE: %d at %1m \00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"(%.2f seconds)\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"\0AAVERAGE TIME: %.2f seconds per move\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"\0ATOTAL TIME: %.2f seconds\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"depth == save_depth\00", align 1
@get_level.filename = internal constant [6 x i8] c"level\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@board_size = external global i32, align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"find_mirror_move\00", align 1
@dragon = external global [400 x %struct.dragon_data], align 16
@disable_threat_computation = external global i32, align 4
@dragon2 = external global %struct.dragon_data2*, align 8
@initial_white_influence = external global %struct.influence_data, align 1
@initial_black_influence = external global %struct.influence_data, align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"revised thrashing dragon\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"dragon2 != ((void*)0)\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"revise_semeai: changed status of dragon %1m from DEAD to UNKNOWN\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @reset_engine() #0 {
entry:
  %0 = load i32, i32* @random_seed, align 4
  call void @gg_srand(i32 %0)
  call void @reading_cache_clear()
  %1 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_recalc(%struct.Hash_data* @hashdata, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i32 %1)
  store i32 -1, i32* @worms_examined, align 4
  store i32 -1, i32* @initial_influence_examined, align 4
  store i32 -1, i32* @dragons_examined_without_owl, align 4
  store i32 -1, i32* @dragons_examined, align 4
  store i32 -1, i32* @initial_influence2_examined, align 4
  store i32 -1, i32* @dragons_refinedly_examined, align 4
  call void @clear_move_reasons()
  %2 = load i32, i32* @level, align 4
  call void @set_depth_values(i32 %2)
  ret void
}

declare void @gg_srand(i32) #1

declare void @reading_cache_clear() #1

declare void @hashdata_recalc(%struct.Hash_data*, i8*, i32) #1

declare void @clear_move_reasons() #1

declare void @set_depth_values(i32) #1

; Function Attrs: nounwind uwtable
define void @examine_position(i32 %color, i32 %how_much) #0 {
entry:
  %color.addr = alloca i32, align 4
  %how_much.addr = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %how_much, i32* %how_much.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  store i32 %0, i32* %save_verbose, align 4
  call void @purge_persistent_reading_cache()
  %1 = load i32, i32* @verbose, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @verbose, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i32, i32* @worms_examined, align 4
  %5 = load i32, i32* @position_number, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i32, i32* @position_number, align 4
  store i32 %6, i32* @worms_examined, align 4
  br i1 true, label %if.then.3, label %if.end.4

cond.false:                                       ; preds = %if.end
  br i1 false, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.false, %cond.true
  call void @start_timer(i32 0)
  call void @make_worms()
  %call = call double @time_report(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %cond.false, %cond.true
  %7 = load i32, i32* %how_much.addr, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %8 = load i32, i32* %save_verbose, align 4
  store i32 %8, i32* @verbose, align 4
  %call7 = call i32 @test_gray_border()
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.6
  br label %if.end.10

if.else:                                          ; preds = %if.then.6
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %if.end.95

if.end.11:                                        ; preds = %if.end.4
  %call12 = call i32 @stones_on_board(i32 3)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.54

if.then.14:                                       ; preds = %if.end.11
  %9 = load i32, i32* @initial_influence_examined, align 4
  %10 = load i32, i32* @position_number, align 4
  %cmp15 = icmp ne i32 %9, %10
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %if.then.14
  %11 = load i32, i32* @position_number, align 4
  store i32 %11, i32* @initial_influence_examined, align 4
  br i1 true, label %if.then.18, label %if.end.19

cond.false.17:                                    ; preds = %if.then.14
  br i1 false, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.false.17, %cond.true.16
  call void @compute_worm_influence()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %cond.false.17, %cond.true.16
  %12 = load i32, i32* %how_much.addr, align 4
  %cmp20 = icmp eq i32 %12, 2
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.19
  %13 = load i32, i32* %save_verbose, align 4
  store i32 %13, i32* @verbose, align 4
  %call22 = call i32 @test_gray_border()
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.21
  br label %if.end.26

if.else.25:                                       ; preds = %if.then.21
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %if.then.24
  br label %if.end.95

if.end.27:                                        ; preds = %if.end.19
  %14 = load i32, i32* %how_much.addr, align 4
  %cmp28 = icmp eq i32 %14, 3
  br i1 %cmp28, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %if.end.27
  %15 = load i32, i32* @dragons_examined_without_owl, align 4
  %16 = load i32, i32* @position_number, align 4
  %cmp30 = icmp ne i32 %15, %16
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.then.29
  %17 = load i32, i32* @position_number, align 4
  store i32 %17, i32* @dragons_examined_without_owl, align 4
  br i1 true, label %if.then.33, label %if.end.34

cond.false.32:                                    ; preds = %if.then.29
  br i1 false, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %cond.false.32, %cond.true.31
  %18 = load i32, i32* %color.addr, align 4
  %19 = load i32, i32* %save_verbose, align 4
  call void @make_dragons(i32 %18, i32 1, i32 %19)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %cond.false.32, %cond.true.31
  %20 = load i32, i32* %save_verbose, align 4
  store i32 %20, i32* @verbose, align 4
  %call35 = call i32 @test_gray_border()
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.95

if.end.40:                                        ; preds = %if.end.27
  %21 = load i32, i32* @dragons_examined, align 4
  %22 = load i32, i32* @position_number, align 4
  %cmp41 = icmp ne i32 %21, %22
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.end.40
  %23 = load i32, i32* @position_number, align 4
  store i32 %23, i32* @dragons_examined, align 4
  br i1 true, label %if.then.44, label %if.end.45

cond.false.43:                                    ; preds = %if.end.40
  br i1 false, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %cond.false.43, %cond.true.42
  %24 = load i32, i32* %color.addr, align 4
  %25 = load i32, i32* %save_verbose, align 4
  call void @make_dragons(i32 %24, i32 0, i32 %25)
  %26 = load i32, i32* @position_number, align 4
  store i32 %26, i32* @dragons_examined_without_owl, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %cond.false.43, %cond.true.42
  %27 = load i32, i32* %how_much.addr, align 4
  %cmp46 = icmp eq i32 %27, 4
  br i1 %cmp46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.end.45
  %28 = load i32, i32* %save_verbose, align 4
  store i32 %28, i32* @verbose, align 4
  %call48 = call i32 @test_gray_border()
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.then.47
  br label %if.end.52

if.else.51:                                       ; preds = %if.then.47
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.95

if.end.53:                                        ; preds = %if.end.45
  br label %if.end.67

if.else.54:                                       ; preds = %if.end.11
  %29 = load i32, i32* %how_much.addr, align 4
  %cmp55 = icmp eq i32 %29, 2
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.else.54
  %30 = load i32, i32* %how_much.addr, align 4
  %cmp57 = icmp eq i32 %30, 4
  br i1 %cmp57, label %if.then.60, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.56
  %31 = load i32, i32* %how_much.addr, align 4
  %cmp59 = icmp eq i32 %31, 99
  br i1 %cmp59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.56, %if.else.54
  call void @initialize_dragon_data()
  %32 = load i32, i32* %save_verbose, align 4
  store i32 %32, i32* @verbose, align 4
  %call61 = call i32 @test_gray_border()
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.60
  br label %if.end.65

if.else.64:                                       ; preds = %if.then.60
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.95

if.end.66:                                        ; preds = %lor.lhs.false.58
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.53
  %33 = load i32, i32* %save_verbose, align 4
  store i32 %33, i32* @verbose, align 4
  %34 = load i32, i32* @initial_influence2_examined, align 4
  %35 = load i32, i32* @position_number, align 4
  %cmp68 = icmp ne i32 %34, %35
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %if.end.67
  %36 = load i32, i32* @position_number, align 4
  store i32 %36, i32* @initial_influence2_examined, align 4
  br i1 true, label %if.then.71, label %if.end.72

cond.false.70:                                    ; preds = %if.end.67
  br i1 false, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %cond.false.70, %cond.true.69
  call void @compute_dragon_influence()
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %cond.false.70, %cond.true.69
  %37 = load i32, i32* %how_much.addr, align 4
  %cmp73 = icmp eq i32 %37, 6
  br i1 %cmp73, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %if.end.72
  %call75 = call i32 @test_gray_border()
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.then.74
  br label %if.end.79

if.else.78:                                       ; preds = %if.then.74
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.95

if.end.80:                                        ; preds = %if.end.72
  %38 = load i32, i32* @dragons_refinedly_examined, align 4
  %39 = load i32, i32* @position_number, align 4
  %cmp81 = icmp ne i32 %38, %39
  br i1 %cmp81, label %cond.true.82, label %cond.false.83

cond.true.82:                                     ; preds = %if.end.80
  %40 = load i32, i32* @position_number, align 4
  store i32 %40, i32* @dragons_refinedly_examined, align 4
  br i1 true, label %if.then.84, label %if.end.85

cond.false.83:                                    ; preds = %if.end.80
  br i1 false, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %cond.false.83, %cond.true.82
  call void @compute_refined_dragon_weaknesses()
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %cond.false.83, %cond.true.82
  %41 = load i32, i32* %how_much.addr, align 4
  %cmp86 = icmp eq i32 %41, 7
  br i1 %cmp86, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %if.end.85
  %call88 = call i32 @test_gray_border()
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.then.87
  br label %if.end.92

if.else.91:                                       ; preds = %if.then.87
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.91, %if.then.90
  br label %if.end.95

if.end.93:                                        ; preds = %if.end.85
  %42 = load i32, i32* @printworms, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.93
  call void @show_dragons()
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.10, %if.end.26, %if.end.39, %if.end.52, %if.end.65, %if.end.79, %if.end.92, %if.then.94, %if.end.93
  ret void
}

declare void @purge_persistent_reading_cache() #1

declare void @start_timer(i32) #1

declare void @make_worms() #1

declare double @time_report(i32, i8*, i32, double) #1

declare i32 @test_gray_border() #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @stones_on_board(i32) #1

declare void @compute_worm_influence() #1

declare void @make_dragons(i32, i32, i32) #1

declare void @initialize_dragon_data() #1

declare void @compute_dragon_influence() #1

declare void @compute_refined_dragon_weaknesses() #1

declare void @show_dragons() #1

; Function Attrs: nounwind uwtable
define void @silent_examine_position(i32 %color, i32 %how_much) #0 {
entry:
  %color.addr = alloca i32, align 4
  %how_much.addr = alloca i32, align 4
  %save_verbose = alloca i32, align 4
  %save_sgf_dumptree = alloca %struct.SGFTree_t*, align 8
  %save_count_variations = alloca i32, align 4
  %save_debug = alloca i32, align 4
  %save_printmoyo = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %how_much, i32* %how_much.addr, align 4
  %0 = load i32, i32* @verbose, align 4
  store i32 %0, i32* %save_verbose, align 4
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %1, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  %2 = load i32, i32* @count_variations, align 4
  store i32 %2, i32* %save_count_variations, align 4
  %3 = load i32, i32* @debug, align 4
  store i32 %3, i32* %save_debug, align 4
  %4 = load i32, i32* @printmoyo, align 4
  store i32 %4, i32* %save_printmoyo, align 4
  store i32 0, i32* @verbose, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* @debug, align 4
  store i32 0, i32* @printmoyo, align 4
  %5 = load i32, i32* %color.addr, align 4
  %6 = load i32, i32* %how_much.addr, align 4
  call void @examine_position(i32 %5, i32 %6)
  %7 = load i32, i32* %save_verbose, align 4
  store i32 %7, i32* @verbose, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %save_sgf_dumptree, align 8
  store %struct.SGFTree_t* %8, %struct.SGFTree_t** @sgf_dumptree, align 8
  %9 = load i32, i32* %save_count_variations, align 4
  store i32 %9, i32* @count_variations, align 4
  %10 = load i32, i32* %save_debug, align 4
  store i32 %10, i32* @debug, align 4
  %11 = load i32, i32* %save_printmoyo, align 4
  store i32 %11, i32* @printmoyo, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @genmove(i32* %i, i32* %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %move = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %call = call i32 @do_genmove(i32* %move, i32 %0, float 0x3FD99999A0000000, i32* null)
  store i32 %call, i32* %retval1, align 4
  %1 = load i32, i32* %retval1, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %move, align 4
  %cmp2 = icmp ult i32 %2, 421
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i32, i32* %move, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32*, i32** %i.addr, align 8
  %tobool = icmp ne i32* %5, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load i32, i32* %move, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32*, i32** %i.addr, align 8
  store i32 %sub, i32* %7, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  %8 = load i32*, i32** %j.addr, align 8
  %tobool7 = icmp ne i32* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %9 = load i32, i32* %move, align 4
  %rem = srem i32 %9, 20
  %sub9 = sub nsw i32 %rem, 1
  %10 = load i32*, i32** %j.addr, align 8
  store i32 %sub9, i32* %10, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %11 = load i32, i32* %retval1, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @do_genmove(i32* %move, i32 %color, float %pure_threat_value, i32* %allowed_moves) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %pure_threat_value.addr = alloca float, align 4
  %allowed_moves.addr = alloca i32*, align 8
  %val = alloca float, align 4
  %save_verbose = alloca i32, align 4
  %save_depth = alloca i32, align 4
  %spent = alloca double, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store float %pure_threat_value, float* %pure_threat_value.addr, align 4
  store i32* %allowed_moves, i32** %allowed_moves.addr, align 8
  call void @start_timer(i32 0)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([19 x [19 x float]]* @potential_moves to i8*), i8 0, i64 1444, i32 16, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %0 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %0, align 4
  store float -1.000000e+00, float* %val, align 4
  %call = call i32 @get_level(i32* @level)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* @level, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @reset_engine()
  %3 = load i32, i32* @depth, align 4
  store i32 %3, i32* %save_depth, align 4
  %4 = load i32, i32* @play_mirror_go, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @mirror_stones_limit, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %land.lhs.true.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call3 = call i32 @stones_on_board(i32 3)
  %6 = load i32, i32* @mirror_stones_limit, align 4
  %cmp4 = icmp sle i32 %call3, %6
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i32*, i32** %move.addr, align 8
  %8 = load i32, i32* %color.addr, align 4
  %call6 = call i32 @find_mirror_move(i32* %7, i32 %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %land.lhs.true.5
  %9 = load i32, i32* @verbose, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %10 = load i32*, i32** %move.addr, align 8
  %11 = load i32, i32* %10, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.5, %lor.lhs.false, %if.end
  call void @start_timer(i32 1)
  %12 = load i32, i32* %color.addr, align 4
  call void @examine_position(i32 %12, i32 99)
  %call12 = call double @time_report(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 0, double 1.000000e+00)
  %13 = load i32, i32* @level, align 4
  %cmp13 = icmp sge i32 %13, 8
  br i1 %cmp13, label %if.then.14, label %if.else.61

if.then.14:                                       ; preds = %if.end.11
  %call15 = call float @estimate_score(float* @lower_bound, float* @upper_bound)
  %14 = load i32, i32* @verbose, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.19, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.then.14
  %15 = load i32, i32* @showscore, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.54

if.then.19:                                       ; preds = %lor.lhs.false.17, %if.then.14
  %16 = load float, float* @lower_bound, align 4
  %17 = load float, float* @upper_bound, align 4
  %cmp20 = fcmp oeq float %16, %17
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then.19
  %18 = load float, float* @lower_bound, align 4
  %cmp22 = fcmp ogt float %18, 0.000000e+00
  %cond = select i1 %cmp22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %19 = load float, float* @lower_bound, align 4
  %cmp23 = fcmp olt float %19, 0.000000e+00
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.then.21
  %20 = load float, float* @lower_bound, align 4
  %sub = fsub float -0.000000e+00, %20
  br label %cond.end.26

cond.false.25:                                    ; preds = %if.then.21
  %21 = load float, float* @lower_bound, align 4
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.25, %cond.true.24
  %cond27 = phi float [ %sub, %cond.true.24 ], [ %21, %cond.false.25 ]
  %conv = fpext float %cond27 to double
  %call28 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i8* %cond, double %conv)
  br label %if.end.52

if.else:                                          ; preds = %if.then.19
  %22 = load float, float* @lower_bound, align 4
  %cmp29 = fcmp ogt float %22, 0.000000e+00
  %cond31 = select i1 %cmp29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %23 = load float, float* @lower_bound, align 4
  %cmp32 = fcmp olt float %23, 0.000000e+00
  br i1 %cmp32, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %if.else
  %24 = load float, float* @lower_bound, align 4
  %sub35 = fsub float -0.000000e+00, %24
  br label %cond.end.37

cond.false.36:                                    ; preds = %if.else
  %25 = load float, float* @lower_bound, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.34
  %cond38 = phi float [ %sub35, %cond.true.34 ], [ %25, %cond.false.36 ]
  %conv39 = fpext float %cond38 to double
  %26 = load float, float* @upper_bound, align 4
  %cmp40 = fcmp ogt float %26, 0.000000e+00
  %cond42 = select i1 %cmp40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)
  %27 = load float, float* @upper_bound, align 4
  %cmp43 = fcmp olt float %27, 0.000000e+00
  br i1 %cmp43, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.end.37
  %28 = load float, float* @upper_bound, align 4
  %sub46 = fsub float -0.000000e+00, %28
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.end.37
  %29 = load float, float* @upper_bound, align 4
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi float [ %sub46, %cond.true.45 ], [ %29, %cond.false.47 ]
  %conv50 = fpext float %cond49 to double
  %call51 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), i8* %cond31, double %conv39, i8* %cond42, double %conv50)
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.48, %cond.end.26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 @fflush(%struct._IO_FILE* %30)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.52, %lor.lhs.false.17
  %call55 = call double @time_report(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 0, double 1.000000e+00)
  %31 = load i32, i32* %color.addr, align 4
  %cmp56 = icmp eq i32 %31, 1
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.end.54
  %32 = load float, float* @lower_bound, align 4
  store float %32, float* @score, align 4
  br label %if.end.60

if.else.59:                                       ; preds = %if.end.54
  %33 = load float, float* @upper_bound, align 4
  store float %33, float* @score, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  br label %if.end.62

if.else.61:                                       ; preds = %if.end.11
  store float 0.000000e+00, float* @score, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.end.60
  %34 = load i32, i32* @printmoyo, align 4
  %tobool63 = icmp ne i32 %34, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  call void @print_moyo()
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %35 = load i32, i32* @printboard, align 4
  %tobool66 = icmp ne i32 %35, 0
  br i1 %tobool66, label %if.then.67, label %if.end.84

if.then.67:                                       ; preds = %if.end.65
  %36 = load i32, i32* @printboard, align 4
  %cmp68 = icmp eq i32 %36, 1
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.then.67
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.then.67
  %38 = load i32, i32* @printboard, align 4
  %cmp73 = icmp eq i32 %38, 2
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.end.72
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %if.end.72
  %40 = load i32, i32* @printboard, align 4
  call void @showboard(i32 %40)
  %41 = load i32, i32* @printboard, align 4
  %cmp78 = icmp eq i32 %41, 1
  br i1 %cmp78, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.77
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i32 0, i32 0))
  call void @showboard(i32 3)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0))
  call void @showboard(i32 4)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.65
  %44 = load i32, i32* @stackp, align 4
  %cmp85 = icmp eq i32 %44, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.end.84
  br label %if.end.89

if.else.88:                                       ; preds = %if.end.84
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 386, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.then.87
  %45 = load i32, i32* %color.addr, align 4
  call void @worm_reasons(i32 %45)
  %46 = load i32, i32* @verbose, align 4
  store i32 %46, i32* %save_verbose, align 4
  %47 = load i32, i32* @verbose, align 4
  %cmp90 = icmp sgt i32 %47, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.end.89
  %48 = load i32, i32* @verbose, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* @verbose, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.end.89
  %49 = load i32, i32* %color.addr, align 4
  call void @owl_reasons(i32 %49)
  %50 = load i32, i32* %save_verbose, align 4
  store i32 %50, i32* @verbose, align 4
  %51 = load i32, i32* %color.addr, align 4
  call void @fuseki(i32 %51)
  %52 = load i32, i32* @stackp, align 4
  %cmp94 = icmp eq i32 %52, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.end.93
  br label %if.end.98

if.else.97:                                       ; preds = %if.end.93
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 404, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  call void @start_timer(i32 1)
  %53 = load i32, i32* %color.addr, align 4
  call void @shapes(i32 %53)
  %call99 = call double @time_report(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 0, double 1.000000e+00)
  %54 = load i32, i32* @stackp, align 4
  %cmp100 = icmp eq i32 %54, 0
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.end.98
  br label %if.end.104

if.else.103:                                      ; preds = %if.end.98
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 410, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.102
  %55 = load i32, i32* %color.addr, align 4
  call void @combinations(i32 %55)
  %call105 = call double @time_report(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 0, double 1.000000e+00)
  %56 = load i32, i32* @stackp, align 4
  %cmp106 = icmp eq i32 %56, 0
  br i1 %cmp106, label %if.then.108, label %if.else.109

if.then.108:                                      ; preds = %if.end.104
  br label %if.end.110

if.else.109:                                      ; preds = %if.end.104
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 415, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %if.then.108
  %57 = load i32*, i32** %move.addr, align 8
  %58 = load i32, i32* %color.addr, align 4
  %59 = load float, float* %pure_threat_value.addr, align 4
  %60 = load float, float* @lower_bound, align 4
  %61 = load i32*, i32** %allowed_moves.addr, align 8
  %call111 = call i32 @review_move_reasons(i32* %57, float* %val, i32 %58, float %59, float %60, i32* %61)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %if.end.110
  %62 = load i32, i32* @verbose, align 4
  %tobool114 = icmp ne i32 %62, 0
  br i1 %tobool114, label %cond.false.116, label %cond.true.115

cond.true.115:                                    ; preds = %if.then.113
  br label %cond.end.119

cond.false.116:                                   ; preds = %if.then.113
  %63 = load i32*, i32** %move.addr, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load float, float* %val, align 4
  %conv117 = fpext float %65 to double
  %call118 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i32 %64, double %conv117)
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.116, %cond.true.115
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.119, %if.end.110
  %66 = load i32, i32* @stackp, align 4
  %cmp121 = icmp eq i32 %66, 0
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.end.120
  br label %if.end.125

if.else.124:                                      ; preds = %if.end.120
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 421, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.then.123
  %call126 = call double @time_report(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 0, double 1.000000e+00)
  %67 = load float, float* %val, align 4
  %conv127 = fpext float %67 to double
  %cmp128 = fcmp olt double %conv127, 1.000000e+01
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.151

land.lhs.true.130:                                ; preds = %if.end.125
  %68 = load i32, i32* @doing_scoring, align 4
  %tobool131 = icmp ne i32 %68, 0
  br i1 %tobool131, label %if.end.151, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.130
  %69 = load i32, i32* %color.addr, align 4
  %call133 = call i32 @revise_thrashing_dragon(i32 %69, float 1.500000e+01)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.149

if.then.135:                                      ; preds = %if.then.132
  %70 = load i32, i32* %color.addr, align 4
  call void @shapes(i32 %70)
  %71 = load i32, i32* @disable_endgame_patterns, align 4
  %tobool136 = icmp ne i32 %71, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %if.then.135
  %72 = load i32, i32* %color.addr, align 4
  call void @endgame_shapes(i32 %72)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.then.135
  %73 = load i32*, i32** %move.addr, align 8
  %74 = load i32, i32* %color.addr, align 4
  %75 = load float, float* %pure_threat_value.addr, align 4
  %76 = load float, float* @score, align 4
  %77 = load i32*, i32** %allowed_moves.addr, align 8
  %call139 = call i32 @review_move_reasons(i32* %73, float* %val, i32 %74, float %75, float %76, i32* %77)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.148

if.then.141:                                      ; preds = %if.end.138
  %78 = load i32, i32* @verbose, align 4
  %tobool142 = icmp ne i32 %78, 0
  br i1 %tobool142, label %cond.false.144, label %cond.true.143

cond.true.143:                                    ; preds = %if.then.141
  br label %cond.end.147

cond.false.144:                                   ; preds = %if.then.141
  %79 = load i32*, i32** %move.addr, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load float, float* %val, align 4
  %conv145 = fpext float %81 to double
  %call146 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i32 0, i32 0), i32 %80, double %conv145)
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %cond.true.143
  br label %if.end.148

if.end.148:                                       ; preds = %cond.end.147, %if.end.138
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.132
  %call150 = call double @time_report(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.149, %land.lhs.true.130, %if.end.125
  %82 = load float, float* %val, align 4
  %conv152 = fpext float %82 to double
  %cmp153 = fcmp ole double %conv152, 6.000000e+00
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.179

land.lhs.true.155:                                ; preds = %if.end.151
  %83 = load i32, i32* @disable_endgame_patterns, align 4
  %tobool156 = icmp ne i32 %83, 0
  br i1 %tobool156, label %if.end.179, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.155
  %84 = load i32, i32* %color.addr, align 4
  call void @endgame_shapes(i32 %84)
  %85 = load i32, i32* @stackp, align 4
  %cmp158 = icmp eq i32 %85, 0
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.then.157
  br label %if.end.162

if.else.161:                                      ; preds = %if.then.157
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 445, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.161, %if.then.160
  %86 = load i32*, i32** %move.addr, align 8
  %87 = load i32, i32* %color.addr, align 4
  %88 = load float, float* %pure_threat_value.addr, align 4
  %89 = load float, float* @score, align 4
  %90 = load i32*, i32** %allowed_moves.addr, align 8
  %call163 = call i32 @review_move_reasons(i32* %86, float* %val, i32 %87, float %88, float %89, i32* %90)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %if.end.162
  %91 = load i32, i32* @verbose, align 4
  %tobool166 = icmp ne i32 %91, 0
  br i1 %tobool166, label %cond.false.168, label %cond.true.167

cond.true.167:                                    ; preds = %if.then.165
  br label %cond.end.171

cond.false.168:                                   ; preds = %if.then.165
  %92 = load i32*, i32** %move.addr, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load float, float* %val, align 4
  %conv169 = fpext float %94 to double
  %call170 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i32 %93, double %conv169)
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.168, %cond.true.167
  br label %if.end.172

if.end.172:                                       ; preds = %cond.end.171, %if.end.162
  %95 = load i32, i32* @stackp, align 4
  %cmp173 = icmp eq i32 %95, 0
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %if.end.172
  br label %if.end.177

if.else.176:                                      ; preds = %if.end.172
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %if.then.175
  %call178 = call double @time_report(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.177, %land.lhs.true.155, %if.end.151
  %96 = load float, float* %val, align 4
  %conv180 = fpext float %96 to double
  %cmp181 = fcmp olt double %conv180, 0.000000e+00
  br i1 %cmp181, label %if.then.183, label %if.end.202

if.then.183:                                      ; preds = %if.end.179
  %97 = load i32, i32* %color.addr, align 4
  %call184 = call i32 @revise_thrashing_dragon(i32 %97, float 0.000000e+00)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.189, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.then.183
  %98 = load i32, i32* %color.addr, align 4
  %call187 = call i32 @revise_semeai(i32 %98)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.200

if.then.189:                                      ; preds = %lor.lhs.false.186, %if.then.183
  %99 = load i32, i32* %color.addr, align 4
  call void @shapes(i32 %99)
  %100 = load i32, i32* %color.addr, align 4
  call void @endgame_shapes(i32 %100)
  %101 = load i32*, i32** %move.addr, align 8
  %102 = load i32, i32* %color.addr, align 4
  %103 = load float, float* %pure_threat_value.addr, align 4
  %104 = load float, float* @score, align 4
  %105 = load i32*, i32** %allowed_moves.addr, align 8
  %call190 = call i32 @review_move_reasons(i32* %101, float* %val, i32 %102, float %103, float %104, i32* %105)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.199

if.then.192:                                      ; preds = %if.then.189
  %106 = load i32, i32* @verbose, align 4
  %tobool193 = icmp ne i32 %106, 0
  br i1 %tobool193, label %cond.false.195, label %cond.true.194

cond.true.194:                                    ; preds = %if.then.192
  br label %cond.end.198

cond.false.195:                                   ; preds = %if.then.192
  %107 = load i32*, i32** %move.addr, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load float, float* %val, align 4
  %conv196 = fpext float %109 to double
  %call197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i32 0, i32 0), i32 %108, double %conv196)
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.195, %cond.true.194
  br label %if.end.199

if.end.199:                                       ; preds = %cond.end.198, %if.then.189
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %lor.lhs.false.186
  %call201 = call double @time_report(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.200, %if.end.179
  %110 = load float, float* %val, align 4
  %conv203 = fpext float %110 to double
  %cmp204 = fcmp olt double %conv203, 0.000000e+00
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.220

land.lhs.true.206:                                ; preds = %if.end.202
  %111 = load i32*, i32** %move.addr, align 8
  %112 = load i32, i32* %color.addr, align 4
  %call207 = call i32 @fill_liberty(i32* %111, i32 %112)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %land.lhs.true.209, label %if.end.220

land.lhs.true.209:                                ; preds = %land.lhs.true.206
  %113 = load i32*, i32** %allowed_moves.addr, align 8
  %tobool210 = icmp ne i32* %113, null
  br i1 %tobool210, label %lor.lhs.false.211, label %if.then.213

lor.lhs.false.211:                                ; preds = %land.lhs.true.209
  %114 = load i32*, i32** %move.addr, align 8
  %115 = load i32, i32* %114, align 4
  %idxprom = sext i32 %115 to i64
  %116 = load i32*, i32** %allowed_moves.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %116, i64 %idxprom
  %117 = load i32, i32* %arrayidx, align 4
  %tobool212 = icmp ne i32 %117, 0
  br i1 %tobool212, label %if.then.213, label %if.end.220

if.then.213:                                      ; preds = %lor.lhs.false.211, %land.lhs.true.209
  store float 1.000000e+00, float* %val, align 4
  %118 = load i32, i32* @verbose, align 4
  %tobool214 = icmp ne i32 %118, 0
  br i1 %tobool214, label %cond.false.216, label %cond.true.215

cond.true.215:                                    ; preds = %if.then.213
  br label %cond.end.218

cond.false.216:                                   ; preds = %if.then.213
  %119 = load i32*, i32** %move.addr, align 8
  %120 = load i32, i32* %119, align 4
  %call217 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i32 %120)
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.false.216, %cond.true.215
  %121 = load i32*, i32** %move.addr, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load float, float* %val, align 4
  call void @record_top_move(i32 %122, float %123)
  %124 = load i32*, i32** %move.addr, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load float, float* %val, align 4
  call void @move_considered(i32 %125, float %126)
  %call219 = call double @time_report(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end.218, %lor.lhs.false.211, %land.lhs.true.206, %if.end.202
  %127 = load float, float* %val, align 4
  %conv221 = fpext float %127 to double
  %cmp222 = fcmp olt double %conv221, 0.000000e+00
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.270

land.lhs.true.224:                                ; preds = %if.end.220
  %128 = load i32, i32* @doing_scoring, align 4
  %tobool225 = icmp ne i32 %128, 0
  br i1 %tobool225, label %if.end.270, label %land.lhs.true.226

land.lhs.true.226:                                ; preds = %land.lhs.true.224
  %129 = load i32, i32* @play_out_aftermath, align 4
  %tobool227 = icmp ne i32 %129, 0
  br i1 %tobool227, label %land.lhs.true.246, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %land.lhs.true.226
  %130 = load i32, i32* @capture_all_dead, align 4
  %tobool229 = icmp ne i32 %130, 0
  br i1 %tobool229, label %land.lhs.true.246, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %lor.lhs.false.228
  %131 = load i32, i32* @thrashing_dragon, align 4
  %tobool231 = icmp ne i32 %131, 0
  br i1 %tobool231, label %land.lhs.true.232, label %if.end.270

land.lhs.true.232:                                ; preds = %lor.lhs.false.230
  %132 = load i32, i32* %color.addr, align 4
  %cmp233 = icmp eq i32 %132, 2
  br i1 %cmp233, label %land.lhs.true.235, label %lor.lhs.false.239

land.lhs.true.235:                                ; preds = %land.lhs.true.232
  %133 = load float, float* @score, align 4
  %conv236 = fpext float %133 to double
  %cmp237 = fcmp olt double %conv236, -1.500000e+01
  br i1 %cmp237, label %land.lhs.true.246, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %land.lhs.true.235, %land.lhs.true.232
  %134 = load i32, i32* %color.addr, align 4
  %cmp240 = icmp eq i32 %134, 1
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.270

land.lhs.true.242:                                ; preds = %lor.lhs.false.239
  %135 = load float, float* @score, align 4
  %conv243 = fpext float %135 to double
  %cmp244 = fcmp ogt double %conv243, 1.500000e+01
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.270

land.lhs.true.246:                                ; preds = %land.lhs.true.242, %land.lhs.true.235, %lor.lhs.false.228, %land.lhs.true.226
  %136 = load i32*, i32** %move.addr, align 8
  %137 = load i32, i32* %color.addr, align 4
  %call247 = call i32 @aftermath_genmove(i32* %136, i32 %137, i32* null, i32 0)
  %cmp248 = icmp sgt i32 %call247, 0
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.270

land.lhs.true.250:                                ; preds = %land.lhs.true.246
  %138 = load i32*, i32** %allowed_moves.addr, align 8
  %tobool251 = icmp ne i32* %138, null
  br i1 %tobool251, label %lor.lhs.false.252, label %if.then.256

lor.lhs.false.252:                                ; preds = %land.lhs.true.250
  %139 = load i32*, i32** %move.addr, align 8
  %140 = load i32, i32* %139, align 4
  %idxprom253 = sext i32 %140 to i64
  %141 = load i32*, i32** %allowed_moves.addr, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %141, i64 %idxprom253
  %142 = load i32, i32* %arrayidx254, align 4
  %tobool255 = icmp ne i32 %142, 0
  br i1 %tobool255, label %if.then.256, label %if.end.270

if.then.256:                                      ; preds = %lor.lhs.false.252, %land.lhs.true.250
  %143 = load i32*, i32** %move.addr, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %color.addr, align 4
  %call257 = call i32 @is_legal(i32 %144, i32 %145)
  %tobool258 = icmp ne i32 %call257, 0
  br i1 %tobool258, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %if.then.256
  br label %if.end.263

if.else.260:                                      ; preds = %if.then.256
  %146 = load i32*, i32** %move.addr, align 8
  %147 = load i32, i32* %146, align 4
  %div = sdiv i32 %147, 20
  %sub261 = sub nsw i32 %div, 1
  %148 = load i32*, i32** %move.addr, align 8
  %149 = load i32, i32* %148, align 4
  %rem = srem i32 %149, 20
  %sub262 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 498, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i32 %sub261, i32 %sub262)
  br label %if.end.263

if.end.263:                                       ; preds = %if.else.260, %if.then.259
  store float 1.000000e+00, float* %val, align 4
  %150 = load i32, i32* @verbose, align 4
  %tobool264 = icmp ne i32 %150, 0
  br i1 %tobool264, label %cond.false.266, label %cond.true.265

cond.true.265:                                    ; preds = %if.end.263
  br label %cond.end.268

cond.false.266:                                   ; preds = %if.end.263
  %151 = load i32*, i32** %move.addr, align 8
  %152 = load i32, i32* %151, align 4
  %call267 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i32 %152)
  br label %cond.end.268

cond.end.268:                                     ; preds = %cond.false.266, %cond.true.265
  %153 = load i32*, i32** %move.addr, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load float, float* %val, align 4
  call void @record_top_move(i32 %154, float %155)
  %156 = load i32*, i32** %move.addr, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load float, float* %val, align 4
  call void @move_considered(i32 %157, float %158)
  %call269 = call double @time_report(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.270

if.end.270:                                       ; preds = %cond.end.268, %lor.lhs.false.252, %land.lhs.true.246, %land.lhs.true.242, %lor.lhs.false.239, %lor.lhs.false.230, %land.lhs.true.224, %if.end.220
  %159 = load float, float* %val, align 4
  %conv271 = fpext float %159 to double
  %cmp272 = fcmp olt double %conv271, 0.000000e+00
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.304

land.lhs.true.274:                                ; preds = %if.end.270
  %160 = load i32, i32* @doing_scoring, align 4
  %tobool275 = icmp ne i32 %160, 0
  br i1 %tobool275, label %if.end.304, label %land.lhs.true.276

land.lhs.true.276:                                ; preds = %land.lhs.true.274
  %161 = load i32, i32* @capture_all_dead, align 4
  %tobool277 = icmp ne i32 %161, 0
  br i1 %tobool277, label %land.lhs.true.278, label %if.end.304

land.lhs.true.278:                                ; preds = %land.lhs.true.276
  %162 = load i32*, i32** %move.addr, align 8
  %163 = load i32, i32* %color.addr, align 4
  %call279 = call i32 @aftermath_genmove(i32* %162, i32 %163, i32* null, i32 1)
  %cmp280 = icmp sgt i32 %call279, 0
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.304

land.lhs.true.282:                                ; preds = %land.lhs.true.278
  %164 = load i32*, i32** %allowed_moves.addr, align 8
  %tobool283 = icmp ne i32* %164, null
  br i1 %tobool283, label %lor.lhs.false.284, label %if.then.288

lor.lhs.false.284:                                ; preds = %land.lhs.true.282
  %165 = load i32*, i32** %move.addr, align 8
  %166 = load i32, i32* %165, align 4
  %idxprom285 = sext i32 %166 to i64
  %167 = load i32*, i32** %allowed_moves.addr, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %167, i64 %idxprom285
  %168 = load i32, i32* %arrayidx286, align 4
  %tobool287 = icmp ne i32 %168, 0
  br i1 %tobool287, label %if.then.288, label %if.end.304

if.then.288:                                      ; preds = %lor.lhs.false.284, %land.lhs.true.282
  %169 = load i32*, i32** %move.addr, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %color.addr, align 4
  %call289 = call i32 @is_legal(i32 %170, i32 %171)
  %tobool290 = icmp ne i32 %call289, 0
  br i1 %tobool290, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.then.288
  br label %if.end.297

if.else.292:                                      ; preds = %if.then.288
  %172 = load i32*, i32** %move.addr, align 8
  %173 = load i32, i32* %172, align 4
  %div293 = sdiv i32 %173, 20
  %sub294 = sub nsw i32 %div293, 1
  %174 = load i32*, i32** %move.addr, align 8
  %175 = load i32, i32* %174, align 4
  %rem295 = srem i32 %175, 20
  %sub296 = sub nsw i32 %rem295, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 514, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0), i32 %sub294, i32 %sub296)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.292, %if.then.291
  store float 1.000000e+00, float* %val, align 4
  %176 = load i32, i32* @verbose, align 4
  %tobool298 = icmp ne i32 %176, 0
  br i1 %tobool298, label %cond.false.300, label %cond.true.299

cond.true.299:                                    ; preds = %if.end.297
  br label %cond.end.302

cond.false.300:                                   ; preds = %if.end.297
  %177 = load i32*, i32** %move.addr, align 8
  %178 = load i32, i32* %177, align 4
  %call301 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0), i32 %178)
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.300, %cond.true.299
  %179 = load i32*, i32** %move.addr, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load float, float* %val, align 4
  call void @move_considered(i32 %180, float %181)
  %call303 = call double @time_report(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i32 0, double 1.000000e+00)
  br label %if.end.304

if.end.304:                                       ; preds = %cond.end.302, %lor.lhs.false.284, %land.lhs.true.278, %land.lhs.true.276, %land.lhs.true.274, %if.end.270
  %182 = load float, float* %val, align 4
  %conv305 = fpext float %182 to double
  %cmp306 = fcmp olt double %conv305, 0.000000e+00
  br i1 %cmp306, label %if.then.308, label %if.else.314

if.then.308:                                      ; preds = %if.end.304
  %183 = load i32, i32* @verbose, align 4
  %tobool309 = icmp ne i32 %183, 0
  br i1 %tobool309, label %cond.false.311, label %cond.true.310

cond.true.310:                                    ; preds = %if.then.308
  br label %cond.end.313

cond.false.311:                                   ; preds = %if.then.308
  %call312 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.311, %cond.true.310
  %184 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %184, align 4
  br label %if.end.321

if.else.314:                                      ; preds = %if.end.304
  %185 = load i32, i32* @verbose, align 4
  %tobool315 = icmp ne i32 %185, 0
  br i1 %tobool315, label %cond.false.317, label %cond.true.316

cond.true.316:                                    ; preds = %if.else.314
  br label %cond.end.320

cond.false.317:                                   ; preds = %if.else.314
  %186 = load i32*, i32** %move.addr, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load float, float* %val, align 4
  %conv318 = fpext float %188 to double
  %call319 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0), i32 %187, double %conv318)
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.false.317, %cond.true.316
  br label %if.end.321

if.end.321:                                       ; preds = %cond.end.320, %cond.end.313
  %189 = load i32, i32* @showstatistics, align 4
  %tobool322 = icmp ne i32 %189, 0
  br i1 %tobool322, label %if.then.323, label %if.end.330

if.then.323:                                      ; preds = %if.end.321
  %190 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %call324 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 %190)
  %191 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %call325 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %call326 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %call327 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i32 0, i32 0), i32 %193)
  %194 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  %call328 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %call329 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i32 0, i32 0), i32 %195)
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.323, %if.end.321
  %196 = load i32, i32* @showtime, align 4
  %tobool331 = icmp ne i32 %196, 0
  br i1 %tobool331, label %if.then.332, label %if.end.349

if.then.332:                                      ; preds = %if.end.330
  %197 = load i32*, i32** %move.addr, align 8
  %198 = load i32, i32* %197, align 4
  %call333 = call double @time_report(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0), i32 %198, double 1.000000e+00)
  store double %call333, double* %spent, align 8
  %199 = load double, double* %spent, align 8
  %200 = load double, double* @total_time, align 8
  %add = fadd double %200, %199
  store double %add, double* @total_time, align 8
  %201 = load double, double* %spent, align 8
  %202 = load double, double* @slowest_time, align 8
  %cmp334 = fcmp ogt double %201, %202
  br i1 %cmp334, label %if.then.336, label %if.end.338

if.then.336:                                      ; preds = %if.then.332
  %203 = load double, double* %spent, align 8
  store double %203, double* @slowest_time, align 8
  %204 = load i32*, i32** %move.addr, align 8
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* @slowest_move, align 4
  %206 = load i32, i32* @movenum, align 4
  %add337 = add nsw i32 %206, 1
  store i32 %add337, i32* @slowest_movenum, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.336, %if.then.332
  %207 = load i32*, i32** %move.addr, align 8
  %208 = load i32, i32* %207, align 4
  %cmp339 = icmp eq i32 %208, 0
  br i1 %cmp339, label %if.then.341, label %if.end.348

if.then.341:                                      ; preds = %if.end.338
  %209 = load i32, i32* @slowest_movenum, align 4
  %210 = load i32, i32* @slowest_move, align 4
  %call342 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i32 0, i32 0), i32 %209, i32 %210)
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = load double, double* @slowest_time, align 8
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), double %212)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %214 = load double, double* @total_time, align 8
  %215 = load i32, i32* @movenum, align 4
  %conv344 = sitofp i32 %215 to double
  %div345 = fdiv double %214, %conv344
  %call346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i32 0, i32 0), double %div345)
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %217 = load double, double* @total_time, align 8
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i32 0, i32 0), double %217)
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.341, %if.end.338
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.end.330
  %218 = load i32, i32* @stackp, align 4
  %cmp350 = icmp eq i32 %218, 0
  br i1 %cmp350, label %if.then.352, label %if.else.353

if.then.352:                                      ; preds = %if.end.349
  br label %if.end.354

if.else.353:                                      ; preds = %if.end.349
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 561, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.353, %if.then.352
  %call355 = call i32 @test_gray_border()
  %cmp356 = icmp slt i32 %call355, 0
  br i1 %cmp356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %if.end.354
  br label %if.end.360

if.else.359:                                      ; preds = %if.end.354
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 562, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.359, %if.then.358
  %219 = load i32, i32* @depth, align 4
  %220 = load i32, i32* %save_depth, align 4
  %cmp361 = icmp eq i32 %219, %220
  br i1 %cmp361, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %if.end.360
  br label %if.end.365

if.else.364:                                      ; preds = %if.end.360
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 563, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.364, %if.then.363
  %221 = load float, float* %val, align 4
  %conv366 = fptosi float %221 to i32
  store i32 %conv366, i32* %retval
  br label %return

return:                                           ; preds = %if.end.365, %cond.end
  %222 = load i32, i32* %retval
  ret i32 %222
}

; Function Attrs: nounwind uwtable
define i32 @genmove_conservative(i32* %i, i32* %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %move = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %call = call i32 @do_genmove(i32* %move, i32 %0, float 0.000000e+00, i32* null)
  store i32 %call, i32* %retval1, align 4
  %1 = load i32*, i32** %i.addr, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %move, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32*, i32** %i.addr, align 8
  store i32 %sub, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %j.addr, align 8
  %tobool2 = icmp ne i32* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %move, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  %6 = load i32*, i32** %j.addr, align 8
  store i32 %sub4, i32* %6, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* %retval1, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @genmove_restricted(i32* %i, i32* %j, i32 %color, i32* %allowed_moves) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %allowed_moves.addr = alloca i32*, align 8
  %move = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i32* %allowed_moves, i32** %allowed_moves.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32*, i32** %allowed_moves.addr, align 8
  %call = call i32 @do_genmove(i32* %move, i32 %0, float 0.000000e+00, i32* %1)
  store i32 %call, i32* %retval1, align 4
  %2 = load i32*, i32** %i.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %move, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32*, i32** %i.addr, align 8
  store i32 %sub, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32*, i32** %j.addr, align 8
  %tobool2 = icmp ne i32* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %move, align 4
  %rem = srem i32 %6, 20
  %sub4 = sub nsw i32 %rem, 1
  %7 = load i32*, i32** %j.addr, align 8
  store i32 %sub4, i32* %7, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load i32, i32* %retval1, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @move_considered(i32 %move, float %val) #0 {
entry:
  %move.addr = alloca i32, align 4
  %val.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store float %val, float* %val.addr, align 4
  %0 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %0, 20
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %i, align 4
  %1 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %1, 20
  %sub1 = sub nsw i32 %rem, 1
  store i32 %sub1, i32* %j, align 4
  %2 = load float, float* %val.addr, align 4
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx, i32 0, i64 %idxprom
  %5 = load float, float* %arrayidx3, align 4
  %cmp = fcmp ogt float %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load float, float* %val.addr, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx6, i32 0, i64 %idxprom4
  store float %6, float* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_level(i32* %level) #0 {
entry:
  %retval = alloca i32, align 4
  %level.addr = alloca i32*, align 8
  %buffer = alloca [128 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  store i32* %level, i32** %level.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @get_level.filename, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 128, %struct._IO_FILE* %0)
  %tobool = icmp ne i8* %call1, null
  br i1 %tobool, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %buffer, i32 0, i32 0
  %1 = load i32*, i32** %level.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i32* %1) #2
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.2
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  store i32 0, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.else, %if.then.6, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_mirror_move(i32* %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  %last_move = alloca i32, align 4
  %mirror_move = alloca i32, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %call = call i32 @get_last_move()
  store i32 %call, i32* %last_move, align 4
  %0 = load i32, i32* %last_move, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %1, 1
  %2 = load i32, i32* %last_move, align 4
  %div = sdiv i32 %2, 20
  %sub1 = sub nsw i32 %div, 1
  %sub2 = sub nsw i32 %sub, %sub1
  %mul = mul nsw i32 %sub2, 20
  %add = add nsw i32 21, %mul
  %3 = load i32, i32* @board_size, align 4
  %sub3 = sub nsw i32 %3, 1
  %4 = load i32, i32* %last_move, align 4
  %rem = srem i32 %4, 20
  %sub4 = sub nsw i32 %rem, 1
  %sub5 = sub nsw i32 %sub3, %sub4
  %add6 = add nsw i32 %add, %sub5
  store i32 %add6, i32* %mirror_move, align 4
  %5 = load i32, i32* %mirror_move, align 4
  %6 = load i32, i32* %color.addr, align 4
  %call7 = call i32 @test_symmetry_after_move(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %7 = load i32, i32* %mirror_move, align 4
  %8 = load i32*, i32** %move.addr, align 8
  store i32 %7, i32* %8, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.16

if.else:                                          ; preds = %entry
  store i32 21, i32* %mirror_move, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %9 = load i32, i32* %mirror_move, align 4
  %cmp9 = icmp slt i32 %9, 400
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %mirror_move, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv, 3
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %mirror_move, align 4
  %13 = load i32, i32* %color.addr, align 4
  %call12 = call i32 @test_symmetry_after_move(i32 %12, i32 %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* %mirror_move, align 4
  %15 = load i32*, i32** %move.addr, align 8
  store i32 %14, i32* %15, align 4
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %16 = load i32, i32* %mirror_move, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %mirror_move, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.8
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @gprintf(i8*, ...) #1

declare float @estimate_score(float*, float*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @print_moyo() #1

declare void @showboard(i32) #1

declare void @worm_reasons(i32) #1

declare void @owl_reasons(i32) #1

declare void @fuseki(i32) #1

declare void @shapes(i32) #1

declare void @combinations(i32) #1

declare i32 @review_move_reasons(i32*, float*, i32, float, float, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @revise_thrashing_dragon(i32 %color, float %advantage) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %advantage.addr = alloca float, align 4
  %pos = alloca i32, align 4
  %safe_stones = alloca [400 x i8], align 16
  %strength = alloca [400 x float], align 16
  store i32 %color, i32* %color.addr, align 4
  store float %advantage, float* %advantage.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load float, float* @score, align 4
  %2 = load float, float* %advantage.addr, align 4
  %sub = fsub float -0.000000e+00, %2
  %cmp1 = fcmp ogt float %1, %sub
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %color.addr, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %4 = load float, float* @score, align 4
  %5 = load float, float* %advantage.addr, align 4
  %cmp4 = fcmp olt float %4, %5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %lor.lhs.false
  %6 = load i32, i32* @thrashing_dragon, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom
  %owl_threat_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx, i32 0, i32 6
  %7 = load i32, i32* %owl_threat_status, align 4
  %cmp5 = icmp eq i32 %7, 12
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %8 = load i32, i32* @disable_threat_computation, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.14, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.7
  %9 = load i32, i32* @thrashing_dragon, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %lor.lhs.false.10, label %if.then.14

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %10 = load i32, i32* @thrashing_dragon, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 16
  %11 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %11, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.10, %lor.lhs.false.8, %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.10
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %12 = load i32, i32* %pos, align 4
  %cmp16 = icmp slt i32 %12, 400
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %14 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %14 to i32
  %cmp19 = icmp ne i32 %conv, 3
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.27

land.lhs.true.21:                                 ; preds = %for.body
  %15 = load i32, i32* %pos, align 4
  %16 = load i32, i32* @thrashing_dragon, align 4
  %call = call i32 @is_same_dragon(i32 %15, i32 %16)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %land.lhs.true.21
  %17 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom24
  %status26 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx25, i32 0, i32 16
  store i32 3, i32* %status26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %land.lhs.true.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %18 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* @thrashing_dragon, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom28
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx29, i32 0, i32 1
  %20 = load i32, i32* %id, align 4
  %idxprom30 = sext i32 %20 to i64
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i64 %idxprom30
  %safety = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx31, i32 0, i32 6
  store i32 1, i32* %safety, align 4
  %22 = load i32, i32* %color.addr, align 4
  %sub32 = sub nsw i32 3, %22
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  call void @set_strength_data(i32 %sub32, i8* %arraydecay, float* %arraydecay33)
  %23 = load i32, i32* %color.addr, align 4
  %sub34 = sub nsw i32 3, %23
  %arraydecay35 = getelementptr inbounds [400 x i8], [400 x i8]* %safe_stones, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [400 x float], [400 x float]* %strength, i32 0, i32 0
  %24 = load i32, i32* %color.addr, align 4
  %sub37 = sub nsw i32 3, %24
  %cmp38 = icmp eq i32 %sub37, 1
  %cond = select i1 %cmp38, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  call void @compute_influence(i32 %sub34, i8* %arraydecay35, float* %arraydecay36, %struct.influence_data* %cond, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i32 0, i32 0))
  call void @compute_refined_dragon_weaknesses()
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then.6, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

declare void @endgame_shapes(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @revise_semeai(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %found_one = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %found_one, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %cmp = icmp ne %struct.dragon_data2* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 624, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %pos, align 4
  %cmp1 = icmp slt i32 %2, 400
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %pos, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom4
  %color6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx5, i32 0, i32 0
  %6 = load i32, i32* %color6, align 4
  %7 = load i32, i32* %other, align 4
  %cmp7 = icmp eq i32 %6, %7
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.30

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom10
  %id = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx11, i32 0, i32 1
  %9 = load i32, i32* %id, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %arrayidx13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %10, i64 %idxprom12
  %semeai = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %arrayidx13, i32 0, i32 13
  %11 = load i32, i32* %semeai, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true.14, label %if.end.30

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %12 = load i32, i32* %pos, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom15
  %status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx16, i32 0, i32 16
  %13 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %13, 0
  br i1 %cmp17, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %land.lhs.true.14
  store i32 1, i32* %found_one, align 4
  %14 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom20
  %status22 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx21, i32 0, i32 16
  store i32 3, i32* %status22, align 4
  %15 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom23
  %origin = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx24, i32 0, i32 2
  %16 = load i32, i32* %origin, align 4
  %17 = load i32, i32* %pos, align 4
  %cmp25 = icmp eq i32 %16, %17
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.19
  %18 = load i32, i32* @verbose, align 4
  %tobool28 = icmp ne i32 %18, 0
  br i1 %tobool28, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.27
  br label %cond.end

cond.false:                                       ; preds = %if.then.27
  %19 = load i32, i32* %pos, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i32 0, i32 0), i32 %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.29

if.end.29:                                        ; preds = %cond.end, %if.then.19
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %20 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %found_one, align 4
  ret i32 %21
}

declare i32 @fill_liberty(i32*, i32) #1

declare void @record_top_move(i32, float) #1

declare i32 @aftermath_genmove(i32*, i32, i32*, i32) #1

declare i32 @is_legal(i32, i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare i32 @get_last_move() #1

; Function Attrs: nounwind uwtable
define internal i32 @test_symmetry_after_move(i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 1, i32* %result, align 4
  %0 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %move.addr, align 4
  %3 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %2, i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load i32, i32* %pos, align 4
  %5 = load i32, i32* @board_size, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load i32, i32* %pos, align 4
  %div = sdiv i32 %6, 20
  %sub4 = sub nsw i32 %div, 1
  %sub5 = sub nsw i32 %sub, %sub4
  %mul = mul nsw i32 %sub5, 20
  %add = add nsw i32 21, %mul
  %7 = load i32, i32* @board_size, align 4
  %sub6 = sub nsw i32 %7, 1
  %8 = load i32, i32* %pos, align 4
  %rem = srem i32 %8, 20
  %sub7 = sub nsw i32 %rem, 1
  %sub8 = sub nsw i32 %sub6, %sub7
  %add9 = add nsw i32 %add, %sub8
  %cmp10 = icmp sle i32 %4, %add9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %pos, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  %conv16 = zext i1 %cmp15 to i32
  %11 = load i32, i32* @board_size, align 4
  %sub17 = sub nsw i32 %11, 1
  %12 = load i32, i32* %pos, align 4
  %div18 = sdiv i32 %12, 20
  %sub19 = sub nsw i32 %div18, 1
  %sub20 = sub nsw i32 %sub17, %sub19
  %mul21 = mul nsw i32 %sub20, 20
  %add22 = add nsw i32 21, %mul21
  %13 = load i32, i32* @board_size, align 4
  %sub23 = sub nsw i32 %13, 1
  %14 = load i32, i32* %pos, align 4
  %rem24 = srem i32 %14, 20
  %sub25 = sub nsw i32 %rem24, 1
  %sub26 = sub nsw i32 %sub23, %sub25
  %add27 = add nsw i32 %add22, %sub26
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %15 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %15 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  %conv32 = zext i1 %cmp31 to i32
  %xor = xor i32 %conv16, %conv32
  %tobool33 = icmp ne i32 %xor, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body
  store i32 0, i32* %result, align 4
  br label %for.end

if.end.35:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %16 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  call void @popgo()
  %17 = load i32, i32* %result, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare void @popgo() #1

declare i32 @is_same_dragon(i32, i32) #1

declare void @set_strength_data(i32, i8*, float*) #1

declare void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
