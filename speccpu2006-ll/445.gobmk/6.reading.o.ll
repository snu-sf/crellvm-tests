; ModuleID = 'engine/reading.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct.reading_moves = type { [50 x i32], [50 x i32], i32 }

@reading_node_counter = internal global i32 0, align 4
@nodes_when_called = internal global i32 0, align 4
@shadow = external global [400 x i8], align 16
@debug = external global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"%oattack %1m(%1m) = %d %1M, %d nodes \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%oattack %1m(%1m) = %d, %d nodes \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%odefend %1m(%1m) = %d %1M, %d nodes \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%odefend %1m(%1m) = %d, %d nodes \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"engine/reading.c\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"!(acode != 0 && dcode == WIN && dpos == NO_MOVE)\00", align 1
@board = external global [421 x i8], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"IS_STONE(color)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"color == board[bstr]\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"attack_either-A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"attack_either-B\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"defend_both-A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"defend_both-B\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"defend_both-C\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"color == board[bpos]\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"color == board[cpos]\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"board[dpos] == EMPTY\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"board[epos] == EMPTY\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"board[Fpos] == other\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"break_through-A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"break_through-B\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"break_through-C\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[str])\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"attack_threats-A\00", align 1
@delta = external global [8 x i32], align 16
@.str.23 = private unnamed_addr constant [17 x i8] c"attack_threats-B\00", align 1
@stackp = external global i32, align 4
@worm = external global [400 x %struct.worm_data], align 16
@.str.24 = private unnamed_addr constant [17 x i8] c"attack_threats-C\00", align 1
@defend_lib_score = internal global [6 x i32] [i32 -5, i32 -4, i32 0, i32 3, i32 5, i32 50], align 16
@defend_not_adjacent_lib_score = internal global [5 x i32] [i32 0, i32 0, i32 2, i32 3, i32 5], align 16
@defend_capture_score = internal global [6 x i32] [i32 0, i32 6, i32 9, i32 13, i32 18, i32 24], align 16
@defend_atari_score = internal global [6 x i32] [i32 0, i32 2, i32 4, i32 6, i32 7, i32 8], align 16
@defend_save_score = internal global [6 x i32] [i32 0, i32 3, i32 6, i32 8, i32 10, i32 12], align 16
@defend_open_score = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@attack_own_lib_score = internal global [5 x i32] [i32 10, i32 -4, i32 2, i32 3, i32 4], align 16
@attack_string_lib_score = internal global [6 x i32] [i32 -5, i32 2, i32 3, i32 7, i32 10, i32 19], align 16
@attack_capture_score = internal global [6 x i32] [i32 -4, i32 4, i32 10, i32 15, i32 20, i32 25], align 16
@attack_save_score = internal global [6 x i32] [i32 0, i32 10, i32 13, i32 18, i32 21, i32 24], align 16
@attack_open_score = internal global [5 x i32] [i32 0, i32 0, i32 2, i32 4, i32 4], align 16
@defend_not_edge_score = internal global i32 5, align 4
@attack_not_edge_score = internal global i32 1, align 4
@attack_ko_score = internal global i32 -15, align 4
@cannot_defend_penalty = internal global i32 -20, align 4
@safe_atari_score = internal global i32 8, align 4
@verbose = external global i32, align 4
@.str.25 = private unnamed_addr constant [73 x i8] c"static int defend_lib_score[6]              = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"static int defend_not_adjacent_lib_score[5] = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"static int defend_capture_score[6]          = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"static int defend_atari_score[6]            = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"static int defend_save_score[6]             = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"static int defend_open_score[5]             = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"static int attack_own_lib_score[5]          = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"static int attack_string_lib_score[6]       = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"static int attack_capture_score[6]          = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"static int attack_save_score[6]             = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"static int attack_open_score[5]             = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"static int defend_not_edge_score            = %d;\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"static int attack_not_edge_score            = %d;\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"static int attack_ko_score                  = %d;\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"static int cannot_defend_penalty            = %d;\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"static int safe_atari_score                 = %d;\0A\00", align 1
@safe_move.initialized = internal global i32 0, align 4
@safe_move_cache_when = internal global [400 x [2 x i32]] zeroinitializer, align 16
@position_number = external global i32, align 4
@safe_move_cache = internal global [400 x [2 x i32]] zeroinitializer, align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"safe_move-A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"safe_move-B\00", align 1
@board_size = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@rgoal = common global i8* null, align 8
@goallib = common global i32 0, align 4
@.str.46 = private unnamed_addr constant [23 x i8] c"break_through_helper-A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"break_through_helper-E\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"break_through_helper-F\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"break_through_helper-G\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"break_through_helper-B\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"break_through_helper-C\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"break_through_helper-D\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"find_defense\00", align 1
@fourlib_depth = external global i32, align 4
@depth = external global i32, align 4
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.54 = private unnamed_addr constant [37 x i8] c"too many liberties or stackp > depth\00", align 1
@hashflags = external global i32, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"defend1\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"countlib(str) == 1\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"liberties == 1\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"defend1-A\00", align 1
@ko_depth = external global i32, align 4
@.str.60 = private unnamed_addr constant [22 x i8] c"defense effective - A\00", align 1
@backfill_depth = external global i32, align 4
@.str.61 = private unnamed_addr constant [10 x i8] c"defend1-C\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"backfilling\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"saved move\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"number_open <= 4\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Move order for %s: %n\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"%c%d (%d) %n\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"defend2\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"((board[str]) == 1 || (board[str]) == 2)\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"countlib(str) == 2\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"liberties == 2\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"defend2-A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"defend2-B\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"defense effective - B\00", align 1
@superstring_depth = external global i32, align 4
@backfill2_depth = external global i32, align 4
@.str.74 = private unnamed_addr constant [10 x i8] c"defend2-E\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"countlib(adj) == 2\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"liberties == 2 || liberties == 3\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"defend3\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"countlib(str) == 3\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"liberties == 3\00", align 1
@branch_depth = external global i32, align 4
@.str.80 = private unnamed_addr constant [10 x i8] c"defend3-A\00", align 1
@level = external global i32, align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"defend3-E\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"num_libs <= 4\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"liberties == 3 || liberties == 4\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"defend4\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"countlib(str) == 4\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"liberties == 4\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"defend4-A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"color != 0\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"got 4 liberties (stackp:%d>%d)\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"result >= 0 && result <= WIN\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"attack1\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"attack1-A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"attack1-B\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"attack1-C\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"attack2\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"attack2-A\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"attack effective\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"find cap2\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"special attack2\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"special attack3\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"special attack4\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"attack2-C\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"attack2-D\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"find_cap2\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"special_attack2\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"special_attack3-A\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"special_attack3-B\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"special_attack4\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"attack3\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"attack3-A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"find cap3\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"draw back\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"attack3-C\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"attack3-E\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"attack3-F\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"draw_back\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"attack4\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"stackp > depth\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"attack4-A\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"find cap\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"simple_ladder_attack\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"simple_ladder_defend\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"defense effective\00", align 1

; Function Attrs: nounwind uwtable
define i32 @attack(i32 %str, i32* %move) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %nodes = alloca i32, align 4
  %origin = alloca i32, align 4
  %the_move = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 0, i32* %the_move, align 4
  %0 = load i32, i32* @reading_node_counter, align 4
  store i32 %0, i32* @nodes_when_called, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %1)
  %cmp = icmp sgt i32 %call, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %str.addr, align 4
  %call1 = call i32 @find_origin(i32 %2)
  store i32 %call1, i32* %origin, align 4
  %3 = load i32, i32* %origin, align 4
  %call2 = call i32 @search_persistent_reading_cache(i32 4, i32 %3, i32* %result, i32* %the_move)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %4 = load i32*, i32** %move.addr, align 8
  %tobool4 = icmp ne i32* %4, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %5 = load i32, i32* %the_move, align 4
  %6 = load i32*, i32** %move.addr, align 8
  store i32 %5, i32* %6, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @shadow, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  %8 = load i32, i32* %str.addr, align 4
  %call8 = call i32 @do_attack(i32 %8, i32* %the_move, i32 0, i32 0)
  store i32 %call8, i32* %result, align 4
  %9 = load i32, i32* @reading_node_counter, align 4
  %10 = load i32, i32* @nodes_when_called, align 4
  %sub = sub nsw i32 %9, %10
  store i32 %sub, i32* %nodes, align 4
  %11 = load i32, i32* @debug, align 4
  %and = and i32 %11, 32768
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.7
  %12 = load i32, i32* @reading_node_counter, align 4
  %13 = load i32, i32* @nodes_when_called, align 4
  %sub11 = sub nsw i32 %12, %13
  %cmp12 = icmp sge i32 %sub11, 1000
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.then.10
  %14 = load i32, i32* %result, align 4
  %cmp14 = icmp ne i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.13
  %15 = load i32, i32* %str.addr, align 4
  %16 = load i32, i32* %origin, align 4
  %17 = load i32, i32* %result, align 4
  %18 = load i32, i32* %the_move, align 4
  %19 = load i32, i32* %nodes, align 4
  %call16 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  br label %if.end.18

if.else:                                          ; preds = %if.then.13
  %20 = load i32, i32* %str.addr, align 4
  %21 = load i32, i32* %origin, align 4
  %22 = load i32, i32* %result, align 4
  %23 = load i32, i32* %nodes, align 4
  %call17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 %20, i32 %21, i32 %22, i32 %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.15
  call void @dump_stack()
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.7
  %24 = load i32, i32* %origin, align 4
  %25 = load i32, i32* %result, align 4
  %26 = load i32, i32* %the_move, align 4
  %27 = load i32, i32* %nodes, align 4
  call void @store_persistent_reading_cache(i32 4, i32 %24, i32 %25, i32 %26, i32 %27)
  %28 = load i32*, i32** %move.addr, align 8
  %tobool21 = icmp ne i32* %28, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %29 = load i32, i32* %the_move, align 4
  %30 = load i32*, i32** %move.addr, align 8
  store i32 %29, i32* %30, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %31 = load i32, i32* %result, align 4
  store i32 %31, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.6, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @countlib(i32) #1

declare i32 @find_origin(i32) #1

declare i32 @search_persistent_reading_cache(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_attack(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %xpos = alloca i32, align 4
  %libs = alloca i32, align 4
  %result = alloca i32, align 4
  %found_read_result = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %result, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8** %read_function_name, align 8
  %2 = load i32, i32* %str.addr, align 4
  store i32 %2, i32* %q, align 4
  %3 = load i32, i32* %color, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %color, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %do.end.125

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %7)
  store i32 %call, i32* %libs, align 4
  %8 = load i32, i32* %libs, align 4
  %cmp7 = icmp sgt i32 %8, 4
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %9 = load i32, i32* %libs, align 4
  %cmp9 = icmp eq i32 %9, 4
  br i1 %cmp9, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i32, i32* @stackp, align 4
  %11 = load i32, i32* @fourlib_depth, align 4
  %cmp11 = icmp sgt i32 %10, %11
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %land.lhs.true, %if.end.6
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %12, null
  br i1 %tobool, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.then.13
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %13 = load i32, i32* @stackp, align 4
  %14 = load i32, i32* @fourlib_depth, align 4
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i32 0, i32 0), i32 %13, i32 %14) #2
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool16 = icmp ne %struct.SGFTree_t* %15, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.14
  %16 = load i8*, i8** %read_function_name, align 8
  %17 = load i32, i32* %q, align 4
  %arraydecay18 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgf_trace(i8* %16, i32 %17, i32 0, i32 0, i8* %arraydecay18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.13
  store i32 0, i32* %retval
  br label %do.end.125

if.end.21:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %18 = load i32, i32* @stackp, align 4
  %19 = load i32, i32* @depth, align 4
  %cmp22 = icmp sle i32 %18, %19
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.54

land.lhs.true.24:                                 ; preds = %if.end.21
  %20 = load i32, i32* @hashflags, align 4
  %and = and i32 %20, 32
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then.26, label %if.end.54

if.then.26:                                       ; preds = %land.lhs.true.24
  %21 = load i32, i32* %komaster.addr, align 4
  %22 = load i32, i32* %kom_pos.addr, align 4
  %call27 = call i32 @get_read_result(i32 4, i32 %21, i32 %22, i32* %str.addr, %struct.read_result_t** %read_result)
  store i32 %call27, i32* %found_read_result, align 4
  %23 = load i32, i32* %found_read_result, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then.29, label %if.end.53

if.then.29:                                       ; preds = %if.then.26
  %24 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %24, i32 0, i32 1
  %25 = load i32, i32* %data2, align 4
  %shr = lshr i32 %25, 24
  %and30 = and i32 %shr, 15
  %cmp31 = icmp ne i32 %and30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %if.then.29
  %26 = load i32*, i32** %move.addr, align 8
  %tobool34 = icmp ne i32* %26, null
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.then.33
  %27 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data236 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %27, i32 0, i32 1
  %28 = load i32, i32* %data236, align 4
  %shr37 = lshr i32 %28, 10
  %and38 = and i32 %shr37, 1023
  %29 = load i32*, i32** %move.addr, align 8
  store i32 %and38, i32* %29, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.then.33
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.29
  %30 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool41 = icmp ne %struct.SGFTree_t* %30, null
  br i1 %tobool41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %if.end.40
  %31 = load i8*, i8** %read_function_name, align 8
  %32 = load i32, i32* %q, align 4
  %33 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data243 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %33, i32 0, i32 1
  %34 = load i32, i32* %data243, align 4
  %shr44 = lshr i32 %34, 10
  %and45 = and i32 %shr44, 1023
  %35 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data246 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %35, i32 0, i32 1
  %36 = load i32, i32* %data246, align 4
  %shr47 = lshr i32 %36, 24
  %and48 = and i32 %shr47, 15
  call void @sgf_trace(i8* %31, i32 %32, i32 %and45, i32 %and48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.42, %if.end.40
  %37 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data250 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %37, i32 0, i32 1
  %38 = load i32, i32* %data250, align 4
  %shr51 = lshr i32 %38, 24
  %and52 = and i32 %shr51, 15
  store i32 %and52, i32* %retval
  br label %do.end.125

if.end.53:                                        ; preds = %if.then.26
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true.24, %if.end.21
  %39 = load i32, i32* %libs, align 4
  %cmp55 = icmp eq i32 %39, 1
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.54
  %40 = load i32, i32* %str.addr, align 4
  %41 = load i32, i32* %komaster.addr, align 4
  %42 = load i32, i32* %kom_pos.addr, align 4
  %call58 = call i32 @attack1(i32 %40, i32* %xpos, i32 %41, i32 %42)
  store i32 %call58, i32* %result, align 4
  br label %if.end.83

if.else.59:                                       ; preds = %if.end.54
  %43 = load i32, i32* %libs, align 4
  %cmp60 = icmp eq i32 %43, 2
  br i1 %cmp60, label %if.then.62, label %if.else.70

if.then.62:                                       ; preds = %if.else.59
  %44 = load i32, i32* @stackp, align 4
  %45 = load i32, i32* @depth, align 4
  %add = add nsw i32 %45, 10
  %cmp63 = icmp sgt i32 %44, %add
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.then.62
  %46 = load i32, i32* %str.addr, align 4
  %47 = load i32, i32* %komaster.addr, align 4
  %48 = load i32, i32* %kom_pos.addr, align 4
  %call66 = call i32 @simple_ladder_attack(i32 %46, i32* %xpos, i32 %47, i32 %48)
  store i32 %call66, i32* %result, align 4
  br label %if.end.69

if.else.67:                                       ; preds = %if.then.62
  %49 = load i32, i32* %str.addr, align 4
  %50 = load i32, i32* %komaster.addr, align 4
  %51 = load i32, i32* %kom_pos.addr, align 4
  %call68 = call i32 @attack2(i32 %49, i32* %xpos, i32 %50, i32 %51)
  store i32 %call68, i32* %result, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.65
  br label %if.end.82

if.else.70:                                       ; preds = %if.else.59
  %52 = load i32, i32* %libs, align 4
  %cmp71 = icmp eq i32 %52, 3
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %if.else.70
  %53 = load i32, i32* %str.addr, align 4
  %54 = load i32, i32* %komaster.addr, align 4
  %55 = load i32, i32* %kom_pos.addr, align 4
  %call74 = call i32 @attack3(i32 %53, i32* %xpos, i32 %54, i32 %55)
  store i32 %call74, i32* %result, align 4
  br label %if.end.81

if.else.75:                                       ; preds = %if.else.70
  %56 = load i32, i32* %libs, align 4
  %cmp76 = icmp eq i32 %56, 4
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.else.75
  %57 = load i32, i32* %str.addr, align 4
  %58 = load i32, i32* %komaster.addr, align 4
  %59 = load i32, i32* %kom_pos.addr, align 4
  %call79 = call i32 @attack4(i32 %57, i32* %xpos, i32 %58, i32 %59)
  store i32 %call79, i32* %result, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.else.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.73
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.69
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.57
  %60 = load i32, i32* %result, align 4
  %cmp84 = icmp sge i32 %60, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.else.90

land.lhs.true.86:                                 ; preds = %if.end.83
  %61 = load i32, i32* %result, align 4
  %cmp87 = icmp sle i32 %61, 5
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %land.lhs.true.86
  br label %if.end.95

if.else.90:                                       ; preds = %land.lhs.true.86, %if.end.83
  %62 = load i32, i32* %str.addr, align 4
  %div91 = sdiv i32 %62, 20
  %sub92 = sub nsw i32 %div91, 1
  %63 = load i32, i32* %str.addr, align 4
  %rem93 = srem i32 %63, 20
  %sub94 = sub nsw i32 %rem93, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2348, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.91, i32 0, i32 0), i32 %sub92, i32 %sub94)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.90, %if.then.89
  %64 = load i32, i32* %result, align 4
  %tobool96 = icmp ne i32 %64, 0
  br i1 %tobool96, label %if.then.97, label %if.end.116

if.then.97:                                       ; preds = %if.end.95
  br label %do.body

do.body:                                          ; preds = %if.then.97
  %65 = load i32, i32* %result, align 4
  %cmp98 = icmp ne i32 %65, 0
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.104

land.lhs.true.100:                                ; preds = %do.body
  %66 = load i32*, i32** %move.addr, align 8
  %cmp101 = icmp ne i32* %66, null
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %land.lhs.true.100
  %67 = load i32, i32* %xpos, align 4
  %68 = load i32*, i32** %move.addr, align 8
  store i32 %67, i32* %68, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %land.lhs.true.100, %do.body
  %69 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool105 = icmp ne %struct.read_result_t* %69, null
  br i1 %tobool105, label %if.then.106, label %if.end.115

if.then.106:                                      ; preds = %if.end.104
  %70 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2107 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %70, i32 0, i32 1
  %71 = load i32, i32* %data2107, align 4
  %and108 = and i32 %71, 1023
  %or = or i32 %and108, 536870912
  %72 = load i32, i32* %result, align 4
  %and109 = and i32 %72, 15
  %shl = shl i32 %and109, 24
  %or110 = or i32 %or, %shl
  %73 = load i32, i32* %xpos, align 4
  %and111 = and i32 %73, 1023
  %shl112 = shl i32 %and111, 10
  %or113 = or i32 %or110, %shl112
  %74 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2114 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %74, i32 0, i32 1
  store i32 %or113, i32* %data2114, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.106, %if.end.104
  %75 = load i32, i32* %result, align 4
  store i32 %75, i32* %retval
  br label %do.end.125

do.end:                                           ; No predecessors!
  br label %if.end.116

if.end.116:                                       ; preds = %do.end, %if.end.95
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %76 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool118 = icmp ne %struct.read_result_t* %76, null
  br i1 %tobool118, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %do.body.117
  %77 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2120 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %77, i32 0, i32 1
  %78 = load i32, i32* %data2120, align 4
  %and121 = and i32 %78, 1023
  %or122 = or i32 %and121, 536870912
  %79 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2123 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %79, i32 0, i32 1
  store i32 %or122, i32* %data2123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.119, %do.body.117
  store i32 0, i32* %retval
  br label %do.end.125

do.end.125:                                       ; preds = %if.then.5, %if.end.20, %if.end.49, %if.end.115, %if.end.124
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare i32 @gprintf(i8*, ...) #1

declare void @dump_stack() #1

declare void @store_persistent_reading_cache(i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @find_defense(i32 %str, i32* %move) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %nodes = alloca i32, align 4
  %origin = alloca i32, align 4
  %the_move = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 0, i32* %the_move, align 4
  %0 = load i32, i32* @reading_node_counter, align 4
  store i32 %0, i32* @nodes_when_called, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %1)
  %cmp = icmp sgt i32 %call, 4
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %move.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %3 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 5, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %call3 = call i32 @find_origin(i32 %4)
  store i32 %call3, i32* %origin, align 4
  %5 = load i32, i32* %origin, align 4
  %call4 = call i32 @search_persistent_reading_cache(i32 3, i32 %5, i32* %result, i32* %the_move)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.2
  %6 = load i32*, i32** %move.addr, align 8
  %tobool7 = icmp ne i32* %6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  %7 = load i32, i32* %the_move, align 4
  %8 = load i32*, i32** %move.addr, align 8
  store i32 %7, i32* %8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %9 = load i32, i32* %result, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.2
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([400 x i8], [400 x i8]* @shadow, i32 0, i32 0), i8 0, i64 400, i32 16, i1 false)
  %10 = load i32, i32* %str.addr, align 4
  %call11 = call i32 @do_find_defense(i32 %10, i32* %the_move, i32 0, i32 0)
  store i32 %call11, i32* %result, align 4
  %11 = load i32, i32* @reading_node_counter, align 4
  %12 = load i32, i32* @nodes_when_called, align 4
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %nodes, align 4
  %13 = load i32, i32* @debug, align 4
  %and = and i32 %13, 32768
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %if.end.10
  %14 = load i32, i32* @reading_node_counter, align 4
  %15 = load i32, i32* @nodes_when_called, align 4
  %sub14 = sub nsw i32 %14, %15
  %cmp15 = icmp sge i32 %sub14, 1000
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.then.13
  %16 = load i32, i32* %result, align 4
  %cmp17 = icmp ne i32 %16, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.16
  %17 = load i32, i32* %str.addr, align 4
  %18 = load i32, i32* %origin, align 4
  %19 = load i32, i32* %result, align 4
  %20 = load i32, i32* %the_move, align 4
  %21 = load i32, i32* %nodes, align 4
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %if.end.21

if.else:                                          ; preds = %if.then.16
  %22 = load i32, i32* %str.addr, align 4
  %23 = load i32, i32* %origin, align 4
  %24 = load i32, i32* %result, align 4
  %25 = load i32, i32* %nodes, align 4
  %call20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i32 %22, i32 %23, i32 %24, i32 %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  call void @dump_stack()
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.10
  %26 = load i32, i32* %origin, align 4
  %27 = load i32, i32* %result, align 4
  %28 = load i32, i32* %the_move, align 4
  %29 = load i32, i32* %nodes, align 4
  call void @store_persistent_reading_cache(i32 3, i32 %26, i32 %27, i32 %28, i32 %29)
  %30 = load i32*, i32** %move.addr, align 8
  %tobool24 = icmp ne i32* %30, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %31 = load i32, i32* %the_move, align 4
  %32 = load i32*, i32** %move.addr, align 8
  store i32 %31, i32* %32, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %33 = load i32, i32* %result, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.end.9, %if.end
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @do_find_defense(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %xpos = alloca i32, align 4
  %dcode = alloca i32, align 4
  %liberties = alloca i32, align 4
  %found_read_result = alloca i32, align 4
  %read_result = alloca %struct.read_result_t*, align 8
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %dcode, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %read_result, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8** %read_function_name, align 8
  %0 = load i32, i32* %str.addr, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %1)
  store i32 %call, i32* %liberties, align 4
  %2 = load i32, i32* %liberties, align 4
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %liberties, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.3

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* @stackp, align 4
  %5 = load i32, i32* @fourlib_depth, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i32, i32* %liberties, align 4
  %cmp4 = icmp eq i32 %6, 3
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %lor.lhs.false.3
  %7 = load i32, i32* @stackp, align 4
  %8 = load i32, i32* @depth, align 4
  %cmp6 = icmp sgt i32 %7, %8
  br i1 %cmp6, label %if.then, label %if.end.11

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %entry
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %9, null
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %10 = load i8*, i8** %read_function_name, align 8
  %11 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %10, i32 %11, i32 0, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load i32*, i32** %move.addr, align 8
  %tobool8 = icmp ne i32* %12, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %13 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %13, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  store i32 5, i32* %retval
  br label %do.end.88

if.end.11:                                        ; preds = %land.lhs.true.5, %lor.lhs.false.3
  %14 = load i32, i32* @stackp, align 4
  %15 = load i32, i32* @depth, align 4
  %cmp12 = icmp sle i32 %14, %15
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.42

land.lhs.true.13:                                 ; preds = %if.end.11
  %16 = load i32, i32* @hashflags, align 4
  %and = and i32 %16, 1
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then.15, label %if.end.42

if.then.15:                                       ; preds = %land.lhs.true.13
  %17 = load i32, i32* %komaster.addr, align 4
  %18 = load i32, i32* %kom_pos.addr, align 4
  %call16 = call i32 @get_read_result(i32 3, i32 %17, i32 %18, i32* %str.addr, %struct.read_result_t** %read_result)
  store i32 %call16, i32* %found_read_result, align 4
  %19 = load i32, i32* %found_read_result, align 4
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %if.then.15
  %20 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data2 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %20, i32 0, i32 1
  %21 = load i32, i32* %data2, align 4
  %shr = lshr i32 %21, 24
  %and19 = and i32 %shr, 15
  %cmp20 = icmp ne i32 %and19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.then.18
  %22 = load i32*, i32** %move.addr, align 8
  %tobool22 = icmp ne i32* %22, null
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.then.21
  %23 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data224 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %23, i32 0, i32 1
  %24 = load i32, i32* %data224, align 4
  %shr25 = lshr i32 %24, 10
  %and26 = and i32 %shr25, 1023
  %25 = load i32*, i32** %move.addr, align 8
  store i32 %and26, i32* %25, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.23, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  %26 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool29 = icmp ne %struct.SGFTree_t* %26, null
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end.28
  %27 = load i8*, i8** %read_function_name, align 8
  %28 = load i32, i32* %q, align 4
  %29 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data231 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %29, i32 0, i32 1
  %30 = load i32, i32* %data231, align 4
  %shr32 = lshr i32 %30, 10
  %and33 = and i32 %shr32, 1023
  %31 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data234 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %31, i32 0, i32 1
  %32 = load i32, i32* %data234, align 4
  %shr35 = lshr i32 %32, 24
  %and36 = and i32 %shr35, 15
  call void @sgf_trace(i8* %27, i32 %28, i32 %and33, i32 %and36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %if.end.28
  %33 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data238 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %33, i32 0, i32 1
  %34 = load i32, i32* %data238, align 4
  %shr39 = lshr i32 %34, 24
  %and40 = and i32 %shr39, 15
  store i32 %and40, i32* %retval
  br label %do.end.88

if.end.41:                                        ; preds = %if.then.15
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.13, %if.end.11
  %35 = load i32, i32* %liberties, align 4
  %cmp43 = icmp eq i32 %35, 1
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.42
  %36 = load i32, i32* %str.addr, align 4
  %37 = load i32, i32* %komaster.addr, align 4
  %38 = load i32, i32* %kom_pos.addr, align 4
  %call45 = call i32 @defend1(i32 %36, i32* %xpos, i32 %37, i32 %38)
  store i32 %call45, i32* %dcode, align 4
  br label %if.end.60

if.else:                                          ; preds = %if.end.42
  %39 = load i32, i32* %liberties, align 4
  %cmp46 = icmp eq i32 %39, 2
  br i1 %cmp46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.else
  %40 = load i32, i32* %str.addr, align 4
  %41 = load i32, i32* %komaster.addr, align 4
  %42 = load i32, i32* %kom_pos.addr, align 4
  %call48 = call i32 @defend2(i32 %40, i32* %xpos, i32 %41, i32 %42)
  store i32 %call48, i32* %dcode, align 4
  br label %if.end.59

if.else.49:                                       ; preds = %if.else
  %43 = load i32, i32* %liberties, align 4
  %cmp50 = icmp eq i32 %43, 3
  br i1 %cmp50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %if.else.49
  %44 = load i32, i32* %str.addr, align 4
  %45 = load i32, i32* %komaster.addr, align 4
  %46 = load i32, i32* %kom_pos.addr, align 4
  %call52 = call i32 @defend3(i32 %44, i32* %xpos, i32 %45, i32 %46)
  store i32 %call52, i32* %dcode, align 4
  br label %if.end.58

if.else.53:                                       ; preds = %if.else.49
  %47 = load i32, i32* %liberties, align 4
  %cmp54 = icmp eq i32 %47, 4
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.else.53
  %48 = load i32, i32* %str.addr, align 4
  %49 = load i32, i32* %komaster.addr, align 4
  %50 = load i32, i32* %kom_pos.addr, align 4
  %call56 = call i32 @defend4(i32 %48, i32* %xpos, i32 %49, i32 %50)
  store i32 %call56, i32* %dcode, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.else.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.51
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.47
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.44
  %51 = load i32, i32* %dcode, align 4
  %tobool61 = icmp ne i32 %51, 0
  br i1 %tobool61, label %if.then.62, label %if.end.79

if.then.62:                                       ; preds = %if.end.60
  br label %do.body

do.body:                                          ; preds = %if.then.62
  %52 = load i32, i32* %dcode, align 4
  %cmp63 = icmp ne i32 %52, 0
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.67

land.lhs.true.64:                                 ; preds = %do.body
  %53 = load i32*, i32** %move.addr, align 8
  %cmp65 = icmp ne i32* %53, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.64
  %54 = load i32, i32* %xpos, align 4
  %55 = load i32*, i32** %move.addr, align 8
  store i32 %54, i32* %55, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %land.lhs.true.64, %do.body
  %56 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool68 = icmp ne %struct.read_result_t* %56, null
  br i1 %tobool68, label %if.then.69, label %if.end.78

if.then.69:                                       ; preds = %if.end.67
  %57 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data270 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %57, i32 0, i32 1
  %58 = load i32, i32* %data270, align 4
  %and71 = and i32 %58, 1023
  %or = or i32 %and71, 536870912
  %59 = load i32, i32* %dcode, align 4
  %and72 = and i32 %59, 15
  %shl = shl i32 %and72, 24
  %or73 = or i32 %or, %shl
  %60 = load i32, i32* %xpos, align 4
  %and74 = and i32 %60, 1023
  %shl75 = shl i32 %and74, 10
  %or76 = or i32 %or73, %shl75
  %61 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data277 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %61, i32 0, i32 1
  store i32 %or76, i32* %data277, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.69, %if.end.67
  %62 = load i32, i32* %dcode, align 4
  store i32 %62, i32* %retval
  br label %do.end.88

do.end:                                           ; No predecessors!
  br label %if.end.79

if.end.79:                                        ; preds = %do.end, %if.end.60
  br label %do.body.80

do.body.80:                                       ; preds = %if.end.79
  %63 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %tobool81 = icmp ne %struct.read_result_t* %63, null
  br i1 %tobool81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %do.body.80
  %64 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data283 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %64, i32 0, i32 1
  %65 = load i32, i32* %data283, align 4
  %and84 = and i32 %65, 1023
  %or85 = or i32 %and84, 536870912
  %66 = load %struct.read_result_t*, %struct.read_result_t** %read_result, align 8
  %data286 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %66, i32 0, i32 1
  store i32 %or85, i32* %data286, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %do.body.80
  store i32 0, i32* %retval
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.10, %if.end.37, %if.end.78, %if.end.87
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @attack_and_defend(i32 %str, i32* %attack_code, i32* %attack_point, i32* %defend_code, i32* %defense_point) #0 {
entry:
  %str.addr = alloca i32, align 4
  %attack_code.addr = alloca i32*, align 8
  %attack_point.addr = alloca i32*, align 8
  %defend_code.addr = alloca i32*, align 8
  %defense_point.addr = alloca i32*, align 8
  %acode = alloca i32, align 4
  %apos = alloca i32, align 4
  %dcode = alloca i32, align 4
  %dpos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %attack_code, i32** %attack_code.addr, align 8
  store i32* %attack_point, i32** %attack_point.addr, align 8
  store i32* %defend_code, i32** %defend_code.addr, align 8
  store i32* %defense_point, i32** %defense_point.addr, align 8
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %apos, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %dpos, align 4
  %0 = load i32, i32* %str.addr, align 4
  %call = call i32 @attack(i32 %0, i32* %apos)
  store i32 %call, i32* %acode, align 4
  %1 = load i32, i32* %acode, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %str.addr, align 4
  %call1 = call i32 @find_defense(i32 %2, i32* %dpos)
  store i32 %call1, i32* %dcode, align 4
  %3 = load i32, i32* %dcode, align 4
  %cmp2 = icmp eq i32 %3, 5
  br i1 %cmp2, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %dpos, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %land.lhs.true
  %5 = load i32, i32* %str.addr, align 4
  call void @delete_persistent_reading_cache_entry(i32 4, i32 %5)
  %6 = load i32, i32* %str.addr, align 4
  call void @delete_persistent_reading_cache_entry(i32 3, i32 %6)
  %7 = load i32, i32* %str.addr, align 4
  %call5 = call i32 @attack(i32 %7, i32* %apos)
  store i32 %call5, i32* %acode, align 4
  %8 = load i32, i32* %acode, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %9 = load i32, i32* %str.addr, align 4
  %call8 = call i32 @find_defense(i32 %9, i32* %dpos)
  store i32 %call8, i32* %dcode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %10 = load i32, i32* %acode, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.then.16

land.lhs.true.12:                                 ; preds = %if.end.10
  %11 = load i32, i32* %dcode, align 4
  %cmp13 = icmp eq i32 %11, 5
  br i1 %cmp13, label %land.lhs.true.14, label %if.then.16

land.lhs.true.14:                                 ; preds = %land.lhs.true.12
  %12 = load i32, i32* %dpos, align 4
  %cmp15 = icmp eq i32 %12, 0
  br i1 %cmp15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.14, %land.lhs.true.12, %if.end.10
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true.14
  %13 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %13, 20
  %sub = sub nsw i32 %div, 1
  %14 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %14, 20
  %sub17 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 378, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i32 0, i32 0), i32 %sub, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %15 = load i32*, i32** %attack_code.addr, align 8
  %tobool = icmp ne i32* %15, null
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.18
  %16 = load i32, i32* %acode, align 4
  %17 = load i32*, i32** %attack_code.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.18
  %18 = load i32*, i32** %attack_point.addr, align 8
  %tobool21 = icmp ne i32* %18, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %19 = load i32, i32* %apos, align 4
  %20 = load i32*, i32** %attack_point.addr, align 8
  store i32 %19, i32* %20, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %21 = load i32*, i32** %defend_code.addr, align 8
  %tobool24 = icmp ne i32* %21, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %22 = load i32, i32* %dcode, align 4
  %23 = load i32*, i32** %defend_code.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  %24 = load i32*, i32** %defense_point.addr, align 8
  %tobool27 = icmp ne i32* %24, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  %25 = load i32, i32* %dpos, align 4
  %26 = load i32*, i32** %defense_point.addr, align 8
  store i32 %25, i32* %26, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.26
  %27 = load i32, i32* %acode, align 4
  %cmp30 = icmp ne i32 %27, 0
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.29
  %28 = load i32, i32* %dcode, align 4
  %cmp31 = icmp ne i32 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.29
  %29 = phi i1 [ false, %if.end.29 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  ret i32 %land.ext
}

declare void @delete_persistent_reading_cache_entry(i32, i32) #1

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @attack_either(i32 %astr, i32 %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %astr.addr = alloca i32, align 4
  %bstr.addr = alloca i32, align 4
  %asuccess = alloca i32, align 4
  %bsuccess = alloca i32, align 4
  %color = alloca i32, align 4
  %t = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %alibs = alloca i32, align 4
  %defended0 = alloca i32, align 4
  %defended1 = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %astr, i32* %astr.addr, align 4
  store i32 %bstr, i32* %bstr.addr, align 4
  store i32 0, i32* %asuccess, align 4
  store i32 0, i32* %bsuccess, align 4
  %0 = load i32, i32* %astr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %color, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %astr.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %astr.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %color, align 4
  %7 = load i32, i32* %bstr.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %9 = load i32, i32* %bstr.addr, align 4
  %div12 = sdiv i32 %9, 20
  %sub13 = sub nsw i32 %div12, 1
  %10 = load i32, i32* %bstr.addr, align 4
  %rem14 = srem i32 %10, 20
  %sub15 = sub nsw i32 %rem14, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 420, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %sub13, i32 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  %11 = load i32, i32* %astr.addr, align 4
  %call = call i32 @countlib(i32 %11)
  %12 = load i32, i32* %bstr.addr, align 4
  %call17 = call i32 @countlib(i32 %12)
  %cmp18 = icmp sgt i32 %call, %call17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %13 = load i32, i32* %astr.addr, align 4
  store i32 %13, i32* %t, align 4
  %14 = load i32, i32* %bstr.addr, align 4
  store i32 %14, i32* %astr.addr, align 4
  %15 = load i32, i32* %t, align 4
  store i32 %15, i32* %bstr.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.16
  %16 = load i32, i32* %astr.addr, align 4
  %call22 = call i32 @attack(i32 %16, i32* null)
  store i32 %call22, i32* %asuccess, align 4
  %17 = load i32, i32* %asuccess, align 4
  %cmp23 = icmp eq i32 %17, 5
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.21
  %18 = load i32, i32* %asuccess, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %19 = load i32, i32* %bstr.addr, align 4
  %call27 = call i32 @attack(i32 %19, i32* null)
  store i32 %call27, i32* %bsuccess, align 4
  %20 = load i32, i32* %asuccess, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.26
  %21 = load i32, i32* %bsuccess, align 4
  %tobool29 = icmp ne i32 %21, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false.28, %if.end.26
  %22 = load i32, i32* %asuccess, align 4
  %23 = load i32, i32* %bsuccess, align 4
  %cmp31 = icmp sgt i32 %22, %23
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %24 = load i32, i32* %asuccess, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %25 = load i32, i32* %bsuccess, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.28
  %26 = load i32, i32* %astr.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call34 = call i32 @findlib(i32 %26, i32 2, i32* %arraydecay)
  store i32 %call34, i32* %alibs, align 4
  store i32 5, i32* %defended0, align 4
  store i32 5, i32* %defended1, align 4
  %27 = load i32, i32* %color, align 4
  %sub35 = sub nsw i32 3, %27
  store i32 %sub35, i32* %other, align 4
  %28 = load i32, i32* %alibs, align 4
  %cmp36 = icmp eq i32 %28, 2
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %if.end.33
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %29 = load i32, i32* %arrayidx39, align 4
  %30 = load i32, i32* %other, align 4
  %31 = load i32, i32* %astr.addr, align 4
  %call40 = call i32 @trymove(i32 %29, i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 %31, i32 0, i32 0)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.38
  %32 = load i32, i32* %astr.addr, align 4
  %33 = load i32, i32* %bstr.addr, align 4
  %call43 = call i32 @defend_both(i32 %32, i32 %33)
  store i32 %call43, i32* %defended0, align 4
  call void @popgo()
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.38
  %34 = load i32, i32* %defended0, align 4
  %tobool45 = icmp ne i32 %34, 0
  br i1 %tobool45, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.end.44
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %35 = load i32, i32* %arrayidx46, align 4
  %36 = load i32, i32* %other, align 4
  %37 = load i32, i32* %astr.addr, align 4
  %call47 = call i32 @trymove(i32 %35, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %37, i32 0, i32 0)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %astr.addr, align 4
  %39 = load i32, i32* %bstr.addr, align 4
  %call50 = call i32 @defend_both(i32 %38, i32 %39)
  store i32 %call50, i32* %defended1, align 4
  call void @popgo()
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true, %if.end.44
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.33
  %40 = load i32, i32* %defended0, align 4
  %41 = load i32, i32* %defended1, align 4
  %cmp53 = icmp slt i32 %40, %41
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %if.end.52
  %42 = load i32, i32* %defended0, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %if.end.52
  %43 = load i32, i32* %defended1, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ %42, %cond.true.55 ], [ %43, %cond.false.56 ]
  %sub59 = sub nsw i32 5, %cond58
  store i32 %sub59, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.57, %cond.end, %if.then.25
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @findlib(i32, i32, i32*) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @defend_both(i32 %astr, i32 %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %astr.addr = alloca i32, align 4
  %bstr.addr = alloca i32, align 4
  %a_threatened = alloca i32, align 4
  %b_threatened = alloca i32, align 4
  %a_savepos = alloca i32, align 4
  %b_savepos = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %color = alloca i32, align 4
  %adjs1 = alloca [160 x i32], align 16
  %neighbors1 = alloca i32, align 4
  %adjs2 = alloca [160 x i32], align 16
  %neighbors2 = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  store i32 %astr, i32* %astr.addr, align 4
  store i32 %bstr, i32* %bstr.addr, align 4
  store i32 0, i32* %a_threatened, align 4
  store i32 0, i32* %b_threatened, align 4
  store i32 0, i32* %acode, align 4
  store i32 0, i32* %dcode, align 4
  %0 = load i32, i32* %astr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %color, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %astr.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %astr.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 490, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %color, align 4
  %7 = load i32, i32* %bstr.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %9 = load i32, i32* %bstr.addr, align 4
  %div12 = sdiv i32 %9, 20
  %sub13 = sub nsw i32 %div12, 1
  %10 = load i32, i32* %bstr.addr, align 4
  %rem14 = srem i32 %10, 20
  %sub15 = sub nsw i32 %rem14, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 491, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %sub13, i32 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  %11 = load i32, i32* %astr.addr, align 4
  %call = call i32 @attack_and_defend(i32 %11, i32* %acode, i32* null, i32* %dcode, i32* %a_savepos)
  %12 = load i32, i32* %acode, align 4
  %cmp17 = icmp ne i32 %12, 0
  br i1 %cmp17, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %if.end.16
  store i32 1, i32* %a_threatened, align 4
  %13 = load i32, i32* %dcode, align 4
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.16
  %14 = load i32, i32* %bstr.addr, align 4
  %call25 = call i32 @attack_and_defend(i32 %14, i32* %acode, i32* null, i32* %dcode, i32* %b_savepos)
  %15 = load i32, i32* %acode, align 4
  %cmp26 = icmp ne i32 %15, 0
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.24
  store i32 1, i32* %b_threatened, align 4
  %16 = load i32, i32* %dcode, align 4
  %cmp29 = icmp eq i32 %16, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.24
  %17 = load i32, i32* %a_threatened, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %lor.lhs.false.34, label %if.then.36

lor.lhs.false.34:                                 ; preds = %if.end.33
  %18 = load i32, i32* %b_threatened, align 4
  %tobool35 = icmp ne i32 %18, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %lor.lhs.false.34, %if.end.33
  store i32 5, i32* %retval
  br label %return

if.end.37:                                        ; preds = %lor.lhs.false.34
  %19 = load i32, i32* %a_savepos, align 4
  %20 = load i32, i32* %b_savepos, align 4
  %cmp38 = icmp eq i32 %19, %20
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 5, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  %21 = load i32, i32* %a_savepos, align 4
  %22 = load i32, i32* %color, align 4
  %23 = load i32, i32* %astr.addr, align 4
  %call42 = call i32 @trymove(i32 %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %23, i32 0, i32 0)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.53

if.then.44:                                       ; preds = %if.end.41
  %24 = load i32, i32* %bstr.addr, align 4
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %25 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %25 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.then.44
  %26 = load i32, i32* %bstr.addr, align 4
  %call49 = call i32 @attack(i32 %26, i32* null)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %land.lhs.true
  call void @popgo()
  store i32 5, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true, %if.then.44
  call void @popgo()
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.41
  %27 = load i32, i32* %b_savepos, align 4
  %28 = load i32, i32* %color, align 4
  %29 = load i32, i32* %bstr.addr, align 4
  %call54 = call i32 @trymove(i32 %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %29, i32 0, i32 0)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.end.53
  %30 = load i32, i32* %astr.addr, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %31 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %31 to i32
  %tobool60 = icmp ne i32 %conv59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.then.56
  %32 = load i32, i32* %astr.addr, align 4
  %call62 = call i32 @attack(i32 %32, i32* null)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.61
  call void @popgo()
  store i32 5, i32* %retval
  br label %return

if.end.65:                                        ; preds = %land.lhs.true.61, %if.then.56
  call void @popgo()
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.53
  %33 = load i32, i32* %astr.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs1, i32 0, i32 0
  %call67 = call i32 @chainlinks(i32 %33, i32* %arraydecay)
  store i32 %call67, i32* %neighbors1, align 4
  %34 = load i32, i32* %bstr.addr, align 4
  %arraydecay68 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i32 0
  %call69 = call i32 @chainlinks(i32 %34, i32* %arraydecay68)
  store i32 %call69, i32* %neighbors2, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.126, %if.end.66
  %35 = load i32, i32* %r, align 4
  %36 = load i32, i32* %neighbors1, align 4
  %cmp70 = icmp slt i32 %35, %36
  br i1 %cmp70, label %for.body, label %for.end.128

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %r, align 4
  %idxprom72 = sext i32 %37 to i64
  %arrayidx73 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs1, i32 0, i64 %idxprom72
  %38 = load i32, i32* %arrayidx73, align 4
  store i32 %38, i32* %epos, align 4
  %39 = load i32, i32* %epos, align 4
  %call74 = call i32 @countlib(i32 %39)
  %cmp75 = icmp sle i32 %call74, 4
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.125

land.lhs.true.77:                                 ; preds = %for.body
  %40 = load i32, i32* %epos, align 4
  %41 = load i32, i32* %a_savepos, align 4
  %cmp78 = icmp ne i32 %40, %41
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.125

land.lhs.true.80:                                 ; preds = %land.lhs.true.77
  %42 = load i32, i32* %epos, align 4
  %43 = load i32, i32* %b_savepos, align 4
  %cmp81 = icmp ne i32 %42, %43
  br i1 %cmp81, label %if.then.83, label %if.end.125

if.then.83:                                       ; preds = %land.lhs.true.80
  store i32 0, i32* %s, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc, %if.then.83
  %44 = load i32, i32* %s, align 4
  %45 = load i32, i32* %neighbors2, align 4
  %cmp85 = icmp slt i32 %44, %45
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.84
  %46 = load i32, i32* %s, align 4
  %idxprom88 = sext i32 %46 to i64
  %arrayidx89 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i64 %idxprom88
  %47 = load i32, i32* %arrayidx89, align 4
  %48 = load i32, i32* %r, align 4
  %idxprom90 = sext i32 %48 to i64
  %arrayidx91 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs1, i32 0, i64 %idxprom90
  %49 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp eq i32 %47, %49
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %for.body.87
  br label %for.end

if.end.95:                                        ; preds = %for.body.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.95
  %50 = load i32, i32* %s, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.84

for.end:                                          ; preds = %if.then.94, %for.cond.84
  %51 = load i32, i32* %s, align 4
  %52 = load i32, i32* %neighbors2, align 4
  %cmp96 = icmp eq i32 %51, %52
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.end
  br label %for.inc.126

if.end.99:                                        ; preds = %for.end
  %53 = load i32, i32* %epos, align 4
  %call100 = call i32 @attack(i32 %53, i32* %fpos)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.124

if.then.102:                                      ; preds = %if.end.99
  %54 = load i32, i32* %fpos, align 4
  %55 = load i32, i32* %color, align 4
  %56 = load i32, i32* %astr.addr, align 4
  %call103 = call i32 @trymove(i32 %54, i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %56, i32 0, i32 0)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.123

if.then.105:                                      ; preds = %if.then.102
  %57 = load i32, i32* %astr.addr, align 4
  %idxprom106 = sext i32 %57 to i64
  %arrayidx107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom106
  %58 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %58 to i32
  %tobool109 = icmp ne i32 %conv108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.122

land.lhs.true.110:                                ; preds = %if.then.105
  %59 = load i32, i32* %bstr.addr, align 4
  %idxprom111 = sext i32 %59 to i64
  %arrayidx112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom111
  %60 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %60 to i32
  %tobool114 = icmp ne i32 %conv113, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.end.122

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %61 = load i32, i32* %astr.addr, align 4
  %call116 = call i32 @attack(i32 %61, i32* null)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end.122, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %land.lhs.true.115
  %62 = load i32, i32* %bstr.addr, align 4
  %call119 = call i32 @attack(i32 %62, i32* null)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %land.lhs.true.118
  call void @popgo()
  store i32 5, i32* %retval
  br label %return

if.end.122:                                       ; preds = %land.lhs.true.118, %land.lhs.true.115, %land.lhs.true.110, %if.then.105
  call void @popgo()
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.102
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.99
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %land.lhs.true.80, %land.lhs.true.77, %for.body
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125, %if.then.98
  %63 = load i32, i32* %r, align 4
  %inc127 = add nsw i32 %63, 1
  store i32 %inc127, i32* %r, align 4
  br label %for.cond

for.end.128:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.128, %if.then.121, %if.then.64, %if.then.51, %if.then.40, %if.then.36, %if.then.31, %if.then.22
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare void @popgo() #1

declare i32 @chainlinks(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @break_through(i32 %apos, i32 %bpos, i32 %cpos) #0 {
entry:
  %retval = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %Fpos = alloca i32, align 4
  %gpos = alloca i32, align 4
  %success = alloca i32, align 4
  %success2 = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %success, align 4
  store i32 0, i32* %success2, align 4
  %3 = load i32, i32* %color, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %color, align 4
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %apos.addr, align 4
  %div = sdiv i32 %5, 20
  %sub4 = sub nsw i32 %div, 1
  %6 = load i32, i32* %apos.addr, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 634, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 %sub4, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %color, align 4
  %8 = load i32, i32* %bpos.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom6
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 %7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end
  br label %if.end.17

if.else.12:                                       ; preds = %if.end
  %10 = load i32, i32* %bpos.addr, align 4
  %div13 = sdiv i32 %10, 20
  %sub14 = sub nsw i32 %div13, 1
  %11 = load i32, i32* %bpos.addr, align 4
  %rem15 = srem i32 %11, 20
  %sub16 = sub nsw i32 %rem15, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 635, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %sub14, i32 %sub16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.12, %if.then.11
  %12 = load i32, i32* %color, align 4
  %13 = load i32, i32* %cpos.addr, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %14 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %cmp21 = icmp eq i32 %12, %conv20
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.end.17
  br label %if.end.29

if.else.24:                                       ; preds = %if.end.17
  %15 = load i32, i32* %cpos.addr, align 4
  %div25 = sdiv i32 %15, 20
  %sub26 = sub nsw i32 %div25, 1
  %16 = load i32, i32* %cpos.addr, align 4
  %rem27 = srem i32 %16, 20
  %sub28 = sub nsw i32 %rem27, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 636, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 %sub26, i32 %sub28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.24, %if.then.23
  %17 = load i32, i32* %apos.addr, align 4
  %18 = load i32, i32* %cpos.addr, align 4
  %add = add nsw i32 %17, %18
  %div30 = sdiv i32 %add, 2
  store i32 %div30, i32* %Fpos, align 4
  %19 = load i32, i32* %apos.addr, align 4
  %20 = load i32, i32* %bpos.addr, align 4
  %add31 = add nsw i32 %19, %20
  %21 = load i32, i32* %Fpos, align 4
  %sub32 = sub nsw i32 %add31, %21
  store i32 %sub32, i32* %dpos, align 4
  %22 = load i32, i32* %bpos.addr, align 4
  %23 = load i32, i32* %cpos.addr, align 4
  %add33 = add nsw i32 %22, %23
  %24 = load i32, i32* %Fpos, align 4
  %sub34 = sub nsw i32 %add33, %24
  store i32 %sub34, i32* %epos, align 4
  %25 = load i32, i32* %dpos, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %26 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %26 to i32
  %cmp38 = icmp eq i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.end.29
  br label %if.end.46

if.else.41:                                       ; preds = %if.end.29
  %27 = load i32, i32* %dpos, align 4
  %div42 = sdiv i32 %27, 20
  %sub43 = sub nsw i32 %div42, 1
  %28 = load i32, i32* %dpos, align 4
  %rem44 = srem i32 %28, 20
  %sub45 = sub nsw i32 %rem44, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 644, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0), i32 %sub43, i32 %sub45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.41, %if.then.40
  %29 = load i32, i32* %epos, align 4
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %30 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.end.46
  br label %if.end.58

if.else.53:                                       ; preds = %if.end.46
  %31 = load i32, i32* %epos, align 4
  %div54 = sdiv i32 %31, 20
  %sub55 = sub nsw i32 %div54, 1
  %32 = load i32, i32* %epos, align 4
  %rem56 = srem i32 %32, 20
  %sub57 = sub nsw i32 %rem56, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 645, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i32 0, i32 0), i32 %sub55, i32 %sub57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.53, %if.then.52
  %33 = load i32, i32* %Fpos, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %34 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %34 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.58
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.58
  %35 = load i32, i32* %Fpos, align 4
  %idxprom66 = sext i32 %35 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %36 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %36 to i32
  %37 = load i32, i32* %other, align 4
  %cmp69 = icmp eq i32 %conv68, %37
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.end.65
  br label %if.end.77

if.else.72:                                       ; preds = %if.end.65
  %38 = load i32, i32* %Fpos, align 4
  %div73 = sdiv i32 %38, 20
  %sub74 = sub nsw i32 %div73, 1
  %39 = load i32, i32* %Fpos, align 4
  %rem75 = srem i32 %39, 20
  %sub76 = sub nsw i32 %rem75, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 653, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 %sub74, i32 %sub76)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.71
  %40 = load i32, i32* %apos.addr, align 4
  %41 = load i32, i32* %bpos.addr, align 4
  %42 = load i32, i32* %cpos.addr, align 4
  %43 = load i32, i32* %dpos, align 4
  %44 = load i32, i32* %epos, align 4
  %45 = load i32, i32* %Fpos, align 4
  %46 = load i32, i32* %color, align 4
  %47 = load i32, i32* %other, align 4
  %call = call i32 @break_through_helper(i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %call, i32* %success, align 4
  %48 = load i32, i32* %success, align 4
  %cmp78 = icmp eq i32 %48, 5
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.77
  store i32 5, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.77
  %49 = load i32, i32* %cpos.addr, align 4
  %50 = load i32, i32* %bpos.addr, align 4
  %51 = load i32, i32* %apos.addr, align 4
  %52 = load i32, i32* %epos, align 4
  %53 = load i32, i32* %dpos, align 4
  %54 = load i32, i32* %Fpos, align 4
  %55 = load i32, i32* %color, align 4
  %56 = load i32, i32* %other, align 4
  %call82 = call i32 @break_through_helper(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %call82, i32* %success2, align 4
  %57 = load i32, i32* %success2, align 4
  %cmp83 = icmp eq i32 %57, 5
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  store i32 5, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.81
  %58 = load i32, i32* %success2, align 4
  %cmp87 = icmp eq i32 %58, 2
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store i32 2, i32* %success, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.86
  store i32 0, i32* %success2, align 4
  %59 = load i32, i32* %Fpos, align 4
  %call91 = call i32 @attack_and_defend(i32 %59, i32* null, i32* null, i32* null, i32* %gpos)
  %tobool = icmp ne i32 %call91, 0
  br i1 %tobool, label %if.then.92, label %if.end.133

if.then.92:                                       ; preds = %if.end.90
  %60 = load i32, i32* %gpos, align 4
  %61 = load i32, i32* %other, align 4
  %62 = load i32, i32* %Fpos, align 4
  %call93 = call i32 @trymove(i32 %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 %62, i32 0, i32 0)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.132

if.then.95:                                       ; preds = %if.then.92
  %63 = load i32, i32* %dpos, align 4
  %64 = load i32, i32* %color, align 4
  %65 = load i32, i32* %Fpos, align 4
  %call96 = call i32 @trymove(i32 %63, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 %65, i32 0, i32 0)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.111

if.then.98:                                       ; preds = %if.then.95
  %66 = load i32, i32* %epos, align 4
  %67 = load i32, i32* %other, align 4
  %call99 = call i32 @safe_move(i32 %66, i32 %67)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %if.then.98
  store i32 2, i32* %success2, align 4
  %68 = load i32, i32* %cpos.addr, align 4
  %idxprom102 = sext i32 %68 to i64
  %arrayidx103 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom102
  %69 = load i8, i8* %arrayidx103, align 1
  %tobool104 = icmp ne i8 %69, 0
  br i1 %tobool104, label %lor.lhs.false.105, label %if.then.108

lor.lhs.false.105:                                ; preds = %if.then.101
  %70 = load i32, i32* %cpos.addr, align 4
  %call106 = call i32 @attack(i32 %70, i32* null)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %lor.lhs.false.105, %if.then.101
  store i32 5, i32* %success2, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %lor.lhs.false.105
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.98
  call void @popgo()
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.95
  %71 = load i32, i32* %success2, align 4
  %cmp112 = icmp sgt i32 %71, 0
  br i1 %cmp112, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %if.end.111
  %72 = load i32, i32* %epos, align 4
  %73 = load i32, i32* %color, align 4
  %74 = load i32, i32* %Fpos, align 4
  %call114 = call i32 @trymove(i32 %72, i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i32 0, i32 0), i32 %74, i32 0, i32 0)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.131

if.then.116:                                      ; preds = %land.lhs.true
  %75 = load i32, i32* %dpos, align 4
  %76 = load i32, i32* %other, align 4
  %call117 = call i32 @safe_move(i32 %75, i32 %76)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.else.129

if.then.119:                                      ; preds = %if.then.116
  %77 = load i32, i32* %apos.addr, align 4
  %idxprom120 = sext i32 %77 to i64
  %arrayidx121 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom120
  %78 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %78 to i32
  %tobool123 = icmp ne i32 %conv122, 0
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %if.then.119
  %79 = load i32, i32* %apos.addr, align 4
  %call125 = call i32 @attack(i32 %79, i32* null)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.124
  store i32 2, i32* %success2, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.124, %if.then.119
  br label %if.end.130

if.else.129:                                      ; preds = %if.then.116
  store i32 0, i32* %success2, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.end.128
  call void @popgo()
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true, %if.end.111
  call void @popgo()
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.92
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.90
  %80 = load i32, i32* %success2, align 4
  %cmp134 = icmp sgt i32 %80, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.133
  %81 = load i32, i32* %success2, align 4
  store i32 %81, i32* %retval
  br label %return

if.end.137:                                       ; preds = %if.end.133
  %82 = load i32, i32* %success, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %if.end.137, %if.then.136, %if.then.85, %if.then.80, %if.then.64
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @break_through_helper(i32 %apos, i32 %bpos, i32 %cpos, i32 %dpos, i32 %epos, i32 %Fpos, i32 %color, i32 %other) #0 {
entry:
  %retval = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %dpos.addr = alloca i32, align 4
  %epos.addr = alloca i32, align 4
  %Fpos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %other.addr = alloca i32, align 4
  %success = alloca i32, align 4
  %gpos = alloca i32, align 4
  %attack_on_b = alloca i32, align 4
  %attack_on_a = alloca i32, align 4
  %hpos = alloca i32, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  store i32 %dpos, i32* %dpos.addr, align 4
  store i32 %epos, i32* %epos.addr, align 4
  store i32 %Fpos, i32* %Fpos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %other, i32* %other.addr, align 4
  store i32 0, i32* %success, align 4
  %0 = load i32, i32* %dpos.addr, align 4
  %1 = load i32, i32* %other.addr, align 4
  %2 = load i32, i32* %Fpos.addr, align 4
  %call = call i32 @trymove(i32 %0, i32 %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i32 0, i32 0), i32 %2, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.109

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %Fpos.addr, align 4
  %call1 = call i32 @attack(i32 %3, i32* null)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.108, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %4 = load i32, i32* %dpos.addr, align 4
  %call4 = call i32 @attack(i32 %4, i32* %gpos)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  store i32 2, i32* %success, align 4
  br label %if.end.42

if.else:                                          ; preds = %if.then.3
  %5 = load i32, i32* %epos.addr, align 4
  %6 = load i32, i32* %color.addr, align 4
  %7 = load i32, i32* %Fpos.addr, align 4
  %call7 = call i32 @trymove(i32 %5, i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i32 0, i32 0), i32 %7, i32 0, i32 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.else
  %8 = load i32, i32* %dpos.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %tobool10 = icmp ne i8 %9, 0
  br i1 %tobool10, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %if.then.9
  %10 = load i32, i32* %dpos.addr, align 4
  %call11 = call i32 @find_defense(i32 %10, i32* null)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %lor.lhs.false, %if.then.9
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @popgo()
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.else
  %11 = load i32, i32* %gpos, align 4
  %12 = load i32, i32* %epos.addr, align 4
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.14
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.14
  %13 = load i32, i32* %gpos, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %Fpos.addr, align 4
  %call17 = call i32 @trymove(i32 %13, i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i32 %15, i32 0, i32 0)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.41

if.then.19:                                       ; preds = %if.end.16
  %16 = load i32, i32* %epos.addr, align 4
  %17 = load i32, i32* %other.addr, align 4
  %18 = load i32, i32* %Fpos.addr, align 4
  %call20 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i32 %18, i32 0, i32 0)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.40

if.then.22:                                       ; preds = %if.then.19
  %19 = load i32, i32* %epos.addr, align 4
  %call23 = call i32 @attack(i32 %19, i32* null)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else.38, label %if.then.25

if.then.25:                                       ; preds = %if.then.22
  store i32 2, i32* %success, align 4
  %20 = load i32, i32* %bpos.addr, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %conv = zext i8 %21 to i32
  %tobool28 = icmp ne i32 %conv, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.then.25
  %22 = load i32, i32* %cpos.addr, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %23 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %23 to i32
  %tobool32 = icmp ne i32 %conv31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %bpos.addr, align 4
  %25 = load i32, i32* %cpos.addr, align 4
  %call34 = call i32 @defend_both(i32 %24, i32 %25)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  call void @popgo()
  call void @popgo()
  call void @popgo()
  store i32 2, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.33, %land.lhs.true, %if.then.25
  br label %if.end.39

if.else.38:                                       ; preds = %if.then.22
  call void @popgo()
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.37
  call void @popgo()
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.19
  call void @popgo()
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.16
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.6
  %26 = load i32, i32* %apos.addr, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom43
  %27 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %27, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %if.then.53

lor.lhs.false.46:                                 ; preds = %if.end.42
  %28 = load i32, i32* %bpos.addr, align 4
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %29 = load i8, i8* %arrayidx48, align 1
  %tobool49 = icmp ne i8 %29, 0
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.53

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %30 = load i32, i32* %apos.addr, align 4
  %31 = load i32, i32* %bpos.addr, align 4
  %call51 = call i32 @defend_both(i32 %30, i32 %31)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.else.54, label %if.then.53

if.then.53:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.46, %if.end.42
  store i32 5, i32* %success, align 4
  br label %if.end.107

if.else.54:                                       ; preds = %lor.lhs.false.50
  store i32 0, i32* %attack_on_b, align 4
  store i32 0, i32* %attack_on_a, align 4
  %32 = load i32, i32* %epos.addr, align 4
  %33 = load i32, i32* %color.addr, align 4
  %34 = load i32, i32* %Fpos.addr, align 4
  %call55 = call i32 @trymove(i32 %32, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i32 %34, i32 0, i32 0)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.67

if.then.57:                                       ; preds = %if.else.54
  %35 = load i32, i32* %bpos.addr, align 4
  %call58 = call i32 @attack(i32 %35, i32* null)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.then.57
  store i32 1, i32* %attack_on_b, align 4
  br label %if.end.66

if.else.61:                                       ; preds = %if.then.57
  %36 = load i32, i32* %apos.addr, align 4
  %call62 = call i32 @attack(i32 %36, i32* null)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.61
  store i32 1, i32* %attack_on_a, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.else.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.60
  call void @popgo()
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.else.54
  %37 = load i32, i32* %attack_on_a, align 4
  %tobool68 = icmp ne i32 %37, 0
  br i1 %tobool68, label %if.then.71, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %if.end.67
  %38 = load i32, i32* %attack_on_b, align 4
  %tobool70 = icmp ne i32 %38, 0
  br i1 %tobool70, label %if.then.71, label %if.end.106

if.then.71:                                       ; preds = %lor.lhs.false.69, %if.end.67
  store i32 0, i32* %hpos, align 4
  %39 = load i32, i32* %attack_on_a, align 4
  %tobool72 = icmp ne i32 %39, 0
  br i1 %tobool72, label %land.lhs.true.73, label %lor.lhs.false.76

land.lhs.true.73:                                 ; preds = %if.then.71
  %40 = load i32, i32* %apos.addr, align 4
  %call74 = call i32 @find_defense(i32 %40, i32* %hpos)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.lhs.true.81, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.73, %if.then.71
  %41 = load i32, i32* %attack_on_b, align 4
  %tobool77 = icmp ne i32 %41, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.else.104

land.lhs.true.78:                                 ; preds = %lor.lhs.false.76
  %42 = load i32, i32* %bpos.addr, align 4
  %call79 = call i32 @find_defense(i32 %42, i32* %hpos)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.else.104

land.lhs.true.81:                                 ; preds = %land.lhs.true.78, %land.lhs.true.73
  %43 = load i32, i32* %hpos, align 4
  %cmp82 = icmp ne i32 %43, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.104

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %44 = load i32, i32* %hpos, align 4
  %45 = load i32, i32* %color.addr, align 4
  %46 = load i32, i32* %Fpos.addr, align 4
  %call85 = call i32 @trymove(i32 %44, i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0), i32 %46, i32 0, i32 0)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.104

if.then.87:                                       ; preds = %land.lhs.true.84
  %47 = load i32, i32* %epos.addr, align 4
  %48 = load i32, i32* %other.addr, align 4
  %49 = load i32, i32* %Fpos.addr, align 4
  %call88 = call i32 @trymove(i32 %47, i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i32 %49, i32 0, i32 0)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.103

if.then.90:                                       ; preds = %if.then.87
  %50 = load i32, i32* %bpos.addr, align 4
  %idxprom91 = sext i32 %50 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %51 = load i8, i8* %arrayidx92, align 1
  %tobool93 = icmp ne i8 %51, 0
  br i1 %tobool93, label %lor.lhs.false.94, label %if.then.101

lor.lhs.false.94:                                 ; preds = %if.then.90
  %52 = load i32, i32* %cpos.addr, align 4
  %idxprom95 = sext i32 %52 to i64
  %arrayidx96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom95
  %53 = load i8, i8* %arrayidx96, align 1
  %tobool97 = icmp ne i8 %53, 0
  br i1 %tobool97, label %lor.lhs.false.98, label %if.then.101

lor.lhs.false.98:                                 ; preds = %lor.lhs.false.94
  %54 = load i32, i32* %bpos.addr, align 4
  %55 = load i32, i32* %cpos.addr, align 4
  %call99 = call i32 @defend_both(i32 %54, i32 %55)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %lor.lhs.false.98, %lor.lhs.false.94, %if.then.90
  store i32 5, i32* %success, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %lor.lhs.false.98
  call void @popgo()
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.87
  call void @popgo()
  br label %if.end.105

if.else.104:                                      ; preds = %land.lhs.true.84, %land.lhs.true.81, %land.lhs.true.78, %lor.lhs.false.76
  store i32 5, i32* %success, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.104, %if.end.103
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %lor.lhs.false.69
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.53
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then
  call void @popgo()
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %entry
  %56 = load i32, i32* %success, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.109, %if.else.38, %if.then.36, %if.then.15, %if.then.13
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i32 @safe_move(i32 %move, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %safe = alloca i32, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 0, i32* %safe, align 4
  %0 = load i32, i32* @safe_move.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @clear_safe_move_cache()
  store i32 1, i32* @safe_move.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %color.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  %conv = zext i1 %cmp1 to i32
  %idxprom = sext i32 %conv to i64
  %3 = load i32, i32* %move.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx3, align 4
  %5 = load i32, i32* @position_number, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %6, 2
  %conv8 = zext i1 %cmp7 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %7 = load i32, i32* %move.addr, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache, i32 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx12, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %move.addr, align 4
  %10 = load i32, i32* %color.addr, align 4
  %call = call i32 @trymove(i32 %9, i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %11 = load i32, i32* %move.addr, align 4
  %call16 = call i32 @attack(i32 %11, i32* null)
  %sub = sub nsw i32 5, %call16
  store i32 %sub, i32* %safe, align 4
  call void @popgo()
  br label %if.end.30

if.else:                                          ; preds = %if.end.13
  %12 = load i32, i32* %move.addr, align 4
  %13 = load i32, i32* %color.addr, align 4
  %call17 = call i32 @is_ko(i32 %12, i32 %13, i32* null)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.29

land.lhs.true.19:                                 ; preds = %if.else
  %14 = load i32, i32* %move.addr, align 4
  %15 = load i32, i32* %color.addr, align 4
  %call20 = call i32 @tryko(i32 %14, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 0)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %land.lhs.true.19
  %16 = load i32, i32* %move.addr, align 4
  %17 = load i32, i32* %color.addr, align 4
  %18 = load i32, i32* %move.addr, align 4
  %call23 = call i32 @do_attack(i32 %16, i32* null, i32 %17, i32 %18)
  %cmp24 = icmp ne i32 %call23, 5
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.then.22
  store i32 1, i32* %safe, align 4
  br label %if.end.28

if.else.27:                                       ; preds = %if.then.22
  store i32 0, i32* %safe, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.26
  call void @popgo()
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %land.lhs.true.19, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.15
  %19 = load i32, i32* @stackp, align 4
  %cmp31 = icmp eq i32 %19, 0
  br i1 %cmp31, label %if.then.33, label %if.end.46

if.then.33:                                       ; preds = %if.end.30
  %20 = load i32, i32* @position_number, align 4
  %21 = load i32, i32* %color.addr, align 4
  %cmp34 = icmp eq i32 %21, 2
  %conv35 = zext i1 %cmp34 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %22 = load i32, i32* %move.addr, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx38, i32 0, i64 %idxprom36
  store i32 %20, i32* %arrayidx39, align 4
  %23 = load i32, i32* %safe, align 4
  %24 = load i32, i32* %color.addr, align 4
  %cmp40 = icmp eq i32 %24, 2
  %conv41 = zext i1 %cmp40 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %25 = load i32, i32* %move.addr, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx44, i32 0, i64 %idxprom42
  store i32 %23, i32* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.33, %if.end.30
  %26 = load i32, i32* %safe, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.6
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @attack_threats(i32 %str, i32 %max_points, i32* %moves, i32* %codes) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %max_points.addr = alloca i32, align 4
  %moves.addr = alloca i32*, align 8
  %codes.addr = alloca i32*, align 8
  %other = alloca i32, align 4
  %num_threats = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %num_adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %aa = alloca i32, align 4
  %acode = alloca i32, align 4
  %bb = alloca i32, align 4
  %acode67 = alloca i32, align 4
  %bb84 = alloca i32, align 4
  %dd = alloca i32, align 4
  %acode85 = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %max_points, i32* %max_points.addr, align 4
  store i32* %moves, i32** %moves.addr, align 8
  store i32* %codes, i32** %codes.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 871, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %7 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %sub11 = sub nsw i32 3, %conv10
  store i32 %sub11, i32* %other, align 4
  %8 = load i32, i32* %str.addr, align 4
  %call = call i32 @attack(i32 %8, i32* null)
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %9 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call16 = call i32 @findlib(i32 %9, i32 241, i32* %arraydecay)
  store i32 %call16, i32* %liberties, align 4
  %10 = load i32, i32* %liberties, align 4
  %cmp17 = icmp sgt i32 %10, 1
  br i1 %cmp17, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %if.end.15
  %11 = load i32, i32* %liberties, align 4
  %cmp19 = icmp slt i32 %11, 6
  br i1 %cmp19, label %if.then.21, label %if.end.77

if.then.21:                                       ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.then.21
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %liberties, align 4
  %cmp22 = icmp slt i32 %12, %13
  br i1 %cmp22, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom24
  %15 = load i32, i32* %arrayidx25, align 4
  store i32 %15, i32* %aa, align 4
  %16 = load i32, i32* %aa, align 4
  %17 = load i32, i32* %other, align 4
  %18 = load i32, i32* %str.addr, align 4
  %call26 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 %18, i32 0, i32 0)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %for.body
  %19 = load i32, i32* %str.addr, align 4
  %call28 = call i32 @attack(i32 %19, i32* null)
  store i32 %call28, i32* %acode, align 4
  %20 = load i32, i32* %acode, align 4
  %cmp29 = icmp ne i32 %20, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %21 = load i32, i32* %aa, align 4
  %22 = load i32, i32* %acode, align 4
  %23 = load i32, i32* %max_points.addr, align 4
  %24 = load i32*, i32** %moves.addr, align 8
  %25 = load i32*, i32** %codes.addr, align 8
  call void @movelist_change_point(i32 %21, i32 %22, i32 %23, i32* %24, i32* %25)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.27
  call void @popgo()
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body
  store i32 0, i32* %l, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc, %if.end.33
  %26 = load i32, i32* %l, align 4
  %cmp35 = icmp slt i32 %26, 4
  br i1 %cmp35, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.34
  %27 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom38
  %28 = load i32, i32* %arrayidx39, align 4
  %29 = load i32, i32* %l, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom40
  %30 = load i32, i32* %arrayidx41, align 4
  %add = add nsw i32 %28, %30
  store i32 %add, i32* %bb, align 4
  %31 = load i32, i32* %bb, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %32 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %32 to i32
  %cmp45 = icmp ne i32 %conv44, 3
  br i1 %cmp45, label %lor.lhs.false.47, label %if.then.62

lor.lhs.false.47:                                 ; preds = %for.body.37
  %33 = load i32, i32* %bb, align 4
  %idxprom48 = sext i32 %33 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %34 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %34 to i32
  %cmp51 = icmp eq i32 %conv50, 1
  br i1 %cmp51, label %if.then.62, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.47
  %35 = load i32, i32* %bb, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %36 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %36 to i32
  %cmp57 = icmp eq i32 %conv56, 2
  br i1 %cmp57, label %if.then.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.53
  %37 = load i32, i32* %bb, align 4
  %38 = load i32, i32* %str.addr, align 4
  %call60 = call i32 @liberty_of_string(i32 %37, i32 %38)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false.59, %lor.lhs.false.53, %lor.lhs.false.47, %for.body.37
  br label %for.inc

if.end.63:                                        ; preds = %lor.lhs.false.59
  %39 = load i32, i32* %bb, align 4
  %40 = load i32, i32* %other, align 4
  %41 = load i32, i32* %str.addr, align 4
  %call64 = call i32 @trymove(i32 %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i32 %41, i32 0, i32 0)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %if.end.63
  %42 = load i32, i32* %str.addr, align 4
  %call68 = call i32 @attack(i32 %42, i32* null)
  store i32 %call68, i32* %acode67, align 4
  %43 = load i32, i32* %acode67, align 4
  %cmp69 = icmp ne i32 %43, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.66
  %44 = load i32, i32* %bb, align 4
  %45 = load i32, i32* %acode67, align 4
  %46 = load i32, i32* %max_points.addr, align 4
  %47 = load i32*, i32** %moves.addr, align 8
  %48 = load i32*, i32** %codes.addr, align 8
  call void @movelist_change_point(i32 %44, i32 %45, i32 %46, i32* %47, i32* %48)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.66
  call void @popgo()
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.73, %if.then.62
  %49 = load i32, i32* %l, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.34

for.end:                                          ; preds = %for.cond.34
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %50 = load i32, i32* %k, align 4
  %inc75 = add nsw i32 %50, 1
  store i32 %inc75, i32* %k, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %land.lhs.true, %if.end.15
  %51 = load i32, i32* %str.addr, align 4
  %arraydecay78 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call79 = call i32 @chainlinks(i32 %51, i32* %arraydecay78)
  store i32 %call79, i32* %num_adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.150, %if.end.77
  %52 = load i32, i32* %k, align 4
  %53 = load i32, i32* %num_adj, align 4
  %cmp81 = icmp slt i32 %52, %53
  br i1 %cmp81, label %for.body.83, label %for.end.152

for.body.83:                                      ; preds = %for.cond.80
  %54 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom86
  %55 = load i32, i32* %arrayidx87, align 4
  %call88 = call i32 @attack_and_defend(i32 %55, i32* %acode85, i32* null, i32* %dcode, i32* %dd)
  %56 = load i32, i32* %acode85, align 4
  %cmp89 = icmp eq i32 %56, 0
  br i1 %cmp89, label %if.then.94, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %for.body.83
  %57 = load i32, i32* %dcode, align 4
  %cmp92 = icmp eq i32 %57, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.91, %for.body.83
  br label %for.inc.150

if.end.95:                                        ; preds = %lor.lhs.false.91
  store i32 -1, i32* %r, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.147, %if.end.95
  %58 = load i32, i32* %r, align 4
  %59 = load i32, i32* %max_points.addr, align 4
  %cmp97 = icmp slt i32 %58, %59
  br i1 %cmp97, label %for.body.99, label %for.end.149

for.body.99:                                      ; preds = %for.cond.96
  %60 = load i32, i32* @stackp, align 4
  %cmp100 = icmp eq i32 %60, 0
  br i1 %cmp100, label %if.then.102, label %if.else.123

if.then.102:                                      ; preds = %for.body.99
  %61 = load i32, i32* %r, align 4
  %cmp103 = icmp eq i32 %61, -1
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.102
  br label %for.inc.147

if.end.106:                                       ; preds = %if.then.102
  %62 = load i32, i32* %r, align 4
  %idxprom107 = sext i32 %62 to i64
  %63 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %63 to i64
  %arrayidx109 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom108
  %64 = load i32, i32* %arrayidx109, align 4
  %idxprom110 = sext i32 %64 to i64
  %arrayidx111 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom110
  %defense_codes = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx111, i32 0, i32 18
  %arrayidx112 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_codes, i32 0, i64 %idxprom107
  %65 = load i32, i32* %arrayidx112, align 4
  %cmp113 = icmp eq i32 %65, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.106
  br label %for.end.149

if.end.116:                                       ; preds = %if.end.106
  %66 = load i32, i32* %r, align 4
  %idxprom117 = sext i32 %66 to i64
  %67 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %67 to i64
  %arrayidx119 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom118
  %68 = load i32, i32* %arrayidx119, align 4
  %idxprom120 = sext i32 %68 to i64
  %arrayidx121 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom120
  %defense_points = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx121, i32 0, i32 17
  %arrayidx122 = getelementptr inbounds [10 x i32], [10 x i32]* %defense_points, i32 0, i64 %idxprom117
  %69 = load i32, i32* %arrayidx122, align 4
  store i32 %69, i32* %bb84, align 4
  br label %if.end.129

if.else.123:                                      ; preds = %for.body.99
  %70 = load i32, i32* %r, align 4
  %cmp124 = icmp eq i32 %70, -1
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.else.123
  %71 = load i32, i32* %dd, align 4
  store i32 %71, i32* %bb84, align 4
  br label %if.end.128

if.else.127:                                      ; preds = %if.else.123
  br label %for.end.149

if.end.128:                                       ; preds = %if.then.126
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.116
  %72 = load i32, i32* %bb84, align 4
  %73 = load i32, i32* %other, align 4
  %74 = load i32, i32* %str.addr, align 4
  %call130 = call i32 @trymove(i32 %72, i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), i32 %74, i32 0, i32 0)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.146

if.then.132:                                      ; preds = %if.end.129
  %75 = load i32, i32* %str.addr, align 4
  %idxprom133 = sext i32 %75 to i64
  %arrayidx134 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom133
  %76 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %76 to i32
  %cmp136 = icmp eq i32 %conv135, 0
  br i1 %cmp136, label %if.then.138, label %if.else.139

if.then.138:                                      ; preds = %if.then.132
  store i32 5, i32* %acode85, align 4
  br label %if.end.141

if.else.139:                                      ; preds = %if.then.132
  %77 = load i32, i32* %str.addr, align 4
  %call140 = call i32 @attack(i32 %77, i32* null)
  store i32 %call140, i32* %acode85, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.138
  %78 = load i32, i32* %acode85, align 4
  %cmp142 = icmp ne i32 %78, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %if.end.141
  %79 = load i32, i32* %bb84, align 4
  %80 = load i32, i32* %acode85, align 4
  %81 = load i32, i32* %max_points.addr, align 4
  %82 = load i32*, i32** %moves.addr, align 8
  %83 = load i32*, i32** %codes.addr, align 8
  call void @movelist_change_point(i32 %79, i32 %80, i32 %81, i32* %82, i32* %83)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %if.end.141
  call void @popgo()
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.129
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146, %if.then.105
  %84 = load i32, i32* %r, align 4
  %inc148 = add nsw i32 %84, 1
  store i32 %inc148, i32* %r, align 4
  br label %for.cond.96

for.end.149:                                      ; preds = %if.else.127, %if.then.115, %for.cond.96
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149, %if.then.94
  %85 = load i32, i32* %k, align 4
  %inc151 = add nsw i32 %85, 1
  store i32 %inc151, i32* %k, align 4
  br label %for.cond.80

for.end.152:                                      ; preds = %for.cond.80
  %86 = load i32, i32* %max_points.addr, align 4
  %sub153 = sub nsw i32 %86, 1
  %idxprom154 = sext i32 %sub153 to i64
  %87 = load i32*, i32** %codes.addr, align 8
  %arrayidx155 = getelementptr inbounds i32, i32* %87, i64 %idxprom154
  %88 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp sgt i32 %88, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.end.152
  %89 = load i32, i32* %max_points.addr, align 4
  store i32 %89, i32* %retval
  br label %return

if.end.159:                                       ; preds = %for.end.152
  store i32 0, i32* %num_threats, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.170, %if.end.159
  %90 = load i32, i32* %num_threats, align 4
  %91 = load i32, i32* %max_points.addr, align 4
  %cmp161 = icmp slt i32 %90, %91
  br i1 %cmp161, label %for.body.163, label %for.end.172

for.body.163:                                     ; preds = %for.cond.160
  %92 = load i32, i32* %num_threats, align 4
  %idxprom164 = sext i32 %92 to i64
  %93 = load i32*, i32** %codes.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %93, i64 %idxprom164
  %94 = load i32, i32* %arrayidx165, align 4
  %cmp166 = icmp eq i32 %94, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.body.163
  br label %for.end.172

if.end.169:                                       ; preds = %for.body.163
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %95 = load i32, i32* %num_threats, align 4
  %inc171 = add nsw i32 %95, 1
  store i32 %inc171, i32* %num_threats, align 4
  br label %for.cond.160

for.end.172:                                      ; preds = %if.then.168, %for.cond.160
  %96 = load i32, i32* %num_threats, align 4
  store i32 %96, i32* %retval
  br label %return

return:                                           ; preds = %for.end.172, %if.then.158, %if.then.14
  %97 = load i32, i32* %retval
  ret i32 %97
}

declare void @movelist_change_point(i32, i32, i32, i32*, i32*) #1

declare i32 @liberty_of_string(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @tune_move_ordering(i32* %params) #0 {
entry:
  %params.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32* %params, i32** %params.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %params.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  %5 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %5, 5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, 6
  %idxprom4 = sext i32 %add to i64
  %7 = load i32*, i32** %params.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %9 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 %idxprom6
  store i32 %8, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %10, 11
  %idxprom9 = sext i32 %add8 to i64
  %11 = load i32*, i32** %params.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 %idxprom11
  store i32 %12, i32* %arrayidx12, align 4
  %14 = load i32, i32* %k, align 4
  %add13 = add nsw i32 %14, 17
  %idxprom14 = sext i32 %add13 to i64
  %15 = load i32*, i32** %params.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %15, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 %idxprom16
  store i32 %16, i32* %arrayidx17, align 4
  %18 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %18, 23
  %idxprom19 = sext i32 %add18 to i64
  %19 = load i32*, i32** %params.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %19, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 %idxprom21
  store i32 %20, i32* %arrayidx22, align 4
  %22 = load i32, i32* %k, align 4
  %cmp23 = icmp slt i32 %22, 5
  br i1 %cmp23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %if.end
  %23 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %23, 29
  %idxprom26 = sext i32 %add25 to i64
  %24 = load i32*, i32** %params.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %24, i64 %idxprom26
  %25 = load i32, i32* %arrayidx27, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 %idxprom28
  store i32 %25, i32* %arrayidx29, align 4
  %27 = load i32, i32* %k, align 4
  %add30 = add nsw i32 %27, 34
  %idxprom31 = sext i32 %add30 to i64
  %28 = load i32*, i32** %params.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %28, i64 %idxprom31
  %29 = load i32, i32* %arrayidx32, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 %idxprom33
  store i32 %29, i32* %arrayidx34, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.24, %if.end
  %31 = load i32, i32* %k, align 4
  %add36 = add nsw i32 %31, 39
  %idxprom37 = sext i32 %add36 to i64
  %32 = load i32*, i32** %params.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %32, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 %idxprom39
  store i32 %33, i32* %arrayidx40, align 4
  %35 = load i32, i32* %k, align 4
  %add41 = add nsw i32 %35, 45
  %idxprom42 = sext i32 %add41 to i64
  %36 = load i32*, i32** %params.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %36, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  %38 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 %idxprom44
  store i32 %37, i32* %arrayidx45, align 4
  %39 = load i32, i32* %k, align 4
  %add46 = add nsw i32 %39, 51
  %idxprom47 = sext i32 %add46 to i64
  %40 = load i32*, i32** %params.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %40, i64 %idxprom47
  %41 = load i32, i32* %arrayidx48, align 4
  %42 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 %idxprom49
  store i32 %41, i32* %arrayidx50, align 4
  %43 = load i32, i32* %k, align 4
  %cmp51 = icmp slt i32 %43, 5
  br i1 %cmp51, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %if.end.35
  %44 = load i32, i32* %k, align 4
  %add53 = add nsw i32 %44, 57
  %idxprom54 = sext i32 %add53 to i64
  %45 = load i32*, i32** %params.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %45, i64 %idxprom54
  %46 = load i32, i32* %arrayidx55, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 %idxprom56
  store i32 %46, i32* %arrayidx57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.52, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32*, i32** %params.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %49, i64 62
  %50 = load i32, i32* %arrayidx59, align 4
  store i32 %50, i32* @defend_not_edge_score, align 4
  %51 = load i32*, i32** %params.addr, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %51, i64 63
  %52 = load i32, i32* %arrayidx60, align 4
  store i32 %52, i32* @attack_not_edge_score, align 4
  %53 = load i32*, i32** %params.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %53, i64 64
  %54 = load i32, i32* %arrayidx61, align 4
  store i32 %54, i32* @attack_ko_score, align 4
  %55 = load i32*, i32** %params.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %55, i64 65
  %56 = load i32, i32* %arrayidx62, align 4
  store i32 %56, i32* @cannot_defend_penalty, align 4
  %57 = load i32*, i32** %params.addr, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %57, i64 66
  %58 = load i32, i32* %arrayidx63, align 4
  store i32 %58, i32* @safe_atari_score, align 4
  %59 = load i32, i32* @verbose, align 4
  %tobool = icmp ne i32 %59, 0
  br i1 %tobool, label %if.then.64, label %if.end.80

if.then.64:                                       ; preds = %for.end
  %60 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 0), align 4
  %61 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 1), align 4
  %62 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 2), align 4
  %63 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 3), align 4
  %64 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 4), align 4
  %65 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 5), align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i32 0, i32 0), i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 0), align 4
  %67 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 1), align 4
  %68 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 2), align 4
  %69 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 3), align 4
  %70 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 4), align 4
  %call65 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i32 0, i32 0), i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  %71 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 0), align 4
  %72 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 1), align 4
  %73 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 2), align 4
  %74 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 3), align 4
  %75 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 4), align 4
  %76 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 5), align 4
  %call66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i32 0, i32 0), i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %77 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 0), align 4
  %78 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 1), align 4
  %79 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 2), align 4
  %80 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 3), align 4
  %81 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 4), align 4
  %82 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 5), align 4
  %call67 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.28, i32 0, i32 0), i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %83 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 0), align 4
  %84 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 1), align 4
  %85 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 2), align 4
  %86 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 3), align 4
  %87 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 4), align 4
  %88 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 5), align 4
  %call68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i32 0, i32 0), i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %89 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 0), align 4
  %90 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 1), align 4
  %91 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 2), align 4
  %92 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 3), align 4
  %93 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 4), align 4
  %call69 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i32 0, i32 0), i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %94 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 0), align 4
  %95 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 1), align 4
  %96 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 2), align 4
  %97 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 3), align 4
  %98 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 4), align 4
  %call70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i32 0, i32 0), i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %99 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 0), align 4
  %100 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 1), align 4
  %101 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 2), align 4
  %102 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 3), align 4
  %103 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 4), align 4
  %104 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 5), align 4
  %call71 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.32, i32 0, i32 0), i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %105 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 0), align 4
  %106 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 1), align 4
  %107 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 2), align 4
  %108 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 3), align 4
  %109 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 4), align 4
  %110 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 5), align 4
  %call72 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.33, i32 0, i32 0), i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %111 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 0), align 4
  %112 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 1), align 4
  %113 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 2), align 4
  %114 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 3), align 4
  %115 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 4), align 4
  %116 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 5), align 4
  %call73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.34, i32 0, i32 0), i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %117 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 0), align 4
  %118 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 1), align 4
  %119 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 2), align 4
  %120 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 3), align 4
  %121 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 4), align 4
  %call74 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.35, i32 0, i32 0), i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %122 = load i32, i32* @defend_not_edge_score, align 4
  %call75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i32 %122)
  %123 = load i32, i32* @attack_not_edge_score, align 4
  %call76 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i32 0, i32 0), i32 %123)
  %124 = load i32, i32* @attack_ko_score, align 4
  %call77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* @cannot_defend_penalty, align 4
  %call78 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* @safe_atari_score, align 4
  %call79 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0), i32 %126)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.64, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clear_safe_move_cache() #0 {
entry:
  %k = alloca i32, align 4
  store i32 21, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  store i32 -1, i32* %arrayidx1, align 4
  %2 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 1
  store i32 -1, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %k, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @is_ko(i32, i32, i32*) #1

declare i32 @tryko(i32, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @reset_reading_node_counter() #0 {
entry:
  store i32 0, i32* @reading_node_counter, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_reading_node_counter() #0 {
entry:
  %0 = load i32, i32* @reading_node_counter, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @draw_reading_shadow() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 32, i32* %c, align 4
  call void @start_draw_board()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @board_size, align 4
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, %3
  store i32 %sub, i32* %ii, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i32, i32* %ii, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 %5)
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %8, 20
  %add = add nsw i32 21, %mul
  %9 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %9
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.3
  %11 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 %11, 20
  %add6 = add nsw i32 21, %mul5
  %12 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add6, %12
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 46, i32* %c, align 4
  br label %if.end.46

if.else:                                          ; preds = %land.lhs.true, %for.body.3
  %14 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %14, 20
  %add13 = add nsw i32 21, %mul12
  %15 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %add13, %15
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom15
  %16 = load i8, i8* %arrayidx16, align 1
  %tobool17 = icmp ne i8 %16, 0
  br i1 %tobool17, label %if.else.28, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  %mul19 = mul nsw i32 %17, 20
  %add20 = add nsw i32 21, %mul19
  %18 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %add20, %18
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true.18
  store i32 79, i32* %c, align 4
  br label %if.end.45

if.else.28:                                       ; preds = %land.lhs.true.18, %if.else
  %20 = load i32, i32* %i, align 4
  %mul29 = mul nsw i32 %20, 20
  %add30 = add nsw i32 21, %mul29
  %21 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %add30, %21
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom32
  %22 = load i8, i8* %arrayidx33, align 1
  %tobool34 = icmp ne i8 %22, 0
  br i1 %tobool34, label %if.end, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %if.else.28
  %23 = load i32, i32* %i, align 4
  %mul36 = mul nsw i32 %23, 20
  %add37 = add nsw i32 21, %mul36
  %24 = load i32, i32* %j, align 4
  %add38 = add nsw i32 %add37, %24
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %25 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %25 to i32
  %cmp42 = icmp eq i32 %conv41, 2
  br i1 %cmp42, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %land.lhs.true.35
  store i32 88, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.44, %land.lhs.true.35, %if.else.28
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.27
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  %26 = load i32, i32* %i, align 4
  %mul47 = mul nsw i32 %26, 20
  %add48 = add nsw i32 21, %mul47
  %27 = load i32, i32* %j, align 4
  %add49 = add nsw i32 %add48, %27
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom50
  %28 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %28 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.else.64

land.lhs.true.54:                                 ; preds = %if.end.46
  %29 = load i32, i32* %i, align 4
  %mul55 = mul nsw i32 %29, 20
  %add56 = add nsw i32 21, %mul55
  %30 = load i32, i32* %j, align 4
  %add57 = add nsw i32 %add56, %30
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %31 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %31 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %land.lhs.true.54
  store i32 44, i32* %c, align 4
  br label %if.end.102

if.else.64:                                       ; preds = %land.lhs.true.54, %if.end.46
  %32 = load i32, i32* %i, align 4
  %mul65 = mul nsw i32 %32, 20
  %add66 = add nsw i32 21, %mul65
  %33 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %add66, %33
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom68
  %34 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %34 to i32
  %tobool71 = icmp ne i32 %conv70, 0
  br i1 %tobool71, label %land.lhs.true.72, label %if.else.82

land.lhs.true.72:                                 ; preds = %if.else.64
  %35 = load i32, i32* %i, align 4
  %mul73 = mul nsw i32 %35, 20
  %add74 = add nsw i32 21, %mul73
  %36 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %add74, %36
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %37 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %37 to i32
  %cmp79 = icmp eq i32 %conv78, 1
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %land.lhs.true.72
  store i32 111, i32* %c, align 4
  br label %if.end.101

if.else.82:                                       ; preds = %land.lhs.true.72, %if.else.64
  %38 = load i32, i32* %i, align 4
  %mul83 = mul nsw i32 %38, 20
  %add84 = add nsw i32 21, %mul83
  %39 = load i32, i32* %j, align 4
  %add85 = add nsw i32 %add84, %39
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom86
  %40 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %40 to i32
  %tobool89 = icmp ne i32 %conv88, 0
  br i1 %tobool89, label %land.lhs.true.90, label %if.end.100

land.lhs.true.90:                                 ; preds = %if.else.82
  %41 = load i32, i32* %i, align 4
  %mul91 = mul nsw i32 %41, 20
  %add92 = add nsw i32 21, %mul91
  %42 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %add92, %42
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %43 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %43 to i32
  %cmp97 = icmp eq i32 %conv96, 2
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.90
  store i32 120, i32* %c, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %land.lhs.true.90, %if.else.82
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.81
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.63
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i32, i32* %c, align 4
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i32 %45)
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i32, i32* %ii, align 4
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i32 %48)
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end
  %49 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %49, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  call void @end_draw_board()
  ret void
}

declare void @start_draw_board() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @end_draw_board() #1

; Function Attrs: nounwind uwtable
define i32 @simple_ladder(i32 %str, i32* %move) #0 {
entry:
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32*, i32** %move.addr, align 8
  %call = call i32 @simple_ladder_attack(i32 %0, i32* %1, i32 0, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_ladder_attack(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %k = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %u = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 0, i32* %num, align 4
  %5 = load i32, i32* %str.addr, align 4
  %call = call i32 @find_origin(i32 %5)
  store i32 %call, i32* %str.addr, align 4
  %6 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %10, 20
  %sub10 = sub nsw i32 %div, 1
  %11 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %11, 20
  %sub11 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4714, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 %sub10, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %str.addr, align 4
  %call12 = call i32 @countlib(i32 %12)
  %cmp13 = icmp eq i32 %call12, 2
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  br label %if.end.21

if.else.16:                                       ; preds = %if.end
  %13 = load i32, i32* %str.addr, align 4
  %div17 = sdiv i32 %13, 20
  %sub18 = sub nsw i32 %div17, 1
  %14 = load i32, i32* %str.addr, align 4
  %rem19 = srem i32 %14, 20
  %sub20 = sub nsw i32 %rem19, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4715, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 %sub18, i32 %sub20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.15
  %15 = load i32, i32* @stackp, align 4
  %16 = load i32, i32* @depth, align 4
  %add = add nsw i32 %16, 20
  %cmp22 = icmp sgt i32 %15, %add
  br i1 %cmp22, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.21
  %17 = load i32, i32* %komaster.addr, align 4
  %18 = load i32, i32* %str.addr, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %19 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %sub27 = sub nsw i32 3, %conv26
  %cmp28 = icmp eq i32 %17, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %land.lhs.true
  %20 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %20, null
  br i1 %tobool, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.30
  %21 = load i8*, i8** %read_function_name, align 8
  %22 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %21, i32 %22, i32 0, i32 0, i8* null)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.30
  %23 = load i32*, i32** %move.addr, align 8
  %tobool33 = icmp ne i32* %23, null
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %24 = load i32*, i32** %move.addr, align 8
  store i32 0, i32* %24, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  store i32 0, i32* %retval
  br label %do.end.145

if.end.36:                                        ; preds = %land.lhs.true, %if.end.21
  %25 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call37 = call i32 @findlib(i32 %25, i32 2, i32* %arraydecay)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %if.end.36
  %26 = load i32, i32* %k, align 4
  %cmp38 = icmp slt i32 %26, 2
  br i1 %cmp38, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  store i32 0, i32* %u, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %do.body
  %27 = load i32, i32* %u, align 4
  %num41 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %28 = load i32, i32* %num41, align 4
  %cmp42 = icmp slt i32 %27, %28
  br i1 %cmp42, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.40
  %29 = load i32, i32* %u, align 4
  %idxprom45 = sext i32 %29 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom45
  %30 = load i32, i32* %arrayidx46, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom47
  %32 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %30, %32
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %for.body.44
  %33 = load i32, i32* %u, align 4
  %idxprom52 = sext i32 %33 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom52
  %34 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %34, 0
  store i32 %add54, i32* %arrayidx53, align 4
  br label %for.end

if.end.55:                                        ; preds = %for.body.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %35 = load i32, i32* %u, align 4
  %inc56 = add nsw i32 %35, 1
  store i32 %inc56, i32* %u, align 4
  br label %for.cond.40

for.end:                                          ; preds = %if.then.51, %for.cond.40
  %36 = load i32, i32* %u, align 4
  %num57 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %37 = load i32, i32* %num57, align 4
  %cmp58 = icmp eq i32 %36, %37
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.77

land.lhs.true.60:                                 ; preds = %for.end
  %num61 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %38 = load i32, i32* %num61, align 4
  %cmp62 = icmp slt i32 %38, 50
  br i1 %cmp62, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %land.lhs.true.60
  %39 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %39 to i64
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom65
  %40 = load i32, i32* %arrayidx66, align 4
  %num67 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %41 = load i32, i32* %num67, align 4
  %idxprom68 = sext i32 %41 to i64
  %pos69 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [50 x i32], [50 x i32]* %pos69, i32 0, i64 %idxprom68
  store i32 %40, i32* %arrayidx70, align 4
  %num71 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %42 = load i32, i32* %num71, align 4
  %idxprom72 = sext i32 %42 to i64
  %score73 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [50 x i32], [50 x i32]* %score73, i32 0, i64 %idxprom72
  store i32 0, i32* %arrayidx74, align 4
  %num75 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %43 = load i32, i32* %num75, align 4
  %inc76 = add nsw i32 %43, 1
  store i32 %inc76, i32* %num75, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.64, %land.lhs.true.60, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.77
  br label %for.inc.78

for.inc.78:                                       ; preds = %do.end
  %44 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %44, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  %45 = load i32, i32* %str.addr, align 4
  %46 = load i32, i32* %other, align 4
  %47 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %45, %struct.reading_moves* %moves, i32 %46, i8* %47, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.128, %for.end.80
  %48 = load i32, i32* %k, align 4
  %num82 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %49 = load i32, i32* %num82, align 4
  %cmp83 = icmp slt i32 %48, %49
  br i1 %cmp83, label %for.body.85, label %for.end.130

for.body.85:                                      ; preds = %for.cond.81
  %50 = load i32, i32* %k, align 4
  %idxprom86 = sext i32 %50 to i64
  %pos87 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [50 x i32], [50 x i32]* %pos87, i32 0, i64 %idxprom86
  %51 = load i32, i32* %arrayidx88, align 4
  store i32 %51, i32* %apos, align 4
  %52 = load i32, i32* %apos, align 4
  %53 = load i32, i32* %other, align 4
  %54 = load i32, i32* %str.addr, align 4
  %55 = load i32, i32* %komaster.addr, align 4
  %56 = load i32, i32* %kom_pos.addr, align 4
  %57 = load i32, i32* %savecode, align 4
  %cmp89 = icmp eq i32 %57, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = call i32 @komaster_trymove(i32 %52, i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i32 0, i32 0), i32 %54, i32 %55, i32 %56, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %conv90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.127

if.then.93:                                       ; preds = %for.body.85
  %58 = load i32, i32* %ko_move, align 4
  %tobool94 = icmp ne i32 %58, 0
  br i1 %tobool94, label %if.else.120, label %if.then.95

if.then.95:                                       ; preds = %if.then.93
  %59 = load i32, i32* %str.addr, align 4
  %60 = load i32, i32* %new_komaster, align 4
  %61 = load i32, i32* %new_kom_pos, align 4
  %call96 = call i32 @simple_ladder_defend(i32 %59, i32* null, i32 %60, i32 %61)
  store i32 %call96, i32* %dcode, align 4
  %62 = load i32, i32* %dcode, align 4
  %cmp97 = icmp ne i32 %62, 5
  br i1 %cmp97, label %if.then.99, label %if.end.119

if.then.99:                                       ; preds = %if.then.95
  %63 = load i32, i32* %dcode, align 4
  %cmp100 = icmp eq i32 %63, 0
  br i1 %cmp100, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %if.then.99
  call void @popgo()
  %64 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool103 = icmp ne %struct.SGFTree_t* %64, null
  br i1 %tobool103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.102
  %65 = load i8*, i8** %read_function_name, align 8
  %66 = load i32, i32* %q, align 4
  %67 = load i32, i32* %apos, align 4
  call void @sgf_trace(i8* %65, i32 %66, i32 %67, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.104, %if.then.102
  %68 = load i32*, i32** %move.addr, align 8
  %tobool106 = icmp ne i32* %68, null
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  %69 = load i32, i32* %apos, align 4
  %70 = load i32*, i32** %move.addr, align 8
  store i32 %69, i32* %70, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.105
  store i32 5, i32* %retval
  br label %do.end.145

if.end.109:                                       ; preds = %if.then.99
  %71 = load i32, i32* %dcode, align 4
  %cmp110 = icmp ne i32 %71, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.118

land.lhs.true.112:                                ; preds = %if.end.109
  %72 = load i32, i32* %dcode, align 4
  %sub113 = sub nsw i32 5, %72
  %73 = load i32, i32* %savecode, align 4
  %cmp114 = icmp sgt i32 %sub113, %73
  br i1 %cmp114, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %land.lhs.true.112
  %74 = load i32, i32* %apos, align 4
  store i32 %74, i32* %savemove, align 4
  %75 = load i32, i32* %dcode, align 4
  %sub117 = sub nsw i32 5, %75
  store i32 %sub117, i32* %savecode, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %land.lhs.true.112, %if.end.109
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.95
  br label %if.end.126

if.else.120:                                      ; preds = %if.then.93
  %76 = load i32, i32* %str.addr, align 4
  %77 = load i32, i32* %new_komaster, align 4
  %78 = load i32, i32* %new_kom_pos, align 4
  %call121 = call i32 @simple_ladder_defend(i32 %76, i32* null, i32 %77, i32 %78)
  %cmp122 = icmp ne i32 %call121, 5
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.else.120
  %79 = load i32, i32* %apos, align 4
  store i32 %79, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.else.120
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.119
  call void @popgo()
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %for.body.85
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %80 = load i32, i32* %k, align 4
  %inc129 = add nsw i32 %80, 1
  store i32 %inc129, i32* %k, align 4
  br label %for.cond.81

for.end.130:                                      ; preds = %for.cond.81
  br label %do.body.131

do.body.131:                                      ; preds = %for.end.130
  %81 = load i32, i32* %savecode, align 4
  %tobool132 = icmp ne i32 %81, 0
  br i1 %tobool132, label %if.then.133, label %if.else.140

if.then.133:                                      ; preds = %do.body.131
  %82 = load i32*, i32** %move.addr, align 8
  %tobool134 = icmp ne i32* %82, null
  br i1 %tobool134, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.133
  %83 = load i32, i32* %savemove, align 4
  %84 = load i32*, i32** %move.addr, align 8
  store i32 %83, i32* %84, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.133
  %85 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool137 = icmp ne %struct.SGFTree_t* %85, null
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.136
  %86 = load i8*, i8** %read_function_name, align 8
  %87 = load i32, i32* %q, align 4
  %88 = load i32, i32* %savemove, align 4
  %89 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %86, i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.end.136
  br label %if.end.144

if.else.140:                                      ; preds = %do.body.131
  %90 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool141 = icmp ne %struct.SGFTree_t* %90, null
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.else.140
  %91 = load i8*, i8** %read_function_name, align 8
  %92 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %91, i32 %92, i32 0, i32 0, i8* null)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.else.140
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.139
  %93 = load i32, i32* %savecode, align 4
  store i32 %93, i32* %retval
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.35, %if.end.108, %if.end.144
  %94 = load i32, i32* %retval
  ret i32 %94
}

declare void @sgf_trace(i8*, i32, i32, i32, i8*) #1

declare i32 @get_read_result(i32, i32, i32, i32*, %struct.read_result_t**) #1

; Function Attrs: nounwind uwtable
define internal i32 @defend1(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %lib = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %liberties = alloca i32, align 4
  %k = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  %libs2 = alloca [6 x i32], align 16
  %apos = alloca i32, align 4
  %acode102 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %9 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %9, 20
  %sub10 = sub nsw i32 %div, 1
  %10 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %10, 20
  %sub11 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1077, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 %sub10, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %11)
  %cmp12 = icmp eq i32 %call, 1
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end
  br label %if.end.20

if.else.15:                                       ; preds = %if.end
  %12 = load i32, i32* %str.addr, align 4
  %div16 = sdiv i32 %12, 20
  %sub17 = sub nsw i32 %div16, 1
  %13 = load i32, i32* %str.addr, align 4
  %rem18 = srem i32 %13, 20
  %sub19 = sub nsw i32 %rem18, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1078, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i32 %sub17, i32 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  %14 = load i32, i32* %str.addr, align 4
  %call21 = call i32 @findlib(i32 %14, i32 1, i32* %lib)
  store i32 %call21, i32* %liberties, align 4
  %15 = load i32, i32* %liberties, align 4
  %cmp22 = icmp eq i32 %15, 1
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.20
  br label %if.end.30

if.else.25:                                       ; preds = %if.end.20
  %16 = load i32, i32* %str.addr, align 4
  %div26 = sdiv i32 %16, 20
  %sub27 = sub nsw i32 %div26, 1
  %17 = load i32, i32* %str.addr, align 4
  %rem28 = srem i32 %17, 20
  %sub29 = sub nsw i32 %rem28, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1082, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 %sub27, i32 %sub29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.24
  %18 = load i32, i32* %lib, align 4
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 0
  store i32 %18, i32* %arrayidx31, align 4
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 0
  store i32 0, i32* %arrayidx32, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 1, i32* %num, align 4
  %19 = load i32, i32* %str.addr, align 4
  call void @break_chain_moves(i32 %19, %struct.reading_moves* %moves)
  %20 = load i32, i32* %str.addr, align 4
  %21 = load i32, i32* %lib, align 4
  call void @set_up_snapback_moves(i32 %20, i32 %21, %struct.reading_moves* %moves)
  %22 = load i32, i32* %str.addr, align 4
  %23 = load i32, i32* %color, align 4
  %24 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %22, %struct.reading_moves* %moves, i32 %23, i8* %24, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %25 = load i32, i32* %k, align 4
  %num33 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %26 = load i32, i32* %num33, align 4
  %cmp34 = icmp slt i32 %25, %26
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %27 to i64
  %pos37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [50 x i32], [50 x i32]* %pos37, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx38, align 4
  store i32 %28, i32* %xpos, align 4
  %29 = load i32, i32* %xpos, align 4
  %30 = load i32, i32* %color, align 4
  %31 = load i32, i32* %str.addr, align 4
  %32 = load i32, i32* %komaster.addr, align 4
  %33 = load i32, i32* %kom_pos.addr, align 4
  %34 = load i32, i32* @stackp, align 4
  %35 = load i32, i32* @ko_depth, align 4
  %cmp39 = icmp sle i32 %34, %35
  br i1 %cmp39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %36 = load i32, i32* %savecode, align 4
  %cmp41 = icmp eq i32 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %37 = phi i1 [ false, %for.body ], [ %cmp41, %land.rhs ]
  %land.ext = zext i1 %37 to i32
  %call43 = call i32 @komaster_trymove(i32 %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %31, i32 %32, i32 %33, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.then.44, label %if.end.72

if.then.44:                                       ; preds = %land.end
  %38 = load i32, i32* %ko_move, align 4
  %tobool45 = icmp ne i32 %38, 0
  br i1 %tobool45, label %if.else.65, label %if.then.46

if.then.46:                                       ; preds = %if.then.44
  %39 = load i32, i32* %str.addr, align 4
  %40 = load i32, i32* %new_komaster, align 4
  %41 = load i32, i32* %new_kom_pos, align 4
  %call47 = call i32 @do_attack(i32 %39, i32* null, i32 %40, i32 %41)
  store i32 %call47, i32* %acode, align 4
  call void @popgo()
  br label %do.body

do.body:                                          ; preds = %if.then.46
  %42 = load i32, i32* %acode, align 4
  %cmp48 = icmp eq i32 %42, 0
  br i1 %cmp48, label %if.then.50, label %if.else.57

if.then.50:                                       ; preds = %do.body
  %43 = load i32*, i32** %move.addr, align 8
  %tobool51 = icmp ne i32* %43, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.50
  %44 = load i32, i32* %xpos, align 4
  %45 = load i32*, i32** %move.addr, align 8
  store i32 %44, i32* %45, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.50
  %46 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool54 = icmp ne %struct.SGFTree_t* %46, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %47 = load i8*, i8** %read_function_name, align 8
  %48 = load i32, i32* %q, align 4
  %49 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %47, i32 %48, i32 %49, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  store i32 5, i32* %retval
  br label %do.end.143

if.else.57:                                       ; preds = %do.body
  %50 = load i32, i32* %acode, align 4
  %sub58 = sub nsw i32 5, %50
  %51 = load i32, i32* %savecode, align 4
  %cmp59 = icmp sgt i32 %sub58, %51
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.else.57
  %52 = load i32, i32* %xpos, align 4
  store i32 %52, i32* %savemove, align 4
  %53 = load i32, i32* %acode, align 4
  %sub62 = sub nsw i32 5, %53
  store i32 %sub62, i32* %savecode, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.else.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.71

if.else.65:                                       ; preds = %if.then.44
  %54 = load i32, i32* %str.addr, align 4
  %55 = load i32, i32* %new_komaster, align 4
  %56 = load i32, i32* %new_kom_pos, align 4
  %call66 = call i32 @do_attack(i32 %54, i32* null, i32 %55, i32 %56)
  %cmp67 = icmp ne i32 %call66, 5
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.else.65
  %57 = load i32, i32* %xpos, align 4
  store i32 %57, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.else.65
  call void @popgo()
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %do.end
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %58 = load i32, i32* %k, align 4
  %inc73 = add nsw i32 %58, 1
  store i32 %inc73, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* @stackp, align 4
  %60 = load i32, i32* @backfill_depth, align 4
  %cmp74 = icmp sle i32 %59, %60
  br i1 %cmp74, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %for.end
  %61 = load i32, i32* %str.addr, align 4
  %call76 = call i32 @countstones(i32 %61)
  %cmp77 = icmp eq i32 %call76, 1
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.128

land.lhs.true.79:                                 ; preds = %land.lhs.true
  %62 = load i32, i32* %lib, align 4
  %63 = load i32, i32* %other, align 4
  %call80 = call i32 @is_ko(i32 %62, i32 %63, i32* null)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.128

if.then.82:                                       ; preds = %land.lhs.true.79
  %64 = load i32, i32* %lib, align 4
  %65 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i32 0
  %call83 = call i32 @approxlib(i32 %64, i32 %65, i32 6, i32* %arraydecay)
  store i32 %call83, i32* %liberties, align 4
  %66 = load i32, i32* %liberties, align 4
  %cmp84 = icmp sle i32 %66, 5
  br i1 %cmp84, label %if.then.86, label %if.end.127

if.then.86:                                       ; preds = %if.then.82
  store i32 0, i32* %k, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.124, %if.then.86
  %67 = load i32, i32* %k, align 4
  %68 = load i32, i32* %liberties, align 4
  %cmp88 = icmp slt i32 %67, %68
  br i1 %cmp88, label %for.body.90, label %for.end.126

for.body.90:                                      ; preds = %for.cond.87
  %69 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %69 to i64
  %arrayidx92 = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i64 %idxprom91
  %70 = load i32, i32* %arrayidx92, align 4
  store i32 %70, i32* %apos, align 4
  %71 = load i32, i32* %liberties, align 4
  %cmp93 = icmp eq i32 %71, 1
  br i1 %cmp93, label %land.lhs.true.98, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %for.body.90
  %72 = load i32, i32* %apos, align 4
  %73 = load i32, i32* %other, align 4
  %call96 = call i32 @is_self_atari(i32 %72, i32 %73)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.123, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %lor.lhs.false.95, %for.body.90
  %74 = load i32, i32* %apos, align 4
  %75 = load i32, i32* %color, align 4
  %76 = load i32, i32* %str.addr, align 4
  %77 = load i32, i32* %komaster.addr, align 4
  %78 = load i32, i32* %kom_pos.addr, align 4
  %call99 = call i32 @trymove(i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %76, i32 %77, i32 %78)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.123

if.then.101:                                      ; preds = %land.lhs.true.98
  %79 = load i32, i32* %str.addr, align 4
  %80 = load i32, i32* %komaster.addr, align 4
  %81 = load i32, i32* %kom_pos.addr, align 4
  %call103 = call i32 @do_attack(i32 %79, i32* null, i32 %80, i32 %81)
  store i32 %call103, i32* %acode102, align 4
  call void @popgo()
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.101
  %82 = load i32, i32* %acode102, align 4
  %cmp105 = icmp eq i32 %82, 0
  br i1 %cmp105, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %do.body.104
  %83 = load i32*, i32** %move.addr, align 8
  %tobool108 = icmp ne i32* %83, null
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.107
  %84 = load i32, i32* %apos, align 4
  %85 = load i32*, i32** %move.addr, align 8
  store i32 %84, i32* %85, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %if.then.107
  %86 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool111 = icmp ne %struct.SGFTree_t* %86, null
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.110
  %87 = load i8*, i8** %read_function_name, align 8
  %88 = load i32, i32* %q, align 4
  %89 = load i32, i32* %apos, align 4
  call void @sgf_trace(i8* %87, i32 %88, i32 %89, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.110
  store i32 5, i32* %retval
  br label %do.end.143

if.else.114:                                      ; preds = %do.body.104
  %90 = load i32, i32* %acode102, align 4
  %sub115 = sub nsw i32 5, %90
  %91 = load i32, i32* %savecode, align 4
  %cmp116 = icmp sgt i32 %sub115, %91
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.else.114
  %92 = load i32, i32* %apos, align 4
  store i32 %92, i32* %savemove, align 4
  %93 = load i32, i32* %acode102, align 4
  %sub119 = sub nsw i32 5, %93
  store i32 %sub119, i32* %savecode, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.else.114
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %if.end.123

if.end.123:                                       ; preds = %do.end.122, %land.lhs.true.98, %lor.lhs.false.95
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %94 = load i32, i32* %k, align 4
  %inc125 = add nsw i32 %94, 1
  store i32 %inc125, i32* %k, align 4
  br label %for.cond.87

for.end.126:                                      ; preds = %for.cond.87
  br label %if.end.127

if.end.127:                                       ; preds = %for.end.126, %if.then.82
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %land.lhs.true.79, %land.lhs.true, %for.end
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %95 = load i32, i32* %savecode, align 4
  %tobool130 = icmp ne i32 %95, 0
  br i1 %tobool130, label %if.then.131, label %if.else.138

if.then.131:                                      ; preds = %do.body.129
  %96 = load i32*, i32** %move.addr, align 8
  %tobool132 = icmp ne i32* %96, null
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.131
  %97 = load i32, i32* %savemove, align 4
  %98 = load i32*, i32** %move.addr, align 8
  store i32 %97, i32* %98, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.then.131
  %99 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool135 = icmp ne %struct.SGFTree_t* %99, null
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.134
  %100 = load i8*, i8** %read_function_name, align 8
  %101 = load i32, i32* %q, align 4
  %102 = load i32, i32* %savemove, align 4
  %103 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %100, i32 %101, i32 %102, i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %if.end.134
  br label %if.end.142

if.else.138:                                      ; preds = %do.body.129
  %104 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool139 = icmp ne %struct.SGFTree_t* %104, null
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.else.138
  %105 = load i8*, i8** %read_function_name, align 8
  %106 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %105, i32 %106, i32 0, i32 0, i8* null)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.else.138
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.137
  %107 = load i32, i32* %savecode, align 4
  store i32 %107, i32* %retval
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.56, %if.end.113, %if.end.142
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @defend2(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %liberties2 = alloca i32, align 4
  %libs2 = alloca [6 x i32], align 16
  %moves = alloca %struct.reading_moves, align 4
  %saved_num_moves = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  %u = alloca i32, align 4
  %u182 = alloca i32, align 4
  %new_komaster235 = alloca i32, align 4
  %new_kom_pos236 = alloca i32, align 4
  %ko_move237 = alloca i32, align 4
  %acode253 = alloca i32, align 4
  %ss_liberties = alloca i32, align 4
  %ss_libs = alloca [24 x i32], align 16
  %apos = alloca i32, align 4
  %u309 = alloca i32, align 4
  %apos357 = alloca i32, align 4
  %new_komaster382 = alloca i32, align 4
  %new_kom_pos383 = alloca i32, align 4
  %ko_move384 = alloca i32, align 4
  %acode400 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8** %read_function_name, align 8
  %0 = load i32, i32* %str.addr, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %2 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %color, align 4
  %4 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %4
  store i32 %sub, i32* %other, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %9)
  %cmp10 = icmp eq i32 %call, 2
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call15 = call i32 @findlib(i32 %10, i32 2, i32* %arraydecay)
  store i32 %call15, i32* %liberties, align 4
  %11 = load i32, i32* %liberties, align 4
  %cmp16 = icmp eq i32 %11, 2
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.14
  br label %if.end.22

if.else.19:                                       ; preds = %if.end.14
  %12 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div, 1
  %13 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %13, 20
  %sub21 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i32 %sub20, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %liberties, align 4
  %cmp23 = icmp slt i32 %14, %15
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom25
  %17 = load i32, i32* %arrayidx26, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %18 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom27
  store i32 %17, i32* %arrayidx28, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %19 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %liberties, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 %21, i32* %num, align 4
  %22 = load i32, i32* %str.addr, align 4
  call void @break_chain_moves(i32 %22, %struct.reading_moves* %moves)
  %23 = load i32, i32* %str.addr, align 4
  call void @break_chain2_efficient_moves(i32 %23, %struct.reading_moves* %moves)
  %24 = load i32, i32* %str.addr, align 4
  %arraydecay32 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %25 = load i32, i32* %liberties, align 4
  %26 = load i32, i32* %color, align 4
  call void @propose_edge_moves(i32 %24, i32* %arraydecay32, i32 %25, %struct.reading_moves* %moves, i32 %26)
  %27 = load i32, i32* %str.addr, align 4
  call void @edge_clamp_moves(i32 %27, %struct.reading_moves* %moves)
  %28 = load i32, i32* @stackp, align 4
  %29 = load i32, i32* @depth, align 4
  %cmp33 = icmp sle i32 %28, %29
  br i1 %cmp33, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.then.35
  %30 = load i32, i32* %k, align 4
  %31 = load i32, i32* %liberties, align 4
  %cmp37 = icmp slt i32 %30, %31
  br i1 %cmp37, label %for.body.39, label %for.end.44

for.body.39:                                      ; preds = %for.cond.36
  %32 = load i32, i32* %str.addr, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %33 to i64
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom40
  %34 = load i32, i32* %arrayidx41, align 4
  call void @special_rescue_moves(i32 %32, i32 %34, %struct.reading_moves* %moves)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.39
  %35 = load i32, i32* %k, align 4
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, i32* %k, align 4
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  br label %if.end.45

if.end.45:                                        ; preds = %for.end.44, %for.end
  %36 = load i32, i32* @stackp, align 4
  %37 = load i32, i32* @backfill_depth, align 4
  %cmp46 = icmp sle i32 %36, %37
  br i1 %cmp46, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %38 = load i32, i32* %str.addr, align 4
  %arraydecay49 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  call void @special_rescue2_moves(i32 %38, i32* %arraydecay49, %struct.reading_moves* %moves)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %39 = load i32, i32* %str.addr, align 4
  %40 = load i32, i32* %color, align 4
  %41 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %39, %struct.reading_moves* %moves, i32 %40, i8* %41, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.93, %if.end.50
  %42 = load i32, i32* %k, align 4
  %num52 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %43 = load i32, i32* %num52, align 4
  %cmp53 = icmp slt i32 %42, %43
  br i1 %cmp53, label %for.body.55, label %for.end.95

for.body.55:                                      ; preds = %for.cond.51
  %44 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %44 to i64
  %pos57 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [50 x i32], [50 x i32]* %pos57, i32 0, i64 %idxprom56
  %45 = load i32, i32* %arrayidx58, align 4
  store i32 %45, i32* %xpos, align 4
  %46 = load i32, i32* %xpos, align 4
  %47 = load i32, i32* %color, align 4
  %48 = load i32, i32* %str.addr, align 4
  %49 = load i32, i32* %komaster.addr, align 4
  %50 = load i32, i32* %kom_pos.addr, align 4
  %51 = load i32, i32* @stackp, align 4
  %52 = load i32, i32* @ko_depth, align 4
  %cmp59 = icmp sle i32 %51, %52
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body.55
  %53 = load i32, i32* %savecode, align 4
  %cmp61 = icmp eq i32 %53, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.55
  %54 = phi i1 [ false, %for.body.55 ], [ %cmp61, %land.rhs ]
  %land.ext = zext i1 %54 to i32
  %call63 = call i32 @komaster_trymove(i32 %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %48, i32 %49, i32 %50, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool = icmp ne i32 %call63, 0
  br i1 %tobool, label %if.then.64, label %if.end.92

if.then.64:                                       ; preds = %land.end
  %55 = load i32, i32* %ko_move, align 4
  %tobool65 = icmp ne i32 %55, 0
  br i1 %tobool65, label %if.else.85, label %if.then.66

if.then.66:                                       ; preds = %if.then.64
  %56 = load i32, i32* %str.addr, align 4
  %57 = load i32, i32* %new_komaster, align 4
  %58 = load i32, i32* %new_kom_pos, align 4
  %call67 = call i32 @do_attack(i32 %56, i32* null, i32 %57, i32 %58)
  store i32 %call67, i32* %acode, align 4
  call void @popgo()
  br label %do.body

do.body:                                          ; preds = %if.then.66
  %59 = load i32, i32* %acode, align 4
  %cmp68 = icmp eq i32 %59, 0
  br i1 %cmp68, label %if.then.70, label %if.else.77

if.then.70:                                       ; preds = %do.body
  %60 = load i32*, i32** %move.addr, align 8
  %tobool71 = icmp ne i32* %60, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.70
  %61 = load i32, i32* %xpos, align 4
  %62 = load i32*, i32** %move.addr, align 8
  store i32 %61, i32* %62, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.then.70
  %63 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool74 = icmp ne %struct.SGFTree_t* %63, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.73
  %64 = load i8*, i8** %read_function_name, align 8
  %65 = load i32, i32* %q, align 4
  %66 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %64, i32 %65, i32 %66, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.73
  store i32 5, i32* %retval
  br label %do.end.465

if.else.77:                                       ; preds = %do.body
  %67 = load i32, i32* %acode, align 4
  %sub78 = sub nsw i32 5, %67
  %68 = load i32, i32* %savecode, align 4
  %cmp79 = icmp sgt i32 %sub78, %68
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.else.77
  %69 = load i32, i32* %xpos, align 4
  store i32 %69, i32* %savemove, align 4
  %70 = load i32, i32* %acode, align 4
  %sub82 = sub nsw i32 5, %70
  store i32 %sub82, i32* %savecode, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.else.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83
  br label %do.end

do.end:                                           ; preds = %if.end.84
  br label %if.end.91

if.else.85:                                       ; preds = %if.then.64
  %71 = load i32, i32* %str.addr, align 4
  %72 = load i32, i32* %new_komaster, align 4
  %73 = load i32, i32* %new_kom_pos, align 4
  %call86 = call i32 @do_attack(i32 %71, i32* null, i32 %72, i32 %73)
  %cmp87 = icmp ne i32 %call86, 5
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.else.85
  %74 = load i32, i32* %xpos, align 4
  store i32 %74, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.else.85
  call void @popgo()
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.end
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.end
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %75 = load i32, i32* %k, align 4
  %inc94 = add nsw i32 %75, 1
  store i32 %inc94, i32* %k, align 4
  br label %for.cond.51

for.end.95:                                       ; preds = %for.cond.51
  %num96 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %76 = load i32, i32* %num96, align 4
  store i32 %76, i32* %saved_num_moves, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.227, %for.end.95
  %77 = load i32, i32* %k, align 4
  %78 = load i32, i32* %liberties, align 4
  %cmp98 = icmp slt i32 %77, %78
  br i1 %cmp98, label %for.body.100, label %for.end.229

for.body.100:                                     ; preds = %for.cond.97
  %79 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %79 to i64
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom101
  %80 = load i32, i32* %arrayidx102, align 4
  %81 = load i32, i32* %other, align 4
  %call103 = call i32 @is_self_atari(i32 %80, i32 %81)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.164

if.then.105:                                      ; preds = %for.body.100
  %82 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %82 to i64
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom106
  %83 = load i32, i32* %arrayidx107, align 4
  %84 = load i32, i32* %color, align 4
  %arraydecay108 = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i32 0
  %call109 = call i32 @approxlib(i32 %83, i32 %84, i32 6, i32* %arraydecay108)
  store i32 %call109, i32* %liberties2, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.161, %if.then.105
  %85 = load i32, i32* %r, align 4
  %86 = load i32, i32* %liberties2, align 4
  %cmp111 = icmp slt i32 %85, %86
  br i1 %cmp111, label %for.body.113, label %for.end.163

for.body.113:                                     ; preds = %for.cond.110
  %87 = load i32, i32* %r, align 4
  %idxprom114 = sext i32 %87 to i64
  %arrayidx115 = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i64 %idxprom114
  %88 = load i32, i32* %arrayidx115, align 4
  store i32 %88, i32* %xpos, align 4
  %89 = load i32, i32* %xpos, align 4
  %90 = load i32, i32* %color, align 4
  %call116 = call i32 @is_self_atari(i32 %89, i32 %90)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.121

lor.lhs.false.118:                                ; preds = %for.body.113
  %91 = load i32, i32* %xpos, align 4
  %92 = load i32, i32* %color, align 4
  %call119 = call i32 @has_neighbor(i32 %91, i32 %92)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.160

if.then.121:                                      ; preds = %lor.lhs.false.118, %for.body.113
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.121
  store i32 0, i32* %u, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.138, %do.body.122
  %93 = load i32, i32* %u, align 4
  %num124 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %94 = load i32, i32* %num124, align 4
  %cmp125 = icmp slt i32 %93, %94
  br i1 %cmp125, label %for.body.127, label %for.end.140

for.body.127:                                     ; preds = %for.cond.123
  %95 = load i32, i32* %u, align 4
  %idxprom128 = sext i32 %95 to i64
  %pos129 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [50 x i32], [50 x i32]* %pos129, i32 0, i64 %idxprom128
  %96 = load i32, i32* %arrayidx130, align 4
  %97 = load i32, i32* %xpos, align 4
  %cmp131 = icmp eq i32 %96, %97
  br i1 %cmp131, label %if.then.133, label %if.end.137

if.then.133:                                      ; preds = %for.body.127
  %98 = load i32, i32* %u, align 4
  %idxprom134 = sext i32 %98 to i64
  %score135 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [50 x i32], [50 x i32]* %score135, i32 0, i64 %idxprom134
  %99 = load i32, i32* %arrayidx136, align 4
  %add = add nsw i32 %99, 0
  store i32 %add, i32* %arrayidx136, align 4
  br label %for.end.140

if.end.137:                                       ; preds = %for.body.127
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %100 = load i32, i32* %u, align 4
  %inc139 = add nsw i32 %100, 1
  store i32 %inc139, i32* %u, align 4
  br label %for.cond.123

for.end.140:                                      ; preds = %if.then.133, %for.cond.123
  %101 = load i32, i32* %u, align 4
  %num141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %102 = load i32, i32* %num141, align 4
  %cmp142 = icmp eq i32 %101, %102
  br i1 %cmp142, label %land.lhs.true, label %if.end.158

land.lhs.true:                                    ; preds = %for.end.140
  %num144 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %103 = load i32, i32* %num144, align 4
  %cmp145 = icmp slt i32 %103, 50
  br i1 %cmp145, label %if.then.147, label %if.end.158

if.then.147:                                      ; preds = %land.lhs.true
  %104 = load i32, i32* %xpos, align 4
  %num148 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %105 = load i32, i32* %num148, align 4
  %idxprom149 = sext i32 %105 to i64
  %pos150 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [50 x i32], [50 x i32]* %pos150, i32 0, i64 %idxprom149
  store i32 %104, i32* %arrayidx151, align 4
  %num152 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %106 = load i32, i32* %num152, align 4
  %idxprom153 = sext i32 %106 to i64
  %score154 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [50 x i32], [50 x i32]* %score154, i32 0, i64 %idxprom153
  store i32 0, i32* %arrayidx155, align 4
  %num156 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %107 = load i32, i32* %num156, align 4
  %inc157 = add nsw i32 %107, 1
  store i32 %inc157, i32* %num156, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.147, %land.lhs.true, %for.end.140
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %lor.lhs.false.118
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %108 = load i32, i32* %r, align 4
  %inc162 = add nsw i32 %108, 1
  store i32 %inc162, i32* %r, align 4
  br label %for.cond.110

for.end.163:                                      ; preds = %for.cond.110
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.163, %for.body.100
  %109 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %109 to i64
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom165
  %110 = load i32, i32* %arrayidx166, align 4
  %111 = load i32, i32* %other, align 4
  %arraydecay167 = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i32 0
  %call168 = call i32 @approxlib(i32 %110, i32 %111, i32 3, i32* %arraydecay167)
  store i32 %call168, i32* %liberties2, align 4
  %112 = load i32, i32* %liberties2, align 4
  %cmp169 = icmp sle i32 %112, 2
  br i1 %cmp169, label %if.then.171, label %if.end.226

if.then.171:                                      ; preds = %if.end.164
  store i32 0, i32* %r, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.223, %if.then.171
  %113 = load i32, i32* %r, align 4
  %114 = load i32, i32* %liberties2, align 4
  %cmp173 = icmp slt i32 %113, %114
  br i1 %cmp173, label %for.body.175, label %for.end.225

for.body.175:                                     ; preds = %for.cond.172
  %115 = load i32, i32* %r, align 4
  %idxprom176 = sext i32 %115 to i64
  %arrayidx177 = getelementptr inbounds [6 x i32], [6 x i32]* %libs2, i32 0, i64 %idxprom176
  %116 = load i32, i32* %arrayidx177, align 4
  store i32 %116, i32* %xpos, align 4
  %117 = load i32, i32* %xpos, align 4
  %118 = load i32, i32* %color, align 4
  %call178 = call i32 @is_self_atari(i32 %117, i32 %118)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.end.222, label %if.then.180

if.then.180:                                      ; preds = %for.body.175
  br label %do.body.181

do.body.181:                                      ; preds = %if.then.180
  store i32 0, i32* %u182, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.199, %do.body.181
  %119 = load i32, i32* %u182, align 4
  %num184 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %120 = load i32, i32* %num184, align 4
  %cmp185 = icmp slt i32 %119, %120
  br i1 %cmp185, label %for.body.187, label %for.end.201

for.body.187:                                     ; preds = %for.cond.183
  %121 = load i32, i32* %u182, align 4
  %idxprom188 = sext i32 %121 to i64
  %pos189 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [50 x i32], [50 x i32]* %pos189, i32 0, i64 %idxprom188
  %122 = load i32, i32* %arrayidx190, align 4
  %123 = load i32, i32* %xpos, align 4
  %cmp191 = icmp eq i32 %122, %123
  br i1 %cmp191, label %if.then.193, label %if.end.198

if.then.193:                                      ; preds = %for.body.187
  %124 = load i32, i32* %u182, align 4
  %idxprom194 = sext i32 %124 to i64
  %score195 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [50 x i32], [50 x i32]* %score195, i32 0, i64 %idxprom194
  %125 = load i32, i32* %arrayidx196, align 4
  %add197 = add nsw i32 %125, 0
  store i32 %add197, i32* %arrayidx196, align 4
  br label %for.end.201

if.end.198:                                       ; preds = %for.body.187
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %126 = load i32, i32* %u182, align 4
  %inc200 = add nsw i32 %126, 1
  store i32 %inc200, i32* %u182, align 4
  br label %for.cond.183

for.end.201:                                      ; preds = %if.then.193, %for.cond.183
  %127 = load i32, i32* %u182, align 4
  %num202 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %128 = load i32, i32* %num202, align 4
  %cmp203 = icmp eq i32 %127, %128
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.220

land.lhs.true.205:                                ; preds = %for.end.201
  %num206 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %129 = load i32, i32* %num206, align 4
  %cmp207 = icmp slt i32 %129, 50
  br i1 %cmp207, label %if.then.209, label %if.end.220

if.then.209:                                      ; preds = %land.lhs.true.205
  %130 = load i32, i32* %xpos, align 4
  %num210 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %131 = load i32, i32* %num210, align 4
  %idxprom211 = sext i32 %131 to i64
  %pos212 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [50 x i32], [50 x i32]* %pos212, i32 0, i64 %idxprom211
  store i32 %130, i32* %arrayidx213, align 4
  %num214 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %132 = load i32, i32* %num214, align 4
  %idxprom215 = sext i32 %132 to i64
  %score216 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [50 x i32], [50 x i32]* %score216, i32 0, i64 %idxprom215
  store i32 0, i32* %arrayidx217, align 4
  %num218 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %133 = load i32, i32* %num218, align 4
  %inc219 = add nsw i32 %133, 1
  store i32 %inc219, i32* %num218, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.209, %land.lhs.true.205, %for.end.201
  br label %do.end.221

do.end.221:                                       ; preds = %if.end.220
  br label %if.end.222

if.end.222:                                       ; preds = %do.end.221, %for.body.175
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %134 = load i32, i32* %r, align 4
  %inc224 = add nsw i32 %134, 1
  store i32 %inc224, i32* %r, align 4
  br label %for.cond.172

for.end.225:                                      ; preds = %for.cond.172
  br label %if.end.226

if.end.226:                                       ; preds = %for.end.225, %if.end.164
  br label %for.inc.227

for.inc.227:                                      ; preds = %if.end.226
  %135 = load i32, i32* %k, align 4
  %inc228 = add nsw i32 %135, 1
  store i32 %inc228, i32* %k, align 4
  br label %for.cond.97

for.end.229:                                      ; preds = %for.cond.97
  %136 = load i32, i32* %str.addr, align 4
  %137 = load i32, i32* %other, align 4
  %138 = load i8*, i8** %read_function_name, align 8
  %139 = load i32, i32* %saved_num_moves, align 4
  call void @order_moves(i32 %136, %struct.reading_moves* %moves, i32 %137, i8* %138, i32 %139)
  %140 = load i32, i32* %saved_num_moves, align 4
  store i32 %140, i32* %k, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.282, %for.end.229
  %141 = load i32, i32* %k, align 4
  %num231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %142 = load i32, i32* %num231, align 4
  %cmp232 = icmp slt i32 %141, %142
  br i1 %cmp232, label %for.body.234, label %for.end.284

for.body.234:                                     ; preds = %for.cond.230
  %143 = load i32, i32* %k, align 4
  %idxprom238 = sext i32 %143 to i64
  %pos239 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [50 x i32], [50 x i32]* %pos239, i32 0, i64 %idxprom238
  %144 = load i32, i32* %arrayidx240, align 4
  store i32 %144, i32* %xpos, align 4
  %145 = load i32, i32* %xpos, align 4
  %146 = load i32, i32* %color, align 4
  %147 = load i32, i32* %str.addr, align 4
  %148 = load i32, i32* %komaster.addr, align 4
  %149 = load i32, i32* %kom_pos.addr, align 4
  %150 = load i32, i32* @stackp, align 4
  %151 = load i32, i32* @ko_depth, align 4
  %cmp241 = icmp sle i32 %150, %151
  br i1 %cmp241, label %land.rhs.243, label %land.end.246

land.rhs.243:                                     ; preds = %for.body.234
  %152 = load i32, i32* %savecode, align 4
  %cmp244 = icmp eq i32 %152, 0
  br label %land.end.246

land.end.246:                                     ; preds = %land.rhs.243, %for.body.234
  %153 = phi i1 [ false, %for.body.234 ], [ %cmp244, %land.rhs.243 ]
  %land.ext247 = zext i1 %153 to i32
  %call248 = call i32 @komaster_trymove(i32 %145, i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 %147, i32 %148, i32 %149, i32* %new_komaster235, i32* %new_kom_pos236, i32* %ko_move237, i32 %land.ext247)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.281

if.then.250:                                      ; preds = %land.end.246
  %154 = load i32, i32* %ko_move237, align 4
  %tobool251 = icmp ne i32 %154, 0
  br i1 %tobool251, label %if.else.274, label %if.then.252

if.then.252:                                      ; preds = %if.then.250
  %155 = load i32, i32* %str.addr, align 4
  %156 = load i32, i32* %new_komaster235, align 4
  %157 = load i32, i32* %new_kom_pos236, align 4
  %call254 = call i32 @do_attack(i32 %155, i32* null, i32 %156, i32 %157)
  store i32 %call254, i32* %acode253, align 4
  call void @popgo()
  br label %do.body.255

do.body.255:                                      ; preds = %if.then.252
  %158 = load i32, i32* %acode253, align 4
  %cmp256 = icmp eq i32 %158, 0
  br i1 %cmp256, label %if.then.258, label %if.else.265

if.then.258:                                      ; preds = %do.body.255
  %159 = load i32*, i32** %move.addr, align 8
  %tobool259 = icmp ne i32* %159, null
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.then.258
  %160 = load i32, i32* %xpos, align 4
  %161 = load i32*, i32** %move.addr, align 8
  store i32 %160, i32* %161, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %if.then.258
  %162 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool262 = icmp ne %struct.SGFTree_t* %162, null
  br i1 %tobool262, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.261
  %163 = load i8*, i8** %read_function_name, align 8
  %164 = load i32, i32* %q, align 4
  %165 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %163, i32 %164, i32 %165, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %if.end.261
  store i32 5, i32* %retval
  br label %do.end.465

if.else.265:                                      ; preds = %do.body.255
  %166 = load i32, i32* %acode253, align 4
  %sub266 = sub nsw i32 5, %166
  %167 = load i32, i32* %savecode, align 4
  %cmp267 = icmp sgt i32 %sub266, %167
  br i1 %cmp267, label %if.then.269, label %if.end.271

if.then.269:                                      ; preds = %if.else.265
  %168 = load i32, i32* %xpos, align 4
  store i32 %168, i32* %savemove, align 4
  %169 = load i32, i32* %acode253, align 4
  %sub270 = sub nsw i32 5, %169
  store i32 %sub270, i32* %savecode, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.269, %if.else.265
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271
  br label %do.end.273

do.end.273:                                       ; preds = %if.end.272
  br label %if.end.280

if.else.274:                                      ; preds = %if.then.250
  %170 = load i32, i32* %str.addr, align 4
  %171 = load i32, i32* %new_komaster235, align 4
  %172 = load i32, i32* %new_kom_pos236, align 4
  %call275 = call i32 @do_attack(i32 %170, i32* null, i32 %171, i32 %172)
  %cmp276 = icmp ne i32 %call275, 5
  br i1 %cmp276, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.else.274
  %173 = load i32, i32* %xpos, align 4
  store i32 %173, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.then.278, %if.else.274
  call void @popgo()
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %do.end.273
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %land.end.246
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %174 = load i32, i32* %k, align 4
  %inc283 = add nsw i32 %174, 1
  store i32 %inc283, i32* %k, align 4
  br label %for.cond.230

for.end.284:                                      ; preds = %for.cond.230
  %num285 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %175 = load i32, i32* %num285, align 4
  store i32 %175, i32* %saved_num_moves, align 4
  %176 = load i32, i32* @stackp, align 4
  %177 = load i32, i32* @superstring_depth, align 4
  %cmp286 = icmp sle i32 %176, %177
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %for.end.284
  %178 = load i32, i32* %str.addr, align 4
  call void @superstring_breakchain_moves(i32 %178, i32 4, %struct.reading_moves* %moves)
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.288, %for.end.284
  %179 = load i32, i32* @stackp, align 4
  %180 = load i32, i32* @superstring_depth, align 4
  %cmp290 = icmp sle i32 %179, %180
  br i1 %cmp290, label %if.then.292, label %if.end.367

if.then.292:                                      ; preds = %if.end.289
  %181 = load i32, i32* %str.addr, align 4
  %arraydecay293 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i32 0
  call void @find_superstring_liberties(i32 %181, i32* %ss_liberties, i32* %arraydecay293, i32 3)
  store i32 0, i32* %k, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.350, %if.then.292
  %182 = load i32, i32* %k, align 4
  %183 = load i32, i32* %ss_liberties, align 4
  %cmp295 = icmp slt i32 %182, %183
  br i1 %cmp295, label %for.body.297, label %for.end.352

for.body.297:                                     ; preds = %for.cond.294
  %184 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %184 to i64
  %arrayidx299 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom298
  %185 = load i32, i32* %arrayidx299, align 4
  store i32 %185, i32* %apos, align 4
  %186 = load i32, i32* %apos, align 4
  %187 = load i32, i32* %str.addr, align 4
  %call300 = call i32 @liberty_of_string(i32 %186, i32 %187)
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %for.body.297
  br label %for.inc.350

if.end.303:                                       ; preds = %for.body.297
  %188 = load i32, i32* %apos, align 4
  %189 = load i32, i32* %color, align 4
  %call304 = call i32 @approxlib(i32 %188, i32 %189, i32 2, i32* null)
  %cmp305 = icmp sgt i32 %call304, 1
  br i1 %cmp305, label %if.then.307, label %if.end.349

if.then.307:                                      ; preds = %if.end.303
  br label %do.body.308

do.body.308:                                      ; preds = %if.then.307
  store i32 0, i32* %u309, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.326, %do.body.308
  %190 = load i32, i32* %u309, align 4
  %num311 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %191 = load i32, i32* %num311, align 4
  %cmp312 = icmp slt i32 %190, %191
  br i1 %cmp312, label %for.body.314, label %for.end.328

for.body.314:                                     ; preds = %for.cond.310
  %192 = load i32, i32* %u309, align 4
  %idxprom315 = sext i32 %192 to i64
  %pos316 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [50 x i32], [50 x i32]* %pos316, i32 0, i64 %idxprom315
  %193 = load i32, i32* %arrayidx317, align 4
  %194 = load i32, i32* %apos, align 4
  %cmp318 = icmp eq i32 %193, %194
  br i1 %cmp318, label %if.then.320, label %if.end.325

if.then.320:                                      ; preds = %for.body.314
  %195 = load i32, i32* %u309, align 4
  %idxprom321 = sext i32 %195 to i64
  %score322 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [50 x i32], [50 x i32]* %score322, i32 0, i64 %idxprom321
  %196 = load i32, i32* %arrayidx323, align 4
  %add324 = add nsw i32 %196, 0
  store i32 %add324, i32* %arrayidx323, align 4
  br label %for.end.328

if.end.325:                                       ; preds = %for.body.314
  br label %for.inc.326

for.inc.326:                                      ; preds = %if.end.325
  %197 = load i32, i32* %u309, align 4
  %inc327 = add nsw i32 %197, 1
  store i32 %inc327, i32* %u309, align 4
  br label %for.cond.310

for.end.328:                                      ; preds = %if.then.320, %for.cond.310
  %198 = load i32, i32* %u309, align 4
  %num329 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %199 = load i32, i32* %num329, align 4
  %cmp330 = icmp eq i32 %198, %199
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.347

land.lhs.true.332:                                ; preds = %for.end.328
  %num333 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %200 = load i32, i32* %num333, align 4
  %cmp334 = icmp slt i32 %200, 50
  br i1 %cmp334, label %if.then.336, label %if.end.347

if.then.336:                                      ; preds = %land.lhs.true.332
  %201 = load i32, i32* %apos, align 4
  %num337 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %202 = load i32, i32* %num337, align 4
  %idxprom338 = sext i32 %202 to i64
  %pos339 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [50 x i32], [50 x i32]* %pos339, i32 0, i64 %idxprom338
  store i32 %201, i32* %arrayidx340, align 4
  %num341 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %203 = load i32, i32* %num341, align 4
  %idxprom342 = sext i32 %203 to i64
  %score343 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx344 = getelementptr inbounds [50 x i32], [50 x i32]* %score343, i32 0, i64 %idxprom342
  store i32 0, i32* %arrayidx344, align 4
  %num345 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %204 = load i32, i32* %num345, align 4
  %inc346 = add nsw i32 %204, 1
  store i32 %inc346, i32* %num345, align 4
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.336, %land.lhs.true.332, %for.end.328
  br label %do.end.348

do.end.348:                                       ; preds = %if.end.347
  br label %if.end.349

if.end.349:                                       ; preds = %do.end.348, %if.end.303
  br label %for.inc.350

for.inc.350:                                      ; preds = %if.end.349, %if.then.302
  %205 = load i32, i32* %k, align 4
  %inc351 = add nsw i32 %205, 1
  store i32 %inc351, i32* %k, align 4
  br label %for.cond.294

for.end.352:                                      ; preds = %for.cond.294
  store i32 0, i32* %k, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.364, %for.end.352
  %206 = load i32, i32* %k, align 4
  %207 = load i32, i32* %ss_liberties, align 4
  %cmp354 = icmp slt i32 %206, %207
  br i1 %cmp354, label %for.body.356, label %for.end.366

for.body.356:                                     ; preds = %for.cond.353
  %208 = load i32, i32* %k, align 4
  %idxprom358 = sext i32 %208 to i64
  %arrayidx359 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom358
  %209 = load i32, i32* %arrayidx359, align 4
  store i32 %209, i32* %apos357, align 4
  %210 = load i32, i32* %apos357, align 4
  %211 = load i32, i32* %str.addr, align 4
  %call360 = call i32 @liberty_of_string(i32 %210, i32 %211)
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %for.body.356
  br label %for.inc.364

if.end.363:                                       ; preds = %for.body.356
  %212 = load i32, i32* %str.addr, align 4
  %213 = load i32, i32* %apos357, align 4
  call void @special_rescue_moves(i32 %212, i32 %213, %struct.reading_moves* %moves)
  br label %for.inc.364

for.inc.364:                                      ; preds = %if.end.363, %if.then.362
  %214 = load i32, i32* %k, align 4
  %inc365 = add nsw i32 %214, 1
  store i32 %inc365, i32* %k, align 4
  br label %for.cond.353

for.end.366:                                      ; preds = %for.cond.353
  br label %if.end.367

if.end.367:                                       ; preds = %for.end.366, %if.end.289
  %215 = load i32, i32* %str.addr, align 4
  call void @break_chain2_defense_moves(i32 %215, %struct.reading_moves* %moves)
  %216 = load i32, i32* @stackp, align 4
  %217 = load i32, i32* @backfill_depth, align 4
  %cmp368 = icmp sle i32 %216, %217
  br i1 %cmp368, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %if.end.367
  %218 = load i32, i32* %str.addr, align 4
  %arraydecay371 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  call void @special_rescue5_moves(i32 %218, i32* %arraydecay371, %struct.reading_moves* %moves)
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.370, %if.end.367
  %219 = load i32, i32* @stackp, align 4
  %220 = load i32, i32* @backfill2_depth, align 4
  %cmp373 = icmp sle i32 %219, %220
  br i1 %cmp373, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.372
  %221 = load i32, i32* %str.addr, align 4
  call void @break_chain3_moves(i32 %221, %struct.reading_moves* %moves)
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.end.372
  %222 = load i32, i32* %str.addr, align 4
  %223 = load i32, i32* %other, align 4
  %224 = load i8*, i8** %read_function_name, align 8
  %225 = load i32, i32* %saved_num_moves, align 4
  call void @order_moves(i32 %222, %struct.reading_moves* %moves, i32 %223, i8* %224, i32 %225)
  %226 = load i32, i32* %saved_num_moves, align 4
  store i32 %226, i32* %k, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.429, %if.end.376
  %227 = load i32, i32* %k, align 4
  %num378 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %228 = load i32, i32* %num378, align 4
  %cmp379 = icmp slt i32 %227, %228
  br i1 %cmp379, label %for.body.381, label %for.end.431

for.body.381:                                     ; preds = %for.cond.377
  %229 = load i32, i32* %k, align 4
  %idxprom385 = sext i32 %229 to i64
  %pos386 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [50 x i32], [50 x i32]* %pos386, i32 0, i64 %idxprom385
  %230 = load i32, i32* %arrayidx387, align 4
  store i32 %230, i32* %xpos, align 4
  %231 = load i32, i32* %xpos, align 4
  %232 = load i32, i32* %color, align 4
  %233 = load i32, i32* %str.addr, align 4
  %234 = load i32, i32* %komaster.addr, align 4
  %235 = load i32, i32* %kom_pos.addr, align 4
  %236 = load i32, i32* @stackp, align 4
  %237 = load i32, i32* @ko_depth, align 4
  %cmp388 = icmp sle i32 %236, %237
  br i1 %cmp388, label %land.rhs.390, label %land.end.393

land.rhs.390:                                     ; preds = %for.body.381
  %238 = load i32, i32* %savecode, align 4
  %cmp391 = icmp eq i32 %238, 0
  br label %land.end.393

land.end.393:                                     ; preds = %land.rhs.390, %for.body.381
  %239 = phi i1 [ false, %for.body.381 ], [ %cmp391, %land.rhs.390 ]
  %land.ext394 = zext i1 %239 to i32
  %call395 = call i32 @komaster_trymove(i32 %231, i32 %232, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 %233, i32 %234, i32 %235, i32* %new_komaster382, i32* %new_kom_pos383, i32* %ko_move384, i32 %land.ext394)
  %tobool396 = icmp ne i32 %call395, 0
  br i1 %tobool396, label %if.then.397, label %if.end.428

if.then.397:                                      ; preds = %land.end.393
  %240 = load i32, i32* %ko_move384, align 4
  %tobool398 = icmp ne i32 %240, 0
  br i1 %tobool398, label %if.else.421, label %if.then.399

if.then.399:                                      ; preds = %if.then.397
  %241 = load i32, i32* %str.addr, align 4
  %242 = load i32, i32* %new_komaster382, align 4
  %243 = load i32, i32* %new_kom_pos383, align 4
  %call401 = call i32 @do_attack(i32 %241, i32* null, i32 %242, i32 %243)
  store i32 %call401, i32* %acode400, align 4
  call void @popgo()
  br label %do.body.402

do.body.402:                                      ; preds = %if.then.399
  %244 = load i32, i32* %acode400, align 4
  %cmp403 = icmp eq i32 %244, 0
  br i1 %cmp403, label %if.then.405, label %if.else.412

if.then.405:                                      ; preds = %do.body.402
  %245 = load i32*, i32** %move.addr, align 8
  %tobool406 = icmp ne i32* %245, null
  br i1 %tobool406, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %if.then.405
  %246 = load i32, i32* %xpos, align 4
  %247 = load i32*, i32** %move.addr, align 8
  store i32 %246, i32* %247, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %if.then.405
  %248 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool409 = icmp ne %struct.SGFTree_t* %248, null
  br i1 %tobool409, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.408
  %249 = load i8*, i8** %read_function_name, align 8
  %250 = load i32, i32* %q, align 4
  %251 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %249, i32 %250, i32 %251, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.410, %if.end.408
  store i32 5, i32* %retval
  br label %do.end.465

if.else.412:                                      ; preds = %do.body.402
  %252 = load i32, i32* %acode400, align 4
  %sub413 = sub nsw i32 5, %252
  %253 = load i32, i32* %savecode, align 4
  %cmp414 = icmp sgt i32 %sub413, %253
  br i1 %cmp414, label %if.then.416, label %if.end.418

if.then.416:                                      ; preds = %if.else.412
  %254 = load i32, i32* %xpos, align 4
  store i32 %254, i32* %savemove, align 4
  %255 = load i32, i32* %acode400, align 4
  %sub417 = sub nsw i32 5, %255
  store i32 %sub417, i32* %savecode, align 4
  br label %if.end.418

if.end.418:                                       ; preds = %if.then.416, %if.else.412
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418
  br label %do.end.420

do.end.420:                                       ; preds = %if.end.419
  br label %if.end.427

if.else.421:                                      ; preds = %if.then.397
  %256 = load i32, i32* %str.addr, align 4
  %257 = load i32, i32* %new_komaster382, align 4
  %258 = load i32, i32* %new_kom_pos383, align 4
  %call422 = call i32 @do_attack(i32 %256, i32* null, i32 %257, i32 %258)
  %cmp423 = icmp ne i32 %call422, 5
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %if.else.421
  %259 = load i32, i32* %xpos, align 4
  store i32 %259, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.425, %if.else.421
  call void @popgo()
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %do.end.420
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %land.end.393
  br label %for.inc.429

for.inc.429:                                      ; preds = %if.end.428
  %260 = load i32, i32* %k, align 4
  %inc430 = add nsw i32 %260, 1
  store i32 %inc430, i32* %k, align 4
  br label %for.cond.377

for.end.431:                                      ; preds = %for.cond.377
  %261 = load i32, i32* %savecode, align 4
  %cmp432 = icmp ne i32 %261, 0
  br i1 %cmp432, label %if.then.434, label %if.end.450

if.then.434:                                      ; preds = %for.end.431
  br label %do.body.435

do.body.435:                                      ; preds = %if.then.434
  %262 = load i32, i32* %savecode, align 4
  %tobool436 = icmp ne i32 %262, 0
  br i1 %tobool436, label %if.then.437, label %if.else.444

if.then.437:                                      ; preds = %do.body.435
  %263 = load i32*, i32** %move.addr, align 8
  %tobool438 = icmp ne i32* %263, null
  br i1 %tobool438, label %if.then.439, label %if.end.440

if.then.439:                                      ; preds = %if.then.437
  %264 = load i32, i32* %savemove, align 4
  %265 = load i32*, i32** %move.addr, align 8
  store i32 %264, i32* %265, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.439, %if.then.437
  %266 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool441 = icmp ne %struct.SGFTree_t* %266, null
  br i1 %tobool441, label %if.then.442, label %if.end.443

if.then.442:                                      ; preds = %if.end.440
  %267 = load i8*, i8** %read_function_name, align 8
  %268 = load i32, i32* %q, align 4
  %269 = load i32, i32* %savemove, align 4
  %270 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %267, i32 %268, i32 %269, i32 %270, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.442, %if.end.440
  br label %if.end.448

if.else.444:                                      ; preds = %do.body.435
  %271 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool445 = icmp ne %struct.SGFTree_t* %271, null
  br i1 %tobool445, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %if.else.444
  %272 = load i8*, i8** %read_function_name, align 8
  %273 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %272, i32 %273, i32 0, i32 0, i8* null)
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.446, %if.else.444
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.end.443
  %274 = load i32, i32* %savecode, align 4
  store i32 %274, i32* %retval
  br label %do.end.465

do.end.449:                                       ; No predecessors!
  br label %if.end.450

if.end.450:                                       ; preds = %do.end.449, %for.end.431
  br label %do.body.451

do.body.451:                                      ; preds = %if.end.450
  %275 = load i32, i32* %savecode, align 4
  %tobool452 = icmp ne i32 %275, 0
  br i1 %tobool452, label %if.then.453, label %if.else.460

if.then.453:                                      ; preds = %do.body.451
  %276 = load i32*, i32** %move.addr, align 8
  %tobool454 = icmp ne i32* %276, null
  br i1 %tobool454, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %if.then.453
  %277 = load i32, i32* %savemove, align 4
  %278 = load i32*, i32** %move.addr, align 8
  store i32 %277, i32* %278, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.455, %if.then.453
  %279 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool457 = icmp ne %struct.SGFTree_t* %279, null
  br i1 %tobool457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.end.456
  %280 = load i8*, i8** %read_function_name, align 8
  %281 = load i32, i32* %q, align 4
  %282 = load i32, i32* %savemove, align 4
  %283 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %280, i32 %281, i32 %282, i32 %283, i8* null)
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.458, %if.end.456
  br label %if.end.464

if.else.460:                                      ; preds = %do.body.451
  %284 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool461 = icmp ne %struct.SGFTree_t* %284, null
  br i1 %tobool461, label %if.then.462, label %if.end.463

if.then.462:                                      ; preds = %if.else.460
  %285 = load i8*, i8** %read_function_name, align 8
  %286 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %285, i32 %286, i32 0, i32 0, i8* null)
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.462, %if.else.460
  br label %if.end.464

if.end.464:                                       ; preds = %if.end.463, %if.end.459
  %287 = load i32, i32* %savecode, align 4
  store i32 %287, i32* %retval
  br label %do.end.465

do.end.465:                                       ; preds = %if.end.76, %if.end.264, %if.end.411, %if.end.448, %if.end.464
  %288 = load i32, i32* %retval
  ret i32 %288
}

; Function Attrs: nounwind uwtable
define internal i32 @defend3(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [3 x i32], align 4
  %moves = alloca %struct.reading_moves, align 4
  %saved_num_moves = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %k = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  %new_komaster130 = alloca i32, align 4
  %new_kom_pos131 = alloca i32, align 4
  %ko_move132 = alloca i32, align 4
  %acode148 = alloca i32, align 4
  %ss_liberties = alloca i32, align 4
  %ss_libs = alloca [24 x i32], align 16
  %apos = alloca i32, align 4
  %u = alloca i32, align 4
  %apos249 = alloca i32, align 4
  %new_komaster269 = alloca i32, align 4
  %new_kom_pos270 = alloca i32, align 4
  %ko_move271 = alloca i32, align 4
  %acode287 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8** %read_function_name, align 8
  %0 = load i32, i32* %str.addr, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %2 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %color, align 4
  %4 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %4
  store i32 %sub, i32* %other, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1408, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %9)
  %cmp10 = icmp eq i32 %call, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1409, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %call15 = call i32 @findlib(i32 %10, i32 3, i32* %arraydecay)
  store i32 %call15, i32* %liberties, align 4
  %11 = load i32, i32* %liberties, align 4
  %cmp16 = icmp eq i32 %11, 3
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.14
  br label %if.end.22

if.else.19:                                       ; preds = %if.end.14
  %12 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div, 1
  %13 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %13, 20
  %sub21 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1412, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i32 %sub20, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %liberties, align 4
  %cmp23 = icmp slt i32 %14, %15
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom25
  %17 = load i32, i32* %arrayidx26, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %18 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom27
  store i32 %17, i32* %arrayidx28, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %19 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %liberties, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 %21, i32* %num, align 4
  %22 = load i32, i32* %str.addr, align 4
  call void @break_chain_moves(i32 %22, %struct.reading_moves* %moves)
  %23 = load i32, i32* %str.addr, align 4
  call void @break_chain2_efficient_moves(i32 %23, %struct.reading_moves* %moves)
  %24 = load i32, i32* %str.addr, align 4
  %arraydecay32 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %25 = load i32, i32* %liberties, align 4
  %26 = load i32, i32* %color, align 4
  call void @propose_edge_moves(i32 %24, i32* %arraydecay32, i32 %25, %struct.reading_moves* %moves, i32 %26)
  %27 = load i32, i32* %str.addr, align 4
  call void @edge_clamp_moves(i32 %27, %struct.reading_moves* %moves)
  %28 = load i32, i32* @stackp, align 4
  %29 = load i32, i32* @backfill2_depth, align 4
  %cmp33 = icmp sle i32 %28, %29
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end
  %30 = load i32, i32* %str.addr, align 4
  %arraydecay36 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  call void @hane_rescue_moves(i32 %30, i32* %arraydecay36, %struct.reading_moves* %moves)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.end
  %31 = load i32, i32* %str.addr, align 4
  %32 = load i32, i32* %color, align 4
  %33 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %31, %struct.reading_moves* %moves, i32 %32, i8* %33, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.86, %if.end.37
  %34 = load i32, i32* %k, align 4
  %num39 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %35 = load i32, i32* %num39, align 4
  %cmp40 = icmp slt i32 %34, %35
  br i1 %cmp40, label %for.body.42, label %for.end.88

for.body.42:                                      ; preds = %for.cond.38
  %36 = load i32, i32* @stackp, align 4
  %37 = load i32, i32* @branch_depth, align 4
  %cmp43 = icmp sge i32 %36, %37
  br i1 %cmp43, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.body.42
  %38 = load i32, i32* %k, align 4
  %cmp45 = icmp sgt i32 %38, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  br label %for.end.88

if.end.48:                                        ; preds = %land.lhs.true, %for.body.42
  %39 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %39 to i64
  %pos50 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [50 x i32], [50 x i32]* %pos50, i32 0, i64 %idxprom49
  %40 = load i32, i32* %arrayidx51, align 4
  store i32 %40, i32* %xpos, align 4
  %41 = load i32, i32* %xpos, align 4
  %42 = load i32, i32* %color, align 4
  %43 = load i32, i32* %str.addr, align 4
  %44 = load i32, i32* %komaster.addr, align 4
  %45 = load i32, i32* %kom_pos.addr, align 4
  %46 = load i32, i32* @stackp, align 4
  %47 = load i32, i32* @ko_depth, align 4
  %cmp52 = icmp sle i32 %46, %47
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.48
  %48 = load i32, i32* %savecode, align 4
  %cmp54 = icmp eq i32 %48, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.48
  %49 = phi i1 [ false, %if.end.48 ], [ %cmp54, %land.rhs ]
  %land.ext = zext i1 %49 to i32
  %call56 = call i32 @komaster_trymove(i32 %41, i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %43, i32 %44, i32 %45, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool = icmp ne i32 %call56, 0
  br i1 %tobool, label %if.then.57, label %if.end.85

if.then.57:                                       ; preds = %land.end
  %50 = load i32, i32* %ko_move, align 4
  %tobool58 = icmp ne i32 %50, 0
  br i1 %tobool58, label %if.else.78, label %if.then.59

if.then.59:                                       ; preds = %if.then.57
  %51 = load i32, i32* %str.addr, align 4
  %52 = load i32, i32* %new_komaster, align 4
  %53 = load i32, i32* %new_kom_pos, align 4
  %call60 = call i32 @do_attack(i32 %51, i32* null, i32 %52, i32 %53)
  store i32 %call60, i32* %acode, align 4
  call void @popgo()
  br label %do.body

do.body:                                          ; preds = %if.then.59
  %54 = load i32, i32* %acode, align 4
  %cmp61 = icmp eq i32 %54, 0
  br i1 %cmp61, label %if.then.63, label %if.else.70

if.then.63:                                       ; preds = %do.body
  %55 = load i32*, i32** %move.addr, align 8
  %tobool64 = icmp ne i32* %55, null
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.63
  %56 = load i32, i32* %xpos, align 4
  %57 = load i32*, i32** %move.addr, align 8
  store i32 %56, i32* %57, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.63
  %58 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool67 = icmp ne %struct.SGFTree_t* %58, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %59 = load i8*, i8** %read_function_name, align 8
  %60 = load i32, i32* %q, align 4
  %61 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %59, i32 %60, i32 %61, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  store i32 5, i32* %retval
  br label %do.end.342

if.else.70:                                       ; preds = %do.body
  %62 = load i32, i32* %acode, align 4
  %sub71 = sub nsw i32 5, %62
  %63 = load i32, i32* %savecode, align 4
  %cmp72 = icmp sgt i32 %sub71, %63
  br i1 %cmp72, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.else.70
  %64 = load i32, i32* %xpos, align 4
  store i32 %64, i32* %savemove, align 4
  %65 = load i32, i32* %acode, align 4
  %sub75 = sub nsw i32 5, %65
  store i32 %sub75, i32* %savecode, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %do.end

do.end:                                           ; preds = %if.end.77
  br label %if.end.84

if.else.78:                                       ; preds = %if.then.57
  %66 = load i32, i32* %str.addr, align 4
  %67 = load i32, i32* %new_komaster, align 4
  %68 = load i32, i32* %new_kom_pos, align 4
  %call79 = call i32 @do_attack(i32 %66, i32* null, i32 %67, i32 %68)
  %cmp80 = icmp ne i32 %call79, 5
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else.78
  %69 = load i32, i32* %xpos, align 4
  store i32 %69, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.else.78
  call void @popgo()
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %do.end
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %land.end
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %70 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %70, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond.38

for.end.88:                                       ; preds = %if.then.47, %for.cond.38
  %num89 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %71 = load i32, i32* %num89, align 4
  store i32 %71, i32* %saved_num_moves, align 4
  %72 = load i32, i32* @stackp, align 4
  %73 = load i32, i32* @backfill_depth, align 4
  %cmp90 = icmp sle i32 %72, %73
  br i1 %cmp90, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %for.end.88
  %74 = load i32, i32* %str.addr, align 4
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  call void @special_rescue3_moves(i32 %74, i32* %arraydecay93, %struct.reading_moves* %moves)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %for.end.88
  %75 = load i32, i32* @stackp, align 4
  %76 = load i32, i32* @depth, align 4
  %cmp95 = icmp sle i32 %75, %76
  br i1 %cmp95, label %if.then.97, label %if.end.107

if.then.97:                                       ; preds = %if.end.94
  store i32 0, i32* %k, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.104, %if.then.97
  %77 = load i32, i32* %k, align 4
  %78 = load i32, i32* %liberties, align 4
  %cmp99 = icmp slt i32 %77, %78
  br i1 %cmp99, label %for.body.101, label %for.end.106

for.body.101:                                     ; preds = %for.cond.98
  %79 = load i32, i32* %str.addr, align 4
  %80 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %80 to i64
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom102
  %81 = load i32, i32* %arrayidx103, align 4
  call void @special_rescue_moves(i32 %79, i32 %81, %struct.reading_moves* %moves)
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.101
  %82 = load i32, i32* %k, align 4
  %inc105 = add nsw i32 %82, 1
  store i32 %inc105, i32* %k, align 4
  br label %for.cond.98

for.end.106:                                      ; preds = %for.cond.98
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %if.end.94
  %83 = load i32, i32* @level, align 4
  %cmp108 = icmp sge i32 %83, 10
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.114

land.lhs.true.110:                                ; preds = %if.end.107
  %84 = load i32, i32* @stackp, align 4
  %85 = load i32, i32* @backfill2_depth, align 4
  %cmp111 = icmp sle i32 %84, %85
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.110
  %86 = load i32, i32* %str.addr, align 4
  call void @superstring_breakchain_moves(i32 %86, i32 4, %struct.reading_moves* %moves)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %land.lhs.true.110, %if.end.107
  %87 = load i32, i32* @stackp, align 4
  %88 = load i32, i32* @backfill2_depth, align 4
  %cmp115 = icmp sle i32 %87, %88
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.114
  %89 = load i32, i32* %str.addr, align 4
  call void @break_chain2_defense_moves(i32 %89, %struct.reading_moves* %moves)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %if.end.114
  %90 = load i32, i32* @stackp, align 4
  %91 = load i32, i32* @backfill_depth, align 4
  %cmp119 = icmp sle i32 %90, %91
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.118
  %92 = load i32, i32* %str.addr, align 4
  %arraydecay122 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  call void @special_rescue5_moves(i32 %92, i32* %arraydecay122, %struct.reading_moves* %moves)
  %93 = load i32, i32* %str.addr, align 4
  %arraydecay123 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  call void @special_rescue6_moves(i32 %93, i32* %arraydecay123, %struct.reading_moves* %moves)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.121, %if.end.118
  %94 = load i32, i32* %str.addr, align 4
  %95 = load i32, i32* %other, align 4
  %96 = load i8*, i8** %read_function_name, align 8
  %97 = load i32, i32* %saved_num_moves, align 4
  call void @order_moves(i32 %94, %struct.reading_moves* %moves, i32 %95, i8* %96, i32 %97)
  %98 = load i32, i32* %saved_num_moves, align 4
  store i32 %98, i32* %k, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.177, %if.end.124
  %99 = load i32, i32* %k, align 4
  %num126 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %100 = load i32, i32* %num126, align 4
  %cmp127 = icmp slt i32 %99, %100
  br i1 %cmp127, label %for.body.129, label %for.end.179

for.body.129:                                     ; preds = %for.cond.125
  %101 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %101 to i64
  %pos134 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [50 x i32], [50 x i32]* %pos134, i32 0, i64 %idxprom133
  %102 = load i32, i32* %arrayidx135, align 4
  store i32 %102, i32* %xpos, align 4
  %103 = load i32, i32* %xpos, align 4
  %104 = load i32, i32* %color, align 4
  %105 = load i32, i32* %str.addr, align 4
  %106 = load i32, i32* %komaster.addr, align 4
  %107 = load i32, i32* %kom_pos.addr, align 4
  %108 = load i32, i32* @stackp, align 4
  %109 = load i32, i32* @ko_depth, align 4
  %cmp136 = icmp sle i32 %108, %109
  br i1 %cmp136, label %land.rhs.138, label %land.end.141

land.rhs.138:                                     ; preds = %for.body.129
  %110 = load i32, i32* %savecode, align 4
  %cmp139 = icmp eq i32 %110, 0
  br label %land.end.141

land.end.141:                                     ; preds = %land.rhs.138, %for.body.129
  %111 = phi i1 [ false, %for.body.129 ], [ %cmp139, %land.rhs.138 ]
  %land.ext142 = zext i1 %111 to i32
  %call143 = call i32 @komaster_trymove(i32 %103, i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %105, i32 %106, i32 %107, i32* %new_komaster130, i32* %new_kom_pos131, i32* %ko_move132, i32 %land.ext142)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.176

if.then.145:                                      ; preds = %land.end.141
  %112 = load i32, i32* %ko_move132, align 4
  %tobool146 = icmp ne i32 %112, 0
  br i1 %tobool146, label %if.else.169, label %if.then.147

if.then.147:                                      ; preds = %if.then.145
  %113 = load i32, i32* %str.addr, align 4
  %114 = load i32, i32* %new_komaster130, align 4
  %115 = load i32, i32* %new_kom_pos131, align 4
  %call149 = call i32 @do_attack(i32 %113, i32* null, i32 %114, i32 %115)
  store i32 %call149, i32* %acode148, align 4
  call void @popgo()
  br label %do.body.150

do.body.150:                                      ; preds = %if.then.147
  %116 = load i32, i32* %acode148, align 4
  %cmp151 = icmp eq i32 %116, 0
  br i1 %cmp151, label %if.then.153, label %if.else.160

if.then.153:                                      ; preds = %do.body.150
  %117 = load i32*, i32** %move.addr, align 8
  %tobool154 = icmp ne i32* %117, null
  br i1 %tobool154, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.then.153
  %118 = load i32, i32* %xpos, align 4
  %119 = load i32*, i32** %move.addr, align 8
  store i32 %118, i32* %119, align 4
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.then.153
  %120 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool157 = icmp ne %struct.SGFTree_t* %120, null
  br i1 %tobool157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  %121 = load i8*, i8** %read_function_name, align 8
  %122 = load i32, i32* %q, align 4
  %123 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %121, i32 %122, i32 %123, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  store i32 5, i32* %retval
  br label %do.end.342

if.else.160:                                      ; preds = %do.body.150
  %124 = load i32, i32* %acode148, align 4
  %sub161 = sub nsw i32 5, %124
  %125 = load i32, i32* %savecode, align 4
  %cmp162 = icmp sgt i32 %sub161, %125
  br i1 %cmp162, label %if.then.164, label %if.end.166

if.then.164:                                      ; preds = %if.else.160
  %126 = load i32, i32* %xpos, align 4
  store i32 %126, i32* %savemove, align 4
  %127 = load i32, i32* %acode148, align 4
  %sub165 = sub nsw i32 5, %127
  store i32 %sub165, i32* %savecode, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.164, %if.else.160
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %if.end.175

if.else.169:                                      ; preds = %if.then.145
  %128 = load i32, i32* %str.addr, align 4
  %129 = load i32, i32* %new_komaster130, align 4
  %130 = load i32, i32* %new_kom_pos131, align 4
  %call170 = call i32 @do_attack(i32 %128, i32* null, i32 %129, i32 %130)
  %cmp171 = icmp ne i32 %call170, 5
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %if.else.169
  %131 = load i32, i32* %xpos, align 4
  store i32 %131, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %if.else.169
  call void @popgo()
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %do.end.168
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %land.end.141
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %132 = load i32, i32* %k, align 4
  %inc178 = add nsw i32 %132, 1
  store i32 %inc178, i32* %k, align 4
  br label %for.cond.125

for.end.179:                                      ; preds = %for.cond.125
  %num180 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %133 = load i32, i32* %num180, align 4
  store i32 %133, i32* %saved_num_moves, align 4
  %134 = load i32, i32* @level, align 4
  %cmp181 = icmp sge i32 %134, 10
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.259

land.lhs.true.183:                                ; preds = %for.end.179
  %135 = load i32, i32* @stackp, align 4
  %136 = load i32, i32* @backfill2_depth, align 4
  %cmp184 = icmp sle i32 %135, %136
  br i1 %cmp184, label %if.then.186, label %if.end.259

if.then.186:                                      ; preds = %land.lhs.true.183
  %137 = load i32, i32* %str.addr, align 4
  %arraydecay187 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i32 0
  call void @find_superstring_liberties(i32 %137, i32* %ss_liberties, i32* %arraydecay187, i32 3)
  store i32 0, i32* %k, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.242, %if.then.186
  %138 = load i32, i32* %k, align 4
  %139 = load i32, i32* %ss_liberties, align 4
  %cmp189 = icmp slt i32 %138, %139
  br i1 %cmp189, label %for.body.191, label %for.end.244

for.body.191:                                     ; preds = %for.cond.188
  %140 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %140 to i64
  %arrayidx193 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom192
  %141 = load i32, i32* %arrayidx193, align 4
  store i32 %141, i32* %apos, align 4
  %142 = load i32, i32* %apos, align 4
  %143 = load i32, i32* %str.addr, align 4
  %call194 = call i32 @liberty_of_string(i32 %142, i32 %143)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %for.body.191
  br label %for.inc.242

if.end.197:                                       ; preds = %for.body.191
  %144 = load i32, i32* %apos, align 4
  %145 = load i32, i32* %color, align 4
  %call198 = call i32 @approxlib(i32 %144, i32 %145, i32 2, i32* null)
  %cmp199 = icmp sgt i32 %call198, 1
  br i1 %cmp199, label %if.then.201, label %if.end.241

if.then.201:                                      ; preds = %if.end.197
  br label %do.body.202

do.body.202:                                      ; preds = %if.then.201
  store i32 0, i32* %u, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.218, %do.body.202
  %146 = load i32, i32* %u, align 4
  %num204 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %147 = load i32, i32* %num204, align 4
  %cmp205 = icmp slt i32 %146, %147
  br i1 %cmp205, label %for.body.207, label %for.end.220

for.body.207:                                     ; preds = %for.cond.203
  %148 = load i32, i32* %u, align 4
  %idxprom208 = sext i32 %148 to i64
  %pos209 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [50 x i32], [50 x i32]* %pos209, i32 0, i64 %idxprom208
  %149 = load i32, i32* %arrayidx210, align 4
  %150 = load i32, i32* %apos, align 4
  %cmp211 = icmp eq i32 %149, %150
  br i1 %cmp211, label %if.then.213, label %if.end.217

if.then.213:                                      ; preds = %for.body.207
  %151 = load i32, i32* %u, align 4
  %idxprom214 = sext i32 %151 to i64
  %score215 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [50 x i32], [50 x i32]* %score215, i32 0, i64 %idxprom214
  %152 = load i32, i32* %arrayidx216, align 4
  %add = add nsw i32 %152, 0
  store i32 %add, i32* %arrayidx216, align 4
  br label %for.end.220

if.end.217:                                       ; preds = %for.body.207
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %153 = load i32, i32* %u, align 4
  %inc219 = add nsw i32 %153, 1
  store i32 %inc219, i32* %u, align 4
  br label %for.cond.203

for.end.220:                                      ; preds = %if.then.213, %for.cond.203
  %154 = load i32, i32* %u, align 4
  %num221 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %155 = load i32, i32* %num221, align 4
  %cmp222 = icmp eq i32 %154, %155
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.239

land.lhs.true.224:                                ; preds = %for.end.220
  %num225 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %156 = load i32, i32* %num225, align 4
  %cmp226 = icmp slt i32 %156, 50
  br i1 %cmp226, label %if.then.228, label %if.end.239

if.then.228:                                      ; preds = %land.lhs.true.224
  %157 = load i32, i32* %apos, align 4
  %num229 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %158 = load i32, i32* %num229, align 4
  %idxprom230 = sext i32 %158 to i64
  %pos231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [50 x i32], [50 x i32]* %pos231, i32 0, i64 %idxprom230
  store i32 %157, i32* %arrayidx232, align 4
  %num233 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %159 = load i32, i32* %num233, align 4
  %idxprom234 = sext i32 %159 to i64
  %score235 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [50 x i32], [50 x i32]* %score235, i32 0, i64 %idxprom234
  store i32 0, i32* %arrayidx236, align 4
  %num237 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %160 = load i32, i32* %num237, align 4
  %inc238 = add nsw i32 %160, 1
  store i32 %inc238, i32* %num237, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.228, %land.lhs.true.224, %for.end.220
  br label %do.end.240

do.end.240:                                       ; preds = %if.end.239
  br label %if.end.241

if.end.241:                                       ; preds = %do.end.240, %if.end.197
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241, %if.then.196
  %161 = load i32, i32* %k, align 4
  %inc243 = add nsw i32 %161, 1
  store i32 %inc243, i32* %k, align 4
  br label %for.cond.188

for.end.244:                                      ; preds = %for.cond.188
  store i32 0, i32* %k, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.256, %for.end.244
  %162 = load i32, i32* %k, align 4
  %163 = load i32, i32* %ss_liberties, align 4
  %cmp246 = icmp slt i32 %162, %163
  br i1 %cmp246, label %for.body.248, label %for.end.258

for.body.248:                                     ; preds = %for.cond.245
  %164 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %164 to i64
  %arrayidx251 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom250
  %165 = load i32, i32* %arrayidx251, align 4
  store i32 %165, i32* %apos249, align 4
  %166 = load i32, i32* %apos249, align 4
  %167 = load i32, i32* %str.addr, align 4
  %call252 = call i32 @liberty_of_string(i32 %166, i32 %167)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %for.body.248
  br label %for.inc.256

if.end.255:                                       ; preds = %for.body.248
  %168 = load i32, i32* %str.addr, align 4
  %169 = load i32, i32* %apos249, align 4
  call void @special_rescue_moves(i32 %168, i32 %169, %struct.reading_moves* %moves)
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255, %if.then.254
  %170 = load i32, i32* %k, align 4
  %inc257 = add nsw i32 %170, 1
  store i32 %inc257, i32* %k, align 4
  br label %for.cond.245

for.end.258:                                      ; preds = %for.cond.245
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %land.lhs.true.183, %for.end.179
  %171 = load i32, i32* @stackp, align 4
  %172 = load i32, i32* @backfill2_depth, align 4
  %cmp260 = icmp sle i32 %171, %172
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.259
  %173 = load i32, i32* %str.addr, align 4
  call void @break_chain3_moves(i32 %173, %struct.reading_moves* %moves)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.end.259
  %174 = load i32, i32* %str.addr, align 4
  %175 = load i32, i32* %other, align 4
  %176 = load i8*, i8** %read_function_name, align 8
  %177 = load i32, i32* %saved_num_moves, align 4
  call void @order_moves(i32 %174, %struct.reading_moves* %moves, i32 %175, i8* %176, i32 %177)
  %178 = load i32, i32* %saved_num_moves, align 4
  store i32 %178, i32* %k, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.316, %if.end.263
  %179 = load i32, i32* %k, align 4
  %num265 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %180 = load i32, i32* %num265, align 4
  %cmp266 = icmp slt i32 %179, %180
  br i1 %cmp266, label %for.body.268, label %for.end.318

for.body.268:                                     ; preds = %for.cond.264
  %181 = load i32, i32* %k, align 4
  %idxprom272 = sext i32 %181 to i64
  %pos273 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [50 x i32], [50 x i32]* %pos273, i32 0, i64 %idxprom272
  %182 = load i32, i32* %arrayidx274, align 4
  store i32 %182, i32* %xpos, align 4
  %183 = load i32, i32* %xpos, align 4
  %184 = load i32, i32* %color, align 4
  %185 = load i32, i32* %str.addr, align 4
  %186 = load i32, i32* %komaster.addr, align 4
  %187 = load i32, i32* %kom_pos.addr, align 4
  %188 = load i32, i32* @stackp, align 4
  %189 = load i32, i32* @ko_depth, align 4
  %cmp275 = icmp sle i32 %188, %189
  br i1 %cmp275, label %land.rhs.277, label %land.end.280

land.rhs.277:                                     ; preds = %for.body.268
  %190 = load i32, i32* %savecode, align 4
  %cmp278 = icmp eq i32 %190, 0
  br label %land.end.280

land.end.280:                                     ; preds = %land.rhs.277, %for.body.268
  %191 = phi i1 [ false, %for.body.268 ], [ %cmp278, %land.rhs.277 ]
  %land.ext281 = zext i1 %191 to i32
  %call282 = call i32 @komaster_trymove(i32 %183, i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %185, i32 %186, i32 %187, i32* %new_komaster269, i32* %new_kom_pos270, i32* %ko_move271, i32 %land.ext281)
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %if.then.284, label %if.end.315

if.then.284:                                      ; preds = %land.end.280
  %192 = load i32, i32* %ko_move271, align 4
  %tobool285 = icmp ne i32 %192, 0
  br i1 %tobool285, label %if.else.308, label %if.then.286

if.then.286:                                      ; preds = %if.then.284
  %193 = load i32, i32* %str.addr, align 4
  %194 = load i32, i32* %new_komaster269, align 4
  %195 = load i32, i32* %new_kom_pos270, align 4
  %call288 = call i32 @do_attack(i32 %193, i32* null, i32 %194, i32 %195)
  store i32 %call288, i32* %acode287, align 4
  call void @popgo()
  br label %do.body.289

do.body.289:                                      ; preds = %if.then.286
  %196 = load i32, i32* %acode287, align 4
  %cmp290 = icmp eq i32 %196, 0
  br i1 %cmp290, label %if.then.292, label %if.else.299

if.then.292:                                      ; preds = %do.body.289
  %197 = load i32*, i32** %move.addr, align 8
  %tobool293 = icmp ne i32* %197, null
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.then.292
  %198 = load i32, i32* %xpos, align 4
  %199 = load i32*, i32** %move.addr, align 8
  store i32 %198, i32* %199, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %if.then.292
  %200 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool296 = icmp ne %struct.SGFTree_t* %200, null
  br i1 %tobool296, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.295
  %201 = load i8*, i8** %read_function_name, align 8
  %202 = load i32, i32* %q, align 4
  %203 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %201, i32 %202, i32 %203, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %if.end.295
  store i32 5, i32* %retval
  br label %do.end.342

if.else.299:                                      ; preds = %do.body.289
  %204 = load i32, i32* %acode287, align 4
  %sub300 = sub nsw i32 5, %204
  %205 = load i32, i32* %savecode, align 4
  %cmp301 = icmp sgt i32 %sub300, %205
  br i1 %cmp301, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.else.299
  %206 = load i32, i32* %xpos, align 4
  store i32 %206, i32* %savemove, align 4
  %207 = load i32, i32* %acode287, align 4
  %sub304 = sub nsw i32 5, %207
  store i32 %sub304, i32* %savecode, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.else.299
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  br label %if.end.314

if.else.308:                                      ; preds = %if.then.284
  %208 = load i32, i32* %str.addr, align 4
  %209 = load i32, i32* %new_komaster269, align 4
  %210 = load i32, i32* %new_kom_pos270, align 4
  %call309 = call i32 @do_attack(i32 %208, i32* null, i32 %209, i32 %210)
  %cmp310 = icmp ne i32 %call309, 5
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.else.308
  %211 = load i32, i32* %xpos, align 4
  store i32 %211, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.else.308
  call void @popgo()
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %do.end.307
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %land.end.280
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %212 = load i32, i32* %k, align 4
  %inc317 = add nsw i32 %212, 1
  store i32 %inc317, i32* %k, align 4
  br label %for.cond.264

for.end.318:                                      ; preds = %for.cond.264
  %213 = load i32, i32* %savecode, align 4
  %cmp319 = icmp ne i32 %213, 0
  br i1 %cmp319, label %if.then.321, label %if.end.337

if.then.321:                                      ; preds = %for.end.318
  br label %do.body.322

do.body.322:                                      ; preds = %if.then.321
  %214 = load i32, i32* %savecode, align 4
  %tobool323 = icmp ne i32 %214, 0
  br i1 %tobool323, label %if.then.324, label %if.else.331

if.then.324:                                      ; preds = %do.body.322
  %215 = load i32*, i32** %move.addr, align 8
  %tobool325 = icmp ne i32* %215, null
  br i1 %tobool325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %if.then.324
  %216 = load i32, i32* %savemove, align 4
  %217 = load i32*, i32** %move.addr, align 8
  store i32 %216, i32* %217, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %if.then.324
  %218 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool328 = icmp ne %struct.SGFTree_t* %218, null
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.end.327
  %219 = load i8*, i8** %read_function_name, align 8
  %220 = load i32, i32* %q, align 4
  %221 = load i32, i32* %savemove, align 4
  %222 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %219, i32 %220, i32 %221, i32 %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %if.end.327
  br label %if.end.335

if.else.331:                                      ; preds = %do.body.322
  %223 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool332 = icmp ne %struct.SGFTree_t* %223, null
  br i1 %tobool332, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.else.331
  %224 = load i8*, i8** %read_function_name, align 8
  %225 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %224, i32 %225, i32 0, i32 0, i8* null)
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.333, %if.else.331
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.330
  %226 = load i32, i32* %savecode, align 4
  store i32 %226, i32* %retval
  br label %do.end.342

do.end.336:                                       ; No predecessors!
  br label %if.end.337

if.end.337:                                       ; preds = %do.end.336, %for.end.318
  br label %do.body.338

do.body.338:                                      ; preds = %if.end.337
  %227 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool339 = icmp ne %struct.SGFTree_t* %227, null
  br i1 %tobool339, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %do.body.338
  %228 = load i8*, i8** %read_function_name, align 8
  %229 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %228, i32 %229, i32 0, i32 0, i8* null)
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.340, %do.body.338
  store i32 0, i32* %retval
  br label %do.end.342

do.end.342:                                       ; preds = %if.end.69, %if.end.159, %if.end.298, %if.end.335, %if.end.341
  %230 = load i32, i32* %retval
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define internal i32 @defend4(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [4 x i32], align 16
  %moves = alloca %struct.reading_moves, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %k = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8** %read_function_name, align 8
  %0 = load i32, i32* %str.addr, align 4
  store i32 %0, i32* %q, align 4
  %1 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %2 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %color, align 4
  %4 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %4
  store i32 %sub, i32* %other, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1611, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %9)
  %cmp10 = icmp eq i32 %call, 4
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  br label %if.end.14

if.else.13:                                       ; preds = %if.end
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1612, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call15 = call i32 @findlib(i32 %10, i32 4, i32* %arraydecay)
  store i32 %call15, i32* %liberties, align 4
  %11 = load i32, i32* %liberties, align 4
  %cmp16 = icmp eq i32 %11, 4
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.end.14
  br label %if.end.22

if.else.19:                                       ; preds = %if.end.14
  %12 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %12, 20
  %sub20 = sub nsw i32 %div, 1
  %13 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %13, 20
  %sub21 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1615, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i32 %sub20, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.22
  %14 = load i32, i32* %k, align 4
  %15 = load i32, i32* %liberties, align 4
  %cmp23 = icmp slt i32 %14, %15
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom25
  %17 = load i32, i32* %arrayidx26, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %18 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom27
  store i32 %17, i32* %arrayidx28, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %19 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %liberties, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 %21, i32* %num, align 4
  %22 = load i32, i32* %str.addr, align 4
  call void @break_chain_moves(i32 %22, %struct.reading_moves* %moves)
  %23 = load i32, i32* %str.addr, align 4
  call void @break_chain2_efficient_moves(i32 %23, %struct.reading_moves* %moves)
  %24 = load i32, i32* @stackp, align 4
  %25 = load i32, i32* @backfill_depth, align 4
  %cmp32 = icmp sle i32 %24, %25
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %26 = load i32, i32* %str.addr, align 4
  call void @break_chain2_defense_moves(i32 %26, %struct.reading_moves* %moves)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end
  %27 = load i32, i32* %str.addr, align 4
  %28 = load i32, i32* %color, align 4
  %29 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %27, %struct.reading_moves* %moves, i32 %28, i8* %29, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.84, %if.end.35
  %30 = load i32, i32* %k, align 4
  %num37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %31 = load i32, i32* %num37, align 4
  %cmp38 = icmp slt i32 %30, %31
  br i1 %cmp38, label %for.body.40, label %for.end.86

for.body.40:                                      ; preds = %for.cond.36
  %32 = load i32, i32* @stackp, align 4
  %33 = load i32, i32* @branch_depth, align 4
  %cmp41 = icmp sge i32 %32, %33
  br i1 %cmp41, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body.40
  %34 = load i32, i32* %k, align 4
  %cmp43 = icmp sgt i32 %34, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true
  br label %for.end.86

if.end.46:                                        ; preds = %land.lhs.true, %for.body.40
  %35 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %35 to i64
  %pos48 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [50 x i32], [50 x i32]* %pos48, i32 0, i64 %idxprom47
  %36 = load i32, i32* %arrayidx49, align 4
  store i32 %36, i32* %xpos, align 4
  %37 = load i32, i32* %xpos, align 4
  %38 = load i32, i32* %color, align 4
  %39 = load i32, i32* %str.addr, align 4
  %40 = load i32, i32* %komaster.addr, align 4
  %41 = load i32, i32* %kom_pos.addr, align 4
  %42 = load i32, i32* @stackp, align 4
  %43 = load i32, i32* @ko_depth, align 4
  %cmp50 = icmp sle i32 %42, %43
  br i1 %cmp50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.46
  %44 = load i32, i32* %savecode, align 4
  %cmp52 = icmp eq i32 %44, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.46
  %45 = phi i1 [ false, %if.end.46 ], [ %cmp52, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  %call54 = call i32 @komaster_trymove(i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %39, i32 %40, i32 %41, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool = icmp ne i32 %call54, 0
  br i1 %tobool, label %if.then.55, label %if.end.83

if.then.55:                                       ; preds = %land.end
  %46 = load i32, i32* %ko_move, align 4
  %tobool56 = icmp ne i32 %46, 0
  br i1 %tobool56, label %if.else.76, label %if.then.57

if.then.57:                                       ; preds = %if.then.55
  %47 = load i32, i32* %str.addr, align 4
  %48 = load i32, i32* %new_komaster, align 4
  %49 = load i32, i32* %new_kom_pos, align 4
  %call58 = call i32 @do_attack(i32 %47, i32* null, i32 %48, i32 %49)
  store i32 %call58, i32* %acode, align 4
  call void @popgo()
  br label %do.body

do.body:                                          ; preds = %if.then.57
  %50 = load i32, i32* %acode, align 4
  %cmp59 = icmp eq i32 %50, 0
  br i1 %cmp59, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %do.body
  %51 = load i32*, i32** %move.addr, align 8
  %tobool62 = icmp ne i32* %51, null
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.61
  %52 = load i32, i32* %xpos, align 4
  %53 = load i32*, i32** %move.addr, align 8
  store i32 %52, i32* %53, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.then.61
  %54 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool65 = icmp ne %struct.SGFTree_t* %54, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.64
  %55 = load i8*, i8** %read_function_name, align 8
  %56 = load i32, i32* %q, align 4
  %57 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %55, i32 %56, i32 %57, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.64
  store i32 5, i32* %retval
  br label %do.end.110

if.else.68:                                       ; preds = %do.body
  %58 = load i32, i32* %acode, align 4
  %sub69 = sub nsw i32 5, %58
  %59 = load i32, i32* %savecode, align 4
  %cmp70 = icmp sgt i32 %sub69, %59
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else.68
  %60 = load i32, i32* %xpos, align 4
  store i32 %60, i32* %savemove, align 4
  %61 = load i32, i32* %acode, align 4
  %sub73 = sub nsw i32 5, %61
  store i32 %sub73, i32* %savecode, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %do.end

do.end:                                           ; preds = %if.end.75
  br label %if.end.82

if.else.76:                                       ; preds = %if.then.55
  %62 = load i32, i32* %str.addr, align 4
  %63 = load i32, i32* %new_komaster, align 4
  %64 = load i32, i32* %new_kom_pos, align 4
  %call77 = call i32 @do_attack(i32 %62, i32* null, i32 %63, i32 %64)
  %cmp78 = icmp ne i32 %call77, 5
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.else.76
  %65 = load i32, i32* %xpos, align 4
  store i32 %65, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.else.76
  call void @popgo()
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %do.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.end
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %66 = load i32, i32* %k, align 4
  %inc85 = add nsw i32 %66, 1
  store i32 %inc85, i32* %k, align 4
  br label %for.cond.36

for.end.86:                                       ; preds = %if.then.45, %for.cond.36
  %67 = load i32, i32* %savecode, align 4
  %cmp87 = icmp ne i32 %67, 0
  br i1 %cmp87, label %if.then.89, label %if.end.105

if.then.89:                                       ; preds = %for.end.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %68 = load i32, i32* %savecode, align 4
  %tobool91 = icmp ne i32 %68, 0
  br i1 %tobool91, label %if.then.92, label %if.else.99

if.then.92:                                       ; preds = %do.body.90
  %69 = load i32*, i32** %move.addr, align 8
  %tobool93 = icmp ne i32* %69, null
  br i1 %tobool93, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.92
  %70 = load i32, i32* %savemove, align 4
  %71 = load i32*, i32** %move.addr, align 8
  store i32 %70, i32* %71, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.then.92
  %72 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool96 = icmp ne %struct.SGFTree_t* %72, null
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.95
  %73 = load i8*, i8** %read_function_name, align 8
  %74 = load i32, i32* %q, align 4
  %75 = load i32, i32* %savemove, align 4
  %76 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %73, i32 %74, i32 %75, i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.95
  br label %if.end.103

if.else.99:                                       ; preds = %do.body.90
  %77 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool100 = icmp ne %struct.SGFTree_t* %77, null
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.else.99
  %78 = load i8*, i8** %read_function_name, align 8
  %79 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %78, i32 %79, i32 0, i32 0, i8* null)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.else.99
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.98
  %80 = load i32, i32* %savecode, align 4
  store i32 %80, i32* %retval
  br label %do.end.110

do.end.104:                                       ; No predecessors!
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %for.end.86
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.105
  %81 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool107 = icmp ne %struct.SGFTree_t* %81, null
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %do.body.106
  %82 = load i8*, i8** %read_function_name, align 8
  %83 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %82, i32 %83, i32 0, i32 0, i8* null)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %do.body.106
  store i32 0, i32* %retval
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.67, %if.end.103, %if.end.109
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal void @break_chain_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %r = alloca i32, align 4
  %xpos = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %0, i32* %arraydecay, i32 1)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %1 = load i32, i32* %r, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 @findlib(i32 %4, i32 1, i32* %xpos)
  br label %do.body

do.body:                                          ; preds = %for.body
  store i32 0, i32* %u, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %do.body
  %5 = load i32, i32* %u, align 4
  %6 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %6, i32 0, i32 2
  %7 = load i32, i32* %num, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %u, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %9, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom5
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %xpos, align 4
  %cmp7 = icmp eq i32 %10, %11
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %12 = load i32, i32* %u, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %arrayidx9, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %u, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.2

for.end:                                          ; preds = %if.then, %for.cond.2
  %16 = load i32, i32* %u, align 4
  %17 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num10 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %18 = load i32, i32* %num10, align 4
  %cmp11 = icmp eq i32 %16, %18
  br i1 %cmp11, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.end
  %19 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num12 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %19, i32 0, i32 2
  %20 = load i32, i32* %num12, align 4
  %cmp13 = icmp slt i32 %20, 50
  br i1 %cmp13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %xpos, align 4
  %22 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num15 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %22, i32 0, i32 2
  %23 = load i32, i32* %num15, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos17 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %24, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [50 x i32], [50 x i32]* %pos17, i32 0, i64 %idxprom16
  store i32 %21, i32* %arrayidx18, align 4
  %25 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num19 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %25, i32 0, i32 2
  %26 = load i32, i32* %num19, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score21 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %27, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [50 x i32], [50 x i32]* %score21, i32 0, i64 %idxprom20
  store i32 1, i32* %arrayidx22, align 4
  %28 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num23 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %28, i32 0, i32 2
  %29 = load i32, i32* %num23, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %num23, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.14, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.25
  br label %for.inc.26

for.inc.26:                                       ; preds = %do.end
  %30 = load i32, i32* %r, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %r, align 4
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_up_snapback_moves(i32 %str, i32 %lib, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %lib.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %libs2 = alloca [2 x i32], align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %lib, i32* %lib.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub2 = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4490, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* @stackp, align 4
  %7 = load i32, i32* @backfill_depth, align 4
  %cmp4 = icmp sle i32 %6, %7
  br i1 %cmp4, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %str.addr, align 4
  %call6 = call i32 @countstones(i32 %8)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.48

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %lib.addr, align 4
  %10 = load i32, i32* %other, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i32 0
  %call10 = call i32 @approxlib(i32 %9, i32 %10, i32 2, i32* %arraydecay)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.48

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %11 = load i32, i32* %arrayidx14, align 4
  %12 = load i32, i32* %color, align 4
  %call15 = call i32 @is_self_atari(i32 %11, i32 %12)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.48, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.13
  br label %do.body

do.body:                                          ; preds = %if.then.16
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %13 = load i32, i32* %u, align 4
  %14 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 2
  %15 = load i32, i32* %num, align 4
  %cmp17 = icmp slt i32 %13, %15
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %u, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %19 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %18, %19
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %for.body
  %20 = load i32, i32* %u, align 4
  %idxprom25 = sext i32 %20 to i64
  %21 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  %add = add nsw i32 %22, 0
  store i32 %add, i32* %arrayidx26, align 4
  br label %for.end

if.end.27:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %23 = load i32, i32* %u, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.24, %for.cond
  %24 = load i32, i32* %u, align 4
  %25 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num28 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %25, i32 0, i32 2
  %26 = load i32, i32* %num28, align 4
  %cmp29 = icmp eq i32 %24, %26
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.47

land.lhs.true.31:                                 ; preds = %for.end
  %27 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num32 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %27, i32 0, i32 2
  %28 = load i32, i32* %num32, align 4
  %cmp33 = icmp slt i32 %28, 50
  br i1 %cmp33, label %if.then.35, label %if.end.47

if.then.35:                                       ; preds = %land.lhs.true.31
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %29 = load i32, i32* %arrayidx36, align 4
  %30 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %30, i32 0, i32 2
  %31 = load i32, i32* %num37, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos39 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %32, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [50 x i32], [50 x i32]* %pos39, i32 0, i64 %idxprom38
  store i32 %29, i32* %arrayidx40, align 4
  %33 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num41 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %33, i32 0, i32 2
  %34 = load i32, i32* %num41, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score43 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %35, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [50 x i32], [50 x i32]* %score43, i32 0, i64 %idxprom42
  store i32 0, i32* %arrayidx44, align 4
  %36 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num45 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %36, i32 0, i32 2
  %37 = load i32, i32* %num45, align 4
  %inc46 = add nsw i32 %37, 1
  store i32 %inc46, i32* %num45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.35, %land.lhs.true.31, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.47
  br label %if.end.48

if.end.48:                                        ; preds = %do.end, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @order_moves(i32 %str, %struct.reading_moves* %moves, i32 %color, i8* %funcname, i32 %first_move) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color.addr = alloca i32, align 4
  %funcname.addr = alloca i8*, align 8
  %first_move.addr = alloca i32, align 4
  %string_color = alloca i32, align 4
  %string_libs = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %maxscore = alloca i32, align 4
  %max_at = alloca i32, align 4
  %move = alloca i32, align 4
  %number_edges = alloca i32, align 4
  %number_same_string = alloca i32, align 4
  %number_own = alloca i32, align 4
  %number_opponent = alloca i32, align 4
  %captured_stones = alloca i32, align 4
  %threatened_stones = alloca i32, align 4
  %saved_stones = alloca i32, align 4
  %number_open = alloca i32, align 4
  %libs = alloca i32, align 4
  %libs124 = alloca i32, align 4
  %safe_atari = alloca i32, align 4
  %liberties = alloca i32, align 4
  %temp = alloca i32, align 4
  %buf = alloca [500 x i8], align 16
  %pos310 = alloca i8*, align 8
  %chars = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %first_move, i32* %first_move.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %string_color, align 4
  %2 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %2)
  store i32 %call, i32* %string_libs, align 4
  %3 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %3, i32 0, i32 2
  %4 = load i32, i32* %num, align 4
  %5 = load i32, i32* %first_move.addr, align 4
  %sub = sub nsw i32 %4, %5
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.346

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %first_move.addr, align 4
  store i32 %6, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %r, align 4
  %8 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num2 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %8, i32 0, i32 2
  %9 = load i32, i32* %num2, align 4
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %r, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %11, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  store i32 %12, i32* %move, align 4
  store i32 0, i32* %number_edges, align 4
  store i32 0, i32* %number_same_string, align 4
  store i32 0, i32* %number_own, align 4
  store i32 0, i32* %number_opponent, align 4
  store i32 0, i32* %captured_stones, align 4
  store i32 0, i32* %threatened_stones, align 4
  store i32 0, i32* %saved_stones, align 4
  store i32 0, i32* %number_open, align 4
  %13 = load i32, i32* %move, align 4
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %str.addr, align 4
  call void @incremental_order_moves(i32 %13, i32 %14, i32 %15, i32* %number_edges, i32* %number_same_string, i32* %number_own, i32* %number_opponent, i32* %captured_stones, i32* %threatened_stones, i32* %saved_stones, i32* %number_open)
  %16 = load i32, i32* %color.addr, align 4
  %17 = load i32, i32* %string_color, align 4
  %cmp7 = icmp eq i32 %16, %17
  br i1 %cmp7, label %if.then.9, label %if.else.123

if.then.9:                                        ; preds = %for.body
  %18 = load i32, i32* %move, align 4
  %19 = load i32, i32* %color.addr, align 4
  %call10 = call i32 @approxlib(i32 %18, i32 %19, i32 10, i32* null)
  store i32 %call10, i32* %libs, align 4
  %20 = load i32, i32* %number_same_string, align 4
  %cmp11 = icmp sgt i32 %20, 0
  br i1 %cmp11, label %if.then.13, label %if.else.32

if.then.13:                                       ; preds = %if.then.9
  %21 = load i32, i32* %libs, align 4
  %cmp14 = icmp sgt i32 %21, 5
  br i1 %cmp14, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %22 = load i32, i32* %libs, align 4
  %cmp16 = icmp eq i32 %22, 4
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %23 = load i32, i32* @stackp, align 4
  %24 = load i32, i32* @fourlib_depth, align 4
  %cmp18 = icmp sgt i32 %23, %24
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %land.lhs.true, %if.then.13
  %25 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 5), align 4
  %26 = load i32, i32* %libs, align 4
  %sub21 = sub nsw i32 %26, 4
  %add = add nsw i32 %25, %sub21
  %27 = load i32, i32* %r, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %28, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom22
  %29 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %29, %add
  store i32 %add24, i32* %arrayidx23, align 4
  br label %if.end.31

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %30 = load i32, i32* %libs, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_lib_score, i32 0, i64 %idxprom25
  %31 = load i32, i32* %arrayidx26, align 4
  %32 = load i32, i32* %r, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score28 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %33, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [50 x i32], [50 x i32]* %score28, i32 0, i64 %idxprom27
  %34 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %34, %31
  store i32 %add30, i32* %arrayidx29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.20
  br label %if.end.48

if.else.32:                                       ; preds = %if.then.9
  %35 = load i32, i32* %libs, align 4
  %cmp33 = icmp sgt i32 %35, 4
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.32
  %36 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 4), align 4
  %37 = load i32, i32* %r, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %38, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [50 x i32], [50 x i32]* %score37, i32 0, i64 %idxprom36
  %39 = load i32, i32* %arrayidx38, align 4
  %add39 = add nsw i32 %39, %36
  store i32 %add39, i32* %arrayidx38, align 4
  br label %if.end.47

if.else.40:                                       ; preds = %if.else.32
  %40 = load i32, i32* %libs, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i32 0, i64 %idxprom41
  %41 = load i32, i32* %arrayidx42, align 4
  %42 = load i32, i32* %r, align 4
  %idxprom43 = sext i32 %42 to i64
  %43 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score44 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %43, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [50 x i32], [50 x i32]* %score44, i32 0, i64 %idxprom43
  %44 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %44, %41
  store i32 %add46, i32* %arrayidx45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.40, %if.then.35
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.31
  %45 = load i32, i32* %number_open, align 4
  %cmp49 = icmp sle i32 %45, 4
  br i1 %cmp49, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.end.48
  br label %if.end.53

if.else.52:                                       ; preds = %if.end.48
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.51
  %46 = load i32, i32* %number_open, align 4
  %idxprom54 = sext i32 %46 to i64
  %arrayidx55 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_open_score, i32 0, i64 %idxprom54
  %47 = load i32, i32* %arrayidx55, align 4
  %48 = load i32, i32* %r, align 4
  %idxprom56 = sext i32 %48 to i64
  %49 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score57 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %49, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [50 x i32], [50 x i32]* %score57, i32 0, i64 %idxprom56
  %50 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %50, %47
  store i32 %add59, i32* %arrayidx58, align 4
  %51 = load i32, i32* %number_edges, align 4
  %cmp60 = icmp eq i32 %51, 0
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.end.53
  %52 = load i32, i32* %captured_stones, align 4
  %cmp63 = icmp sgt i32 %52, 0
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %lor.lhs.false.62, %if.end.53
  %53 = load i32, i32* @defend_not_edge_score, align 4
  %54 = load i32, i32* %r, align 4
  %idxprom66 = sext i32 %54 to i64
  %55 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score67 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %55, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [50 x i32], [50 x i32]* %score67, i32 0, i64 %idxprom66
  %56 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %56, %53
  store i32 %add69, i32* %arrayidx68, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %lor.lhs.false.62
  %57 = load i32, i32* %captured_stones, align 4
  %cmp71 = icmp sle i32 %57, 5
  br i1 %cmp71, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %if.end.70
  %58 = load i32, i32* %captured_stones, align 4
  %idxprom74 = sext i32 %58 to i64
  %arrayidx75 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 %idxprom74
  %59 = load i32, i32* %arrayidx75, align 4
  %60 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %60 to i64
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score77 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [50 x i32], [50 x i32]* %score77, i32 0, i64 %idxprom76
  %62 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %62, %59
  store i32 %add79, i32* %arrayidx78, align 4
  br label %if.end.86

if.else.80:                                       ; preds = %if.end.70
  %63 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i32 0, i64 5), align 4
  %64 = load i32, i32* %captured_stones, align 4
  %add81 = add nsw i32 %63, %64
  %65 = load i32, i32* %r, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score83 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [50 x i32], [50 x i32]* %score83, i32 0, i64 %idxprom82
  %67 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %67, %add81
  store i32 %add85, i32* %arrayidx84, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.80, %if.then.73
  %68 = load i32, i32* %libs, align 4
  %69 = load i32, i32* %captured_stones, align 4
  %add87 = add nsw i32 %68, %69
  %cmp88 = icmp sgt i32 %add87, 1
  br i1 %cmp88, label %if.then.90, label %if.end.107

if.then.90:                                       ; preds = %if.end.86
  %70 = load i32, i32* %threatened_stones, align 4
  %cmp91 = icmp sle i32 %70, 5
  br i1 %cmp91, label %if.then.93, label %if.else.100

if.then.93:                                       ; preds = %if.then.90
  %71 = load i32, i32* %threatened_stones, align 4
  %idxprom94 = sext i32 %71 to i64
  %arrayidx95 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 %idxprom94
  %72 = load i32, i32* %arrayidx95, align 4
  %73 = load i32, i32* %r, align 4
  %idxprom96 = sext i32 %73 to i64
  %74 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score97 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %74, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [50 x i32], [50 x i32]* %score97, i32 0, i64 %idxprom96
  %75 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %75, %72
  store i32 %add99, i32* %arrayidx98, align 4
  br label %if.end.106

if.else.100:                                      ; preds = %if.then.90
  %76 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i32 0, i64 5), align 4
  %77 = load i32, i32* %threatened_stones, align 4
  %add101 = add nsw i32 %76, %77
  %78 = load i32, i32* %r, align 4
  %idxprom102 = sext i32 %78 to i64
  %79 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %79, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [50 x i32], [50 x i32]* %score103, i32 0, i64 %idxprom102
  %80 = load i32, i32* %arrayidx104, align 4
  %add105 = add nsw i32 %80, %add101
  store i32 %add105, i32* %arrayidx104, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.100, %if.then.93
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.86
  %81 = load i32, i32* %saved_stones, align 4
  %cmp108 = icmp sle i32 %81, 5
  br i1 %cmp108, label %if.then.110, label %if.else.117

if.then.110:                                      ; preds = %if.end.107
  %82 = load i32, i32* %saved_stones, align 4
  %idxprom111 = sext i32 %82 to i64
  %arrayidx112 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 %idxprom111
  %83 = load i32, i32* %arrayidx112, align 4
  %84 = load i32, i32* %r, align 4
  %idxprom113 = sext i32 %84 to i64
  %85 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score114 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %85, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [50 x i32], [50 x i32]* %score114, i32 0, i64 %idxprom113
  %86 = load i32, i32* %arrayidx115, align 4
  %add116 = add nsw i32 %86, %83
  store i32 %add116, i32* %arrayidx115, align 4
  br label %if.end.122

if.else.117:                                      ; preds = %if.end.107
  %87 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i32 0, i64 5), align 4
  %88 = load i32, i32* %r, align 4
  %idxprom118 = sext i32 %88 to i64
  %89 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score119 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %89, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [50 x i32], [50 x i32]* %score119, i32 0, i64 %idxprom118
  %90 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %90, %87
  store i32 %add121, i32* %arrayidx120, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.117, %if.then.110
  br label %if.end.251

if.else.123:                                      ; preds = %for.body
  %91 = load i32, i32* %move, align 4
  %92 = load i32, i32* %color.addr, align 4
  %call125 = call i32 @approxlib(i32 %91, i32 %92, i32 4, i32* null)
  store i32 %call125, i32* %libs124, align 4
  %93 = load i32, i32* %libs124, align 4
  %cmp126 = icmp sgt i32 %93, 4
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.else.123
  store i32 4, i32* %libs124, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.else.123
  %94 = load i32, i32* %libs124, align 4
  %idxprom130 = sext i32 %94 to i64
  %arrayidx131 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_own_lib_score, i32 0, i64 %idxprom130
  %95 = load i32, i32* %arrayidx131, align 4
  %96 = load i32, i32* %r, align 4
  %idxprom132 = sext i32 %96 to i64
  %97 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score133 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %97, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [50 x i32], [50 x i32]* %score133, i32 0, i64 %idxprom132
  %98 = load i32, i32* %arrayidx134, align 4
  %add135 = add nsw i32 %98, %95
  store i32 %add135, i32* %arrayidx134, align 4
  %99 = load i32, i32* %libs124, align 4
  %cmp136 = icmp eq i32 %99, 0
  br i1 %cmp136, label %land.lhs.true.138, label %if.end.146

land.lhs.true.138:                                ; preds = %if.end.129
  %100 = load i32, i32* %captured_stones, align 4
  %cmp139 = icmp eq i32 %100, 1
  br i1 %cmp139, label %if.then.141, label %if.end.146

if.then.141:                                      ; preds = %land.lhs.true.138
  %101 = load i32, i32* @attack_ko_score, align 4
  %102 = load i32, i32* %r, align 4
  %idxprom142 = sext i32 %102 to i64
  %103 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score143 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %103, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [50 x i32], [50 x i32]* %score143, i32 0, i64 %idxprom142
  %104 = load i32, i32* %arrayidx144, align 4
  %add145 = add nsw i32 %104, %101
  store i32 %add145, i32* %arrayidx144, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.141, %land.lhs.true.138, %if.end.129
  %105 = load i32, i32* %libs124, align 4
  %106 = load i32, i32* %captured_stones, align 4
  %add147 = add nsw i32 %105, %106
  %cmp148 = icmp sgt i32 %add147, 1
  br i1 %cmp148, label %land.lhs.true.156, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %if.end.146
  %107 = load i32, i32* %string_libs, align 4
  %cmp151 = icmp sle i32 %107, 2
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.201

land.lhs.true.153:                                ; preds = %lor.lhs.false.150
  %108 = load i32, i32* %number_own, align 4
  %cmp154 = icmp eq i32 %108, 0
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.201

land.lhs.true.156:                                ; preds = %land.lhs.true.153, %if.end.146
  %109 = load i32, i32* %number_same_string, align 4
  %cmp157 = icmp sgt i32 %109, 0
  br i1 %cmp157, label %if.then.159, label %if.end.201

if.then.159:                                      ; preds = %land.lhs.true.156
  %110 = load i32, i32* %move, align 4
  %111 = load i32, i32* %string_color, align 4
  %call160 = call i32 @approxlib(i32 %110, i32 %111, i32 5, i32* null)
  store i32 %call160, i32* %liberties, align 4
  %112 = load i32, i32* %liberties, align 4
  %cmp161 = icmp sgt i32 %112, 5
  br i1 %cmp161, label %if.then.169, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.then.159
  %113 = load i32, i32* %liberties, align 4
  %cmp164 = icmp eq i32 %113, 4
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.170

land.lhs.true.166:                                ; preds = %lor.lhs.false.163
  %114 = load i32, i32* @stackp, align 4
  %115 = load i32, i32* @fourlib_depth, align 4
  %cmp167 = icmp sgt i32 %114, %115
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %land.lhs.true.166, %if.then.159
  store i32 5, i32* %liberties, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.169, %land.lhs.true.166, %lor.lhs.false.163
  %116 = load i32, i32* %liberties, align 4
  %idxprom171 = sext i32 %116 to i64
  %arrayidx172 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_string_lib_score, i32 0, i64 %idxprom171
  %117 = load i32, i32* %arrayidx172, align 4
  %118 = load i32, i32* %r, align 4
  %idxprom173 = sext i32 %118 to i64
  %119 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score174 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %119, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [50 x i32], [50 x i32]* %score174, i32 0, i64 %idxprom173
  %120 = load i32, i32* %arrayidx175, align 4
  %add176 = add nsw i32 %120, %117
  store i32 %add176, i32* %arrayidx175, align 4
  %121 = load i32, i32* %string_libs, align 4
  %cmp177 = icmp sle i32 %121, 2
  br i1 %cmp177, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.170
  %122 = load i32, i32* %libs124, align 4
  %123 = load i32, i32* %captured_stones, align 4
  %add179 = add nsw i32 %122, %123
  %cmp180 = icmp sgt i32 %add179, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.170
  %124 = phi i1 [ false, %if.end.170 ], [ %cmp180, %land.rhs ]
  %land.ext = zext i1 %124 to i32
  store i32 %land.ext, i32* %safe_atari, align 4
  %125 = load i32, i32* %liberties, align 4
  %cmp182 = icmp eq i32 %125, 1
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.193

land.lhs.true.184:                                ; preds = %land.end
  %126 = load i32, i32* %saved_stones, align 4
  %cmp185 = icmp eq i32 %126, 0
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.193

land.lhs.true.187:                                ; preds = %land.lhs.true.184
  %127 = load i32, i32* %safe_atari, align 4
  %tobool = icmp ne i32 %127, 0
  br i1 %tobool, label %if.end.193, label %if.then.188

if.then.188:                                      ; preds = %land.lhs.true.187
  %128 = load i32, i32* @cannot_defend_penalty, align 4
  %129 = load i32, i32* %r, align 4
  %idxprom189 = sext i32 %129 to i64
  %130 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score190 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %130, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [50 x i32], [50 x i32]* %score190, i32 0, i64 %idxprom189
  %131 = load i32, i32* %arrayidx191, align 4
  %add192 = add nsw i32 %131, %128
  store i32 %add192, i32* %arrayidx191, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %land.lhs.true.187, %land.lhs.true.184, %land.end
  %132 = load i32, i32* %safe_atari, align 4
  %tobool194 = icmp ne i32 %132, 0
  br i1 %tobool194, label %if.then.195, label %if.end.200

if.then.195:                                      ; preds = %if.end.193
  %133 = load i32, i32* @safe_atari_score, align 4
  %134 = load i32, i32* %r, align 4
  %idxprom196 = sext i32 %134 to i64
  %135 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score197 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %135, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [50 x i32], [50 x i32]* %score197, i32 0, i64 %idxprom196
  %136 = load i32, i32* %arrayidx198, align 4
  %add199 = add nsw i32 %136, %133
  store i32 %add199, i32* %arrayidx198, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.195, %if.end.193
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.156, %land.lhs.true.153, %lor.lhs.false.150
  %137 = load i32, i32* %number_open, align 4
  %cmp202 = icmp sle i32 %137, 4
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.end.201
  br label %if.end.206

if.else.205:                                      ; preds = %if.end.201
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4300, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.205, %if.then.204
  %138 = load i32, i32* %number_open, align 4
  %idxprom207 = sext i32 %138 to i64
  %arrayidx208 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_open_score, i32 0, i64 %idxprom207
  %139 = load i32, i32* %arrayidx208, align 4
  %140 = load i32, i32* %r, align 4
  %idxprom209 = sext i32 %140 to i64
  %141 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score210 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %141, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [50 x i32], [50 x i32]* %score210, i32 0, i64 %idxprom209
  %142 = load i32, i32* %arrayidx211, align 4
  %add212 = add nsw i32 %142, %139
  store i32 %add212, i32* %arrayidx211, align 4
  %143 = load i32, i32* %number_edges, align 4
  %cmp213 = icmp eq i32 %143, 0
  br i1 %cmp213, label %if.then.215, label %if.end.220

if.then.215:                                      ; preds = %if.end.206
  %144 = load i32, i32* @attack_not_edge_score, align 4
  %145 = load i32, i32* %r, align 4
  %idxprom216 = sext i32 %145 to i64
  %146 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score217 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %146, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [50 x i32], [50 x i32]* %score217, i32 0, i64 %idxprom216
  %147 = load i32, i32* %arrayidx218, align 4
  %add219 = add nsw i32 %147, %144
  store i32 %add219, i32* %arrayidx218, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.215, %if.end.206
  %148 = load i32, i32* %captured_stones, align 4
  %cmp221 = icmp sle i32 %148, 5
  br i1 %cmp221, label %if.then.223, label %if.else.230

if.then.223:                                      ; preds = %if.end.220
  %149 = load i32, i32* %captured_stones, align 4
  %idxprom224 = sext i32 %149 to i64
  %arrayidx225 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 %idxprom224
  %150 = load i32, i32* %arrayidx225, align 4
  %151 = load i32, i32* %r, align 4
  %idxprom226 = sext i32 %151 to i64
  %152 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score227 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %152, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [50 x i32], [50 x i32]* %score227, i32 0, i64 %idxprom226
  %153 = load i32, i32* %arrayidx228, align 4
  %add229 = add nsw i32 %153, %150
  store i32 %add229, i32* %arrayidx228, align 4
  br label %if.end.235

if.else.230:                                      ; preds = %if.end.220
  %154 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i32 0, i64 5), align 4
  %155 = load i32, i32* %r, align 4
  %idxprom231 = sext i32 %155 to i64
  %156 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score232 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %156, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [50 x i32], [50 x i32]* %score232, i32 0, i64 %idxprom231
  %157 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %157, %154
  store i32 %add234, i32* %arrayidx233, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.230, %if.then.223
  %158 = load i32, i32* %saved_stones, align 4
  %cmp236 = icmp sle i32 %158, 5
  br i1 %cmp236, label %if.then.238, label %if.else.245

if.then.238:                                      ; preds = %if.end.235
  %159 = load i32, i32* %saved_stones, align 4
  %idxprom239 = sext i32 %159 to i64
  %arrayidx240 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 %idxprom239
  %160 = load i32, i32* %arrayidx240, align 4
  %161 = load i32, i32* %r, align 4
  %idxprom241 = sext i32 %161 to i64
  %162 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score242 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %162, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [50 x i32], [50 x i32]* %score242, i32 0, i64 %idxprom241
  %163 = load i32, i32* %arrayidx243, align 4
  %add244 = add nsw i32 %163, %160
  store i32 %add244, i32* %arrayidx243, align 4
  br label %if.end.250

if.else.245:                                      ; preds = %if.end.235
  %164 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i32 0, i64 5), align 4
  %165 = load i32, i32* %r, align 4
  %idxprom246 = sext i32 %165 to i64
  %166 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score247 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %166, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [50 x i32], [50 x i32]* %score247, i32 0, i64 %idxprom246
  %167 = load i32, i32* %arrayidx248, align 4
  %add249 = add nsw i32 %167, %164
  store i32 %add249, i32* %arrayidx248, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.245, %if.then.238
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.122
  br label %for.inc

for.inc:                                          ; preds = %if.end.251
  %168 = load i32, i32* %r, align 4
  %inc = add nsw i32 %168, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %169 = load i32, i32* %first_move.addr, align 4
  store i32 %169, i32* %i, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.305, %for.end
  %170 = load i32, i32* %i, align 4
  %171 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num253 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %171, i32 0, i32 2
  %172 = load i32, i32* %num253, align 4
  %sub254 = sub nsw i32 %172, 1
  %cmp255 = icmp slt i32 %170, %sub254
  br i1 %cmp255, label %for.body.257, label %for.end.307

for.body.257:                                     ; preds = %for.cond.252
  %173 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %173 to i64
  %174 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score259 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %174, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [50 x i32], [50 x i32]* %score259, i32 0, i64 %idxprom258
  %175 = load i32, i32* %arrayidx260, align 4
  store i32 %175, i32* %maxscore, align 4
  store i32 0, i32* %max_at, align 4
  %176 = load i32, i32* %i, align 4
  %add261 = add nsw i32 %176, 1
  store i32 %add261, i32* %j, align 4
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.277, %for.body.257
  %177 = load i32, i32* %j, align 4
  %178 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num263 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %178, i32 0, i32 2
  %179 = load i32, i32* %num263, align 4
  %cmp264 = icmp slt i32 %177, %179
  br i1 %cmp264, label %for.body.266, label %for.end.279

for.body.266:                                     ; preds = %for.cond.262
  %180 = load i32, i32* %j, align 4
  %idxprom267 = sext i32 %180 to i64
  %181 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score268 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %181, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [50 x i32], [50 x i32]* %score268, i32 0, i64 %idxprom267
  %182 = load i32, i32* %arrayidx269, align 4
  %183 = load i32, i32* %maxscore, align 4
  %cmp270 = icmp sgt i32 %182, %183
  br i1 %cmp270, label %if.then.272, label %if.end.276

if.then.272:                                      ; preds = %for.body.266
  %184 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %184 to i64
  %185 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score274 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %185, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [50 x i32], [50 x i32]* %score274, i32 0, i64 %idxprom273
  %186 = load i32, i32* %arrayidx275, align 4
  store i32 %186, i32* %maxscore, align 4
  %187 = load i32, i32* %j, align 4
  store i32 %187, i32* %max_at, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.272, %for.body.266
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %188 = load i32, i32* %j, align 4
  %inc278 = add nsw i32 %188, 1
  store i32 %inc278, i32* %j, align 4
  br label %for.cond.262

for.end.279:                                      ; preds = %for.cond.262
  %189 = load i32, i32* %max_at, align 4
  %cmp280 = icmp ne i32 %189, 0
  br i1 %cmp280, label %if.then.282, label %if.end.304

if.then.282:                                      ; preds = %for.end.279
  %190 = load i32, i32* %max_at, align 4
  %idxprom283 = sext i32 %190 to i64
  %191 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos284 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %191, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [50 x i32], [50 x i32]* %pos284, i32 0, i64 %idxprom283
  %192 = load i32, i32* %arrayidx285, align 4
  store i32 %192, i32* %temp, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %193 to i64
  %194 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos287 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %194, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [50 x i32], [50 x i32]* %pos287, i32 0, i64 %idxprom286
  %195 = load i32, i32* %arrayidx288, align 4
  %196 = load i32, i32* %max_at, align 4
  %idxprom289 = sext i32 %196 to i64
  %197 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos290 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %197, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [50 x i32], [50 x i32]* %pos290, i32 0, i64 %idxprom289
  store i32 %195, i32* %arrayidx291, align 4
  %198 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %198 to i64
  %199 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score293 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %199, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [50 x i32], [50 x i32]* %score293, i32 0, i64 %idxprom292
  %200 = load i32, i32* %arrayidx294, align 4
  %201 = load i32, i32* %max_at, align 4
  %idxprom295 = sext i32 %201 to i64
  %202 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score296 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %202, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [50 x i32], [50 x i32]* %score296, i32 0, i64 %idxprom295
  store i32 %200, i32* %arrayidx297, align 4
  %203 = load i32, i32* %temp, align 4
  %204 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %204 to i64
  %205 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos299 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %205, i32 0, i32 0
  %arrayidx300 = getelementptr inbounds [50 x i32], [50 x i32]* %pos299, i32 0, i64 %idxprom298
  store i32 %203, i32* %arrayidx300, align 4
  %206 = load i32, i32* %maxscore, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %207 to i64
  %208 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score302 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %208, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [50 x i32], [50 x i32]* %score302, i32 0, i64 %idxprom301
  store i32 %206, i32* %arrayidx303, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.282, %for.end.279
  br label %for.inc.305

for.inc.305:                                      ; preds = %if.end.304
  %209 = load i32, i32* %i, align 4
  %inc306 = add nsw i32 %209, 1
  store i32 %inc306, i32* %i, align 4
  br label %for.cond.252

for.end.307:                                      ; preds = %for.cond.252
  %210 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool308 = icmp ne %struct.SGFTree_t* %210, null
  br i1 %tobool308, label %if.then.309, label %if.end.346

if.then.309:                                      ; preds = %for.end.307
  %arraydecay = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %211 = load i8*, i8** %funcname.addr, align 8
  %call311 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0), i8* %211, i32* %chars) #2
  %arraydecay312 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  %212 = load i32, i32* %chars, align 4
  %idx.ext = sext i32 %212 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay312, i64 %idx.ext
  store i8* %add.ptr, i8** %pos310, align 8
  %213 = load i32, i32* %first_move.addr, align 4
  store i32 %213, i32* %i, align 4
  br label %for.cond.313

for.cond.313:                                     ; preds = %for.inc.342, %if.then.309
  %214 = load i32, i32* %i, align 4
  %215 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num314 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %215, i32 0, i32 2
  %216 = load i32, i32* %num314, align 4
  %cmp315 = icmp slt i32 %214, %216
  br i1 %cmp315, label %for.body.317, label %for.end.344

for.body.317:                                     ; preds = %for.cond.313
  %217 = load i8*, i8** %pos310, align 8
  %218 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %218 to i64
  %219 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos319 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %219, i32 0, i32 0
  %arrayidx320 = getelementptr inbounds [50 x i32], [50 x i32]* %pos319, i32 0, i64 %idxprom318
  %220 = load i32, i32* %arrayidx320, align 4
  %rem = srem i32 %220, 20
  %sub321 = sub nsw i32 %rem, 1
  %add322 = add nsw i32 %sub321, 65
  %221 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %221 to i64
  %222 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos324 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %222, i32 0, i32 0
  %arrayidx325 = getelementptr inbounds [50 x i32], [50 x i32]* %pos324, i32 0, i64 %idxprom323
  %223 = load i32, i32* %arrayidx325, align 4
  %rem326 = srem i32 %223, 20
  %sub327 = sub nsw i32 %rem326, 1
  %cmp328 = icmp sge i32 %sub327, 8
  %conv329 = zext i1 %cmp328 to i32
  %add330 = add nsw i32 %add322, %conv329
  %224 = load i32, i32* @board_size, align 4
  %225 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %225 to i64
  %226 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos332 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %226, i32 0, i32 0
  %arrayidx333 = getelementptr inbounds [50 x i32], [50 x i32]* %pos332, i32 0, i64 %idxprom331
  %227 = load i32, i32* %arrayidx333, align 4
  %div = sdiv i32 %227, 20
  %sub334 = sub nsw i32 %div, 1
  %sub335 = sub nsw i32 %224, %sub334
  %228 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %228 to i64
  %229 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score337 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %229, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [50 x i32], [50 x i32]* %score337, i32 0, i64 %idxprom336
  %230 = load i32, i32* %arrayidx338, align 4
  %call339 = call i32 (i8*, i8*, ...) @sprintf(i8* %217, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 %add330, i32 %sub335, i32 %230, i32* %chars) #2
  %231 = load i32, i32* %chars, align 4
  %232 = load i8*, i8** %pos310, align 8
  %idx.ext340 = sext i32 %231 to i64
  %add.ptr341 = getelementptr inbounds i8, i8* %232, i64 %idx.ext340
  store i8* %add.ptr341, i8** %pos310, align 8
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.317
  %233 = load i32, i32* %i, align 4
  %inc343 = add nsw i32 %233, 1
  store i32 %inc343, i32* %i, align 4
  br label %for.cond.313

for.end.344:                                      ; preds = %for.cond.313
  %234 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay345 = getelementptr inbounds [500 x i8], [500 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %234, i8* %arraydecay345)
  br label %if.end.346

if.end.346:                                       ; preds = %if.then, %for.end.344, %for.end.307
  ret void
}

declare i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @countstones(i32) #1

declare i32 @approxlib(i32, i32, i32, i32*) #1

declare i32 @is_self_atari(i32, i32) #1

declare i32 @chainlinks2(i32, i32*, i32) #1

declare void @incremental_order_moves(i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @break_chain2_efficient_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %r = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %0, i32* %arraydecay, i32 2)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %r, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %str.addr, align 4
  %4 = load i32, i32* %r, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @do_find_break_chain2_efficient_moves(i32 %3, i32 %5, %struct.reading_moves* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %r, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propose_edge_moves(i32 %str, i32* %libs, i32 %liberties, %struct.reading_moves* %moves, i32 %to_move) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %liberties.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %to_move.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %right = alloca i32, align 4
  %up = alloca i32, align 4
  %apos = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %xpos = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %u128 = alloca i32, align 4
  %u172 = alloca i32, align 4
  %u229 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32 %liberties, i32* %liberties.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  store i32 %to_move, i32* %to_move.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.283, %entry
  %3 = load i32, i32* %r, align 4
  %4 = load i32, i32* %liberties.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.285

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %libs.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  store i32 %7, i32* %apos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.280, %for.body
  %8 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %8, 4
  br i1 %cmp5, label %for.body.7, label %for.end.282

for.body.7:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %up, align 4
  %11 = load i32, i32* %apos, align 4
  %12 = load i32, i32* %up, align 4
  %sub10 = sub nsw i32 %11, %12
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 3
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  br label %for.inc.280

if.end:                                           ; preds = %for.body.7
  store i32 0, i32* %l, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.277, %if.end
  %14 = load i32, i32* %l, align 4
  %cmp17 = icmp slt i32 %14, 2
  br i1 %cmp17, label %for.body.19, label %for.end.279

for.body.19:                                      ; preds = %for.cond.16
  %15 = load i32, i32* %k, align 4
  %add = add nsw i32 %15, 1
  %rem = srem i32 %add, 4
  %idxprom20 = sext i32 %rem to i64
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  store i32 %16, i32* %right, align 4
  %17 = load i32, i32* %l, align 4
  %cmp22 = icmp eq i32 %17, 1
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %for.body.19
  %18 = load i32, i32* %right, align 4
  %sub25 = sub nsw i32 0, %18
  store i32 %sub25, i32* %right, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body.19
  %19 = load i32, i32* %apos, align 4
  %20 = load i32, i32* %up, align 4
  %add27 = add nsw i32 %19, %20
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %22 = load i32, i32* %other, align 4
  %cmp31 = icmp eq i32 %conv30, %22
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.26
  %23 = load i32, i32* %apos, align 4
  %24 = load i32, i32* %up, align 4
  %add33 = add nsw i32 %23, %24
  %call = call i32 @countlib(i32 %add33)
  %cmp34 = icmp sgt i32 %call, 4
  br i1 %cmp34, label %land.lhs.true.36, label %if.else

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %color, align 4
  %26 = load i32, i32* %to_move.addr, align 4
  %cmp37 = icmp eq i32 %25, %26
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.36
  %27 = load i32, i32* %apos, align 4
  store i32 %27, i32* %xpos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.57, %if.then.39
  %28 = load i32, i32* %xpos, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom40
  %29 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %29 to i32
  %cmp43 = icmp ne i32 %conv42, 3
  br i1 %cmp43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %xpos, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %31 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %31 to i32
  %32 = load i32, i32* %color, align 4
  %cmp48 = icmp eq i32 %conv47, %32
  br i1 %cmp48, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %33 = load i32, i32* %xpos, align 4
  %34 = load i32, i32* %up, align 4
  %add50 = add nsw i32 %33, %34
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %35 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %35 to i32
  %36 = load i32, i32* %color, align 4
  %cmp54 = icmp eq i32 %conv53, %36
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end.57:                                        ; preds = %lor.lhs.false
  %37 = load i32, i32* %right, align 4
  %38 = load i32, i32* %xpos, align 4
  %add58 = add nsw i32 %38, %37
  store i32 %add58, i32* %xpos, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.56, %while.cond
  %39 = load i32, i32* %xpos, align 4
  %idxprom59 = sext i32 %39 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %40 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %40 to i32
  %cmp62 = icmp ne i32 %conv61, 3
  br i1 %cmp62, label %if.end.98, label %if.then.64

if.then.64:                                       ; preds = %while.end
  br label %do.body

do.body:                                          ; preds = %if.then.64
  store i32 0, i32* %u, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.95, %do.body
  %41 = load i32, i32* %u, align 4
  %42 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %42, i32 0, i32 2
  %43 = load i32, i32* %num, align 4
  %cmp66 = icmp slt i32 %41, %43
  br i1 %cmp66, label %for.body.68, label %for.end.97

for.body.68:                                      ; preds = %for.cond.65
  %44 = load i32, i32* %u, align 4
  %idxprom69 = sext i32 %44 to i64
  %45 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %45, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom69
  %46 = load i32, i32* %arrayidx70, align 4
  %47 = load i32, i32* %apos, align 4
  %cmp71 = icmp eq i32 %46, %47
  br i1 %cmp71, label %if.then.73, label %if.end.94

if.then.73:                                       ; preds = %for.body.68
  %48 = load i32, i32* %u, align 4
  store i32 %48, i32* %v, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %if.then.73
  %49 = load i32, i32* %v, align 4
  %50 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num75 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %50, i32 0, i32 2
  %51 = load i32, i32* %num75, align 4
  %sub76 = sub nsw i32 %51, 1
  %cmp77 = icmp slt i32 %49, %sub76
  br i1 %cmp77, label %for.body.79, label %for.end

for.body.79:                                      ; preds = %for.cond.74
  %52 = load i32, i32* %v, align 4
  %add80 = add nsw i32 %52, 1
  %idxprom81 = sext i32 %add80 to i64
  %53 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos82 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [50 x i32], [50 x i32]* %pos82, i32 0, i64 %idxprom81
  %54 = load i32, i32* %arrayidx83, align 4
  %55 = load i32, i32* %v, align 4
  %idxprom84 = sext i32 %55 to i64
  %56 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos85 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %56, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [50 x i32], [50 x i32]* %pos85, i32 0, i64 %idxprom84
  store i32 %54, i32* %arrayidx86, align 4
  %57 = load i32, i32* %v, align 4
  %add87 = add nsw i32 %57, 1
  %idxprom88 = sext i32 %add87 to i64
  %58 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom88
  %59 = load i32, i32* %arrayidx89, align 4
  %60 = load i32, i32* %v, align 4
  %idxprom90 = sext i32 %60 to i64
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score91 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [50 x i32], [50 x i32]* %score91, i32 0, i64 %idxprom90
  store i32 %59, i32* %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.79
  %62 = load i32, i32* %v, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond.74

for.end:                                          ; preds = %for.cond.74
  %63 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num93 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %63, i32 0, i32 2
  %64 = load i32, i32* %num93, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %num93, align 4
  br label %for.end.97

if.end.94:                                        ; preds = %for.body.68
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %65 = load i32, i32* %u, align 4
  %inc96 = add nsw i32 %65, 1
  store i32 %inc96, i32* %u, align 4
  br label %for.cond.65

for.end.97:                                       ; preds = %for.end, %for.cond.65
  br label %do.end

do.end:                                           ; preds = %for.end.97
  br label %if.end.98

if.end.98:                                        ; preds = %do.end, %while.end
  br label %if.end.276

if.else:                                          ; preds = %land.lhs.true.36, %land.lhs.true, %if.end.26
  %66 = load i32, i32* %apos, align 4
  %67 = load i32, i32* %up, align 4
  %add99 = add nsw i32 %66, %67
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom100
  %68 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %68 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.275

land.lhs.true.105:                                ; preds = %if.else
  %69 = load i32, i32* %apos, align 4
  %70 = load i32, i32* %right, align 4
  %sub106 = sub nsw i32 %69, %70
  %71 = load i32, i32* %up, align 4
  %add107 = add nsw i32 %sub106, %71
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %72 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %72 to i32
  %73 = load i32, i32* %other, align 4
  %cmp111 = icmp eq i32 %conv110, %73
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.275

land.lhs.true.113:                                ; preds = %land.lhs.true.105
  %74 = load i32, i32* %apos, align 4
  %75 = load i32, i32* %right, align 4
  %add114 = add nsw i32 %74, %75
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom115
  %76 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %76 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.end.275

if.then.120:                                      ; preds = %land.lhs.true.113
  %77 = load i32, i32* %apos, align 4
  %78 = load i32, i32* %up, align 4
  %add121 = add nsw i32 %77, %78
  %79 = load i32, i32* %right, align 4
  %sub122 = sub nsw i32 %add121, %79
  %call123 = call i32 @countlib(i32 %sub122)
  %cmp124 = icmp eq i32 %call123, 1
  br i1 %cmp124, label %if.then.126, label %if.else.170

if.then.126:                                      ; preds = %if.then.120
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  store i32 0, i32* %u128, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.146, %do.body.127
  %80 = load i32, i32* %u128, align 4
  %81 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %81, i32 0, i32 2
  %82 = load i32, i32* %num130, align 4
  %cmp131 = icmp slt i32 %80, %82
  br i1 %cmp131, label %for.body.133, label %for.end.148

for.body.133:                                     ; preds = %for.cond.129
  %83 = load i32, i32* %u128, align 4
  %idxprom134 = sext i32 %83 to i64
  %84 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos135 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %84, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [50 x i32], [50 x i32]* %pos135, i32 0, i64 %idxprom134
  %85 = load i32, i32* %arrayidx136, align 4
  %86 = load i32, i32* %apos, align 4
  %87 = load i32, i32* %up, align 4
  %add137 = add nsw i32 %86, %87
  %cmp138 = icmp eq i32 %85, %add137
  br i1 %cmp138, label %if.then.140, label %if.end.145

if.then.140:                                      ; preds = %for.body.133
  %88 = load i32, i32* %u128, align 4
  %idxprom141 = sext i32 %88 to i64
  %89 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score142 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %89, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [50 x i32], [50 x i32]* %score142, i32 0, i64 %idxprom141
  %90 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %90, 10
  store i32 %add144, i32* %arrayidx143, align 4
  br label %for.end.148

if.end.145:                                       ; preds = %for.body.133
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %91 = load i32, i32* %u128, align 4
  %inc147 = add nsw i32 %91, 1
  store i32 %inc147, i32* %u128, align 4
  br label %for.cond.129

for.end.148:                                      ; preds = %if.then.140, %for.cond.129
  %92 = load i32, i32* %u128, align 4
  %93 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num149 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %93, i32 0, i32 2
  %94 = load i32, i32* %num149, align 4
  %cmp150 = icmp eq i32 %92, %94
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.168

land.lhs.true.152:                                ; preds = %for.end.148
  %95 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num153 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %95, i32 0, i32 2
  %96 = load i32, i32* %num153, align 4
  %cmp154 = icmp slt i32 %96, 50
  br i1 %cmp154, label %if.then.156, label %if.end.168

if.then.156:                                      ; preds = %land.lhs.true.152
  %97 = load i32, i32* %apos, align 4
  %98 = load i32, i32* %up, align 4
  %add157 = add nsw i32 %97, %98
  %99 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num158 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %99, i32 0, i32 2
  %100 = load i32, i32* %num158, align 4
  %idxprom159 = sext i32 %100 to i64
  %101 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos160 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %101, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [50 x i32], [50 x i32]* %pos160, i32 0, i64 %idxprom159
  store i32 %add157, i32* %arrayidx161, align 4
  %102 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num162 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %102, i32 0, i32 2
  %103 = load i32, i32* %num162, align 4
  %idxprom163 = sext i32 %103 to i64
  %104 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score164 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %104, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [50 x i32], [50 x i32]* %score164, i32 0, i64 %idxprom163
  store i32 10, i32* %arrayidx165, align 4
  %105 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num166 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %105, i32 0, i32 2
  %106 = load i32, i32* %num166, align 4
  %inc167 = add nsw i32 %106, 1
  store i32 %inc167, i32* %num166, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.156, %land.lhs.true.152, %for.end.148
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  br label %if.end.274

if.else.170:                                      ; preds = %if.then.120
  br label %do.body.171

do.body.171:                                      ; preds = %if.else.170
  store i32 0, i32* %u172, align 4
  br label %for.cond.173

for.cond.173:                                     ; preds = %for.inc.190, %do.body.171
  %107 = load i32, i32* %u172, align 4
  %108 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num174 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %108, i32 0, i32 2
  %109 = load i32, i32* %num174, align 4
  %cmp175 = icmp slt i32 %107, %109
  br i1 %cmp175, label %for.body.177, label %for.end.192

for.body.177:                                     ; preds = %for.cond.173
  %110 = load i32, i32* %u172, align 4
  %idxprom178 = sext i32 %110 to i64
  %111 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos179 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %111, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [50 x i32], [50 x i32]* %pos179, i32 0, i64 %idxprom178
  %112 = load i32, i32* %arrayidx180, align 4
  %113 = load i32, i32* %apos, align 4
  %114 = load i32, i32* %up, align 4
  %add181 = add nsw i32 %113, %114
  %cmp182 = icmp eq i32 %112, %add181
  br i1 %cmp182, label %if.then.184, label %if.end.189

if.then.184:                                      ; preds = %for.body.177
  %115 = load i32, i32* %u172, align 4
  %idxprom185 = sext i32 %115 to i64
  %116 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score186 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %116, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [50 x i32], [50 x i32]* %score186, i32 0, i64 %idxprom185
  %117 = load i32, i32* %arrayidx187, align 4
  %add188 = add nsw i32 %117, 0
  store i32 %add188, i32* %arrayidx187, align 4
  br label %for.end.192

if.end.189:                                       ; preds = %for.body.177
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %118 = load i32, i32* %u172, align 4
  %inc191 = add nsw i32 %118, 1
  store i32 %inc191, i32* %u172, align 4
  br label %for.cond.173

for.end.192:                                      ; preds = %if.then.184, %for.cond.173
  %119 = load i32, i32* %u172, align 4
  %120 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num193 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %120, i32 0, i32 2
  %121 = load i32, i32* %num193, align 4
  %cmp194 = icmp eq i32 %119, %121
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.212

land.lhs.true.196:                                ; preds = %for.end.192
  %122 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num197 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %122, i32 0, i32 2
  %123 = load i32, i32* %num197, align 4
  %cmp198 = icmp slt i32 %123, 50
  br i1 %cmp198, label %if.then.200, label %if.end.212

if.then.200:                                      ; preds = %land.lhs.true.196
  %124 = load i32, i32* %apos, align 4
  %125 = load i32, i32* %up, align 4
  %add201 = add nsw i32 %124, %125
  %126 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num202 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %126, i32 0, i32 2
  %127 = load i32, i32* %num202, align 4
  %idxprom203 = sext i32 %127 to i64
  %128 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos204 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %128, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [50 x i32], [50 x i32]* %pos204, i32 0, i64 %idxprom203
  store i32 %add201, i32* %arrayidx205, align 4
  %129 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num206 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %129, i32 0, i32 2
  %130 = load i32, i32* %num206, align 4
  %idxprom207 = sext i32 %130 to i64
  %131 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score208 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %131, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [50 x i32], [50 x i32]* %score208, i32 0, i64 %idxprom207
  store i32 0, i32* %arrayidx209, align 4
  %132 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num210 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %132, i32 0, i32 2
  %133 = load i32, i32* %num210, align 4
  %inc211 = add nsw i32 %133, 1
  store i32 %inc211, i32* %num210, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.200, %land.lhs.true.196, %for.end.192
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.212
  %134 = load i32, i32* %apos, align 4
  %135 = load i32, i32* %right, align 4
  %add214 = add nsw i32 %134, %135
  %136 = load i32, i32* %up, align 4
  %add215 = add nsw i32 %add214, %136
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom216
  %137 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %137 to i32
  %cmp219 = icmp eq i32 %conv218, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.273

land.lhs.true.221:                                ; preds = %do.end.213
  %138 = load i32, i32* %liberties.addr, align 4
  %cmp222 = icmp ne i32 %138, 2
  br i1 %cmp222, label %if.then.227, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %land.lhs.true.221
  %139 = load i32, i32* %color, align 4
  %140 = load i32, i32* %to_move.addr, align 4
  %cmp225 = icmp ne i32 %139, %140
  br i1 %cmp225, label %if.then.227, label %if.end.273

if.then.227:                                      ; preds = %lor.lhs.false.224, %land.lhs.true.221
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  store i32 0, i32* %u229, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.248, %do.body.228
  %141 = load i32, i32* %u229, align 4
  %142 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %142, i32 0, i32 2
  %143 = load i32, i32* %num231, align 4
  %cmp232 = icmp slt i32 %141, %143
  br i1 %cmp232, label %for.body.234, label %for.end.250

for.body.234:                                     ; preds = %for.cond.230
  %144 = load i32, i32* %u229, align 4
  %idxprom235 = sext i32 %144 to i64
  %145 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos236 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %145, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [50 x i32], [50 x i32]* %pos236, i32 0, i64 %idxprom235
  %146 = load i32, i32* %arrayidx237, align 4
  %147 = load i32, i32* %apos, align 4
  %148 = load i32, i32* %right, align 4
  %add238 = add nsw i32 %147, %148
  %149 = load i32, i32* %up, align 4
  %add239 = add nsw i32 %add238, %149
  %cmp240 = icmp eq i32 %146, %add239
  br i1 %cmp240, label %if.then.242, label %if.end.247

if.then.242:                                      ; preds = %for.body.234
  %150 = load i32, i32* %u229, align 4
  %idxprom243 = sext i32 %150 to i64
  %151 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score244 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %151, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [50 x i32], [50 x i32]* %score244, i32 0, i64 %idxprom243
  %152 = load i32, i32* %arrayidx245, align 4
  %add246 = add nsw i32 %152, 0
  store i32 %add246, i32* %arrayidx245, align 4
  br label %for.end.250

if.end.247:                                       ; preds = %for.body.234
  br label %for.inc.248

for.inc.248:                                      ; preds = %if.end.247
  %153 = load i32, i32* %u229, align 4
  %inc249 = add nsw i32 %153, 1
  store i32 %inc249, i32* %u229, align 4
  br label %for.cond.230

for.end.250:                                      ; preds = %if.then.242, %for.cond.230
  %154 = load i32, i32* %u229, align 4
  %155 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num251 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %155, i32 0, i32 2
  %156 = load i32, i32* %num251, align 4
  %cmp252 = icmp eq i32 %154, %156
  br i1 %cmp252, label %land.lhs.true.254, label %if.end.271

land.lhs.true.254:                                ; preds = %for.end.250
  %157 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %157, i32 0, i32 2
  %158 = load i32, i32* %num255, align 4
  %cmp256 = icmp slt i32 %158, 50
  br i1 %cmp256, label %if.then.258, label %if.end.271

if.then.258:                                      ; preds = %land.lhs.true.254
  %159 = load i32, i32* %apos, align 4
  %160 = load i32, i32* %right, align 4
  %add259 = add nsw i32 %159, %160
  %161 = load i32, i32* %up, align 4
  %add260 = add nsw i32 %add259, %161
  %162 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num261 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %162, i32 0, i32 2
  %163 = load i32, i32* %num261, align 4
  %idxprom262 = sext i32 %163 to i64
  %164 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos263 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %164, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [50 x i32], [50 x i32]* %pos263, i32 0, i64 %idxprom262
  store i32 %add260, i32* %arrayidx264, align 4
  %165 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num265 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %165, i32 0, i32 2
  %166 = load i32, i32* %num265, align 4
  %idxprom266 = sext i32 %166 to i64
  %167 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score267 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %167, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [50 x i32], [50 x i32]* %score267, i32 0, i64 %idxprom266
  store i32 0, i32* %arrayidx268, align 4
  %168 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num269 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %168, i32 0, i32 2
  %169 = load i32, i32* %num269, align 4
  %inc270 = add nsw i32 %169, 1
  store i32 %inc270, i32* %num269, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.258, %land.lhs.true.254, %for.end.250
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  br label %if.end.273

if.end.273:                                       ; preds = %do.end.272, %lor.lhs.false.224, %do.end.213
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273, %do.end.169
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.113, %land.lhs.true.105, %if.else
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.end.98
  br label %for.inc.277

for.inc.277:                                      ; preds = %if.end.276
  %170 = load i32, i32* %l, align 4
  %inc278 = add nsw i32 %170, 1
  store i32 %inc278, i32* %l, align 4
  br label %for.cond.16

for.end.279:                                      ; preds = %for.cond.16
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.end.279, %if.then
  %171 = load i32, i32* %k, align 4
  %inc281 = add nsw i32 %171, 1
  store i32 %inc281, i32* %k, align 4
  br label %for.cond.4

for.end.282:                                      ; preds = %for.cond.4
  br label %for.inc.283

for.inc.283:                                      ; preds = %for.end.282
  %172 = load i32, i32* %r, align 4
  %inc284 = add nsw i32 %172, 1
  store i32 %inc284, i32* %r, align 4
  br label %for.cond

for.end.285:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @edge_clamp_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %libs = alloca [3 x i32], align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %up = alloca i32, align 4
  %right = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %3, i32* %arraydecay, i32 3)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %entry
  %4 = load i32, i32* %r, align 4
  %5 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.138

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  store i32 %7, i32* %apos, align 4
  store i32 0, i32* %bpos, align 4
  %8 = load i32, i32* %apos, align 4
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %call5 = call i32 @findlib(i32 %8, i32 3, i32* %arraydecay4)
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %9, 3
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %10 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 @is_edge_vertex(i32 %11)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %12 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  store i32 %13, i32* %bpos, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %if.then, %for.cond.6
  %15 = load i32, i32* %bpos, align 4
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  br label %for.inc.136

if.end.18:                                        ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.133, %if.end.18
  %16 = load i32, i32* %k, align 4
  %cmp20 = icmp slt i32 %16, 4
  br i1 %cmp20, label %for.body.22, label %for.end.135

for.body.22:                                      ; preds = %for.cond.19
  %17 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  store i32 %18, i32* %up, align 4
  %19 = load i32, i32* %bpos, align 4
  %20 = load i32, i32* %up, align 4
  %sub25 = sub nsw i32 %19, %20
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %cmp29 = icmp ne i32 %conv28, 3
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.22
  br label %for.inc.133

if.end.32:                                        ; preds = %for.body.22
  %22 = load i32, i32* %bpos, align 4
  %23 = load i32, i32* %up, align 4
  %add = add nsw i32 %22, %23
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  %25 = load i32, i32* %other, align 4
  %cmp36 = icmp ne i32 %conv35, %25
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.32
  br label %for.inc.133

if.end.39:                                        ; preds = %if.end.32
  store i32 0, i32* %l, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.130, %if.end.39
  %26 = load i32, i32* %l, align 4
  %cmp41 = icmp slt i32 %26, 2
  br i1 %cmp41, label %for.body.43, label %for.end.132

for.body.43:                                      ; preds = %for.cond.40
  %27 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %27, 1
  %rem = srem i32 %add44, 4
  %idxprom45 = sext i32 %rem to i64
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom45
  %28 = load i32, i32* %arrayidx46, align 4
  store i32 %28, i32* %right, align 4
  %29 = load i32, i32* %l, align 4
  %cmp47 = icmp eq i32 %29, 1
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.body.43
  %30 = load i32, i32* %right, align 4
  %sub50 = sub nsw i32 0, %30
  store i32 %sub50, i32* %right, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.body.43
  %31 = load i32, i32* %bpos, align 4
  %32 = load i32, i32* %up, align 4
  %add52 = add nsw i32 %31, %32
  %33 = load i32, i32* %right, align 4
  %sub53 = sub nsw i32 %add52, %33
  store i32 %sub53, i32* %cpos, align 4
  %34 = load i32, i32* %bpos, align 4
  %35 = load i32, i32* %up, align 4
  %add54 = add nsw i32 %34, %35
  %36 = load i32, i32* %right, align 4
  %add55 = add nsw i32 %add54, %36
  store i32 %add55, i32* %dpos, align 4
  %37 = load i32, i32* %cpos, align 4
  %idxprom56 = sext i32 %37 to i64
  %arrayidx57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom56
  %38 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %38 to i32
  %39 = load i32, i32* %color, align 4
  %cmp59 = icmp ne i32 %conv58, %39
  br i1 %cmp59, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.51
  %40 = load i32, i32* %cpos, align 4
  %41 = load i32, i32* %str.addr, align 4
  %call61 = call i32 @same_string(i32 %40, i32 %41)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %lor.lhs.false, %if.end.51
  br label %for.inc.130

if.end.64:                                        ; preds = %lor.lhs.false
  %42 = load i32, i32* %dpos, align 4
  %idxprom65 = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom65
  %43 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %43 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %if.then.73, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.end.64
  %44 = load i32, i32* %dpos, align 4
  %45 = load i32, i32* %apos, align 4
  %call71 = call i32 @liberty_of_string(i32 %44, i32 %45)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %lor.lhs.false.70, %if.end.64
  br label %for.inc.130

if.end.74:                                        ; preds = %lor.lhs.false.70
  %46 = load i32, i32* %dpos, align 4
  %47 = load i32, i32* %up, align 4
  %add75 = add nsw i32 %46, %47
  store i32 %add75, i32* %epos, align 4
  %48 = load i32, i32* %epos, align 4
  %idxprom76 = sext i32 %48 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %49 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %49 to i32
  %cmp79 = icmp ne i32 %conv78, 0
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.74
  %50 = load i32, i32* %epos, align 4
  %51 = load i32, i32* %apos, align 4
  %call82 = call i32 @liberty_of_string(i32 %50, i32 %51)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %lor.lhs.false.81, %if.end.74
  br label %for.inc.130

if.end.85:                                        ; preds = %lor.lhs.false.81
  %52 = load i32, i32* %dpos, align 4
  %53 = load i32, i32* %color, align 4
  %call86 = call i32 @approxlib(i32 %52, i32 %53, i32 3, i32* null)
  %cmp87 = icmp slt i32 %call86, 3
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.85
  br label %for.inc.130

if.end.90:                                        ; preds = %if.end.85
  %54 = load i32, i32* %epos, align 4
  %55 = load i32, i32* %other, align 4
  %call91 = call i32 @approxlib(i32 %54, i32 %55, i32 4, i32* null)
  %cmp92 = icmp sgt i32 %call91, 3
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.90
  br label %for.inc.130

if.end.95:                                        ; preds = %if.end.90
  br label %do.body

do.body:                                          ; preds = %if.end.95
  store i32 0, i32* %u, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.109, %do.body
  %56 = load i32, i32* %u, align 4
  %57 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %57, i32 0, i32 2
  %58 = load i32, i32* %num, align 4
  %cmp97 = icmp slt i32 %56, %58
  br i1 %cmp97, label %for.body.99, label %for.end.111

for.body.99:                                      ; preds = %for.cond.96
  %59 = load i32, i32* %u, align 4
  %idxprom100 = sext i32 %59 to i64
  %60 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %60, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom100
  %61 = load i32, i32* %arrayidx101, align 4
  %62 = load i32, i32* %dpos, align 4
  %cmp102 = icmp eq i32 %61, %62
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %for.body.99
  %63 = load i32, i32* %u, align 4
  %idxprom105 = sext i32 %63 to i64
  %64 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %64, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom105
  %65 = load i32, i32* %arrayidx106, align 4
  %add107 = add nsw i32 %65, 10
  store i32 %add107, i32* %arrayidx106, align 4
  br label %for.end.111

if.end.108:                                       ; preds = %for.body.99
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %66 = load i32, i32* %u, align 4
  %inc110 = add nsw i32 %66, 1
  store i32 %inc110, i32* %u, align 4
  br label %for.cond.96

for.end.111:                                      ; preds = %if.then.104, %for.cond.96
  %67 = load i32, i32* %u, align 4
  %68 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %68, i32 0, i32 2
  %69 = load i32, i32* %num112, align 4
  %cmp113 = icmp eq i32 %67, %69
  br i1 %cmp113, label %land.lhs.true, label %if.end.129

land.lhs.true:                                    ; preds = %for.end.111
  %70 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num115 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %70, i32 0, i32 2
  %71 = load i32, i32* %num115, align 4
  %cmp116 = icmp slt i32 %71, 50
  br i1 %cmp116, label %if.then.118, label %if.end.129

if.then.118:                                      ; preds = %land.lhs.true
  %72 = load i32, i32* %dpos, align 4
  %73 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num119 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %73, i32 0, i32 2
  %74 = load i32, i32* %num119, align 4
  %idxprom120 = sext i32 %74 to i64
  %75 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos121 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %75, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [50 x i32], [50 x i32]* %pos121, i32 0, i64 %idxprom120
  store i32 %72, i32* %arrayidx122, align 4
  %76 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num123 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %76, i32 0, i32 2
  %77 = load i32, i32* %num123, align 4
  %idxprom124 = sext i32 %77 to i64
  %78 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %78, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [50 x i32], [50 x i32]* %score125, i32 0, i64 %idxprom124
  store i32 10, i32* %arrayidx126, align 4
  %79 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num127 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %79, i32 0, i32 2
  %80 = load i32, i32* %num127, align 4
  %inc128 = add nsw i32 %80, 1
  store i32 %inc128, i32* %num127, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.118, %land.lhs.true, %for.end.111
  br label %do.end

do.end:                                           ; preds = %if.end.129
  br label %for.inc.130

for.inc.130:                                      ; preds = %do.end, %if.then.94, %if.then.89, %if.then.84, %if.then.73, %if.then.63
  %81 = load i32, i32* %l, align 4
  %inc131 = add nsw i32 %81, 1
  store i32 %inc131, i32* %l, align 4
  br label %for.cond.40

for.end.132:                                      ; preds = %for.cond.40
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.end.132, %if.then.38, %if.then.31
  %82 = load i32, i32* %k, align 4
  %inc134 = add nsw i32 %82, 1
  store i32 %inc134, i32* %k, align 4
  br label %for.cond.19

for.end.135:                                      ; preds = %for.cond.19
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135, %if.then.17
  %83 = load i32, i32* %r, align 4
  %inc137 = add nsw i32 %83, 1
  store i32 %inc137, i32* %r, align 4
  br label %for.cond

for.end.138:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @special_rescue_moves(i32 %str, i32 %lib, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %lib.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %lib, i32* %lib.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %d, align 4
  %6 = load i32, i32* %lib.addr, align 4
  %7 = load i32, i32* %d, align 4
  %add = add nsw i32 %6, %7
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %8 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end.49

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %lib.addr, align 4
  %10 = load i32, i32* %other, align 4
  %call = call i32 @approxlib(i32 %9, i32 %10, i32 3, i32* null)
  %cmp9 = icmp sgt i32 %call, 2
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  br label %for.inc.50

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %lib.addr, align 4
  %12 = load i32, i32* %d, align 4
  %add12 = add nsw i32 %11, %12
  %13 = load i32, i32* %color, align 4
  %call13 = call i32 @is_self_atari(i32 %add12, i32 %13)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  br label %for.inc.50

if.end.15:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.15
  store i32 0, i32* %u, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %do.body
  %14 = load i32, i32* %u, align 4
  %15 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %16 = load i32, i32* %num, align 4
  %cmp17 = icmp slt i32 %14, %16
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %17 = load i32, i32* %u, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom20
  %19 = load i32, i32* %arrayidx21, align 4
  %20 = load i32, i32* %lib.addr, align 4
  %21 = load i32, i32* %d, align 4
  %add22 = add nsw i32 %20, %21
  %cmp23 = icmp eq i32 %19, %add22
  br i1 %cmp23, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %for.body.19
  %22 = load i32, i32* %u, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %23, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom26
  %24 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %24, 0
  store i32 %add28, i32* %arrayidx27, align 4
  br label %for.end

if.end.29:                                        ; preds = %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %25 = load i32, i32* %u, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.16

for.end:                                          ; preds = %if.then.25, %for.cond.16
  %26 = load i32, i32* %u, align 4
  %27 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num30 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %27, i32 0, i32 2
  %28 = load i32, i32* %num30, align 4
  %cmp31 = icmp eq i32 %26, %28
  br i1 %cmp31, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.end
  %29 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num33 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %29, i32 0, i32 2
  %30 = load i32, i32* %num33, align 4
  %cmp34 = icmp slt i32 %30, 50
  br i1 %cmp34, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %land.lhs.true
  %31 = load i32, i32* %lib.addr, align 4
  %32 = load i32, i32* %d, align 4
  %add37 = add nsw i32 %31, %32
  %33 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num38 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %33, i32 0, i32 2
  %34 = load i32, i32* %num38, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos40 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %35, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [50 x i32], [50 x i32]* %pos40, i32 0, i64 %idxprom39
  store i32 %add37, i32* %arrayidx41, align 4
  %36 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num42 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %36, i32 0, i32 2
  %37 = load i32, i32* %num42, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score44 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %38, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [50 x i32], [50 x i32]* %score44, i32 0, i64 %idxprom43
  store i32 0, i32* %arrayidx45, align 4
  %39 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num46 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %39, i32 0, i32 2
  %40 = load i32, i32* %num46, align 4
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, i32* %num46, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.36, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.48
  br label %if.end.49

if.end.49:                                        ; preds = %do.end, %for.body
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49, %if.then.14, %if.then.11
  %41 = load i32, i32* %k, align 4
  %inc51 = add nsw i32 %41, 1
  store i32 %inc51, i32* %k, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @special_rescue2_moves(i32 %str, i32* %libs, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %newlibs = alloca [4 x i32], align 16
  %liberties = alloca i32, align 4
  %newstr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %alib = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %entry
  %3 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32*, i32** %libs.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %alib, align 4
  %7 = load i32, i32* %alib, align 4
  %8 = load i32, i32* %other, align 4
  %call = call i32 @is_suicide(i32 %7, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.80

if.end:                                           ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.77, %if.end
  %9 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %9, 4
  br i1 %cmp5, label %for.body.7, label %for.end.79

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %alib, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  %add = add nsw i32 %10, %12
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %14 = load i32, i32* %color, align 4
  %cmp13 = icmp eq i32 %conv12, %14
  br i1 %cmp13, label %land.lhs.true, label %if.end.76

land.lhs.true:                                    ; preds = %for.body.7
  %15 = load i32, i32* %alib, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %15, %17
  %18 = load i32, i32* %str.addr, align 4
  %call18 = call i32 @same_string(i32 %add17, i32 %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.76, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %alib, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom21
  %21 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %19, %21
  store i32 %add23, i32* %newstr, align 4
  %22 = load i32, i32* %newstr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %newlibs, i32 0, i32 0
  %call24 = call i32 @findlib(i32 %22, i32 4, i32* %arraydecay)
  store i32 %call24, i32* %liberties, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.73, %if.then.20
  %23 = load i32, i32* %s, align 4
  %24 = load i32, i32* %liberties, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.25
  %25 = load i32, i32* %s, align 4
  %cmp28 = icmp slt i32 %25, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %26 = phi i1 [ false, %for.cond.25 ], [ %cmp28, %land.rhs ]
  br i1 %26, label %for.body.30, label %for.end.75

for.body.30:                                      ; preds = %land.end
  %27 = load i32, i32* %s, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %newlibs, i32 0, i64 %idxprom31
  %28 = load i32, i32* %arrayidx32, align 4
  %29 = load i32, i32* %color, align 4
  %call33 = call i32 @is_self_atari(i32 %28, i32 %29)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.72, label %if.then.35

if.then.35:                                       ; preds = %for.body.30
  br label %do.body

do.body:                                          ; preds = %if.then.35
  store i32 0, i32* %u, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %do.body
  %30 = load i32, i32* %u, align 4
  %31 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %31, i32 0, i32 2
  %32 = load i32, i32* %num, align 4
  %cmp37 = icmp slt i32 %30, %32
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %33 = load i32, i32* %u, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %34, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %36 = load i32, i32* %s, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %newlibs, i32 0, i64 %idxprom42
  %37 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %35, %37
  br i1 %cmp44, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %for.body.39
  %38 = load i32, i32* %u, align 4
  %idxprom47 = sext i32 %38 to i64
  %39 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %39, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom47
  %40 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %40, 0
  store i32 %add49, i32* %arrayidx48, align 4
  br label %for.end

if.end.50:                                        ; preds = %for.body.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %41 = load i32, i32* %u, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.36

for.end:                                          ; preds = %if.then.46, %for.cond.36
  %42 = load i32, i32* %u, align 4
  %43 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num51 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %43, i32 0, i32 2
  %44 = load i32, i32* %num51, align 4
  %cmp52 = icmp eq i32 %42, %44
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.71

land.lhs.true.54:                                 ; preds = %for.end
  %45 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num55 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %45, i32 0, i32 2
  %46 = load i32, i32* %num55, align 4
  %cmp56 = icmp slt i32 %46, 50
  br i1 %cmp56, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %land.lhs.true.54
  %47 = load i32, i32* %s, align 4
  %idxprom59 = sext i32 %47 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* %newlibs, i32 0, i64 %idxprom59
  %48 = load i32, i32* %arrayidx60, align 4
  %49 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num61 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %49, i32 0, i32 2
  %50 = load i32, i32* %num61, align 4
  %idxprom62 = sext i32 %50 to i64
  %51 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos63 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %51, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [50 x i32], [50 x i32]* %pos63, i32 0, i64 %idxprom62
  store i32 %48, i32* %arrayidx64, align 4
  %52 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num65 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %52, i32 0, i32 2
  %53 = load i32, i32* %num65, align 4
  %idxprom66 = sext i32 %53 to i64
  %54 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score67 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %54, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [50 x i32], [50 x i32]* %score67, i32 0, i64 %idxprom66
  store i32 0, i32* %arrayidx68, align 4
  %55 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num69 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %55, i32 0, i32 2
  %56 = load i32, i32* %num69, align 4
  %inc70 = add nsw i32 %56, 1
  store i32 %inc70, i32* %num69, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.58, %land.lhs.true.54, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.71
  br label %if.end.72

if.end.72:                                        ; preds = %do.end, %for.body.30
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %57 = load i32, i32* %s, align 4
  %inc74 = add nsw i32 %57, 1
  store i32 %inc74, i32* %s, align 4
  br label %for.cond.25

for.end.75:                                       ; preds = %land.end
  %58 = load i32, i32* %newstr, align 4
  %59 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @break_chain_moves(i32 %58, %struct.reading_moves* %59)
  %60 = load i32, i32* %newstr, align 4
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @break_chain2_efficient_moves(i32 %60, %struct.reading_moves* %61)
  %62 = load i32, i32* %newstr, align 4
  %63 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @edge_clamp_moves(i32 %62, %struct.reading_moves* %63)
  br label %if.end.76

if.end.76:                                        ; preds = %for.end.75, %land.lhs.true, %for.body.7
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %64 = load i32, i32* %k, align 4
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %k, align 4
  br label %for.cond.4

for.end.79:                                       ; preds = %for.cond.4
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79, %if.then
  %65 = load i32, i32* %r, align 4
  %inc81 = add nsw i32 %65, 1
  store i32 %inc81, i32* %r, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  ret void
}

declare i32 @has_neighbor(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @superstring_breakchain_moves(i32 %str, i32 %liberty_cap, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %liberty_cap.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %liberty_cap, i32* %liberty_cap.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %1 = load i32, i32* %liberty_cap.addr, align 4
  call void @proper_superstring_chainlinks(i32 %0, i32* %adj, i32* %arraydecay, i32 %1)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %entry
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call = call i32 @countlib(i32 %5)
  store i32 %call, i32* %liberties, align 4
  %6 = load i32, i32* %liberties, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 @findlib(i32 %8, i32 1, i32* %apos)
  br label %do.body

do.body:                                          ; preds = %if.then
  store i32 0, i32* %u, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %do.body
  %9 = load i32, i32* %u, align 4
  %10 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %10, i32 0, i32 2
  %11 = load i32, i32* %num, align 4
  %cmp6 = icmp slt i32 %9, %11
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %12 = load i32, i32* %u, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %15 = load i32, i32* %apos, align 4
  %cmp10 = icmp eq i32 %14, %15
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.7
  %16 = load i32, i32* %u, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %add = add nsw i32 %18, 0
  store i32 %add, i32* %arrayidx13, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %u, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then.11, %for.cond.5
  %20 = load i32, i32* %u, align 4
  %21 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num14 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %21, i32 0, i32 2
  %22 = load i32, i32* %num14, align 4
  %cmp15 = icmp eq i32 %20, %22
  br i1 %cmp15, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %for.end
  %23 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num16 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %23, i32 0, i32 2
  %24 = load i32, i32* %num16, align 4
  %cmp17 = icmp slt i32 %24, 50
  br i1 %cmp17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %apos, align 4
  %26 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num19 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %27 = load i32, i32* %num19, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos21 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %28, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [50 x i32], [50 x i32]* %pos21, i32 0, i64 %idxprom20
  store i32 %25, i32* %arrayidx22, align 4
  %29 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num23 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %29, i32 0, i32 2
  %30 = load i32, i32* %num23, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score25 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %31, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %score25, i32 0, i64 %idxprom24
  store i32 0, i32* %arrayidx26, align 4
  %32 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num27 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %32, i32 0, i32 2
  %33 = load i32, i32* %num27, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, i32* %num27, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.18, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %if.end.35

if.else:                                          ; preds = %for.body
  %34 = load i32, i32* %liberties, align 4
  %cmp30 = icmp eq i32 %34, 2
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.else
  %35 = load i32, i32* %str.addr, align 4
  %36 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom32
  %37 = load i32, i32* %arrayidx33, align 4
  %38 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @do_find_break_chain2_efficient_moves(i32 %35, i32 %37, %struct.reading_moves* %38)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %do.end
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %39 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  ret void
}

declare void @find_superstring_liberties(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @break_chain2_defense_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %saved_num_moves = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %0, i32 0, i32 2
  %1 = load i32, i32* %num, align 4
  store i32 %1, i32* %saved_num_moves, align 4
  %2 = load i32, i32* %str.addr, align 4
  %3 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %4 = load i32, i32* @stackp, align 4
  %5 = load i32, i32* @backfill_depth, align 4
  %cmp = icmp sle i32 %4, %5
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  call void @break_chain2_moves(i32 %2, %struct.reading_moves* %3, i32 %lnot.ext)
  %6 = load i32, i32* %saved_num_moves, align 4
  store i32 %6, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %k, align 4
  %8 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num1 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %8, i32 0, i32 2
  %9 = load i32, i32* %num1, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom
  store i32 -2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @special_rescue5_moves(i32 %str, i32* %libs, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs2 = alloca [4 x i32], align 16
  %liberties2 = alloca i32, align 4
  %u = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %t = alloca i32, align 4
  %cpos = alloca i32, align 4
  %u105 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  store i32 %call, i32* %liberties, align 4
  %4 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %liberties, align 4
  %cmp2 = icmp eq i32 %5, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %6, 20
  %sub4 = sub nsw i32 %div, 1
  %7 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %7, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1942, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i32 0, i32 0), i32 %sub4, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.153, %if.end
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %liberties, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end.155

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32*, i32** %libs.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  store i32 %12, i32* %apos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.150, %for.body
  %13 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %13, 4
  br i1 %cmp11, label %for.body.13, label %for.end.152

for.body.13:                                      ; preds = %for.cond.10
  %14 = load i32, i32* %apos, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %14, %16
  store i32 %add, i32* %bpos, align 4
  %17 = load i32, i32* %bpos, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %19 = load i32, i32* %other, align 4
  %cmp19 = icmp ne i32 %conv18, %19
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.13
  br label %for.inc.150

if.end.22:                                        ; preds = %for.body.13
  %20 = load i32, i32* %bpos, align 4
  %call23 = call i32 @countlib(i32 %20)
  %21 = load i32, i32* %liberties, align 4
  %add24 = add nsw i32 %21, 1
  %cmp25 = icmp sgt i32 %call23, %add24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  br label %for.inc.150

if.end.28:                                        ; preds = %if.end.22
  %22 = load i32, i32* %str.addr, align 4
  %23 = load i32, i32* %bpos, align 4
  %call29 = call i32 @count_common_libs(i32 %22, i32 %23)
  %cmp30 = icmp slt i32 %call29, 2
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  br label %for.inc.150

if.end.33:                                        ; preds = %if.end.28
  %24 = load i32, i32* %bpos, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %libs2, i32 0, i32 0
  %call34 = call i32 @findlib(i32 %24, i32 4, i32* %arraydecay)
  store i32 %call34, i32* %liberties2, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.84, %if.end.33
  %25 = load i32, i32* %s, align 4
  %26 = load i32, i32* %liberties2, align 4
  %cmp36 = icmp slt i32 %25, %26
  br i1 %cmp36, label %for.body.38, label %for.end.86

for.body.38:                                      ; preds = %for.cond.35
  %27 = load i32, i32* %s, align 4
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %libs2, i32 0, i64 %idxprom39
  %28 = load i32, i32* %arrayidx40, align 4
  %29 = load i32, i32* %str.addr, align 4
  %call41 = call i32 @liberty_of_string(i32 %28, i32 %29)
  %tobool = icmp ne i32 %call41, 0
  br i1 %tobool, label %if.end.83, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.38
  %30 = load i32, i32* %s, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %libs2, i32 0, i64 %idxprom42
  %31 = load i32, i32* %arrayidx43, align 4
  %32 = load i32, i32* %color, align 4
  %call44 = call i32 @is_self_atari(i32 %31, i32 %32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.83, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.46
  store i32 0, i32* %u, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %do.body
  %33 = load i32, i32* %u, align 4
  %34 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %34, i32 0, i32 2
  %35 = load i32, i32* %num, align 4
  %cmp48 = icmp slt i32 %33, %35
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %36 = load i32, i32* %u, align 4
  %idxprom51 = sext i32 %36 to i64
  %37 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %37, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom51
  %38 = load i32, i32* %arrayidx52, align 4
  %39 = load i32, i32* %s, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %libs2, i32 0, i64 %idxprom53
  %40 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp eq i32 %38, %40
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %for.body.50
  %41 = load i32, i32* %u, align 4
  %idxprom58 = sext i32 %41 to i64
  %42 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %42, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom58
  %43 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %43, 0
  store i32 %add60, i32* %arrayidx59, align 4
  br label %for.end

if.end.61:                                        ; preds = %for.body.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %44 = load i32, i32* %u, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.47

for.end:                                          ; preds = %if.then.57, %for.cond.47
  %45 = load i32, i32* %u, align 4
  %46 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num62 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %46, i32 0, i32 2
  %47 = load i32, i32* %num62, align 4
  %cmp63 = icmp eq i32 %45, %47
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.82

land.lhs.true.65:                                 ; preds = %for.end
  %48 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num66 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %48, i32 0, i32 2
  %49 = load i32, i32* %num66, align 4
  %cmp67 = icmp slt i32 %49, 50
  br i1 %cmp67, label %if.then.69, label %if.end.82

if.then.69:                                       ; preds = %land.lhs.true.65
  %50 = load i32, i32* %s, align 4
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %libs2, i32 0, i64 %idxprom70
  %51 = load i32, i32* %arrayidx71, align 4
  %52 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num72 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %52, i32 0, i32 2
  %53 = load i32, i32* %num72, align 4
  %idxprom73 = sext i32 %53 to i64
  %54 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos74 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %54, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [50 x i32], [50 x i32]* %pos74, i32 0, i64 %idxprom73
  store i32 %51, i32* %arrayidx75, align 4
  %55 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num76 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %55, i32 0, i32 2
  %56 = load i32, i32* %num76, align 4
  %idxprom77 = sext i32 %56 to i64
  %57 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score78 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %57, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [50 x i32], [50 x i32]* %score78, i32 0, i64 %idxprom77
  store i32 0, i32* %arrayidx79, align 4
  %58 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num80 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 2
  %59 = load i32, i32* %num80, align 4
  %inc81 = add nsw i32 %59, 1
  store i32 %inc81, i32* %num80, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.69, %land.lhs.true.65, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.82
  br label %if.end.83

if.end.83:                                        ; preds = %do.end, %land.lhs.true, %for.body.38
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %60 = load i32, i32* %s, align 4
  %inc85 = add nsw i32 %60, 1
  store i32 %inc85, i32* %s, align 4
  br label %for.cond.35

for.end.86:                                       ; preds = %for.cond.35
  %61 = load i32, i32* %liberties2, align 4
  %62 = load i32, i32* %liberties, align 4
  %cmp87 = icmp sle i32 %61, %62
  br i1 %cmp87, label %if.then.89, label %if.end.149

if.then.89:                                       ; preds = %for.end.86
  %63 = load i32, i32* %bpos, align 4
  %arraydecay90 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call91 = call i32 @chainlinks2(i32 %63, i32* %arraydecay90, i32 1)
  store i32 %call91, i32* %adj, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.146, %if.then.89
  %64 = load i32, i32* %t, align 4
  %65 = load i32, i32* %adj, align 4
  %cmp93 = icmp slt i32 %64, %65
  br i1 %cmp93, label %for.body.95, label %for.end.148

for.body.95:                                      ; preds = %for.cond.92
  %66 = load i32, i32* %t, align 4
  %idxprom96 = sext i32 %66 to i64
  %arrayidx97 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom96
  %67 = load i32, i32* %arrayidx97, align 4
  %68 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @break_chain_moves(i32 %67, %struct.reading_moves* %68)
  %69 = load i32, i32* %t, align 4
  %idxprom98 = sext i32 %69 to i64
  %arrayidx99 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom98
  %70 = load i32, i32* %arrayidx99, align 4
  %call100 = call i32 @findlib(i32 %70, i32 1, i32* %cpos)
  %71 = load i32, i32* %cpos, align 4
  %72 = load i32, i32* %color, align 4
  %call101 = call i32 @is_self_atari(i32 %71, i32 %72)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.145, label %if.then.103

if.then.103:                                      ; preds = %for.body.95
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.103
  store i32 0, i32* %u105, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.122, %do.body.104
  %73 = load i32, i32* %u105, align 4
  %74 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num107 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %74, i32 0, i32 2
  %75 = load i32, i32* %num107, align 4
  %cmp108 = icmp slt i32 %73, %75
  br i1 %cmp108, label %for.body.110, label %for.end.124

for.body.110:                                     ; preds = %for.cond.106
  %76 = load i32, i32* %u105, align 4
  %idxprom111 = sext i32 %76 to i64
  %77 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %77, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [50 x i32], [50 x i32]* %pos112, i32 0, i64 %idxprom111
  %78 = load i32, i32* %arrayidx113, align 4
  %79 = load i32, i32* %cpos, align 4
  %cmp114 = icmp eq i32 %78, %79
  br i1 %cmp114, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %for.body.110
  %80 = load i32, i32* %u105, align 4
  %idxprom117 = sext i32 %80 to i64
  %81 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score118 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %81, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [50 x i32], [50 x i32]* %score118, i32 0, i64 %idxprom117
  %82 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %82, 0
  store i32 %add120, i32* %arrayidx119, align 4
  br label %for.end.124

if.end.121:                                       ; preds = %for.body.110
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %83 = load i32, i32* %u105, align 4
  %inc123 = add nsw i32 %83, 1
  store i32 %inc123, i32* %u105, align 4
  br label %for.cond.106

for.end.124:                                      ; preds = %if.then.116, %for.cond.106
  %84 = load i32, i32* %u105, align 4
  %85 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %85, i32 0, i32 2
  %86 = load i32, i32* %num125, align 4
  %cmp126 = icmp eq i32 %84, %86
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.143

land.lhs.true.128:                                ; preds = %for.end.124
  %87 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num129 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %87, i32 0, i32 2
  %88 = load i32, i32* %num129, align 4
  %cmp130 = icmp slt i32 %88, 50
  br i1 %cmp130, label %if.then.132, label %if.end.143

if.then.132:                                      ; preds = %land.lhs.true.128
  %89 = load i32, i32* %cpos, align 4
  %90 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num133 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %90, i32 0, i32 2
  %91 = load i32, i32* %num133, align 4
  %idxprom134 = sext i32 %91 to i64
  %92 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos135 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %92, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [50 x i32], [50 x i32]* %pos135, i32 0, i64 %idxprom134
  store i32 %89, i32* %arrayidx136, align 4
  %93 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num137 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %93, i32 0, i32 2
  %94 = load i32, i32* %num137, align 4
  %idxprom138 = sext i32 %94 to i64
  %95 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score139 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %95, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [50 x i32], [50 x i32]* %score139, i32 0, i64 %idxprom138
  store i32 0, i32* %arrayidx140, align 4
  %96 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %96, i32 0, i32 2
  %97 = load i32, i32* %num141, align 4
  %inc142 = add nsw i32 %97, 1
  store i32 %inc142, i32* %num141, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.132, %land.lhs.true.128, %for.end.124
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %for.body.95
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %98 = load i32, i32* %t, align 4
  %inc147 = add nsw i32 %98, 1
  store i32 %inc147, i32* %t, align 4
  br label %for.cond.92

for.end.148:                                      ; preds = %for.cond.92
  %99 = load i32, i32* %bpos, align 4
  %100 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @double_atari_chain2_moves(i32 %99, %struct.reading_moves* %100)
  br label %if.end.149

if.end.149:                                       ; preds = %for.end.148, %for.end.86
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149, %if.then.32, %if.then.27, %if.then.21
  %101 = load i32, i32* %k, align 4
  %inc151 = add nsw i32 %101, 1
  store i32 %inc151, i32* %k, align 4
  br label %for.cond.10

for.end.152:                                      ; preds = %for.cond.10
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.end.152
  %102 = load i32, i32* %r, align 4
  %inc154 = add nsw i32 %102, 1
  store i32 %inc154, i32* %r, align 4
  br label %for.cond

for.end.155:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @break_chain3_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %apos = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %libs = alloca [3 x i32], align 4
  %possible_moves = alloca [50 x i32], align 16
  %mw = alloca [400 x i32], align 16
  %lib1 = alloca i32, align 4
  %lib2 = alloca i32, align 4
  %lib3 = alloca i32, align 4
  %xpos = alloca i32, align 4
  %u108 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %u, align 4
  %3 = bitcast [400 x i32]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 1600, i32 16, i1 false)
  %4 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %4, i32* %arraydecay, i32 3)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %entry
  %5 = load i32, i32* %r, align 4
  %6 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %lib1, align 4
  store i32 0, i32* %lib2, align 4
  store i32 0, i32* %lib3, align 4
  %7 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  store i32 %8, i32* %apos, align 4
  %9 = load i32, i32* %apos, align 4
  %arraydecay4 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %call5 = call i32 @findlib(i32 %9, i32 3, i32* %arraydecay4)
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 0
  %10 = load i32, i32* %arrayidx6, align 4
  %11 = load i32, i32* %other, align 4
  %call7 = call i32 @approxlib(i32 %10, i32 %11, i32 4, i32* null)
  store i32 %call7, i32* %lib1, align 4
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 1
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %other, align 4
  %call9 = call i32 @approxlib(i32 %12, i32 %13, i32 4, i32* null)
  store i32 %call9, i32* %lib2, align 4
  %14 = load i32, i32* %lib1, align 4
  %cmp10 = icmp sge i32 %14, 4
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %lib2, align 4
  %cmp12 = icmp sge i32 %15, 4
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.92

if.end:                                           ; preds = %land.lhs.true, %for.body
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 2
  %16 = load i32, i32* %arrayidx14, align 4
  %17 = load i32, i32* %other, align 4
  %call15 = call i32 @approxlib(i32 %16, i32 %17, i32 4, i32* null)
  store i32 %call15, i32* %lib3, align 4
  %18 = load i32, i32* %lib1, align 4
  %cmp16 = icmp sge i32 %18, 4
  br i1 %cmp16, label %land.lhs.true.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %19 = load i32, i32* %lib2, align 4
  %cmp18 = icmp sge i32 %19, 4
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %lor.lhs.false, %if.end
  %20 = load i32, i32* %lib3, align 4
  %cmp21 = icmp sge i32 %20, 4
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.20
  br label %for.inc.92

if.end.24:                                        ; preds = %land.lhs.true.20, %lor.lhs.false
  %21 = load i32, i32* %lib1, align 4
  %cmp25 = icmp sge i32 %21, 4
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.38

land.lhs.true.27:                                 ; preds = %if.end.24
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 0
  %22 = load i32, i32* %arrayidx28, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom29
  %23 = load i32, i32* %arrayidx30, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.end.38, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.27
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 0
  %24 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom33
  store i32 1, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 0
  %25 = load i32, i32* %arrayidx35, align 4
  %26 = load i32, i32* %u, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %u, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [50 x i32], [50 x i32]* %possible_moves, i32 0, i64 %idxprom36
  store i32 %25, i32* %arrayidx37, align 4
  br label %for.inc.92

if.end.38:                                        ; preds = %land.lhs.true.27, %if.end.24
  %27 = load i32, i32* %lib2, align 4
  %cmp39 = icmp sge i32 %27, 4
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.54

land.lhs.true.41:                                 ; preds = %if.end.38
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 1
  %28 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %28 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom43
  %29 = load i32, i32* %arrayidx44, align 4
  %tobool45 = icmp ne i32 %29, 0
  br i1 %tobool45, label %if.end.54, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.41
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 1
  %30 = load i32, i32* %arrayidx47, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom48
  store i32 1, i32* %arrayidx49, align 4
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 1
  %31 = load i32, i32* %arrayidx50, align 4
  %32 = load i32, i32* %u, align 4
  %inc51 = add nsw i32 %32, 1
  store i32 %inc51, i32* %u, align 4
  %idxprom52 = sext i32 %32 to i64
  %arrayidx53 = getelementptr inbounds [50 x i32], [50 x i32]* %possible_moves, i32 0, i64 %idxprom52
  store i32 %31, i32* %arrayidx53, align 4
  br label %for.inc.92

if.end.54:                                        ; preds = %land.lhs.true.41, %if.end.38
  %33 = load i32, i32* %lib3, align 4
  %cmp55 = icmp sge i32 %33, 4
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %if.end.54
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 2
  %34 = load i32, i32* %arrayidx58, align 4
  %idxprom59 = sext i32 %34 to i64
  %arrayidx60 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom59
  %35 = load i32, i32* %arrayidx60, align 4
  %tobool61 = icmp ne i32 %35, 0
  br i1 %tobool61, label %if.end.70, label %if.then.62

if.then.62:                                       ; preds = %land.lhs.true.57
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 2
  %36 = load i32, i32* %arrayidx63, align 4
  %idxprom64 = sext i32 %36 to i64
  %arrayidx65 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom64
  store i32 1, i32* %arrayidx65, align 4
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 2
  %37 = load i32, i32* %arrayidx66, align 4
  %38 = load i32, i32* %u, align 4
  %inc67 = add nsw i32 %38, 1
  store i32 %inc67, i32* %u, align 4
  %idxprom68 = sext i32 %38 to i64
  %arrayidx69 = getelementptr inbounds [50 x i32], [50 x i32]* %possible_moves, i32 0, i64 %idxprom68
  store i32 %37, i32* %arrayidx69, align 4
  br label %for.inc.92

if.end.70:                                        ; preds = %land.lhs.true.57, %if.end.54
  store i32 0, i32* %k, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %if.end.70
  %39 = load i32, i32* %k, align 4
  %cmp72 = icmp slt i32 %39, 3
  br i1 %cmp72, label %for.body.74, label %for.end

for.body.74:                                      ; preds = %for.cond.71
  %40 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %40 to i64
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom75
  %41 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %41 to i64
  %arrayidx78 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom77
  %42 = load i32, i32* %arrayidx78, align 4
  %tobool79 = icmp ne i32 %42, 0
  br i1 %tobool79, label %if.end.90, label %if.then.80

if.then.80:                                       ; preds = %for.body.74
  %43 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %43 to i64
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom81
  %44 = load i32, i32* %arrayidx82, align 4
  %idxprom83 = sext i32 %44 to i64
  %arrayidx84 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom83
  store i32 1, i32* %arrayidx84, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %45 to i64
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom85
  %46 = load i32, i32* %arrayidx86, align 4
  %47 = load i32, i32* %u, align 4
  %inc87 = add nsw i32 %47, 1
  store i32 %inc87, i32* %u, align 4
  %idxprom88 = sext i32 %47 to i64
  %arrayidx89 = getelementptr inbounds [50 x i32], [50 x i32]* %possible_moves, i32 0, i64 %idxprom88
  store i32 %46, i32* %arrayidx89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.80, %for.body.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %48 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %48, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end, %if.then.62, %if.then.46, %if.then.31, %if.then.23, %if.then
  %49 = load i32, i32* %r, align 4
  %inc93 = add nsw i32 %49, 1
  store i32 %inc93, i32* %r, align 4
  br label %for.cond

for.end.94:                                       ; preds = %for.cond
  store i32 0, i32* %v, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.144, %for.end.94
  %50 = load i32, i32* %v, align 4
  %51 = load i32, i32* %u, align 4
  %cmp96 = icmp slt i32 %50, %51
  br i1 %cmp96, label %for.body.98, label %for.end.146

for.body.98:                                      ; preds = %for.cond.95
  %52 = load i32, i32* %v, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds [50 x i32], [50 x i32]* %possible_moves, i32 0, i64 %idxprom99
  %53 = load i32, i32* %arrayidx100, align 4
  store i32 %53, i32* %xpos, align 4
  %54 = load i32, i32* @stackp, align 4
  %55 = load i32, i32* @backfill2_depth, align 4
  %cmp101 = icmp slt i32 %54, %55
  br i1 %cmp101, label %if.then.107, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %for.body.98
  %56 = load i32, i32* %xpos, align 4
  %57 = load i32, i32* %color, align 4
  %call104 = call i32 @approxlib(i32 %56, i32 %57, i32 2, i32* null)
  %cmp105 = icmp sgt i32 %call104, 1
  br i1 %cmp105, label %if.then.107, label %if.end.143

if.then.107:                                      ; preds = %lor.lhs.false.103, %for.body.98
  br label %do.body

do.body:                                          ; preds = %if.then.107
  store i32 0, i32* %u108, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.121, %do.body
  %58 = load i32, i32* %u108, align 4
  %59 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %59, i32 0, i32 2
  %60 = load i32, i32* %num, align 4
  %cmp110 = icmp slt i32 %58, %60
  br i1 %cmp110, label %for.body.112, label %for.end.123

for.body.112:                                     ; preds = %for.cond.109
  %61 = load i32, i32* %u108, align 4
  %idxprom113 = sext i32 %61 to i64
  %62 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %62, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom113
  %63 = load i32, i32* %arrayidx114, align 4
  %64 = load i32, i32* %xpos, align 4
  %cmp115 = icmp eq i32 %63, %64
  br i1 %cmp115, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %for.body.112
  %65 = load i32, i32* %u108, align 4
  %idxprom118 = sext i32 %65 to i64
  %66 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom118
  %67 = load i32, i32* %arrayidx119, align 4
  %add = add nsw i32 %67, -2
  store i32 %add, i32* %arrayidx119, align 4
  br label %for.end.123

if.end.120:                                       ; preds = %for.body.112
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %68 = load i32, i32* %u108, align 4
  %inc122 = add nsw i32 %68, 1
  store i32 %inc122, i32* %u108, align 4
  br label %for.cond.109

for.end.123:                                      ; preds = %if.then.117, %for.cond.109
  %69 = load i32, i32* %u108, align 4
  %70 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num124 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %70, i32 0, i32 2
  %71 = load i32, i32* %num124, align 4
  %cmp125 = icmp eq i32 %69, %71
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.142

land.lhs.true.127:                                ; preds = %for.end.123
  %72 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num128 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %72, i32 0, i32 2
  %73 = load i32, i32* %num128, align 4
  %cmp129 = icmp slt i32 %73, 50
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %land.lhs.true.127
  %74 = load i32, i32* %xpos, align 4
  %75 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num132 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %75, i32 0, i32 2
  %76 = load i32, i32* %num132, align 4
  %idxprom133 = sext i32 %76 to i64
  %77 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos134 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %77, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [50 x i32], [50 x i32]* %pos134, i32 0, i64 %idxprom133
  store i32 %74, i32* %arrayidx135, align 4
  %78 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num136 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %78, i32 0, i32 2
  %79 = load i32, i32* %num136, align 4
  %idxprom137 = sext i32 %79 to i64
  %80 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score138 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %80, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [50 x i32], [50 x i32]* %score138, i32 0, i64 %idxprom137
  store i32 -2, i32* %arrayidx139, align 4
  %81 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num140 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %81, i32 0, i32 2
  %82 = load i32, i32* %num140, align 4
  %inc141 = add nsw i32 %82, 1
  store i32 %inc141, i32* %num140, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.131, %land.lhs.true.127, %for.end.123
  br label %do.end

do.end:                                           ; preds = %if.end.142
  br label %if.end.143

if.end.143:                                       ; preds = %do.end, %lor.lhs.false.103
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %83 = load i32, i32* %v, align 4
  %inc145 = add nsw i32 %83, 1
  store i32 %inc145, i32* %v, align 4
  br label %for.cond.95

for.end.146:                                      ; preds = %for.cond.95
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @do_find_break_chain2_efficient_moves(i32 %str, i32 %adj, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %adj.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %adj2 = alloca i32, align 4
  %adjs2 = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  %pos1 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %apos = alloca i32, align 4
  %u = alloca i32, align 4
  %u69 = alloca i32, align 4
  %u199 = alloca i32, align 4
  %u251 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %adj, i32* %adj.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %adj.addr, align 4
  %call = call i32 @countlib(i32 %3)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %adj.addr, align 4
  %div = sdiv i32 %4, 20
  %sub2 = sub nsw i32 %div, 1
  %5 = load i32, i32* %adj.addr, align 4
  %rem = srem i32 %5, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 3778, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %adj.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i32 0
  %call4 = call i32 @chainlinks2(i32 %6, i32* %arraydecay, i32 1)
  store i32 %call4, i32* %adj2, align 4
  %7 = load i32, i32* %adj2, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %str.addr, align 4
  %call7 = call i32 @countlib(i32 %8)
  %cmp8 = icmp sgt i32 %call7, 2
  br i1 %cmp8, label %if.then.10, label %if.end.45

if.then.10:                                       ; preds = %land.lhs.true
  %arrayidx11 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i64 0
  %9 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 @findlib(i32 %9, i32 1, i32* %apos)
  %10 = load i32, i32* %apos, align 4
  %11 = load i32, i32* %color, align 4
  %call13 = call i32 @is_self_atari(i32 %10, i32 %11)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end.44, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  br label %do.body

do.body:                                          ; preds = %if.then.14
  store i32 0, i32* %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %12 = load i32, i32* %u, align 4
  %13 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 2
  %14 = load i32, i32* %num, align 4
  %cmp15 = icmp slt i32 %12, %14
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %u, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom17
  %17 = load i32, i32* %arrayidx18, align 4
  %18 = load i32, i32* %apos, align 4
  %cmp19 = icmp eq i32 %17, %18
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %for.body
  %19 = load i32, i32* %u, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom22
  %21 = load i32, i32* %arrayidx23, align 4
  %add = add nsw i32 %21, 0
  store i32 %add, i32* %arrayidx23, align 4
  br label %for.end

if.end.24:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %22 = load i32, i32* %u, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %23 = load i32, i32* %u, align 4
  %24 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num25 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %24, i32 0, i32 2
  %25 = load i32, i32* %num25, align 4
  %cmp26 = icmp eq i32 %23, %25
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.43

land.lhs.true.28:                                 ; preds = %for.end
  %26 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num29 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %27 = load i32, i32* %num29, align 4
  %cmp30 = icmp slt i32 %27, 50
  br i1 %cmp30, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %land.lhs.true.28
  %28 = load i32, i32* %apos, align 4
  %29 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num33 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %29, i32 0, i32 2
  %30 = load i32, i32* %num33, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos35 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %31, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [50 x i32], [50 x i32]* %pos35, i32 0, i64 %idxprom34
  store i32 %28, i32* %arrayidx36, align 4
  %32 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %32, i32 0, i32 2
  %33 = load i32, i32* %num37, align 4
  %idxprom38 = sext i32 %33 to i64
  %34 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score39 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %34, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [50 x i32], [50 x i32]* %score39, i32 0, i64 %idxprom38
  store i32 0, i32* %arrayidx40, align 4
  %35 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num41 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %35, i32 0, i32 2
  %36 = load i32, i32* %num41, align 4
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, i32* %num41, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.32, %land.lhs.true.28, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %if.then.10
  br label %if.end.293

if.end.45:                                        ; preds = %land.lhs.true, %if.end
  %37 = load i32, i32* %adj2, align 4
  %cmp46 = icmp sgt i32 %37, 1
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  br label %if.end.293

if.end.49:                                        ; preds = %if.end.45
  %38 = load i32, i32* %adj.addr, align 4
  %arraydecay50 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call51 = call i32 @findlib(i32 %38, i32 2, i32* %arraydecay50)
  store i32 0, i32* %k, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.116, %if.end.49
  %39 = load i32, i32* %k, align 4
  %cmp53 = icmp slt i32 %39, 2
  br i1 %cmp53, label %for.body.55, label %for.end.118

for.body.55:                                      ; preds = %for.cond.52
  %40 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom56
  %41 = load i32, i32* %arrayidx57, align 4
  %42 = load i32, i32* %other, align 4
  %call58 = call i32 @approxlib(i32 %41, i32 %42, i32 3, i32* null)
  %cmp59 = icmp sle i32 %call58, 2
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.115

land.lhs.true.61:                                 ; preds = %for.body.55
  %43 = load i32, i32* %k, align 4
  %sub62 = sub nsw i32 1, %43
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom63
  %44 = load i32, i32* %arrayidx64, align 4
  %45 = load i32, i32* %color, align 4
  %call65 = call i32 @is_self_atari(i32 %44, i32 %45)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.115, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.61
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  store i32 0, i32* %u69, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.89, %do.body.68
  %46 = load i32, i32* %u69, align 4
  %47 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num71 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %47, i32 0, i32 2
  %48 = load i32, i32* %num71, align 4
  %cmp72 = icmp slt i32 %46, %48
  br i1 %cmp72, label %for.body.74, label %for.end.91

for.body.74:                                      ; preds = %for.cond.70
  %49 = load i32, i32* %u69, align 4
  %idxprom75 = sext i32 %49 to i64
  %50 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos76 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %50, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [50 x i32], [50 x i32]* %pos76, i32 0, i64 %idxprom75
  %51 = load i32, i32* %arrayidx77, align 4
  %52 = load i32, i32* %k, align 4
  %sub78 = sub nsw i32 1, %52
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom79
  %53 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp eq i32 %51, %53
  br i1 %cmp81, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %for.body.74
  %54 = load i32, i32* %u69, align 4
  %idxprom84 = sext i32 %54 to i64
  %55 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score85 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %55, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [50 x i32], [50 x i32]* %score85, i32 0, i64 %idxprom84
  %56 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %56, 0
  store i32 %add87, i32* %arrayidx86, align 4
  br label %for.end.91

if.end.88:                                        ; preds = %for.body.74
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %57 = load i32, i32* %u69, align 4
  %inc90 = add nsw i32 %57, 1
  store i32 %inc90, i32* %u69, align 4
  br label %for.cond.70

for.end.91:                                       ; preds = %if.then.83, %for.cond.70
  %58 = load i32, i32* %u69, align 4
  %59 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num92 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %59, i32 0, i32 2
  %60 = load i32, i32* %num92, align 4
  %cmp93 = icmp eq i32 %58, %60
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.113

land.lhs.true.95:                                 ; preds = %for.end.91
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num96 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 2
  %62 = load i32, i32* %num96, align 4
  %cmp97 = icmp slt i32 %62, 50
  br i1 %cmp97, label %if.then.99, label %if.end.113

if.then.99:                                       ; preds = %land.lhs.true.95
  %63 = load i32, i32* %k, align 4
  %sub100 = sub nsw i32 1, %63
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom101
  %64 = load i32, i32* %arrayidx102, align 4
  %65 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %65, i32 0, i32 2
  %66 = load i32, i32* %num103, align 4
  %idxprom104 = sext i32 %66 to i64
  %67 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos105 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %67, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [50 x i32], [50 x i32]* %pos105, i32 0, i64 %idxprom104
  store i32 %64, i32* %arrayidx106, align 4
  %68 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num107 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %68, i32 0, i32 2
  %69 = load i32, i32* %num107, align 4
  %idxprom108 = sext i32 %69 to i64
  %70 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score109 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %70, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [50 x i32], [50 x i32]* %score109, i32 0, i64 %idxprom108
  store i32 0, i32* %arrayidx110, align 4
  %71 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num111 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %71, i32 0, i32 2
  %72 = load i32, i32* %num111, align 4
  %inc112 = add nsw i32 %72, 1
  store i32 %inc112, i32* %num111, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.99, %land.lhs.true.95, %for.end.91
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %if.end.115

if.end.115:                                       ; preds = %do.end.114, %land.lhs.true.61, %for.body.55
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %73 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %73, 1
  store i32 %inc117, i32* %k, align 4
  br label %for.cond.52

for.end.118:                                      ; preds = %for.cond.52
  %arrayidx119 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %74 = load i32, i32* %arrayidx119, align 4
  %arrayidx120 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %75 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %75, 20
  %sub122 = sub nsw i32 %add121, 1
  %cmp123 = icmp ne i32 %74, %sub122
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.147

land.lhs.true.125:                                ; preds = %for.end.118
  %arrayidx126 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %76 = load i32, i32* %arrayidx126, align 4
  %arrayidx127 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %77 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %77, 20
  %sub129 = sub nsw i32 %sub128, 1
  %cmp130 = icmp ne i32 %76, %sub129
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.147

land.lhs.true.132:                                ; preds = %land.lhs.true.125
  %arrayidx133 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %78 = load i32, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %79 = load i32, i32* %arrayidx134, align 4
  %sub135 = sub nsw i32 %79, 20
  %add136 = add nsw i32 %sub135, 1
  %cmp137 = icmp ne i32 %78, %add136
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.147

land.lhs.true.139:                                ; preds = %land.lhs.true.132
  %arrayidx140 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %80 = load i32, i32* %arrayidx140, align 4
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %81 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %81, 20
  %add143 = add nsw i32 %add142, 1
  %cmp144 = icmp ne i32 %80, %add143
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %land.lhs.true.139
  br label %if.end.293

if.end.147:                                       ; preds = %land.lhs.true.139, %land.lhs.true.132, %land.lhs.true.125, %for.end.118
  %arrayidx148 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %82 = load i32, i32* %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %83 = load i32, i32* %arrayidx149, align 4
  %cmp150 = icmp slt i32 %82, %83
  br i1 %cmp150, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.147
  %arrayidx152 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %84 = load i32, i32* %arrayidx152, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.147
  %arrayidx153 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %85 = load i32, i32* %arrayidx153, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %84, %cond.true ], [ %85, %cond.false ]
  %sub154 = sub nsw i32 %cond, 20
  store i32 %sub154, i32* %pos1, align 4
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %86 = load i32, i32* %arrayidx155, align 4
  %arrayidx156 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %87 = load i32, i32* %arrayidx156, align 4
  %cmp157 = icmp slt i32 %86, %87
  br i1 %cmp157, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %cond.end
  %arrayidx160 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %88 = load i32, i32* %arrayidx160, align 4
  br label %cond.end.163

cond.false.161:                                   ; preds = %cond.end
  %arrayidx162 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %89 = load i32, i32* %arrayidx162, align 4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.159
  %cond164 = phi i32 [ %88, %cond.true.159 ], [ %89, %cond.false.161 ]
  %add165 = add nsw i32 %cond164, 20
  store i32 %add165, i32* %pos2, align 4
  %90 = load i32, i32* %pos1, align 4
  %idxprom166 = sext i32 %90 to i64
  %arrayidx167 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom166
  %91 = load i8, i8* %arrayidx167, align 1
  %conv168 = zext i8 %91 to i32
  %92 = load i32, i32* %other, align 4
  %cmp169 = icmp ne i32 %conv168, %92
  br i1 %cmp169, label %land.lhs.true.176, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.163
  %93 = load i32, i32* %pos2, align 4
  %call171 = call i32 @is_edge_vertex(i32 %93)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %lor.lhs.false.173, label %land.lhs.true.176

lor.lhs.false.173:                                ; preds = %lor.lhs.false
  %94 = load i32, i32* %pos1, align 4
  %95 = load i32, i32* %adj.addr, align 4
  %call174 = call i32 @same_string(i32 %94, i32 %95)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end.189, label %land.lhs.true.176

land.lhs.true.176:                                ; preds = %lor.lhs.false.173, %lor.lhs.false, %cond.end.163
  %96 = load i32, i32* %pos2, align 4
  %idxprom177 = sext i32 %96 to i64
  %arrayidx178 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom177
  %97 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %97 to i32
  %98 = load i32, i32* %other, align 4
  %cmp180 = icmp ne i32 %conv179, %98
  br i1 %cmp180, label %if.then.188, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %land.lhs.true.176
  %99 = load i32, i32* %pos1, align 4
  %call183 = call i32 @is_edge_vertex(i32 %99)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %lor.lhs.false.185, label %if.then.188

lor.lhs.false.185:                                ; preds = %lor.lhs.false.182
  %100 = load i32, i32* %pos2, align 4
  %101 = load i32, i32* %adj.addr, align 4
  %call186 = call i32 @same_string(i32 %100, i32 %101)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %lor.lhs.false.185, %lor.lhs.false.182, %land.lhs.true.176
  br label %if.end.293

if.end.189:                                       ; preds = %lor.lhs.false.185, %lor.lhs.false.173
  %arrayidx190 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %102 = load i32, i32* %arrayidx190, align 4
  %call191 = call i32 @is_edge_vertex(i32 %102)
  %tobool192 = icmp ne i32 %call191, 0
  br i1 %tobool192, label %land.lhs.true.193, label %if.end.241

land.lhs.true.193:                                ; preds = %if.end.189
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %103 = load i32, i32* %arrayidx194, align 4
  %104 = load i32, i32* %color, align 4
  %call195 = call i32 @is_self_atari(i32 %103, i32 %104)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.end.241, label %if.then.197

if.then.197:                                      ; preds = %land.lhs.true.193
  br label %do.body.198

do.body.198:                                      ; preds = %if.then.197
  store i32 0, i32* %u199, align 4
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.217, %do.body.198
  %105 = load i32, i32* %u199, align 4
  %106 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num201 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %106, i32 0, i32 2
  %107 = load i32, i32* %num201, align 4
  %cmp202 = icmp slt i32 %105, %107
  br i1 %cmp202, label %for.body.204, label %for.end.219

for.body.204:                                     ; preds = %for.cond.200
  %108 = load i32, i32* %u199, align 4
  %idxprom205 = sext i32 %108 to i64
  %109 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos206 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %109, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [50 x i32], [50 x i32]* %pos206, i32 0, i64 %idxprom205
  %110 = load i32, i32* %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %111 = load i32, i32* %arrayidx208, align 4
  %cmp209 = icmp eq i32 %110, %111
  br i1 %cmp209, label %if.then.211, label %if.end.216

if.then.211:                                      ; preds = %for.body.204
  %112 = load i32, i32* %u199, align 4
  %idxprom212 = sext i32 %112 to i64
  %113 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score213 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %113, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [50 x i32], [50 x i32]* %score213, i32 0, i64 %idxprom212
  %114 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %114, 1
  store i32 %add215, i32* %arrayidx214, align 4
  br label %for.end.219

if.end.216:                                       ; preds = %for.body.204
  br label %for.inc.217

for.inc.217:                                      ; preds = %if.end.216
  %115 = load i32, i32* %u199, align 4
  %inc218 = add nsw i32 %115, 1
  store i32 %inc218, i32* %u199, align 4
  br label %for.cond.200

for.end.219:                                      ; preds = %if.then.211, %for.cond.200
  %116 = load i32, i32* %u199, align 4
  %117 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num220 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %117, i32 0, i32 2
  %118 = load i32, i32* %num220, align 4
  %cmp221 = icmp eq i32 %116, %118
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.239

land.lhs.true.223:                                ; preds = %for.end.219
  %119 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num224 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %119, i32 0, i32 2
  %120 = load i32, i32* %num224, align 4
  %cmp225 = icmp slt i32 %120, 50
  br i1 %cmp225, label %if.then.227, label %if.end.239

if.then.227:                                      ; preds = %land.lhs.true.223
  %arrayidx228 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %121 = load i32, i32* %arrayidx228, align 4
  %122 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num229 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %122, i32 0, i32 2
  %123 = load i32, i32* %num229, align 4
  %idxprom230 = sext i32 %123 to i64
  %124 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %124, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [50 x i32], [50 x i32]* %pos231, i32 0, i64 %idxprom230
  store i32 %121, i32* %arrayidx232, align 4
  %125 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num233 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %125, i32 0, i32 2
  %126 = load i32, i32* %num233, align 4
  %idxprom234 = sext i32 %126 to i64
  %127 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score235 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %127, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [50 x i32], [50 x i32]* %score235, i32 0, i64 %idxprom234
  store i32 1, i32* %arrayidx236, align 4
  %128 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num237 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %128, i32 0, i32 2
  %129 = load i32, i32* %num237, align 4
  %inc238 = add nsw i32 %129, 1
  store i32 %inc238, i32* %num237, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.227, %land.lhs.true.223, %for.end.219
  br label %do.end.240

do.end.240:                                       ; preds = %if.end.239
  br label %if.end.241

if.end.241:                                       ; preds = %do.end.240, %land.lhs.true.193, %if.end.189
  %arrayidx242 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %130 = load i32, i32* %arrayidx242, align 4
  %call243 = call i32 @is_edge_vertex(i32 %130)
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %land.lhs.true.245, label %if.end.293

land.lhs.true.245:                                ; preds = %if.end.241
  %arrayidx246 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %131 = load i32, i32* %arrayidx246, align 4
  %132 = load i32, i32* %color, align 4
  %call247 = call i32 @is_self_atari(i32 %131, i32 %132)
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.end.293, label %if.then.249

if.then.249:                                      ; preds = %land.lhs.true.245
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  store i32 0, i32* %u251, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.269, %do.body.250
  %133 = load i32, i32* %u251, align 4
  %134 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num253 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %134, i32 0, i32 2
  %135 = load i32, i32* %num253, align 4
  %cmp254 = icmp slt i32 %133, %135
  br i1 %cmp254, label %for.body.256, label %for.end.271

for.body.256:                                     ; preds = %for.cond.252
  %136 = load i32, i32* %u251, align 4
  %idxprom257 = sext i32 %136 to i64
  %137 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos258 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %137, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [50 x i32], [50 x i32]* %pos258, i32 0, i64 %idxprom257
  %138 = load i32, i32* %arrayidx259, align 4
  %arrayidx260 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %139 = load i32, i32* %arrayidx260, align 4
  %cmp261 = icmp eq i32 %138, %139
  br i1 %cmp261, label %if.then.263, label %if.end.268

if.then.263:                                      ; preds = %for.body.256
  %140 = load i32, i32* %u251, align 4
  %idxprom264 = sext i32 %140 to i64
  %141 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score265 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %141, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [50 x i32], [50 x i32]* %score265, i32 0, i64 %idxprom264
  %142 = load i32, i32* %arrayidx266, align 4
  %add267 = add nsw i32 %142, 1
  store i32 %add267, i32* %arrayidx266, align 4
  br label %for.end.271

if.end.268:                                       ; preds = %for.body.256
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %143 = load i32, i32* %u251, align 4
  %inc270 = add nsw i32 %143, 1
  store i32 %inc270, i32* %u251, align 4
  br label %for.cond.252

for.end.271:                                      ; preds = %if.then.263, %for.cond.252
  %144 = load i32, i32* %u251, align 4
  %145 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num272 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %145, i32 0, i32 2
  %146 = load i32, i32* %num272, align 4
  %cmp273 = icmp eq i32 %144, %146
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.291

land.lhs.true.275:                                ; preds = %for.end.271
  %147 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num276 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %147, i32 0, i32 2
  %148 = load i32, i32* %num276, align 4
  %cmp277 = icmp slt i32 %148, 50
  br i1 %cmp277, label %if.then.279, label %if.end.291

if.then.279:                                      ; preds = %land.lhs.true.275
  %arrayidx280 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %149 = load i32, i32* %arrayidx280, align 4
  %150 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num281 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %150, i32 0, i32 2
  %151 = load i32, i32* %num281, align 4
  %idxprom282 = sext i32 %151 to i64
  %152 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos283 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %152, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [50 x i32], [50 x i32]* %pos283, i32 0, i64 %idxprom282
  store i32 %149, i32* %arrayidx284, align 4
  %153 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num285 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %153, i32 0, i32 2
  %154 = load i32, i32* %num285, align 4
  %idxprom286 = sext i32 %154 to i64
  %155 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score287 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %155, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [50 x i32], [50 x i32]* %score287, i32 0, i64 %idxprom286
  store i32 1, i32* %arrayidx288, align 4
  %156 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num289 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %156, i32 0, i32 2
  %157 = load i32, i32* %num289, align 4
  %inc290 = add nsw i32 %157, 1
  store i32 %inc290, i32* %num289, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.279, %land.lhs.true.275, %for.end.271
  br label %do.end.292

do.end.292:                                       ; preds = %if.end.291
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.44, %if.then.48, %if.then.146, %if.then.188, %do.end.292, %land.lhs.true.245, %if.end.241
  ret void
}

declare i32 @is_edge_vertex(i32) #1

declare i32 @same_string(i32, i32) #1

declare i32 @is_suicide(i32, i32) #1

declare void @proper_superstring_chainlinks(i32, i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @break_chain2_moves(i32 %str, %struct.reading_moves* %moves, i32 %require_safe) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %require_safe.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %dummy_adjs = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  %unsafe = alloca [2 x i32], align 4
  %u = alloca i32, align 4
  %libs2 = alloca [3 x i32], align 4
  %s = alloca i32, align 4
  %u108 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  store i32 %require_safe, i32* %require_safe.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %3, i32* %arraydecay, i32 2)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.162, %entry
  %4 = load i32, i32* %r, align 4
  %5 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.164

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %r, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  store i32 %7, i32* %apos, align 4
  %8 = load i32, i32* @stackp, align 4
  %9 = load i32, i32* @backfill_depth, align 4
  %cmp4 = icmp sgt i32 %8, %9
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %apos, align 4
  %arraydecay6 = getelementptr inbounds [160 x i32], [160 x i32]* %dummy_adjs, i32 0, i32 0
  %call7 = call i32 @chainlinks2(i32 %10, i32* %arraydecay6, i32 1)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.162

if.end:                                           ; preds = %land.lhs.true, %for.body
  %11 = load i32, i32* %apos, align 4
  %arraydecay10 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call11 = call i32 @findlib(i32 %11, i32 2, i32* %arraydecay10)
  store i32 0, i32* %k, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.72, %if.end
  %12 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %12, 2
  br i1 %cmp13, label %for.body.15, label %for.end.74

for.body.15:                                      ; preds = %for.cond.12
  %13 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %15 = load i32, i32* %color, align 4
  %call18 = call i32 @is_self_atari(i32 %14, i32 %15)
  %16 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %unsafe, i32 0, i64 %idxprom19
  store i32 %call18, i32* %arrayidx20, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %unsafe, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %for.body.15
  %19 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom23
  %20 = load i32, i32* %arrayidx24, align 4
  %21 = load i32, i32* %color, align 4
  %call25 = call i32 @is_ko(i32 %20, i32 %21, i32* null)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.35, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* %require_safe.addr, align 4
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %if.end.71, label %land.lhs.true.29

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %23 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom30
  %24 = load i32, i32* %arrayidx31, align 4
  %25 = load i32, i32* %other, align 4
  %call32 = call i32 @approxlib(i32 %24, i32 %25, i32 5, i32* null)
  %cmp33 = icmp slt i32 %call32, 5
  br i1 %cmp33, label %if.then.35, label %if.end.71

if.then.35:                                       ; preds = %land.lhs.true.29, %lor.lhs.false, %for.body.15
  br label %do.body

do.body:                                          ; preds = %if.then.35
  store i32 0, i32* %u, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %do.body
  %26 = load i32, i32* %u, align 4
  %27 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %27, i32 0, i32 2
  %28 = load i32, i32* %num, align 4
  %cmp37 = icmp slt i32 %26, %28
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.36
  %29 = load i32, i32* %u, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %30, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %31, %33
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %for.body.39
  %34 = load i32, i32* %u, align 4
  %idxprom47 = sext i32 %34 to i64
  %35 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %35, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom47
  %36 = load i32, i32* %arrayidx48, align 4
  %add = add nsw i32 %36, 0
  store i32 %add, i32* %arrayidx48, align 4
  br label %for.end

if.end.49:                                        ; preds = %for.body.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %37 = load i32, i32* %u, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.36

for.end:                                          ; preds = %if.then.46, %for.cond.36
  %38 = load i32, i32* %u, align 4
  %39 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num50 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %39, i32 0, i32 2
  %40 = load i32, i32* %num50, align 4
  %cmp51 = icmp eq i32 %38, %40
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.70

land.lhs.true.53:                                 ; preds = %for.end
  %41 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %41, i32 0, i32 2
  %42 = load i32, i32* %num54, align 4
  %cmp55 = icmp slt i32 %42, 50
  br i1 %cmp55, label %if.then.57, label %if.end.70

if.then.57:                                       ; preds = %land.lhs.true.53
  %43 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %43 to i64
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom58
  %44 = load i32, i32* %arrayidx59, align 4
  %45 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num60 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %45, i32 0, i32 2
  %46 = load i32, i32* %num60, align 4
  %idxprom61 = sext i32 %46 to i64
  %47 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos62 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %47, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [50 x i32], [50 x i32]* %pos62, i32 0, i64 %idxprom61
  store i32 %44, i32* %arrayidx63, align 4
  %48 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num64 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %48, i32 0, i32 2
  %49 = load i32, i32* %num64, align 4
  %idxprom65 = sext i32 %49 to i64
  %50 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score66 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %50, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [50 x i32], [50 x i32]* %score66, i32 0, i64 %idxprom65
  store i32 0, i32* %arrayidx67, align 4
  %51 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num68 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %51, i32 0, i32 2
  %52 = load i32, i32* %num68, align 4
  %inc69 = add nsw i32 %52, 1
  store i32 %inc69, i32* %num68, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.57, %land.lhs.true.53, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.70
  br label %if.end.71

if.end.71:                                        ; preds = %do.end, %land.lhs.true.29, %lor.lhs.false.27
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %53 = load i32, i32* %k, align 4
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, i32* %k, align 4
  br label %for.cond.12

for.end.74:                                       ; preds = %for.cond.12
  %54 = load i32, i32* @stackp, align 4
  %55 = load i32, i32* @backfill2_depth, align 4
  %cmp75 = icmp sle i32 %54, %55
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %for.end.74
  %56 = load i32, i32* %str.addr, align 4
  %57 = load i32, i32* %apos, align 4
  %call78 = call i32 @have_common_lib(i32 %56, i32 %57, i32* null)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.161

if.then.80:                                       ; preds = %lor.lhs.false.77, %for.end.74
  %58 = load i32, i32* %apos, align 4
  %59 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  call void @break_chain_moves(i32 %58, %struct.reading_moves* %59)
  %arrayidx81 = getelementptr inbounds [2 x i32], [2 x i32]* %unsafe, i32 0, i64 0
  %60 = load i32, i32* %arrayidx81, align 4
  %tobool82 = icmp ne i32 %60, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.160

land.lhs.true.83:                                 ; preds = %if.then.80
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %unsafe, i32 0, i64 1
  %61 = load i32, i32* %arrayidx84, align 4
  %tobool85 = icmp ne i32 %61, 0
  br i1 %tobool85, label %if.then.86, label %if.end.160

if.then.86:                                       ; preds = %land.lhs.true.83
  store i32 0, i32* %k, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.157, %if.then.86
  %62 = load i32, i32* %k, align 4
  %cmp88 = icmp slt i32 %62, 2
  br i1 %cmp88, label %for.body.90, label %for.end.159

for.body.90:                                      ; preds = %for.cond.87
  %63 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %63 to i64
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom91
  %64 = load i32, i32* %arrayidx92, align 4
  %65 = load i32, i32* %other, align 4
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %libs2, i32 0, i32 0
  %call94 = call i32 @approxlib(i32 %64, i32 %65, i32 3, i32* %arraydecay93)
  %cmp95 = icmp eq i32 %call94, 2
  br i1 %cmp95, label %if.then.97, label %if.end.156

if.then.97:                                       ; preds = %for.body.90
  store i32 0, i32* %s, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.153, %if.then.97
  %66 = load i32, i32* %s, align 4
  %cmp99 = icmp slt i32 %66, 2
  br i1 %cmp99, label %for.body.101, label %for.end.155

for.body.101:                                     ; preds = %for.cond.98
  %67 = load i32, i32* %s, align 4
  %idxprom102 = sext i32 %67 to i64
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %libs2, i32 0, i64 %idxprom102
  %68 = load i32, i32* %arrayidx103, align 4
  %69 = load i32, i32* %color, align 4
  %call104 = call i32 @is_self_atari(i32 %68, i32 %69)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.152, label %if.then.106

if.then.106:                                      ; preds = %for.body.101
  br label %do.body.107

do.body.107:                                      ; preds = %if.then.106
  store i32 0, i32* %u108, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.127, %do.body.107
  %70 = load i32, i32* %u108, align 4
  %71 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num110 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %71, i32 0, i32 2
  %72 = load i32, i32* %num110, align 4
  %cmp111 = icmp slt i32 %70, %72
  br i1 %cmp111, label %for.body.113, label %for.end.129

for.body.113:                                     ; preds = %for.cond.109
  %73 = load i32, i32* %u108, align 4
  %idxprom114 = sext i32 %73 to i64
  %74 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos115 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %74, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [50 x i32], [50 x i32]* %pos115, i32 0, i64 %idxprom114
  %75 = load i32, i32* %arrayidx116, align 4
  %76 = load i32, i32* %s, align 4
  %idxprom117 = sext i32 %76 to i64
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %libs2, i32 0, i64 %idxprom117
  %77 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp eq i32 %75, %77
  br i1 %cmp119, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %for.body.113
  %78 = load i32, i32* %u108, align 4
  %idxprom122 = sext i32 %78 to i64
  %79 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score123 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %79, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [50 x i32], [50 x i32]* %score123, i32 0, i64 %idxprom122
  %80 = load i32, i32* %arrayidx124, align 4
  %add125 = add nsw i32 %80, 0
  store i32 %add125, i32* %arrayidx124, align 4
  br label %for.end.129

if.end.126:                                       ; preds = %for.body.113
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126
  %81 = load i32, i32* %u108, align 4
  %inc128 = add nsw i32 %81, 1
  store i32 %inc128, i32* %u108, align 4
  br label %for.cond.109

for.end.129:                                      ; preds = %if.then.121, %for.cond.109
  %82 = load i32, i32* %u108, align 4
  %83 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %83, i32 0, i32 2
  %84 = load i32, i32* %num130, align 4
  %cmp131 = icmp eq i32 %82, %84
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.150

land.lhs.true.133:                                ; preds = %for.end.129
  %85 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num134 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %85, i32 0, i32 2
  %86 = load i32, i32* %num134, align 4
  %cmp135 = icmp slt i32 %86, 50
  br i1 %cmp135, label %if.then.137, label %if.end.150

if.then.137:                                      ; preds = %land.lhs.true.133
  %87 = load i32, i32* %s, align 4
  %idxprom138 = sext i32 %87 to i64
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %libs2, i32 0, i64 %idxprom138
  %88 = load i32, i32* %arrayidx139, align 4
  %89 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num140 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %89, i32 0, i32 2
  %90 = load i32, i32* %num140, align 4
  %idxprom141 = sext i32 %90 to i64
  %91 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos142 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %91, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [50 x i32], [50 x i32]* %pos142, i32 0, i64 %idxprom141
  store i32 %88, i32* %arrayidx143, align 4
  %92 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num144 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %92, i32 0, i32 2
  %93 = load i32, i32* %num144, align 4
  %idxprom145 = sext i32 %93 to i64
  %94 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score146 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %94, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [50 x i32], [50 x i32]* %score146, i32 0, i64 %idxprom145
  store i32 0, i32* %arrayidx147, align 4
  %95 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num148 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %95, i32 0, i32 2
  %96 = load i32, i32* %num148, align 4
  %inc149 = add nsw i32 %96, 1
  store i32 %inc149, i32* %num148, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.137, %land.lhs.true.133, %for.end.129
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %for.body.101
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %97 = load i32, i32* %s, align 4
  %inc154 = add nsw i32 %97, 1
  store i32 %inc154, i32* %s, align 4
  br label %for.cond.98

for.end.155:                                      ; preds = %for.cond.98
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %for.body.90
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %98 = load i32, i32* %k, align 4
  %inc158 = add nsw i32 %98, 1
  store i32 %inc158, i32* %k, align 4
  br label %for.cond.87

for.end.159:                                      ; preds = %for.cond.87
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %land.lhs.true.83, %if.then.80
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %lor.lhs.false.77
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161, %if.then
  %99 = load i32, i32* %r, align 4
  %inc163 = add nsw i32 %99, 1
  store i32 %inc163, i32* %r, align 4
  br label %for.cond

for.end.164:                                      ; preds = %for.cond
  ret void
}

declare i32 @have_common_lib(i32, i32, i32*) #1

declare i32 @count_common_libs(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @double_atari_chain2_moves(i32 %str, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  %mw = alloca [400 x i32], align 16
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = bitcast [400 x i32]* %mw to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 1600, i32 16, i1 false)
  %1 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %1, i32* %arraydecay, i32 2)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %2 = load i32, i32* %r, align 4
  %3 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %r, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %apos, align 4
  %6 = load i32, i32* %apos, align 4
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call2 = call i32 @findlib(i32 %6, i32 2, i32* %arraydecay1)
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.57, %for.body
  %7 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %7, 2
  br i1 %cmp4, label %for.body.5, label %for.end.59

for.body.5:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %arrayidx9, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* %mw, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %13, 2
  br i1 %cmp14, label %if.then, label %if.end.56

if.then:                                          ; preds = %for.body.5
  %14 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom15
  %15 = load i32, i32* %arrayidx16, align 4
  %16 = load i32, i32* %str.addr, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv = zext i8 %17 to i32
  %call19 = call i32 @is_self_atari(i32 %15, i32 %conv)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end.55, label %if.then.20

if.then.20:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.20
  store i32 0, i32* %u, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %do.body
  %18 = load i32, i32* %u, align 4
  %19 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %19, i32 0, i32 2
  %20 = load i32, i32* %num, align 4
  %cmp22 = icmp slt i32 %18, %20
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %21 = load i32, i32* %u, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %22, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom25
  %23 = load i32, i32* %arrayidx26, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %23, %25
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body.24
  %26 = load i32, i32* %u, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom32
  %28 = load i32, i32* %arrayidx33, align 4
  %add = add nsw i32 %28, 1
  store i32 %add, i32* %arrayidx33, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %u, align 4
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, i32* %u, align 4
  br label %for.cond.21

for.end:                                          ; preds = %if.then.31, %for.cond.21
  %30 = load i32, i32* %u, align 4
  %31 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num35 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %31, i32 0, i32 2
  %32 = load i32, i32* %num35, align 4
  %cmp36 = icmp eq i32 %30, %32
  br i1 %cmp36, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.end
  %33 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num38 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %33, i32 0, i32 2
  %34 = load i32, i32* %num38, align 4
  %cmp39 = icmp slt i32 %34, 50
  br i1 %cmp39, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom42
  %36 = load i32, i32* %arrayidx43, align 4
  %37 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num44 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %37, i32 0, i32 2
  %38 = load i32, i32* %num44, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos46 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %39, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [50 x i32], [50 x i32]* %pos46, i32 0, i64 %idxprom45
  store i32 %36, i32* %arrayidx47, align 4
  %40 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num48 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %40, i32 0, i32 2
  %41 = load i32, i32* %num48, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score50 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %42, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [50 x i32], [50 x i32]* %score50, i32 0, i64 %idxprom49
  store i32 1, i32* %arrayidx51, align 4
  %43 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num52 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %43, i32 0, i32 2
  %44 = load i32, i32* %num52, align 4
  %inc53 = add nsw i32 %44, 1
  store i32 %inc53, i32* %num52, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.41, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.54
  br label %if.end.55

if.end.55:                                        ; preds = %do.end, %if.then
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body.5
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %45 = load i32, i32* %k, align 4
  %inc58 = add nsw i32 %45, 1
  store i32 %inc58, i32* %k, align 4
  br label %for.cond.3

for.end.59:                                       ; preds = %for.cond.3
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %46 = load i32, i32* %r, align 4
  %inc61 = add nsw i32 %46, 1
  store i32 %inc61, i32* %r, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hane_rescue_moves(i32 %str, i32* %libs, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %num_libs = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %normal = alloca i32, align 4
  %dlibs = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  store i32 %call, i32* %num_libs, align 4
  %4 = load i32, i32* %num_libs, align 4
  %cmp = icmp sle i32 %4, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %5, 20
  %sub2 = sub nsw i32 %div, 1
  %6 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %6, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1865, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.98, %if.end
  %7 = load i32, i32* %r, align 4
  %8 = load i32, i32* %num_libs, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end.100

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** %libs.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %apos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.95, %for.body
  %12 = load i32, i32* %k, align 4
  %cmp9 = icmp slt i32 %12, 4
  br i1 %cmp9, label %for.body.11, label %for.end.97

for.body.11:                                      ; preds = %for.cond.8
  %13 = load i32, i32* %apos, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  %add = add nsw i32 %13, %15
  store i32 %add, i32* %bpos, align 4
  %16 = load i32, i32* %bpos, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %17 to i32
  %18 = load i32, i32* %color, align 4
  %cmp17 = icmp ne i32 %conv16, %18
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.11
  br label %for.inc.95

if.end.20:                                        ; preds = %for.body.11
  %19 = load i32, i32* %bpos, align 4
  %20 = load i32, i32* %str.addr, align 4
  %call21 = call i32 @same_string(i32 %19, i32 %20)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  br label %for.inc.95

if.end.23:                                        ; preds = %if.end.20
  store i32 0, i32* %l, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.92, %if.end.23
  %21 = load i32, i32* %l, align 4
  %cmp25 = icmp slt i32 %21, 2
  br i1 %cmp25, label %for.body.27, label %for.end.94

for.body.27:                                      ; preds = %for.cond.24
  %22 = load i32, i32* %k, align 4
  %add28 = add nsw i32 %22, 1
  %rem29 = srem i32 %add28, 4
  %idxprom30 = sext i32 %rem29 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom30
  %23 = load i32, i32* %arrayidx31, align 4
  store i32 %23, i32* %normal, align 4
  %24 = load i32, i32* %l, align 4
  %cmp32 = icmp eq i32 %24, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.body.27
  %25 = load i32, i32* %normal, align 4
  %sub35 = sub nsw i32 0, %25
  store i32 %sub35, i32* %normal, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.body.27
  %26 = load i32, i32* %apos, align 4
  %27 = load i32, i32* %normal, align 4
  %add37 = add nsw i32 %26, %27
  store i32 %add37, i32* %cpos, align 4
  %28 = load i32, i32* %cpos, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %29 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.36
  br label %for.inc.92

if.end.44:                                        ; preds = %if.end.36
  %30 = load i32, i32* %bpos, align 4
  %31 = load i32, i32* %normal, align 4
  %add45 = add nsw i32 %30, %31
  store i32 %add45, i32* %dpos, align 4
  %32 = load i32, i32* %dpos, align 4
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom46
  %33 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %33 to i32
  %34 = load i32, i32* %other, align 4
  %cmp49 = icmp ne i32 %conv48, %34
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.44
  br label %for.inc.92

if.end.52:                                        ; preds = %if.end.44
  %35 = load i32, i32* %dpos, align 4
  %call53 = call i32 @countlib(i32 %35)
  store i32 %call53, i32* %dlibs, align 4
  %36 = load i32, i32* %dlibs, align 4
  %37 = load i32, i32* %num_libs, align 4
  %cmp54 = icmp sgt i32 %36, %37
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %38 = load i32, i32* %dlibs, align 4
  %39 = load i32, i32* %cpos, align 4
  %40 = load i32, i32* %color, align 4
  %41 = load i32, i32* %dlibs, align 4
  %call56 = call i32 @accuratelib(i32 %39, i32 %40, i32 %41, i32* null)
  %cmp57 = icmp sgt i32 %38, %call56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.52
  br label %for.inc.92

if.end.60:                                        ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.60
  store i32 0, i32* %u, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %do.body
  %42 = load i32, i32* %u, align 4
  %43 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %43, i32 0, i32 2
  %44 = load i32, i32* %num, align 4
  %cmp62 = icmp slt i32 %42, %44
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.61
  %45 = load i32, i32* %u, align 4
  %idxprom65 = sext i32 %45 to i64
  %46 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %46, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom65
  %47 = load i32, i32* %arrayidx66, align 4
  %48 = load i32, i32* %cpos, align 4
  %cmp67 = icmp eq i32 %47, %48
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %for.body.64
  %49 = load i32, i32* %u, align 4
  %idxprom70 = sext i32 %49 to i64
  %50 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %50, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom70
  %51 = load i32, i32* %arrayidx71, align 4
  %add72 = add nsw i32 %51, 0
  store i32 %add72, i32* %arrayidx71, align 4
  br label %for.end

if.end.73:                                        ; preds = %for.body.64
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %52 = load i32, i32* %u, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.61

for.end:                                          ; preds = %if.then.69, %for.cond.61
  %53 = load i32, i32* %u, align 4
  %54 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num74 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %54, i32 0, i32 2
  %55 = load i32, i32* %num74, align 4
  %cmp75 = icmp eq i32 %53, %55
  br i1 %cmp75, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %for.end
  %56 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num77 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %56, i32 0, i32 2
  %57 = load i32, i32* %num77, align 4
  %cmp78 = icmp slt i32 %57, 50
  br i1 %cmp78, label %if.then.80, label %if.end.91

if.then.80:                                       ; preds = %land.lhs.true
  %58 = load i32, i32* %cpos, align 4
  %59 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num81 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %59, i32 0, i32 2
  %60 = load i32, i32* %num81, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos83 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [50 x i32], [50 x i32]* %pos83, i32 0, i64 %idxprom82
  store i32 %58, i32* %arrayidx84, align 4
  %62 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num85 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %62, i32 0, i32 2
  %63 = load i32, i32* %num85, align 4
  %idxprom86 = sext i32 %63 to i64
  %64 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score87 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %64, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [50 x i32], [50 x i32]* %score87, i32 0, i64 %idxprom86
  store i32 0, i32* %arrayidx88, align 4
  %65 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num89 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %65, i32 0, i32 2
  %66 = load i32, i32* %num89, align 4
  %inc90 = add nsw i32 %66, 1
  store i32 %inc90, i32* %num89, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.80, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.91
  br label %for.inc.92

for.inc.92:                                       ; preds = %do.end, %if.then.59, %if.then.51, %if.then.43
  %67 = load i32, i32* %l, align 4
  %inc93 = add nsw i32 %67, 1
  store i32 %inc93, i32* %l, align 4
  br label %for.cond.24

for.end.94:                                       ; preds = %for.cond.24
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94, %if.then.22, %if.then.19
  %68 = load i32, i32* %k, align 4
  %inc96 = add nsw i32 %68, 1
  store i32 %inc96, i32* %k, align 4
  br label %for.cond.8

for.end.97:                                       ; preds = %for.cond.8
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %69 = load i32, i32* %r, align 4
  %inc99 = add nsw i32 %69, 1
  store i32 %inc99, i32* %r, align 4
  br label %for.cond

for.end.100:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @special_rescue3_moves(i32 %str, i32* %libs, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  %gpos = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %normal = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub2 = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1788, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.121, %if.end
  %6 = load i32, i32* %r, align 4
  %cmp4 = icmp slt i32 %6, 3
  br i1 %cmp4, label %for.body, label %for.end.123

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %r, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i32*, i32** %libs.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  store i32 %9, i32* %apos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.118, %for.body
  %10 = load i32, i32* %k, align 4
  %cmp9 = icmp slt i32 %10, 4
  br i1 %cmp9, label %for.body.11, label %for.end.120

for.body.11:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %apos, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %add = add nsw i32 %11, %13
  store i32 %add, i32* %bpos, align 4
  %14 = load i32, i32* %bpos, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp ne i32 %conv16, 3
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.11
  br label %for.inc.118

if.end.20:                                        ; preds = %for.body.11
  %16 = load i32, i32* %apos, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %sub23 = sub nsw i32 %16, %18
  store i32 %sub23, i32* %cpos, align 4
  %19 = load i32, i32* %cpos, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %21 = load i32, i32* %color, align 4
  %cmp27 = icmp ne i32 %conv26, %21
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.20
  br label %for.inc.118

if.end.30:                                        ; preds = %if.end.20
  %22 = load i32, i32* %cpos, align 4
  %23 = load i32, i32* %str.addr, align 4
  %call31 = call i32 @same_string(i32 %22, i32 %23)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  br label %for.inc.118

if.end.33:                                        ; preds = %if.end.30
  store i32 0, i32* %l, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.115, %if.end.33
  %24 = load i32, i32* %l, align 4
  %cmp35 = icmp slt i32 %24, 2
  br i1 %cmp35, label %for.body.37, label %for.end.117

for.body.37:                                      ; preds = %for.cond.34
  %25 = load i32, i32* %k, align 4
  %add38 = add nsw i32 %25, 1
  %rem39 = srem i32 %add38, 4
  %idxprom40 = sext i32 %rem39 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom40
  %26 = load i32, i32* %arrayidx41, align 4
  store i32 %26, i32* %normal, align 4
  %27 = load i32, i32* %l, align 4
  %cmp42 = icmp eq i32 %27, 1
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body.37
  %28 = load i32, i32* %normal, align 4
  %sub45 = sub nsw i32 0, %28
  store i32 %sub45, i32* %normal, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.body.37
  %29 = load i32, i32* %cpos, align 4
  %30 = load i32, i32* %normal, align 4
  %add47 = add nsw i32 %29, %30
  store i32 %add47, i32* %dpos, align 4
  %31 = load i32, i32* %dpos, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom48
  %32 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %32 to i32
  %33 = load i32, i32* %other, align 4
  %cmp51 = icmp ne i32 %conv50, %33
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.46
  br label %for.inc.115

if.end.54:                                        ; preds = %if.end.46
  %34 = load i32, i32* %dpos, align 4
  %35 = load i32, i32* %normal, align 4
  %add55 = add nsw i32 %34, %35
  store i32 %add55, i32* %epos, align 4
  %36 = load i32, i32* %epos, align 4
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom56
  %37 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %37 to i32
  %38 = load i32, i32* %color, align 4
  %cmp59 = icmp ne i32 %conv58, %38
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.54
  br label %for.inc.115

if.end.62:                                        ; preds = %if.end.54
  %39 = load i32, i32* %apos, align 4
  %40 = load i32, i32* %normal, align 4
  %add63 = add nsw i32 %39, %40
  store i32 %add63, i32* %fpos, align 4
  %41 = load i32, i32* %fpos, align 4
  %idxprom64 = sext i32 %41 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %42 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %42 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.62
  br label %for.inc.115

if.end.70:                                        ; preds = %if.end.62
  %43 = load i32, i32* %fpos, align 4
  %44 = load i32, i32* %normal, align 4
  %add71 = add nsw i32 %43, %44
  store i32 %add71, i32* %gpos, align 4
  %45 = load i32, i32* %gpos, align 4
  %idxprom72 = sext i32 %45 to i64
  %arrayidx73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom72
  %46 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %46 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.70
  br label %for.inc.115

if.end.78:                                        ; preds = %if.end.70
  %47 = load i32, i32* %apos, align 4
  %48 = load i32, i32* %other, align 4
  %call79 = call i32 @approxlib(i32 %47, i32 %48, i32 4, i32* null)
  %cmp80 = icmp sgt i32 %call79, 3
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  br label %for.inc.115

if.end.83:                                        ; preds = %if.end.78
  br label %do.body

do.body:                                          ; preds = %if.end.83
  store i32 0, i32* %u, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc, %do.body
  %49 = load i32, i32* %u, align 4
  %50 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %50, i32 0, i32 2
  %51 = load i32, i32* %num, align 4
  %cmp85 = icmp slt i32 %49, %51
  br i1 %cmp85, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.84
  %52 = load i32, i32* %u, align 4
  %idxprom88 = sext i32 %52 to i64
  %53 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom88
  %54 = load i32, i32* %arrayidx89, align 4
  %55 = load i32, i32* %fpos, align 4
  %cmp90 = icmp eq i32 %54, %55
  br i1 %cmp90, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %for.body.87
  %56 = load i32, i32* %u, align 4
  %idxprom93 = sext i32 %56 to i64
  %57 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %57, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom93
  %58 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %58, 0
  store i32 %add95, i32* %arrayidx94, align 4
  br label %for.end

if.end.96:                                        ; preds = %for.body.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %59 = load i32, i32* %u, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.84

for.end:                                          ; preds = %if.then.92, %for.cond.84
  %60 = load i32, i32* %u, align 4
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num97 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 2
  %62 = load i32, i32* %num97, align 4
  %cmp98 = icmp eq i32 %60, %62
  br i1 %cmp98, label %land.lhs.true, label %if.end.114

land.lhs.true:                                    ; preds = %for.end
  %63 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num100 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %63, i32 0, i32 2
  %64 = load i32, i32* %num100, align 4
  %cmp101 = icmp slt i32 %64, 50
  br i1 %cmp101, label %if.then.103, label %if.end.114

if.then.103:                                      ; preds = %land.lhs.true
  %65 = load i32, i32* %fpos, align 4
  %66 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num104 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 2
  %67 = load i32, i32* %num104, align 4
  %idxprom105 = sext i32 %67 to i64
  %68 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos106 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %68, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [50 x i32], [50 x i32]* %pos106, i32 0, i64 %idxprom105
  store i32 %65, i32* %arrayidx107, align 4
  %69 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num108 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %69, i32 0, i32 2
  %70 = load i32, i32* %num108, align 4
  %idxprom109 = sext i32 %70 to i64
  %71 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score110 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %71, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [50 x i32], [50 x i32]* %score110, i32 0, i64 %idxprom109
  store i32 0, i32* %arrayidx111, align 4
  %72 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %72, i32 0, i32 2
  %73 = load i32, i32* %num112, align 4
  %inc113 = add nsw i32 %73, 1
  store i32 %inc113, i32* %num112, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.103, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.114
  br label %for.inc.115

for.inc.115:                                      ; preds = %do.end, %if.then.82, %if.then.77, %if.then.69, %if.then.61, %if.then.53
  %74 = load i32, i32* %l, align 4
  %inc116 = add nsw i32 %74, 1
  store i32 %inc116, i32* %l, align 4
  br label %for.cond.34

for.end.117:                                      ; preds = %for.cond.34
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.end.117, %if.then.32, %if.then.29, %if.then.19
  %75 = load i32, i32* %k, align 4
  %inc119 = add nsw i32 %75, 1
  store i32 %inc119, i32* %k, align 4
  br label %for.cond.8

for.end.120:                                      ; preds = %for.cond.8
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %76 = load i32, i32* %r, align 4
  %inc122 = add nsw i32 %76, 1
  store i32 %inc122, i32* %r, align 4
  br label %for.cond

for.end.123:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @special_rescue6_moves(i32 %str, i32* %libs, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %right = alloca i32, align 4
  %up = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %liberties = alloca i32, align 4
  %u = alloca i32, align 4
  %u139 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  store i32 %call, i32* %liberties, align 4
  %4 = load i32, i32* %liberties, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %liberties, align 4
  %cmp2 = icmp eq i32 %5, 4
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %6, 20
  %sub4 = sub nsw i32 %div, 1
  %7 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %7, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2016, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i32 %sub4, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.188, %if.end
  %8 = load i32, i32* %r, align 4
  %9 = load i32, i32* %liberties, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end.190

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %r, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32*, i32** %libs.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %12 = load i32, i32* %arrayidx9, align 4
  store i32 %12, i32* %apos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.185, %for.body
  %13 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %13, 4
  br i1 %cmp11, label %for.body.13, label %for.end.187

for.body.13:                                      ; preds = %for.cond.10
  %14 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  store i32 %15, i32* %right, align 4
  %16 = load i32, i32* %apos, align 4
  %17 = load i32, i32* %right, align 4
  %sub16 = sub nsw i32 %16, %17
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %18 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %cmp20 = icmp ne i32 %conv19, 3
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.13
  br label %for.inc.185

if.end.23:                                        ; preds = %for.body.13
  %19 = load i32, i32* %apos, align 4
  %20 = load i32, i32* %right, align 4
  %add = add nsw i32 %19, %20
  store i32 %add, i32* %bpos, align 4
  %21 = load i32, i32* %bpos, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %22 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %23 = load i32, i32* %color, align 4
  %cmp27 = icmp ne i32 %conv26, %23
  br i1 %cmp27, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.23
  %24 = load i32, i32* %str.addr, align 4
  %25 = load i32, i32* %bpos, align 4
  %call30 = call i32 @same_string(i32 %24, i32 %25)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false.29, %if.end.23
  br label %for.inc.185

if.end.32:                                        ; preds = %lor.lhs.false.29
  store i32 0, i32* %l, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.182, %if.end.32
  %26 = load i32, i32* %l, align 4
  %cmp34 = icmp slt i32 %26, 2
  br i1 %cmp34, label %for.body.36, label %for.end.184

for.body.36:                                      ; preds = %for.cond.33
  %27 = load i32, i32* %k, align 4
  %add37 = add nsw i32 %27, 1
  %rem38 = srem i32 %add37, 4
  %idxprom39 = sext i32 %rem38 to i64
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom39
  %28 = load i32, i32* %arrayidx40, align 4
  store i32 %28, i32* %up, align 4
  %29 = load i32, i32* %l, align 4
  %cmp41 = icmp eq i32 %29, 1
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %for.body.36
  %30 = load i32, i32* %up, align 4
  %sub44 = sub nsw i32 0, %30
  store i32 %sub44, i32* %up, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %for.body.36
  %31 = load i32, i32* %bpos, align 4
  %32 = load i32, i32* %up, align 4
  %add46 = add nsw i32 %31, %32
  store i32 %add46, i32* %cpos, align 4
  %33 = load i32, i32* %cpos, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %34 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %34 to i32
  %35 = load i32, i32* %other, align 4
  %cmp50 = icmp ne i32 %conv49, %35
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.45
  br label %for.inc.182

if.end.53:                                        ; preds = %if.end.45
  %36 = load i32, i32* %apos, align 4
  %37 = load i32, i32* %up, align 4
  %add54 = add nsw i32 %36, %37
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %38 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %38 to i32
  %cmp58 = icmp ne i32 %conv57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.53
  br label %for.inc.182

if.end.61:                                        ; preds = %if.end.53
  %39 = load i32, i32* %cpos, align 4
  %40 = load i32, i32* %right, align 4
  %add62 = add nsw i32 %39, %40
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %41 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %41 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.61
  br label %for.inc.182

if.end.69:                                        ; preds = %if.end.61
  %42 = load i32, i32* %apos, align 4
  %43 = load i32, i32* %up, align 4
  %add70 = add nsw i32 %42, %43
  %44 = load i32, i32* %up, align 4
  %add71 = add nsw i32 %add70, %44
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom72
  %45 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %45 to i32
  %cmp75 = icmp ne i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.69
  br label %for.inc.182

if.end.78:                                        ; preds = %if.end.69
  %46 = load i32, i32* %cpos, align 4
  %47 = load i32, i32* %up, align 4
  %add79 = add nsw i32 %46, %47
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom80
  %48 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %48 to i32
  %cmp83 = icmp ne i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.78
  br label %for.inc.182

if.end.86:                                        ; preds = %if.end.78
  %49 = load i32, i32* %cpos, align 4
  %50 = load i32, i32* %up, align 4
  %add87 = add nsw i32 %49, %50
  %51 = load i32, i32* %right, align 4
  %add88 = add nsw i32 %add87, %51
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom89
  %52 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %52 to i32
  %53 = load i32, i32* %color, align 4
  %cmp92 = icmp ne i32 %conv91, %53
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.86
  br label %for.inc.182

if.end.95:                                        ; preds = %if.end.86
  %54 = load i32, i32* %cpos, align 4
  %55 = load i32, i32* %right, align 4
  %add96 = add nsw i32 %54, %55
  %56 = load i32, i32* %color, align 4
  %call97 = call i32 @is_self_atari(i32 %add96, i32 %56)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.133, label %if.then.99

if.then.99:                                       ; preds = %if.end.95
  br label %do.body

do.body:                                          ; preds = %if.then.99
  store i32 0, i32* %u, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc, %do.body
  %57 = load i32, i32* %u, align 4
  %58 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 2
  %59 = load i32, i32* %num, align 4
  %cmp101 = icmp slt i32 %57, %59
  br i1 %cmp101, label %for.body.103, label %for.end

for.body.103:                                     ; preds = %for.cond.100
  %60 = load i32, i32* %u, align 4
  %idxprom104 = sext i32 %60 to i64
  %61 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %61, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom104
  %62 = load i32, i32* %arrayidx105, align 4
  %63 = load i32, i32* %cpos, align 4
  %64 = load i32, i32* %right, align 4
  %add106 = add nsw i32 %63, %64
  %cmp107 = icmp eq i32 %62, %add106
  br i1 %cmp107, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %for.body.103
  %65 = load i32, i32* %u, align 4
  %idxprom110 = sext i32 %65 to i64
  %66 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom110
  %67 = load i32, i32* %arrayidx111, align 4
  %add112 = add nsw i32 %67, 0
  store i32 %add112, i32* %arrayidx111, align 4
  br label %for.end

if.end.113:                                       ; preds = %for.body.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %68 = load i32, i32* %u, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.100

for.end:                                          ; preds = %if.then.109, %for.cond.100
  %69 = load i32, i32* %u, align 4
  %70 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num114 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %70, i32 0, i32 2
  %71 = load i32, i32* %num114, align 4
  %cmp115 = icmp eq i32 %69, %71
  br i1 %cmp115, label %land.lhs.true, label %if.end.132

land.lhs.true:                                    ; preds = %for.end
  %72 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num117 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %72, i32 0, i32 2
  %73 = load i32, i32* %num117, align 4
  %cmp118 = icmp slt i32 %73, 50
  br i1 %cmp118, label %if.then.120, label %if.end.132

if.then.120:                                      ; preds = %land.lhs.true
  %74 = load i32, i32* %cpos, align 4
  %75 = load i32, i32* %right, align 4
  %add121 = add nsw i32 %74, %75
  %76 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num122 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %76, i32 0, i32 2
  %77 = load i32, i32* %num122, align 4
  %idxprom123 = sext i32 %77 to i64
  %78 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos124 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %78, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [50 x i32], [50 x i32]* %pos124, i32 0, i64 %idxprom123
  store i32 %add121, i32* %arrayidx125, align 4
  %79 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num126 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %79, i32 0, i32 2
  %80 = load i32, i32* %num126, align 4
  %idxprom127 = sext i32 %80 to i64
  %81 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score128 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %81, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [50 x i32], [50 x i32]* %score128, i32 0, i64 %idxprom127
  store i32 0, i32* %arrayidx129, align 4
  %82 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %82, i32 0, i32 2
  %83 = load i32, i32* %num130, align 4
  %inc131 = add nsw i32 %83, 1
  store i32 %inc131, i32* %num130, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.120, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.132
  br label %if.end.133

if.end.133:                                       ; preds = %do.end, %if.end.95
  %84 = load i32, i32* %cpos, align 4
  %85 = load i32, i32* %up, align 4
  %add134 = add nsw i32 %84, %85
  %86 = load i32, i32* %color, align 4
  %call135 = call i32 @is_self_atari(i32 %add134, i32 %86)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.181, label %if.then.137

if.then.137:                                      ; preds = %if.end.133
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  store i32 0, i32* %u139, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.157, %do.body.138
  %87 = load i32, i32* %u139, align 4
  %88 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %88, i32 0, i32 2
  %89 = load i32, i32* %num141, align 4
  %cmp142 = icmp slt i32 %87, %89
  br i1 %cmp142, label %for.body.144, label %for.end.159

for.body.144:                                     ; preds = %for.cond.140
  %90 = load i32, i32* %u139, align 4
  %idxprom145 = sext i32 %90 to i64
  %91 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos146 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %91, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [50 x i32], [50 x i32]* %pos146, i32 0, i64 %idxprom145
  %92 = load i32, i32* %arrayidx147, align 4
  %93 = load i32, i32* %cpos, align 4
  %94 = load i32, i32* %up, align 4
  %add148 = add nsw i32 %93, %94
  %cmp149 = icmp eq i32 %92, %add148
  br i1 %cmp149, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %for.body.144
  %95 = load i32, i32* %u139, align 4
  %idxprom152 = sext i32 %95 to i64
  %96 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score153 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %96, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [50 x i32], [50 x i32]* %score153, i32 0, i64 %idxprom152
  %97 = load i32, i32* %arrayidx154, align 4
  %add155 = add nsw i32 %97, 0
  store i32 %add155, i32* %arrayidx154, align 4
  br label %for.end.159

if.end.156:                                       ; preds = %for.body.144
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %98 = load i32, i32* %u139, align 4
  %inc158 = add nsw i32 %98, 1
  store i32 %inc158, i32* %u139, align 4
  br label %for.cond.140

for.end.159:                                      ; preds = %if.then.151, %for.cond.140
  %99 = load i32, i32* %u139, align 4
  %100 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num160 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %100, i32 0, i32 2
  %101 = load i32, i32* %num160, align 4
  %cmp161 = icmp eq i32 %99, %101
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.179

land.lhs.true.163:                                ; preds = %for.end.159
  %102 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num164 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %102, i32 0, i32 2
  %103 = load i32, i32* %num164, align 4
  %cmp165 = icmp slt i32 %103, 50
  br i1 %cmp165, label %if.then.167, label %if.end.179

if.then.167:                                      ; preds = %land.lhs.true.163
  %104 = load i32, i32* %cpos, align 4
  %105 = load i32, i32* %up, align 4
  %add168 = add nsw i32 %104, %105
  %106 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num169 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %106, i32 0, i32 2
  %107 = load i32, i32* %num169, align 4
  %idxprom170 = sext i32 %107 to i64
  %108 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos171 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %108, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [50 x i32], [50 x i32]* %pos171, i32 0, i64 %idxprom170
  store i32 %add168, i32* %arrayidx172, align 4
  %109 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num173 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %109, i32 0, i32 2
  %110 = load i32, i32* %num173, align 4
  %idxprom174 = sext i32 %110 to i64
  %111 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score175 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %111, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [50 x i32], [50 x i32]* %score175, i32 0, i64 %idxprom174
  store i32 0, i32* %arrayidx176, align 4
  %112 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num177 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %112, i32 0, i32 2
  %113 = load i32, i32* %num177, align 4
  %inc178 = add nsw i32 %113, 1
  store i32 %inc178, i32* %num177, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.167, %land.lhs.true.163, %for.end.159
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  br label %if.end.181

if.end.181:                                       ; preds = %do.end.180, %if.end.133
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181, %if.then.94, %if.then.85, %if.then.77, %if.then.68, %if.then.60, %if.then.52
  %114 = load i32, i32* %l, align 4
  %inc183 = add nsw i32 %114, 1
  store i32 %inc183, i32* %l, align 4
  br label %for.cond.33

for.end.184:                                      ; preds = %for.cond.33
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.184, %if.then.31, %if.then.22
  %115 = load i32, i32* %k, align 4
  %inc186 = add nsw i32 %115, 1
  store i32 %inc186, i32* %k, align 4
  br label %for.cond.10

for.end.187:                                      ; preds = %for.cond.10
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.end.187
  %116 = load i32, i32* %r, align 4
  %inc189 = add nsw i32 %116, 1
  store i32 %inc189, i32* %r, align 4
  br label %for.cond

for.end.190:                                      ; preds = %for.cond
  ret void
}

declare i32 @accuratelib(i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @attack1(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %result = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [6 x i32], align 16
  %k = alloca i32, align 4
  %apos = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 -1, i32* %result, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %5 = load i32, i32* %str.addr, align 4
  %call = call i32 @findlib(i32 %5, i32 1, i32* %xpos)
  %6 = load i32, i32* %str.addr, align 4
  %call1 = call i32 @countstones(i32 %6)
  %cmp = icmp sgt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* %result, align 4
  br label %if.end.38

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %xpos, align 4
  %8 = load i32, i32* %other, align 4
  %9 = load i32, i32* %str.addr, align 4
  %10 = load i32, i32* %komaster.addr, align 4
  %11 = load i32, i32* %kom_pos.addr, align 4
  %call3 = call i32 @trymove(i32 %7, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else.31

if.then.4:                                        ; preds = %if.else
  %12 = load i32, i32* %xpos, align 4
  %call5 = call i32 @countlib(i32 %12)
  %cmp6 = icmp sgt i32 %call5, 1
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.then.4
  store i32 5, i32* %result, align 4
  br label %if.end.30

if.else.9:                                        ; preds = %if.then.4
  %13 = load i32, i32* %xpos, align 4
  %call10 = call i32 @countstones(i32 %13)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then.13, label %if.else.18

if.then.13:                                       ; preds = %if.else.9
  %14 = load i32, i32* %komaster.addr, align 4
  %15 = load i32, i32* %other, align 4
  %cmp14 = icmp ne i32 %14, %15
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.then.13
  store i32 4, i32* %result, align 4
  br label %if.end

if.else.17:                                       ; preds = %if.then.13
  store i32 5, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.17, %if.then.16
  br label %if.end.29

if.else.18:                                       ; preds = %if.else.9
  %16 = load i32, i32* %str.addr, align 4
  %17 = load i32, i32* %color, align 4
  %18 = load i32, i32* %str.addr, align 4
  %19 = load i32, i32* %komaster.addr, align 4
  %20 = load i32, i32* %kom_pos.addr, align 4
  %call19 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %18, i32 %19, i32 %20)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.else.18
  %21 = load i32, i32* %str.addr, align 4
  %call22 = call i32 @countlib(i32 %21)
  %cmp23 = icmp sgt i32 %call22, 1
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.21
  store i32 0, i32* %result, align 4
  br label %if.end.27

if.else.26:                                       ; preds = %if.then.21
  store i32 5, i32* %result, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  call void @popgo()
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.else.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.8
  call void @popgo()
  br label %if.end.37

if.else.31:                                       ; preds = %if.else
  %22 = load i32, i32* %komaster.addr, align 4
  %23 = load i32, i32* %color, align 4
  %cmp32 = icmp ne i32 %22, %23
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.31
  store i32 1, i32* %result, align 4
  br label %if.end.36

if.else.35:                                       ; preds = %if.else.31
  store i32 0, i32* %result, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then
  %24 = load i32, i32* %result, align 4
  %cmp39 = icmp ne i32 %24, 5
  br i1 %cmp39, label %if.then.41, label %if.end.82

if.then.41:                                       ; preds = %if.end.38
  %25 = load i32, i32* %xpos, align 4
  %26 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %libs, i32 0, i32 0
  %call42 = call i32 @approxlib(i32 %25, i32 %26, i32 6, i32* %arraydecay)
  store i32 %call42, i32* %liberties, align 4
  %27 = load i32, i32* %liberties, align 4
  %cmp43 = icmp sle i32 %27, 5
  br i1 %cmp43, label %if.then.45, label %if.end.81

if.then.45:                                       ; preds = %if.then.41
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.45
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %liberties, align 4
  %cmp46 = icmp slt i32 %28, %29
  br i1 %cmp46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [6 x i32], [6 x i32]* %libs, i32 0, i64 %idxprom48
  %31 = load i32, i32* %arrayidx49, align 4
  store i32 %31, i32* %apos, align 4
  %32 = load i32, i32* %apos, align 4
  %33 = load i32, i32* %other, align 4
  %call50 = call i32 @is_self_atari(i32 %32, i32 %33)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.79, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %34 = load i32, i32* %apos, align 4
  %35 = load i32, i32* %other, align 4
  %36 = load i32, i32* %str.addr, align 4
  %37 = load i32, i32* %komaster.addr, align 4
  %38 = load i32, i32* %kom_pos.addr, align 4
  %call52 = call i32 @trymove(i32 %34, i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %36, i32 %37, i32 %38)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.79

if.then.54:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %str.addr, align 4
  %40 = load i32, i32* %komaster.addr, align 4
  %41 = load i32, i32* %kom_pos.addr, align 4
  %call55 = call i32 @do_find_defense(i32 %39, i32* null, i32 %40, i32 %41)
  store i32 %call55, i32* %dcode, align 4
  %42 = load i32, i32* %dcode, align 4
  %cmp56 = icmp ne i32 %42, 5
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.78

land.lhs.true.58:                                 ; preds = %if.then.54
  %43 = load i32, i32* %str.addr, align 4
  %44 = load i32, i32* %komaster.addr, align 4
  %45 = load i32, i32* %kom_pos.addr, align 4
  %call59 = call i32 @do_attack(i32 %43, i32* null, i32 %44, i32 %45)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.78

if.then.61:                                       ; preds = %land.lhs.true.58
  %46 = load i32, i32* %dcode, align 4
  %cmp62 = icmp eq i32 %46, 0
  br i1 %cmp62, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %if.then.61
  call void @popgo()
  %47 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool65 = icmp ne %struct.SGFTree_t* %47, null
  br i1 %tobool65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.then.64
  %48 = load i8*, i8** %read_function_name, align 8
  %49 = load i32, i32* %q, align 4
  %50 = load i32, i32* %apos, align 4
  call void @sgf_trace(i8* %48, i32 %49, i32 %50, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.then.64
  %51 = load i32, i32* %apos, align 4
  %52 = load i32*, i32** %move.addr, align 8
  store i32 %51, i32* %52, align 4
  store i32 5, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.61
  %53 = load i32, i32* %dcode, align 4
  %cmp69 = icmp ne i32 %53, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.77

land.lhs.true.71:                                 ; preds = %if.end.68
  %54 = load i32, i32* %dcode, align 4
  %sub72 = sub nsw i32 5, %54
  %55 = load i32, i32* %result, align 4
  %cmp73 = icmp sgt i32 %sub72, %55
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %land.lhs.true.71
  %56 = load i32, i32* %apos, align 4
  store i32 %56, i32* %xpos, align 4
  %57 = load i32, i32* %dcode, align 4
  %sub76 = sub nsw i32 5, %57
  store i32 %sub76, i32* %result, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.75, %land.lhs.true.71, %if.end.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %land.lhs.true.58, %if.then.54
  call void @popgo()
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %58 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %58, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.end.81:                                        ; preds = %for.end, %if.then.41
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.38
  %59 = load i32, i32* %result, align 4
  %cmp83 = icmp sgt i32 %59, 0
  br i1 %cmp83, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %if.end.82
  %60 = load i32, i32* %xpos, align 4
  %61 = load i32*, i32** %move.addr, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool86 = icmp ne %struct.SGFTree_t* %62, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.then.85
  %63 = load i8*, i8** %read_function_name, align 8
  %64 = load i32, i32* %q, align 4
  %65 = load i32, i32* %xpos, align 4
  %66 = load i32, i32* %result, align 4
  call void @sgf_trace(i8* %63, i32 %64, i32 %65, i32 %66, i8* null)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.then.85
  br label %if.end.93

if.else.89:                                       ; preds = %if.end.82
  %67 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool90 = icmp ne %struct.SGFTree_t* %67, null
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.else.89
  %68 = load i8*, i8** %read_function_name, align 8
  %69 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %68, i32 %69, i32 0, i32 0, i8* null)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.else.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.88
  %70 = load i32, i32* %result, align 4
  store i32 %70, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.end.67
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @attack2(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %hpos = alloca i32, align 4
  %xpos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %r = alloca i32, align 4
  %libs = alloca [2 x i32], align 4
  %libs2 = alloca [2 x i32], align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %k = alloca i32, align 4
  %atari_possible = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %adjacent_liberties = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %u = alloca i32, align 4
  %apos = alloca i32, align 4
  %u169 = alloca i32, align 4
  %u219 = alloca i32, align 4
  %bpos = alloca i32, align 4
  %u283 = alloca i32, align 4
  %apos349 = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %apos370 = alloca i32, align 4
  %ss_liberties = alloca i32, align 4
  %ss_libs = alloca [24 x i32], align 16
  %liberty_cap = alloca i32, align 4
  %apos558 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i32 0, i32* %atari_possible, align 4
  store i32 0, i32* %adjacent_liberties, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 0, i32* %num, align 4
  %5 = load i32, i32* %str.addr, align 4
  %call = call i32 @find_origin(i32 %5)
  store i32 %call, i32* %str.addr, align 4
  %6 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %10, 20
  %sub10 = sub nsw i32 %div, 1
  %11 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %11, 20
  %sub11 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 %sub10, i32 %sub11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %str.addr, align 4
  %call12 = call i32 @countlib(i32 %12)
  %cmp13 = icmp eq i32 %call12, 2
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end
  br label %if.end.21

if.else.16:                                       ; preds = %if.end
  %13 = load i32, i32* %str.addr, align 4
  %div17 = sdiv i32 %13, 20
  %sub18 = sub nsw i32 %div17, 1
  %14 = load i32, i32* %str.addr, align 4
  %rem19 = srem i32 %14, 20
  %sub20 = sub nsw i32 %rem19, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2553, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 %sub18, i32 %sub20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.15
  %15 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call22 = call i32 @chainlinks2(i32 %15, i32* %arraydecay, i32 1)
  store i32 %call22, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end.21
  %16 = load i32, i32* %r, align 4
  %17 = load i32, i32* %adj, align 4
  %cmp23 = icmp slt i32 %16, %17
  br i1 %cmp23, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* @stackp, align 4
  %19 = load i32, i32* @depth, align 4
  %cmp25 = icmp sgt i32 %18, %19
  br i1 %cmp25, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %for.body
  %20 = load i32, i32* %r, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom27
  %21 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 @countstones(i32 %21)
  %cmp30 = icmp sgt i32 %call29, 1
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.32
  %22 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %22, null
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.body
  %23 = load i8*, i8** %read_function_name, align 8
  %24 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %23, i32 %24, i32 0, i32 0, i8* null)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %do.body
  store i32 0, i32* %retval
  br label %do.end.670

do.end:                                           ; No predecessors!
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %land.lhs.true, %for.body
  %25 = load i32, i32* @stackp, align 4
  %26 = load i32, i32* @depth, align 4
  %cmp36 = icmp sle i32 %25, %26
  br i1 %cmp36, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.35
  %27 = load i32, i32* %r, align 4
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom39
  %28 = load i32, i32* %arrayidx40, align 4
  call void @break_chain_moves(i32 %28, %struct.reading_moves* %moves)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.35
  %29 = load i32, i32* %r, align 4
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom42
  %30 = load i32, i32* %arrayidx43, align 4
  %call44 = call i32 @findlib(i32 %30, i32 1, i32* %hpos)
  br label %do.body.45

do.body.45:                                       ; preds = %if.end.41
  store i32 0, i32* %u, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %do.body.45
  %31 = load i32, i32* %u, align 4
  %num47 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %32 = load i32, i32* %num47, align 4
  %cmp48 = icmp slt i32 %31, %32
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.46
  %33 = load i32, i32* %u, align 4
  %idxprom51 = sext i32 %33 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom51
  %34 = load i32, i32* %arrayidx52, align 4
  %35 = load i32, i32* %hpos, align 4
  %cmp53 = icmp eq i32 %34, %35
  br i1 %cmp53, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %for.body.50
  %36 = load i32, i32* %u, align 4
  %idxprom56 = sext i32 %36 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom56
  %37 = load i32, i32* %arrayidx57, align 4
  %add = add nsw i32 %37, 0
  store i32 %add, i32* %arrayidx57, align 4
  br label %for.end

if.end.58:                                        ; preds = %for.body.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %38 = load i32, i32* %u, align 4
  %inc59 = add nsw i32 %38, 1
  store i32 %inc59, i32* %u, align 4
  br label %for.cond.46

for.end:                                          ; preds = %if.then.55, %for.cond.46
  %39 = load i32, i32* %u, align 4
  %num60 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %40 = load i32, i32* %num60, align 4
  %cmp61 = icmp eq i32 %39, %40
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.78

land.lhs.true.63:                                 ; preds = %for.end
  %num64 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %41 = load i32, i32* %num64, align 4
  %cmp65 = icmp slt i32 %41, 50
  br i1 %cmp65, label %if.then.67, label %if.end.78

if.then.67:                                       ; preds = %land.lhs.true.63
  %42 = load i32, i32* %hpos, align 4
  %num68 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %43 = load i32, i32* %num68, align 4
  %idxprom69 = sext i32 %43 to i64
  %pos70 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [50 x i32], [50 x i32]* %pos70, i32 0, i64 %idxprom69
  store i32 %42, i32* %arrayidx71, align 4
  %num72 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %44 = load i32, i32* %num72, align 4
  %idxprom73 = sext i32 %44 to i64
  %score74 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [50 x i32], [50 x i32]* %score74, i32 0, i64 %idxprom73
  store i32 0, i32* %arrayidx75, align 4
  %num76 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %45 = load i32, i32* %num76, align 4
  %inc77 = add nsw i32 %45, 1
  store i32 %inc77, i32* %num76, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.67, %land.lhs.true.63, %for.end
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %for.inc.80

for.inc.80:                                       ; preds = %do.end.79
  %46 = load i32, i32* %r, align 4
  %inc81 = add nsw i32 %46, 1
  store i32 %inc81, i32* %r, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %47 = load i32, i32* %str.addr, align 4
  %arraydecay83 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call84 = call i32 @findlib(i32 %47, i32 2, i32* %arraydecay83)
  store i32 %call84, i32* %liberties, align 4
  %48 = load i32, i32* %liberties, align 4
  %cmp85 = icmp eq i32 %48, 2
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %for.end.82
  br label %if.end.93

if.else.88:                                       ; preds = %for.end.82
  %49 = load i32, i32* %str.addr, align 4
  %div89 = sdiv i32 %49, 20
  %sub90 = sub nsw i32 %div89, 1
  %50 = load i32, i32* %str.addr, align 4
  %rem91 = srem i32 %50, 20
  %sub92 = sub nsw i32 %rem91, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2581, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i32 %sub90, i32 %sub92)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.88, %if.then.87
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %51 = load i32, i32* %arrayidx94, align 4
  %arrayidx95 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %52 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %52, 20
  %cmp97 = icmp eq i32 %51, %add96
  br i1 %cmp97, label %if.then.117, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.end.93
  %arrayidx100 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %53 = load i32, i32* %arrayidx100, align 4
  %arrayidx101 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %54 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 %54, 1
  %cmp103 = icmp eq i32 %53, %sub102
  br i1 %cmp103, label %if.then.117, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %lor.lhs.false.99
  %arrayidx106 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %55 = load i32, i32* %arrayidx106, align 4
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %56 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %56, 20
  %cmp109 = icmp eq i32 %55, %sub108
  br i1 %cmp109, label %if.then.117, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.105
  %arrayidx112 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %57 = load i32, i32* %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %58 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %58, 1
  %cmp115 = icmp eq i32 %57, %add114
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.105, %lor.lhs.false.99, %if.end.93
  store i32 1, i32* %adjacent_liberties, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.117, %lor.lhs.false.111
  store i32 0, i32* %k, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.328, %if.end.118
  %59 = load i32, i32* %k, align 4
  %cmp120 = icmp slt i32 %59, 2
  br i1 %cmp120, label %for.body.122, label %for.end.330

for.body.122:                                     ; preds = %for.cond.119
  %60 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %60 to i64
  %arrayidx124 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom123
  %61 = load i32, i32* %arrayidx124, align 4
  store i32 %61, i32* %apos, align 4
  %62 = load i32, i32* %apos, align 4
  %63 = load i32, i32* %other, align 4
  %call125 = call i32 @is_self_atari(i32 %62, i32 %63)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %for.body.122
  store i32 1, i32* %atari_possible, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.body.122
  %64 = load i32, i32* @stackp, align 4
  %65 = load i32, i32* @backfill_depth, align 4
  %cmp129 = icmp sle i32 %64, %65
  br i1 %cmp129, label %if.then.167, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.end.128
  %66 = load i32, i32* @stackp, align 4
  %67 = load i32, i32* @depth, align 4
  %cmp132 = icmp sle i32 %66, %67
  br i1 %cmp132, label %land.lhs.true.136, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.131
  %68 = load i32, i32* %adjacent_liberties, align 4
  %tobool135 = icmp ne i32 %68, 0
  br i1 %tobool135, label %land.lhs.true.136, label %lor.lhs.false.164

land.lhs.true.136:                                ; preds = %lor.lhs.false.134, %lor.lhs.false.131
  %69 = load i32, i32* %apos, align 4
  %add137 = add nsw i32 %69, 20
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom138
  %70 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %70 to i32
  %71 = load i32, i32* %other, align 4
  %cmp141 = icmp ne i32 %conv140, %71
  br i1 %cmp141, label %land.lhs.true.143, label %lor.lhs.false.164

land.lhs.true.143:                                ; preds = %land.lhs.true.136
  %72 = load i32, i32* %apos, align 4
  %sub144 = sub nsw i32 %72, 1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom145
  %73 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %73 to i32
  %74 = load i32, i32* %other, align 4
  %cmp148 = icmp ne i32 %conv147, %74
  br i1 %cmp148, label %land.lhs.true.150, label %lor.lhs.false.164

land.lhs.true.150:                                ; preds = %land.lhs.true.143
  %75 = load i32, i32* %apos, align 4
  %sub151 = sub nsw i32 %75, 20
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom152
  %76 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %76 to i32
  %77 = load i32, i32* %other, align 4
  %cmp155 = icmp ne i32 %conv154, %77
  br i1 %cmp155, label %land.lhs.true.157, label %lor.lhs.false.164

land.lhs.true.157:                                ; preds = %land.lhs.true.150
  %78 = load i32, i32* %apos, align 4
  %add158 = add nsw i32 %78, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom159
  %79 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %79 to i32
  %80 = load i32, i32* %other, align 4
  %cmp162 = icmp ne i32 %conv161, %80
  br i1 %cmp162, label %if.then.167, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %land.lhs.true.157, %land.lhs.true.150, %land.lhs.true.143, %land.lhs.true.136, %lor.lhs.false.134
  %81 = load i32, i32* %apos, align 4
  %82 = load i32, i32* %other, align 4
  %call165 = call i32 @is_self_atari(i32 %81, i32 %82)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.end.209, label %if.then.167

if.then.167:                                      ; preds = %lor.lhs.false.164, %land.lhs.true.157, %if.end.128
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  store i32 0, i32* %u169, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.186, %do.body.168
  %83 = load i32, i32* %u169, align 4
  %num171 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %84 = load i32, i32* %num171, align 4
  %cmp172 = icmp slt i32 %83, %84
  br i1 %cmp172, label %for.body.174, label %for.end.188

for.body.174:                                     ; preds = %for.cond.170
  %85 = load i32, i32* %u169, align 4
  %idxprom175 = sext i32 %85 to i64
  %pos176 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [50 x i32], [50 x i32]* %pos176, i32 0, i64 %idxprom175
  %86 = load i32, i32* %arrayidx177, align 4
  %87 = load i32, i32* %apos, align 4
  %cmp178 = icmp eq i32 %86, %87
  br i1 %cmp178, label %if.then.180, label %if.end.185

if.then.180:                                      ; preds = %for.body.174
  %88 = load i32, i32* %u169, align 4
  %idxprom181 = sext i32 %88 to i64
  %score182 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [50 x i32], [50 x i32]* %score182, i32 0, i64 %idxprom181
  %89 = load i32, i32* %arrayidx183, align 4
  %add184 = add nsw i32 %89, 0
  store i32 %add184, i32* %arrayidx183, align 4
  br label %for.end.188

if.end.185:                                       ; preds = %for.body.174
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %90 = load i32, i32* %u169, align 4
  %inc187 = add nsw i32 %90, 1
  store i32 %inc187, i32* %u169, align 4
  br label %for.cond.170

for.end.188:                                      ; preds = %if.then.180, %for.cond.170
  %91 = load i32, i32* %u169, align 4
  %num189 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %92 = load i32, i32* %num189, align 4
  %cmp190 = icmp eq i32 %91, %92
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.207

land.lhs.true.192:                                ; preds = %for.end.188
  %num193 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %93 = load i32, i32* %num193, align 4
  %cmp194 = icmp slt i32 %93, 50
  br i1 %cmp194, label %if.then.196, label %if.end.207

if.then.196:                                      ; preds = %land.lhs.true.192
  %94 = load i32, i32* %apos, align 4
  %num197 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %95 = load i32, i32* %num197, align 4
  %idxprom198 = sext i32 %95 to i64
  %pos199 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [50 x i32], [50 x i32]* %pos199, i32 0, i64 %idxprom198
  store i32 %94, i32* %arrayidx200, align 4
  %num201 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %96 = load i32, i32* %num201, align 4
  %idxprom202 = sext i32 %96 to i64
  %score203 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [50 x i32], [50 x i32]* %score203, i32 0, i64 %idxprom202
  store i32 0, i32* %arrayidx204, align 4
  %num205 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %97 = load i32, i32* %num205, align 4
  %inc206 = add nsw i32 %97, 1
  store i32 %inc206, i32* %num205, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.196, %land.lhs.true.192, %for.end.188
  br label %do.end.208

do.end.208:                                       ; preds = %if.end.207
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.208, %lor.lhs.false.164
  %98 = load i32, i32* @stackp, align 4
  %99 = load i32, i32* @backfill_depth, align 4
  %cmp210 = icmp sle i32 %98, %99
  br i1 %cmp210, label %land.lhs.true.212, label %if.end.327

land.lhs.true.212:                                ; preds = %if.end.209
  %100 = load i32, i32* %apos, align 4
  %101 = load i32, i32* %other, align 4
  %arraydecay213 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i32 0
  %call214 = call i32 @approxlib(i32 %100, i32 %101, i32 2, i32* %arraydecay213)
  %cmp215 = icmp eq i32 %call214, 1
  br i1 %cmp215, label %if.then.217, label %if.end.327

if.then.217:                                      ; preds = %land.lhs.true.212
  br label %do.body.218

do.body.218:                                      ; preds = %if.then.217
  store i32 0, i32* %u219, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.237, %do.body.218
  %102 = load i32, i32* %u219, align 4
  %num221 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %103 = load i32, i32* %num221, align 4
  %cmp222 = icmp slt i32 %102, %103
  br i1 %cmp222, label %for.body.224, label %for.end.239

for.body.224:                                     ; preds = %for.cond.220
  %104 = load i32, i32* %u219, align 4
  %idxprom225 = sext i32 %104 to i64
  %pos226 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [50 x i32], [50 x i32]* %pos226, i32 0, i64 %idxprom225
  %105 = load i32, i32* %arrayidx227, align 4
  %arrayidx228 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %106 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp eq i32 %105, %106
  br i1 %cmp229, label %if.then.231, label %if.end.236

if.then.231:                                      ; preds = %for.body.224
  %107 = load i32, i32* %u219, align 4
  %idxprom232 = sext i32 %107 to i64
  %score233 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [50 x i32], [50 x i32]* %score233, i32 0, i64 %idxprom232
  %108 = load i32, i32* %arrayidx234, align 4
  %add235 = add nsw i32 %108, 0
  store i32 %add235, i32* %arrayidx234, align 4
  br label %for.end.239

if.end.236:                                       ; preds = %for.body.224
  br label %for.inc.237

for.inc.237:                                      ; preds = %if.end.236
  %109 = load i32, i32* %u219, align 4
  %inc238 = add nsw i32 %109, 1
  store i32 %inc238, i32* %u219, align 4
  br label %for.cond.220

for.end.239:                                      ; preds = %if.then.231, %for.cond.220
  %110 = load i32, i32* %u219, align 4
  %num240 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %111 = load i32, i32* %num240, align 4
  %cmp241 = icmp eq i32 %110, %111
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.259

land.lhs.true.243:                                ; preds = %for.end.239
  %num244 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %112 = load i32, i32* %num244, align 4
  %cmp245 = icmp slt i32 %112, 50
  br i1 %cmp245, label %if.then.247, label %if.end.259

if.then.247:                                      ; preds = %land.lhs.true.243
  %arrayidx248 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %113 = load i32, i32* %arrayidx248, align 4
  %num249 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %114 = load i32, i32* %num249, align 4
  %idxprom250 = sext i32 %114 to i64
  %pos251 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [50 x i32], [50 x i32]* %pos251, i32 0, i64 %idxprom250
  store i32 %113, i32* %arrayidx252, align 4
  %num253 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %115 = load i32, i32* %num253, align 4
  %idxprom254 = sext i32 %115 to i64
  %score255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [50 x i32], [50 x i32]* %score255, i32 0, i64 %idxprom254
  store i32 0, i32* %arrayidx256, align 4
  %num257 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %116 = load i32, i32* %num257, align 4
  %inc258 = add nsw i32 %116, 1
  store i32 %inc258, i32* %num257, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.247, %land.lhs.true.243, %for.end.239
  br label %do.end.260

do.end.260:                                       ; preds = %if.end.259
  store i32 0, i32* %r, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.324, %do.end.260
  %117 = load i32, i32* %r, align 4
  %cmp262 = icmp slt i32 %117, 4
  br i1 %cmp262, label %for.body.264, label %for.end.326

for.body.264:                                     ; preds = %for.cond.261
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %118 = load i32, i32* %arrayidx265, align 4
  %119 = load i32, i32* %r, align 4
  %idxprom266 = sext i32 %119 to i64
  %arrayidx267 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom266
  %120 = load i32, i32* %arrayidx267, align 4
  %add268 = add nsw i32 %118, %120
  store i32 %add268, i32* %bpos, align 4
  %121 = load i32, i32* %bpos, align 4
  %idxprom269 = sext i32 %121 to i64
  %arrayidx270 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom269
  %122 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %122 to i32
  %123 = load i32, i32* %other, align 4
  %cmp272 = icmp eq i32 %conv271, %123
  br i1 %cmp272, label %land.lhs.true.274, label %if.end.323

land.lhs.true.274:                                ; preds = %for.body.264
  %124 = load i32, i32* %bpos, align 4
  %arraydecay275 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call276 = call i32 @chainlinks2(i32 %124, i32* %arraydecay275, i32 1)
  %cmp277 = icmp sgt i32 %call276, 0
  br i1 %cmp277, label %if.then.279, label %if.end.323

if.then.279:                                      ; preds = %land.lhs.true.274
  %arrayidx280 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 0
  %125 = load i32, i32* %arrayidx280, align 4
  %call281 = call i32 @findlib(i32 %125, i32 1, i32* %xpos)
  br label %do.body.282

do.body.282:                                      ; preds = %if.then.279
  store i32 0, i32* %u283, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.300, %do.body.282
  %126 = load i32, i32* %u283, align 4
  %num285 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %127 = load i32, i32* %num285, align 4
  %cmp286 = icmp slt i32 %126, %127
  br i1 %cmp286, label %for.body.288, label %for.end.302

for.body.288:                                     ; preds = %for.cond.284
  %128 = load i32, i32* %u283, align 4
  %idxprom289 = sext i32 %128 to i64
  %pos290 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [50 x i32], [50 x i32]* %pos290, i32 0, i64 %idxprom289
  %129 = load i32, i32* %arrayidx291, align 4
  %130 = load i32, i32* %xpos, align 4
  %cmp292 = icmp eq i32 %129, %130
  br i1 %cmp292, label %if.then.294, label %if.end.299

if.then.294:                                      ; preds = %for.body.288
  %131 = load i32, i32* %u283, align 4
  %idxprom295 = sext i32 %131 to i64
  %score296 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [50 x i32], [50 x i32]* %score296, i32 0, i64 %idxprom295
  %132 = load i32, i32* %arrayidx297, align 4
  %add298 = add nsw i32 %132, 0
  store i32 %add298, i32* %arrayidx297, align 4
  br label %for.end.302

if.end.299:                                       ; preds = %for.body.288
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.299
  %133 = load i32, i32* %u283, align 4
  %inc301 = add nsw i32 %133, 1
  store i32 %inc301, i32* %u283, align 4
  br label %for.cond.284

for.end.302:                                      ; preds = %if.then.294, %for.cond.284
  %134 = load i32, i32* %u283, align 4
  %num303 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %135 = load i32, i32* %num303, align 4
  %cmp304 = icmp eq i32 %134, %135
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.321

land.lhs.true.306:                                ; preds = %for.end.302
  %num307 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %136 = load i32, i32* %num307, align 4
  %cmp308 = icmp slt i32 %136, 50
  br i1 %cmp308, label %if.then.310, label %if.end.321

if.then.310:                                      ; preds = %land.lhs.true.306
  %137 = load i32, i32* %xpos, align 4
  %num311 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %138 = load i32, i32* %num311, align 4
  %idxprom312 = sext i32 %138 to i64
  %pos313 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx314 = getelementptr inbounds [50 x i32], [50 x i32]* %pos313, i32 0, i64 %idxprom312
  store i32 %137, i32* %arrayidx314, align 4
  %num315 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %139 = load i32, i32* %num315, align 4
  %idxprom316 = sext i32 %139 to i64
  %score317 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [50 x i32], [50 x i32]* %score317, i32 0, i64 %idxprom316
  store i32 0, i32* %arrayidx318, align 4
  %num319 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %140 = load i32, i32* %num319, align 4
  %inc320 = add nsw i32 %140, 1
  store i32 %inc320, i32* %num319, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.310, %land.lhs.true.306, %for.end.302
  br label %do.end.322

do.end.322:                                       ; preds = %if.end.321
  br label %if.end.323

if.end.323:                                       ; preds = %do.end.322, %land.lhs.true.274, %for.body.264
  br label %for.inc.324

for.inc.324:                                      ; preds = %if.end.323
  %141 = load i32, i32* %r, align 4
  %inc325 = add nsw i32 %141, 1
  store i32 %inc325, i32* %r, align 4
  br label %for.cond.261

for.end.326:                                      ; preds = %for.cond.261
  br label %if.end.327

if.end.327:                                       ; preds = %for.end.326, %land.lhs.true.212, %if.end.209
  br label %for.inc.328

for.inc.328:                                      ; preds = %if.end.327
  %142 = load i32, i32* %k, align 4
  %inc329 = add nsw i32 %142, 1
  store i32 %inc329, i32* %k, align 4
  br label %for.cond.119

for.end.330:                                      ; preds = %for.cond.119
  %143 = load i32, i32* %atari_possible, align 4
  %tobool331 = icmp ne i32 %143, 0
  br i1 %tobool331, label %if.end.342, label %if.then.332

if.then.332:                                      ; preds = %for.end.330
  store i32 0, i32* %k, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.339, %if.then.332
  %144 = load i32, i32* %k, align 4
  %cmp334 = icmp slt i32 %144, 2
  br i1 %cmp334, label %for.body.336, label %for.end.341

for.body.336:                                     ; preds = %for.cond.333
  %145 = load i32, i32* %str.addr, align 4
  %146 = load i32, i32* %k, align 4
  %idxprom337 = sext i32 %146 to i64
  %arrayidx338 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom337
  %147 = load i32, i32* %arrayidx338, align 4
  call void @edge_block_moves(i32 %145, i32 %147, %struct.reading_moves* %moves)
  br label %for.inc.339

for.inc.339:                                      ; preds = %for.body.336
  %148 = load i32, i32* %k, align 4
  %inc340 = add nsw i32 %148, 1
  store i32 %inc340, i32* %k, align 4
  br label %for.cond.333

for.end.341:                                      ; preds = %for.cond.333
  br label %if.end.342

if.end.342:                                       ; preds = %for.end.341, %for.end.330
  %149 = load i32, i32* %str.addr, align 4
  %arraydecay343 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call344 = call i32 @chainlinks2(i32 %149, i32* %arraydecay343, i32 2)
  store i32 %call344, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.361, %if.end.342
  %150 = load i32, i32* %r, align 4
  %151 = load i32, i32* %adj, align 4
  %cmp346 = icmp slt i32 %150, %151
  br i1 %cmp346, label %for.body.348, label %for.end.363

for.body.348:                                     ; preds = %for.cond.345
  %152 = load i32, i32* %r, align 4
  %idxprom350 = sext i32 %152 to i64
  %arrayidx351 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom350
  %153 = load i32, i32* %arrayidx351, align 4
  store i32 %153, i32* %apos349, align 4
  %arrayidx352 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %154 = load i32, i32* %arrayidx352, align 4
  %155 = load i32, i32* %apos349, align 4
  %call353 = call i32 @liberty_of_string(i32 %154, i32 %155)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.360

land.lhs.true.355:                                ; preds = %for.body.348
  %arrayidx356 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %156 = load i32, i32* %arrayidx356, align 4
  %157 = load i32, i32* %apos349, align 4
  %call357 = call i32 @liberty_of_string(i32 %156, i32 %157)
  %tobool358 = icmp ne i32 %call357, 0
  br i1 %tobool358, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %land.lhs.true.355
  %158 = load i32, i32* %apos349, align 4
  call void @break_chain_moves(i32 %158, %struct.reading_moves* %moves)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.359, %land.lhs.true.355, %for.body.348
  br label %for.inc.361

for.inc.361:                                      ; preds = %if.end.360
  %159 = load i32, i32* %r, align 4
  %inc362 = add nsw i32 %159, 1
  store i32 %inc362, i32* %r, align 4
  br label %for.cond.345

for.end.363:                                      ; preds = %for.cond.345
  %160 = load i32, i32* %str.addr, align 4
  %arraydecay364 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %161 = load i32, i32* %liberties, align 4
  %162 = load i32, i32* %other, align 4
  call void @propose_edge_moves(i32 %160, i32* %arraydecay364, i32 %161, %struct.reading_moves* %moves, i32 %162)
  %163 = load i32, i32* %str.addr, align 4
  %164 = load i32, i32* %other, align 4
  %165 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %163, %struct.reading_moves* %moves, i32 %164, i8* %165, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.423, %for.end.363
  %166 = load i32, i32* %k, align 4
  %num366 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %167 = load i32, i32* %num366, align 4
  %cmp367 = icmp slt i32 %166, %167
  br i1 %cmp367, label %for.body.369, label %for.end.425

for.body.369:                                     ; preds = %for.cond.365
  %168 = load i32, i32* %k, align 4
  %idxprom371 = sext i32 %168 to i64
  %pos372 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx373 = getelementptr inbounds [50 x i32], [50 x i32]* %pos372, i32 0, i64 %idxprom371
  %169 = load i32, i32* %arrayidx373, align 4
  store i32 %169, i32* %apos370, align 4
  %170 = load i32, i32* %apos370, align 4
  %171 = load i32, i32* %other, align 4
  %172 = load i32, i32* %str.addr, align 4
  %173 = load i32, i32* %komaster.addr, align 4
  %174 = load i32, i32* %kom_pos.addr, align 4
  %175 = load i32, i32* @stackp, align 4
  %176 = load i32, i32* @ko_depth, align 4
  %cmp374 = icmp sle i32 %175, %176
  br i1 %cmp374, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body.369
  %177 = load i32, i32* %savecode, align 4
  %cmp376 = icmp eq i32 %177, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.369
  %178 = phi i1 [ false, %for.body.369 ], [ %cmp376, %land.rhs ]
  %land.ext = zext i1 %178 to i32
  %call378 = call i32 @komaster_trymove(i32 %170, i32 %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 %172, i32 %173, i32 %174, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool379 = icmp ne i32 %call378, 0
  br i1 %tobool379, label %if.then.380, label %if.end.422

if.then.380:                                      ; preds = %land.end
  %179 = load i32, i32* %ko_move, align 4
  %tobool381 = icmp ne i32 %179, 0
  br i1 %tobool381, label %if.else.411, label %if.then.382

if.then.382:                                      ; preds = %if.then.380
  %180 = load i32, i32* %str.addr, align 4
  %181 = load i32, i32* %new_komaster, align 4
  %182 = load i32, i32* %new_kom_pos, align 4
  %call383 = call i32 @do_find_defense(i32 %180, i32* null, i32 %181, i32 %182)
  store i32 %call383, i32* %dcode, align 4
  %183 = load i32, i32* %dcode, align 4
  %cmp384 = icmp ne i32 %183, 5
  br i1 %cmp384, label %land.lhs.true.386, label %if.else.409

land.lhs.true.386:                                ; preds = %if.then.382
  %184 = load i32, i32* %str.addr, align 4
  %185 = load i32, i32* %new_komaster, align 4
  %186 = load i32, i32* %new_kom_pos, align 4
  %call387 = call i32 @do_attack(i32 %184, i32* null, i32 %185, i32 %186)
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %if.then.389, label %if.else.409

if.then.389:                                      ; preds = %land.lhs.true.386
  call void @popgo()
  br label %do.body.390

do.body.390:                                      ; preds = %if.then.389
  %187 = load i32, i32* %dcode, align 4
  %cmp391 = icmp eq i32 %187, 0
  br i1 %cmp391, label %if.then.393, label %if.else.400

if.then.393:                                      ; preds = %do.body.390
  %188 = load i32*, i32** %move.addr, align 8
  %tobool394 = icmp ne i32* %188, null
  br i1 %tobool394, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.then.393
  %189 = load i32, i32* %apos370, align 4
  %190 = load i32*, i32** %move.addr, align 8
  store i32 %189, i32* %190, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %if.then.393
  %191 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool397 = icmp ne %struct.SGFTree_t* %191, null
  br i1 %tobool397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.end.396
  %192 = load i8*, i8** %read_function_name, align 8
  %193 = load i32, i32* %q, align 4
  %194 = load i32, i32* %apos370, align 4
  call void @sgf_trace(i8* %192, i32 %193, i32 %194, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.398, %if.end.396
  store i32 5, i32* %retval
  br label %do.end.670

if.else.400:                                      ; preds = %do.body.390
  %195 = load i32, i32* %dcode, align 4
  %sub401 = sub nsw i32 5, %195
  %196 = load i32, i32* %savecode, align 4
  %cmp402 = icmp sgt i32 %sub401, %196
  br i1 %cmp402, label %if.then.404, label %if.end.406

if.then.404:                                      ; preds = %if.else.400
  %197 = load i32, i32* %apos370, align 4
  store i32 %197, i32* %savemove, align 4
  %198 = load i32, i32* %dcode, align 4
  %sub405 = sub nsw i32 5, %198
  store i32 %sub405, i32* %savecode, align 4
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.404, %if.else.400
  br label %if.end.407

if.end.407:                                       ; preds = %if.end.406
  br label %do.end.408

do.end.408:                                       ; preds = %if.end.407
  br label %if.end.410

if.else.409:                                      ; preds = %land.lhs.true.386, %if.then.382
  call void @popgo()
  br label %if.end.410

if.end.410:                                       ; preds = %if.else.409, %do.end.408
  br label %if.end.421

if.else.411:                                      ; preds = %if.then.380
  %199 = load i32, i32* %str.addr, align 4
  %200 = load i32, i32* %new_komaster, align 4
  %201 = load i32, i32* %new_kom_pos, align 4
  %call412 = call i32 @do_find_defense(i32 %199, i32* null, i32 %200, i32 %201)
  %cmp413 = icmp ne i32 %call412, 5
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.420

land.lhs.true.415:                                ; preds = %if.else.411
  %202 = load i32, i32* %str.addr, align 4
  %203 = load i32, i32* %new_komaster, align 4
  %204 = load i32, i32* %new_kom_pos, align 4
  %call416 = call i32 @do_attack(i32 %202, i32* null, i32 %203, i32 %204)
  %cmp417 = icmp ne i32 %call416, 0
  br i1 %cmp417, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %land.lhs.true.415
  %205 = load i32, i32* %apos370, align 4
  store i32 %205, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.419, %land.lhs.true.415, %if.else.411
  call void @popgo()
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.end.410
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %land.end
  br label %for.inc.423

for.inc.423:                                      ; preds = %if.end.422
  %206 = load i32, i32* %k, align 4
  %inc424 = add nsw i32 %206, 1
  store i32 %inc424, i32* %k, align 4
  br label %for.cond.365

for.end.425:                                      ; preds = %for.cond.365
  %207 = load i32, i32* %str.addr, align 4
  %arrayidx426 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 0
  %208 = load i32, i32* %arrayidx426, align 4
  %arrayidx427 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 1
  %209 = load i32, i32* %arrayidx427, align 4
  %210 = load i32, i32* %komaster.addr, align 4
  %211 = load i32, i32* %kom_pos.addr, align 4
  %call428 = call i32 @find_cap2(i32 %207, i32 %208, i32 %209, i32* %xpos, i32 %210, i32 %211)
  store i32 %call428, i32* %acode, align 4
  br label %do.body.429

do.body.429:                                      ; preds = %for.end.425
  %212 = load i32, i32* %acode, align 4
  %sub430 = sub nsw i32 5, %212
  %cmp431 = icmp eq i32 %sub430, 0
  br i1 %cmp431, label %if.then.433, label %if.else.440

if.then.433:                                      ; preds = %do.body.429
  %213 = load i32*, i32** %move.addr, align 8
  %tobool434 = icmp ne i32* %213, null
  br i1 %tobool434, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %if.then.433
  %214 = load i32, i32* %xpos, align 4
  %215 = load i32*, i32** %move.addr, align 8
  store i32 %214, i32* %215, align 4
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.435, %if.then.433
  %216 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool437 = icmp ne %struct.SGFTree_t* %216, null
  br i1 %tobool437, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.436
  %217 = load i8*, i8** %read_function_name, align 8
  %218 = load i32, i32* %q, align 4
  %219 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %217, i32 %218, i32 %219, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0))
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.438, %if.end.436
  store i32 5, i32* %retval
  br label %do.end.670

if.else.440:                                      ; preds = %do.body.429
  %220 = load i32, i32* %acode, align 4
  %sub441 = sub nsw i32 5, %220
  %sub442 = sub nsw i32 5, %sub441
  %221 = load i32, i32* %savecode, align 4
  %cmp443 = icmp sgt i32 %sub442, %221
  br i1 %cmp443, label %if.then.445, label %if.end.448

if.then.445:                                      ; preds = %if.else.440
  %222 = load i32, i32* %xpos, align 4
  store i32 %222, i32* %savemove, align 4
  %223 = load i32, i32* %acode, align 4
  %sub446 = sub nsw i32 5, %223
  %sub447 = sub nsw i32 5, %sub446
  store i32 %sub447, i32* %savecode, align 4
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.445, %if.else.440
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448
  br label %do.end.450

do.end.450:                                       ; preds = %if.end.449
  %224 = load i32, i32* @stackp, align 4
  %225 = load i32, i32* @backfill_depth, align 4
  %cmp451 = icmp sle i32 %224, %225
  br i1 %cmp451, label %if.then.453, label %if.end.478

if.then.453:                                      ; preds = %do.end.450
  %226 = load i32, i32* %str.addr, align 4
  %arraydecay454 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %227 = load i32, i32* %komaster.addr, align 4
  %228 = load i32, i32* %kom_pos.addr, align 4
  %call455 = call i32 @special_attack2(i32 %226, i32* %arraydecay454, i32* %xpos, i32 %227, i32 %228)
  store i32 %call455, i32* %acode, align 4
  br label %do.body.456

do.body.456:                                      ; preds = %if.then.453
  %229 = load i32, i32* %acode, align 4
  %sub457 = sub nsw i32 5, %229
  %cmp458 = icmp eq i32 %sub457, 0
  br i1 %cmp458, label %if.then.460, label %if.else.467

if.then.460:                                      ; preds = %do.body.456
  %230 = load i32*, i32** %move.addr, align 8
  %tobool461 = icmp ne i32* %230, null
  br i1 %tobool461, label %if.then.462, label %if.end.463

if.then.462:                                      ; preds = %if.then.460
  %231 = load i32, i32* %xpos, align 4
  %232 = load i32*, i32** %move.addr, align 8
  store i32 %231, i32* %232, align 4
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.462, %if.then.460
  %233 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool464 = icmp ne %struct.SGFTree_t* %233, null
  br i1 %tobool464, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %if.end.463
  %234 = load i8*, i8** %read_function_name, align 8
  %235 = load i32, i32* %q, align 4
  %236 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %234, i32 %235, i32 %236, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0))
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.465, %if.end.463
  store i32 5, i32* %retval
  br label %do.end.670

if.else.467:                                      ; preds = %do.body.456
  %237 = load i32, i32* %acode, align 4
  %sub468 = sub nsw i32 5, %237
  %sub469 = sub nsw i32 5, %sub468
  %238 = load i32, i32* %savecode, align 4
  %cmp470 = icmp sgt i32 %sub469, %238
  br i1 %cmp470, label %if.then.472, label %if.end.475

if.then.472:                                      ; preds = %if.else.467
  %239 = load i32, i32* %xpos, align 4
  store i32 %239, i32* %savemove, align 4
  %240 = load i32, i32* %acode, align 4
  %sub473 = sub nsw i32 5, %240
  %sub474 = sub nsw i32 5, %sub473
  store i32 %sub474, i32* %savecode, align 4
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.472, %if.else.467
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475
  br label %do.end.477

do.end.477:                                       ; preds = %if.end.476
  br label %if.end.478

if.end.478:                                       ; preds = %do.end.477, %do.end.450
  %241 = load i32, i32* @stackp, align 4
  %242 = load i32, i32* @backfill_depth, align 4
  %cmp479 = icmp sle i32 %241, %242
  br i1 %cmp479, label %if.then.481, label %if.end.506

if.then.481:                                      ; preds = %if.end.478
  %243 = load i32, i32* %str.addr, align 4
  %arraydecay482 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %244 = load i32, i32* %komaster.addr, align 4
  %245 = load i32, i32* %kom_pos.addr, align 4
  %call483 = call i32 @special_attack3(i32 %243, i32* %arraydecay482, i32* %xpos, i32 %244, i32 %245)
  store i32 %call483, i32* %acode, align 4
  br label %do.body.484

do.body.484:                                      ; preds = %if.then.481
  %246 = load i32, i32* %acode, align 4
  %sub485 = sub nsw i32 5, %246
  %cmp486 = icmp eq i32 %sub485, 0
  br i1 %cmp486, label %if.then.488, label %if.else.495

if.then.488:                                      ; preds = %do.body.484
  %247 = load i32*, i32** %move.addr, align 8
  %tobool489 = icmp ne i32* %247, null
  br i1 %tobool489, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %if.then.488
  %248 = load i32, i32* %xpos, align 4
  %249 = load i32*, i32** %move.addr, align 8
  store i32 %248, i32* %249, align 4
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.490, %if.then.488
  %250 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool492 = icmp ne %struct.SGFTree_t* %250, null
  br i1 %tobool492, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %if.end.491
  %251 = load i8*, i8** %read_function_name, align 8
  %252 = load i32, i32* %q, align 4
  %253 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %251, i32 %252, i32 %253, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i32 0, i32 0))
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.493, %if.end.491
  store i32 5, i32* %retval
  br label %do.end.670

if.else.495:                                      ; preds = %do.body.484
  %254 = load i32, i32* %acode, align 4
  %sub496 = sub nsw i32 5, %254
  %sub497 = sub nsw i32 5, %sub496
  %255 = load i32, i32* %savecode, align 4
  %cmp498 = icmp sgt i32 %sub497, %255
  br i1 %cmp498, label %if.then.500, label %if.end.503

if.then.500:                                      ; preds = %if.else.495
  %256 = load i32, i32* %xpos, align 4
  store i32 %256, i32* %savemove, align 4
  %257 = load i32, i32* %acode, align 4
  %sub501 = sub nsw i32 5, %257
  %sub502 = sub nsw i32 5, %sub501
  store i32 %sub502, i32* %savecode, align 4
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.500, %if.else.495
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503
  br label %do.end.505

do.end.505:                                       ; preds = %if.end.504
  br label %if.end.506

if.end.506:                                       ; preds = %do.end.505, %if.end.478
  %258 = load i32, i32* @stackp, align 4
  %259 = load i32, i32* @backfill_depth, align 4
  %cmp507 = icmp sle i32 %258, %259
  br i1 %cmp507, label %if.then.509, label %if.end.534

if.then.509:                                      ; preds = %if.end.506
  %260 = load i32, i32* %str.addr, align 4
  %arraydecay510 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %261 = load i32, i32* %komaster.addr, align 4
  %262 = load i32, i32* %kom_pos.addr, align 4
  %call511 = call i32 @special_attack4(i32 %260, i32* %arraydecay510, i32* %xpos, i32 %261, i32 %262)
  store i32 %call511, i32* %acode, align 4
  br label %do.body.512

do.body.512:                                      ; preds = %if.then.509
  %263 = load i32, i32* %acode, align 4
  %sub513 = sub nsw i32 5, %263
  %cmp514 = icmp eq i32 %sub513, 0
  br i1 %cmp514, label %if.then.516, label %if.else.523

if.then.516:                                      ; preds = %do.body.512
  %264 = load i32*, i32** %move.addr, align 8
  %tobool517 = icmp ne i32* %264, null
  br i1 %tobool517, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.then.516
  %265 = load i32, i32* %xpos, align 4
  %266 = load i32*, i32** %move.addr, align 8
  store i32 %265, i32* %266, align 4
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.518, %if.then.516
  %267 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool520 = icmp ne %struct.SGFTree_t* %267, null
  br i1 %tobool520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.end.519
  %268 = load i8*, i8** %read_function_name, align 8
  %269 = load i32, i32* %q, align 4
  %270 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %268, i32 %269, i32 %270, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0))
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %if.end.519
  store i32 5, i32* %retval
  br label %do.end.670

if.else.523:                                      ; preds = %do.body.512
  %271 = load i32, i32* %acode, align 4
  %sub524 = sub nsw i32 5, %271
  %sub525 = sub nsw i32 5, %sub524
  %272 = load i32, i32* %savecode, align 4
  %cmp526 = icmp sgt i32 %sub525, %272
  br i1 %cmp526, label %if.then.528, label %if.end.531

if.then.528:                                      ; preds = %if.else.523
  %273 = load i32, i32* %xpos, align 4
  store i32 %273, i32* %savemove, align 4
  %274 = load i32, i32* %acode, align 4
  %sub529 = sub nsw i32 5, %274
  %sub530 = sub nsw i32 5, %sub529
  store i32 %sub530, i32* %savecode, align 4
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.528, %if.else.523
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.531
  br label %do.end.533

do.end.533:                                       ; preds = %if.end.532
  br label %if.end.534

if.end.534:                                       ; preds = %do.end.533, %if.end.506
  %275 = load i32, i32* @level, align 4
  %cmp535 = icmp sge i32 %275, 10
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.646

land.lhs.true.537:                                ; preds = %if.end.534
  %276 = load i32, i32* @stackp, align 4
  %277 = load i32, i32* @backfill_depth, align 4
  %cmp538 = icmp sle i32 %276, %277
  br i1 %cmp538, label %land.lhs.true.540, label %if.end.646

land.lhs.true.540:                                ; preds = %land.lhs.true.537
  %278 = load i32, i32* @stackp, align 4
  %279 = load i32, i32* @superstring_depth, align 4
  %cmp541 = icmp sle i32 %278, %279
  br i1 %cmp541, label %if.then.545, label %lor.lhs.false.543

lor.lhs.false.543:                                ; preds = %land.lhs.true.540
  %280 = load i32, i32* %atari_possible, align 4
  %tobool544 = icmp ne i32 %280, 0
  br i1 %tobool544, label %if.end.646, label %if.then.545

if.then.545:                                      ; preds = %lor.lhs.false.543, %land.lhs.true.540
  store i32 2, i32* %liberty_cap, align 4
  %281 = load i32, i32* @stackp, align 4
  %282 = load i32, i32* @backfill2_depth, align 4
  %cmp546 = icmp sle i32 %281, %282
  br i1 %cmp546, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.then.545
  store i32 3, i32* %liberty_cap, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.then.548, %if.then.545
  %283 = load i32, i32* %str.addr, align 4
  %arraydecay550 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i32 0
  %284 = load i32, i32* %liberty_cap, align 4
  call void @find_superstring_liberties(i32 %283, i32* %ss_liberties, i32* %arraydecay550, i32 %284)
  %285 = load i32, i32* %ss_liberties, align 4
  %cmp551 = icmp sle i32 %285, 5
  br i1 %cmp551, label %if.then.553, label %if.end.645

if.then.553:                                      ; preds = %if.end.549
  store i32 0, i32* %k, align 4
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.642, %if.then.553
  %286 = load i32, i32* %k, align 4
  %287 = load i32, i32* %ss_liberties, align 4
  %cmp555 = icmp slt i32 %286, %287
  br i1 %cmp555, label %for.body.557, label %for.end.644

for.body.557:                                     ; preds = %for.cond.554
  %288 = load i32, i32* %k, align 4
  %idxprom559 = sext i32 %288 to i64
  %arrayidx560 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom559
  %289 = load i32, i32* %arrayidx560, align 4
  store i32 %289, i32* %apos558, align 4
  %290 = load i32, i32* %apos558, align 4
  %291 = load i32, i32* %str.addr, align 4
  %call561 = call i32 @liberty_of_string(i32 %290, i32 %291)
  %tobool562 = icmp ne i32 %call561, 0
  br i1 %tobool562, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %for.body.557
  br label %for.inc.642

if.end.564:                                       ; preds = %for.body.557
  %292 = load i32, i32* %apos558, align 4
  %293 = load i32, i32* %other, align 4
  %294 = load i32, i32* %str.addr, align 4
  %295 = load i32, i32* %komaster.addr, align 4
  %296 = load i32, i32* %kom_pos.addr, align 4
  %call565 = call i32 @trymove(i32 %292, i32 %293, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 %294, i32 %295, i32 %296)
  %tobool566 = icmp ne i32 %call565, 0
  br i1 %tobool566, label %if.then.567, label %if.end.641

if.then.567:                                      ; preds = %if.end.564
  %297 = load i32, i32* %apos558, align 4
  %call568 = call i32 @countlib(i32 %297)
  %cmp569 = icmp eq i32 %call568, 1
  br i1 %cmp569, label %if.then.571, label %if.else.611

if.then.571:                                      ; preds = %if.then.567
  %298 = load i32, i32* %apos558, align 4
  %call572 = call i32 @findlib(i32 %298, i32 1, i32* %xpos)
  %299 = load i32, i32* %xpos, align 4
  %300 = load i32, i32* %other, align 4
  %call573 = call i32 @approxlib(i32 %299, i32 %300, i32 2, i32* null)
  %cmp574 = icmp sgt i32 %call573, 1
  br i1 %cmp574, label %if.then.576, label %if.else.609

if.then.576:                                      ; preds = %if.then.571
  call void @popgo()
  %301 = load i32, i32* %xpos, align 4
  %302 = load i32, i32* %other, align 4
  %303 = load i32, i32* %str.addr, align 4
  %304 = load i32, i32* %komaster.addr, align 4
  %305 = load i32, i32* %kom_pos.addr, align 4
  %call577 = call i32 @trymove(i32 %301, i32 %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 %303, i32 %304, i32 %305)
  %tobool578 = icmp ne i32 %call577, 0
  br i1 %tobool578, label %if.then.579, label %if.end.608

if.then.579:                                      ; preds = %if.then.576
  %306 = load i32, i32* %str.addr, align 4
  %307 = load i32, i32* %komaster.addr, align 4
  %308 = load i32, i32* %kom_pos.addr, align 4
  %call580 = call i32 @do_find_defense(i32 %306, i32* null, i32 %307, i32 %308)
  store i32 %call580, i32* %dcode, align 4
  %309 = load i32, i32* %dcode, align 4
  %cmp581 = icmp ne i32 %309, 5
  br i1 %cmp581, label %land.lhs.true.583, label %if.else.606

land.lhs.true.583:                                ; preds = %if.then.579
  %310 = load i32, i32* %str.addr, align 4
  %311 = load i32, i32* %komaster.addr, align 4
  %312 = load i32, i32* %kom_pos.addr, align 4
  %call584 = call i32 @do_attack(i32 %310, i32* null, i32 %311, i32 %312)
  %tobool585 = icmp ne i32 %call584, 0
  br i1 %tobool585, label %if.then.586, label %if.else.606

if.then.586:                                      ; preds = %land.lhs.true.583
  call void @popgo()
  br label %do.body.587

do.body.587:                                      ; preds = %if.then.586
  %313 = load i32, i32* %dcode, align 4
  %cmp588 = icmp eq i32 %313, 0
  br i1 %cmp588, label %if.then.590, label %if.else.597

if.then.590:                                      ; preds = %do.body.587
  %314 = load i32*, i32** %move.addr, align 8
  %tobool591 = icmp ne i32* %314, null
  br i1 %tobool591, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %if.then.590
  %315 = load i32, i32* %xpos, align 4
  %316 = load i32*, i32** %move.addr, align 8
  store i32 %315, i32* %316, align 4
  br label %if.end.593

if.end.593:                                       ; preds = %if.then.592, %if.then.590
  %317 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool594 = icmp ne %struct.SGFTree_t* %317, null
  br i1 %tobool594, label %if.then.595, label %if.end.596

if.then.595:                                      ; preds = %if.end.593
  %318 = load i8*, i8** %read_function_name, align 8
  %319 = load i32, i32* %q, align 4
  %320 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %318, i32 %319, i32 %320, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.596

if.end.596:                                       ; preds = %if.then.595, %if.end.593
  store i32 5, i32* %retval
  br label %do.end.670

if.else.597:                                      ; preds = %do.body.587
  %321 = load i32, i32* %dcode, align 4
  %sub598 = sub nsw i32 5, %321
  %322 = load i32, i32* %savecode, align 4
  %cmp599 = icmp sgt i32 %sub598, %322
  br i1 %cmp599, label %if.then.601, label %if.end.603

if.then.601:                                      ; preds = %if.else.597
  %323 = load i32, i32* %xpos, align 4
  store i32 %323, i32* %savemove, align 4
  %324 = load i32, i32* %dcode, align 4
  %sub602 = sub nsw i32 5, %324
  store i32 %sub602, i32* %savecode, align 4
  br label %if.end.603

if.end.603:                                       ; preds = %if.then.601, %if.else.597
  br label %if.end.604

if.end.604:                                       ; preds = %if.end.603
  br label %do.end.605

do.end.605:                                       ; preds = %if.end.604
  br label %if.end.607

if.else.606:                                      ; preds = %land.lhs.true.583, %if.then.579
  call void @popgo()
  br label %if.end.607

if.end.607:                                       ; preds = %if.else.606, %do.end.605
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.then.576
  br label %if.end.610

if.else.609:                                      ; preds = %if.then.571
  call void @popgo()
  br label %if.end.610

if.end.610:                                       ; preds = %if.else.609, %if.end.608
  br label %if.end.640

if.else.611:                                      ; preds = %if.then.567
  %325 = load i32, i32* %str.addr, align 4
  %326 = load i32, i32* %komaster.addr, align 4
  %327 = load i32, i32* %kom_pos.addr, align 4
  %call612 = call i32 @do_find_defense(i32 %325, i32* null, i32 %326, i32 %327)
  store i32 %call612, i32* %dcode, align 4
  %328 = load i32, i32* %dcode, align 4
  %cmp613 = icmp ne i32 %328, 5
  br i1 %cmp613, label %land.lhs.true.615, label %if.else.638

land.lhs.true.615:                                ; preds = %if.else.611
  %329 = load i32, i32* %str.addr, align 4
  %330 = load i32, i32* %komaster.addr, align 4
  %331 = load i32, i32* %kom_pos.addr, align 4
  %call616 = call i32 @do_attack(i32 %329, i32* null, i32 %330, i32 %331)
  %tobool617 = icmp ne i32 %call616, 0
  br i1 %tobool617, label %if.then.618, label %if.else.638

if.then.618:                                      ; preds = %land.lhs.true.615
  call void @popgo()
  br label %do.body.619

do.body.619:                                      ; preds = %if.then.618
  %332 = load i32, i32* %dcode, align 4
  %cmp620 = icmp eq i32 %332, 0
  br i1 %cmp620, label %if.then.622, label %if.else.629

if.then.622:                                      ; preds = %do.body.619
  %333 = load i32*, i32** %move.addr, align 8
  %tobool623 = icmp ne i32* %333, null
  br i1 %tobool623, label %if.then.624, label %if.end.625

if.then.624:                                      ; preds = %if.then.622
  %334 = load i32, i32* %apos558, align 4
  %335 = load i32*, i32** %move.addr, align 8
  store i32 %334, i32* %335, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.624, %if.then.622
  %336 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool626 = icmp ne %struct.SGFTree_t* %336, null
  br i1 %tobool626, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.end.625
  %337 = load i8*, i8** %read_function_name, align 8
  %338 = load i32, i32* %q, align 4
  %339 = load i32, i32* %apos558, align 4
  call void @sgf_trace(i8* %337, i32 %338, i32 %339, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.627, %if.end.625
  store i32 5, i32* %retval
  br label %do.end.670

if.else.629:                                      ; preds = %do.body.619
  %340 = load i32, i32* %dcode, align 4
  %sub630 = sub nsw i32 5, %340
  %341 = load i32, i32* %savecode, align 4
  %cmp631 = icmp sgt i32 %sub630, %341
  br i1 %cmp631, label %if.then.633, label %if.end.635

if.then.633:                                      ; preds = %if.else.629
  %342 = load i32, i32* %apos558, align 4
  store i32 %342, i32* %savemove, align 4
  %343 = load i32, i32* %dcode, align 4
  %sub634 = sub nsw i32 5, %343
  store i32 %sub634, i32* %savecode, align 4
  br label %if.end.635

if.end.635:                                       ; preds = %if.then.633, %if.else.629
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635
  br label %do.end.637

do.end.637:                                       ; preds = %if.end.636
  br label %if.end.639

if.else.638:                                      ; preds = %land.lhs.true.615, %if.else.611
  call void @popgo()
  br label %if.end.639

if.end.639:                                       ; preds = %if.else.638, %do.end.637
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.end.610
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.end.564
  br label %for.inc.642

for.inc.642:                                      ; preds = %if.end.641, %if.then.563
  %344 = load i32, i32* %k, align 4
  %inc643 = add nsw i32 %344, 1
  store i32 %inc643, i32* %k, align 4
  br label %for.cond.554

for.end.644:                                      ; preds = %for.cond.554
  br label %if.end.645

if.end.645:                                       ; preds = %for.end.644, %if.end.549
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %lor.lhs.false.543, %land.lhs.true.537, %if.end.534
  %345 = load i32, i32* %savecode, align 4
  %cmp647 = icmp eq i32 %345, 0
  br i1 %cmp647, label %if.then.649, label %if.end.655

if.then.649:                                      ; preds = %if.end.646
  br label %do.body.650

do.body.650:                                      ; preds = %if.then.649
  %346 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool651 = icmp ne %struct.SGFTree_t* %346, null
  br i1 %tobool651, label %if.then.652, label %if.end.653

if.then.652:                                      ; preds = %do.body.650
  %347 = load i8*, i8** %read_function_name, align 8
  %348 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %347, i32 %348, i32 0, i32 0, i8* null)
  br label %if.end.653

if.end.653:                                       ; preds = %if.then.652, %do.body.650
  store i32 0, i32* %retval
  br label %do.end.670

do.end.654:                                       ; No predecessors!
  br label %if.end.655

if.end.655:                                       ; preds = %do.end.654, %if.end.646
  br label %do.body.656

do.body.656:                                      ; preds = %if.end.655
  %349 = load i32, i32* %savecode, align 4
  %tobool657 = icmp ne i32 %349, 0
  br i1 %tobool657, label %if.then.658, label %if.else.665

if.then.658:                                      ; preds = %do.body.656
  %350 = load i32*, i32** %move.addr, align 8
  %tobool659 = icmp ne i32* %350, null
  br i1 %tobool659, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %if.then.658
  %351 = load i32, i32* %savemove, align 4
  %352 = load i32*, i32** %move.addr, align 8
  store i32 %351, i32* %352, align 4
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.660, %if.then.658
  %353 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool662 = icmp ne %struct.SGFTree_t* %353, null
  br i1 %tobool662, label %if.then.663, label %if.end.664

if.then.663:                                      ; preds = %if.end.661
  %354 = load i8*, i8** %read_function_name, align 8
  %355 = load i32, i32* %q, align 4
  %356 = load i32, i32* %savemove, align 4
  %357 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %354, i32 %355, i32 %356, i32 %357, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.663, %if.end.661
  br label %if.end.669

if.else.665:                                      ; preds = %do.body.656
  %358 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool666 = icmp ne %struct.SGFTree_t* %358, null
  br i1 %tobool666, label %if.then.667, label %if.end.668

if.then.667:                                      ; preds = %if.else.665
  %359 = load i8*, i8** %read_function_name, align 8
  %360 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %359, i32 %360, i32 0, i32 0, i8* null)
  br label %if.end.668

if.end.668:                                       ; preds = %if.then.667, %if.else.665
  br label %if.end.669

if.end.669:                                       ; preds = %if.end.668, %if.end.664
  %361 = load i32, i32* %savecode, align 4
  store i32 %361, i32* %retval
  br label %do.end.670

do.end.670:                                       ; preds = %if.end.34, %if.end.399, %if.end.439, %if.end.466, %if.end.494, %if.end.522, %if.end.596, %if.end.628, %if.end.653, %if.end.669
  %362 = load i32, i32* %retval
  ret i32 %362
}

; Function Attrs: nounwind uwtable
define internal i32 @attack3(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %xpos = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [3 x i32], align 4
  %r = alloca i32, align 4
  %dcode = alloca i32, align 4
  %k = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %hpos = alloca i32, align 4
  %u = alloca i32, align 4
  %apos = alloca i32, align 4
  %u113 = alloca i32, align 4
  %u158 = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  %acode300 = alloca i32, align 4
  %saved_num_moves = alloca i32, align 4
  %libs2 = alloca [2 x i32], align 4
  %u359 = alloca i32, align 4
  %new_komaster414 = alloca i32, align 4
  %new_kom_pos415 = alloca i32, align 4
  %ko_move416 = alloca i32, align 4
  %ss_liberties = alloca i32, align 4
  %ss_libs = alloca [24 x i32], align 16
  %apos497 = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 0, i32* %num, align 4
  %5 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2799, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* @stackp, align 4
  %10 = load i32, i32* @depth, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %11, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  %12 = load i8*, i8** %read_function_name, align 8
  %13 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %12, i32 %13, i32 0, i32 0, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body
  store i32 0, i32* %retval
  br label %do.end.600

do.end:                                           ; No predecessors!
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %if.end
  %14 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %14, i32* %arraydecay, i32 1)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %if.end.15
  %15 = load i32, i32* %r, align 4
  %16 = load i32, i32* %adj, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  call void @break_chain_moves(i32 %18, %struct.reading_moves* %moves)
  %19 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 @findlib(i32 %20, i32 1, i32* %hpos)
  br label %do.body.23

do.body.23:                                       ; preds = %for.body
  store i32 0, i32* %u, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %do.body.23
  %21 = load i32, i32* %u, align 4
  %num25 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %22 = load i32, i32* %num25, align 4
  %cmp26 = icmp slt i32 %21, %22
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.24
  %23 = load i32, i32* %u, align 4
  %idxprom29 = sext i32 %23 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom29
  %24 = load i32, i32* %arrayidx30, align 4
  %25 = load i32, i32* %hpos, align 4
  %cmp31 = icmp eq i32 %24, %25
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.body.28
  %26 = load i32, i32* %u, align 4
  %idxprom34 = sext i32 %26 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom34
  %27 = load i32, i32* %arrayidx35, align 4
  %add = add nsw i32 %27, 0
  store i32 %add, i32* %arrayidx35, align 4
  br label %for.end

if.end.36:                                        ; preds = %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %28 = load i32, i32* %u, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %u, align 4
  br label %for.cond.24

for.end:                                          ; preds = %if.then.33, %for.cond.24
  %29 = load i32, i32* %u, align 4
  %num38 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %30 = load i32, i32* %num38, align 4
  %cmp39 = icmp eq i32 %29, %30
  br i1 %cmp39, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %for.end
  %num41 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %31 = load i32, i32* %num41, align 4
  %cmp42 = icmp slt i32 %31, 50
  br i1 %cmp42, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %hpos, align 4
  %num45 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %33 = load i32, i32* %num45, align 4
  %idxprom46 = sext i32 %33 to i64
  %pos47 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [50 x i32], [50 x i32]* %pos47, i32 0, i64 %idxprom46
  store i32 %32, i32* %arrayidx48, align 4
  %num49 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %34 = load i32, i32* %num49, align 4
  %idxprom50 = sext i32 %34 to i64
  %score51 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [50 x i32], [50 x i32]* %score51, i32 0, i64 %idxprom50
  store i32 0, i32* %arrayidx52, align 4
  %num53 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %35 = load i32, i32* %num53, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, i32* %num53, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.44, %land.lhs.true, %for.end
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %for.inc.57

for.inc.57:                                       ; preds = %do.end.56
  %36 = load i32, i32* %r, align 4
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, i32* %r, align 4
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %37 = load i32, i32* %str.addr, align 4
  call void @double_atari_chain2_moves(i32 %37, %struct.reading_moves* %moves)
  %38 = load i32, i32* %str.addr, align 4
  %arraydecay60 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %call61 = call i32 @findlib(i32 %38, i32 3, i32* %arraydecay60)
  store i32 %call61, i32* %liberties, align 4
  %39 = load i32, i32* %liberties, align 4
  %cmp62 = icmp eq i32 %39, 3
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %for.end.59
  br label %if.end.68

if.else.65:                                       ; preds = %for.end.59
  %40 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %40, 20
  %sub66 = sub nsw i32 %div, 1
  %41 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %41, 20
  %sub67 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 2818, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i32 %sub66, i32 %sub67)
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  store i32 0, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.199, %if.end.68
  %42 = load i32, i32* %k, align 4
  %cmp70 = icmp slt i32 %42, 3
  br i1 %cmp70, label %for.body.72, label %for.end.201

for.body.72:                                      ; preds = %for.cond.69
  %43 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %43 to i64
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i64 %idxprom73
  %44 = load i32, i32* %arrayidx74, align 4
  store i32 %44, i32* %apos, align 4
  %45 = load i32, i32* @stackp, align 4
  %46 = load i32, i32* @backfill_depth, align 4
  %cmp75 = icmp sle i32 %45, %46
  br i1 %cmp75, label %if.then.111, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %for.body.72
  %47 = load i32, i32* @stackp, align 4
  %48 = load i32, i32* @depth, align 4
  %cmp78 = icmp sle i32 %47, %48
  br i1 %cmp78, label %land.lhs.true.80, label %lor.lhs.false.108

land.lhs.true.80:                                 ; preds = %lor.lhs.false.77
  %49 = load i32, i32* %apos, align 4
  %add81 = add nsw i32 %49, 20
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom82
  %50 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %50 to i32
  %51 = load i32, i32* %other, align 4
  %cmp85 = icmp ne i32 %conv84, %51
  br i1 %cmp85, label %land.lhs.true.87, label %lor.lhs.false.108

land.lhs.true.87:                                 ; preds = %land.lhs.true.80
  %52 = load i32, i32* %apos, align 4
  %sub88 = sub nsw i32 %52, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom89
  %53 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %53 to i32
  %54 = load i32, i32* %other, align 4
  %cmp92 = icmp ne i32 %conv91, %54
  br i1 %cmp92, label %land.lhs.true.94, label %lor.lhs.false.108

land.lhs.true.94:                                 ; preds = %land.lhs.true.87
  %55 = load i32, i32* %apos, align 4
  %sub95 = sub nsw i32 %55, 20
  %idxprom96 = sext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom96
  %56 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %56 to i32
  %57 = load i32, i32* %other, align 4
  %cmp99 = icmp ne i32 %conv98, %57
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.108

land.lhs.true.101:                                ; preds = %land.lhs.true.94
  %58 = load i32, i32* %apos, align 4
  %add102 = add nsw i32 %58, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom103
  %59 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %59 to i32
  %60 = load i32, i32* %other, align 4
  %cmp106 = icmp ne i32 %conv105, %60
  br i1 %cmp106, label %if.then.111, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.101, %land.lhs.true.94, %land.lhs.true.87, %land.lhs.true.80, %lor.lhs.false.77
  %61 = load i32, i32* %apos, align 4
  %62 = load i32, i32* %other, align 4
  %call109 = call i32 @is_self_atari(i32 %61, i32 %62)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.153, label %if.then.111

if.then.111:                                      ; preds = %lor.lhs.false.108, %land.lhs.true.101, %for.body.72
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  store i32 0, i32* %u113, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.130, %do.body.112
  %63 = load i32, i32* %u113, align 4
  %num115 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %64 = load i32, i32* %num115, align 4
  %cmp116 = icmp slt i32 %63, %64
  br i1 %cmp116, label %for.body.118, label %for.end.132

for.body.118:                                     ; preds = %for.cond.114
  %65 = load i32, i32* %u113, align 4
  %idxprom119 = sext i32 %65 to i64
  %pos120 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [50 x i32], [50 x i32]* %pos120, i32 0, i64 %idxprom119
  %66 = load i32, i32* %arrayidx121, align 4
  %67 = load i32, i32* %apos, align 4
  %cmp122 = icmp eq i32 %66, %67
  br i1 %cmp122, label %if.then.124, label %if.end.129

if.then.124:                                      ; preds = %for.body.118
  %68 = load i32, i32* %u113, align 4
  %idxprom125 = sext i32 %68 to i64
  %score126 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [50 x i32], [50 x i32]* %score126, i32 0, i64 %idxprom125
  %69 = load i32, i32* %arrayidx127, align 4
  %add128 = add nsw i32 %69, 0
  store i32 %add128, i32* %arrayidx127, align 4
  br label %for.end.132

if.end.129:                                       ; preds = %for.body.118
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %70 = load i32, i32* %u113, align 4
  %inc131 = add nsw i32 %70, 1
  store i32 %inc131, i32* %u113, align 4
  br label %for.cond.114

for.end.132:                                      ; preds = %if.then.124, %for.cond.114
  %71 = load i32, i32* %u113, align 4
  %num133 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %72 = load i32, i32* %num133, align 4
  %cmp134 = icmp eq i32 %71, %72
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.151

land.lhs.true.136:                                ; preds = %for.end.132
  %num137 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %73 = load i32, i32* %num137, align 4
  %cmp138 = icmp slt i32 %73, 50
  br i1 %cmp138, label %if.then.140, label %if.end.151

if.then.140:                                      ; preds = %land.lhs.true.136
  %74 = load i32, i32* %apos, align 4
  %num141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %75 = load i32, i32* %num141, align 4
  %idxprom142 = sext i32 %75 to i64
  %pos143 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [50 x i32], [50 x i32]* %pos143, i32 0, i64 %idxprom142
  store i32 %74, i32* %arrayidx144, align 4
  %num145 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %76 = load i32, i32* %num145, align 4
  %idxprom146 = sext i32 %76 to i64
  %score147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [50 x i32], [50 x i32]* %score147, i32 0, i64 %idxprom146
  store i32 0, i32* %arrayidx148, align 4
  %num149 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %77 = load i32, i32* %num149, align 4
  %inc150 = add nsw i32 %77, 1
  store i32 %inc150, i32* %num149, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.140, %land.lhs.true.136, %for.end.132
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %do.end.152, %lor.lhs.false.108
  %78 = load i32, i32* %str.addr, align 4
  %79 = load i32, i32* %apos, align 4
  %call154 = call i32 @edge_closing_backfill(i32 %78, i32 %79, i32* %xpos)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.198

if.then.156:                                      ; preds = %if.end.153
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  store i32 0, i32* %u158, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.175, %do.body.157
  %80 = load i32, i32* %u158, align 4
  %num160 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %81 = load i32, i32* %num160, align 4
  %cmp161 = icmp slt i32 %80, %81
  br i1 %cmp161, label %for.body.163, label %for.end.177

for.body.163:                                     ; preds = %for.cond.159
  %82 = load i32, i32* %u158, align 4
  %idxprom164 = sext i32 %82 to i64
  %pos165 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [50 x i32], [50 x i32]* %pos165, i32 0, i64 %idxprom164
  %83 = load i32, i32* %arrayidx166, align 4
  %84 = load i32, i32* %xpos, align 4
  %cmp167 = icmp eq i32 %83, %84
  br i1 %cmp167, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %for.body.163
  %85 = load i32, i32* %u158, align 4
  %idxprom170 = sext i32 %85 to i64
  %score171 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [50 x i32], [50 x i32]* %score171, i32 0, i64 %idxprom170
  %86 = load i32, i32* %arrayidx172, align 4
  %add173 = add nsw i32 %86, 0
  store i32 %add173, i32* %arrayidx172, align 4
  br label %for.end.177

if.end.174:                                       ; preds = %for.body.163
  br label %for.inc.175

for.inc.175:                                      ; preds = %if.end.174
  %87 = load i32, i32* %u158, align 4
  %inc176 = add nsw i32 %87, 1
  store i32 %inc176, i32* %u158, align 4
  br label %for.cond.159

for.end.177:                                      ; preds = %if.then.169, %for.cond.159
  %88 = load i32, i32* %u158, align 4
  %num178 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %89 = load i32, i32* %num178, align 4
  %cmp179 = icmp eq i32 %88, %89
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.196

land.lhs.true.181:                                ; preds = %for.end.177
  %num182 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %90 = load i32, i32* %num182, align 4
  %cmp183 = icmp slt i32 %90, 50
  br i1 %cmp183, label %if.then.185, label %if.end.196

if.then.185:                                      ; preds = %land.lhs.true.181
  %91 = load i32, i32* %xpos, align 4
  %num186 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %92 = load i32, i32* %num186, align 4
  %idxprom187 = sext i32 %92 to i64
  %pos188 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [50 x i32], [50 x i32]* %pos188, i32 0, i64 %idxprom187
  store i32 %91, i32* %arrayidx189, align 4
  %num190 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %93 = load i32, i32* %num190, align 4
  %idxprom191 = sext i32 %93 to i64
  %score192 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [50 x i32], [50 x i32]* %score192, i32 0, i64 %idxprom191
  store i32 0, i32* %arrayidx193, align 4
  %num194 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %94 = load i32, i32* %num194, align 4
  %inc195 = add nsw i32 %94, 1
  store i32 %inc195, i32* %num194, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.185, %land.lhs.true.181, %for.end.177
  br label %do.end.197

do.end.197:                                       ; preds = %if.end.196
  br label %if.end.198

if.end.198:                                       ; preds = %do.end.197, %if.end.153
  %95 = load i32, i32* %str.addr, align 4
  %96 = load i32, i32* %apos, align 4
  call void @edge_block_moves(i32 %95, i32 %96, %struct.reading_moves* %moves)
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %97 = load i32, i32* %k, align 4
  %inc200 = add nsw i32 %97, 1
  store i32 %inc200, i32* %k, align 4
  br label %for.cond.69

for.end.201:                                      ; preds = %for.cond.69
  %98 = load i32, i32* %str.addr, align 4
  %arraydecay202 = getelementptr inbounds [3 x i32], [3 x i32]* %libs, i32 0, i32 0
  %99 = load i32, i32* %liberties, align 4
  %100 = load i32, i32* %other, align 4
  call void @propose_edge_moves(i32 %98, i32* %arraydecay202, i32 %99, %struct.reading_moves* %moves, i32 %100)
  %101 = load i32, i32* %str.addr, align 4
  %102 = load i32, i32* %other, align 4
  %103 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %101, %struct.reading_moves* %moves, i32 %102, i8* %103, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.203

for.cond.203:                                     ; preds = %for.inc.267, %for.end.201
  %104 = load i32, i32* %k, align 4
  %num204 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %105 = load i32, i32* %num204, align 4
  %cmp205 = icmp slt i32 %104, %105
  br i1 %cmp205, label %for.body.207, label %for.end.269

for.body.207:                                     ; preds = %for.cond.203
  %106 = load i32, i32* @stackp, align 4
  %107 = load i32, i32* @branch_depth, align 4
  %cmp208 = icmp sge i32 %106, %107
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.214

land.lhs.true.210:                                ; preds = %for.body.207
  %108 = load i32, i32* %k, align 4
  %cmp211 = icmp sgt i32 %108, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %land.lhs.true.210
  br label %for.end.269

if.end.214:                                       ; preds = %land.lhs.true.210, %for.body.207
  %109 = load i32, i32* %k, align 4
  %idxprom215 = sext i32 %109 to i64
  %pos216 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [50 x i32], [50 x i32]* %pos216, i32 0, i64 %idxprom215
  %110 = load i32, i32* %arrayidx217, align 4
  store i32 %110, i32* %xpos, align 4
  %111 = load i32, i32* %xpos, align 4
  %112 = load i32, i32* %other, align 4
  %113 = load i32, i32* %str.addr, align 4
  %114 = load i32, i32* %komaster.addr, align 4
  %115 = load i32, i32* %kom_pos.addr, align 4
  %116 = load i32, i32* @stackp, align 4
  %117 = load i32, i32* @ko_depth, align 4
  %cmp218 = icmp sle i32 %116, %117
  br i1 %cmp218, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.214
  %118 = load i32, i32* %savecode, align 4
  %cmp220 = icmp eq i32 %118, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.214
  %119 = phi i1 [ false, %if.end.214 ], [ %cmp220, %land.rhs ]
  %land.ext = zext i1 %119 to i32
  %call222 = call i32 @komaster_trymove(i32 %111, i32 %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i32 %113, i32 %114, i32 %115, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %land.ext)
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.then.224, label %if.end.266

if.then.224:                                      ; preds = %land.end
  %120 = load i32, i32* %ko_move, align 4
  %tobool225 = icmp ne i32 %120, 0
  br i1 %tobool225, label %if.else.255, label %if.then.226

if.then.226:                                      ; preds = %if.then.224
  %121 = load i32, i32* %str.addr, align 4
  %122 = load i32, i32* %new_komaster, align 4
  %123 = load i32, i32* %new_kom_pos, align 4
  %call227 = call i32 @do_find_defense(i32 %121, i32* null, i32 %122, i32 %123)
  store i32 %call227, i32* %dcode, align 4
  %124 = load i32, i32* %dcode, align 4
  %cmp228 = icmp ne i32 %124, 5
  br i1 %cmp228, label %land.lhs.true.230, label %if.else.253

land.lhs.true.230:                                ; preds = %if.then.226
  %125 = load i32, i32* %str.addr, align 4
  %126 = load i32, i32* %new_komaster, align 4
  %127 = load i32, i32* %new_kom_pos, align 4
  %call231 = call i32 @do_attack(i32 %125, i32* null, i32 %126, i32 %127)
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.then.233, label %if.else.253

if.then.233:                                      ; preds = %land.lhs.true.230
  call void @popgo()
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.233
  %128 = load i32, i32* %dcode, align 4
  %cmp235 = icmp eq i32 %128, 0
  br i1 %cmp235, label %if.then.237, label %if.else.244

if.then.237:                                      ; preds = %do.body.234
  %129 = load i32*, i32** %move.addr, align 8
  %tobool238 = icmp ne i32* %129, null
  br i1 %tobool238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %if.then.237
  %130 = load i32, i32* %xpos, align 4
  %131 = load i32*, i32** %move.addr, align 8
  store i32 %130, i32* %131, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.239, %if.then.237
  %132 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool241 = icmp ne %struct.SGFTree_t* %132, null
  br i1 %tobool241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %if.end.240
  %133 = load i8*, i8** %read_function_name, align 8
  %134 = load i32, i32* %q, align 4
  %135 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %133, i32 %134, i32 %135, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.242, %if.end.240
  store i32 5, i32* %retval
  br label %do.end.600

if.else.244:                                      ; preds = %do.body.234
  %136 = load i32, i32* %dcode, align 4
  %sub245 = sub nsw i32 5, %136
  %137 = load i32, i32* %savecode, align 4
  %cmp246 = icmp sgt i32 %sub245, %137
  br i1 %cmp246, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %if.else.244
  %138 = load i32, i32* %xpos, align 4
  store i32 %138, i32* %savemove, align 4
  %139 = load i32, i32* %dcode, align 4
  %sub249 = sub nsw i32 5, %139
  store i32 %sub249, i32* %savecode, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %if.else.244
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250
  br label %do.end.252

do.end.252:                                       ; preds = %if.end.251
  br label %if.end.254

if.else.253:                                      ; preds = %land.lhs.true.230, %if.then.226
  call void @popgo()
  br label %if.end.254

if.end.254:                                       ; preds = %if.else.253, %do.end.252
  br label %if.end.265

if.else.255:                                      ; preds = %if.then.224
  %140 = load i32, i32* %str.addr, align 4
  %141 = load i32, i32* %new_komaster, align 4
  %142 = load i32, i32* %new_kom_pos, align 4
  %call256 = call i32 @do_find_defense(i32 %140, i32* null, i32 %141, i32 %142)
  %cmp257 = icmp ne i32 %call256, 5
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.264

land.lhs.true.259:                                ; preds = %if.else.255
  %143 = load i32, i32* %str.addr, align 4
  %144 = load i32, i32* %new_komaster, align 4
  %145 = load i32, i32* %new_kom_pos, align 4
  %call260 = call i32 @do_attack(i32 %143, i32* null, i32 %144, i32 %145)
  %cmp261 = icmp ne i32 %call260, 0
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %land.lhs.true.259
  %146 = load i32, i32* %xpos, align 4
  store i32 %146, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %land.lhs.true.259, %if.else.255
  call void @popgo()
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.254
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %land.end
  br label %for.inc.267

for.inc.267:                                      ; preds = %if.end.266
  %147 = load i32, i32* %k, align 4
  %inc268 = add nsw i32 %147, 1
  store i32 %inc268, i32* %k, align 4
  br label %for.cond.203

for.end.269:                                      ; preds = %if.then.213, %for.cond.203
  %148 = load i32, i32* @stackp, align 4
  %149 = load i32, i32* @backfill_depth, align 4
  %cmp270 = icmp sle i32 %148, %149
  br i1 %cmp270, label %if.then.272, label %if.end.296

if.then.272:                                      ; preds = %for.end.269
  %150 = load i32, i32* %str.addr, align 4
  %151 = load i32, i32* %komaster.addr, align 4
  %152 = load i32, i32* %kom_pos.addr, align 4
  %call273 = call i32 @find_cap(i32 %150, i32* %xpos, i32 %151, i32 %152)
  store i32 %call273, i32* %acode, align 4
  br label %do.body.274

do.body.274:                                      ; preds = %if.then.272
  %153 = load i32, i32* %acode, align 4
  %sub275 = sub nsw i32 5, %153
  %cmp276 = icmp eq i32 %sub275, 0
  br i1 %cmp276, label %if.then.278, label %if.else.285

if.then.278:                                      ; preds = %do.body.274
  %154 = load i32*, i32** %move.addr, align 8
  %tobool279 = icmp ne i32* %154, null
  br i1 %tobool279, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.then.278
  %155 = load i32, i32* %xpos, align 4
  %156 = load i32*, i32** %move.addr, align 8
  store i32 %155, i32* %156, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %if.then.278
  %157 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool282 = icmp ne %struct.SGFTree_t* %157, null
  br i1 %tobool282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.281
  %158 = load i8*, i8** %read_function_name, align 8
  %159 = load i32, i32* %q, align 4
  %160 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %158, i32 %159, i32 %160, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0))
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.end.281
  store i32 5, i32* %retval
  br label %do.end.600

if.else.285:                                      ; preds = %do.body.274
  %161 = load i32, i32* %acode, align 4
  %sub286 = sub nsw i32 5, %161
  %sub287 = sub nsw i32 5, %sub286
  %162 = load i32, i32* %savecode, align 4
  %cmp288 = icmp sgt i32 %sub287, %162
  br i1 %cmp288, label %if.then.290, label %if.end.293

if.then.290:                                      ; preds = %if.else.285
  %163 = load i32, i32* %xpos, align 4
  store i32 %163, i32* %savemove, align 4
  %164 = load i32, i32* %acode, align 4
  %sub291 = sub nsw i32 5, %164
  %sub292 = sub nsw i32 5, %sub291
  store i32 %sub292, i32* %savecode, align 4
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.290, %if.else.285
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293
  br label %do.end.295

do.end.295:                                       ; preds = %if.end.294
  br label %if.end.296

if.end.296:                                       ; preds = %do.end.295, %for.end.269
  %165 = load i32, i32* @stackp, align 4
  %166 = load i32, i32* @fourlib_depth, align 4
  %cmp297 = icmp sle i32 %165, %166
  br i1 %cmp297, label %if.then.299, label %if.end.324

if.then.299:                                      ; preds = %if.end.296
  %167 = load i32, i32* %str.addr, align 4
  %168 = load i32, i32* %komaster.addr, align 4
  %169 = load i32, i32* %kom_pos.addr, align 4
  %call301 = call i32 @draw_back(i32 %167, i32* %xpos, i32 %168, i32 %169)
  store i32 %call301, i32* %acode300, align 4
  br label %do.body.302

do.body.302:                                      ; preds = %if.then.299
  %170 = load i32, i32* %acode300, align 4
  %sub303 = sub nsw i32 5, %170
  %cmp304 = icmp eq i32 %sub303, 0
  br i1 %cmp304, label %if.then.306, label %if.else.313

if.then.306:                                      ; preds = %do.body.302
  %171 = load i32*, i32** %move.addr, align 8
  %tobool307 = icmp ne i32* %171, null
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.then.306
  %172 = load i32, i32* %xpos, align 4
  %173 = load i32*, i32** %move.addr, align 8
  store i32 %172, i32* %173, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %if.then.306
  %174 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool310 = icmp ne %struct.SGFTree_t* %174, null
  br i1 %tobool310, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %if.end.309
  %175 = load i8*, i8** %read_function_name, align 8
  %176 = load i32, i32* %q, align 4
  %177 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %175, i32 %176, i32 %177, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0))
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %if.end.309
  store i32 5, i32* %retval
  br label %do.end.600

if.else.313:                                      ; preds = %do.body.302
  %178 = load i32, i32* %acode300, align 4
  %sub314 = sub nsw i32 5, %178
  %sub315 = sub nsw i32 5, %sub314
  %179 = load i32, i32* %savecode, align 4
  %cmp316 = icmp sgt i32 %sub315, %179
  br i1 %cmp316, label %if.then.318, label %if.end.321

if.then.318:                                      ; preds = %if.else.313
  %180 = load i32, i32* %xpos, align 4
  store i32 %180, i32* %savemove, align 4
  %181 = load i32, i32* %acode300, align 4
  %sub319 = sub nsw i32 5, %181
  %sub320 = sub nsw i32 5, %sub319
  store i32 %sub320, i32* %savecode, align 4
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.318, %if.else.313
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321
  br label %do.end.323

do.end.323:                                       ; preds = %if.end.322
  br label %if.end.324

if.end.324:                                       ; preds = %do.end.323, %if.end.296
  %182 = load i32, i32* @stackp, align 4
  %183 = load i32, i32* @backfill2_depth, align 4
  %cmp325 = icmp sle i32 %182, %183
  br i1 %cmp325, label %if.then.327, label %if.end.482

if.then.327:                                      ; preds = %if.end.324
  %num328 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %184 = load i32, i32* %num328, align 4
  store i32 %184, i32* %saved_num_moves, align 4
  %185 = load i32, i32* %str.addr, align 4
  %arraydecay329 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call330 = call i32 @chainlinks2(i32 %185, i32* %arraydecay329, i32 2)
  store i32 %call330, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.406, %if.then.327
  %186 = load i32, i32* %r, align 4
  %187 = load i32, i32* %adj, align 4
  %cmp332 = icmp slt i32 %186, %187
  br i1 %cmp332, label %for.body.334, label %for.end.408

for.body.334:                                     ; preds = %for.cond.331
  %188 = load i32, i32* %r, align 4
  %idxprom335 = sext i32 %188 to i64
  %arrayidx336 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom335
  %189 = load i32, i32* %arrayidx336, align 4
  %arraydecay337 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i32 0
  %call338 = call i32 @findlib(i32 %189, i32 2, i32* %arraydecay337)
  %arrayidx339 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 0
  %190 = load i32, i32* %arrayidx339, align 4
  %191 = load i32, i32* %other, align 4
  %call340 = call i32 @approxlib(i32 %190, i32 %191, i32 4, i32* null)
  %cmp341 = icmp sgt i32 %call340, 3
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.349

land.lhs.true.343:                                ; preds = %for.body.334
  %arrayidx344 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 1
  %192 = load i32, i32* %arrayidx344, align 4
  %193 = load i32, i32* %other, align 4
  %call345 = call i32 @approxlib(i32 %192, i32 %193, i32 4, i32* null)
  %cmp346 = icmp sgt i32 %call345, 3
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %land.lhs.true.343
  br label %for.inc.406

if.end.349:                                       ; preds = %land.lhs.true.343, %for.body.334
  %194 = load i32, i32* %r, align 4
  %idxprom350 = sext i32 %194 to i64
  %arrayidx351 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom350
  %195 = load i32, i32* %arrayidx351, align 4
  call void @break_chain_moves(i32 %195, %struct.reading_moves* %moves)
  %196 = load i32, i32* %r, align 4
  %idxprom352 = sext i32 %196 to i64
  %arrayidx353 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom352
  %197 = load i32, i32* %arrayidx353, align 4
  call void @break_chain2_moves(i32 %197, %struct.reading_moves* %moves, i32 1)
  store i32 0, i32* %k, align 4
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.403, %if.end.349
  %198 = load i32, i32* %k, align 4
  %cmp355 = icmp slt i32 %198, 2
  br i1 %cmp355, label %for.body.357, label %for.end.405

for.body.357:                                     ; preds = %for.cond.354
  br label %do.body.358

do.body.358:                                      ; preds = %for.body.357
  store i32 0, i32* %u359, align 4
  br label %for.cond.360

for.cond.360:                                     ; preds = %for.inc.378, %do.body.358
  %199 = load i32, i32* %u359, align 4
  %num361 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %200 = load i32, i32* %num361, align 4
  %cmp362 = icmp slt i32 %199, %200
  br i1 %cmp362, label %for.body.364, label %for.end.380

for.body.364:                                     ; preds = %for.cond.360
  %201 = load i32, i32* %u359, align 4
  %idxprom365 = sext i32 %201 to i64
  %pos366 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx367 = getelementptr inbounds [50 x i32], [50 x i32]* %pos366, i32 0, i64 %idxprom365
  %202 = load i32, i32* %arrayidx367, align 4
  %203 = load i32, i32* %k, align 4
  %idxprom368 = sext i32 %203 to i64
  %arrayidx369 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 %idxprom368
  %204 = load i32, i32* %arrayidx369, align 4
  %cmp370 = icmp eq i32 %202, %204
  br i1 %cmp370, label %if.then.372, label %if.end.377

if.then.372:                                      ; preds = %for.body.364
  %205 = load i32, i32* %u359, align 4
  %idxprom373 = sext i32 %205 to i64
  %score374 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [50 x i32], [50 x i32]* %score374, i32 0, i64 %idxprom373
  %206 = load i32, i32* %arrayidx375, align 4
  %add376 = add nsw i32 %206, 0
  store i32 %add376, i32* %arrayidx375, align 4
  br label %for.end.380

if.end.377:                                       ; preds = %for.body.364
  br label %for.inc.378

for.inc.378:                                      ; preds = %if.end.377
  %207 = load i32, i32* %u359, align 4
  %inc379 = add nsw i32 %207, 1
  store i32 %inc379, i32* %u359, align 4
  br label %for.cond.360

for.end.380:                                      ; preds = %if.then.372, %for.cond.360
  %208 = load i32, i32* %u359, align 4
  %num381 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %209 = load i32, i32* %num381, align 4
  %cmp382 = icmp eq i32 %208, %209
  br i1 %cmp382, label %land.lhs.true.384, label %if.end.401

land.lhs.true.384:                                ; preds = %for.end.380
  %num385 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %210 = load i32, i32* %num385, align 4
  %cmp386 = icmp slt i32 %210, 50
  br i1 %cmp386, label %if.then.388, label %if.end.401

if.then.388:                                      ; preds = %land.lhs.true.384
  %211 = load i32, i32* %k, align 4
  %idxprom389 = sext i32 %211 to i64
  %arrayidx390 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 %idxprom389
  %212 = load i32, i32* %arrayidx390, align 4
  %num391 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %213 = load i32, i32* %num391, align 4
  %idxprom392 = sext i32 %213 to i64
  %pos393 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx394 = getelementptr inbounds [50 x i32], [50 x i32]* %pos393, i32 0, i64 %idxprom392
  store i32 %212, i32* %arrayidx394, align 4
  %num395 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %214 = load i32, i32* %num395, align 4
  %idxprom396 = sext i32 %214 to i64
  %score397 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [50 x i32], [50 x i32]* %score397, i32 0, i64 %idxprom396
  store i32 0, i32* %arrayidx398, align 4
  %num399 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %215 = load i32, i32* %num399, align 4
  %inc400 = add nsw i32 %215, 1
  store i32 %inc400, i32* %num399, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.388, %land.lhs.true.384, %for.end.380
  br label %do.end.402

do.end.402:                                       ; preds = %if.end.401
  br label %for.inc.403

for.inc.403:                                      ; preds = %do.end.402
  %216 = load i32, i32* %k, align 4
  %inc404 = add nsw i32 %216, 1
  store i32 %inc404, i32* %k, align 4
  br label %for.cond.354

for.end.405:                                      ; preds = %for.cond.354
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.end.405, %if.then.348
  %217 = load i32, i32* %r, align 4
  %inc407 = add nsw i32 %217, 1
  store i32 %inc407, i32* %r, align 4
  br label %for.cond.331

for.end.408:                                      ; preds = %for.cond.331
  %218 = load i32, i32* %str.addr, align 4
  %219 = load i32, i32* %other, align 4
  %220 = load i8*, i8** %read_function_name, align 8
  %221 = load i32, i32* %saved_num_moves, align 4
  call void @order_moves(i32 %218, %struct.reading_moves* %moves, i32 %219, i8* %220, i32 %221)
  %222 = load i32, i32* %saved_num_moves, align 4
  store i32 %222, i32* %k, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.479, %for.end.408
  %223 = load i32, i32* %k, align 4
  %num410 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %224 = load i32, i32* %num410, align 4
  %cmp411 = icmp slt i32 %223, %224
  br i1 %cmp411, label %for.body.413, label %for.end.481

for.body.413:                                     ; preds = %for.cond.409
  %225 = load i32, i32* @stackp, align 4
  %226 = load i32, i32* @branch_depth, align 4
  %cmp417 = icmp sge i32 %225, %226
  br i1 %cmp417, label %land.lhs.true.419, label %if.end.423

land.lhs.true.419:                                ; preds = %for.body.413
  %227 = load i32, i32* %k, align 4
  %cmp420 = icmp sgt i32 %227, 0
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %land.lhs.true.419
  br label %for.end.481

if.end.423:                                       ; preds = %land.lhs.true.419, %for.body.413
  %228 = load i32, i32* %k, align 4
  %idxprom424 = sext i32 %228 to i64
  %pos425 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [50 x i32], [50 x i32]* %pos425, i32 0, i64 %idxprom424
  %229 = load i32, i32* %arrayidx426, align 4
  store i32 %229, i32* %xpos, align 4
  %230 = load i32, i32* %xpos, align 4
  %231 = load i32, i32* %other, align 4
  %232 = load i32, i32* %str.addr, align 4
  %233 = load i32, i32* %komaster.addr, align 4
  %234 = load i32, i32* %kom_pos.addr, align 4
  %235 = load i32, i32* @stackp, align 4
  %236 = load i32, i32* @ko_depth, align 4
  %cmp427 = icmp sle i32 %235, %236
  br i1 %cmp427, label %land.rhs.429, label %land.end.432

land.rhs.429:                                     ; preds = %if.end.423
  %237 = load i32, i32* %savecode, align 4
  %cmp430 = icmp eq i32 %237, 0
  br label %land.end.432

land.end.432:                                     ; preds = %land.rhs.429, %if.end.423
  %238 = phi i1 [ false, %if.end.423 ], [ %cmp430, %land.rhs.429 ]
  %land.ext433 = zext i1 %238 to i32
  %call434 = call i32 @komaster_trymove(i32 %230, i32 %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 %232, i32 %233, i32 %234, i32* %new_komaster414, i32* %new_kom_pos415, i32* %ko_move416, i32 %land.ext433)
  %tobool435 = icmp ne i32 %call434, 0
  br i1 %tobool435, label %if.then.436, label %if.end.478

if.then.436:                                      ; preds = %land.end.432
  %239 = load i32, i32* %ko_move416, align 4
  %tobool437 = icmp ne i32 %239, 0
  br i1 %tobool437, label %if.else.467, label %if.then.438

if.then.438:                                      ; preds = %if.then.436
  %240 = load i32, i32* %str.addr, align 4
  %241 = load i32, i32* %new_komaster414, align 4
  %242 = load i32, i32* %new_kom_pos415, align 4
  %call439 = call i32 @do_find_defense(i32 %240, i32* null, i32 %241, i32 %242)
  store i32 %call439, i32* %dcode, align 4
  %243 = load i32, i32* %dcode, align 4
  %cmp440 = icmp ne i32 %243, 5
  br i1 %cmp440, label %land.lhs.true.442, label %if.else.465

land.lhs.true.442:                                ; preds = %if.then.438
  %244 = load i32, i32* %str.addr, align 4
  %245 = load i32, i32* %new_komaster414, align 4
  %246 = load i32, i32* %new_kom_pos415, align 4
  %call443 = call i32 @do_attack(i32 %244, i32* null, i32 %245, i32 %246)
  %tobool444 = icmp ne i32 %call443, 0
  br i1 %tobool444, label %if.then.445, label %if.else.465

if.then.445:                                      ; preds = %land.lhs.true.442
  call void @popgo()
  br label %do.body.446

do.body.446:                                      ; preds = %if.then.445
  %247 = load i32, i32* %dcode, align 4
  %cmp447 = icmp eq i32 %247, 0
  br i1 %cmp447, label %if.then.449, label %if.else.456

if.then.449:                                      ; preds = %do.body.446
  %248 = load i32*, i32** %move.addr, align 8
  %tobool450 = icmp ne i32* %248, null
  br i1 %tobool450, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %if.then.449
  %249 = load i32, i32* %xpos, align 4
  %250 = load i32*, i32** %move.addr, align 8
  store i32 %249, i32* %250, align 4
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.451, %if.then.449
  %251 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool453 = icmp ne %struct.SGFTree_t* %251, null
  br i1 %tobool453, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.end.452
  %252 = load i8*, i8** %read_function_name, align 8
  %253 = load i32, i32* %q, align 4
  %254 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %252, i32 %253, i32 %254, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %if.end.452
  store i32 5, i32* %retval
  br label %do.end.600

if.else.456:                                      ; preds = %do.body.446
  %255 = load i32, i32* %dcode, align 4
  %sub457 = sub nsw i32 5, %255
  %256 = load i32, i32* %savecode, align 4
  %cmp458 = icmp sgt i32 %sub457, %256
  br i1 %cmp458, label %if.then.460, label %if.end.462

if.then.460:                                      ; preds = %if.else.456
  %257 = load i32, i32* %xpos, align 4
  store i32 %257, i32* %savemove, align 4
  %258 = load i32, i32* %dcode, align 4
  %sub461 = sub nsw i32 5, %258
  store i32 %sub461, i32* %savecode, align 4
  br label %if.end.462

if.end.462:                                       ; preds = %if.then.460, %if.else.456
  br label %if.end.463

if.end.463:                                       ; preds = %if.end.462
  br label %do.end.464

do.end.464:                                       ; preds = %if.end.463
  br label %if.end.466

if.else.465:                                      ; preds = %land.lhs.true.442, %if.then.438
  call void @popgo()
  br label %if.end.466

if.end.466:                                       ; preds = %if.else.465, %do.end.464
  br label %if.end.477

if.else.467:                                      ; preds = %if.then.436
  %259 = load i32, i32* %str.addr, align 4
  %260 = load i32, i32* %new_komaster414, align 4
  %261 = load i32, i32* %new_kom_pos415, align 4
  %call468 = call i32 @do_find_defense(i32 %259, i32* null, i32 %260, i32 %261)
  %cmp469 = icmp ne i32 %call468, 5
  br i1 %cmp469, label %land.lhs.true.471, label %if.end.476

land.lhs.true.471:                                ; preds = %if.else.467
  %262 = load i32, i32* %str.addr, align 4
  %263 = load i32, i32* %new_komaster414, align 4
  %264 = load i32, i32* %new_kom_pos415, align 4
  %call472 = call i32 @do_attack(i32 %262, i32* null, i32 %263, i32 %264)
  %cmp473 = icmp ne i32 %call472, 0
  br i1 %cmp473, label %if.then.475, label %if.end.476

if.then.475:                                      ; preds = %land.lhs.true.471
  %265 = load i32, i32* %xpos, align 4
  store i32 %265, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.476

if.end.476:                                       ; preds = %if.then.475, %land.lhs.true.471, %if.else.467
  call void @popgo()
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.end.466
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %land.end.432
  br label %for.inc.479

for.inc.479:                                      ; preds = %if.end.478
  %266 = load i32, i32* %k, align 4
  %inc480 = add nsw i32 %266, 1
  store i32 %inc480, i32* %k, align 4
  br label %for.cond.409

for.end.481:                                      ; preds = %if.then.422, %for.cond.409
  br label %if.end.482

if.end.482:                                       ; preds = %for.end.481, %if.end.324
  %267 = load i32, i32* @level, align 4
  %cmp483 = icmp sge i32 %267, 10
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.585

land.lhs.true.485:                                ; preds = %if.end.482
  %268 = load i32, i32* @stackp, align 4
  %269 = load i32, i32* @backfill2_depth, align 4
  %cmp486 = icmp sle i32 %268, %269
  br i1 %cmp486, label %if.then.488, label %if.end.585

if.then.488:                                      ; preds = %land.lhs.true.485
  %270 = load i32, i32* %str.addr, align 4
  %arraydecay489 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i32 0
  call void @find_superstring_liberties(i32 %270, i32* %ss_liberties, i32* %arraydecay489, i32 3)
  %271 = load i32, i32* %ss_liberties, align 4
  %cmp490 = icmp sle i32 %271, 5
  br i1 %cmp490, label %if.then.492, label %if.end.584

if.then.492:                                      ; preds = %if.then.488
  store i32 0, i32* %k, align 4
  br label %for.cond.493

for.cond.493:                                     ; preds = %for.inc.581, %if.then.492
  %272 = load i32, i32* %k, align 4
  %273 = load i32, i32* %ss_liberties, align 4
  %cmp494 = icmp slt i32 %272, %273
  br i1 %cmp494, label %for.body.496, label %for.end.583

for.body.496:                                     ; preds = %for.cond.493
  %274 = load i32, i32* %k, align 4
  %idxprom498 = sext i32 %274 to i64
  %arrayidx499 = getelementptr inbounds [24 x i32], [24 x i32]* %ss_libs, i32 0, i64 %idxprom498
  %275 = load i32, i32* %arrayidx499, align 4
  store i32 %275, i32* %apos497, align 4
  %276 = load i32, i32* %apos497, align 4
  %277 = load i32, i32* %str.addr, align 4
  %call500 = call i32 @liberty_of_string(i32 %276, i32 %277)
  %tobool501 = icmp ne i32 %call500, 0
  br i1 %tobool501, label %if.then.502, label %if.end.503

if.then.502:                                      ; preds = %for.body.496
  br label %for.inc.581

if.end.503:                                       ; preds = %for.body.496
  %278 = load i32, i32* %apos497, align 4
  %279 = load i32, i32* %other, align 4
  %280 = load i32, i32* %str.addr, align 4
  %281 = load i32, i32* %komaster.addr, align 4
  %282 = load i32, i32* %kom_pos.addr, align 4
  %call504 = call i32 @trymove(i32 %278, i32 %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i32 %280, i32 %281, i32 %282)
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.then.506, label %if.end.580

if.then.506:                                      ; preds = %if.end.503
  %283 = load i32, i32* %apos497, align 4
  %call507 = call i32 @countlib(i32 %283)
  %cmp508 = icmp eq i32 %call507, 1
  br i1 %cmp508, label %if.then.510, label %if.else.550

if.then.510:                                      ; preds = %if.then.506
  %284 = load i32, i32* %apos497, align 4
  %call511 = call i32 @findlib(i32 %284, i32 1, i32* %xpos)
  %285 = load i32, i32* %xpos, align 4
  %286 = load i32, i32* %other, align 4
  %call512 = call i32 @approxlib(i32 %285, i32 %286, i32 2, i32* null)
  %cmp513 = icmp sgt i32 %call512, 1
  br i1 %cmp513, label %if.then.515, label %if.else.548

if.then.515:                                      ; preds = %if.then.510
  call void @popgo()
  %287 = load i32, i32* %xpos, align 4
  %288 = load i32, i32* %other, align 4
  %289 = load i32, i32* %str.addr, align 4
  %290 = load i32, i32* %komaster.addr, align 4
  %291 = load i32, i32* %kom_pos.addr, align 4
  %call516 = call i32 @trymove(i32 %287, i32 %288, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 %289, i32 %290, i32 %291)
  %tobool517 = icmp ne i32 %call516, 0
  br i1 %tobool517, label %if.then.518, label %if.end.547

if.then.518:                                      ; preds = %if.then.515
  %292 = load i32, i32* %str.addr, align 4
  %293 = load i32, i32* %komaster.addr, align 4
  %294 = load i32, i32* %kom_pos.addr, align 4
  %call519 = call i32 @do_find_defense(i32 %292, i32* null, i32 %293, i32 %294)
  store i32 %call519, i32* %dcode, align 4
  %295 = load i32, i32* %dcode, align 4
  %cmp520 = icmp ne i32 %295, 5
  br i1 %cmp520, label %land.lhs.true.522, label %if.else.545

land.lhs.true.522:                                ; preds = %if.then.518
  %296 = load i32, i32* %str.addr, align 4
  %297 = load i32, i32* %komaster.addr, align 4
  %298 = load i32, i32* %kom_pos.addr, align 4
  %call523 = call i32 @do_attack(i32 %296, i32* null, i32 %297, i32 %298)
  %tobool524 = icmp ne i32 %call523, 0
  br i1 %tobool524, label %if.then.525, label %if.else.545

if.then.525:                                      ; preds = %land.lhs.true.522
  call void @popgo()
  br label %do.body.526

do.body.526:                                      ; preds = %if.then.525
  %299 = load i32, i32* %dcode, align 4
  %cmp527 = icmp eq i32 %299, 0
  br i1 %cmp527, label %if.then.529, label %if.else.536

if.then.529:                                      ; preds = %do.body.526
  %300 = load i32*, i32** %move.addr, align 8
  %tobool530 = icmp ne i32* %300, null
  br i1 %tobool530, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %if.then.529
  %301 = load i32, i32* %xpos, align 4
  %302 = load i32*, i32** %move.addr, align 8
  store i32 %301, i32* %302, align 4
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.531, %if.then.529
  %303 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool533 = icmp ne %struct.SGFTree_t* %303, null
  br i1 %tobool533, label %if.then.534, label %if.end.535

if.then.534:                                      ; preds = %if.end.532
  %304 = load i8*, i8** %read_function_name, align 8
  %305 = load i32, i32* %q, align 4
  %306 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %304, i32 %305, i32 %306, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.534, %if.end.532
  store i32 5, i32* %retval
  br label %do.end.600

if.else.536:                                      ; preds = %do.body.526
  %307 = load i32, i32* %dcode, align 4
  %sub537 = sub nsw i32 5, %307
  %308 = load i32, i32* %savecode, align 4
  %cmp538 = icmp sgt i32 %sub537, %308
  br i1 %cmp538, label %if.then.540, label %if.end.542

if.then.540:                                      ; preds = %if.else.536
  %309 = load i32, i32* %xpos, align 4
  store i32 %309, i32* %savemove, align 4
  %310 = load i32, i32* %dcode, align 4
  %sub541 = sub nsw i32 5, %310
  store i32 %sub541, i32* %savecode, align 4
  br label %if.end.542

if.end.542:                                       ; preds = %if.then.540, %if.else.536
  br label %if.end.543

if.end.543:                                       ; preds = %if.end.542
  br label %do.end.544

do.end.544:                                       ; preds = %if.end.543
  br label %if.end.546

if.else.545:                                      ; preds = %land.lhs.true.522, %if.then.518
  call void @popgo()
  br label %if.end.546

if.end.546:                                       ; preds = %if.else.545, %do.end.544
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.then.515
  br label %if.end.549

if.else.548:                                      ; preds = %if.then.510
  call void @popgo()
  br label %if.end.549

if.end.549:                                       ; preds = %if.else.548, %if.end.547
  br label %if.end.579

if.else.550:                                      ; preds = %if.then.506
  %311 = load i32, i32* %str.addr, align 4
  %312 = load i32, i32* %komaster.addr, align 4
  %313 = load i32, i32* %kom_pos.addr, align 4
  %call551 = call i32 @do_find_defense(i32 %311, i32* null, i32 %312, i32 %313)
  store i32 %call551, i32* %dcode, align 4
  %314 = load i32, i32* %dcode, align 4
  %cmp552 = icmp ne i32 %314, 5
  br i1 %cmp552, label %land.lhs.true.554, label %if.else.577

land.lhs.true.554:                                ; preds = %if.else.550
  %315 = load i32, i32* %str.addr, align 4
  %316 = load i32, i32* %komaster.addr, align 4
  %317 = load i32, i32* %kom_pos.addr, align 4
  %call555 = call i32 @do_attack(i32 %315, i32* null, i32 %316, i32 %317)
  %tobool556 = icmp ne i32 %call555, 0
  br i1 %tobool556, label %if.then.557, label %if.else.577

if.then.557:                                      ; preds = %land.lhs.true.554
  call void @popgo()
  br label %do.body.558

do.body.558:                                      ; preds = %if.then.557
  %318 = load i32, i32* %dcode, align 4
  %cmp559 = icmp eq i32 %318, 0
  br i1 %cmp559, label %if.then.561, label %if.else.568

if.then.561:                                      ; preds = %do.body.558
  %319 = load i32*, i32** %move.addr, align 8
  %tobool562 = icmp ne i32* %319, null
  br i1 %tobool562, label %if.then.563, label %if.end.564

if.then.563:                                      ; preds = %if.then.561
  %320 = load i32, i32* %apos497, align 4
  %321 = load i32*, i32** %move.addr, align 8
  store i32 %320, i32* %321, align 4
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.563, %if.then.561
  %322 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool565 = icmp ne %struct.SGFTree_t* %322, null
  br i1 %tobool565, label %if.then.566, label %if.end.567

if.then.566:                                      ; preds = %if.end.564
  %323 = load i8*, i8** %read_function_name, align 8
  %324 = load i32, i32* %q, align 4
  %325 = load i32, i32* %apos497, align 4
  call void @sgf_trace(i8* %323, i32 %324, i32 %325, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.566, %if.end.564
  store i32 5, i32* %retval
  br label %do.end.600

if.else.568:                                      ; preds = %do.body.558
  %326 = load i32, i32* %dcode, align 4
  %sub569 = sub nsw i32 5, %326
  %327 = load i32, i32* %savecode, align 4
  %cmp570 = icmp sgt i32 %sub569, %327
  br i1 %cmp570, label %if.then.572, label %if.end.574

if.then.572:                                      ; preds = %if.else.568
  %328 = load i32, i32* %apos497, align 4
  store i32 %328, i32* %savemove, align 4
  %329 = load i32, i32* %dcode, align 4
  %sub573 = sub nsw i32 5, %329
  store i32 %sub573, i32* %savecode, align 4
  br label %if.end.574

if.end.574:                                       ; preds = %if.then.572, %if.else.568
  br label %if.end.575

if.end.575:                                       ; preds = %if.end.574
  br label %do.end.576

do.end.576:                                       ; preds = %if.end.575
  br label %if.end.578

if.else.577:                                      ; preds = %land.lhs.true.554, %if.else.550
  call void @popgo()
  br label %if.end.578

if.end.578:                                       ; preds = %if.else.577, %do.end.576
  br label %if.end.579

if.end.579:                                       ; preds = %if.end.578, %if.end.549
  br label %if.end.580

if.end.580:                                       ; preds = %if.end.579, %if.end.503
  br label %for.inc.581

for.inc.581:                                      ; preds = %if.end.580, %if.then.502
  %330 = load i32, i32* %k, align 4
  %inc582 = add nsw i32 %330, 1
  store i32 %inc582, i32* %k, align 4
  br label %for.cond.493

for.end.583:                                      ; preds = %for.cond.493
  br label %if.end.584

if.end.584:                                       ; preds = %for.end.583, %if.then.488
  br label %if.end.585

if.end.585:                                       ; preds = %if.end.584, %land.lhs.true.485, %if.end.482
  br label %do.body.586

do.body.586:                                      ; preds = %if.end.585
  %331 = load i32, i32* %savecode, align 4
  %tobool587 = icmp ne i32 %331, 0
  br i1 %tobool587, label %if.then.588, label %if.else.595

if.then.588:                                      ; preds = %do.body.586
  %332 = load i32*, i32** %move.addr, align 8
  %tobool589 = icmp ne i32* %332, null
  br i1 %tobool589, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %if.then.588
  %333 = load i32, i32* %savemove, align 4
  %334 = load i32*, i32** %move.addr, align 8
  store i32 %333, i32* %334, align 4
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.590, %if.then.588
  %335 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool592 = icmp ne %struct.SGFTree_t* %335, null
  br i1 %tobool592, label %if.then.593, label %if.end.594

if.then.593:                                      ; preds = %if.end.591
  %336 = load i8*, i8** %read_function_name, align 8
  %337 = load i32, i32* %q, align 4
  %338 = load i32, i32* %savemove, align 4
  %339 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %336, i32 %337, i32 %338, i32 %339, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.594

if.end.594:                                       ; preds = %if.then.593, %if.end.591
  br label %if.end.599

if.else.595:                                      ; preds = %do.body.586
  %340 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool596 = icmp ne %struct.SGFTree_t* %340, null
  br i1 %tobool596, label %if.then.597, label %if.end.598

if.then.597:                                      ; preds = %if.else.595
  %341 = load i8*, i8** %read_function_name, align 8
  %342 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %341, i32 %342, i32 0, i32 0, i8* null)
  br label %if.end.598

if.end.598:                                       ; preds = %if.then.597, %if.else.595
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %if.end.594
  %343 = load i32, i32* %savecode, align 4
  store i32 %343, i32* %retval
  br label %do.end.600

do.end.600:                                       ; preds = %if.end.14, %if.end.243, %if.end.284, %if.end.312, %if.end.455, %if.end.535, %if.end.567, %if.end.599
  %344 = load i32, i32* %retval
  ret i32 %344
}

; Function Attrs: nounwind uwtable
define internal i32 @attack4(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %xpos = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %liberties = alloca i32, align 4
  %libs = alloca [4 x i32], align 16
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %dcode = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %hpos = alloca i32, align 4
  %u = alloca i32, align 4
  %apos = alloca i32, align 4
  %u123 = alloca i32, align 4
  %u168 = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %dcode, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i8** %read_function_name, align 8
  %3 = load i32, i32* %str.addr, align 4
  store i32 %3, i32* %q, align 4
  %4 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 3020, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 0, i32* %num, align 4
  %9 = load i32, i32* @stackp, align 4
  %10 = load i32, i32* @depth, align 4
  %cmp10 = icmp sgt i32 %9, %10
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %11, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.12
  %12 = load i8*, i8** %read_function_name, align 8
  %13 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %12, i32 %13, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.12
  store i32 0, i32* %retval
  br label %do.end.317

if.end.15:                                        ; preds = %if.end
  %14 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %14, i32* %arraydecay, i32 1)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.end.15
  %15 = load i32, i32* %r, align 4
  %16 = load i32, i32* %adj, align 4
  %cmp16 = icmp slt i32 %15, %16
  br i1 %cmp16, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  call void @break_chain_moves(i32 %18, %struct.reading_moves* %moves)
  %19 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 @findlib(i32 %20, i32 1, i32* %hpos)
  br label %do.body

do.body:                                          ; preds = %for.body
  store i32 0, i32* %u, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %do.body
  %21 = load i32, i32* %u, align 4
  %num24 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %22 = load i32, i32* %num24, align 4
  %cmp25 = icmp slt i32 %21, %22
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.23
  %23 = load i32, i32* %u, align 4
  %idxprom28 = sext i32 %23 to i64
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom28
  %24 = load i32, i32* %arrayidx29, align 4
  %25 = load i32, i32* %hpos, align 4
  %cmp30 = icmp eq i32 %24, %25
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %for.body.27
  %26 = load i32, i32* %u, align 4
  %idxprom33 = sext i32 %26 to i64
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom33
  %27 = load i32, i32* %arrayidx34, align 4
  %add = add nsw i32 %27, 0
  store i32 %add, i32* %arrayidx34, align 4
  br label %for.end

if.end.35:                                        ; preds = %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %28 = load i32, i32* %u, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %u, align 4
  br label %for.cond.23

for.end:                                          ; preds = %if.then.32, %for.cond.23
  %29 = load i32, i32* %u, align 4
  %num37 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %30 = load i32, i32* %num37, align 4
  %cmp38 = icmp eq i32 %29, %30
  br i1 %cmp38, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %for.end
  %num40 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %31 = load i32, i32* %num40, align 4
  %cmp41 = icmp slt i32 %31, 50
  br i1 %cmp41, label %if.then.43, label %if.end.54

if.then.43:                                       ; preds = %land.lhs.true
  %32 = load i32, i32* %hpos, align 4
  %num44 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %33 = load i32, i32* %num44, align 4
  %idxprom45 = sext i32 %33 to i64
  %pos46 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [50 x i32], [50 x i32]* %pos46, i32 0, i64 %idxprom45
  store i32 %32, i32* %arrayidx47, align 4
  %num48 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %34 = load i32, i32* %num48, align 4
  %idxprom49 = sext i32 %34 to i64
  %score50 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [50 x i32], [50 x i32]* %score50, i32 0, i64 %idxprom49
  store i32 0, i32* %arrayidx51, align 4
  %num52 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %35 = load i32, i32* %num52, align 4
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, i32* %num52, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.43, %land.lhs.true, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.54
  br label %for.inc.55

for.inc.55:                                       ; preds = %do.end
  %36 = load i32, i32* %r, align 4
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, i32* %r, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %37 = load i32, i32* %str.addr, align 4
  call void @double_atari_chain2_moves(i32 %37, %struct.reading_moves* %moves)
  store i32 0, i32* %k, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %for.end.57
  %38 = load i32, i32* %k, align 4
  %num59 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %39 = load i32, i32* %num59, align 4
  %cmp60 = icmp slt i32 %38, %39
  br i1 %cmp60, label %for.body.62, label %for.end.69

for.body.62:                                      ; preds = %for.cond.58
  %40 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %40 to i64
  %score64 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [50 x i32], [50 x i32]* %score64, i32 0, i64 %idxprom63
  %41 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %41, 5
  store i32 %add66, i32* %arrayidx65, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.62
  %42 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %42, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond.58

for.end.69:                                       ; preds = %for.cond.58
  %43 = load i32, i32* %str.addr, align 4
  %arraydecay70 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call71 = call i32 @findlib(i32 %43, i32 4, i32* %arraydecay70)
  store i32 %call71, i32* %liberties, align 4
  %44 = load i32, i32* %liberties, align 4
  %cmp72 = icmp eq i32 %44, 4
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %for.end.69
  br label %if.end.78

if.else.75:                                       ; preds = %for.end.69
  %45 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %45, 20
  %sub76 = sub nsw i32 %div, 1
  %46 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %46, 20
  %sub77 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 3048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i32 %sub76, i32 %sub77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  store i32 0, i32* %k, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.209, %if.end.78
  %47 = load i32, i32* %k, align 4
  %cmp80 = icmp slt i32 %47, 4
  br i1 %cmp80, label %for.body.82, label %for.end.211

for.body.82:                                      ; preds = %for.cond.79
  %48 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %48 to i64
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom83
  %49 = load i32, i32* %arrayidx84, align 4
  store i32 %49, i32* %apos, align 4
  %50 = load i32, i32* @stackp, align 4
  %51 = load i32, i32* @backfill_depth, align 4
  %cmp85 = icmp sle i32 %50, %51
  br i1 %cmp85, label %if.then.121, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %for.body.82
  %52 = load i32, i32* @stackp, align 4
  %53 = load i32, i32* @depth, align 4
  %cmp88 = icmp sle i32 %52, %53
  br i1 %cmp88, label %land.lhs.true.90, label %lor.lhs.false.118

land.lhs.true.90:                                 ; preds = %lor.lhs.false.87
  %54 = load i32, i32* %apos, align 4
  %add91 = add nsw i32 %54, 20
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom92
  %55 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %55 to i32
  %56 = load i32, i32* %other, align 4
  %cmp95 = icmp ne i32 %conv94, %56
  br i1 %cmp95, label %land.lhs.true.97, label %lor.lhs.false.118

land.lhs.true.97:                                 ; preds = %land.lhs.true.90
  %57 = load i32, i32* %apos, align 4
  %sub98 = sub nsw i32 %57, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %58 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %58 to i32
  %59 = load i32, i32* %other, align 4
  %cmp102 = icmp ne i32 %conv101, %59
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.118

land.lhs.true.104:                                ; preds = %land.lhs.true.97
  %60 = load i32, i32* %apos, align 4
  %sub105 = sub nsw i32 %60, 20
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom106
  %61 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %61 to i32
  %62 = load i32, i32* %other, align 4
  %cmp109 = icmp ne i32 %conv108, %62
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.118

land.lhs.true.111:                                ; preds = %land.lhs.true.104
  %63 = load i32, i32* %apos, align 4
  %add112 = add nsw i32 %63, 1
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom113
  %64 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %64 to i32
  %65 = load i32, i32* %other, align 4
  %cmp116 = icmp ne i32 %conv115, %65
  br i1 %cmp116, label %if.then.121, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %land.lhs.true.111, %land.lhs.true.104, %land.lhs.true.97, %land.lhs.true.90, %lor.lhs.false.87
  %66 = load i32, i32* %apos, align 4
  %67 = load i32, i32* %other, align 4
  %call119 = call i32 @is_self_atari(i32 %66, i32 %67)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.163, label %if.then.121

if.then.121:                                      ; preds = %lor.lhs.false.118, %land.lhs.true.111, %for.body.82
  br label %do.body.122

do.body.122:                                      ; preds = %if.then.121
  store i32 0, i32* %u123, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.140, %do.body.122
  %68 = load i32, i32* %u123, align 4
  %num125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %69 = load i32, i32* %num125, align 4
  %cmp126 = icmp slt i32 %68, %69
  br i1 %cmp126, label %for.body.128, label %for.end.142

for.body.128:                                     ; preds = %for.cond.124
  %70 = load i32, i32* %u123, align 4
  %idxprom129 = sext i32 %70 to i64
  %pos130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [50 x i32], [50 x i32]* %pos130, i32 0, i64 %idxprom129
  %71 = load i32, i32* %arrayidx131, align 4
  %72 = load i32, i32* %apos, align 4
  %cmp132 = icmp eq i32 %71, %72
  br i1 %cmp132, label %if.then.134, label %if.end.139

if.then.134:                                      ; preds = %for.body.128
  %73 = load i32, i32* %u123, align 4
  %idxprom135 = sext i32 %73 to i64
  %score136 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [50 x i32], [50 x i32]* %score136, i32 0, i64 %idxprom135
  %74 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %74, 0
  store i32 %add138, i32* %arrayidx137, align 4
  br label %for.end.142

if.end.139:                                       ; preds = %for.body.128
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %75 = load i32, i32* %u123, align 4
  %inc141 = add nsw i32 %75, 1
  store i32 %inc141, i32* %u123, align 4
  br label %for.cond.124

for.end.142:                                      ; preds = %if.then.134, %for.cond.124
  %76 = load i32, i32* %u123, align 4
  %num143 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %77 = load i32, i32* %num143, align 4
  %cmp144 = icmp eq i32 %76, %77
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.161

land.lhs.true.146:                                ; preds = %for.end.142
  %num147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %78 = load i32, i32* %num147, align 4
  %cmp148 = icmp slt i32 %78, 50
  br i1 %cmp148, label %if.then.150, label %if.end.161

if.then.150:                                      ; preds = %land.lhs.true.146
  %79 = load i32, i32* %apos, align 4
  %num151 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %80 = load i32, i32* %num151, align 4
  %idxprom152 = sext i32 %80 to i64
  %pos153 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [50 x i32], [50 x i32]* %pos153, i32 0, i64 %idxprom152
  store i32 %79, i32* %arrayidx154, align 4
  %num155 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %81 = load i32, i32* %num155, align 4
  %idxprom156 = sext i32 %81 to i64
  %score157 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [50 x i32], [50 x i32]* %score157, i32 0, i64 %idxprom156
  store i32 0, i32* %arrayidx158, align 4
  %num159 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %82 = load i32, i32* %num159, align 4
  %inc160 = add nsw i32 %82, 1
  store i32 %inc160, i32* %num159, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.150, %land.lhs.true.146, %for.end.142
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %do.end.162, %lor.lhs.false.118
  %83 = load i32, i32* %str.addr, align 4
  %84 = load i32, i32* %apos, align 4
  %call164 = call i32 @edge_closing_backfill(i32 %83, i32 %84, i32* %xpos)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.end.208

if.then.166:                                      ; preds = %if.end.163
  br label %do.body.167

do.body.167:                                      ; preds = %if.then.166
  store i32 0, i32* %u168, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.185, %do.body.167
  %85 = load i32, i32* %u168, align 4
  %num170 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %86 = load i32, i32* %num170, align 4
  %cmp171 = icmp slt i32 %85, %86
  br i1 %cmp171, label %for.body.173, label %for.end.187

for.body.173:                                     ; preds = %for.cond.169
  %87 = load i32, i32* %u168, align 4
  %idxprom174 = sext i32 %87 to i64
  %pos175 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [50 x i32], [50 x i32]* %pos175, i32 0, i64 %idxprom174
  %88 = load i32, i32* %arrayidx176, align 4
  %89 = load i32, i32* %xpos, align 4
  %cmp177 = icmp eq i32 %88, %89
  br i1 %cmp177, label %if.then.179, label %if.end.184

if.then.179:                                      ; preds = %for.body.173
  %90 = load i32, i32* %u168, align 4
  %idxprom180 = sext i32 %90 to i64
  %score181 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [50 x i32], [50 x i32]* %score181, i32 0, i64 %idxprom180
  %91 = load i32, i32* %arrayidx182, align 4
  %add183 = add nsw i32 %91, 10
  store i32 %add183, i32* %arrayidx182, align 4
  br label %for.end.187

if.end.184:                                       ; preds = %for.body.173
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %92 = load i32, i32* %u168, align 4
  %inc186 = add nsw i32 %92, 1
  store i32 %inc186, i32* %u168, align 4
  br label %for.cond.169

for.end.187:                                      ; preds = %if.then.179, %for.cond.169
  %93 = load i32, i32* %u168, align 4
  %num188 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %94 = load i32, i32* %num188, align 4
  %cmp189 = icmp eq i32 %93, %94
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.206

land.lhs.true.191:                                ; preds = %for.end.187
  %num192 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %95 = load i32, i32* %num192, align 4
  %cmp193 = icmp slt i32 %95, 50
  br i1 %cmp193, label %if.then.195, label %if.end.206

if.then.195:                                      ; preds = %land.lhs.true.191
  %96 = load i32, i32* %xpos, align 4
  %num196 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %97 = load i32, i32* %num196, align 4
  %idxprom197 = sext i32 %97 to i64
  %pos198 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [50 x i32], [50 x i32]* %pos198, i32 0, i64 %idxprom197
  store i32 %96, i32* %arrayidx199, align 4
  %num200 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %98 = load i32, i32* %num200, align 4
  %idxprom201 = sext i32 %98 to i64
  %score202 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [50 x i32], [50 x i32]* %score202, i32 0, i64 %idxprom201
  store i32 10, i32* %arrayidx203, align 4
  %num204 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %99 = load i32, i32* %num204, align 4
  %inc205 = add nsw i32 %99, 1
  store i32 %inc205, i32* %num204, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.195, %land.lhs.true.191, %for.end.187
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %if.end.208

if.end.208:                                       ; preds = %do.end.207, %if.end.163
  %100 = load i32, i32* %str.addr, align 4
  %101 = load i32, i32* %apos, align 4
  call void @edge_block_moves(i32 %100, i32 %101, %struct.reading_moves* %moves)
  br label %for.inc.209

for.inc.209:                                      ; preds = %if.end.208
  %102 = load i32, i32* %k, align 4
  %inc210 = add nsw i32 %102, 1
  store i32 %inc210, i32* %k, align 4
  br label %for.cond.79

for.end.211:                                      ; preds = %for.cond.79
  %103 = load i32, i32* %str.addr, align 4
  %arraydecay212 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %104 = load i32, i32* %liberties, align 4
  %105 = load i32, i32* %other, align 4
  call void @propose_edge_moves(i32 %103, i32* %arraydecay212, i32 %104, %struct.reading_moves* %moves, i32 %105)
  %106 = load i32, i32* %str.addr, align 4
  %107 = load i32, i32* %other, align 4
  %108 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %106, %struct.reading_moves* %moves, i32 %107, i8* %108, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.273, %for.end.211
  %109 = load i32, i32* %k, align 4
  %num214 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %110 = load i32, i32* %num214, align 4
  %cmp215 = icmp slt i32 %109, %110
  br i1 %cmp215, label %for.body.217, label %for.end.275

for.body.217:                                     ; preds = %for.cond.213
  %111 = load i32, i32* @stackp, align 4
  %112 = load i32, i32* @branch_depth, align 4
  %cmp218 = icmp sge i32 %111, %112
  br i1 %cmp218, label %land.lhs.true.220, label %if.end.224

land.lhs.true.220:                                ; preds = %for.body.217
  %113 = load i32, i32* %k, align 4
  %cmp221 = icmp sgt i32 %113, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %land.lhs.true.220
  br label %for.end.275

if.end.224:                                       ; preds = %land.lhs.true.220, %for.body.217
  %114 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %114 to i64
  %pos226 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [50 x i32], [50 x i32]* %pos226, i32 0, i64 %idxprom225
  %115 = load i32, i32* %arrayidx227, align 4
  store i32 %115, i32* %xpos, align 4
  %116 = load i32, i32* %xpos, align 4
  %117 = load i32, i32* %other, align 4
  %118 = load i32, i32* %str.addr, align 4
  %119 = load i32, i32* %komaster.addr, align 4
  %120 = load i32, i32* %kom_pos.addr, align 4
  %call228 = call i32 @komaster_trymove(i32 %116, i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i32 %118, i32 %119, i32 %120, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 0)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.272

if.then.230:                                      ; preds = %if.end.224
  %121 = load i32, i32* %ko_move, align 4
  %tobool231 = icmp ne i32 %121, 0
  br i1 %tobool231, label %if.else.261, label %if.then.232

if.then.232:                                      ; preds = %if.then.230
  %122 = load i32, i32* %str.addr, align 4
  %123 = load i32, i32* %new_komaster, align 4
  %124 = load i32, i32* %new_kom_pos, align 4
  %call233 = call i32 @do_find_defense(i32 %122, i32* null, i32 %123, i32 %124)
  store i32 %call233, i32* %dcode, align 4
  %125 = load i32, i32* %dcode, align 4
  %cmp234 = icmp ne i32 %125, 5
  br i1 %cmp234, label %land.lhs.true.236, label %if.else.259

land.lhs.true.236:                                ; preds = %if.then.232
  %126 = load i32, i32* %str.addr, align 4
  %127 = load i32, i32* %new_komaster, align 4
  %128 = load i32, i32* %new_kom_pos, align 4
  %call237 = call i32 @do_attack(i32 %126, i32* null, i32 %127, i32 %128)
  %tobool238 = icmp ne i32 %call237, 0
  br i1 %tobool238, label %if.then.239, label %if.else.259

if.then.239:                                      ; preds = %land.lhs.true.236
  call void @popgo()
  br label %do.body.240

do.body.240:                                      ; preds = %if.then.239
  %129 = load i32, i32* %dcode, align 4
  %cmp241 = icmp eq i32 %129, 0
  br i1 %cmp241, label %if.then.243, label %if.else.250

if.then.243:                                      ; preds = %do.body.240
  %130 = load i32*, i32** %move.addr, align 8
  %tobool244 = icmp ne i32* %130, null
  br i1 %tobool244, label %if.then.245, label %if.end.246

if.then.245:                                      ; preds = %if.then.243
  %131 = load i32, i32* %xpos, align 4
  %132 = load i32*, i32** %move.addr, align 8
  store i32 %131, i32* %132, align 4
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.245, %if.then.243
  %133 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool247 = icmp ne %struct.SGFTree_t* %133, null
  br i1 %tobool247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.246
  %134 = load i8*, i8** %read_function_name, align 8
  %135 = load i32, i32* %q, align 4
  %136 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %134, i32 %135, i32 %136, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0))
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.248, %if.end.246
  store i32 5, i32* %retval
  br label %do.end.317

if.else.250:                                      ; preds = %do.body.240
  %137 = load i32, i32* %dcode, align 4
  %sub251 = sub nsw i32 5, %137
  %138 = load i32, i32* %savecode, align 4
  %cmp252 = icmp sgt i32 %sub251, %138
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %if.else.250
  %139 = load i32, i32* %xpos, align 4
  store i32 %139, i32* %savemove, align 4
  %140 = load i32, i32* %dcode, align 4
  %sub255 = sub nsw i32 5, %140
  store i32 %sub255, i32* %savecode, align 4
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %if.else.250
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256
  br label %do.end.258

do.end.258:                                       ; preds = %if.end.257
  br label %if.end.260

if.else.259:                                      ; preds = %land.lhs.true.236, %if.then.232
  call void @popgo()
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.259, %do.end.258
  br label %if.end.271

if.else.261:                                      ; preds = %if.then.230
  %141 = load i32, i32* %str.addr, align 4
  %142 = load i32, i32* %new_komaster, align 4
  %143 = load i32, i32* %new_kom_pos, align 4
  %call262 = call i32 @do_find_defense(i32 %141, i32* null, i32 %142, i32 %143)
  %cmp263 = icmp ne i32 %call262, 5
  br i1 %cmp263, label %land.lhs.true.265, label %if.end.270

land.lhs.true.265:                                ; preds = %if.else.261
  %144 = load i32, i32* %str.addr, align 4
  %145 = load i32, i32* %new_komaster, align 4
  %146 = load i32, i32* %new_kom_pos, align 4
  %call266 = call i32 @do_attack(i32 %144, i32* null, i32 %145, i32 %146)
  %cmp267 = icmp ne i32 %call266, 0
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %land.lhs.true.265
  %147 = load i32, i32* %xpos, align 4
  store i32 %147, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %land.lhs.true.265, %if.else.261
  call void @popgo()
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.end.260
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.224
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %148 = load i32, i32* %k, align 4
  %inc274 = add nsw i32 %148, 1
  store i32 %inc274, i32* %k, align 4
  br label %for.cond.213

for.end.275:                                      ; preds = %if.then.223, %for.cond.213
  %149 = load i32, i32* @stackp, align 4
  %150 = load i32, i32* @backfill_depth, align 4
  %cmp276 = icmp sle i32 %149, %150
  br i1 %cmp276, label %if.then.278, label %if.end.302

if.then.278:                                      ; preds = %for.end.275
  %151 = load i32, i32* %str.addr, align 4
  %152 = load i32, i32* %komaster.addr, align 4
  %153 = load i32, i32* %kom_pos.addr, align 4
  %call279 = call i32 @find_cap(i32 %151, i32* %xpos, i32 %152, i32 %153)
  store i32 %call279, i32* %acode, align 4
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.278
  %154 = load i32, i32* %acode, align 4
  %sub281 = sub nsw i32 5, %154
  %cmp282 = icmp eq i32 %sub281, 0
  br i1 %cmp282, label %if.then.284, label %if.else.291

if.then.284:                                      ; preds = %do.body.280
  %155 = load i32*, i32** %move.addr, align 8
  %tobool285 = icmp ne i32* %155, null
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.then.284
  %156 = load i32, i32* %xpos, align 4
  %157 = load i32*, i32** %move.addr, align 8
  store i32 %156, i32* %157, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.286, %if.then.284
  %158 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool288 = icmp ne %struct.SGFTree_t* %158, null
  br i1 %tobool288, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.end.287
  %159 = load i8*, i8** %read_function_name, align 8
  %160 = load i32, i32* %q, align 4
  %161 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %159, i32 %160, i32 %161, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0))
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.289, %if.end.287
  store i32 5, i32* %retval
  br label %do.end.317

if.else.291:                                      ; preds = %do.body.280
  %162 = load i32, i32* %acode, align 4
  %sub292 = sub nsw i32 5, %162
  %sub293 = sub nsw i32 5, %sub292
  %163 = load i32, i32* %savecode, align 4
  %cmp294 = icmp sgt i32 %sub293, %163
  br i1 %cmp294, label %if.then.296, label %if.end.299

if.then.296:                                      ; preds = %if.else.291
  %164 = load i32, i32* %xpos, align 4
  store i32 %164, i32* %savemove, align 4
  %165 = load i32, i32* %acode, align 4
  %sub297 = sub nsw i32 5, %165
  %sub298 = sub nsw i32 5, %sub297
  store i32 %sub298, i32* %savecode, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.296, %if.else.291
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299
  br label %do.end.301

do.end.301:                                       ; preds = %if.end.300
  br label %if.end.302

if.end.302:                                       ; preds = %do.end.301, %for.end.275
  br label %do.body.303

do.body.303:                                      ; preds = %if.end.302
  %166 = load i32, i32* %savecode, align 4
  %tobool304 = icmp ne i32 %166, 0
  br i1 %tobool304, label %if.then.305, label %if.else.312

if.then.305:                                      ; preds = %do.body.303
  %167 = load i32*, i32** %move.addr, align 8
  %tobool306 = icmp ne i32* %167, null
  br i1 %tobool306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.then.305
  %168 = load i32, i32* %savemove, align 4
  %169 = load i32*, i32** %move.addr, align 8
  store i32 %168, i32* %169, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %if.then.305
  %170 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool309 = icmp ne %struct.SGFTree_t* %170, null
  br i1 %tobool309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.308
  %171 = load i8*, i8** %read_function_name, align 8
  %172 = load i32, i32* %q, align 4
  %173 = load i32, i32* %savemove, align 4
  %174 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %171, i32 %172, i32 %173, i32 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.310, %if.end.308
  br label %if.end.316

if.else.312:                                      ; preds = %do.body.303
  %175 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool313 = icmp ne %struct.SGFTree_t* %175, null
  br i1 %tobool313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.else.312
  %176 = load i8*, i8** %read_function_name, align 8
  %177 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %176, i32 %177, i32 0, i32 0, i8* null)
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.else.312
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.311
  %178 = load i32, i32* %savecode, align 4
  store i32 %178, i32* %retval
  br label %do.end.317

do.end.317:                                       ; preds = %if.end.14, %if.end.249, %if.end.290, %if.end.316
  %179 = load i32, i32* %retval
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal void @edge_block_moves(i32 %str, i32 %apos, %struct.reading_moves* %moves) #0 {
entry:
  %str.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %moves.addr = alloca %struct.reading_moves*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %fpos = alloca i32, align 4
  %gpos = alloca i32, align 4
  %hpos = alloca i32, align 4
  %up = alloca i32, align 4
  %right = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store %struct.reading_moves* %moves, %struct.reading_moves** %moves.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %up, align 4
  %6 = load i32, i32* %apos.addr, align 4
  %7 = load i32, i32* %up, align 4
  %sub4 = sub nsw i32 %6, %7
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.114

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %apos.addr, align 4
  %10 = load i32, i32* %up, align 4
  %add = add nsw i32 %9, %10
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %12 = load i32, i32* %color, align 4
  %cmp13 = icmp ne i32 %conv12, %12
  br i1 %cmp13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load i32, i32* %apos.addr, align 4
  %14 = load i32, i32* %up, align 4
  %add15 = add nsw i32 %13, %14
  %15 = load i32, i32* %str.addr, align 4
  %call = call i32 @same_string(i32 %add15, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %if.end
  br label %for.end.116

if.end.17:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %l, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.111, %if.end.17
  %16 = load i32, i32* %l, align 4
  %cmp19 = icmp slt i32 %16, 2
  br i1 %cmp19, label %for.body.21, label %for.end.113

for.body.21:                                      ; preds = %for.cond.18
  %17 = load i32, i32* %k, align 4
  %add22 = add nsw i32 %17, 1
  %rem = srem i32 %add22, 4
  %idxprom23 = sext i32 %rem to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  store i32 %18, i32* %right, align 4
  %19 = load i32, i32* %l, align 4
  %cmp25 = icmp eq i32 %19, 1
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.body.21
  %20 = load i32, i32* %right, align 4
  %sub28 = sub nsw i32 0, %20
  store i32 %sub28, i32* %right, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.body.21
  %21 = load i32, i32* %apos.addr, align 4
  %22 = load i32, i32* %right, align 4
  %add30 = add nsw i32 %21, %22
  store i32 %add30, i32* %cpos, align 4
  %23 = load i32, i32* %apos.addr, align 4
  %24 = load i32, i32* %right, align 4
  %add31 = add nsw i32 %23, %24
  %25 = load i32, i32* %up, align 4
  %add32 = add nsw i32 %add31, %25
  store i32 %add32, i32* %dpos, align 4
  %26 = load i32, i32* %cpos, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %27 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %27 to i32
  %28 = load i32, i32* %color, align 4
  %cmp36 = icmp ne i32 %conv35, %28
  br i1 %cmp36, label %if.then.48, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.29
  %29 = load i32, i32* %dpos, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %30 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %31 = load i32, i32* %other, align 4
  %cmp42 = icmp ne i32 %conv41, %31
  br i1 %cmp42, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.38
  %32 = load i32, i32* %dpos, align 4
  %call45 = call i32 @countlib(i32 %32)
  %cmp46 = icmp sgt i32 %call45, 1
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.44, %lor.lhs.false.38, %if.end.29
  br label %for.inc.111

if.end.49:                                        ; preds = %lor.lhs.false.44
  %33 = load i32, i32* %cpos, align 4
  %34 = load i32, i32* %right, align 4
  %add50 = add nsw i32 %33, %34
  store i32 %add50, i32* %epos, align 4
  %35 = load i32, i32* %dpos, align 4
  %36 = load i32, i32* %right, align 4
  %add51 = add nsw i32 %35, %36
  store i32 %add51, i32* %fpos, align 4
  %37 = load i32, i32* %epos, align 4
  %38 = load i32, i32* %right, align 4
  %add52 = add nsw i32 %37, %38
  store i32 %add52, i32* %gpos, align 4
  %39 = load i32, i32* %apos.addr, align 4
  %40 = load i32, i32* %right, align 4
  %sub53 = sub nsw i32 %39, %40
  store i32 %sub53, i32* %hpos, align 4
  %41 = load i32, i32* %epos, align 4
  %idxprom54 = sext i32 %41 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %42 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %42 to i32
  %cmp57 = icmp ne i32 %conv56, 3
  br i1 %cmp57, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.49
  br label %for.inc.111

if.end.60:                                        ; preds = %if.end.49
  %43 = load i32, i32* %epos, align 4
  %idxprom61 = sext i32 %43 to i64
  %arrayidx62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom61
  %44 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %44 to i32
  %cmp64 = icmp eq i32 %conv63, 0
  br i1 %cmp64, label %land.lhs.true, label %if.end.110

land.lhs.true:                                    ; preds = %if.end.60
  %45 = load i32, i32* %fpos, align 4
  %idxprom66 = sext i32 %45 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %46 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %46 to i32
  %cmp69 = icmp eq i32 %conv68, 0
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.110

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %47 = load i32, i32* %gpos, align 4
  %idxprom72 = sext i32 %47 to i64
  %arrayidx73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom72
  %48 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %48 to i32
  %49 = load i32, i32* %color, align 4
  %cmp75 = icmp ne i32 %conv74, %49
  br i1 %cmp75, label %if.then.77, label %if.end.110

if.then.77:                                       ; preds = %land.lhs.true.71
  br label %do.body

do.body:                                          ; preds = %if.then.77
  store i32 0, i32* %u, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc, %do.body
  %50 = load i32, i32* %u, align 4
  %51 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %51, i32 0, i32 2
  %52 = load i32, i32* %num, align 4
  %cmp79 = icmp slt i32 %50, %52
  br i1 %cmp79, label %for.body.81, label %for.end

for.body.81:                                      ; preds = %for.cond.78
  %53 = load i32, i32* %u, align 4
  %idxprom82 = sext i32 %53 to i64
  %54 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %54, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 %idxprom82
  %55 = load i32, i32* %arrayidx83, align 4
  %56 = load i32, i32* %fpos, align 4
  %cmp84 = icmp eq i32 %55, %56
  br i1 %cmp84, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %for.body.81
  %57 = load i32, i32* %u, align 4
  %idxprom87 = sext i32 %57 to i64
  %58 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 %idxprom87
  %59 = load i32, i32* %arrayidx88, align 4
  %add89 = add nsw i32 %59, 30
  store i32 %add89, i32* %arrayidx88, align 4
  br label %for.end

if.end.90:                                        ; preds = %for.body.81
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %60 = load i32, i32* %u, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %u, align 4
  br label %for.cond.78

for.end:                                          ; preds = %if.then.86, %for.cond.78
  %61 = load i32, i32* %u, align 4
  %62 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num91 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %62, i32 0, i32 2
  %63 = load i32, i32* %num91, align 4
  %cmp92 = icmp eq i32 %61, %63
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.109

land.lhs.true.94:                                 ; preds = %for.end
  %64 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num95 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %64, i32 0, i32 2
  %65 = load i32, i32* %num95, align 4
  %cmp96 = icmp slt i32 %65, 50
  br i1 %cmp96, label %if.then.98, label %if.end.109

if.then.98:                                       ; preds = %land.lhs.true.94
  %66 = load i32, i32* %fpos, align 4
  %67 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num99 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %67, i32 0, i32 2
  %68 = load i32, i32* %num99, align 4
  %idxprom100 = sext i32 %68 to i64
  %69 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %pos101 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %69, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [50 x i32], [50 x i32]* %pos101, i32 0, i64 %idxprom100
  store i32 %66, i32* %arrayidx102, align 4
  %70 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %70, i32 0, i32 2
  %71 = load i32, i32* %num103, align 4
  %idxprom104 = sext i32 %71 to i64
  %72 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %score105 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %72, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [50 x i32], [50 x i32]* %score105, i32 0, i64 %idxprom104
  store i32 30, i32* %arrayidx106, align 4
  %73 = load %struct.reading_moves*, %struct.reading_moves** %moves.addr, align 8
  %num107 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %73, i32 0, i32 2
  %74 = load i32, i32* %num107, align 4
  %inc108 = add nsw i32 %74, 1
  store i32 %inc108, i32* %num107, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.98, %land.lhs.true.94, %for.end
  br label %do.end

do.end:                                           ; preds = %if.end.109
  br label %if.end.110

if.end.110:                                       ; preds = %do.end, %land.lhs.true.71, %land.lhs.true, %if.end.60
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110, %if.then.59, %if.then.48
  %75 = load i32, i32* %l, align 4
  %inc112 = add nsw i32 %75, 1
  store i32 %inc112, i32* %l, align 4
  br label %for.cond.18

for.end.113:                                      ; preds = %for.cond.18
  br label %for.inc.114

for.inc.114:                                      ; preds = %for.end.113, %if.then
  %76 = load i32, i32* %k, align 4
  %inc115 = add nsw i32 %76, 1
  store i32 %inc115, i32* %k, align 4
  br label %for.cond

for.end.116:                                      ; preds = %if.then.16, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_cap2(i32 %str, i32 %alib, i32 %blib, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %alib.addr = alloca i32, align 4
  %blib.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %bi = alloca i32, align 4
  %bj = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %alib, i32* %alib.addr, align 4
  store i32 %blib, i32* %blib.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %alib.addr, align 4
  %1 = load i32, i32* %blib.addr, align 4
  %add = add nsw i32 %1, 20
  %sub = sub nsw i32 %add, 1
  %cmp = icmp ne i32 %0, %sub
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %alib.addr, align 4
  %3 = load i32, i32* %blib.addr, align 4
  %sub1 = sub nsw i32 %3, 20
  %sub2 = sub nsw i32 %sub1, 1
  %cmp3 = icmp ne i32 %2, %sub2
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %alib.addr, align 4
  %5 = load i32, i32* %blib.addr, align 4
  %sub5 = sub nsw i32 %5, 20
  %add6 = add nsw i32 %sub5, 1
  %cmp7 = icmp ne i32 %4, %add6
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.4
  %6 = load i32, i32* %alib.addr, align 4
  %7 = load i32, i32* %blib.addr, align 4
  %add9 = add nsw i32 %7, 20
  %add10 = add nsw i32 %add9, 1
  %cmp11 = icmp ne i32 %6, %add10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true, %entry
  %8 = load i32, i32* %alib.addr, align 4
  %div = sdiv i32 %8, 20
  %sub12 = sub nsw i32 %div, 1
  store i32 %sub12, i32* %ai, align 4
  %9 = load i32, i32* %alib.addr, align 4
  %rem = srem i32 %9, 20
  %sub13 = sub nsw i32 %rem, 1
  store i32 %sub13, i32* %aj, align 4
  %10 = load i32, i32* %blib.addr, align 4
  %div14 = sdiv i32 %10, 20
  %sub15 = sub nsw i32 %div14, 1
  store i32 %sub15, i32* %bi, align 4
  %11 = load i32, i32* %blib.addr, align 4
  %rem16 = srem i32 %11, 20
  %sub17 = sub nsw i32 %rem16, 1
  store i32 %sub17, i32* %bj, align 4
  %12 = load i32, i32* %bi, align 4
  %mul = mul nsw i32 %12, 20
  %add18 = add nsw i32 21, %mul
  %13 = load i32, i32* %aj, align 4
  %add19 = add nsw i32 %add18, %13
  %idxprom = sext i32 %add19 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv, 0
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end
  %15 = load i32, i32* %bi, align 4
  %mul23 = mul nsw i32 %15, 20
  %add24 = add nsw i32 21, %mul23
  %16 = load i32, i32* %aj, align 4
  %add25 = add nsw i32 %add24, %16
  %17 = load i32*, i32** %move.addr, align 8
  store i32 %add25, i32* %17, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.end
  %18 = load i32, i32* %ai, align 4
  %mul26 = mul nsw i32 %18, 20
  %add27 = add nsw i32 21, %mul26
  %19 = load i32, i32* %bj, align 4
  %add28 = add nsw i32 %add27, %19
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.else
  %21 = load i32, i32* %ai, align 4
  %mul35 = mul nsw i32 %21, 20
  %add36 = add nsw i32 21, %mul35
  %22 = load i32, i32* %bj, align 4
  %add37 = add nsw i32 %add36, %22
  %23 = load i32*, i32** %move.addr, align 8
  store i32 %add37, i32* %23, align 4
  br label %if.end.39

if.else.38:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.22
  %24 = load i32*, i32** %move.addr, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %str.addr, align 4
  %idxprom41 = sext i32 %26 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %27 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %27 to i32
  %sub44 = sub nsw i32 3, %conv43
  %28 = load i32, i32* %str.addr, align 4
  %29 = load i32, i32* %komaster.addr, align 4
  %30 = load i32, i32* %kom_pos.addr, align 4
  %call = call i32 @trymove(i32 %25, i32 %sub44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %28, i32 %29, i32 %30)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.40
  %31 = load i32, i32* %str.addr, align 4
  %32 = load i32, i32* %komaster.addr, align 4
  %33 = load i32, i32* %kom_pos.addr, align 4
  %call46 = call i32 @do_find_defense(i32 %31, i32* null, i32 %32, i32 %33)
  store i32 %call46, i32* %dcode, align 4
  call void @popgo()
  %34 = load i32, i32* %dcode, align 4
  switch i32 %34, label %sw.epilog [
    i32 0, label %sw.bb
    i32 5, label %sw.bb.47
    i32 1, label %sw.bb.48
    i32 4, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.then.45
  store i32 5, i32* %retval
  br label %return

sw.bb.47:                                         ; preds = %if.then.45
  store i32 0, i32* %retval
  br label %return

sw.bb.48:                                         ; preds = %if.then.45
  store i32 1, i32* %retval
  br label %return

sw.bb.49:                                         ; preds = %if.then.45
  store i32 4, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.then.45
  br label %if.end.50

if.end.50:                                        ; preds = %sw.epilog, %if.end.40
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb, %if.else.38, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @special_attack2(i32 %str, i32* %libs, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %newlibs = alloca [3 x i32], align 4
  %xpos = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %k = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load i32*, i32** %libs.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32, i32* %other, align 4
  %call = call i32 @is_suicide(i32 %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i32*, i32** %libs.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %color, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %newlibs, i32 0, i32 0
  %call6 = call i32 @approxlib(i32 %10, i32 %11, i32 3, i32* %arraydecay)
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.then, label %if.end.46

if.then:                                          ; preds = %land.lhs.true
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %newlibs, i32 0, i64 0
  %12 = load i32, i32* %arrayidx9, align 4
  %13 = load i32, i32* %k, align 4
  %sub10 = sub nsw i32 1, %13
  %idxprom11 = sext i32 %sub10 to i64
  %14 = load i32*, i32** %libs.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom11
  %15 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %12, %15
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %newlibs, i32 0, i64 0
  %16 = load i32, i32* %arrayidx16, align 4
  store i32 %16, i32* %xpos, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %newlibs, i32 0, i64 1
  %17 = load i32, i32* %arrayidx17, align 4
  store i32 %17, i32* %xpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  %18 = load i32, i32* %xpos, align 4
  %19 = load i32, i32* %other, align 4
  %call18 = call i32 @is_self_atari(i32 %18, i32 %19)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.45, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.end
  %20 = load i32, i32* %xpos, align 4
  %21 = load i32, i32* %other, align 4
  %22 = load i32, i32* %str.addr, align 4
  %23 = load i32, i32* %komaster.addr, align 4
  %24 = load i32, i32* %kom_pos.addr, align 4
  %call21 = call i32 @trymove(i32 %20, i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i32 %22, i32 %23, i32 %24)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.45

if.then.23:                                       ; preds = %land.lhs.true.20
  %25 = load i32, i32* %str.addr, align 4
  %26 = load i32, i32* %komaster.addr, align 4
  %27 = load i32, i32* %kom_pos.addr, align 4
  %call24 = call i32 @do_find_defense(i32 %25, i32* null, i32 %26, i32 %27)
  store i32 %call24, i32* %dcode, align 4
  %28 = load i32, i32* %dcode, align 4
  %cmp25 = icmp ne i32 %28, 5
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.44

land.lhs.true.27:                                 ; preds = %if.then.23
  %29 = load i32, i32* %str.addr, align 4
  %30 = load i32, i32* %komaster.addr, align 4
  %31 = load i32, i32* %kom_pos.addr, align 4
  %call28 = call i32 @do_attack(i32 %29, i32* null, i32 %30, i32 %31)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %land.lhs.true.27
  %32 = load i32, i32* %dcode, align 4
  %cmp31 = icmp eq i32 %32, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  call void @popgo()
  %33 = load i32, i32* %xpos, align 4
  %34 = load i32*, i32** %move.addr, align 8
  store i32 %33, i32* %34, align 4
  store i32 5, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.30
  %35 = load i32, i32* %dcode, align 4
  %cmp35 = icmp ne i32 %35, 0
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.43

land.lhs.true.37:                                 ; preds = %if.end.34
  %36 = load i32, i32* %dcode, align 4
  %sub38 = sub nsw i32 5, %36
  %37 = load i32, i32* %savecode, align 4
  %cmp39 = icmp sgt i32 %sub38, %37
  br i1 %cmp39, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %land.lhs.true.37
  %38 = load i32, i32* %xpos, align 4
  store i32 %38, i32* %savemove, align 4
  %39 = load i32, i32* %dcode, align 4
  %sub42 = sub nsw i32 5, %39
  store i32 %sub42, i32* %savecode, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %land.lhs.true.37, %if.end.34
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.27, %if.then.23
  call void @popgo()
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %land.lhs.true.20, %if.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %savecode, align 4
  %cmp47 = icmp ne i32 %41, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  %42 = load i32, i32* %savemove, align 4
  %43 = load i32*, i32** %move.addr, align 8
  store i32 %42, i32* %43, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end
  %44 = load i32, i32* %savecode, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.33
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @special_attack3(i32 %str, i32* %libs, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %acode = alloca i32, align 4
  %dcode = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %newlibs = alloca [2 x i32], align 4
  %xpos = alloca i32, align 4
  %ypos = alloca i32, align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 3326, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %4, 2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i32*, i32** %libs.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  store i32 %7, i32* %apos, align 4
  %8 = load i32, i32* %k, align 4
  %sub6 = sub nsw i32 1, %8
  %idxprom7 = sext i32 %sub6 to i64
  %9 = load i32*, i32** %libs.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  store i32 %10, i32* %bpos, align 4
  %11 = load i32, i32* %apos, align 4
  %12 = load i32, i32* %bpos, align 4
  %add = add nsw i32 %12, 20
  %cmp9 = icmp eq i32 %11, %add
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %apos, align 4
  %14 = load i32, i32* %bpos, align 4
  %sub11 = sub nsw i32 %14, 20
  %cmp12 = icmp eq i32 %13, %sub11
  br i1 %cmp12, label %if.then.14, label %if.else.35

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %15 = load i32, i32* %apos, align 4
  %sub15 = sub nsw i32 %15, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.then.14
  %17 = load i32, i32* %apos, align 4
  %sub22 = sub nsw i32 %17, 1
  store i32 %sub22, i32* %xpos, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %if.then.14
  %18 = load i32, i32* %apos, align 4
  %add24 = add nsw i32 %18, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %19 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.23
  %20 = load i32, i32* %apos, align 4
  %add31 = add nsw i32 %20, 1
  store i32 %add31, i32* %xpos, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.else.23
  br label %for.inc

if.end.33:                                        ; preds = %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.21
  br label %if.end.66

if.else.35:                                       ; preds = %lor.lhs.false
  %21 = load i32, i32* %apos, align 4
  %22 = load i32, i32* %bpos, align 4
  %sub36 = sub nsw i32 %22, 1
  %cmp37 = icmp eq i32 %21, %sub36
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.else.35
  %23 = load i32, i32* %apos, align 4
  %24 = load i32, i32* %bpos, align 4
  %add40 = add nsw i32 %24, 1
  %cmp41 = icmp eq i32 %23, %add40
  br i1 %cmp41, label %if.then.43, label %if.else.64

if.then.43:                                       ; preds = %lor.lhs.false.39, %if.else.35
  %25 = load i32, i32* %apos, align 4
  %add44 = add nsw i32 %25, 20
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom45
  %26 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %26 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.then.43
  %27 = load i32, i32* %apos, align 4
  %add51 = add nsw i32 %27, 20
  store i32 %add51, i32* %xpos, align 4
  br label %if.end.63

if.else.52:                                       ; preds = %if.then.43
  %28 = load i32, i32* %apos, align 4
  %sub53 = sub nsw i32 %28, 20
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %29 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %29 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.else.52
  %30 = load i32, i32* %apos, align 4
  %sub60 = sub nsw i32 %30, 20
  store i32 %sub60, i32* %xpos, align 4
  br label %if.end.62

if.else.61:                                       ; preds = %if.else.52
  br label %for.inc

if.end.62:                                        ; preds = %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.50
  br label %if.end.65

if.else.64:                                       ; preds = %lor.lhs.false.39
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.63
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.34
  %31 = load i32, i32* %xpos, align 4
  %32 = load i32, i32* %other, align 4
  %call67 = call i32 @is_self_atari(i32 %31, i32 %32)
  %tobool = icmp ne i32 %call67, 0
  br i1 %tobool, label %if.then.71, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.66
  %33 = load i32, i32* %xpos, align 4
  %34 = load i32, i32* %other, align 4
  %35 = load i32, i32* %str.addr, align 4
  %36 = load i32, i32* %komaster.addr, align 4
  %37 = load i32, i32* %kom_pos.addr, align 4
  %call69 = call i32 @trymove(i32 %33, i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0), i32 %35, i32 %36, i32 %37)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %lor.lhs.false.68, %if.end.66
  br label %for.inc

if.end.72:                                        ; preds = %lor.lhs.false.68
  %38 = load i32, i32* %xpos, align 4
  %call73 = call i32 @countlib(i32 %38)
  %cmp74 = icmp eq i32 %call73, 2
  br i1 %cmp74, label %if.then.76, label %if.end.104

if.then.76:                                       ; preds = %if.end.72
  %39 = load i32, i32* %xpos, align 4
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %newlibs, i32 0, i32 0
  %call77 = call i32 @findlib(i32 %39, i32 2, i32* %arraydecay)
  %arrayidx78 = getelementptr inbounds [2 x i32], [2 x i32]* %newlibs, i32 0, i64 0
  %40 = load i32, i32* %arrayidx78, align 4
  %41 = load i32, i32* %apos, align 4
  %cmp79 = icmp eq i32 %40, %41
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.then.76
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %newlibs, i32 0, i64 1
  %42 = load i32, i32* %arrayidx82, align 4
  store i32 %42, i32* %ypos, align 4
  br label %if.end.85

if.else.83:                                       ; preds = %if.then.76
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %newlibs, i32 0, i64 0
  %43 = load i32, i32* %arrayidx84, align 4
  store i32 %43, i32* %ypos, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.81
  %44 = load i32, i32* %ypos, align 4
  %45 = load i32, i32* %color, align 4
  %call86 = call i32 @is_self_atari(i32 %44, i32 %45)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.103, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.85
  %46 = load i32, i32* %ypos, align 4
  %47 = load i32, i32* %color, align 4
  %48 = load i32, i32* %str.addr, align 4
  %49 = load i32, i32* %komaster.addr, align 4
  %50 = load i32, i32* %kom_pos.addr, align 4
  %call88 = call i32 @trymove(i32 %46, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i32 0, i32 0), i32 %48, i32 %49, i32 %50)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.103

if.then.90:                                       ; preds = %land.lhs.true
  %51 = load i32, i32* %str.addr, align 4
  %52 = load i32, i32* %komaster.addr, align 4
  %53 = load i32, i32* %kom_pos.addr, align 4
  %call91 = call i32 @do_attack(i32 %51, i32* null, i32 %52, i32 %53)
  store i32 %call91, i32* %acode, align 4
  %54 = load i32, i32* %acode, align 4
  %cmp92 = icmp eq i32 %54, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.then.90
  call void @popgo()
  call void @popgo()
  br label %for.inc

if.end.95:                                        ; preds = %if.then.90
  %55 = load i32, i32* %acode, align 4
  %cmp96 = icmp ne i32 %55, 5
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.102

land.lhs.true.98:                                 ; preds = %if.end.95
  %56 = load i32, i32* %acode, align 4
  %57 = load i32, i32* %savecode, align 4
  %cmp99 = icmp sgt i32 %56, %57
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %land.lhs.true.98
  %58 = load i32, i32* %xpos, align 4
  store i32 %58, i32* %savemove, align 4
  %59 = load i32, i32* %acode, align 4
  store i32 %59, i32* %savecode, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %land.lhs.true.98, %if.end.95
  call void @popgo()
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true, %if.end.85
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.72
  %60 = load i32, i32* %str.addr, align 4
  %61 = load i32, i32* %komaster.addr, align 4
  %62 = load i32, i32* %kom_pos.addr, align 4
  %call105 = call i32 @do_find_defense(i32 %60, i32* null, i32 %61, i32 %62)
  store i32 %call105, i32* %dcode, align 4
  %63 = load i32, i32* %dcode, align 4
  %cmp106 = icmp ne i32 %63, 5
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.125

land.lhs.true.108:                                ; preds = %if.end.104
  %64 = load i32, i32* %str.addr, align 4
  %65 = load i32, i32* %komaster.addr, align 4
  %66 = load i32, i32* %kom_pos.addr, align 4
  %call109 = call i32 @do_attack(i32 %64, i32* null, i32 %65, i32 %66)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.125

if.then.111:                                      ; preds = %land.lhs.true.108
  %67 = load i32, i32* %dcode, align 4
  %cmp112 = icmp eq i32 %67, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.111
  call void @popgo()
  %68 = load i32, i32* %xpos, align 4
  %69 = load i32*, i32** %move.addr, align 8
  store i32 %68, i32* %69, align 4
  store i32 5, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.then.111
  %70 = load i32, i32* %dcode, align 4
  %cmp116 = icmp ne i32 %70, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.124

land.lhs.true.118:                                ; preds = %if.end.115
  %71 = load i32, i32* %dcode, align 4
  %sub119 = sub nsw i32 5, %71
  %72 = load i32, i32* %savecode, align 4
  %cmp120 = icmp sgt i32 %sub119, %72
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %land.lhs.true.118
  %73 = load i32, i32* %xpos, align 4
  store i32 %73, i32* %savemove, align 4
  %74 = load i32, i32* %dcode, align 4
  %sub123 = sub nsw i32 5, %74
  store i32 %sub123, i32* %savecode, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.118, %if.end.115
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %land.lhs.true.108, %if.end.104
  call void @popgo()
  br label %for.inc

for.inc:                                          ; preds = %if.end.125, %if.then.94, %if.then.71, %if.else.61, %if.else.32
  %75 = load i32, i32* %k, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load i32, i32* %savecode, align 4
  %cmp126 = icmp ne i32 %76, 0
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %for.end
  %77 = load i32, i32* %savemove, align 4
  %78 = load i32*, i32** %move.addr, align 8
  store i32 %77, i32* %78, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %for.end
  %79 = load i32, i32* %savecode, align 4
  store i32 %79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.129, %if.then.114, %if.else.64
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @special_attack4(i32 %str, i32* %libs, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %dcode = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %adj2 = alloca i32, align 4
  %adjs2 = alloca [160 x i32], align 16
  %libs2 = alloca [2 x i32], align 4
  %apos = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %dpos = alloca i32, align 4
  %epos = alloca i32, align 4
  %dlibs = alloca i32, align 4
  %elibs = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i32 0, i32* %bpos, align 4
  %3 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %3)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 3426, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32*, i32** %libs.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %other, align 4
  %call3 = call i32 @is_self_atari(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32*, i32** %libs.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32, i32* %other, align 4
  %call5 = call i32 @is_self_atari(i32 %8, i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %10 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call9 = call i32 @chainlinks2(i32 %10, i32* %arraydecay, i32 2)
  store i32 %call9, i32* %adj, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %if.end.8
  %11 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %11, 2
  br i1 %cmp10, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32*, i32** %libs.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  store i32 %14, i32* %apos, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %15 = load i32, i32* %s, align 4
  %16 = load i32, i32* %adj, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %17 = load i32, i32* %apos, align 4
  %18 = load i32, i32* %s, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom18
  %19 = load i32, i32* %arrayidx19, align 4
  %call20 = call i32 @liberty_of_string(i32 %17, i32 %19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %for.body.17
  %20 = load i32, i32* %s, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom23
  %21 = load i32, i32* %arrayidx24, align 4
  store i32 %21, i32* %bpos, align 4
  br label %for.end

if.end.25:                                        ; preds = %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %22 = load i32, i32* %s, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.22, %for.cond.14
  %23 = load i32, i32* %s, align 4
  %24 = load i32, i32* %adj, align 4
  %cmp26 = icmp eq i32 %23, %24
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  br label %for.inc.97

if.end.29:                                        ; preds = %for.end
  %25 = load i32, i32* %bpos, align 4
  %arraydecay30 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i32 0
  %call31 = call i32 @chainlinks2(i32 %25, i32* %arraydecay30, i32 2)
  store i32 %call31, i32* %adj2, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.94, %if.end.29
  %26 = load i32, i32* %s, align 4
  %27 = load i32, i32* %adj2, align 4
  %cmp33 = icmp slt i32 %26, %27
  br i1 %cmp33, label %for.body.35, label %for.end.96

for.body.35:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %s, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs2, i32 0, i64 %idxprom36
  %29 = load i32, i32* %arrayidx37, align 4
  store i32 %29, i32* %cpos, align 4
  %30 = load i32, i32* %cpos, align 4
  %31 = load i32, i32* %str.addr, align 4
  %call38 = call i32 @same_string(i32 %30, i32 %31)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.35
  br label %for.inc.94

if.end.41:                                        ; preds = %for.body.35
  %32 = load i32, i32* %cpos, align 4
  %arraydecay42 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i32 0
  %call43 = call i32 @findlib(i32 %32, i32 2, i32* %arraydecay42)
  store i32 0, i32* %t, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.91, %if.end.41
  %33 = load i32, i32* %t, align 4
  %cmp45 = icmp slt i32 %33, 2
  br i1 %cmp45, label %for.body.47, label %for.end.93

for.body.47:                                      ; preds = %for.cond.44
  %34 = load i32, i32* %t, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 %idxprom48
  %35 = load i32, i32* %arrayidx49, align 4
  store i32 %35, i32* %dpos, align 4
  %36 = load i32, i32* %t, align 4
  %sub50 = sub nsw i32 1, %36
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %libs2, i32 0, i64 %idxprom51
  %37 = load i32, i32* %arrayidx52, align 4
  store i32 %37, i32* %epos, align 4
  %38 = load i32, i32* %dpos, align 4
  %39 = load i32, i32* %other, align 4
  %call53 = call i32 @is_self_atari(i32 %38, i32 %39)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.body.47
  br label %for.inc.91

if.end.56:                                        ; preds = %for.body.47
  %40 = load i32, i32* %epos, align 4
  %41 = load i32, i32* %color, align 4
  %call57 = call i32 @approxlib(i32 %40, i32 %41, i32 4, i32* null)
  store i32 %call57, i32* %elibs, align 4
  %42 = load i32, i32* %elibs, align 4
  %cmp58 = icmp sgt i32 %42, 3
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.56
  br label %for.inc.91

if.end.61:                                        ; preds = %if.end.56
  %43 = load i32, i32* %dpos, align 4
  %44 = load i32, i32* %other, align 4
  %call62 = call i32 @approxlib(i32 %43, i32 %44, i32 3, i32* null)
  store i32 %call62, i32* %dlibs, align 4
  %45 = load i32, i32* %elibs, align 4
  %46 = load i32, i32* %dlibs, align 4
  %cmp63 = icmp sgt i32 %45, %46
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.61
  br label %for.inc.91

if.end.66:                                        ; preds = %if.end.61
  %47 = load i32, i32* %dpos, align 4
  %48 = load i32, i32* %other, align 4
  %49 = load i32, i32* %str.addr, align 4
  %50 = load i32, i32* %komaster.addr, align 4
  %51 = load i32, i32* %kom_pos.addr, align 4
  %call67 = call i32 @trymove(i32 %47, i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0), i32 %49, i32 %50, i32 %51)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.90

if.then.69:                                       ; preds = %if.end.66
  %52 = load i32, i32* %str.addr, align 4
  %53 = load i32, i32* %komaster.addr, align 4
  %54 = load i32, i32* %kom_pos.addr, align 4
  %call70 = call i32 @do_find_defense(i32 %52, i32* null, i32 %53, i32 %54)
  store i32 %call70, i32* %dcode, align 4
  %55 = load i32, i32* %dcode, align 4
  %cmp71 = icmp ne i32 %55, 5
  br i1 %cmp71, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %if.then.69
  %56 = load i32, i32* %str.addr, align 4
  %57 = load i32, i32* %komaster.addr, align 4
  %58 = load i32, i32* %kom_pos.addr, align 4
  %call73 = call i32 @do_attack(i32 %56, i32* null, i32 %57, i32 %58)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %land.lhs.true
  %59 = load i32, i32* %dcode, align 4
  %cmp76 = icmp eq i32 %59, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  call void @popgo()
  %60 = load i32, i32* %dpos, align 4
  %61 = load i32*, i32** %move.addr, align 8
  store i32 %60, i32* %61, align 4
  store i32 5, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.75
  %62 = load i32, i32* %dcode, align 4
  %cmp80 = icmp ne i32 %62, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.88

land.lhs.true.82:                                 ; preds = %if.end.79
  %63 = load i32, i32* %dcode, align 4
  %sub83 = sub nsw i32 5, %63
  %64 = load i32, i32* %savecode, align 4
  %cmp84 = icmp sgt i32 %sub83, %64
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %land.lhs.true.82
  %65 = load i32, i32* %dpos, align 4
  store i32 %65, i32* %savemove, align 4
  %66 = load i32, i32* %dcode, align 4
  %sub87 = sub nsw i32 5, %66
  store i32 %sub87, i32* %savecode, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %land.lhs.true.82, %if.end.79
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %land.lhs.true, %if.then.69
  call void @popgo()
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.66
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90, %if.then.65, %if.then.60, %if.then.55
  %67 = load i32, i32* %t, align 4
  %inc92 = add nsw i32 %67, 1
  store i32 %inc92, i32* %t, align 4
  br label %for.cond.44

for.end.93:                                       ; preds = %for.cond.44
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93, %if.then.40
  %68 = load i32, i32* %s, align 4
  %inc95 = add nsw i32 %68, 1
  store i32 %inc95, i32* %s, align 4
  br label %for.cond.32

for.end.96:                                       ; preds = %for.cond.32
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96, %if.then.28
  %69 = load i32, i32* %k, align 4
  %inc98 = add nsw i32 %69, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  %70 = load i32, i32* %savecode, align 4
  %cmp100 = icmp ne i32 %70, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.end.99
  %71 = load i32, i32* %savemove, align 4
  %72 = load i32*, i32** %move.addr, align 8
  store i32 %71, i32* %72, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %for.end.99
  %73 = load i32, i32* %savecode, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %if.end.103, %if.then.78, %if.then.7
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @edge_closing_backfill(i32 %str, i32 %apos, i32* %move) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %k = alloca i32, align 4
  %bpos = alloca i32, align 4
  %cpos = alloca i32, align 4
  %number_x = alloca i32, align 4
  %number_o = alloca i32, align 4
  %up = alloca i32, align 4
  %right = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  store i32 %5, i32* %up, align 4
  %6 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, 1
  %rem = srem i32 %add, 4
  %idxprom4 = sext i32 %rem to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  store i32 %7, i32* %right, align 4
  %8 = load i32, i32* %apos.addr, align 4
  %9 = load i32, i32* %up, align 4
  %sub6 = sub nsw i32 %8, %9
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %apos.addr, align 4
  %12 = load i32, i32* %up, align 4
  %add12 = add nsw i32 %11, %12
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %13 to i32
  %14 = load i32, i32* %color, align 4
  %cmp16 = icmp ne i32 %conv15, %14
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  %15 = load i32, i32* %apos.addr, align 4
  %16 = load i32, i32* %right, align 4
  %add20 = add nsw i32 %15, %16
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %17 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.19
  %18 = load i32, i32* %apos.addr, align 4
  %19 = load i32, i32* %right, align 4
  %sub26 = sub nsw i32 %18, %19
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %20 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %20 to i32
  %cmp30 = icmp ne i32 %conv29, 3
  br i1 %cmp30, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load i32, i32* %apos.addr, align 4
  %22 = load i32, i32* %right, align 4
  %sub32 = sub nsw i32 %21, %22
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %23 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %23 to i32
  %24 = load i32, i32* %color, align 4
  %cmp36 = icmp eq i32 %conv35, %24
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %if.end.63

if.else:                                          ; preds = %lor.lhs.false, %if.end.19
  %25 = load i32, i32* %apos.addr, align 4
  %26 = load i32, i32* %right, align 4
  %sub39 = sub nsw i32 %25, %26
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom40
  %27 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %27 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.61

land.lhs.true.45:                                 ; preds = %if.else
  %28 = load i32, i32* %apos.addr, align 4
  %29 = load i32, i32* %right, align 4
  %add46 = add nsw i32 %28, %29
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom47
  %30 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %30 to i32
  %cmp50 = icmp ne i32 %conv49, 3
  br i1 %cmp50, label %lor.lhs.false.52, label %if.then.59

lor.lhs.false.52:                                 ; preds = %land.lhs.true.45
  %31 = load i32, i32* %apos.addr, align 4
  %32 = load i32, i32* %right, align 4
  %add53 = add nsw i32 %31, %32
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %33 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %33 to i32
  %34 = load i32, i32* %color, align 4
  %cmp57 = icmp eq i32 %conv56, %34
  br i1 %cmp57, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %lor.lhs.false.52, %land.lhs.true.45
  %35 = load i32, i32* %right, align 4
  %sub60 = sub nsw i32 0, %35
  store i32 %sub60, i32* %right, align 4
  br label %if.end.62

if.else.61:                                       ; preds = %lor.lhs.false.52, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.38
  %36 = load i32, i32* %apos.addr, align 4
  %37 = load i32, i32* %up, align 4
  %add64 = add nsw i32 %36, %37
  %38 = load i32, i32* %right, align 4
  %add65 = add nsw i32 %add64, %38
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom66
  %39 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %39 to i32
  %40 = load i32, i32* %other, align 4
  %cmp69 = icmp ne i32 %conv68, %40
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.63
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.end.63
  %41 = load i32, i32* %apos.addr, align 4
  %42 = load i32, i32* %up, align 4
  %add73 = add nsw i32 %41, %42
  %43 = load i32, i32* %right, align 4
  %mul = mul nsw i32 2, %43
  %add74 = add nsw i32 %add73, %mul
  store i32 %add74, i32* %bpos, align 4
  %44 = load i32, i32* %bpos, align 4
  %idxprom75 = sext i32 %44 to i64
  %arrayidx76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom75
  %45 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %45 to i32
  %cmp78 = icmp ne i32 %conv77, 3
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.72
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.72
  %46 = load i32, i32* %apos.addr, align 4
  %47 = load i32, i32* %right, align 4
  %mul82 = mul nsw i32 2, %47
  %add83 = add nsw i32 %46, %mul82
  store i32 %add83, i32* %cpos, align 4
  store i32 0, i32* %number_x, align 4
  store i32 0, i32* %number_o, align 4
  %48 = load i32, i32* %bpos, align 4
  %idxprom84 = sext i32 %48 to i64
  %arrayidx85 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom84
  %49 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %49 to i32
  %50 = load i32, i32* %color, align 4
  %cmp87 = icmp eq i32 %conv86, %50
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %if.end.81
  %51 = load i32, i32* %number_x, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %number_x, align 4
  br label %if.end.99

if.else.90:                                       ; preds = %if.end.81
  %52 = load i32, i32* %bpos, align 4
  %idxprom91 = sext i32 %52 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %53 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %53 to i32
  %54 = load i32, i32* %other, align 4
  %cmp94 = icmp eq i32 %conv93, %54
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.else.90
  %55 = load i32, i32* %number_o, align 4
  %inc97 = add nsw i32 %55, 1
  store i32 %inc97, i32* %number_o, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.else.90
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.89
  %56 = load i32, i32* %cpos, align 4
  %idxprom100 = sext i32 %56 to i64
  %arrayidx101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom100
  %57 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %57 to i32
  %58 = load i32, i32* %color, align 4
  %cmp103 = icmp eq i32 %conv102, %58
  br i1 %cmp103, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.end.99
  %59 = load i32, i32* %number_x, align 4
  %inc106 = add nsw i32 %59, 1
  store i32 %inc106, i32* %number_x, align 4
  br label %if.end.116

if.else.107:                                      ; preds = %if.end.99
  %60 = load i32, i32* %cpos, align 4
  %idxprom108 = sext i32 %60 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %61 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %61 to i32
  %62 = load i32, i32* %other, align 4
  %cmp111 = icmp eq i32 %conv110, %62
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.else.107
  %63 = load i32, i32* %number_o, align 4
  %inc114 = add nsw i32 %63, 1
  store i32 %inc114, i32* %number_o, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.else.107
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.105
  %64 = load i32, i32* %number_o, align 4
  %65 = load i32, i32* %number_x, align 4
  %cmp117 = icmp sgt i32 %64, %65
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.116
  %66 = load i32, i32* %apos.addr, align 4
  %67 = load i32, i32* %right, align 4
  %add121 = add nsw i32 %66, %67
  %68 = load i32*, i32** %move.addr, align 8
  store i32 %add121, i32* %68, align 4
  store i32 5, i32* %retval
  br label %return

for.inc:                                          ; preds = %if.then
  %69 = load i32, i32* %k, align 4
  %inc122 = add nsw i32 %69, 1
  store i32 %inc122, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.120, %if.then.119, %if.then.80, %if.then.71, %if.else.61, %if.then.18
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @find_cap(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %alib = alloca i32, align 4
  %blib = alloca i32, align 4
  %numlibs = alloca i32, align 4
  %libs = alloca [4 x i32], align 16
  %xpos = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %acode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %xpos, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %0, i32 4, i32* %arraydecay)
  store i32 %call, i32* %numlibs, align 4
  %1 = load i32, i32* %numlibs, align 4
  %cmp = icmp sgt i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %numlibs, align 4
  %cmp1 = icmp slt i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %numlibs, align 4
  %sub = sub nsw i32 %4, 1
  %cmp2 = icmp slt i32 %3, %sub
  br i1 %cmp2, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %numlibs, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %alib, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  store i32 %11, i32* %blib, align 4
  %12 = load i32, i32* %str.addr, align 4
  %13 = load i32, i32* %alib, align 4
  %14 = load i32, i32* %blib, align 4
  %15 = load i32, i32* %komaster.addr, align 4
  %16 = load i32, i32* %kom_pos.addr, align 4
  %call8 = call i32 @find_cap2(i32 %12, i32 %13, i32 %14, i32* %xpos, i32 %15, i32 %16)
  store i32 %call8, i32* %acode, align 4
  %17 = load i32, i32* %acode, align 4
  %cmp9 = icmp eq i32 %17, 5
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body.5
  %18 = load i32, i32* %xpos, align 4
  %19 = load i32*, i32** %move.addr, align 8
  store i32 %18, i32* %19, align 4
  store i32 5, i32* %retval
  br label %return

if.end.11:                                        ; preds = %for.body.5
  %20 = load i32, i32* %acode, align 4
  %cmp12 = icmp ne i32 %20, 5
  br i1 %cmp12, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end.11
  %21 = load i32, i32* %acode, align 4
  %22 = load i32, i32* %savecode, align 4
  %cmp13 = icmp sgt i32 %21, %22
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %xpos, align 4
  store i32 %23, i32* %savemove, align 4
  %24 = load i32, i32* %acode, align 4
  store i32 %24, i32* %savecode, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %27 = load i32, i32* %savecode, align 4
  %cmp19 = icmp ne i32 %27, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end.18
  %28 = load i32, i32* %savemove, align 4
  %29 = load i32*, i32** %move.addr, align 8
  store i32 %28, i32* %29, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %for.end.18
  %30 = load i32, i32* %savecode, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.10, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @draw_back(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %adj = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %libs = alloca [2 x i32], align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %dcode = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  %0 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call = call i32 @chainlinks2(i32 %0, i32* %arraydecay, i32 2)
  store i32 %call, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %entry
  %1 = load i32, i32* %r, align 4
  %2 = load i32, i32* %adj, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.124

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i32 0
  %call2 = call i32 @findlib(i32 %4, i32 2, i32* %arraydecay1)
  store i32 0, i32* %k, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %k, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %8 = load i32, i32* %str.addr, align 4
  %call8 = call i32 @liberty_of_string(i32 %7, i32 %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.121, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.5
  %9 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %add = add nsw i32 %10, 20
  %cmp11 = icmp ult i32 %add, 421
  br i1 %cmp11, label %land.lhs.true.12, label %lor.lhs.false

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  %add15 = add nsw i32 %12, 20
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %13 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %13 to i32
  %cmp18 = icmp ne i32 %conv, 3
  br i1 %cmp18, label %land.lhs.true.20, label %lor.lhs.false

land.lhs.true.20:                                 ; preds = %land.lhs.true.12
  %14 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom21
  %15 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %15, 20
  %16 = load i32, i32* %str.addr, align 4
  %call24 = call i32 @liberty_of_string(i32 %add23, i32 %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20, %land.lhs.true.12, %land.lhs.true
  %17 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom26
  %18 = load i32, i32* %arrayidx27, align 4
  %sub = sub nsw i32 %18, 1
  %cmp28 = icmp ult i32 %sub, 421
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.45

land.lhs.true.30:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %19 to i64
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom31
  %20 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %20, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %21 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %21 to i32
  %cmp37 = icmp ne i32 %conv36, 3
  br i1 %cmp37, label %land.lhs.true.39, label %lor.lhs.false.45

land.lhs.true.39:                                 ; preds = %land.lhs.true.30
  %22 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %22 to i64
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom40
  %23 = load i32, i32* %arrayidx41, align 4
  %sub42 = sub nsw i32 %23, 1
  %24 = load i32, i32* %str.addr, align 4
  %call43 = call i32 @liberty_of_string(i32 %sub42, i32 %24)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.39, %land.lhs.true.30, %lor.lhs.false
  %25 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %25 to i64
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom46
  %26 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %26, 20
  %cmp49 = icmp ult i32 %sub48, 421
  br i1 %cmp49, label %land.lhs.true.51, label %lor.lhs.false.66

land.lhs.true.51:                                 ; preds = %lor.lhs.false.45
  %27 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %27 to i64
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom52
  %28 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub nsw i32 %28, 20
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %29 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %29 to i32
  %cmp58 = icmp ne i32 %conv57, 3
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.66

land.lhs.true.60:                                 ; preds = %land.lhs.true.51
  %30 = load i32, i32* %k, align 4
  %idxprom61 = sext i32 %30 to i64
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom61
  %31 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %31, 20
  %32 = load i32, i32* %str.addr, align 4
  %call64 = call i32 @liberty_of_string(i32 %sub63, i32 %32)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true.60, %land.lhs.true.51, %lor.lhs.false.45
  %33 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %33 to i64
  %arrayidx68 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom67
  %34 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %34, 1
  %cmp70 = icmp ult i32 %add69, 421
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.121

land.lhs.true.72:                                 ; preds = %lor.lhs.false.66
  %35 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %35 to i64
  %arrayidx74 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom73
  %36 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %36, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %37 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %37 to i32
  %cmp79 = icmp ne i32 %conv78, 3
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.121

land.lhs.true.81:                                 ; preds = %land.lhs.true.72
  %38 = load i32, i32* %k, align 4
  %idxprom82 = sext i32 %38 to i64
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom82
  %39 = load i32, i32* %arrayidx83, align 4
  %add84 = add nsw i32 %39, 1
  %40 = load i32, i32* %str.addr, align 4
  %call85 = call i32 @liberty_of_string(i32 %add84, i32 %40)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then, label %if.end.121

if.then:                                          ; preds = %land.lhs.true.81, %land.lhs.true.60, %land.lhs.true.39, %land.lhs.true.20
  %41 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %41 to i64
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom87
  %42 = load i32, i32* %arrayidx88, align 4
  %43 = load i32, i32* %str.addr, align 4
  %idxprom89 = sext i32 %43 to i64
  %arrayidx90 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom89
  %44 = load i8, i8* %arrayidx90, align 1
  %conv91 = zext i8 %44 to i32
  %sub92 = sub nsw i32 3, %conv91
  %45 = load i32, i32* %str.addr, align 4
  %46 = load i32, i32* %komaster.addr, align 4
  %47 = load i32, i32* %kom_pos.addr, align 4
  %call93 = call i32 @trymove(i32 %42, i32 %sub92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 %45, i32 %46, i32 %47)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.120

if.then.95:                                       ; preds = %if.then
  %48 = load i32, i32* %str.addr, align 4
  %49 = load i32, i32* %komaster.addr, align 4
  %50 = load i32, i32* %kom_pos.addr, align 4
  %call96 = call i32 @do_find_defense(i32 %48, i32* null, i32 %49, i32 %50)
  store i32 %call96, i32* %dcode, align 4
  %51 = load i32, i32* %dcode, align 4
  %cmp97 = icmp ne i32 %51, 5
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.119

land.lhs.true.99:                                 ; preds = %if.then.95
  %52 = load i32, i32* %str.addr, align 4
  %53 = load i32, i32* %komaster.addr, align 4
  %54 = load i32, i32* %kom_pos.addr, align 4
  %call100 = call i32 @do_attack(i32 %52, i32* null, i32 %53, i32 %54)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.119

if.then.102:                                      ; preds = %land.lhs.true.99
  %55 = load i32, i32* %dcode, align 4
  %cmp103 = icmp eq i32 %55, 0
  br i1 %cmp103, label %if.then.105, label %if.end

if.then.105:                                      ; preds = %if.then.102
  call void @popgo()
  %56 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom106
  %57 = load i32, i32* %arrayidx107, align 4
  %58 = load i32*, i32** %move.addr, align 8
  store i32 %57, i32* %58, align 4
  store i32 5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.102
  %59 = load i32, i32* %dcode, align 4
  %cmp108 = icmp ne i32 %59, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.118

land.lhs.true.110:                                ; preds = %if.end
  %60 = load i32, i32* %dcode, align 4
  %sub111 = sub nsw i32 5, %60
  %61 = load i32, i32* %savecode, align 4
  %cmp112 = icmp sgt i32 %sub111, %61
  br i1 %cmp112, label %if.then.114, label %if.end.118

if.then.114:                                      ; preds = %land.lhs.true.110
  %62 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %62 to i64
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %libs, i32 0, i64 %idxprom115
  %63 = load i32, i32* %arrayidx116, align 4
  store i32 %63, i32* %savemove, align 4
  %64 = load i32, i32* %dcode, align 4
  %sub117 = sub nsw i32 5, %64
  store i32 %sub117, i32* %savecode, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.114, %land.lhs.true.110, %if.end
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %land.lhs.true.99, %if.then.95
  call void @popgo()
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.81, %land.lhs.true.72, %lor.lhs.false.66, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %65 = load i32, i32* %k, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end
  %66 = load i32, i32* %r, align 4
  %inc123 = add nsw i32 %66, 1
  store i32 %inc123, i32* %r, align 4
  br label %for.cond

for.end.124:                                      ; preds = %for.cond
  %67 = load i32, i32* %savecode, align 4
  %cmp125 = icmp ne i32 %67, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.124
  %68 = load i32, i32* %savemove, align 4
  %69 = load i32*, i32** %move.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.124
  %70 = load i32, i32* %savecode, align 4
  store i32 %70, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.then.105
  %71 = load i32, i32* %retval
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @simple_ladder_defend(i32 %str, i32* %move, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %xpos = alloca i32, align 4
  %lib = alloca i32, align 4
  %moves = alloca %struct.reading_moves, align 4
  %savemove = alloca i32, align 4
  %savecode = alloca i32, align 4
  %k = alloca i32, align 4
  %read_function_name = alloca i8*, align 8
  %q = alloca i32, align 4
  %new_komaster = alloca i32, align 4
  %new_kom_pos = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %acode = alloca i32, align 4
  %new_libs = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  store i32 0, i32* %savemove, align 4
  store i32 0, i32* %savecode, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i8** %read_function_name, align 8
  %2 = load i32, i32* %str.addr, align 4
  store i32 %2, i32* %q, align 4
  %3 = load i32, i32* @reading_node_counter, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @reading_node_counter, align 4
  %num = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 0, i32* %num, align 4
  %4 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4784, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %str.addr, align 4
  %call = call i32 @countlib(i32 %8)
  %cmp10 = icmp eq i32 %call, 1
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end
  br label %if.end.15

if.else.13:                                       ; preds = %if.end
  %9 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %9, 20
  %sub = sub nsw i32 %div, 1
  %10 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %10, 20
  %sub14 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 4785, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i32 %sub, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  %11 = load i32, i32* %str.addr, align 4
  %call16 = call i32 @findlib(i32 %11, i32 1, i32* %lib)
  %12 = load i32, i32* %lib, align 4
  %pos = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [50 x i32], [50 x i32]* %pos, i32 0, i64 0
  store i32 %12, i32* %arrayidx17, align 4
  %score = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [50 x i32], [50 x i32]* %score, i32 0, i64 0
  store i32 0, i32* %arrayidx18, align 4
  %num19 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  store i32 1, i32* %num19, align 4
  %13 = load i32, i32* %str.addr, align 4
  call void @break_chain_moves(i32 %13, %struct.reading_moves* %moves)
  %14 = load i32, i32* %str.addr, align 4
  %15 = load i32, i32* %color, align 4
  %16 = load i8*, i8** %read_function_name, align 8
  call void @order_moves(i32 %14, %struct.reading_moves* %moves, i32 %15, i8* %16, i32 0)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %17 = load i32, i32* %k, align 4
  %num20 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 2
  %18 = load i32, i32* %num20, align 4
  %cmp21 = icmp slt i32 %17, %18
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %19 to i64
  %pos24 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %moves, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [50 x i32], [50 x i32]* %pos24, i32 0, i64 %idxprom23
  %20 = load i32, i32* %arrayidx25, align 4
  store i32 %20, i32* %xpos, align 4
  %21 = load i32, i32* %xpos, align 4
  %22 = load i32, i32* %color, align 4
  %23 = load i32, i32* %str.addr, align 4
  %24 = load i32, i32* %komaster.addr, align 4
  %25 = load i32, i32* %kom_pos.addr, align 4
  %26 = load i32, i32* %savecode, align 4
  %cmp26 = icmp eq i32 %26, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = call i32 @komaster_trymove(i32 %21, i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i32 %23, i32 %24, i32 %25, i32* %new_komaster, i32* %new_kom_pos, i32* %ko_move, i32 %conv27)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then.29, label %if.end.67

if.then.29:                                       ; preds = %for.body
  %27 = load i32, i32* %str.addr, align 4
  %call30 = call i32 @countlib(i32 %27)
  store i32 %call30, i32* %new_libs, align 4
  %28 = load i32, i32* %new_libs, align 4
  %cmp31 = icmp sgt i32 %28, 2
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.29
  store i32 0, i32* %acode, align 4
  br label %if.end.41

if.else.34:                                       ; preds = %if.then.29
  %29 = load i32, i32* %new_libs, align 4
  %cmp35 = icmp slt i32 %29, 2
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  store i32 5, i32* %acode, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %if.else.34
  %30 = load i32, i32* %str.addr, align 4
  %31 = load i32, i32* %new_komaster, align 4
  %32 = load i32, i32* %new_kom_pos, align 4
  %call39 = call i32 @simple_ladder_attack(i32 %30, i32* null, i32 %31, i32 %32)
  store i32 %call39, i32* %acode, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.33
  call void @popgo()
  %33 = load i32, i32* %ko_move, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.else.61, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  br label %do.body

do.body:                                          ; preds = %if.then.43
  %34 = load i32, i32* %acode, align 4
  %cmp44 = icmp eq i32 %34, 0
  br i1 %cmp44, label %if.then.46, label %if.else.53

if.then.46:                                       ; preds = %do.body
  %35 = load i32*, i32** %move.addr, align 8
  %tobool47 = icmp ne i32* %35, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.46
  %36 = load i32, i32* %xpos, align 4
  %37 = load i32*, i32** %move.addr, align 8
  store i32 %36, i32* %37, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.then.46
  %38 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool50 = icmp ne %struct.SGFTree_t* %38, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %39 = load i8*, i8** %read_function_name, align 8
  %40 = load i32, i32* %q, align 4
  %41 = load i32, i32* %xpos, align 4
  call void @sgf_trace(i8* %39, i32 %40, i32 %41, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.49
  store i32 5, i32* %retval
  br label %do.end.83

if.else.53:                                       ; preds = %do.body
  %42 = load i32, i32* %acode, align 4
  %sub54 = sub nsw i32 5, %42
  %43 = load i32, i32* %savecode, align 4
  %cmp55 = icmp sgt i32 %sub54, %43
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.else.53
  %44 = load i32, i32* %xpos, align 4
  store i32 %44, i32* %savemove, align 4
  %45 = load i32, i32* %acode, align 4
  %sub58 = sub nsw i32 5, %45
  store i32 %sub58, i32* %savecode, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.else.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59
  br label %do.end

do.end:                                           ; preds = %if.end.60
  br label %if.end.66

if.else.61:                                       ; preds = %if.end.41
  %46 = load i32, i32* %acode, align 4
  %cmp62 = icmp ne i32 %46, 5
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.else.61
  %47 = load i32, i32* %xpos, align 4
  store i32 %47, i32* %savemove, align 4
  store i32 1, i32* %savecode, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.else.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %do.end
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %48 = load i32, i32* %k, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.69

do.body.69:                                       ; preds = %for.end
  %49 = load i32, i32* %savecode, align 4
  %tobool70 = icmp ne i32 %49, 0
  br i1 %tobool70, label %if.then.71, label %if.else.78

if.then.71:                                       ; preds = %do.body.69
  %50 = load i32*, i32** %move.addr, align 8
  %tobool72 = icmp ne i32* %50, null
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.then.71
  %51 = load i32, i32* %savemove, align 4
  %52 = load i32*, i32** %move.addr, align 8
  store i32 %51, i32* %52, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.71
  %53 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool75 = icmp ne %struct.SGFTree_t* %53, null
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.74
  %54 = load i8*, i8** %read_function_name, align 8
  %55 = load i32, i32* %q, align 4
  %56 = load i32, i32* %savemove, align 4
  %57 = load i32, i32* %savecode, align 4
  call void @sgf_trace(i8* %54, i32 %55, i32 %56, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.74
  br label %if.end.82

if.else.78:                                       ; preds = %do.body.69
  %58 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool79 = icmp ne %struct.SGFTree_t* %58, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.else.78
  %59 = load i8*, i8** %read_function_name, align 8
  %60 = load i32, i32* %q, align 4
  call void @sgf_trace(i8* %59, i32 %60, i32 0, i32 0, i8* null)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.else.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.77
  %61 = load i32, i32* %savecode, align 4
  store i32 %61, i32* %retval
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.52, %if.end.82
  %62 = load i32, i32* %retval
  ret i32 %62
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
