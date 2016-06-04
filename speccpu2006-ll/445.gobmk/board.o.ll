; ModuleID = 'engine/board.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_data = type { [1 x i64] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.string_data = type { i32, i32, i32, i32, [20 x i32], i32, [160 x i32], i32 }
%struct.change_stack_entry = type { i32*, i32 }
%struct.vertex_stack_entry = type { i8*, i32 }
%struct.board_state = type { i32, [421 x i8], i32, i32, i32, [421 x i8], i32, i32, i32, [500 x i32], [500 x i32], i32, float, i32 }

@deltai = global [8 x i32] [i32 1, i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1, i32 1], align 16
@deltaj = global [8 x i32] [i32 0, i32 -1, i32 0, i32 1, i32 -1, i32 -1, i32 1, i32 1], align 16
@delta = global [8 x i32] [i32 20, i32 -1, i32 -20, i32 1, i32 19, i32 -21, i32 -19, i32 21], align 16
@stackp = external global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"engine/board.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@board_size = external global i32, align 4
@board = external global [421 x i8], align 16
@initial_board = external global [421 x i8], align 16
@board_ko_pos = external global i32, align 4
@white_captured = external global i32, align 4
@black_captured = external global i32, align 4
@initial_board_ko_pos = external global i32, align 4
@initial_white_captured = external global i32, align 4
@initial_black_captured = external global i32, align 4
@move_history_pointer = external global i32, align 4
@move_history_color = external global [500 x i32], align 16
@move_history_pos = external global [500 x i32], align 16
@komi = external global float, align 4
@movenum = external global i32, align 4
@hashdata = external global %struct.Hash_data, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"board_size > 0 && board_size <= 19\00", align 1
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s (variation %d, hash %lx, komaster %s:%s)\00", align 1
@count_variations = external global i32, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%s (variation %d, hash %lx)\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s at %s (variation %d, hash %lx, komaster %s:%s)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s at %s (variation %d, hash %lx)\00", align 1
@stats = external global %struct.stats_data, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"%s in semeai %s-%s (variation %d, value %d, owl_phase)\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"tryko: %s (variation %d, %lx, komaster %s:%s)\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"tryko: %s (variation %d, %lx)\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"tenuki (ko threat)\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"tenuki (answers ko threat)\00", align 1
@hashdata_stack = internal global [361 x %struct.Hash_data] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"(next variation: %d)\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%o%s:%1m \00", align 1
@move_color = internal global [361 x i32] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@stack = internal global [361 x i32] zeroinitializer, align 16
@.str.17 = private unnamed_addr constant [18 x i8] c"%o (variation %d)\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"board[pos] == EMPTY\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"color == WHITE || color == BLACK\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"pos == PASS_MOVE || ON_BOARD1(pos)\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"pos == PASS_MOVE || board[pos] == EMPTY\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"gnugo: Truncating search. This is beyond my reading ability!\0A\00", align 1
@allow_suicide = external global i32, align 4
@string_number = internal global [400 x i32] zeroinitializer, align 16
@string = internal global [240 x %struct.string_data] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[str])\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"libs != NULL\00", align 1
@liberty_mark = internal global i32 0, align 4
@ml = internal global [400 x i32] zeroinitializer, align 16
@next_stone = internal global [400 x i32] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [16 x i8] c"IS_STONE(color)\00", align 1
@string_mark = internal global i32 0, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(str1)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(str2)\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"IS_STONE(board[str1])\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"IS_STONE(board[str2])\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(str)\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"k < stackp\00", align 1
@stones_on_board.stone_count_for_position = internal global i32 -1, align 4
@stones_on_board.white_stones = internal global i32 0, align 4
@stones_on_board.black_stones = internal global i32 0, align 4
@position_number = external global i32, align 4
@trymove_counter = internal global i32 0, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"gray_white\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"gray_black\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"weak_ko\00", align 1
@komaster_to_string.b = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)], align 16
@.str.42 = private unnamed_addr constant [31 x i8] c"komaster >= 0 && komaster <= 6\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"color == 2 || color == 1\00", align 1
@shadow = external global [400 x i8], align 16
@verbose = external global i32, align 4
@change_stack_pointer = internal global %struct.change_stack_entry* null, align 8
@vertex_stack_pointer = internal global %struct.vertex_stack_entry* null, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"s >= 0\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@next_string = internal global i32 0, align 4
@.str.46 = private unnamed_addr constant [22 x i8] c"s < (2 * 19 * 19 / 3)\00", align 1
@change_stack = internal global [28880 x %struct.change_stack_entry] zeroinitializer, align 16
@.str.47 = private unnamed_addr constant [52 x i8] c"change_stack_pointer - change_stack <= 80 * 19 * 19\00", align 1
@vertex_stack = internal global [28880 x %struct.vertex_stack_entry] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @store_board(%struct.board_state* %state) #0 {
entry:
  %state.addr = alloca %struct.board_state*, align 8
  %k = alloca i32, align 4
  store %struct.board_state* %state, %struct.board_state** %state.addr, align 8
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @board_size, align 4
  %2 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board_size = getelementptr inbounds %struct.board_state, %struct.board_state* %2, i32 0, i32 0
  store i32 %1, i32* %board_size, align 4
  %3 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board = getelementptr inbounds %struct.board_state, %struct.board_state* %3, i32 0, i32 1
  %4 = bitcast [421 x i8]* %board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i64 421, i32 4, i1 false)
  %5 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_board = getelementptr inbounds %struct.board_state, %struct.board_state* %5, i32 0, i32 5
  %6 = bitcast [421 x i8]* %initial_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i64 421, i32 4, i1 false)
  %7 = load i32, i32* @board_ko_pos, align 4
  %8 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board_ko_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %8, i32 0, i32 2
  store i32 %7, i32* %board_ko_pos, align 4
  %9 = load i32, i32* @white_captured, align 4
  %10 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %white_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %10, i32 0, i32 4
  store i32 %9, i32* %white_captured, align 4
  %11 = load i32, i32* @black_captured, align 4
  %12 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %black_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %12, i32 0, i32 3
  store i32 %11, i32* %black_captured, align 4
  %13 = load i32, i32* @initial_board_ko_pos, align 4
  %14 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_board_ko_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %14, i32 0, i32 6
  store i32 %13, i32* %initial_board_ko_pos, align 4
  %15 = load i32, i32* @initial_white_captured, align 4
  %16 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_white_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %16, i32 0, i32 7
  store i32 %15, i32* %initial_white_captured, align 4
  %17 = load i32, i32* @initial_black_captured, align 4
  %18 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_black_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %18, i32 0, i32 8
  store i32 %17, i32* %initial_black_captured, align 4
  %19 = load i32, i32* @move_history_pointer, align 4
  %20 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_pointer = getelementptr inbounds %struct.board_state, %struct.board_state* %20, i32 0, i32 11
  store i32 %19, i32* %move_history_pointer, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* @move_history_pointer, align 4
  %cmp1 = icmp slt i32 %21, %22
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %k, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %25 to i64
  %26 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_color = getelementptr inbounds %struct.board_state, %struct.board_state* %26, i32 0, i32 9
  %arrayidx3 = getelementptr inbounds [500 x i32], [500 x i32]* %move_history_color, i32 0, i64 %idxprom2
  store i32 %24, i32* %arrayidx3, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %27 to i64
  %arrayidx5 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom4
  %28 = load i32, i32* %arrayidx5, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %29 to i64
  %30 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %30, i32 0, i32 10
  %arrayidx7 = getelementptr inbounds [500 x i32], [500 x i32]* %move_history_pos, i32 0, i64 %idxprom6
  store i32 %28, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load float, float* @komi, align 4
  %33 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %komi = getelementptr inbounds %struct.board_state, %struct.board_state* %33, i32 0, i32 12
  store float %32, float* %komi, align 4
  %34 = load i32, i32* @movenum, align 4
  %35 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_number = getelementptr inbounds %struct.board_state, %struct.board_state* %35, i32 0, i32 13
  store i32 %34, i32* %move_number, align 4
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @restore_board(%struct.board_state* %state) #0 {
entry:
  %state.addr = alloca %struct.board_state*, align 8
  %k = alloca i32, align 4
  store %struct.board_state* %state, %struct.board_state** %state.addr, align 8
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 362, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board_size = getelementptr inbounds %struct.board_state, %struct.board_state* %1, i32 0, i32 0
  %2 = load i32, i32* %board_size, align 4
  store i32 %2, i32* @board_size, align 4
  %3 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board = getelementptr inbounds %struct.board_state, %struct.board_state* %3, i32 0, i32 1
  %4 = bitcast [421 x i8]* %board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i8* %4, i64 421, i32 4, i1 false)
  %5 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_board = getelementptr inbounds %struct.board_state, %struct.board_state* %5, i32 0, i32 5
  %6 = bitcast [421 x i8]* %initial_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i8* %6, i64 421, i32 4, i1 false)
  %7 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %board_ko_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %7, i32 0, i32 2
  %8 = load i32, i32* %board_ko_pos, align 4
  store i32 %8, i32* @board_ko_pos, align 4
  %9 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %white_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %9, i32 0, i32 4
  %10 = load i32, i32* %white_captured, align 4
  store i32 %10, i32* @white_captured, align 4
  %11 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %black_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %11, i32 0, i32 3
  %12 = load i32, i32* %black_captured, align 4
  store i32 %12, i32* @black_captured, align 4
  %13 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_board_ko_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %13, i32 0, i32 6
  %14 = load i32, i32* %initial_board_ko_pos, align 4
  store i32 %14, i32* @initial_board_ko_pos, align 4
  %15 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_white_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %15, i32 0, i32 7
  %16 = load i32, i32* %initial_white_captured, align 4
  store i32 %16, i32* @initial_white_captured, align 4
  %17 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %initial_black_captured = getelementptr inbounds %struct.board_state, %struct.board_state* %17, i32 0, i32 8
  %18 = load i32, i32* %initial_black_captured, align 4
  store i32 %18, i32* @initial_black_captured, align 4
  %19 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_pointer = getelementptr inbounds %struct.board_state, %struct.board_state* %19, i32 0, i32 11
  %20 = load i32, i32* %move_history_pointer, align 4
  store i32 %20, i32* @move_history_pointer, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* @move_history_pointer, align 4
  %cmp1 = icmp slt i32 %21, %22
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %k, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_color = getelementptr inbounds %struct.board_state, %struct.board_state* %24, i32 0, i32 9
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* %move_history_color, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %26 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %26 to i64
  %arrayidx3 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom2
  store i32 %25, i32* %arrayidx3, align 4
  %27 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %27 to i64
  %28 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_history_pos = getelementptr inbounds %struct.board_state, %struct.board_state* %28, i32 0, i32 10
  %arrayidx5 = getelementptr inbounds [500 x i32], [500 x i32]* %move_history_pos, i32 0, i64 %idxprom4
  %29 = load i32, i32* %arrayidx5, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %30 to i64
  %arrayidx7 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom6
  store i32 %29, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %komi = getelementptr inbounds %struct.board_state, %struct.board_state* %32, i32 0, i32 12
  %33 = load float, float* %komi, align 4
  store float %33, float* @komi, align 4
  %34 = load %struct.board_state*, %struct.board_state** %state.addr, align 8
  %move_number = getelementptr inbounds %struct.board_state, %struct.board_state* %34, i32 0, i32 13
  %35 = load i32, i32* %move_number, align 4
  store i32 %35, i32* @movenum, align 4
  %36 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_recalc(%struct.Hash_data* @hashdata, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i32 %36)
  call void @new_position()
  ret void
}

declare void @hashdata_recalc(%struct.Hash_data*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @new_position() #0 {
entry:
  %pos = alloca i32, align 4
  %s = alloca i32, align 4
  %0 = load i32, i32* @position_number, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @position_number, align 4
  store i32 0, i32* @next_string, align 4
  store i32 0, i32* @liberty_mark, align 4
  store i32 0, i32* @string_mark, align 4
  store %struct.change_stack_entry* getelementptr inbounds ([28880 x %struct.change_stack_entry], [28880 x %struct.change_stack_entry]* @change_stack, i32 0, i32 0), %struct.change_stack_entry** @change_stack_pointer, align 8
  store %struct.vertex_stack_entry* getelementptr inbounds ([28880 x %struct.vertex_stack_entry], [28880 x %struct.vertex_stack_entry]* @vertex_stack, i32 0, i32 0), %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([240 x %struct.string_data]* @string to i8*), i8 0, i64 178560, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([400 x i32]* @ml to i8*), i8 0, i64 1600, i32 16, i1 false)
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %1, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom3
  store i32 -1, i32* %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %pos, align 4
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 21, i32* %pos, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.47, %for.end
  %6 = load i32, i32* %pos, align 4
  %cmp7 = icmp slt i32 %6, 400
  br i1 %cmp7, label %for.body.9, label %for.end.49

for.body.9:                                       ; preds = %for.cond.6
  %7 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body.9
  br label %for.inc.47

if.end.16:                                        ; preds = %for.body.9
  %9 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %11 = load i32, i32* %pos, align 4
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp eq i32 %conv24, 2
  br i1 %cmp25, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.16
  %13 = load i32, i32* %pos, align 4
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom27
  %14 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %14, -1
  br i1 %cmp29, label %if.then.31, label %if.end.46

if.then.31:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* @next_string, align 4
  %16 = load i32, i32* %pos, align 4
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom32
  store i32 %15, i32* %arrayidx33, align 4
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %pos, align 4
  %call = call i32 @propagate_string(i32 %17, i32 %18)
  %19 = load i32, i32* @next_string, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom34
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx35, i32 0, i32 1
  store i32 %call, i32* %size, align 4
  %20 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %21 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %21 to i32
  %22 = load i32, i32* @next_string, align 4
  %idxprom39 = sext i32 %22 to i64
  %arrayidx40 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom39
  %color = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx40, i32 0, i32 0
  store i32 %conv38, i32* %color, align 4
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* @next_string, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom41
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx42, i32 0, i32 2
  store i32 %23, i32* %origin, align 4
  %25 = load i32, i32* @next_string, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom43
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx44, i32 0, i32 7
  store i32 0, i32* %mark, align 4
  %26 = load i32, i32* @next_string, align 4
  %inc45 = add nsw i32 %26, 1
  store i32 %inc45, i32* @next_string, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.31, %land.lhs.true, %lor.lhs.false
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46, %if.then.15
  %27 = load i32, i32* %pos, align 4
  %inc48 = add nsw i32 %27, 1
  store i32 %inc48, i32* %pos, align 4
  br label %for.cond.6

for.end.49:                                       ; preds = %for.cond.6
  store i32 0, i32* %s, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.54, %for.end.49
  %28 = load i32, i32* %s, align 4
  %29 = load i32, i32* @next_string, align 4
  %cmp51 = icmp slt i32 %28, %29
  br i1 %cmp51, label %for.body.53, label %for.end.56

for.body.53:                                      ; preds = %for.cond.50
  %30 = load i32, i32* %s, align 4
  call void @find_liberties_and_neighbors(i32 %30)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.53
  %31 = load i32, i32* %s, align 4
  %inc55 = add nsw i32 %31, 1
  store i32 %inc55, i32* %s, align 4
  br label %for.cond.50

for.end.56:                                       ; preds = %for.cond.50
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_board() #0 {
entry:
  %k = alloca i32, align 4
  %0 = load i32, i32* @board_size, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %cmp1 = icmp sle i32 %1, 19
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i8 0, i64 421, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i8 0, i64 421, i32 16, i1 false)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %2, 421
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* @board_size, align 4
  %cmp3 = icmp ult i32 %sub, %4
  br i1 %cmp3, label %land.lhs.true.4, label %if.then.7

land.lhs.true.4:                                  ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %rem = srem i32 %5, 20
  %sub5 = sub nsw i32 %rem, 1
  %6 = load i32, i32* @board_size, align 4
  %cmp6 = icmp ult i32 %sub5, %6
  br i1 %cmp6, label %if.end.10, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.4, %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  store i8 3, i8* %arrayidx, align 1
  %8 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @initial_board, i32 0, i64 %idxprom8
  store i8 3, i8* %arrayidx9, align 1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %land.lhs.true.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @board_ko_pos, align 4
  store i32 0, i32* @white_captured, align 4
  store i32 0, i32* @black_captured, align 4
  store i32 0, i32* @initial_board_ko_pos, align 4
  store i32 0, i32* @initial_white_captured, align 4
  store i32 0, i32* @initial_black_captured, align 4
  store i32 0, i32* @move_history_pointer, align 4
  store i32 0, i32* @movenum, align 4
  %10 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_recalc(%struct.Hash_data* @hashdata, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i32 %10)
  call void @new_position()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @test_gray_border() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load i32, i32* @board_size, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @board_size, align 4
  %cmp1 = icmp sle i32 %1, 19
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 432, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %2, 421
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* @board_size, align 4
  %cmp3 = icmp ult i32 %sub, %4
  br i1 %cmp3, label %land.lhs.true.4, label %if.then.7

land.lhs.true.4:                                  ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %rem = srem i32 %5, 20
  %sub5 = sub nsw i32 %rem, 1
  %6 = load i32, i32* @board_size, align 4
  %cmp6 = icmp ult i32 %sub5, %6
  br i1 %cmp6, label %if.end.12, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.4, %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv, 3
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %9 = load i32, i32* %k, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %land.lhs.true.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @trymove(i32 %pos, i32 %color, i8* %message, i32 %str, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %str.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @do_trymove(i32 %0, i32 %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1 = icmp ne %struct.SGFTree_t* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.27

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %message.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %message.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.2
  %4 = load i32, i32* %str.addr, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.end.4
  %5 = load i32, i32* %komaster.addr, align 4
  %cmp7 = icmp ne i32 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %6 = load i8*, i8** %message.addr, align 8
  %7 = load i32, i32* @count_variations, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  %9 = load i32, i32* %komaster.addr, align 4
  %call9 = call i8* @komaster_to_string(i32 %9)
  %10 = load i32, i32* %kom_pos.addr, align 4
  %call10 = call i8* @location_to_string(i32 %10)
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* %6, i32 %7, i64 %8, i8* %call9, i8* %call10)
  br label %if.end.12

if.else:                                          ; preds = %if.then.6
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %11 = load i8*, i8** %message.addr, align 8
  %12 = load i32, i32* @count_variations, align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay11, i64 100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0), i8* %11, i32 %12, i64 %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.8
  br label %if.end.24

if.else.13:                                       ; preds = %if.end.4
  %14 = load i32, i32* %komaster.addr, align 4
  %cmp14 = icmp ne i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.else.13
  %arraydecay16 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %15 = load i8*, i8** %message.addr, align 8
  %16 = load i32, i32* %str.addr, align 4
  %call17 = call i8* @location_to_string(i32 %16)
  %17 = load i32, i32* @count_variations, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  %19 = load i32, i32* %komaster.addr, align 4
  %call18 = call i8* @komaster_to_string(i32 %19)
  %20 = load i32, i32* %kom_pos.addr, align 4
  %call19 = call i8* @location_to_string(i32 %20)
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay16, i64 100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0), i8* %15, i8* %call17, i32 %17, i64 %18, i8* %call18, i8* %call19)
  br label %if.end.23

if.else.20:                                       ; preds = %if.else.13
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %21 = load i8*, i8** %message.addr, align 8
  %22 = load i32, i32* %str.addr, align 4
  %call22 = call i8* @location_to_string(i32 %22)
  %23 = load i32, i32* @count_variations, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay21, i64 100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* %21, i8* %call22, i32 %23, i64 %24)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.12
  %25 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %26 = load i32, i32* %color.addr, align 4
  %27 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %27, 20
  %sub = sub nsw i32 %div, 1
  %28 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %28, 20
  %sub25 = sub nsw i32 %rem, 1
  call void @sgftreeAddPlayLast(%struct.SGFTree_t* %25, i32 %26, i32 %sub, i32 %sub25)
  %29 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay26 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %29, i8* %arraydecay26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.24, %if.end
  %30 = load i32, i32* @count_variations, align 4
  %tobool28 = icmp ne i32 %30, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %31 = load i32, i32* @count_variations, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* @count_variations, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %32 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @do_trymove(i32 %pos, i32 %color, i32 %ignore_ko) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ignore_ko.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %ignore_ko, i32* %ignore_ko.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 646, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 2
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %6, 1
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.10

if.else.9:                                        ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 647, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom11
  store i8 1, i8* %arrayidx12, align 1
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %9 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.10
  %10 = load i32, i32* %ignore_ko.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end.40, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.end.19
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* @board_ko_pos, align 4
  %cmp21 = icmp eq i32 %11, %12
  br i1 %cmp21, label %if.then.23, label %if.end.40

if.then.23:                                       ; preds = %land.lhs.true.20
  %13 = load i32, i32* %pos.addr, align 4
  %sub24 = sub nsw i32 %13, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %14 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %sub28 = sub nsw i32 3, %15
  %cmp29 = icmp eq i32 %conv27, %sub28
  br i1 %cmp29, label %if.then.38, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.23
  %16 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %16, 1
  %idxprom32 = sext i32 %add to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  %17 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %17 to i32
  %18 = load i32, i32* %color.addr, align 4
  %sub35 = sub nsw i32 3, %18
  %cmp36 = icmp eq i32 %conv34, %sub35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.31, %if.then.23
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %lor.lhs.false.31
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %land.lhs.true.20, %if.end.19
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %color.addr, align 4
  %call = call i32 @is_suicide(i32 %19, i32 %20)
  %tobool41 = icmp ne i32 %call, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.40
  %21 = load i32, i32* @stackp, align 4
  %cmp44 = icmp sge i32 %21, 359
  br i1 %cmp44, label %if.then.46, label %if.end.54

if.then.46:                                       ; preds = %if.end.43
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i32 0, i32 0))
  %23 = load i32, i32* @verbose, align 4
  %cmp48 = icmp sgt i32 %23, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.46
  call void @showboard(i32 0)
  call void @dump_stack()
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.46
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call52 = call i32 @fflush(%struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 @fflush(%struct._IO_FILE* %25)
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.43
  %26 = load i32, i32* @trymove_counter, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @trymove_counter, align 4
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* @stackp, align 4
  %idxprom55 = sext i32 %28 to i64
  %arrayidx56 = getelementptr inbounds [361 x i32], [361 x i32]* @stack, i32 0, i64 %idxprom55
  store i32 %27, i32* %arrayidx56, align 4
  %29 = load i32, i32* %color.addr, align 4
  %30 = load i32, i32* @stackp, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds [361 x i32], [361 x i32]* @move_color, i32 0, i64 %idxprom57
  store i32 %29, i32* %arrayidx58, align 4
  %31 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %31, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %31, i32 0, i32 0
  store i32* null, i32** %address, align 8
  %32 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %incdec.ptr59 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %32, i32 1
  store %struct.vertex_stack_entry* %incdec.ptr59, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %address60 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %32, i32 0, i32 0
  store i8* null, i8** %address60, align 8
  %33 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address61 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %33, i32 0, i32 0
  store i32* @board_ko_pos, i32** %address61, align 8
  %34 = load i32, i32* @board_ko_pos, align 4
  %35 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr62 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %35, i32 1
  store %struct.change_stack_entry* %incdec.ptr62, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %35, i32 0, i32 1
  store i32 %34, i32* %value, align 4
  %36 = load i32, i32* @stackp, align 4
  %idxprom63 = sext i32 %36 to i64
  %arrayidx64 = getelementptr inbounds [361 x %struct.Hash_data], [361 x %struct.Hash_data]* @hashdata_stack, i32 0, i64 %idxprom63
  %37 = bitcast %struct.Hash_data* %arrayidx64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast (%struct.Hash_data* @hashdata to i8*), i64 8, i32 8, i1 false)
  %38 = load i32, i32* @board_ko_pos, align 4
  %cmp65 = icmp ne i32 %38, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.54
  %39 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_invert_ko(%struct.Hash_data* @hashdata, i32 %39)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.54
  store i32 0, i32* @board_ko_pos, align 4
  %40 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address69 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %40, i32 0, i32 0
  store i32* @black_captured, i32** %address69, align 8
  %41 = load i32, i32* @black_captured, align 4
  %42 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr70 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %42, i32 1
  store %struct.change_stack_entry* %incdec.ptr70, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value71 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %42, i32 0, i32 1
  store i32 %41, i32* %value71, align 4
  %43 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address72 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %43, i32 0, i32 0
  store i32* @white_captured, i32** %address72, align 8
  %44 = load i32, i32* @white_captured, align 4
  %45 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr73 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %45, i32 1
  store %struct.change_stack_entry* %incdec.ptr73, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value74 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %45, i32 0, i32 1
  store i32 %44, i32* %value74, align 4
  %46 = load i32, i32* @stackp, align 4
  %inc75 = add nsw i32 %46, 1
  store i32 %inc75, i32* @stackp, align 4
  %47 = load i32, i32* @verbose, align 4
  %cmp76 = icmp eq i32 %47, 4
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.68
  call void @dump_stack()
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.end.68
  %48 = load i32, i32* %pos.addr, align 4
  %49 = load i32, i32* %color.addr, align 4
  call void @do_play_move(i32 %48, i32 %49)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.end.51, %if.then.42, %if.then.38, %if.then.18
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare void @gg_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @komaster_to_string(i32 %komaster) #0 {
entry:
  %komaster.addr = alloca i32, align 4
  %b = alloca [7 x i8*], align 16
  store i32 %komaster, i32* %komaster.addr, align 4
  %0 = bitcast [7 x i8*]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([7 x i8*]* @komaster_to_string.b to i8*), i64 56, i32 16, i1 false)
  %1 = load i32, i32* %komaster.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %komaster.addr, align 4
  %cmp1 = icmp sle i32 %2, 6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 462, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %komaster.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* %b, i32 0, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  ret i8* %4
}

declare i8* @location_to_string(i32) #1

declare void @sgftreeAddPlayLast(%struct.SGFTree_t*, i32, i32, i32) #1

declare void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @semeai_trymove(i32 %pos, i32 %color, i8* %message, i32 %str1, i32 %str2, i32 %owl_phase, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %owl_phase.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  %sbuf1 = alloca [5 x i8], align 1
  %sbuf2 = alloca [5 x i8], align 1
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32 %owl_phase, i32* %owl_phase.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @do_trymove(i32 %0, i32 %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %message.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %message.addr, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool3 = icmp ne %struct.SGFTree_t* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %if.end.2
  %4 = load i32, i32* %str1.addr, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf1, i32 0, i32 0
  call void @location_to_buffer(i32 %4, i8* %arraydecay)
  %5 = load i32, i32* %str2.addr, align 4
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf2, i32 0, i32 0
  call void @location_to_buffer(i32 %5, i8* %arraydecay5)
  %6 = load i32, i32* %owl_phase.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %7 = load i8*, i8** %message.addr, align 8
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf1, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf2, i32 0, i32 0
  %8 = load i32, i32* @count_variations, align 4
  %9 = load i32, i32* %value.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay8, i64 100, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i32 0, i32 0), i8* %7, i8* %arraydecay9, i8* %arraydecay10, i32 %8, i32 %9)
  br label %if.end.14

if.else:                                          ; preds = %if.then.4
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %10 = load i8*, i8** %message.addr, align 8
  %arraydecay12 = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf1, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [5 x i8], [5 x i8]* %sbuf2, i32 0, i32 0
  %11 = load i32, i32* @count_variations, align 4
  %12 = load i32, i32* %value.addr, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay11, i64 100, i8* %10, i8* %arraydecay12, i8* %arraydecay13, i32 %11, i32 %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.7
  %13 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %14 = load i32, i32* %color.addr, align 4
  %15 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %15, 20
  %sub = sub nsw i32 %div, 1
  %16 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %16, 20
  %sub15 = sub nsw i32 %rem, 1
  call void @sgftreeAddPlayLast(%struct.SGFTree_t* %13, i32 %14, i32 %sub, i32 %sub15)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay16 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %17, i8* %arraydecay16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %if.end.2
  %18 = load i32, i32* @count_variations, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %19 = load i32, i32* @count_variations, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* @count_variations, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  %20 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare void @location_to_buffer(i32, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @tryko(i32 %pos, i32 %color, i8* %message, i32 %komaster, i32 %kom_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %buf = alloca [100 x i8], align 16
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %1 = load i32, i32* %color.addr, align 4
  %call = call i32 @do_trymove(i32 %0, i32 %1, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool1 = icmp ne %struct.SGFTree_t* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** %message.addr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %message.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.then.2
  %4 = load i32, i32* %komaster.addr, align 4
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %5 = load i8*, i8** %message.addr, align 8
  %6 = load i32, i32* @count_variations, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  %8 = load i32, i32* %komaster.addr, align 4
  %call7 = call i8* @komaster_to_string(i32 %8)
  %9 = load i32, i32* %kom_pos.addr, align 4
  %call8 = call i8* @location_to_string(i32 %9)
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8* %5, i32 %6, i64 %7, i8* %call7, i8* %call8)
  br label %if.end.10

if.else:                                          ; preds = %if.end.4
  %arraydecay9 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %10 = load i8*, i8** %message.addr, align 8
  %11 = load i32, i32* @count_variations, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.Hash_data, %struct.Hash_data* @hashdata, i32 0, i32 0, i64 0), align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay9, i64 100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* %10, i32 %11, i64 %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %13 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %14 = load i32, i32* %color.addr, align 4
  call void @sgftreeAddPlayLast(%struct.SGFTree_t* %13, i32 %14, i32 -1, i32 -1)
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  %16 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %17 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %17
  call void @sgftreeAddPlayLast(%struct.SGFTree_t* %16, i32 %sub, i32 -1, i32 -1)
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i32 0, i32 0))
  %19 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %20 = load i32, i32* %color.addr, align 4
  %21 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %21, 20
  %sub11 = sub nsw i32 %div, 1
  %22 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %22, 20
  %sub12 = sub nsw i32 %rem, 1
  call void @sgftreeAddPlayLast(%struct.SGFTree_t* %19, i32 %20, i32 %sub11, i32 %sub12)
  %23 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %23, i8* %arraydecay13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.10, %if.end
  %24 = load i32, i32* @count_variations, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %25 = load i32, i32* @count_variations, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* @count_variations, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %26 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @popgo() #0 {
entry:
  %buf = alloca [100 x i8], align 16
  %0 = load i32, i32* @stackp, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @stackp, align 4
  call void @undo_trymove()
  %1 = load i32, i32* @stackp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [361 x %struct.Hash_data], [361 x %struct.Hash_data]* @hashdata_stack, i32 0, i64 %idxprom
  %2 = bitcast %struct.Hash_data* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Hash_data* @hashdata to i8*), i8* %2, i64 8, i32 8, i1 false)
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool = icmp ne %struct.SGFTree_t* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %4 = load i32, i32* @count_variations, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %4)
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %5, i8* %arraydecay1)
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %6, i32 0, i32 1
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 1
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %lastnode2 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 1
  store %struct.SGFNode_t* %8, %struct.SGFNode_t** %lastnode2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %lastnode3 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %10, i32 0, i32 1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode3, align 8
  %12 = load i32, i32* @board_size, align 4
  %call = call i32 @is_pass_node(%struct.SGFNode_t* %11, i32 %12)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %lastnode5 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %13, i32 0, i32 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode5, align 8
  %parent6 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 1
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent6, align 8
  %16 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %lastnode7 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %16, i32 0, i32 1
  store %struct.SGFNode_t* %15, %struct.SGFNode_t** %lastnode7, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @undo_trymove() #0 {
entry:
  %0 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.change_stack_entry* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([28880 x %struct.change_stack_entry]* @change_stack to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp sle i64 %sub.ptr.div, 28880
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 766, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %1, i32 -1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %incdec.ptr, i32 0, i32 0
  %2 = load i32*, i32** %address, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %3, i32 0, i32 1
  %4 = load i32, i32* %value, align 4
  %5 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address1 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %5, i32 0, i32 0
  %6 = load i32*, i32** %address1, align 8
  store i32 %4, i32* %6, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.6, %while.end
  %7 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %7, i32 -1
  store %struct.vertex_stack_entry* %incdec.ptr3, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %address4 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %incdec.ptr3, i32 0, i32 0
  %8 = load i8*, i8** %address4, align 8
  %tobool5 = icmp ne i8* %8, null
  br i1 %tobool5, label %while.body.6, label %while.end.9

while.body.6:                                     ; preds = %while.cond.2
  %9 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %value7 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %9, i32 0, i32 1
  %10 = load i32, i32* %value7, align 4
  %conv = trunc i32 %10 to i8
  %11 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %address8 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %11, i32 0, i32 0
  %12 = load i8*, i8** %address8, align 8
  store i8 %conv, i8* %12, align 1
  br label %while.cond.2

while.end.9:                                      ; preds = %while.cond.2
  ret void
}

declare i32 @is_pass_node(%struct.SGFNode_t*, i32) #1

; Function Attrs: nounwind uwtable
define void @dump_stack() #0 {
entry:
  %n = alloca i32, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* @move_color, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %3, 2
  %cond = select i1 %cmp1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)
  %4 = load i32, i32* %n, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [361 x i32], [361 x i32]* @stack, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* %cond, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %n, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* @count_variations, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i32, i32* @count_variations, align 4
  %sub = sub nsw i32 %8, 1
  %call4 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %call5 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %10)
  ret void
}

declare i32 @gprintf(i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @add_stone(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %1, 20
  %sub = sub nsw i32 %div, 1
  %2 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %2, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 823, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %pos.addr, align 4
  %cmp2 = icmp ult i32 %3, 421
  br i1 %cmp2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  br label %if.end.11

if.else.6:                                        ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %div7 = sdiv i32 %6, 20
  %sub8 = sub nsw i32 %div7, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem9 = srem i32 %7, 20
  %sub10 = sub nsw i32 %rem9, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 824, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub8, i32 %sub10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.6, %if.then.5
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.11
  br label %if.end.23

if.else.18:                                       ; preds = %if.end.11
  %10 = load i32, i32* %pos.addr, align 4
  %div19 = sdiv i32 %10, 20
  %sub20 = sub nsw i32 %div19, 1
  %11 = load i32, i32* %pos.addr, align 4
  %rem21 = srem i32 %11, 20
  %sub22 = sub nsw i32 %rem21, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 825, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub20, i32 %sub22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.18, %if.then.17
  %12 = load i32, i32* %color.addr, align 4
  %conv24 = trunc i32 %12 to i8
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %color.addr, align 4
  call void @hashdata_invert_stone(%struct.Hash_data* @hashdata, i32 %14, i32 %15)
  call void @reset_move_history()
  call void @new_position()
  ret void
}

declare void @hashdata_invert_stone(%struct.Hash_data*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @reset_move_history() #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i64 421, i32 16, i1 false)
  %0 = load i32, i32* @board_ko_pos, align 4
  store i32 %0, i32* @initial_board_ko_pos, align 4
  %1 = load i32, i32* @white_captured, align 4
  store i32 %1, i32* @initial_white_captured, align 4
  %2 = load i32, i32* @black_captured, align 4
  store i32 %2, i32* @initial_black_captured, align 4
  store i32 0, i32* @move_history_pointer, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_stone(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %1, 20
  %sub = sub nsw i32 %div, 1
  %2 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %2, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 841, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %pos.addr, align 4
  %cmp2 = icmp ult i32 %3, 421
  br i1 %cmp2, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv, 3
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  br label %if.end.11

if.else.6:                                        ; preds = %land.lhs.true, %if.end
  %6 = load i32, i32* %pos.addr, align 4
  %div7 = sdiv i32 %6, 20
  %sub8 = sub nsw i32 %div7, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem9 = srem i32 %7, 20
  %sub10 = sub nsw i32 %rem9, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 842, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub8, i32 %sub10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.6, %if.then.5
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %11 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.11
  br label %if.end.28

if.else.23:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* %pos.addr, align 4
  %div24 = sdiv i32 %12, 20
  %sub25 = sub nsw i32 %div24, 1
  %13 = load i32, i32* %pos.addr, align 4
  %rem26 = srem i32 %13, 20
  %sub27 = sub nsw i32 %rem26, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 843, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i32 %sub25, i32 %sub27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.23, %if.then.22
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %pos.addr, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  call void @hashdata_invert_stone(%struct.Hash_data* @hashdata, i32 %14, i32 %conv31)
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom32
  store i8 0, i8* %arrayidx33, align 1
  call void @reset_move_history()
  call void @new_position()
  ret void
}

; Function Attrs: nounwind uwtable
define void @play_move(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %number_collapsed_moves = alloca i32, align 4
  %k = alloca i32, align 4
  %saved_board = alloca [421 x i8], align 16
  %saved_board_ko_pos = alloca i32, align 4
  %saved_white_captured = alloca i32, align 4
  %saved_black_captured = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %1, 20
  %sub = sub nsw i32 %div, 1
  %2 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %2, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 924, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %color.addr, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.10

if.else.5:                                        ; preds = %lor.lhs.false
  %5 = load i32, i32* %pos.addr, align 4
  %div6 = sdiv i32 %5, 20
  %sub7 = sub nsw i32 %div6, 1
  %6 = load i32, i32* %pos.addr, align 4
  %rem8 = srem i32 %6, 20
  %sub9 = sub nsw i32 %rem8, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 925, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %sub7, i32 %sub9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.5, %if.then.4
  %7 = load i32, i32* %pos.addr, align 4
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.10
  %8 = load i32, i32* %pos.addr, align 4
  %cmp13 = icmp ult i32 %8, 421
  br i1 %cmp13, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %lor.lhs.false.12
  %9 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv, 3
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %land.lhs.true, %if.end.10
  br label %if.end.22

if.else.17:                                       ; preds = %land.lhs.true, %lor.lhs.false.12
  %11 = load i32, i32* %pos.addr, align 4
  %div18 = sdiv i32 %11, 20
  %sub19 = sub nsw i32 %div18, 1
  %12 = load i32, i32* %pos.addr, align 4
  %rem20 = srem i32 %12, 20
  %sub21 = sub nsw i32 %rem20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 926, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i32 0, i32 0), i32 %sub19, i32 %sub21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.17, %if.then.16
  %13 = load i32, i32* %pos.addr, align 4
  %cmp23 = icmp eq i32 %13, 0
  br i1 %cmp23, label %if.then.31, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.22
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %15 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %15 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %lor.lhs.false.25, %if.end.22
  br label %if.end.37

if.else.32:                                       ; preds = %lor.lhs.false.25
  %16 = load i32, i32* %pos.addr, align 4
  %div33 = sdiv i32 %16, 20
  %sub34 = sub nsw i32 %div33, 1
  %17 = load i32, i32* %pos.addr, align 4
  %rem35 = srem i32 %17, 20
  %sub36 = sub nsw i32 %rem35, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 927, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0), i32 %sub34, i32 %sub36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.31
  %18 = load i32, i32* @move_history_pointer, align 4
  %cmp38 = icmp sge i32 %18, 500
  br i1 %cmp38, label %if.then.40, label %if.end.54

if.then.40:                                       ; preds = %if.end.37
  store i32 51, i32* %number_collapsed_moves, align 4
  %19 = load i32, i32* @board_ko_pos, align 4
  store i32 %19, i32* %saved_board_ko_pos, align 4
  %20 = load i32, i32* @white_captured, align 4
  store i32 %20, i32* %saved_white_captured, align 4
  %21 = load i32, i32* @black_captured, align 4
  store i32 %21, i32* %saved_black_captured, align 4
  %22 = bitcast [421 x i8]* %saved_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i64 421, i32 16, i1 false)
  %23 = load i32, i32* %number_collapsed_moves, align 4
  call void @replay_move_history(i32 %23)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i64 421, i32 16, i1 false)
  %24 = load i32, i32* @board_ko_pos, align 4
  store i32 %24, i32* @initial_board_ko_pos, align 4
  %25 = load i32, i32* @white_captured, align 4
  store i32 %25, i32* @initial_white_captured, align 4
  %26 = load i32, i32* @black_captured, align 4
  store i32 %26, i32* @initial_black_captured, align 4
  %27 = load i32, i32* %number_collapsed_moves, align 4
  store i32 %27, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* @move_history_pointer, align 4
  %cmp41 = icmp slt i32 %28, %29
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %k, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom43
  %31 = load i32, i32* %arrayidx44, align 4
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %number_collapsed_moves, align 4
  %sub45 = sub nsw i32 %32, %33
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom46
  store i32 %31, i32* %arrayidx47, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom48
  %35 = load i32, i32* %arrayidx49, align 4
  %36 = load i32, i32* %k, align 4
  %37 = load i32, i32* %number_collapsed_moves, align 4
  %sub50 = sub nsw i32 %36, %37
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom51
  store i32 %35, i32* %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %number_collapsed_moves, align 4
  %40 = load i32, i32* @move_history_pointer, align 4
  %sub53 = sub nsw i32 %40, %39
  store i32 %sub53, i32* @move_history_pointer, align 4
  %41 = bitcast [421 x i8]* %saved_board to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i8* %41, i64 421, i32 16, i1 false)
  %42 = load i32, i32* %saved_board_ko_pos, align 4
  store i32 %42, i32* @board_ko_pos, align 4
  %43 = load i32, i32* %saved_white_captured, align 4
  store i32 %43, i32* @white_captured, align 4
  %44 = load i32, i32* %saved_black_captured, align 4
  store i32 %44, i32* @black_captured, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.end.37
  %45 = load i32, i32* %color.addr, align 4
  %46 = load i32, i32* @move_history_pointer, align 4
  %idxprom55 = sext i32 %46 to i64
  %arrayidx56 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom55
  store i32 %45, i32* %arrayidx56, align 4
  %47 = load i32, i32* %pos.addr, align 4
  %48 = load i32, i32* @move_history_pointer, align 4
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom57
  store i32 %47, i32* %arrayidx58, align 4
  %49 = load i32, i32* @move_history_pointer, align 4
  %inc59 = add nsw i32 %49, 1
  store i32 %inc59, i32* @move_history_pointer, align 4
  %50 = load i32, i32* %pos.addr, align 4
  %51 = load i32, i32* %color.addr, align 4
  call void @play_move_no_history(i32 %50, i32 %51)
  %52 = load i32, i32* @movenum, align 4
  %inc60 = add nsw i32 %52, 1
  store i32 %inc60, i32* @movenum, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @replay_move_history(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i32 0, i32 0), i8* getelementptr inbounds ([421 x i8], [421 x i8]* @initial_board, i32 0, i32 0), i64 421, i32 16, i1 false)
  %0 = load i32, i32* @initial_board_ko_pos, align 4
  store i32 %0, i32* @board_ko_pos, align 4
  %1 = load i32, i32* @initial_white_captured, align 4
  store i32 %1, i32* @white_captured, align 4
  %2 = load i32, i32* @initial_black_captured, align 4
  store i32 %2, i32* @black_captured, align 4
  call void @new_position()
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  call void @play_move_no_history(i32 %6, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @play_move_no_history(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @board_ko_pos, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_invert_ko(%struct.Hash_data* @hashdata, i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @board_ko_pos, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.21

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %pos.addr, align 4
  %cmp3 = icmp ult i32 %3, 421
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %4 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %if.then.2
  %6 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %6, 20
  %sub = sub nsw i32 %div, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %7, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.8
  br label %if.end.20

if.else.15:                                       ; preds = %if.end.8
  %10 = load i32, i32* %pos.addr, align 4
  %div16 = sdiv i32 %10, 20
  %sub17 = sub nsw i32 %div16, 1
  %11 = load i32, i32* %pos.addr, align 4
  %rem18 = srem i32 %11, 20
  %sub19 = sub nsw i32 %rem18, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 873, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub17, i32 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %color.addr, align 4
  call void @do_play_move(i32 %12, i32 %13)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  call void @new_position()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @undo_move(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @move_history_pointer, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* @move_history_pointer, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, %4
  call void @replay_move_history(i32 %sub)
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* @move_history_pointer, align 4
  %sub4 = sub nsw i32 %6, %5
  store i32 %sub4, i32* @move_history_pointer, align 4
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i32, i32* @movenum, align 4
  %sub5 = sub nsw i32 %8, %7
  store i32 %sub5, i32* @movenum, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @get_last_opponent_move(i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @move_history_pointer, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %color.addr, align 4
  %sub1 = sub nsw i32 3, %4
  %cmp2 = icmp eq i32 %3, %sub1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %k, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @get_last_move() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @move_history_pointer, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @move_history_pointer, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_pos, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @get_last_player() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @move_history_pointer, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @move_history_pointer, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [500 x i32], [500 x i32]* @move_history_color, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @is_pass(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @is_legal(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %cmp1 = icmp ult i32 %1, 421
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp2 = icmp ne i32 %conv, 3
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %5, 20
  %sub5 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1059, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %8 = load i32, i32* %pos.addr, align 4
  %9 = load i32, i32* @board_ko_pos, align 4
  %cmp14 = icmp eq i32 %8, %9
  br i1 %cmp14, label %if.then.16, label %if.end.32

if.then.16:                                       ; preds = %if.end.13
  %10 = load i32, i32* %pos.addr, align 4
  %sub17 = sub nsw i32 %10, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom18
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %12 = load i32, i32* %color.addr, align 4
  %sub21 = sub nsw i32 3, %12
  %cmp22 = icmp eq i32 %conv20, %sub21
  br i1 %cmp22, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %13 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %13, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %sub27 = sub nsw i32 3, %15
  %cmp28 = icmp eq i32 %conv26, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.then.16
  store i32 0, i32* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.13
  %16 = load i32, i32* @stackp, align 4
  %cmp33 = icmp sge i32 %16, 359
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  %18 = load i32, i32* @allow_suicide, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.41, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %if.end.36
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %color.addr, align 4
  %call38 = call i32 @is_suicide(i32 %19, i32 %20)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.37, %if.end.36
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.40, %if.then.35, %if.then.30, %if.then.12, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @is_suicide(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  br label %if.end.15

if.else.10:                                       ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %div11 = sdiv i32 %7, 20
  %sub12 = sub nsw i32 %div11, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem13 = srem i32 %8, 20
  %sub14 = sub nsw i32 %rem13, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub12, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %9 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %9, 20
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %10 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.15
  %11 = load i32, i32* %pos.addr, align 4
  %add21 = add nsw i32 %11, 20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %cmp25 = icmp ne i32 %conv24, 3
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.42

land.lhs.true.27:                                 ; preds = %lor.lhs.false
  %13 = load i32, i32* %pos.addr, align 4
  %add28 = add nsw i32 %13, 20
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %14 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %cmp32 = icmp eq i32 %conv31, %15
  %conv33 = zext i1 %cmp32 to i32
  %16 = load i32, i32* %pos.addr, align 4
  %add34 = add nsw i32 %16, 20
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom35
  %17 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom37
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx38, i32 0, i32 3
  %18 = load i32, i32* %liberties, align 4
  %cmp39 = icmp eq i32 %18, 1
  %conv40 = zext i1 %cmp39 to i32
  %xor = xor i32 %conv33, %conv40
  %tobool = icmp ne i32 %xor, 0
  br i1 %tobool, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.27, %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.27, %lor.lhs.false
  %19 = load i32, i32* %pos.addr, align 4
  %sub43 = sub nsw i32 %19, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom44
  %20 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %20 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.73, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %if.end.42
  %21 = load i32, i32* %pos.addr, align 4
  %sub50 = sub nsw i32 %21, 1
  %idxprom51 = sext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %22 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %22 to i32
  %cmp54 = icmp ne i32 %conv53, 3
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %lor.lhs.false.49
  %23 = load i32, i32* %pos.addr, align 4
  %sub57 = sub nsw i32 %23, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %24 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %24 to i32
  %25 = load i32, i32* %color.addr, align 4
  %cmp61 = icmp eq i32 %conv60, %25
  %conv62 = zext i1 %cmp61 to i32
  %26 = load i32, i32* %pos.addr, align 4
  %sub63 = sub nsw i32 %26, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom64
  %27 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %27 to i64
  %arrayidx67 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom66
  %liberties68 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx67, i32 0, i32 3
  %28 = load i32, i32* %liberties68, align 4
  %cmp69 = icmp eq i32 %28, 1
  %conv70 = zext i1 %cmp69 to i32
  %xor71 = xor i32 %conv62, %conv70
  %tobool72 = icmp ne i32 %xor71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.56, %if.end.42
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.56, %lor.lhs.false.49
  %29 = load i32, i32* %pos.addr, align 4
  %sub75 = sub nsw i32 %29, 20
  %idxprom76 = sext i32 %sub75 to i64
  %arrayidx77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom76
  %30 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %30 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %if.then.105, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.end.74
  %31 = load i32, i32* %pos.addr, align 4
  %sub82 = sub nsw i32 %31, 20
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom83
  %32 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %32 to i32
  %cmp86 = icmp ne i32 %conv85, 3
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.106

land.lhs.true.88:                                 ; preds = %lor.lhs.false.81
  %33 = load i32, i32* %pos.addr, align 4
  %sub89 = sub nsw i32 %33, 20
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom90
  %34 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %34 to i32
  %35 = load i32, i32* %color.addr, align 4
  %cmp93 = icmp eq i32 %conv92, %35
  %conv94 = zext i1 %cmp93 to i32
  %36 = load i32, i32* %pos.addr, align 4
  %sub95 = sub nsw i32 %36, 20
  %idxprom96 = sext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom96
  %37 = load i32, i32* %arrayidx97, align 4
  %idxprom98 = sext i32 %37 to i64
  %arrayidx99 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom98
  %liberties100 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx99, i32 0, i32 3
  %38 = load i32, i32* %liberties100, align 4
  %cmp101 = icmp eq i32 %38, 1
  %conv102 = zext i1 %cmp101 to i32
  %xor103 = xor i32 %conv94, %conv102
  %tobool104 = icmp ne i32 %xor103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %land.lhs.true.88, %if.end.74
  store i32 0, i32* %retval
  br label %return

if.end.106:                                       ; preds = %land.lhs.true.88, %lor.lhs.false.81
  %39 = load i32, i32* %pos.addr, align 4
  %add107 = add nsw i32 %39, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %40 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %40 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %if.then.137, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.106
  %41 = load i32, i32* %pos.addr, align 4
  %add114 = add nsw i32 %41, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom115
  %42 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %42 to i32
  %cmp118 = icmp ne i32 %conv117, 3
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.138

land.lhs.true.120:                                ; preds = %lor.lhs.false.113
  %43 = load i32, i32* %pos.addr, align 4
  %add121 = add nsw i32 %43, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom122
  %44 = load i8, i8* %arrayidx123, align 1
  %conv124 = zext i8 %44 to i32
  %45 = load i32, i32* %color.addr, align 4
  %cmp125 = icmp eq i32 %conv124, %45
  %conv126 = zext i1 %cmp125 to i32
  %46 = load i32, i32* %pos.addr, align 4
  %add127 = add nsw i32 %46, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom128
  %47 = load i32, i32* %arrayidx129, align 4
  %idxprom130 = sext i32 %47 to i64
  %arrayidx131 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom130
  %liberties132 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx131, i32 0, i32 3
  %48 = load i32, i32* %liberties132, align 4
  %cmp133 = icmp eq i32 %48, 1
  %conv134 = zext i1 %cmp133 to i32
  %xor135 = xor i32 %conv126, %conv134
  %tobool136 = icmp ne i32 %xor135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.120, %if.end.106
  store i32 0, i32* %retval
  br label %return

if.end.138:                                       ; preds = %land.lhs.true.120, %lor.lhs.false.113
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.138, %if.then.137, %if.then.105, %if.then.73, %if.then.41
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @is_illegal_ko_capture(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end
  br label %if.end.15

if.else.10:                                       ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %div11 = sdiv i32 %7, 20
  %sub12 = sub nsw i32 %div11, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem13 = srem i32 %8, 20
  %sub14 = sub nsw i32 %rem13, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub12, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* @board_ko_pos, align 4
  %cmp16 = icmp eq i32 %9, %10
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.15
  %11 = load i32, i32* %pos.addr, align 4
  %sub18 = sub nsw i32 %11, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i32, i32* %color.addr, align 4
  %sub22 = sub nsw i32 3, %13
  %cmp23 = icmp eq i32 %conv21, %sub22
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %14 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %14, 1
  %idxprom25 = sext i32 %add to i64
  %arrayidx26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom25
  %15 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %15 to i32
  %16 = load i32, i32* %color.addr, align 4
  %sub28 = sub nsw i32 3, %16
  %cmp29 = icmp eq i32 %conv27, %sub28
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %cmp29, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.15
  %18 = phi i1 [ false, %if.end.15 ], [ %17, %lor.end ]
  %land.ext = zext i1 %18 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @komaster_trymove(i32 %pos, i32 %color, i8* %message, i32 %str, i32 %komaster, i32 %kom_pos, i32* %new_komaster, i32* %new_kom_pos, i32* %is_conditional_ko, i32 %consider_conditional_ko) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %message.addr = alloca i8*, align 8
  %str.addr = alloca i32, align 4
  %komaster.addr = alloca i32, align 4
  %kom_pos.addr = alloca i32, align 4
  %new_komaster.addr = alloca i32*, align 8
  %new_kom_pos.addr = alloca i32*, align 8
  %is_conditional_ko.addr = alloca i32*, align 8
  %consider_conditional_ko.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %ko_move = alloca i32, align 4
  %kpos = alloca i32, align 4
  %previous_board_ko_pos = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %str, i32* %str.addr, align 4
  store i32 %komaster, i32* %komaster.addr, align 4
  store i32 %kom_pos, i32* %kom_pos.addr, align 4
  store i32* %new_komaster, i32** %new_komaster.addr, align 8
  store i32* %new_kom_pos, i32** %new_kom_pos.addr, align 8
  store i32* %is_conditional_ko, i32** %is_conditional_ko.addr, align 8
  store i32 %consider_conditional_ko, i32* %consider_conditional_ko.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @board_ko_pos, align 4
  store i32 %1, i32* %previous_board_ko_pos, align 4
  %2 = load i32, i32* %komaster.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %komaster.addr, align 4
  %cmp1 = icmp eq i32 %3, 4
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.14

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %kom_pos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %kom_pos.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 2
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.4
  %8 = load i32, i32* %kom_pos.addr, align 4
  %call = call i32 @is_ko(i32 %8, i32 2, i32* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.14, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %lor.lhs.false.10
  %9 = load i32, i32* %kom_pos.addr, align 4
  %call12 = call i32 @is_suicide(i32 %9, i32 2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.11, %lor.lhs.false.10, %lor.lhs.false
  %10 = load i32, i32* %komaster.addr, align 4
  %cmp15 = icmp eq i32 %10, 2
  br i1 %cmp15, label %land.lhs.true.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %11 = load i32, i32* %komaster.addr, align 4
  %cmp18 = icmp eq i32 %11, 5
  br i1 %cmp18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %lor.lhs.false.17, %lor.lhs.false.14
  %12 = load i32, i32* %kom_pos.addr, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom21
  %13 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %13 to i32
  %cmp24 = icmp eq i32 %conv23, 1
  br i1 %cmp24, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.20
  %14 = load i32, i32* %kom_pos.addr, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %15 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %15 to i32
  %cmp30 = icmp eq i32 %conv29, 2
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.26
  %16 = load i32, i32* %kom_pos.addr, align 4
  %call33 = call i32 @is_ko(i32 %16, i32 1, i32* null)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %lor.lhs.false.32
  %17 = load i32, i32* %kom_pos.addr, align 4
  %call36 = call i32 @is_suicide(i32 %17, i32 1)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.35, %lor.lhs.false.26, %land.lhs.true.20, %land.lhs.true.11, %lor.lhs.false.4, %land.lhs.true
  store i32 0, i32* %komaster.addr, align 4
  store i32 0, i32* %kom_pos.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.35, %lor.lhs.false.32, %lor.lhs.false.17
  %18 = load i32, i32* %komaster.addr, align 4
  %19 = load i32*, i32** %new_komaster.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %kom_pos.addr, align 4
  %21 = load i32*, i32** %new_kom_pos.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %is_conditional_ko.addr, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load i32, i32* %color.addr, align 4
  %call38 = call i32 @is_ko(i32 %23, i32 %24, i32* %kpos)
  store i32 %call38, i32* %ko_move, align 4
  %25 = load i32, i32* %ko_move, align 4
  %tobool39 = icmp ne i32 %25, 0
  br i1 %tobool39, label %if.else, label %if.then.40

if.then.40:                                       ; preds = %if.end
  %26 = load i32, i32* %komaster.addr, align 4
  %cmp41 = icmp eq i32 %26, 6
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %27 = load i32*, i32** %new_komaster.addr, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %new_kom_pos.addr, align 8
  store i32 0, i32* %28, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.40
  br label %if.end.110

if.else:                                          ; preds = %if.end
  %29 = load i32, i32* %komaster.addr, align 4
  %30 = load i32, i32* %other, align 4
  %cmp45 = icmp eq i32 %29, %30
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %if.else
  %31 = load i32, i32* %pos.addr, align 4
  %32 = load i32, i32* %kom_pos.addr, align 4
  %cmp48 = icmp eq i32 %31, %32
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.47, %if.else
  %33 = load i32, i32* %komaster.addr, align 4
  %cmp52 = icmp eq i32 %33, 4
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.51
  %34 = load i32, i32* %komaster.addr, align 4
  %cmp55 = icmp eq i32 %34, 5
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false.54, %if.end.51
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.54
  %35 = load i32, i32* %komaster.addr, align 4
  %36 = load i32, i32* %color.addr, align 4
  %cmp59 = icmp eq i32 %35, %36
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.81

land.lhs.true.61:                                 ; preds = %if.end.58
  %37 = load i32, i32* %kpos, align 4
  %38 = load i32, i32* %kom_pos.addr, align 4
  %add = add nsw i32 %38, 20
  %sub62 = sub nsw i32 %add, 1
  %cmp63 = icmp eq i32 %37, %sub62
  br i1 %cmp63, label %if.end.81, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.61
  %39 = load i32, i32* %kpos, align 4
  %40 = load i32, i32* %kom_pos.addr, align 4
  %sub66 = sub nsw i32 %40, 20
  %sub67 = sub nsw i32 %sub66, 1
  %cmp68 = icmp eq i32 %39, %sub67
  br i1 %cmp68, label %if.end.81, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.65
  %41 = load i32, i32* %kpos, align 4
  %42 = load i32, i32* %kom_pos.addr, align 4
  %sub71 = sub nsw i32 %42, 20
  %add72 = add nsw i32 %sub71, 1
  %cmp73 = icmp eq i32 %41, %add72
  br i1 %cmp73, label %if.end.81, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.70
  %43 = load i32, i32* %kpos, align 4
  %44 = load i32, i32* %kom_pos.addr, align 4
  %add76 = add nsw i32 %44, 20
  %add77 = add nsw i32 %add76, 1
  %cmp78 = icmp eq i32 %43, %add77
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %lor.lhs.false.75
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %lor.lhs.false.75, %lor.lhs.false.70, %lor.lhs.false.65, %land.lhs.true.61, %if.end.58
  %45 = load i32, i32* %komaster.addr, align 4
  %cmp82 = icmp eq i32 %45, 6
  br i1 %cmp82, label %if.then.84, label %if.end.109

if.then.84:                                       ; preds = %if.end.81
  %46 = load i32, i32* %pos.addr, align 4
  %47 = load i32, i32* @board_ko_pos, align 4
  %cmp85 = icmp ne i32 %46, %47
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.108

land.lhs.true.87:                                 ; preds = %if.then.84
  %48 = load i32, i32* %kpos, align 4
  %49 = load i32, i32* %kom_pos.addr, align 4
  %add88 = add nsw i32 %49, 20
  %sub89 = sub nsw i32 %add88, 1
  %cmp90 = icmp eq i32 %48, %sub89
  br i1 %cmp90, label %if.end.108, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.87
  %50 = load i32, i32* %kpos, align 4
  %51 = load i32, i32* %kom_pos.addr, align 4
  %sub93 = sub nsw i32 %51, 20
  %sub94 = sub nsw i32 %sub93, 1
  %cmp95 = icmp eq i32 %50, %sub94
  br i1 %cmp95, label %if.end.108, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.92
  %52 = load i32, i32* %kpos, align 4
  %53 = load i32, i32* %kom_pos.addr, align 4
  %sub98 = sub nsw i32 %53, 20
  %add99 = add nsw i32 %sub98, 1
  %cmp100 = icmp eq i32 %52, %add99
  br i1 %cmp100, label %if.end.108, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.97
  %54 = load i32, i32* %kpos, align 4
  %55 = load i32, i32* %kom_pos.addr, align 4
  %add103 = add nsw i32 %55, 20
  %add104 = add nsw i32 %add103, 1
  %cmp105 = icmp eq i32 %54, %add104
  br i1 %cmp105, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %lor.lhs.false.102
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %lor.lhs.false.102, %lor.lhs.false.97, %lor.lhs.false.92, %land.lhs.true.87, %if.then.84
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.81
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.44
  %56 = load i32, i32* %pos.addr, align 4
  %57 = load i32, i32* %color.addr, align 4
  %58 = load i8*, i8** %message.addr, align 8
  %59 = load i32, i32* %str.addr, align 4
  %60 = load i32, i32* %komaster.addr, align 4
  %61 = load i32, i32* %kom_pos.addr, align 4
  %call111 = call i32 @trymove(i32 %56, i32 %57, i8* %58, i32 %59, i32 %60, i32 %61)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.128, label %if.then.113

if.then.113:                                      ; preds = %if.end.110
  %62 = load i32, i32* %consider_conditional_ko.addr, align 4
  %tobool114 = icmp ne i32 %62, 0
  br i1 %tobool114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %if.then.113
  store i32 0, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.then.113
  %63 = load i32, i32* %pos.addr, align 4
  %64 = load i32, i32* %color.addr, align 4
  %65 = load i8*, i8** %message.addr, align 8
  %66 = load i32, i32* %komaster.addr, align 4
  %67 = load i32, i32* %kom_pos.addr, align 4
  %call117 = call i32 @tryko(i32 %63, i32 %64, i8* %65, i32 %66, i32 %67)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.120, label %if.then.119

if.then.119:                                      ; preds = %if.end.116
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.116
  %68 = load i32*, i32** %is_conditional_ko.addr, align 8
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %komaster.addr, align 4
  %cmp121 = icmp eq i32 %69, 0
  br i1 %cmp121, label %if.then.126, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.120
  %70 = load i32, i32* %komaster.addr, align 4
  %cmp124 = icmp eq i32 %70, 6
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %lor.lhs.false.123, %if.end.120
  %71 = load i32, i32* %color.addr, align 4
  %72 = load i32*, i32** %new_komaster.addr, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %kpos, align 4
  %74 = load i32*, i32** %new_kom_pos.addr, align 8
  store i32 %73, i32* %74, align 4
  store i32 1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %lor.lhs.false.123
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.110
  %75 = load i32, i32* %ko_move, align 4
  %tobool129 = icmp ne i32 %75, 0
  br i1 %tobool129, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %if.end.128
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.128
  %76 = load i32, i32* %komaster.addr, align 4
  %77 = load i32, i32* %other, align 4
  %cmp132 = icmp eq i32 %76, %77
  br i1 %cmp132, label %if.then.134, label %if.else.140

if.then.134:                                      ; preds = %if.end.131
  %78 = load i32, i32* %color.addr, align 4
  %cmp135 = icmp eq i32 %78, 1
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %if.then.134
  %79 = load i32*, i32** %new_komaster.addr, align 8
  store i32 5, i32* %79, align 4
  br label %if.end.139

if.else.138:                                      ; preds = %if.then.134
  %80 = load i32*, i32** %new_komaster.addr, align 8
  store i32 4, i32* %80, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.138, %if.then.137
  br label %if.end.150

if.else.140:                                      ; preds = %if.end.131
  %81 = load i32, i32* %komaster.addr, align 4
  %82 = load i32, i32* %color.addr, align 4
  %cmp141 = icmp eq i32 %81, %82
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.else.140
  %83 = load i32, i32* %kpos, align 4
  %84 = load i32*, i32** %new_kom_pos.addr, align 8
  store i32 %83, i32* %84, align 4
  br label %if.end.149

if.else.144:                                      ; preds = %if.else.140
  %85 = load i32, i32* %previous_board_ko_pos, align 4
  %cmp145 = icmp ne i32 %85, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.else.144
  %86 = load i32*, i32** %new_komaster.addr, align 8
  store i32 6, i32* %86, align 4
  %87 = load i32, i32* %previous_board_ko_pos, align 4
  %88 = load i32*, i32** %new_kom_pos.addr, align 8
  store i32 %87, i32* %88, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.else.144
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.143
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.139
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.150, %if.then.130, %if.then.126, %if.then.119, %if.then.115, %if.then.107, %if.then.80, %if.then.57, %if.then.50
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @is_ko(i32 %pos, i32 %color, i32* %ko_pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ko_pos.addr = alloca i32*, align 8
  %other = alloca i32, align 4
  %captures = alloca i32, align 4
  %kpos = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32* %ko_pos, i32** %ko_pos.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %captures, align 4
  store i32 0, i32* %kpos, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %1, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %4, 20
  %sub3 = sub nsw i32 %div, 1
  %5 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2501, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub3, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %color.addr, align 4
  %cmp7 = icmp eq i32 %7, 2
  br i1 %cmp7, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.15

if.else.10:                                       ; preds = %lor.lhs.false
  %8 = load i32, i32* %pos.addr, align 4
  %div11 = sdiv i32 %8, 20
  %sub12 = sub nsw i32 %div11, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem13 = srem i32 %9, 20
  %sub14 = sub nsw i32 %rem13, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2502, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i32 0, i32 0), i32 %sub12, i32 %sub14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.9
  %10 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %10, 20
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 3
  br i1 %cmp19, label %if.then.21, label %if.end.51

if.then.21:                                       ; preds = %if.end.15
  %12 = load i32, i32* %pos.addr, align 4
  %add22 = add nsw i32 %12, 20
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %14 = load i32, i32* %other, align 4
  %cmp26 = icmp ne i32 %conv25, %14
  br i1 %cmp26, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  br label %return

if.else.29:                                       ; preds = %if.then.21
  %15 = load i32, i32* %pos.addr, align 4
  %add30 = add nsw i32 %15, 20
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom31
  %16 = load i32, i32* %arrayidx32, align 4
  %idxprom33 = sext i32 %16 to i64
  %arrayidx34 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom33
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx34, i32 0, i32 3
  %17 = load i32, i32* %liberties, align 4
  %cmp35 = icmp eq i32 %17, 1
  br i1 %cmp35, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %if.else.29
  %18 = load i32, i32* %pos.addr, align 4
  %add38 = add nsw i32 %18, 20
  store i32 %add38, i32* %kpos, align 4
  %19 = load i32, i32* %pos.addr, align 4
  %add39 = add nsw i32 %19, 20
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom40
  %20 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %20 to i64
  %arrayidx43 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom42
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx43, i32 0, i32 1
  %21 = load i32, i32* %size, align 4
  %22 = load i32, i32* %captures, align 4
  %add44 = add nsw i32 %22, %21
  store i32 %add44, i32* %captures, align 4
  %23 = load i32, i32* %captures, align 4
  %cmp45 = icmp sgt i32 %23, 1
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.37
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.37
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.else.29
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.15
  %24 = load i32, i32* %pos.addr, align 4
  %sub52 = sub nsw i32 %24, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %25 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %25 to i32
  %cmp56 = icmp ne i32 %conv55, 3
  br i1 %cmp56, label %if.then.58, label %if.end.90

if.then.58:                                       ; preds = %if.end.51
  %26 = load i32, i32* %pos.addr, align 4
  %sub59 = sub nsw i32 %26, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom60
  %27 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %27 to i32
  %28 = load i32, i32* %other, align 4
  %cmp63 = icmp ne i32 %conv62, %28
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.then.58
  store i32 0, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.then.58
  %29 = load i32, i32* %pos.addr, align 4
  %sub67 = sub nsw i32 %29, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom68
  %30 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %30 to i64
  %arrayidx71 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom70
  %liberties72 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx71, i32 0, i32 3
  %31 = load i32, i32* %liberties72, align 4
  %cmp73 = icmp eq i32 %31, 1
  br i1 %cmp73, label %if.then.75, label %if.end.88

if.then.75:                                       ; preds = %if.else.66
  %32 = load i32, i32* %pos.addr, align 4
  %sub76 = sub nsw i32 %32, 1
  store i32 %sub76, i32* %kpos, align 4
  %33 = load i32, i32* %pos.addr, align 4
  %sub77 = sub nsw i32 %33, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom78
  %34 = load i32, i32* %arrayidx79, align 4
  %idxprom80 = sext i32 %34 to i64
  %arrayidx81 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom80
  %size82 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx81, i32 0, i32 1
  %35 = load i32, i32* %size82, align 4
  %36 = load i32, i32* %captures, align 4
  %add83 = add nsw i32 %36, %35
  store i32 %add83, i32* %captures, align 4
  %37 = load i32, i32* %captures, align 4
  %cmp84 = icmp sgt i32 %37, 1
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.75
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.75
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.else.66
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.51
  %38 = load i32, i32* %pos.addr, align 4
  %sub91 = sub nsw i32 %38, 20
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom92
  %39 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %39 to i32
  %cmp95 = icmp ne i32 %conv94, 3
  br i1 %cmp95, label %if.then.97, label %if.end.129

if.then.97:                                       ; preds = %if.end.90
  %40 = load i32, i32* %pos.addr, align 4
  %sub98 = sub nsw i32 %40, 20
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %41 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %41 to i32
  %42 = load i32, i32* %other, align 4
  %cmp102 = icmp ne i32 %conv101, %42
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.then.97
  store i32 0, i32* %retval
  br label %return

if.else.105:                                      ; preds = %if.then.97
  %43 = load i32, i32* %pos.addr, align 4
  %sub106 = sub nsw i32 %43, 20
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom107
  %44 = load i32, i32* %arrayidx108, align 4
  %idxprom109 = sext i32 %44 to i64
  %arrayidx110 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom109
  %liberties111 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx110, i32 0, i32 3
  %45 = load i32, i32* %liberties111, align 4
  %cmp112 = icmp eq i32 %45, 1
  br i1 %cmp112, label %if.then.114, label %if.end.127

if.then.114:                                      ; preds = %if.else.105
  %46 = load i32, i32* %pos.addr, align 4
  %sub115 = sub nsw i32 %46, 20
  store i32 %sub115, i32* %kpos, align 4
  %47 = load i32, i32* %pos.addr, align 4
  %sub116 = sub nsw i32 %47, 20
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom117
  %48 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %48 to i64
  %arrayidx120 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom119
  %size121 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx120, i32 0, i32 1
  %49 = load i32, i32* %size121, align 4
  %50 = load i32, i32* %captures, align 4
  %add122 = add nsw i32 %50, %49
  store i32 %add122, i32* %captures, align 4
  %51 = load i32, i32* %captures, align 4
  %cmp123 = icmp sgt i32 %51, 1
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.114
  store i32 0, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.then.114
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.else.105
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.90
  %52 = load i32, i32* %pos.addr, align 4
  %add130 = add nsw i32 %52, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom131
  %53 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %53 to i32
  %cmp134 = icmp ne i32 %conv133, 3
  br i1 %cmp134, label %if.then.136, label %if.end.168

if.then.136:                                      ; preds = %if.end.129
  %54 = load i32, i32* %pos.addr, align 4
  %add137 = add nsw i32 %54, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom138
  %55 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %55 to i32
  %56 = load i32, i32* %other, align 4
  %cmp141 = icmp ne i32 %conv140, %56
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.then.136
  store i32 0, i32* %retval
  br label %return

if.else.144:                                      ; preds = %if.then.136
  %57 = load i32, i32* %pos.addr, align 4
  %add145 = add nsw i32 %57, 1
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom146
  %58 = load i32, i32* %arrayidx147, align 4
  %idxprom148 = sext i32 %58 to i64
  %arrayidx149 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom148
  %liberties150 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx149, i32 0, i32 3
  %59 = load i32, i32* %liberties150, align 4
  %cmp151 = icmp eq i32 %59, 1
  br i1 %cmp151, label %if.then.153, label %if.end.166

if.then.153:                                      ; preds = %if.else.144
  %60 = load i32, i32* %pos.addr, align 4
  %add154 = add nsw i32 %60, 1
  store i32 %add154, i32* %kpos, align 4
  %61 = load i32, i32* %pos.addr, align 4
  %add155 = add nsw i32 %61, 1
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom156
  %62 = load i32, i32* %arrayidx157, align 4
  %idxprom158 = sext i32 %62 to i64
  %arrayidx159 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom158
  %size160 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx159, i32 0, i32 1
  %63 = load i32, i32* %size160, align 4
  %64 = load i32, i32* %captures, align 4
  %add161 = add nsw i32 %64, %63
  store i32 %add161, i32* %captures, align 4
  %65 = load i32, i32* %captures, align 4
  %cmp162 = icmp sgt i32 %65, 1
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.then.153
  store i32 0, i32* %retval
  br label %return

if.end.165:                                       ; preds = %if.then.153
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.else.144
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.129
  %66 = load i32, i32* %captures, align 4
  %cmp169 = icmp eq i32 %66, 1
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.end.168
  %67 = load i32*, i32** %ko_pos.addr, align 8
  %tobool = icmp ne i32* %67, null
  br i1 %tobool, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.then.171
  %68 = load i32, i32* %kpos, align 4
  %69 = load i32*, i32** %ko_pos.addr, align 8
  store i32 %68, i32* %69, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.then.171
  store i32 1, i32* %retval
  br label %return

if.end.174:                                       ; preds = %if.end.168
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %if.end.173, %if.then.164, %if.then.143, %if.then.125, %if.then.104, %if.then.86, %if.then.65, %if.then.47, %if.then.28
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define i32 @is_edge_vertex(i32 %pos) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %5, 20
  %sub4 = sub nsw i32 %add, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 3
  br i1 %cmp8, label %lor.lhs.false, label %if.then.17

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %sub10 = sub nsw i32 %7, 20
  %add11 = add nsw i32 %sub10, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %cmp15 = icmp ne i32 %conv14, 3
  br i1 %cmp15, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @countlib(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1325, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx11, i32 0, i32 3
  %8 = load i32, i32* %liberties, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @findlib(i32 %str, i32 %maxlib, i32* %libs) #0 {
entry:
  %str.addr = alloca i32, align 4
  %maxlib.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %liberties = alloca i32, align 4
  %s = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %maxlib, i32* %maxlib.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1348, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32*, i32** %libs.addr, align 8
  %cmp8 = icmp ne i32* %6, null
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %div12 = sdiv i32 %7, 20
  %sub13 = sub nsw i32 %div12, 1
  %8 = load i32, i32* %str.addr, align 4
  %rem14 = srem i32 %8, 20
  %sub15 = sub nsw i32 %rem14, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1349, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %sub13, i32 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  %9 = load i32, i32* %str.addr, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom17
  %10 = load i32, i32* %arrayidx18, align 4
  store i32 %10, i32* %s, align 4
  %11 = load i32, i32* %s, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom19
  %liberties21 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx20, i32 0, i32 3
  %12 = load i32, i32* %liberties21, align 4
  store i32 %12, i32* %liberties, align 4
  %13 = load i32, i32* %liberties, align 4
  %cmp22 = icmp sle i32 %13, 20
  br i1 %cmp22, label %if.then.27, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.16
  %14 = load i32, i32* %maxlib.addr, align 4
  %cmp25 = icmp sle i32 %14, 20
  br i1 %cmp25, label %if.then.27, label %if.else.39

if.then.27:                                       ; preds = %lor.lhs.false.24, %if.end.16
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.27
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %maxlib.addr, align 4
  %cmp28 = icmp slt i32 %15, %16
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %liberties, align 4
  %cmp30 = icmp slt i32 %17, %18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %19 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %20 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %20 to i64
  %21 = load i32, i32* %s, align 4
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom33
  %libs35 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx34, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [20 x i32], [20 x i32]* %libs35, i32 0, i64 %idxprom32
  %22 = load i32, i32* %arrayidx36, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %23 to i64
  %24 = load i32*, i32** %libs.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %24, i64 %idxprom37
  store i32 %22, i32* %arrayidx38, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.153

if.else.39:                                       ; preds = %lor.lhs.false.24
  %26 = load i32, i32* @liberty_mark, align 4
  %inc40 = add nsw i32 %26, 1
  store i32 %inc40, i32* @liberty_mark, align 4
  store i32 0, i32* %k, align 4
  %27 = load i32, i32* %s, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom41
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx42, i32 0, i32 2
  %28 = load i32, i32* %origin, align 4
  store i32 %28, i32* %pos, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.149, %if.else.39
  %29 = load i32, i32* %k, align 4
  %30 = load i32, i32* %maxlib.addr, align 4
  %cmp44 = icmp slt i32 %29, %30
  br i1 %cmp44, label %land.rhs.46, label %land.end.49

land.rhs.46:                                      ; preds = %for.cond.43
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %liberties, align 4
  %cmp47 = icmp slt i32 %31, %32
  br label %land.end.49

land.end.49:                                      ; preds = %land.rhs.46, %for.cond.43
  %33 = phi i1 [ false, %for.cond.43 ], [ %cmp47, %land.rhs.46 ]
  br i1 %33, label %for.body.50, label %for.end.152

for.body.50:                                      ; preds = %land.end.49
  %34 = load i32, i32* %pos, align 4
  %add = add nsw i32 %34, 20
  %idxprom51 = sext i32 %add to i64
  %arrayidx52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom51
  %35 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %35 to i32
  %cmp54 = icmp eq i32 %conv53, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %for.body.50
  %36 = load i32, i32* %pos, align 4
  %add56 = add nsw i32 %36, 20
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom57
  %37 = load i32, i32* %arrayidx58, align 4
  %38 = load i32, i32* @liberty_mark, align 4
  %cmp59 = icmp ne i32 %37, %38
  br i1 %cmp59, label %if.then.61, label %if.end.73

if.then.61:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %pos, align 4
  %add62 = add nsw i32 %39, 20
  %40 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %40, 1
  store i32 %inc63, i32* %k, align 4
  %idxprom64 = sext i32 %40 to i64
  %41 = load i32*, i32** %libs.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %41, i64 %idxprom64
  store i32 %add62, i32* %arrayidx65, align 4
  %42 = load i32, i32* @liberty_mark, align 4
  %43 = load i32, i32* %pos, align 4
  %add66 = add nsw i32 %43, 20
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom67
  store i32 %42, i32* %arrayidx68, align 4
  %44 = load i32, i32* %k, align 4
  %45 = load i32, i32* %maxlib.addr, align 4
  %cmp69 = icmp sge i32 %44, %45
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.61
  br label %for.end.152

if.end.72:                                        ; preds = %if.then.61
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %for.body.50
  %46 = load i32, i32* %pos, align 4
  %sub74 = sub nsw i32 %46, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom75
  %47 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %47 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.98

land.lhs.true.80:                                 ; preds = %if.end.73
  %48 = load i32, i32* %pos, align 4
  %sub81 = sub nsw i32 %48, 1
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom82
  %49 = load i32, i32* %arrayidx83, align 4
  %50 = load i32, i32* @liberty_mark, align 4
  %cmp84 = icmp ne i32 %49, %50
  br i1 %cmp84, label %if.then.86, label %if.end.98

if.then.86:                                       ; preds = %land.lhs.true.80
  %51 = load i32, i32* %pos, align 4
  %sub87 = sub nsw i32 %51, 1
  %52 = load i32, i32* %k, align 4
  %inc88 = add nsw i32 %52, 1
  store i32 %inc88, i32* %k, align 4
  %idxprom89 = sext i32 %52 to i64
  %53 = load i32*, i32** %libs.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %53, i64 %idxprom89
  store i32 %sub87, i32* %arrayidx90, align 4
  %54 = load i32, i32* @liberty_mark, align 4
  %55 = load i32, i32* %pos, align 4
  %sub91 = sub nsw i32 %55, 1
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom92
  store i32 %54, i32* %arrayidx93, align 4
  %56 = load i32, i32* %k, align 4
  %57 = load i32, i32* %maxlib.addr, align 4
  %cmp94 = icmp sge i32 %56, %57
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.then.86
  br label %for.end.152

if.end.97:                                        ; preds = %if.then.86
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.80, %if.end.73
  %58 = load i32, i32* %pos, align 4
  %sub99 = sub nsw i32 %58, 20
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom100
  %59 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %59 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.123

land.lhs.true.105:                                ; preds = %if.end.98
  %60 = load i32, i32* %pos, align 4
  %sub106 = sub nsw i32 %60, 20
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom107
  %61 = load i32, i32* %arrayidx108, align 4
  %62 = load i32, i32* @liberty_mark, align 4
  %cmp109 = icmp ne i32 %61, %62
  br i1 %cmp109, label %if.then.111, label %if.end.123

if.then.111:                                      ; preds = %land.lhs.true.105
  %63 = load i32, i32* %pos, align 4
  %sub112 = sub nsw i32 %63, 20
  %64 = load i32, i32* %k, align 4
  %inc113 = add nsw i32 %64, 1
  store i32 %inc113, i32* %k, align 4
  %idxprom114 = sext i32 %64 to i64
  %65 = load i32*, i32** %libs.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %65, i64 %idxprom114
  store i32 %sub112, i32* %arrayidx115, align 4
  %66 = load i32, i32* @liberty_mark, align 4
  %67 = load i32, i32* %pos, align 4
  %sub116 = sub nsw i32 %67, 20
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom117
  store i32 %66, i32* %arrayidx118, align 4
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %maxlib.addr, align 4
  %cmp119 = icmp sge i32 %68, %69
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.then.111
  br label %for.end.152

if.end.122:                                       ; preds = %if.then.111
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %land.lhs.true.105, %if.end.98
  %70 = load i32, i32* %pos, align 4
  %add124 = add nsw i32 %70, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom125
  %71 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %71 to i32
  %cmp128 = icmp eq i32 %conv127, 0
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.148

land.lhs.true.130:                                ; preds = %if.end.123
  %72 = load i32, i32* %pos, align 4
  %add131 = add nsw i32 %72, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom132
  %73 = load i32, i32* %arrayidx133, align 4
  %74 = load i32, i32* @liberty_mark, align 4
  %cmp134 = icmp ne i32 %73, %74
  br i1 %cmp134, label %if.then.136, label %if.end.148

if.then.136:                                      ; preds = %land.lhs.true.130
  %75 = load i32, i32* %pos, align 4
  %add137 = add nsw i32 %75, 1
  %76 = load i32, i32* %k, align 4
  %inc138 = add nsw i32 %76, 1
  store i32 %inc138, i32* %k, align 4
  %idxprom139 = sext i32 %76 to i64
  %77 = load i32*, i32** %libs.addr, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %77, i64 %idxprom139
  store i32 %add137, i32* %arrayidx140, align 4
  %78 = load i32, i32* @liberty_mark, align 4
  %79 = load i32, i32* %pos, align 4
  %add141 = add nsw i32 %79, 1
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom142
  store i32 %78, i32* %arrayidx143, align 4
  %80 = load i32, i32* %k, align 4
  %81 = load i32, i32* %maxlib.addr, align 4
  %cmp144 = icmp sge i32 %80, %81
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.136
  br label %for.end.152

if.end.147:                                       ; preds = %if.then.136
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.130, %if.end.123
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %82 = load i32, i32* %pos, align 4
  %idxprom150 = sext i32 %82 to i64
  %arrayidx151 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom150
  %83 = load i32, i32* %arrayidx151, align 4
  store i32 %83, i32* %pos, align 4
  br label %for.cond.43

for.end.152:                                      ; preds = %if.then.146, %if.then.121, %if.then.96, %if.then.71, %land.end.49
  br label %if.end.153

if.end.153:                                       ; preds = %for.end.152, %for.end
  %84 = load i32, i32* %liberties, align 4
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define i32 @fastlib(i32 %pos, i32 %color, i32 %ignore_captures) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %ignore_captures.addr = alloca i32, align 4
  %ally1 = alloca i32, align 4
  %ally2 = alloca i32, align 4
  %fast_liberties = alloca i32, align 4
  %k = alloca i32, align 4
  %neighbor = alloca i32, align 4
  %neighbor_size = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %ignore_captures, i32* %ignore_captures.addr, align 4
  store i32 -1, i32* %ally1, align 4
  store i32 -1, i32* %ally2, align 4
  store i32 0, i32* %fast_liberties, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %3, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1435, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.13

if.else.8:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* %pos.addr, align 4
  %div9 = sdiv i32 %6, 20
  %sub10 = sub nsw i32 %div9, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem11 = srem i32 %7, 20
  %sub12 = sub nsw i32 %rem11, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1436, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub10, i32 %sub12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.8, %if.then.7
  %8 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %8, 20
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %10 = load i32, i32* %color.addr, align 4
  %cmp17 = icmp eq i32 %conv16, %10
  br i1 %cmp17, label %if.then.19, label %if.else.106

if.then.19:                                       ; preds = %if.end.13
  %11 = load i32, i32* %pos.addr, align 4
  %add20 = add nsw i32 %11, 20
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom21
  %12 = load i32, i32* %arrayidx22, align 4
  store i32 %12, i32* %ally1, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %sub23 = sub nsw i32 %13, 1
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %14 to i32
  %15 = load i32, i32* %color.addr, align 4
  %cmp27 = icmp eq i32 %conv26, %15
  br i1 %cmp27, label %land.lhs.true, label %if.else.58

land.lhs.true:                                    ; preds = %if.then.19
  %16 = load i32, i32* %pos.addr, align 4
  %sub29 = sub nsw i32 %16, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom30
  %17 = load i32, i32* %arrayidx31, align 4
  %18 = load i32, i32* %ally1, align 4
  %cmp32 = icmp ne i32 %17, %18
  br i1 %cmp32, label %if.then.34, label %if.else.58

if.then.34:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %pos.addr, align 4
  %sub35 = sub nsw i32 %19, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom36
  %20 = load i32, i32* %arrayidx37, align 4
  store i32 %20, i32* %ally2, align 4
  %21 = load i32, i32* %pos.addr, align 4
  %sub38 = sub nsw i32 %21, 20
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %22 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %22 to i32
  %23 = load i32, i32* %color.addr, align 4
  %cmp42 = icmp eq i32 %conv41, %23
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.57

land.lhs.true.44:                                 ; preds = %if.then.34
  %24 = load i32, i32* %pos.addr, align 4
  %sub45 = sub nsw i32 %24, 20
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom46
  %25 = load i32, i32* %arrayidx47, align 4
  %26 = load i32, i32* %ally1, align 4
  %cmp48 = icmp ne i32 %25, %26
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.57

land.lhs.true.50:                                 ; preds = %land.lhs.true.44
  %27 = load i32, i32* %pos.addr, align 4
  %sub51 = sub nsw i32 %27, 20
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom52
  %28 = load i32, i32* %arrayidx53, align 4
  %29 = load i32, i32* %ally2, align 4
  %cmp54 = icmp ne i32 %28, %29
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.50
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %land.lhs.true.50, %land.lhs.true.44, %if.then.34
  br label %if.end.76

if.else.58:                                       ; preds = %land.lhs.true, %if.then.19
  %30 = load i32, i32* %pos.addr, align 4
  %sub59 = sub nsw i32 %30, 20
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom60
  %31 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %31 to i32
  %32 = load i32, i32* %color.addr, align 4
  %cmp63 = icmp eq i32 %conv62, %32
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.75

land.lhs.true.65:                                 ; preds = %if.else.58
  %33 = load i32, i32* %pos.addr, align 4
  %sub66 = sub nsw i32 %33, 20
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom67
  %34 = load i32, i32* %arrayidx68, align 4
  %35 = load i32, i32* %ally1, align 4
  %cmp69 = icmp ne i32 %34, %35
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %land.lhs.true.65
  %36 = load i32, i32* %pos.addr, align 4
  %sub72 = sub nsw i32 %36, 20
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom73
  %37 = load i32, i32* %arrayidx74, align 4
  store i32 %37, i32* %ally2, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %land.lhs.true.65, %if.else.58
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.57
  %38 = load i32, i32* %pos.addr, align 4
  %add77 = add nsw i32 %38, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom78
  %39 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %39 to i32
  %40 = load i32, i32* %color.addr, align 4
  %cmp81 = icmp eq i32 %conv80, %40
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.105

land.lhs.true.83:                                 ; preds = %if.end.76
  %41 = load i32, i32* %pos.addr, align 4
  %add84 = add nsw i32 %41, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom85
  %42 = load i32, i32* %arrayidx86, align 4
  %43 = load i32, i32* %ally1, align 4
  %cmp87 = icmp ne i32 %42, %43
  br i1 %cmp87, label %if.then.89, label %if.end.105

if.then.89:                                       ; preds = %land.lhs.true.83
  %44 = load i32, i32* %ally2, align 4
  %cmp90 = icmp slt i32 %44, 0
  br i1 %cmp90, label %if.then.92, label %if.else.96

if.then.92:                                       ; preds = %if.then.89
  %45 = load i32, i32* %pos.addr, align 4
  %add93 = add nsw i32 %45, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom94
  %46 = load i32, i32* %arrayidx95, align 4
  store i32 %46, i32* %ally2, align 4
  br label %if.end.104

if.else.96:                                       ; preds = %if.then.89
  %47 = load i32, i32* %pos.addr, align 4
  %add97 = add nsw i32 %47, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom98
  %48 = load i32, i32* %arrayidx99, align 4
  %49 = load i32, i32* %ally2, align 4
  %cmp100 = icmp ne i32 %48, %49
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.96
  store i32 -1, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.else.96
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.92
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %land.lhs.true.83, %if.end.76
  br label %if.end.214

if.else.106:                                      ; preds = %if.end.13
  %50 = load i32, i32* %pos.addr, align 4
  %sub107 = sub nsw i32 %50, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %51 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %51 to i32
  %52 = load i32, i32* %color.addr, align 4
  %cmp111 = icmp eq i32 %conv110, %52
  br i1 %cmp111, label %if.then.113, label %if.else.172

if.then.113:                                      ; preds = %if.else.106
  %53 = load i32, i32* %pos.addr, align 4
  %sub114 = sub nsw i32 %53, 1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom115
  %54 = load i32, i32* %arrayidx116, align 4
  store i32 %54, i32* %ally1, align 4
  %55 = load i32, i32* %pos.addr, align 4
  %sub117 = sub nsw i32 %55, 20
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom118
  %56 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %56 to i32
  %57 = load i32, i32* %color.addr, align 4
  %cmp121 = icmp eq i32 %conv120, %57
  br i1 %cmp121, label %land.lhs.true.123, label %if.else.153

land.lhs.true.123:                                ; preds = %if.then.113
  %58 = load i32, i32* %pos.addr, align 4
  %sub124 = sub nsw i32 %58, 20
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom125
  %59 = load i32, i32* %arrayidx126, align 4
  %60 = load i32, i32* %ally1, align 4
  %cmp127 = icmp ne i32 %59, %60
  br i1 %cmp127, label %if.then.129, label %if.else.153

if.then.129:                                      ; preds = %land.lhs.true.123
  %61 = load i32, i32* %pos.addr, align 4
  %sub130 = sub nsw i32 %61, 20
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom131
  %62 = load i32, i32* %arrayidx132, align 4
  store i32 %62, i32* %ally2, align 4
  %63 = load i32, i32* %pos.addr, align 4
  %add133 = add nsw i32 %63, 1
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom134
  %64 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %64 to i32
  %65 = load i32, i32* %color.addr, align 4
  %cmp137 = icmp eq i32 %conv136, %65
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.152

land.lhs.true.139:                                ; preds = %if.then.129
  %66 = load i32, i32* %pos.addr, align 4
  %add140 = add nsw i32 %66, 1
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom141
  %67 = load i32, i32* %arrayidx142, align 4
  %68 = load i32, i32* %ally1, align 4
  %cmp143 = icmp ne i32 %67, %68
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.152

land.lhs.true.145:                                ; preds = %land.lhs.true.139
  %69 = load i32, i32* %pos.addr, align 4
  %add146 = add nsw i32 %69, 1
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom147
  %70 = load i32, i32* %arrayidx148, align 4
  %71 = load i32, i32* %ally2, align 4
  %cmp149 = icmp ne i32 %70, %71
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %land.lhs.true.145
  store i32 -1, i32* %retval
  br label %return

if.end.152:                                       ; preds = %land.lhs.true.145, %land.lhs.true.139, %if.then.129
  br label %if.end.171

if.else.153:                                      ; preds = %land.lhs.true.123, %if.then.113
  %72 = load i32, i32* %pos.addr, align 4
  %add154 = add nsw i32 %72, 1
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom155
  %73 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %73 to i32
  %74 = load i32, i32* %color.addr, align 4
  %cmp158 = icmp eq i32 %conv157, %74
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.170

land.lhs.true.160:                                ; preds = %if.else.153
  %75 = load i32, i32* %pos.addr, align 4
  %add161 = add nsw i32 %75, 1
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom162
  %76 = load i32, i32* %arrayidx163, align 4
  %77 = load i32, i32* %ally1, align 4
  %cmp164 = icmp ne i32 %76, %77
  br i1 %cmp164, label %if.then.166, label %if.end.170

if.then.166:                                      ; preds = %land.lhs.true.160
  %78 = load i32, i32* %pos.addr, align 4
  %add167 = add nsw i32 %78, 1
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom168
  %79 = load i32, i32* %arrayidx169, align 4
  store i32 %79, i32* %ally2, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.166, %land.lhs.true.160, %if.else.153
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.end.152
  br label %if.end.213

if.else.172:                                      ; preds = %if.else.106
  %80 = load i32, i32* %pos.addr, align 4
  %sub173 = sub nsw i32 %80, 20
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom174
  %81 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %81 to i32
  %82 = load i32, i32* %color.addr, align 4
  %cmp177 = icmp eq i32 %conv176, %82
  br i1 %cmp177, label %if.then.179, label %if.else.200

if.then.179:                                      ; preds = %if.else.172
  %83 = load i32, i32* %pos.addr, align 4
  %sub180 = sub nsw i32 %83, 20
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom181
  %84 = load i32, i32* %arrayidx182, align 4
  store i32 %84, i32* %ally1, align 4
  %85 = load i32, i32* %pos.addr, align 4
  %add183 = add nsw i32 %85, 1
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom184
  %86 = load i8, i8* %arrayidx185, align 1
  %conv186 = zext i8 %86 to i32
  %87 = load i32, i32* %color.addr, align 4
  %cmp187 = icmp eq i32 %conv186, %87
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.199

land.lhs.true.189:                                ; preds = %if.then.179
  %88 = load i32, i32* %pos.addr, align 4
  %add190 = add nsw i32 %88, 1
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom191
  %89 = load i32, i32* %arrayidx192, align 4
  %90 = load i32, i32* %ally1, align 4
  %cmp193 = icmp ne i32 %89, %90
  br i1 %cmp193, label %if.then.195, label %if.end.199

if.then.195:                                      ; preds = %land.lhs.true.189
  %91 = load i32, i32* %pos.addr, align 4
  %add196 = add nsw i32 %91, 1
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom197
  %92 = load i32, i32* %arrayidx198, align 4
  store i32 %92, i32* %ally2, align 4
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.195, %land.lhs.true.189, %if.then.179
  br label %if.end.212

if.else.200:                                      ; preds = %if.else.172
  %93 = load i32, i32* %pos.addr, align 4
  %add201 = add nsw i32 %93, 1
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom202
  %94 = load i8, i8* %arrayidx203, align 1
  %conv204 = zext i8 %94 to i32
  %95 = load i32, i32* %color.addr, align 4
  %cmp205 = icmp eq i32 %conv204, %95
  br i1 %cmp205, label %if.then.207, label %if.end.211

if.then.207:                                      ; preds = %if.else.200
  %96 = load i32, i32* %pos.addr, align 4
  %add208 = add nsw i32 %96, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom209
  %97 = load i32, i32* %arrayidx210, align 4
  store i32 %97, i32* %ally1, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.207, %if.else.200
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.end.199
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.171
  br label %if.end.214

if.end.214:                                       ; preds = %if.end.213, %if.end.105
  %98 = load i32, i32* %ignore_captures.addr, align 4
  %tobool = icmp ne i32 %98, 0
  br i1 %tobool, label %if.then.215, label %if.else.892

if.then.215:                                      ; preds = %if.end.214
  %99 = load i32, i32* %ally1, align 4
  %cmp216 = icmp slt i32 %99, 0
  br i1 %cmp216, label %if.then.218, label %if.else.254

if.then.218:                                      ; preds = %if.then.215
  %100 = load i32, i32* %pos.addr, align 4
  %add219 = add nsw i32 %100, 20
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom220
  %101 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %101 to i32
  %cmp223 = icmp eq i32 %conv222, 0
  br i1 %cmp223, label %if.then.225, label %if.end.226

if.then.225:                                      ; preds = %if.then.218
  %102 = load i32, i32* %fast_liberties, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %fast_liberties, align 4
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.225, %if.then.218
  %103 = load i32, i32* %pos.addr, align 4
  %sub227 = sub nsw i32 %103, 1
  %idxprom228 = sext i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom228
  %104 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %104 to i32
  %cmp231 = icmp eq i32 %conv230, 0
  br i1 %cmp231, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.end.226
  %105 = load i32, i32* %fast_liberties, align 4
  %inc234 = add nsw i32 %105, 1
  store i32 %inc234, i32* %fast_liberties, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.end.226
  %106 = load i32, i32* %pos.addr, align 4
  %sub236 = sub nsw i32 %106, 20
  %idxprom237 = sext i32 %sub236 to i64
  %arrayidx238 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom237
  %107 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %107 to i32
  %cmp240 = icmp eq i32 %conv239, 0
  br i1 %cmp240, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %if.end.235
  %108 = load i32, i32* %fast_liberties, align 4
  %inc243 = add nsw i32 %108, 1
  store i32 %inc243, i32* %fast_liberties, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.242, %if.end.235
  %109 = load i32, i32* %pos.addr, align 4
  %add245 = add nsw i32 %109, 1
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom246
  %110 = load i8, i8* %arrayidx247, align 1
  %conv248 = zext i8 %110 to i32
  %cmp249 = icmp eq i32 %conv248, 0
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.end.244
  %111 = load i32, i32* %fast_liberties, align 4
  %inc252 = add nsw i32 %111, 1
  store i32 %inc252, i32* %fast_liberties, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %if.end.244
  br label %if.end.891

if.else.254:                                      ; preds = %if.then.215
  %112 = load i32, i32* %ally2, align 4
  %cmp255 = icmp slt i32 %112, 0
  br i1 %cmp255, label %if.then.257, label %if.else.478

if.then.257:                                      ; preds = %if.else.254
  %113 = load i32, i32* %pos.addr, align 4
  %add258 = add nsw i32 %113, 20
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom259
  %114 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %114 to i32
  %cmp262 = icmp eq i32 %conv261, 0
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.311

land.lhs.true.264:                                ; preds = %if.then.257
  %115 = load i32, i32* %pos.addr, align 4
  %add265 = add nsw i32 %115, 20
  %add266 = add nsw i32 %add265, 20
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom267
  %116 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %116 to i32
  %117 = load i32, i32* %color.addr, align 4
  %cmp270 = icmp eq i32 %conv269, %117
  br i1 %cmp270, label %land.lhs.true.272, label %lor.lhs.false.279

land.lhs.true.272:                                ; preds = %land.lhs.true.264
  %118 = load i32, i32* %pos.addr, align 4
  %add273 = add nsw i32 %118, 20
  %add274 = add nsw i32 %add273, 20
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom275
  %119 = load i32, i32* %arrayidx276, align 4
  %120 = load i32, i32* %ally1, align 4
  %cmp277 = icmp eq i32 %119, %120
  br i1 %cmp277, label %if.end.311, label %lor.lhs.false.279

lor.lhs.false.279:                                ; preds = %land.lhs.true.272, %land.lhs.true.264
  %121 = load i32, i32* %pos.addr, align 4
  %add280 = add nsw i32 %121, 20
  %sub281 = sub nsw i32 %add280, 1
  %idxprom282 = sext i32 %sub281 to i64
  %arrayidx283 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom282
  %122 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %122 to i32
  %123 = load i32, i32* %color.addr, align 4
  %cmp285 = icmp eq i32 %conv284, %123
  br i1 %cmp285, label %land.lhs.true.287, label %lor.lhs.false.294

land.lhs.true.287:                                ; preds = %lor.lhs.false.279
  %124 = load i32, i32* %pos.addr, align 4
  %add288 = add nsw i32 %124, 20
  %sub289 = sub nsw i32 %add288, 1
  %idxprom290 = sext i32 %sub289 to i64
  %arrayidx291 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom290
  %125 = load i32, i32* %arrayidx291, align 4
  %126 = load i32, i32* %ally1, align 4
  %cmp292 = icmp eq i32 %125, %126
  br i1 %cmp292, label %if.end.311, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %land.lhs.true.287, %lor.lhs.false.279
  %127 = load i32, i32* %pos.addr, align 4
  %add295 = add nsw i32 %127, 20
  %add296 = add nsw i32 %add295, 1
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom297
  %128 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %128 to i32
  %129 = load i32, i32* %color.addr, align 4
  %cmp300 = icmp eq i32 %conv299, %129
  br i1 %cmp300, label %land.lhs.true.302, label %if.then.309

land.lhs.true.302:                                ; preds = %lor.lhs.false.294
  %130 = load i32, i32* %pos.addr, align 4
  %add303 = add nsw i32 %130, 20
  %add304 = add nsw i32 %add303, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom305
  %131 = load i32, i32* %arrayidx306, align 4
  %132 = load i32, i32* %ally1, align 4
  %cmp307 = icmp eq i32 %131, %132
  br i1 %cmp307, label %if.end.311, label %if.then.309

if.then.309:                                      ; preds = %land.lhs.true.302, %lor.lhs.false.294
  %133 = load i32, i32* %fast_liberties, align 4
  %inc310 = add nsw i32 %133, 1
  store i32 %inc310, i32* %fast_liberties, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.309, %land.lhs.true.302, %land.lhs.true.287, %land.lhs.true.272, %if.then.257
  %134 = load i32, i32* %pos.addr, align 4
  %sub312 = sub nsw i32 %134, 1
  %idxprom313 = sext i32 %sub312 to i64
  %arrayidx314 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom313
  %135 = load i8, i8* %arrayidx314, align 1
  %conv315 = zext i8 %135 to i32
  %cmp316 = icmp eq i32 %conv315, 0
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.365

land.lhs.true.318:                                ; preds = %if.end.311
  %136 = load i32, i32* %pos.addr, align 4
  %sub319 = sub nsw i32 %136, 1
  %sub320 = sub nsw i32 %sub319, 1
  %idxprom321 = sext i32 %sub320 to i64
  %arrayidx322 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom321
  %137 = load i8, i8* %arrayidx322, align 1
  %conv323 = zext i8 %137 to i32
  %138 = load i32, i32* %color.addr, align 4
  %cmp324 = icmp eq i32 %conv323, %138
  br i1 %cmp324, label %land.lhs.true.326, label %lor.lhs.false.333

land.lhs.true.326:                                ; preds = %land.lhs.true.318
  %139 = load i32, i32* %pos.addr, align 4
  %sub327 = sub nsw i32 %139, 1
  %sub328 = sub nsw i32 %sub327, 1
  %idxprom329 = sext i32 %sub328 to i64
  %arrayidx330 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom329
  %140 = load i32, i32* %arrayidx330, align 4
  %141 = load i32, i32* %ally1, align 4
  %cmp331 = icmp eq i32 %140, %141
  br i1 %cmp331, label %if.end.365, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %land.lhs.true.326, %land.lhs.true.318
  %142 = load i32, i32* %pos.addr, align 4
  %sub334 = sub nsw i32 %142, 1
  %sub335 = sub nsw i32 %sub334, 20
  %idxprom336 = sext i32 %sub335 to i64
  %arrayidx337 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom336
  %143 = load i8, i8* %arrayidx337, align 1
  %conv338 = zext i8 %143 to i32
  %144 = load i32, i32* %color.addr, align 4
  %cmp339 = icmp eq i32 %conv338, %144
  br i1 %cmp339, label %land.lhs.true.341, label %lor.lhs.false.348

land.lhs.true.341:                                ; preds = %lor.lhs.false.333
  %145 = load i32, i32* %pos.addr, align 4
  %sub342 = sub nsw i32 %145, 1
  %sub343 = sub nsw i32 %sub342, 20
  %idxprom344 = sext i32 %sub343 to i64
  %arrayidx345 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom344
  %146 = load i32, i32* %arrayidx345, align 4
  %147 = load i32, i32* %ally1, align 4
  %cmp346 = icmp eq i32 %146, %147
  br i1 %cmp346, label %if.end.365, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %land.lhs.true.341, %lor.lhs.false.333
  %148 = load i32, i32* %pos.addr, align 4
  %sub349 = sub nsw i32 %148, 1
  %add350 = add nsw i32 %sub349, 20
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom351
  %149 = load i8, i8* %arrayidx352, align 1
  %conv353 = zext i8 %149 to i32
  %150 = load i32, i32* %color.addr, align 4
  %cmp354 = icmp eq i32 %conv353, %150
  br i1 %cmp354, label %land.lhs.true.356, label %if.then.363

land.lhs.true.356:                                ; preds = %lor.lhs.false.348
  %151 = load i32, i32* %pos.addr, align 4
  %sub357 = sub nsw i32 %151, 1
  %add358 = add nsw i32 %sub357, 20
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom359
  %152 = load i32, i32* %arrayidx360, align 4
  %153 = load i32, i32* %ally1, align 4
  %cmp361 = icmp eq i32 %152, %153
  br i1 %cmp361, label %if.end.365, label %if.then.363

if.then.363:                                      ; preds = %land.lhs.true.356, %lor.lhs.false.348
  %154 = load i32, i32* %fast_liberties, align 4
  %inc364 = add nsw i32 %154, 1
  store i32 %inc364, i32* %fast_liberties, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.363, %land.lhs.true.356, %land.lhs.true.341, %land.lhs.true.326, %if.end.311
  %155 = load i32, i32* %pos.addr, align 4
  %sub366 = sub nsw i32 %155, 20
  %idxprom367 = sext i32 %sub366 to i64
  %arrayidx368 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom367
  %156 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %156 to i32
  %cmp370 = icmp eq i32 %conv369, 0
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.419

land.lhs.true.372:                                ; preds = %if.end.365
  %157 = load i32, i32* %pos.addr, align 4
  %sub373 = sub nsw i32 %157, 20
  %sub374 = sub nsw i32 %sub373, 20
  %idxprom375 = sext i32 %sub374 to i64
  %arrayidx376 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom375
  %158 = load i8, i8* %arrayidx376, align 1
  %conv377 = zext i8 %158 to i32
  %159 = load i32, i32* %color.addr, align 4
  %cmp378 = icmp eq i32 %conv377, %159
  br i1 %cmp378, label %land.lhs.true.380, label %lor.lhs.false.387

land.lhs.true.380:                                ; preds = %land.lhs.true.372
  %160 = load i32, i32* %pos.addr, align 4
  %sub381 = sub nsw i32 %160, 20
  %sub382 = sub nsw i32 %sub381, 20
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom383
  %161 = load i32, i32* %arrayidx384, align 4
  %162 = load i32, i32* %ally1, align 4
  %cmp385 = icmp eq i32 %161, %162
  br i1 %cmp385, label %if.end.419, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %land.lhs.true.380, %land.lhs.true.372
  %163 = load i32, i32* %pos.addr, align 4
  %sub388 = sub nsw i32 %163, 20
  %add389 = add nsw i32 %sub388, 1
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom390
  %164 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %164 to i32
  %165 = load i32, i32* %color.addr, align 4
  %cmp393 = icmp eq i32 %conv392, %165
  br i1 %cmp393, label %land.lhs.true.395, label %lor.lhs.false.402

land.lhs.true.395:                                ; preds = %lor.lhs.false.387
  %166 = load i32, i32* %pos.addr, align 4
  %sub396 = sub nsw i32 %166, 20
  %add397 = add nsw i32 %sub396, 1
  %idxprom398 = sext i32 %add397 to i64
  %arrayidx399 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom398
  %167 = load i32, i32* %arrayidx399, align 4
  %168 = load i32, i32* %ally1, align 4
  %cmp400 = icmp eq i32 %167, %168
  br i1 %cmp400, label %if.end.419, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %land.lhs.true.395, %lor.lhs.false.387
  %169 = load i32, i32* %pos.addr, align 4
  %sub403 = sub nsw i32 %169, 20
  %sub404 = sub nsw i32 %sub403, 1
  %idxprom405 = sext i32 %sub404 to i64
  %arrayidx406 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom405
  %170 = load i8, i8* %arrayidx406, align 1
  %conv407 = zext i8 %170 to i32
  %171 = load i32, i32* %color.addr, align 4
  %cmp408 = icmp eq i32 %conv407, %171
  br i1 %cmp408, label %land.lhs.true.410, label %if.then.417

land.lhs.true.410:                                ; preds = %lor.lhs.false.402
  %172 = load i32, i32* %pos.addr, align 4
  %sub411 = sub nsw i32 %172, 20
  %sub412 = sub nsw i32 %sub411, 1
  %idxprom413 = sext i32 %sub412 to i64
  %arrayidx414 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom413
  %173 = load i32, i32* %arrayidx414, align 4
  %174 = load i32, i32* %ally1, align 4
  %cmp415 = icmp eq i32 %173, %174
  br i1 %cmp415, label %if.end.419, label %if.then.417

if.then.417:                                      ; preds = %land.lhs.true.410, %lor.lhs.false.402
  %175 = load i32, i32* %fast_liberties, align 4
  %inc418 = add nsw i32 %175, 1
  store i32 %inc418, i32* %fast_liberties, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.417, %land.lhs.true.410, %land.lhs.true.395, %land.lhs.true.380, %if.end.365
  %176 = load i32, i32* %pos.addr, align 4
  %add420 = add nsw i32 %176, 1
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom421
  %177 = load i8, i8* %arrayidx422, align 1
  %conv423 = zext i8 %177 to i32
  %cmp424 = icmp eq i32 %conv423, 0
  br i1 %cmp424, label %land.lhs.true.426, label %if.end.473

land.lhs.true.426:                                ; preds = %if.end.419
  %178 = load i32, i32* %pos.addr, align 4
  %add427 = add nsw i32 %178, 1
  %add428 = add nsw i32 %add427, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom429
  %179 = load i8, i8* %arrayidx430, align 1
  %conv431 = zext i8 %179 to i32
  %180 = load i32, i32* %color.addr, align 4
  %cmp432 = icmp eq i32 %conv431, %180
  br i1 %cmp432, label %land.lhs.true.434, label %lor.lhs.false.441

land.lhs.true.434:                                ; preds = %land.lhs.true.426
  %181 = load i32, i32* %pos.addr, align 4
  %add435 = add nsw i32 %181, 1
  %add436 = add nsw i32 %add435, 1
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom437
  %182 = load i32, i32* %arrayidx438, align 4
  %183 = load i32, i32* %ally1, align 4
  %cmp439 = icmp eq i32 %182, %183
  br i1 %cmp439, label %if.end.473, label %lor.lhs.false.441

lor.lhs.false.441:                                ; preds = %land.lhs.true.434, %land.lhs.true.426
  %184 = load i32, i32* %pos.addr, align 4
  %add442 = add nsw i32 %184, 1
  %add443 = add nsw i32 %add442, 20
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom444
  %185 = load i8, i8* %arrayidx445, align 1
  %conv446 = zext i8 %185 to i32
  %186 = load i32, i32* %color.addr, align 4
  %cmp447 = icmp eq i32 %conv446, %186
  br i1 %cmp447, label %land.lhs.true.449, label %lor.lhs.false.456

land.lhs.true.449:                                ; preds = %lor.lhs.false.441
  %187 = load i32, i32* %pos.addr, align 4
  %add450 = add nsw i32 %187, 1
  %add451 = add nsw i32 %add450, 20
  %idxprom452 = sext i32 %add451 to i64
  %arrayidx453 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom452
  %188 = load i32, i32* %arrayidx453, align 4
  %189 = load i32, i32* %ally1, align 4
  %cmp454 = icmp eq i32 %188, %189
  br i1 %cmp454, label %if.end.473, label %lor.lhs.false.456

lor.lhs.false.456:                                ; preds = %land.lhs.true.449, %lor.lhs.false.441
  %190 = load i32, i32* %pos.addr, align 4
  %add457 = add nsw i32 %190, 1
  %sub458 = sub nsw i32 %add457, 20
  %idxprom459 = sext i32 %sub458 to i64
  %arrayidx460 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom459
  %191 = load i8, i8* %arrayidx460, align 1
  %conv461 = zext i8 %191 to i32
  %192 = load i32, i32* %color.addr, align 4
  %cmp462 = icmp eq i32 %conv461, %192
  br i1 %cmp462, label %land.lhs.true.464, label %if.then.471

land.lhs.true.464:                                ; preds = %lor.lhs.false.456
  %193 = load i32, i32* %pos.addr, align 4
  %add465 = add nsw i32 %193, 1
  %sub466 = sub nsw i32 %add465, 20
  %idxprom467 = sext i32 %sub466 to i64
  %arrayidx468 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom467
  %194 = load i32, i32* %arrayidx468, align 4
  %195 = load i32, i32* %ally1, align 4
  %cmp469 = icmp eq i32 %194, %195
  br i1 %cmp469, label %if.end.473, label %if.then.471

if.then.471:                                      ; preds = %land.lhs.true.464, %lor.lhs.false.456
  %196 = load i32, i32* %fast_liberties, align 4
  %inc472 = add nsw i32 %196, 1
  store i32 %inc472, i32* %fast_liberties, align 4
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.471, %land.lhs.true.464, %land.lhs.true.449, %land.lhs.true.434, %if.end.419
  %197 = load i32, i32* %ally1, align 4
  %idxprom474 = sext i32 %197 to i64
  %arrayidx475 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom474
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx475, i32 0, i32 3
  %198 = load i32, i32* %liberties, align 4
  %sub476 = sub nsw i32 %198, 1
  %199 = load i32, i32* %fast_liberties, align 4
  %add477 = add nsw i32 %199, %sub476
  store i32 %add477, i32* %fast_liberties, align 4
  br label %if.end.890

if.else.478:                                      ; preds = %if.else.254
  %200 = load i32, i32* %pos.addr, align 4
  %add479 = add nsw i32 %200, 20
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom480
  %201 = load i8, i8* %arrayidx481, align 1
  %conv482 = zext i8 %201 to i32
  %cmp483 = icmp eq i32 %conv482, 0
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.577

land.lhs.true.485:                                ; preds = %if.else.478
  %202 = load i32, i32* %pos.addr, align 4
  %add486 = add nsw i32 %202, 20
  %add487 = add nsw i32 %add486, 20
  %idxprom488 = sext i32 %add487 to i64
  %arrayidx489 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom488
  %203 = load i8, i8* %arrayidx489, align 1
  %conv490 = zext i8 %203 to i32
  %204 = load i32, i32* %color.addr, align 4
  %cmp491 = icmp eq i32 %conv490, %204
  br i1 %cmp491, label %land.lhs.true.493, label %lor.lhs.false.500

land.lhs.true.493:                                ; preds = %land.lhs.true.485
  %205 = load i32, i32* %pos.addr, align 4
  %add494 = add nsw i32 %205, 20
  %add495 = add nsw i32 %add494, 20
  %idxprom496 = sext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom496
  %206 = load i32, i32* %arrayidx497, align 4
  %207 = load i32, i32* %ally1, align 4
  %cmp498 = icmp eq i32 %206, %207
  br i1 %cmp498, label %if.end.577, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %land.lhs.true.493, %land.lhs.true.485
  %208 = load i32, i32* %pos.addr, align 4
  %add501 = add nsw i32 %208, 20
  %sub502 = sub nsw i32 %add501, 1
  %idxprom503 = sext i32 %sub502 to i64
  %arrayidx504 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom503
  %209 = load i8, i8* %arrayidx504, align 1
  %conv505 = zext i8 %209 to i32
  %210 = load i32, i32* %color.addr, align 4
  %cmp506 = icmp eq i32 %conv505, %210
  br i1 %cmp506, label %land.lhs.true.508, label %lor.lhs.false.515

land.lhs.true.508:                                ; preds = %lor.lhs.false.500
  %211 = load i32, i32* %pos.addr, align 4
  %add509 = add nsw i32 %211, 20
  %sub510 = sub nsw i32 %add509, 1
  %idxprom511 = sext i32 %sub510 to i64
  %arrayidx512 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom511
  %212 = load i32, i32* %arrayidx512, align 4
  %213 = load i32, i32* %ally1, align 4
  %cmp513 = icmp eq i32 %212, %213
  br i1 %cmp513, label %if.end.577, label %lor.lhs.false.515

lor.lhs.false.515:                                ; preds = %land.lhs.true.508, %lor.lhs.false.500
  %214 = load i32, i32* %pos.addr, align 4
  %add516 = add nsw i32 %214, 20
  %add517 = add nsw i32 %add516, 1
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom518
  %215 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %215 to i32
  %216 = load i32, i32* %color.addr, align 4
  %cmp521 = icmp eq i32 %conv520, %216
  br i1 %cmp521, label %land.lhs.true.523, label %land.lhs.true.530

land.lhs.true.523:                                ; preds = %lor.lhs.false.515
  %217 = load i32, i32* %pos.addr, align 4
  %add524 = add nsw i32 %217, 20
  %add525 = add nsw i32 %add524, 1
  %idxprom526 = sext i32 %add525 to i64
  %arrayidx527 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom526
  %218 = load i32, i32* %arrayidx527, align 4
  %219 = load i32, i32* %ally1, align 4
  %cmp528 = icmp eq i32 %218, %219
  br i1 %cmp528, label %if.end.577, label %land.lhs.true.530

land.lhs.true.530:                                ; preds = %land.lhs.true.523, %lor.lhs.false.515
  %220 = load i32, i32* %pos.addr, align 4
  %add531 = add nsw i32 %220, 20
  %add532 = add nsw i32 %add531, 20
  %idxprom533 = sext i32 %add532 to i64
  %arrayidx534 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom533
  %221 = load i8, i8* %arrayidx534, align 1
  %conv535 = zext i8 %221 to i32
  %222 = load i32, i32* %color.addr, align 4
  %cmp536 = icmp eq i32 %conv535, %222
  br i1 %cmp536, label %land.lhs.true.538, label %lor.lhs.false.545

land.lhs.true.538:                                ; preds = %land.lhs.true.530
  %223 = load i32, i32* %pos.addr, align 4
  %add539 = add nsw i32 %223, 20
  %add540 = add nsw i32 %add539, 20
  %idxprom541 = sext i32 %add540 to i64
  %arrayidx542 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom541
  %224 = load i32, i32* %arrayidx542, align 4
  %225 = load i32, i32* %ally2, align 4
  %cmp543 = icmp eq i32 %224, %225
  br i1 %cmp543, label %if.end.577, label %lor.lhs.false.545

lor.lhs.false.545:                                ; preds = %land.lhs.true.538, %land.lhs.true.530
  %226 = load i32, i32* %pos.addr, align 4
  %add546 = add nsw i32 %226, 20
  %sub547 = sub nsw i32 %add546, 1
  %idxprom548 = sext i32 %sub547 to i64
  %arrayidx549 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom548
  %227 = load i8, i8* %arrayidx549, align 1
  %conv550 = zext i8 %227 to i32
  %228 = load i32, i32* %color.addr, align 4
  %cmp551 = icmp eq i32 %conv550, %228
  br i1 %cmp551, label %land.lhs.true.553, label %lor.lhs.false.560

land.lhs.true.553:                                ; preds = %lor.lhs.false.545
  %229 = load i32, i32* %pos.addr, align 4
  %add554 = add nsw i32 %229, 20
  %sub555 = sub nsw i32 %add554, 1
  %idxprom556 = sext i32 %sub555 to i64
  %arrayidx557 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom556
  %230 = load i32, i32* %arrayidx557, align 4
  %231 = load i32, i32* %ally2, align 4
  %cmp558 = icmp eq i32 %230, %231
  br i1 %cmp558, label %if.end.577, label %lor.lhs.false.560

lor.lhs.false.560:                                ; preds = %land.lhs.true.553, %lor.lhs.false.545
  %232 = load i32, i32* %pos.addr, align 4
  %add561 = add nsw i32 %232, 20
  %add562 = add nsw i32 %add561, 1
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom563
  %233 = load i8, i8* %arrayidx564, align 1
  %conv565 = zext i8 %233 to i32
  %234 = load i32, i32* %color.addr, align 4
  %cmp566 = icmp eq i32 %conv565, %234
  br i1 %cmp566, label %land.lhs.true.568, label %if.then.575

land.lhs.true.568:                                ; preds = %lor.lhs.false.560
  %235 = load i32, i32* %pos.addr, align 4
  %add569 = add nsw i32 %235, 20
  %add570 = add nsw i32 %add569, 1
  %idxprom571 = sext i32 %add570 to i64
  %arrayidx572 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom571
  %236 = load i32, i32* %arrayidx572, align 4
  %237 = load i32, i32* %ally2, align 4
  %cmp573 = icmp eq i32 %236, %237
  br i1 %cmp573, label %if.end.577, label %if.then.575

if.then.575:                                      ; preds = %land.lhs.true.568, %lor.lhs.false.560
  %238 = load i32, i32* %fast_liberties, align 4
  %inc576 = add nsw i32 %238, 1
  store i32 %inc576, i32* %fast_liberties, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.575, %land.lhs.true.568, %land.lhs.true.553, %land.lhs.true.538, %land.lhs.true.523, %land.lhs.true.508, %land.lhs.true.493, %if.else.478
  %239 = load i32, i32* %pos.addr, align 4
  %sub578 = sub nsw i32 %239, 1
  %idxprom579 = sext i32 %sub578 to i64
  %arrayidx580 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom579
  %240 = load i8, i8* %arrayidx580, align 1
  %conv581 = zext i8 %240 to i32
  %cmp582 = icmp eq i32 %conv581, 0
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.676

land.lhs.true.584:                                ; preds = %if.end.577
  %241 = load i32, i32* %pos.addr, align 4
  %sub585 = sub nsw i32 %241, 1
  %sub586 = sub nsw i32 %sub585, 1
  %idxprom587 = sext i32 %sub586 to i64
  %arrayidx588 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom587
  %242 = load i8, i8* %arrayidx588, align 1
  %conv589 = zext i8 %242 to i32
  %243 = load i32, i32* %color.addr, align 4
  %cmp590 = icmp eq i32 %conv589, %243
  br i1 %cmp590, label %land.lhs.true.592, label %lor.lhs.false.599

land.lhs.true.592:                                ; preds = %land.lhs.true.584
  %244 = load i32, i32* %pos.addr, align 4
  %sub593 = sub nsw i32 %244, 1
  %sub594 = sub nsw i32 %sub593, 1
  %idxprom595 = sext i32 %sub594 to i64
  %arrayidx596 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom595
  %245 = load i32, i32* %arrayidx596, align 4
  %246 = load i32, i32* %ally1, align 4
  %cmp597 = icmp eq i32 %245, %246
  br i1 %cmp597, label %if.end.676, label %lor.lhs.false.599

lor.lhs.false.599:                                ; preds = %land.lhs.true.592, %land.lhs.true.584
  %247 = load i32, i32* %pos.addr, align 4
  %sub600 = sub nsw i32 %247, 1
  %sub601 = sub nsw i32 %sub600, 20
  %idxprom602 = sext i32 %sub601 to i64
  %arrayidx603 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom602
  %248 = load i8, i8* %arrayidx603, align 1
  %conv604 = zext i8 %248 to i32
  %249 = load i32, i32* %color.addr, align 4
  %cmp605 = icmp eq i32 %conv604, %249
  br i1 %cmp605, label %land.lhs.true.607, label %lor.lhs.false.614

land.lhs.true.607:                                ; preds = %lor.lhs.false.599
  %250 = load i32, i32* %pos.addr, align 4
  %sub608 = sub nsw i32 %250, 1
  %sub609 = sub nsw i32 %sub608, 20
  %idxprom610 = sext i32 %sub609 to i64
  %arrayidx611 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom610
  %251 = load i32, i32* %arrayidx611, align 4
  %252 = load i32, i32* %ally1, align 4
  %cmp612 = icmp eq i32 %251, %252
  br i1 %cmp612, label %if.end.676, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %land.lhs.true.607, %lor.lhs.false.599
  %253 = load i32, i32* %pos.addr, align 4
  %sub615 = sub nsw i32 %253, 1
  %add616 = add nsw i32 %sub615, 20
  %idxprom617 = sext i32 %add616 to i64
  %arrayidx618 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom617
  %254 = load i8, i8* %arrayidx618, align 1
  %conv619 = zext i8 %254 to i32
  %255 = load i32, i32* %color.addr, align 4
  %cmp620 = icmp eq i32 %conv619, %255
  br i1 %cmp620, label %land.lhs.true.622, label %land.lhs.true.629

land.lhs.true.622:                                ; preds = %lor.lhs.false.614
  %256 = load i32, i32* %pos.addr, align 4
  %sub623 = sub nsw i32 %256, 1
  %add624 = add nsw i32 %sub623, 20
  %idxprom625 = sext i32 %add624 to i64
  %arrayidx626 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom625
  %257 = load i32, i32* %arrayidx626, align 4
  %258 = load i32, i32* %ally1, align 4
  %cmp627 = icmp eq i32 %257, %258
  br i1 %cmp627, label %if.end.676, label %land.lhs.true.629

land.lhs.true.629:                                ; preds = %land.lhs.true.622, %lor.lhs.false.614
  %259 = load i32, i32* %pos.addr, align 4
  %sub630 = sub nsw i32 %259, 1
  %sub631 = sub nsw i32 %sub630, 1
  %idxprom632 = sext i32 %sub631 to i64
  %arrayidx633 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom632
  %260 = load i8, i8* %arrayidx633, align 1
  %conv634 = zext i8 %260 to i32
  %261 = load i32, i32* %color.addr, align 4
  %cmp635 = icmp eq i32 %conv634, %261
  br i1 %cmp635, label %land.lhs.true.637, label %lor.lhs.false.644

land.lhs.true.637:                                ; preds = %land.lhs.true.629
  %262 = load i32, i32* %pos.addr, align 4
  %sub638 = sub nsw i32 %262, 1
  %sub639 = sub nsw i32 %sub638, 1
  %idxprom640 = sext i32 %sub639 to i64
  %arrayidx641 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom640
  %263 = load i32, i32* %arrayidx641, align 4
  %264 = load i32, i32* %ally2, align 4
  %cmp642 = icmp eq i32 %263, %264
  br i1 %cmp642, label %if.end.676, label %lor.lhs.false.644

lor.lhs.false.644:                                ; preds = %land.lhs.true.637, %land.lhs.true.629
  %265 = load i32, i32* %pos.addr, align 4
  %sub645 = sub nsw i32 %265, 1
  %sub646 = sub nsw i32 %sub645, 20
  %idxprom647 = sext i32 %sub646 to i64
  %arrayidx648 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom647
  %266 = load i8, i8* %arrayidx648, align 1
  %conv649 = zext i8 %266 to i32
  %267 = load i32, i32* %color.addr, align 4
  %cmp650 = icmp eq i32 %conv649, %267
  br i1 %cmp650, label %land.lhs.true.652, label %lor.lhs.false.659

land.lhs.true.652:                                ; preds = %lor.lhs.false.644
  %268 = load i32, i32* %pos.addr, align 4
  %sub653 = sub nsw i32 %268, 1
  %sub654 = sub nsw i32 %sub653, 20
  %idxprom655 = sext i32 %sub654 to i64
  %arrayidx656 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom655
  %269 = load i32, i32* %arrayidx656, align 4
  %270 = load i32, i32* %ally2, align 4
  %cmp657 = icmp eq i32 %269, %270
  br i1 %cmp657, label %if.end.676, label %lor.lhs.false.659

lor.lhs.false.659:                                ; preds = %land.lhs.true.652, %lor.lhs.false.644
  %271 = load i32, i32* %pos.addr, align 4
  %sub660 = sub nsw i32 %271, 1
  %add661 = add nsw i32 %sub660, 20
  %idxprom662 = sext i32 %add661 to i64
  %arrayidx663 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom662
  %272 = load i8, i8* %arrayidx663, align 1
  %conv664 = zext i8 %272 to i32
  %273 = load i32, i32* %color.addr, align 4
  %cmp665 = icmp eq i32 %conv664, %273
  br i1 %cmp665, label %land.lhs.true.667, label %if.then.674

land.lhs.true.667:                                ; preds = %lor.lhs.false.659
  %274 = load i32, i32* %pos.addr, align 4
  %sub668 = sub nsw i32 %274, 1
  %add669 = add nsw i32 %sub668, 20
  %idxprom670 = sext i32 %add669 to i64
  %arrayidx671 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom670
  %275 = load i32, i32* %arrayidx671, align 4
  %276 = load i32, i32* %ally2, align 4
  %cmp672 = icmp eq i32 %275, %276
  br i1 %cmp672, label %if.end.676, label %if.then.674

if.then.674:                                      ; preds = %land.lhs.true.667, %lor.lhs.false.659
  %277 = load i32, i32* %fast_liberties, align 4
  %inc675 = add nsw i32 %277, 1
  store i32 %inc675, i32* %fast_liberties, align 4
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.674, %land.lhs.true.667, %land.lhs.true.652, %land.lhs.true.637, %land.lhs.true.622, %land.lhs.true.607, %land.lhs.true.592, %if.end.577
  %278 = load i32, i32* %pos.addr, align 4
  %sub677 = sub nsw i32 %278, 20
  %idxprom678 = sext i32 %sub677 to i64
  %arrayidx679 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom678
  %279 = load i8, i8* %arrayidx679, align 1
  %conv680 = zext i8 %279 to i32
  %cmp681 = icmp eq i32 %conv680, 0
  br i1 %cmp681, label %land.lhs.true.683, label %if.end.775

land.lhs.true.683:                                ; preds = %if.end.676
  %280 = load i32, i32* %pos.addr, align 4
  %sub684 = sub nsw i32 %280, 20
  %sub685 = sub nsw i32 %sub684, 20
  %idxprom686 = sext i32 %sub685 to i64
  %arrayidx687 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom686
  %281 = load i8, i8* %arrayidx687, align 1
  %conv688 = zext i8 %281 to i32
  %282 = load i32, i32* %color.addr, align 4
  %cmp689 = icmp eq i32 %conv688, %282
  br i1 %cmp689, label %land.lhs.true.691, label %lor.lhs.false.698

land.lhs.true.691:                                ; preds = %land.lhs.true.683
  %283 = load i32, i32* %pos.addr, align 4
  %sub692 = sub nsw i32 %283, 20
  %sub693 = sub nsw i32 %sub692, 20
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom694
  %284 = load i32, i32* %arrayidx695, align 4
  %285 = load i32, i32* %ally1, align 4
  %cmp696 = icmp eq i32 %284, %285
  br i1 %cmp696, label %if.end.775, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %land.lhs.true.691, %land.lhs.true.683
  %286 = load i32, i32* %pos.addr, align 4
  %sub699 = sub nsw i32 %286, 20
  %add700 = add nsw i32 %sub699, 1
  %idxprom701 = sext i32 %add700 to i64
  %arrayidx702 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom701
  %287 = load i8, i8* %arrayidx702, align 1
  %conv703 = zext i8 %287 to i32
  %288 = load i32, i32* %color.addr, align 4
  %cmp704 = icmp eq i32 %conv703, %288
  br i1 %cmp704, label %land.lhs.true.706, label %lor.lhs.false.713

land.lhs.true.706:                                ; preds = %lor.lhs.false.698
  %289 = load i32, i32* %pos.addr, align 4
  %sub707 = sub nsw i32 %289, 20
  %add708 = add nsw i32 %sub707, 1
  %idxprom709 = sext i32 %add708 to i64
  %arrayidx710 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom709
  %290 = load i32, i32* %arrayidx710, align 4
  %291 = load i32, i32* %ally1, align 4
  %cmp711 = icmp eq i32 %290, %291
  br i1 %cmp711, label %if.end.775, label %lor.lhs.false.713

lor.lhs.false.713:                                ; preds = %land.lhs.true.706, %lor.lhs.false.698
  %292 = load i32, i32* %pos.addr, align 4
  %sub714 = sub nsw i32 %292, 20
  %sub715 = sub nsw i32 %sub714, 1
  %idxprom716 = sext i32 %sub715 to i64
  %arrayidx717 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom716
  %293 = load i8, i8* %arrayidx717, align 1
  %conv718 = zext i8 %293 to i32
  %294 = load i32, i32* %color.addr, align 4
  %cmp719 = icmp eq i32 %conv718, %294
  br i1 %cmp719, label %land.lhs.true.721, label %land.lhs.true.728

land.lhs.true.721:                                ; preds = %lor.lhs.false.713
  %295 = load i32, i32* %pos.addr, align 4
  %sub722 = sub nsw i32 %295, 20
  %sub723 = sub nsw i32 %sub722, 1
  %idxprom724 = sext i32 %sub723 to i64
  %arrayidx725 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom724
  %296 = load i32, i32* %arrayidx725, align 4
  %297 = load i32, i32* %ally1, align 4
  %cmp726 = icmp eq i32 %296, %297
  br i1 %cmp726, label %if.end.775, label %land.lhs.true.728

land.lhs.true.728:                                ; preds = %land.lhs.true.721, %lor.lhs.false.713
  %298 = load i32, i32* %pos.addr, align 4
  %sub729 = sub nsw i32 %298, 20
  %sub730 = sub nsw i32 %sub729, 20
  %idxprom731 = sext i32 %sub730 to i64
  %arrayidx732 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom731
  %299 = load i8, i8* %arrayidx732, align 1
  %conv733 = zext i8 %299 to i32
  %300 = load i32, i32* %color.addr, align 4
  %cmp734 = icmp eq i32 %conv733, %300
  br i1 %cmp734, label %land.lhs.true.736, label %lor.lhs.false.743

land.lhs.true.736:                                ; preds = %land.lhs.true.728
  %301 = load i32, i32* %pos.addr, align 4
  %sub737 = sub nsw i32 %301, 20
  %sub738 = sub nsw i32 %sub737, 20
  %idxprom739 = sext i32 %sub738 to i64
  %arrayidx740 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom739
  %302 = load i32, i32* %arrayidx740, align 4
  %303 = load i32, i32* %ally2, align 4
  %cmp741 = icmp eq i32 %302, %303
  br i1 %cmp741, label %if.end.775, label %lor.lhs.false.743

lor.lhs.false.743:                                ; preds = %land.lhs.true.736, %land.lhs.true.728
  %304 = load i32, i32* %pos.addr, align 4
  %sub744 = sub nsw i32 %304, 20
  %add745 = add nsw i32 %sub744, 1
  %idxprom746 = sext i32 %add745 to i64
  %arrayidx747 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom746
  %305 = load i8, i8* %arrayidx747, align 1
  %conv748 = zext i8 %305 to i32
  %306 = load i32, i32* %color.addr, align 4
  %cmp749 = icmp eq i32 %conv748, %306
  br i1 %cmp749, label %land.lhs.true.751, label %lor.lhs.false.758

land.lhs.true.751:                                ; preds = %lor.lhs.false.743
  %307 = load i32, i32* %pos.addr, align 4
  %sub752 = sub nsw i32 %307, 20
  %add753 = add nsw i32 %sub752, 1
  %idxprom754 = sext i32 %add753 to i64
  %arrayidx755 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom754
  %308 = load i32, i32* %arrayidx755, align 4
  %309 = load i32, i32* %ally2, align 4
  %cmp756 = icmp eq i32 %308, %309
  br i1 %cmp756, label %if.end.775, label %lor.lhs.false.758

lor.lhs.false.758:                                ; preds = %land.lhs.true.751, %lor.lhs.false.743
  %310 = load i32, i32* %pos.addr, align 4
  %sub759 = sub nsw i32 %310, 20
  %sub760 = sub nsw i32 %sub759, 1
  %idxprom761 = sext i32 %sub760 to i64
  %arrayidx762 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom761
  %311 = load i8, i8* %arrayidx762, align 1
  %conv763 = zext i8 %311 to i32
  %312 = load i32, i32* %color.addr, align 4
  %cmp764 = icmp eq i32 %conv763, %312
  br i1 %cmp764, label %land.lhs.true.766, label %if.then.773

land.lhs.true.766:                                ; preds = %lor.lhs.false.758
  %313 = load i32, i32* %pos.addr, align 4
  %sub767 = sub nsw i32 %313, 20
  %sub768 = sub nsw i32 %sub767, 1
  %idxprom769 = sext i32 %sub768 to i64
  %arrayidx770 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom769
  %314 = load i32, i32* %arrayidx770, align 4
  %315 = load i32, i32* %ally2, align 4
  %cmp771 = icmp eq i32 %314, %315
  br i1 %cmp771, label %if.end.775, label %if.then.773

if.then.773:                                      ; preds = %land.lhs.true.766, %lor.lhs.false.758
  %316 = load i32, i32* %fast_liberties, align 4
  %inc774 = add nsw i32 %316, 1
  store i32 %inc774, i32* %fast_liberties, align 4
  br label %if.end.775

if.end.775:                                       ; preds = %if.then.773, %land.lhs.true.766, %land.lhs.true.751, %land.lhs.true.736, %land.lhs.true.721, %land.lhs.true.706, %land.lhs.true.691, %if.end.676
  %317 = load i32, i32* %pos.addr, align 4
  %add776 = add nsw i32 %317, 1
  %idxprom777 = sext i32 %add776 to i64
  %arrayidx778 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom777
  %318 = load i8, i8* %arrayidx778, align 1
  %conv779 = zext i8 %318 to i32
  %cmp780 = icmp eq i32 %conv779, 0
  br i1 %cmp780, label %land.lhs.true.782, label %if.end.874

land.lhs.true.782:                                ; preds = %if.end.775
  %319 = load i32, i32* %pos.addr, align 4
  %add783 = add nsw i32 %319, 1
  %add784 = add nsw i32 %add783, 1
  %idxprom785 = sext i32 %add784 to i64
  %arrayidx786 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom785
  %320 = load i8, i8* %arrayidx786, align 1
  %conv787 = zext i8 %320 to i32
  %321 = load i32, i32* %color.addr, align 4
  %cmp788 = icmp eq i32 %conv787, %321
  br i1 %cmp788, label %land.lhs.true.790, label %lor.lhs.false.797

land.lhs.true.790:                                ; preds = %land.lhs.true.782
  %322 = load i32, i32* %pos.addr, align 4
  %add791 = add nsw i32 %322, 1
  %add792 = add nsw i32 %add791, 1
  %idxprom793 = sext i32 %add792 to i64
  %arrayidx794 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom793
  %323 = load i32, i32* %arrayidx794, align 4
  %324 = load i32, i32* %ally1, align 4
  %cmp795 = icmp eq i32 %323, %324
  br i1 %cmp795, label %if.end.874, label %lor.lhs.false.797

lor.lhs.false.797:                                ; preds = %land.lhs.true.790, %land.lhs.true.782
  %325 = load i32, i32* %pos.addr, align 4
  %add798 = add nsw i32 %325, 1
  %add799 = add nsw i32 %add798, 20
  %idxprom800 = sext i32 %add799 to i64
  %arrayidx801 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom800
  %326 = load i8, i8* %arrayidx801, align 1
  %conv802 = zext i8 %326 to i32
  %327 = load i32, i32* %color.addr, align 4
  %cmp803 = icmp eq i32 %conv802, %327
  br i1 %cmp803, label %land.lhs.true.805, label %lor.lhs.false.812

land.lhs.true.805:                                ; preds = %lor.lhs.false.797
  %328 = load i32, i32* %pos.addr, align 4
  %add806 = add nsw i32 %328, 1
  %add807 = add nsw i32 %add806, 20
  %idxprom808 = sext i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom808
  %329 = load i32, i32* %arrayidx809, align 4
  %330 = load i32, i32* %ally1, align 4
  %cmp810 = icmp eq i32 %329, %330
  br i1 %cmp810, label %if.end.874, label %lor.lhs.false.812

lor.lhs.false.812:                                ; preds = %land.lhs.true.805, %lor.lhs.false.797
  %331 = load i32, i32* %pos.addr, align 4
  %add813 = add nsw i32 %331, 1
  %sub814 = sub nsw i32 %add813, 20
  %idxprom815 = sext i32 %sub814 to i64
  %arrayidx816 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom815
  %332 = load i8, i8* %arrayidx816, align 1
  %conv817 = zext i8 %332 to i32
  %333 = load i32, i32* %color.addr, align 4
  %cmp818 = icmp eq i32 %conv817, %333
  br i1 %cmp818, label %land.lhs.true.820, label %land.lhs.true.827

land.lhs.true.820:                                ; preds = %lor.lhs.false.812
  %334 = load i32, i32* %pos.addr, align 4
  %add821 = add nsw i32 %334, 1
  %sub822 = sub nsw i32 %add821, 20
  %idxprom823 = sext i32 %sub822 to i64
  %arrayidx824 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom823
  %335 = load i32, i32* %arrayidx824, align 4
  %336 = load i32, i32* %ally1, align 4
  %cmp825 = icmp eq i32 %335, %336
  br i1 %cmp825, label %if.end.874, label %land.lhs.true.827

land.lhs.true.827:                                ; preds = %land.lhs.true.820, %lor.lhs.false.812
  %337 = load i32, i32* %pos.addr, align 4
  %add828 = add nsw i32 %337, 1
  %add829 = add nsw i32 %add828, 1
  %idxprom830 = sext i32 %add829 to i64
  %arrayidx831 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom830
  %338 = load i8, i8* %arrayidx831, align 1
  %conv832 = zext i8 %338 to i32
  %339 = load i32, i32* %color.addr, align 4
  %cmp833 = icmp eq i32 %conv832, %339
  br i1 %cmp833, label %land.lhs.true.835, label %lor.lhs.false.842

land.lhs.true.835:                                ; preds = %land.lhs.true.827
  %340 = load i32, i32* %pos.addr, align 4
  %add836 = add nsw i32 %340, 1
  %add837 = add nsw i32 %add836, 1
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom838
  %341 = load i32, i32* %arrayidx839, align 4
  %342 = load i32, i32* %ally2, align 4
  %cmp840 = icmp eq i32 %341, %342
  br i1 %cmp840, label %if.end.874, label %lor.lhs.false.842

lor.lhs.false.842:                                ; preds = %land.lhs.true.835, %land.lhs.true.827
  %343 = load i32, i32* %pos.addr, align 4
  %add843 = add nsw i32 %343, 1
  %add844 = add nsw i32 %add843, 20
  %idxprom845 = sext i32 %add844 to i64
  %arrayidx846 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom845
  %344 = load i8, i8* %arrayidx846, align 1
  %conv847 = zext i8 %344 to i32
  %345 = load i32, i32* %color.addr, align 4
  %cmp848 = icmp eq i32 %conv847, %345
  br i1 %cmp848, label %land.lhs.true.850, label %lor.lhs.false.857

land.lhs.true.850:                                ; preds = %lor.lhs.false.842
  %346 = load i32, i32* %pos.addr, align 4
  %add851 = add nsw i32 %346, 1
  %add852 = add nsw i32 %add851, 20
  %idxprom853 = sext i32 %add852 to i64
  %arrayidx854 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom853
  %347 = load i32, i32* %arrayidx854, align 4
  %348 = load i32, i32* %ally2, align 4
  %cmp855 = icmp eq i32 %347, %348
  br i1 %cmp855, label %if.end.874, label %lor.lhs.false.857

lor.lhs.false.857:                                ; preds = %land.lhs.true.850, %lor.lhs.false.842
  %349 = load i32, i32* %pos.addr, align 4
  %add858 = add nsw i32 %349, 1
  %sub859 = sub nsw i32 %add858, 20
  %idxprom860 = sext i32 %sub859 to i64
  %arrayidx861 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom860
  %350 = load i8, i8* %arrayidx861, align 1
  %conv862 = zext i8 %350 to i32
  %351 = load i32, i32* %color.addr, align 4
  %cmp863 = icmp eq i32 %conv862, %351
  br i1 %cmp863, label %land.lhs.true.865, label %if.then.872

land.lhs.true.865:                                ; preds = %lor.lhs.false.857
  %352 = load i32, i32* %pos.addr, align 4
  %add866 = add nsw i32 %352, 1
  %sub867 = sub nsw i32 %add866, 20
  %idxprom868 = sext i32 %sub867 to i64
  %arrayidx869 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom868
  %353 = load i32, i32* %arrayidx869, align 4
  %354 = load i32, i32* %ally2, align 4
  %cmp870 = icmp eq i32 %353, %354
  br i1 %cmp870, label %if.end.874, label %if.then.872

if.then.872:                                      ; preds = %land.lhs.true.865, %lor.lhs.false.857
  %355 = load i32, i32* %fast_liberties, align 4
  %inc873 = add nsw i32 %355, 1
  store i32 %inc873, i32* %fast_liberties, align 4
  br label %if.end.874

if.end.874:                                       ; preds = %if.then.872, %land.lhs.true.865, %land.lhs.true.850, %land.lhs.true.835, %land.lhs.true.820, %land.lhs.true.805, %land.lhs.true.790, %if.end.775
  %356 = load i32, i32* %ally1, align 4
  %idxprom875 = sext i32 %356 to i64
  %arrayidx876 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom875
  %liberties877 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx876, i32 0, i32 3
  %357 = load i32, i32* %liberties877, align 4
  %358 = load i32, i32* %ally2, align 4
  %idxprom878 = sext i32 %358 to i64
  %arrayidx879 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom878
  %liberties880 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx879, i32 0, i32 3
  %359 = load i32, i32* %liberties880, align 4
  %add881 = add nsw i32 %357, %359
  %360 = load i32, i32* %ally1, align 4
  %idxprom882 = sext i32 %360 to i64
  %arrayidx883 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom882
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx883, i32 0, i32 2
  %361 = load i32, i32* %origin, align 4
  %362 = load i32, i32* %ally2, align 4
  %idxprom884 = sext i32 %362 to i64
  %arrayidx885 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom884
  %origin886 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx885, i32 0, i32 2
  %363 = load i32, i32* %origin886, align 4
  %call = call i32 @count_common_libs(i32 %361, i32 %363)
  %sub887 = sub nsw i32 %add881, %call
  %sub888 = sub nsw i32 %sub887, 1
  %364 = load i32, i32* %fast_liberties, align 4
  %add889 = add nsw i32 %364, %sub888
  store i32 %add889, i32* %fast_liberties, align 4
  br label %if.end.890

if.end.890:                                       ; preds = %if.end.874, %if.end.473
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.end.253
  br label %if.end.1075

if.else.892:                                      ; preds = %if.end.214
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.892
  %365 = load i32, i32* %k, align 4
  %cmp893 = icmp slt i32 %365, 4
  br i1 %cmp893, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %366 = load i32, i32* %pos.addr, align 4
  %367 = load i32, i32* %k, align 4
  %idxprom895 = sext i32 %367 to i64
  %arrayidx896 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom895
  %368 = load i32, i32* %arrayidx896, align 4
  %add897 = add nsw i32 %366, %368
  store i32 %add897, i32* %neighbor, align 4
  %369 = load i32, i32* %neighbor, align 4
  %idxprom898 = sext i32 %369 to i64
  %arrayidx899 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom898
  %370 = load i8, i8* %arrayidx899, align 1
  %conv900 = zext i8 %370 to i32
  %cmp901 = icmp eq i32 %conv900, 0
  br i1 %cmp901, label %land.lhs.true.903, label %if.else.1015

land.lhs.true.903:                                ; preds = %for.body
  %371 = load i32, i32* %ally1, align 4
  %cmp904 = icmp slt i32 %371, 0
  br i1 %cmp904, label %land.lhs.true.958, label %lor.lhs.false.906

lor.lhs.false.906:                                ; preds = %land.lhs.true.903
  %372 = load i32, i32* %neighbor, align 4
  %add907 = add nsw i32 %372, 20
  %idxprom908 = sext i32 %add907 to i64
  %arrayidx909 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom908
  %373 = load i8, i8* %arrayidx909, align 1
  %conv910 = zext i8 %373 to i32
  %374 = load i32, i32* %color.addr, align 4
  %cmp911 = icmp eq i32 %conv910, %374
  br i1 %cmp911, label %land.lhs.true.913, label %lor.lhs.false.919

land.lhs.true.913:                                ; preds = %lor.lhs.false.906
  %375 = load i32, i32* %neighbor, align 4
  %add914 = add nsw i32 %375, 20
  %idxprom915 = sext i32 %add914 to i64
  %arrayidx916 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom915
  %376 = load i32, i32* %arrayidx916, align 4
  %377 = load i32, i32* %ally1, align 4
  %cmp917 = icmp eq i32 %376, %377
  br i1 %cmp917, label %if.else.1015, label %lor.lhs.false.919

lor.lhs.false.919:                                ; preds = %land.lhs.true.913, %lor.lhs.false.906
  %378 = load i32, i32* %neighbor, align 4
  %sub920 = sub nsw i32 %378, 1
  %idxprom921 = sext i32 %sub920 to i64
  %arrayidx922 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom921
  %379 = load i8, i8* %arrayidx922, align 1
  %conv923 = zext i8 %379 to i32
  %380 = load i32, i32* %color.addr, align 4
  %cmp924 = icmp eq i32 %conv923, %380
  br i1 %cmp924, label %land.lhs.true.926, label %lor.lhs.false.932

land.lhs.true.926:                                ; preds = %lor.lhs.false.919
  %381 = load i32, i32* %neighbor, align 4
  %sub927 = sub nsw i32 %381, 1
  %idxprom928 = sext i32 %sub927 to i64
  %arrayidx929 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom928
  %382 = load i32, i32* %arrayidx929, align 4
  %383 = load i32, i32* %ally1, align 4
  %cmp930 = icmp eq i32 %382, %383
  br i1 %cmp930, label %if.else.1015, label %lor.lhs.false.932

lor.lhs.false.932:                                ; preds = %land.lhs.true.926, %lor.lhs.false.919
  %384 = load i32, i32* %neighbor, align 4
  %sub933 = sub nsw i32 %384, 20
  %idxprom934 = sext i32 %sub933 to i64
  %arrayidx935 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom934
  %385 = load i8, i8* %arrayidx935, align 1
  %conv936 = zext i8 %385 to i32
  %386 = load i32, i32* %color.addr, align 4
  %cmp937 = icmp eq i32 %conv936, %386
  br i1 %cmp937, label %land.lhs.true.939, label %lor.lhs.false.945

land.lhs.true.939:                                ; preds = %lor.lhs.false.932
  %387 = load i32, i32* %neighbor, align 4
  %sub940 = sub nsw i32 %387, 20
  %idxprom941 = sext i32 %sub940 to i64
  %arrayidx942 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom941
  %388 = load i32, i32* %arrayidx942, align 4
  %389 = load i32, i32* %ally1, align 4
  %cmp943 = icmp eq i32 %388, %389
  br i1 %cmp943, label %if.else.1015, label %lor.lhs.false.945

lor.lhs.false.945:                                ; preds = %land.lhs.true.939, %lor.lhs.false.932
  %390 = load i32, i32* %neighbor, align 4
  %add946 = add nsw i32 %390, 1
  %idxprom947 = sext i32 %add946 to i64
  %arrayidx948 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom947
  %391 = load i8, i8* %arrayidx948, align 1
  %conv949 = zext i8 %391 to i32
  %392 = load i32, i32* %color.addr, align 4
  %cmp950 = icmp eq i32 %conv949, %392
  br i1 %cmp950, label %land.lhs.true.952, label %land.lhs.true.958

land.lhs.true.952:                                ; preds = %lor.lhs.false.945
  %393 = load i32, i32* %neighbor, align 4
  %add953 = add nsw i32 %393, 1
  %idxprom954 = sext i32 %add953 to i64
  %arrayidx955 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom954
  %394 = load i32, i32* %arrayidx955, align 4
  %395 = load i32, i32* %ally1, align 4
  %cmp956 = icmp eq i32 %394, %395
  br i1 %cmp956, label %if.else.1015, label %land.lhs.true.958

land.lhs.true.958:                                ; preds = %land.lhs.true.952, %lor.lhs.false.945, %land.lhs.true.903
  %396 = load i32, i32* %ally2, align 4
  %cmp959 = icmp slt i32 %396, 0
  br i1 %cmp959, label %if.then.1013, label %lor.lhs.false.961

lor.lhs.false.961:                                ; preds = %land.lhs.true.958
  %397 = load i32, i32* %neighbor, align 4
  %add962 = add nsw i32 %397, 20
  %idxprom963 = sext i32 %add962 to i64
  %arrayidx964 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom963
  %398 = load i8, i8* %arrayidx964, align 1
  %conv965 = zext i8 %398 to i32
  %399 = load i32, i32* %color.addr, align 4
  %cmp966 = icmp eq i32 %conv965, %399
  br i1 %cmp966, label %land.lhs.true.968, label %lor.lhs.false.974

land.lhs.true.968:                                ; preds = %lor.lhs.false.961
  %400 = load i32, i32* %neighbor, align 4
  %add969 = add nsw i32 %400, 20
  %idxprom970 = sext i32 %add969 to i64
  %arrayidx971 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom970
  %401 = load i32, i32* %arrayidx971, align 4
  %402 = load i32, i32* %ally2, align 4
  %cmp972 = icmp eq i32 %401, %402
  br i1 %cmp972, label %if.else.1015, label %lor.lhs.false.974

lor.lhs.false.974:                                ; preds = %land.lhs.true.968, %lor.lhs.false.961
  %403 = load i32, i32* %neighbor, align 4
  %sub975 = sub nsw i32 %403, 1
  %idxprom976 = sext i32 %sub975 to i64
  %arrayidx977 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom976
  %404 = load i8, i8* %arrayidx977, align 1
  %conv978 = zext i8 %404 to i32
  %405 = load i32, i32* %color.addr, align 4
  %cmp979 = icmp eq i32 %conv978, %405
  br i1 %cmp979, label %land.lhs.true.981, label %lor.lhs.false.987

land.lhs.true.981:                                ; preds = %lor.lhs.false.974
  %406 = load i32, i32* %neighbor, align 4
  %sub982 = sub nsw i32 %406, 1
  %idxprom983 = sext i32 %sub982 to i64
  %arrayidx984 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom983
  %407 = load i32, i32* %arrayidx984, align 4
  %408 = load i32, i32* %ally2, align 4
  %cmp985 = icmp eq i32 %407, %408
  br i1 %cmp985, label %if.else.1015, label %lor.lhs.false.987

lor.lhs.false.987:                                ; preds = %land.lhs.true.981, %lor.lhs.false.974
  %409 = load i32, i32* %neighbor, align 4
  %sub988 = sub nsw i32 %409, 20
  %idxprom989 = sext i32 %sub988 to i64
  %arrayidx990 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom989
  %410 = load i8, i8* %arrayidx990, align 1
  %conv991 = zext i8 %410 to i32
  %411 = load i32, i32* %color.addr, align 4
  %cmp992 = icmp eq i32 %conv991, %411
  br i1 %cmp992, label %land.lhs.true.994, label %lor.lhs.false.1000

land.lhs.true.994:                                ; preds = %lor.lhs.false.987
  %412 = load i32, i32* %neighbor, align 4
  %sub995 = sub nsw i32 %412, 20
  %idxprom996 = sext i32 %sub995 to i64
  %arrayidx997 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom996
  %413 = load i32, i32* %arrayidx997, align 4
  %414 = load i32, i32* %ally2, align 4
  %cmp998 = icmp eq i32 %413, %414
  br i1 %cmp998, label %if.else.1015, label %lor.lhs.false.1000

lor.lhs.false.1000:                               ; preds = %land.lhs.true.994, %lor.lhs.false.987
  %415 = load i32, i32* %neighbor, align 4
  %add1001 = add nsw i32 %415, 1
  %idxprom1002 = sext i32 %add1001 to i64
  %arrayidx1003 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1002
  %416 = load i8, i8* %arrayidx1003, align 1
  %conv1004 = zext i8 %416 to i32
  %417 = load i32, i32* %color.addr, align 4
  %cmp1005 = icmp eq i32 %conv1004, %417
  br i1 %cmp1005, label %land.lhs.true.1007, label %if.then.1013

land.lhs.true.1007:                               ; preds = %lor.lhs.false.1000
  %418 = load i32, i32* %neighbor, align 4
  %add1008 = add nsw i32 %418, 1
  %idxprom1009 = sext i32 %add1008 to i64
  %arrayidx1010 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1009
  %419 = load i32, i32* %arrayidx1010, align 4
  %420 = load i32, i32* %ally2, align 4
  %cmp1011 = icmp eq i32 %419, %420
  br i1 %cmp1011, label %if.else.1015, label %if.then.1013

if.then.1013:                                     ; preds = %land.lhs.true.1007, %lor.lhs.false.1000, %land.lhs.true.958
  %421 = load i32, i32* %fast_liberties, align 4
  %inc1014 = add nsw i32 %421, 1
  store i32 %inc1014, i32* %fast_liberties, align 4
  br label %if.end.1048

if.else.1015:                                     ; preds = %land.lhs.true.1007, %land.lhs.true.994, %land.lhs.true.981, %land.lhs.true.968, %land.lhs.true.952, %land.lhs.true.939, %land.lhs.true.926, %land.lhs.true.913, %for.body
  %422 = load i32, i32* %neighbor, align 4
  %idxprom1016 = sext i32 %422 to i64
  %arrayidx1017 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom1016
  %423 = load i8, i8* %arrayidx1017, align 1
  %conv1018 = zext i8 %423 to i32
  %424 = load i32, i32* %color.addr, align 4
  %sub1019 = sub nsw i32 3, %424
  %cmp1020 = icmp eq i32 %conv1018, %sub1019
  br i1 %cmp1020, label %land.lhs.true.1022, label %if.end.1047

land.lhs.true.1022:                               ; preds = %if.else.1015
  %425 = load i32, i32* %neighbor, align 4
  %idxprom1023 = sext i32 %425 to i64
  %arrayidx1024 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1023
  %426 = load i32, i32* %arrayidx1024, align 4
  %idxprom1025 = sext i32 %426 to i64
  %arrayidx1026 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1025
  %liberties1027 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1026, i32 0, i32 3
  %427 = load i32, i32* %liberties1027, align 4
  %cmp1028 = icmp eq i32 %427, 1
  br i1 %cmp1028, label %if.then.1030, label %if.end.1047

if.then.1030:                                     ; preds = %land.lhs.true.1022
  %428 = load i32, i32* %neighbor, align 4
  %idxprom1031 = sext i32 %428 to i64
  %arrayidx1032 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1031
  %429 = load i32, i32* %arrayidx1032, align 4
  %idxprom1033 = sext i32 %429 to i64
  %arrayidx1034 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1033
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1034, i32 0, i32 1
  %430 = load i32, i32* %size, align 4
  store i32 %430, i32* %neighbor_size, align 4
  %431 = load i32, i32* %neighbor_size, align 4
  %cmp1035 = icmp eq i32 %431, 1
  br i1 %cmp1035, label %if.then.1043, label %lor.lhs.false.1037

lor.lhs.false.1037:                               ; preds = %if.then.1030
  %432 = load i32, i32* %neighbor_size, align 4
  %cmp1038 = icmp eq i32 %432, 2
  br i1 %cmp1038, label %land.lhs.true.1040, label %if.else.1045

land.lhs.true.1040:                               ; preds = %lor.lhs.false.1037
  %433 = load i32, i32* %ally1, align 4
  %cmp1041 = icmp slt i32 %433, 0
  br i1 %cmp1041, label %if.then.1043, label %if.else.1045

if.then.1043:                                     ; preds = %land.lhs.true.1040, %if.then.1030
  %434 = load i32, i32* %fast_liberties, align 4
  %inc1044 = add nsw i32 %434, 1
  store i32 %inc1044, i32* %fast_liberties, align 4
  br label %if.end.1046

if.else.1045:                                     ; preds = %land.lhs.true.1040, %lor.lhs.false.1037
  store i32 -1, i32* %retval
  br label %return

if.end.1046:                                      ; preds = %if.then.1043
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %land.lhs.true.1022, %if.else.1015
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.end.1047, %if.then.1013
  br label %for.inc

for.inc:                                          ; preds = %if.end.1048
  %435 = load i32, i32* %k, align 4
  %inc1049 = add nsw i32 %435, 1
  store i32 %inc1049, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %436 = load i32, i32* %ally1, align 4
  %cmp1050 = icmp sge i32 %436, 0
  br i1 %cmp1050, label %if.then.1052, label %if.end.1074

if.then.1052:                                     ; preds = %for.end
  %437 = load i32, i32* %ally1, align 4
  %idxprom1053 = sext i32 %437 to i64
  %arrayidx1054 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1053
  %liberties1055 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1054, i32 0, i32 3
  %438 = load i32, i32* %liberties1055, align 4
  %sub1056 = sub nsw i32 %438, 1
  %439 = load i32, i32* %fast_liberties, align 4
  %add1057 = add nsw i32 %439, %sub1056
  store i32 %add1057, i32* %fast_liberties, align 4
  %440 = load i32, i32* %ally2, align 4
  %cmp1058 = icmp sge i32 %440, 0
  br i1 %cmp1058, label %if.then.1060, label %if.end.1073

if.then.1060:                                     ; preds = %if.then.1052
  %441 = load i32, i32* %ally2, align 4
  %idxprom1061 = sext i32 %441 to i64
  %arrayidx1062 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1061
  %liberties1063 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1062, i32 0, i32 3
  %442 = load i32, i32* %liberties1063, align 4
  %443 = load i32, i32* %ally1, align 4
  %idxprom1064 = sext i32 %443 to i64
  %arrayidx1065 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1064
  %origin1066 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1065, i32 0, i32 2
  %444 = load i32, i32* %origin1066, align 4
  %445 = load i32, i32* %ally2, align 4
  %idxprom1067 = sext i32 %445 to i64
  %arrayidx1068 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1067
  %origin1069 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx1068, i32 0, i32 2
  %446 = load i32, i32* %origin1069, align 4
  %call1070 = call i32 @count_common_libs(i32 %444, i32 %446)
  %sub1071 = sub nsw i32 %442, %call1070
  %447 = load i32, i32* %fast_liberties, align 4
  %add1072 = add nsw i32 %447, %sub1071
  store i32 %add1072, i32* %fast_liberties, align 4
  br label %if.end.1073

if.end.1073:                                      ; preds = %if.then.1060, %if.then.1052
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.end.1073, %for.end
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.end.1074, %if.end.891
  %448 = load i32, i32* %fast_liberties, align 4
  store i32 %448, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1075, %if.else.1045, %if.then.151, %if.then.102, %if.then.56
  %449 = load i32, i32* %retval
  ret i32 %449
}

; Function Attrs: nounwind uwtable
define i32 @count_common_libs(i32 %str1, i32 %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %all_libs1 = alloca [241 x i32], align 16
  %libs1 = alloca i32*, align 8
  %liberties1 = alloca i32, align 4
  %liberties2 = alloca i32, align 4
  %commonlibs = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32 0, i32* %commonlibs, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1914, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1915, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %str1.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.35

if.else.30:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* %str1.addr, align 4
  %div31 = sdiv i32 %14, 20
  %sub32 = sub nsw i32 %div31, 1
  %15 = load i32, i32* %str1.addr, align 4
  %rem33 = srem i32 %15, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1916, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %str2.addr, align 4
  %idxprom36 = sext i32 %16 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %17 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %18 = load i32, i32* %str2.addr, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %if.end.53

if.else.48:                                       ; preds = %lor.lhs.false.41
  %20 = load i32, i32* %str2.addr, align 4
  %div49 = sdiv i32 %20, 20
  %sub50 = sub nsw i32 %div49, 1
  %21 = load i32, i32* %str2.addr, align 4
  %rem51 = srem i32 %21, 20
  %sub52 = sub nsw i32 %rem51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1917, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %sub50, i32 %sub52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.47
  %22 = load i32, i32* %str1.addr, align 4
  %idxprom54 = sext i32 %22 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom54
  %23 = load i32, i32* %arrayidx55, align 4
  store i32 %23, i32* %n, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom56
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx57, i32 0, i32 3
  %25 = load i32, i32* %liberties, align 4
  store i32 %25, i32* %liberties1, align 4
  %26 = load i32, i32* %liberties1, align 4
  %27 = load i32, i32* %str2.addr, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom58
  %28 = load i32, i32* %arrayidx59, align 4
  %idxprom60 = sext i32 %28 to i64
  %arrayidx61 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom60
  %liberties62 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx61, i32 0, i32 3
  %29 = load i32, i32* %liberties62, align 4
  %cmp63 = icmp sgt i32 %26, %29
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.53
  %30 = load i32, i32* %str2.addr, align 4
  %idxprom66 = sext i32 %30 to i64
  %arrayidx67 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom66
  %31 = load i32, i32* %arrayidx67, align 4
  store i32 %31, i32* %n, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom68 = sext i32 %32 to i64
  %arrayidx69 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom68
  %liberties70 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx69, i32 0, i32 3
  %33 = load i32, i32* %liberties70, align 4
  store i32 %33, i32* %liberties1, align 4
  %34 = load i32, i32* %str1.addr, align 4
  store i32 %34, i32* %tmp, align 4
  %35 = load i32, i32* %str2.addr, align 4
  store i32 %35, i32* %str1.addr, align 4
  %36 = load i32, i32* %tmp, align 4
  store i32 %36, i32* %str2.addr, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.end.53
  %37 = load i32, i32* %liberties1, align 4
  %cmp72 = icmp sle i32 %37, 20
  br i1 %cmp72, label %if.then.74, label %if.else.121

if.then.74:                                       ; preds = %if.end.71
  %38 = load i32, i32* %n, align 4
  %idxprom75 = sext i32 %38 to i64
  %arrayidx76 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom75
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx76, i32 0, i32 4
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i32 0
  store i32* %arraydecay, i32** %libs1, align 8
  %39 = load i32, i32* %str2.addr, align 4
  %idxprom77 = sext i32 %39 to i64
  %arrayidx78 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom77
  %40 = load i32, i32* %arrayidx78, align 4
  store i32 %40, i32* %n, align 4
  %41 = load i32, i32* %n, align 4
  %idxprom79 = sext i32 %41 to i64
  %arrayidx80 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom79
  %liberties81 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx80, i32 0, i32 3
  %42 = load i32, i32* %liberties81, align 4
  store i32 %42, i32* %liberties2, align 4
  %43 = load i32, i32* %liberties2, align 4
  %cmp82 = icmp sle i32 %43, 20
  br i1 %cmp82, label %if.then.84, label %if.end.120

if.then.84:                                       ; preds = %if.then.74
  %44 = load i32, i32* @liberty_mark, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* @liberty_mark, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.84
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %liberties1, align 4
  %cmp85 = icmp slt i32 %45, %46
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* @liberty_mark, align 4
  %48 = load i32, i32* %k, align 4
  %idxprom87 = sext i32 %48 to i64
  %49 = load i32*, i32** %libs1, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %49, i64 %idxprom87
  %50 = load i32, i32* %arrayidx88, align 4
  %idxprom89 = sext i32 %50 to i64
  %arrayidx90 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom89
  store i32 %47, i32* %arrayidx90, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %k, align 4
  %inc91 = add nsw i32 %51, 1
  store i32 %inc91, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %n, align 4
  %idxprom92 = sext i32 %52 to i64
  %arrayidx93 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom92
  %libs94 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx93, i32 0, i32 4
  %arraydecay95 = getelementptr inbounds [20 x i32], [20 x i32]* %libs94, i32 0, i32 0
  store i32* %arraydecay95, i32** %libs1, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.117, %for.end
  %53 = load i32, i32* %k, align 4
  %54 = load i32, i32* %liberties2, align 4
  %cmp97 = icmp slt i32 %53, %54
  br i1 %cmp97, label %for.body.99, label %for.end.119

for.body.99:                                      ; preds = %for.cond.96
  %55 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %55 to i64
  %56 = load i32*, i32** %libs1, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %56, i64 %idxprom100
  %57 = load i32, i32* %arrayidx101, align 4
  %idxprom102 = sext i32 %57 to i64
  %arrayidx103 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom102
  %58 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %58 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.then.114

land.lhs.true.107:                                ; preds = %for.body.99
  %59 = load i32, i32* %k, align 4
  %idxprom108 = sext i32 %59 to i64
  %60 = load i32*, i32** %libs1, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %60, i64 %idxprom108
  %61 = load i32, i32* %arrayidx109, align 4
  %idxprom110 = sext i32 %61 to i64
  %arrayidx111 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom110
  %62 = load i32, i32* %arrayidx111, align 4
  %63 = load i32, i32* @liberty_mark, align 4
  %cmp112 = icmp ne i32 %62, %63
  br i1 %cmp112, label %if.end.116, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.107, %for.body.99
  %64 = load i32, i32* %commonlibs, align 4
  %inc115 = add nsw i32 %64, 1
  store i32 %inc115, i32* %commonlibs, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %land.lhs.true.107
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %65 = load i32, i32* %k, align 4
  %inc118 = add nsw i32 %65, 1
  store i32 %inc118, i32* %k, align 4
  br label %for.cond.96

for.end.119:                                      ; preds = %for.cond.96
  %66 = load i32, i32* %commonlibs, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.then.74
  br label %if.end.124

if.else.121:                                      ; preds = %if.end.71
  %67 = load i32, i32* %str1.addr, align 4
  %arraydecay122 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  %call = call i32 @findlib(i32 %67, i32 241, i32* %arraydecay122)
  %arraydecay123 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  store i32* %arraydecay123, i32** %libs1, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.end.120
  store i32 0, i32* %k, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.218, %if.end.124
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %liberties1, align 4
  %cmp126 = icmp slt i32 %68, %69
  br i1 %cmp126, label %for.body.128, label %for.end.220

for.body.128:                                     ; preds = %for.cond.125
  %70 = load i32, i32* %k, align 4
  %idxprom129 = sext i32 %70 to i64
  %71 = load i32*, i32** %libs1, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %71, i64 %idxprom129
  %72 = load i32, i32* %arrayidx130, align 4
  %add = add nsw i32 %72, 20
  %idxprom131 = sext i32 %add to i64
  %arrayidx132 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom131
  %73 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %73 to i32
  %74 = load i32, i32* %str2.addr, align 4
  %idxprom134 = sext i32 %74 to i64
  %arrayidx135 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom134
  %75 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %75 to i32
  %cmp137 = icmp eq i32 %conv133, %conv136
  br i1 %cmp137, label %land.lhs.true.139, label %lor.lhs.false.149

land.lhs.true.139:                                ; preds = %for.body.128
  %76 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %76 to i64
  %77 = load i32*, i32** %libs1, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %77, i64 %idxprom140
  %78 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %78, 20
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom143
  %79 = load i32, i32* %arrayidx144, align 4
  %80 = load i32, i32* %str2.addr, align 4
  %idxprom145 = sext i32 %80 to i64
  %arrayidx146 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom145
  %81 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp eq i32 %79, %81
  br i1 %cmp147, label %if.then.215, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.139, %for.body.128
  %82 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %82 to i64
  %83 = load i32*, i32** %libs1, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %83, i64 %idxprom150
  %84 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %84, 1
  %idxprom153 = sext i32 %sub152 to i64
  %arrayidx154 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom153
  %85 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %85 to i32
  %86 = load i32, i32* %str2.addr, align 4
  %idxprom156 = sext i32 %86 to i64
  %arrayidx157 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom156
  %87 = load i8, i8* %arrayidx157, align 1
  %conv158 = zext i8 %87 to i32
  %cmp159 = icmp eq i32 %conv155, %conv158
  br i1 %cmp159, label %land.lhs.true.161, label %lor.lhs.false.171

land.lhs.true.161:                                ; preds = %lor.lhs.false.149
  %88 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %88 to i64
  %89 = load i32*, i32** %libs1, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %89, i64 %idxprom162
  %90 = load i32, i32* %arrayidx163, align 4
  %sub164 = sub nsw i32 %90, 1
  %idxprom165 = sext i32 %sub164 to i64
  %arrayidx166 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom165
  %91 = load i32, i32* %arrayidx166, align 4
  %92 = load i32, i32* %str2.addr, align 4
  %idxprom167 = sext i32 %92 to i64
  %arrayidx168 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom167
  %93 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp eq i32 %91, %93
  br i1 %cmp169, label %if.then.215, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %land.lhs.true.161, %lor.lhs.false.149
  %94 = load i32, i32* %k, align 4
  %idxprom172 = sext i32 %94 to i64
  %95 = load i32*, i32** %libs1, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %95, i64 %idxprom172
  %96 = load i32, i32* %arrayidx173, align 4
  %sub174 = sub nsw i32 %96, 20
  %idxprom175 = sext i32 %sub174 to i64
  %arrayidx176 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom175
  %97 = load i8, i8* %arrayidx176, align 1
  %conv177 = zext i8 %97 to i32
  %98 = load i32, i32* %str2.addr, align 4
  %idxprom178 = sext i32 %98 to i64
  %arrayidx179 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom178
  %99 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %99 to i32
  %cmp181 = icmp eq i32 %conv177, %conv180
  br i1 %cmp181, label %land.lhs.true.183, label %lor.lhs.false.193

land.lhs.true.183:                                ; preds = %lor.lhs.false.171
  %100 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %100 to i64
  %101 = load i32*, i32** %libs1, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %101, i64 %idxprom184
  %102 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %102, 20
  %idxprom187 = sext i32 %sub186 to i64
  %arrayidx188 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom187
  %103 = load i32, i32* %arrayidx188, align 4
  %104 = load i32, i32* %str2.addr, align 4
  %idxprom189 = sext i32 %104 to i64
  %arrayidx190 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom189
  %105 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp eq i32 %103, %105
  br i1 %cmp191, label %if.then.215, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %land.lhs.true.183, %lor.lhs.false.171
  %106 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %106 to i64
  %107 = load i32*, i32** %libs1, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %107, i64 %idxprom194
  %108 = load i32, i32* %arrayidx195, align 4
  %add196 = add nsw i32 %108, 1
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom197
  %109 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %109 to i32
  %110 = load i32, i32* %str2.addr, align 4
  %idxprom200 = sext i32 %110 to i64
  %arrayidx201 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom200
  %111 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %111 to i32
  %cmp203 = icmp eq i32 %conv199, %conv202
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.217

land.lhs.true.205:                                ; preds = %lor.lhs.false.193
  %112 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %112 to i64
  %113 = load i32*, i32** %libs1, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %113, i64 %idxprom206
  %114 = load i32, i32* %arrayidx207, align 4
  %add208 = add nsw i32 %114, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom209
  %115 = load i32, i32* %arrayidx210, align 4
  %116 = load i32, i32* %str2.addr, align 4
  %idxprom211 = sext i32 %116 to i64
  %arrayidx212 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom211
  %117 = load i32, i32* %arrayidx212, align 4
  %cmp213 = icmp eq i32 %115, %117
  br i1 %cmp213, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %land.lhs.true.205, %land.lhs.true.183, %land.lhs.true.161, %land.lhs.true.139
  %118 = load i32, i32* %commonlibs, align 4
  %inc216 = add nsw i32 %118, 1
  store i32 %inc216, i32* %commonlibs, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %land.lhs.true.205, %lor.lhs.false.193
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %119 = load i32, i32* %k, align 4
  %inc219 = add nsw i32 %119, 1
  store i32 %inc219, i32* %k, align 4
  br label %for.cond.125

for.end.220:                                      ; preds = %for.cond.125
  %120 = load i32, i32* %commonlibs, align 4
  store i32 %120, i32* %retval
  br label %return

return:                                           ; preds = %for.end.220, %for.end.119
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define i32 @approxlib(i32 %pos, i32 %color, i32 %maxlib, i32* %libs) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %maxlib.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %liberties = alloca i32, align 4
  %fast_liberties = alloca i32, align 4
  %s = alloca i32, align 4
  %lib = alloca i32, align 4
  %s138 = alloca i32, align 4
  %lib149 = alloca i32, align 4
  %s221 = alloca i32, align 4
  %lib232 = alloca i32, align 4
  %s301 = alloca i32, align 4
  %lib312 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %maxlib, i32* %maxlib.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32 0, i32* %liberties, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %3, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1595, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.13

if.else.8:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* %pos.addr, align 4
  %div9 = sdiv i32 %6, 20
  %sub10 = sub nsw i32 %div9, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem11 = srem i32 %7, 20
  %sub12 = sub nsw i32 %rem11, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1596, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub10, i32 %sub12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.8, %if.then.7
  %8 = load i32*, i32** %libs.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %color.addr, align 4
  %call = call i32 @fastlib(i32 %9, i32 %10, i32 1)
  store i32 %call, i32* %fast_liberties, align 4
  %11 = load i32, i32* %fast_liberties, align 4
  %cmp15 = icmp sge i32 %11, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %12 = load i32, i32* %fast_liberties, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.13
  %13 = load i32, i32* %maxlib.addr, align 4
  %cmp20 = icmp sgt i32 %13, 20
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %color.addr, align 4
  %16 = load i32, i32* %maxlib.addr, align 4
  %17 = load i32*, i32** %libs.addr, align 8
  %call23 = call i32 @slow_approxlib(i32 %14, i32 %15, i32 %16, i32* %17)
  store i32 %call23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %18 = load i32, i32* @liberty_mark, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* @liberty_mark, align 4
  %19 = load i32, i32* @liberty_mark, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom25
  store i32 %19, i32* %arrayidx26, align 4
  %21 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %21, 20
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %land.lhs.true, label %if.else.53

land.lhs.true:                                    ; preds = %if.end.24
  %23 = load i32, i32* %pos.addr, align 4
  %add32 = add nsw i32 %23, 20
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom33
  %24 = load i32, i32* %arrayidx34, align 4
  %25 = load i32, i32* @liberty_mark, align 4
  %cmp35 = icmp ne i32 %24, %25
  br i1 %cmp35, label %if.then.37, label %if.else.53

if.then.37:                                       ; preds = %land.lhs.true
  %26 = load i32*, i32** %libs.addr, align 8
  %cmp38 = icmp ne i32* %26, null
  br i1 %cmp38, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.then.37
  %27 = load i32, i32* %pos.addr, align 4
  %add41 = add nsw i32 %27, 20
  %28 = load i32, i32* %liberties, align 4
  %idxprom42 = sext i32 %28 to i64
  %29 = load i32*, i32** %libs.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %29, i64 %idxprom42
  store i32 %add41, i32* %arrayidx43, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.then.37
  %30 = load i32, i32* %liberties, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* %liberties, align 4
  %31 = load i32, i32* %liberties, align 4
  %32 = load i32, i32* %maxlib.addr, align 4
  %cmp46 = icmp sge i32 %31, %32
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.44
  %33 = load i32, i32* %liberties, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.44
  %34 = load i32, i32* @liberty_mark, align 4
  %35 = load i32, i32* %pos.addr, align 4
  %add50 = add nsw i32 %35, 20
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom51
  store i32 %34, i32* %arrayidx52, align 4
  br label %if.end.101

if.else.53:                                       ; preds = %land.lhs.true, %if.end.24
  %36 = load i32, i32* %pos.addr, align 4
  %add54 = add nsw i32 %36, 20
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom55
  %37 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %37 to i32
  %38 = load i32, i32* %color.addr, align 4
  %cmp58 = icmp eq i32 %conv57, %38
  br i1 %cmp58, label %if.then.60, label %if.end.100

if.then.60:                                       ; preds = %if.else.53
  %39 = load i32, i32* %pos.addr, align 4
  %add61 = add nsw i32 %39, 20
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom62
  %40 = load i32, i32* %arrayidx63, align 4
  store i32 %40, i32* %s, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %s, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom64
  %liberties66 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx65, i32 0, i32 3
  %43 = load i32, i32* %liberties66, align 4
  %cmp67 = icmp slt i32 %41, %43
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %44 to i64
  %45 = load i32, i32* %s, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom70
  %libs72 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx71, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [20 x i32], [20 x i32]* %libs72, i32 0, i64 %idxprom69
  %46 = load i32, i32* %arrayidx73, align 4
  store i32 %46, i32* %lib, align 4
  %47 = load i32, i32* %lib, align 4
  %idxprom74 = sext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom74
  %48 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %48 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.98

land.lhs.true.79:                                 ; preds = %for.body
  %49 = load i32, i32* %lib, align 4
  %idxprom80 = sext i32 %49 to i64
  %arrayidx81 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom80
  %50 = load i32, i32* %arrayidx81, align 4
  %51 = load i32, i32* @liberty_mark, align 4
  %cmp82 = icmp ne i32 %50, %51
  br i1 %cmp82, label %if.then.84, label %if.end.98

if.then.84:                                       ; preds = %land.lhs.true.79
  %52 = load i32*, i32** %libs.addr, align 8
  %cmp85 = icmp ne i32* %52, null
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.then.84
  %53 = load i32, i32* %lib, align 4
  %54 = load i32, i32* %liberties, align 4
  %idxprom88 = sext i32 %54 to i64
  %55 = load i32*, i32** %libs.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %55, i64 %idxprom88
  store i32 %53, i32* %arrayidx89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.then.84
  %56 = load i32, i32* %liberties, align 4
  %inc91 = add nsw i32 %56, 1
  store i32 %inc91, i32* %liberties, align 4
  %57 = load i32, i32* %liberties, align 4
  %58 = load i32, i32* %maxlib.addr, align 4
  %cmp92 = icmp sge i32 %57, %58
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.90
  %59 = load i32, i32* %liberties, align 4
  store i32 %59, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.end.90
  %60 = load i32, i32* @liberty_mark, align 4
  %61 = load i32, i32* %lib, align 4
  %idxprom96 = sext i32 %61 to i64
  %arrayidx97 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom96
  store i32 %60, i32* %arrayidx97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.95, %land.lhs.true.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %62 = load i32, i32* %k, align 4
  %inc99 = add nsw i32 %62, 1
  store i32 %inc99, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.100

if.end.100:                                       ; preds = %for.end, %if.else.53
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.49
  %63 = load i32, i32* %pos.addr, align 4
  %sub102 = sub nsw i32 %63, 1
  %idxprom103 = sext i32 %sub102 to i64
  %arrayidx104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom103
  %64 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %64 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.130

land.lhs.true.108:                                ; preds = %if.end.101
  %65 = load i32, i32* %pos.addr, align 4
  %sub109 = sub nsw i32 %65, 1
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom110
  %66 = load i32, i32* %arrayidx111, align 4
  %67 = load i32, i32* @liberty_mark, align 4
  %cmp112 = icmp ne i32 %66, %67
  br i1 %cmp112, label %if.then.114, label %if.else.130

if.then.114:                                      ; preds = %land.lhs.true.108
  %68 = load i32*, i32** %libs.addr, align 8
  %cmp115 = icmp ne i32* %68, null
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.then.114
  %69 = load i32, i32* %pos.addr, align 4
  %sub118 = sub nsw i32 %69, 1
  %70 = load i32, i32* %liberties, align 4
  %idxprom119 = sext i32 %70 to i64
  %71 = load i32*, i32** %libs.addr, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %71, i64 %idxprom119
  store i32 %sub118, i32* %arrayidx120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.then.114
  %72 = load i32, i32* %liberties, align 4
  %inc122 = add nsw i32 %72, 1
  store i32 %inc122, i32* %liberties, align 4
  %73 = load i32, i32* %liberties, align 4
  %74 = load i32, i32* %maxlib.addr, align 4
  %cmp123 = icmp sge i32 %73, %74
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.121
  %75 = load i32, i32* %liberties, align 4
  store i32 %75, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.end.121
  %76 = load i32, i32* @liberty_mark, align 4
  %77 = load i32, i32* %pos.addr, align 4
  %sub127 = sub nsw i32 %77, 1
  %idxprom128 = sext i32 %sub127 to i64
  %arrayidx129 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom128
  store i32 %76, i32* %arrayidx129, align 4
  br label %if.end.184

if.else.130:                                      ; preds = %land.lhs.true.108, %if.end.101
  %78 = load i32, i32* %pos.addr, align 4
  %sub131 = sub nsw i32 %78, 1
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom132
  %79 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %79 to i32
  %80 = load i32, i32* %color.addr, align 4
  %cmp135 = icmp eq i32 %conv134, %80
  br i1 %cmp135, label %if.then.137, label %if.end.183

if.then.137:                                      ; preds = %if.else.130
  %81 = load i32, i32* %pos.addr, align 4
  %sub139 = sub nsw i32 %81, 1
  %idxprom140 = sext i32 %sub139 to i64
  %arrayidx141 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom140
  %82 = load i32, i32* %arrayidx141, align 4
  store i32 %82, i32* %s138, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.180, %if.then.137
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %s138, align 4
  %idxprom143 = sext i32 %84 to i64
  %arrayidx144 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom143
  %liberties145 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx144, i32 0, i32 3
  %85 = load i32, i32* %liberties145, align 4
  %cmp146 = icmp slt i32 %83, %85
  br i1 %cmp146, label %for.body.148, label %for.end.182

for.body.148:                                     ; preds = %for.cond.142
  %86 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %86 to i64
  %87 = load i32, i32* %s138, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom151
  %libs153 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx152, i32 0, i32 4
  %arrayidx154 = getelementptr inbounds [20 x i32], [20 x i32]* %libs153, i32 0, i64 %idxprom150
  %88 = load i32, i32* %arrayidx154, align 4
  store i32 %88, i32* %lib149, align 4
  %89 = load i32, i32* %lib149, align 4
  %idxprom155 = sext i32 %89 to i64
  %arrayidx156 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom155
  %90 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %90 to i32
  %cmp158 = icmp eq i32 %conv157, 0
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.179

land.lhs.true.160:                                ; preds = %for.body.148
  %91 = load i32, i32* %lib149, align 4
  %idxprom161 = sext i32 %91 to i64
  %arrayidx162 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom161
  %92 = load i32, i32* %arrayidx162, align 4
  %93 = load i32, i32* @liberty_mark, align 4
  %cmp163 = icmp ne i32 %92, %93
  br i1 %cmp163, label %if.then.165, label %if.end.179

if.then.165:                                      ; preds = %land.lhs.true.160
  %94 = load i32*, i32** %libs.addr, align 8
  %cmp166 = icmp ne i32* %94, null
  br i1 %cmp166, label %if.then.168, label %if.end.171

if.then.168:                                      ; preds = %if.then.165
  %95 = load i32, i32* %lib149, align 4
  %96 = load i32, i32* %liberties, align 4
  %idxprom169 = sext i32 %96 to i64
  %97 = load i32*, i32** %libs.addr, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %97, i64 %idxprom169
  store i32 %95, i32* %arrayidx170, align 4
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.168, %if.then.165
  %98 = load i32, i32* %liberties, align 4
  %inc172 = add nsw i32 %98, 1
  store i32 %inc172, i32* %liberties, align 4
  %99 = load i32, i32* %liberties, align 4
  %100 = load i32, i32* %maxlib.addr, align 4
  %cmp173 = icmp sge i32 %99, %100
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.171
  %101 = load i32, i32* %liberties, align 4
  store i32 %101, i32* %retval
  br label %return

if.end.176:                                       ; preds = %if.end.171
  %102 = load i32, i32* @liberty_mark, align 4
  %103 = load i32, i32* %lib149, align 4
  %idxprom177 = sext i32 %103 to i64
  %arrayidx178 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom177
  store i32 %102, i32* %arrayidx178, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.176, %land.lhs.true.160, %for.body.148
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %104 = load i32, i32* %k, align 4
  %inc181 = add nsw i32 %104, 1
  store i32 %inc181, i32* %k, align 4
  br label %for.cond.142

for.end.182:                                      ; preds = %for.cond.142
  br label %if.end.183

if.end.183:                                       ; preds = %for.end.182, %if.else.130
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.126
  %105 = load i32, i32* %pos.addr, align 4
  %sub185 = sub nsw i32 %105, 20
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom186
  %106 = load i8, i8* %arrayidx187, align 1
  %conv188 = zext i8 %106 to i32
  %cmp189 = icmp eq i32 %conv188, 0
  br i1 %cmp189, label %land.lhs.true.191, label %if.else.213

land.lhs.true.191:                                ; preds = %if.end.184
  %107 = load i32, i32* %pos.addr, align 4
  %sub192 = sub nsw i32 %107, 20
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom193
  %108 = load i32, i32* %arrayidx194, align 4
  %109 = load i32, i32* @liberty_mark, align 4
  %cmp195 = icmp ne i32 %108, %109
  br i1 %cmp195, label %if.then.197, label %if.else.213

if.then.197:                                      ; preds = %land.lhs.true.191
  %110 = load i32*, i32** %libs.addr, align 8
  %cmp198 = icmp ne i32* %110, null
  br i1 %cmp198, label %if.then.200, label %if.end.204

if.then.200:                                      ; preds = %if.then.197
  %111 = load i32, i32* %pos.addr, align 4
  %sub201 = sub nsw i32 %111, 20
  %112 = load i32, i32* %liberties, align 4
  %idxprom202 = sext i32 %112 to i64
  %113 = load i32*, i32** %libs.addr, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %113, i64 %idxprom202
  store i32 %sub201, i32* %arrayidx203, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.200, %if.then.197
  %114 = load i32, i32* %liberties, align 4
  %inc205 = add nsw i32 %114, 1
  store i32 %inc205, i32* %liberties, align 4
  %115 = load i32, i32* %liberties, align 4
  %116 = load i32, i32* %maxlib.addr, align 4
  %cmp206 = icmp sge i32 %115, %116
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.end.204
  %117 = load i32, i32* %liberties, align 4
  store i32 %117, i32* %retval
  br label %return

if.end.209:                                       ; preds = %if.end.204
  %118 = load i32, i32* @liberty_mark, align 4
  %119 = load i32, i32* %pos.addr, align 4
  %sub210 = sub nsw i32 %119, 20
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom211
  store i32 %118, i32* %arrayidx212, align 4
  br label %if.end.267

if.else.213:                                      ; preds = %land.lhs.true.191, %if.end.184
  %120 = load i32, i32* %pos.addr, align 4
  %sub214 = sub nsw i32 %120, 20
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom215
  %121 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %121 to i32
  %122 = load i32, i32* %color.addr, align 4
  %cmp218 = icmp eq i32 %conv217, %122
  br i1 %cmp218, label %if.then.220, label %if.end.266

if.then.220:                                      ; preds = %if.else.213
  %123 = load i32, i32* %pos.addr, align 4
  %sub222 = sub nsw i32 %123, 20
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom223
  %124 = load i32, i32* %arrayidx224, align 4
  store i32 %124, i32* %s221, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.263, %if.then.220
  %125 = load i32, i32* %k, align 4
  %126 = load i32, i32* %s221, align 4
  %idxprom226 = sext i32 %126 to i64
  %arrayidx227 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom226
  %liberties228 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx227, i32 0, i32 3
  %127 = load i32, i32* %liberties228, align 4
  %cmp229 = icmp slt i32 %125, %127
  br i1 %cmp229, label %for.body.231, label %for.end.265

for.body.231:                                     ; preds = %for.cond.225
  %128 = load i32, i32* %k, align 4
  %idxprom233 = sext i32 %128 to i64
  %129 = load i32, i32* %s221, align 4
  %idxprom234 = sext i32 %129 to i64
  %arrayidx235 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom234
  %libs236 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx235, i32 0, i32 4
  %arrayidx237 = getelementptr inbounds [20 x i32], [20 x i32]* %libs236, i32 0, i64 %idxprom233
  %130 = load i32, i32* %arrayidx237, align 4
  store i32 %130, i32* %lib232, align 4
  %131 = load i32, i32* %lib232, align 4
  %idxprom238 = sext i32 %131 to i64
  %arrayidx239 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom238
  %132 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %132 to i32
  %cmp241 = icmp eq i32 %conv240, 0
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.262

land.lhs.true.243:                                ; preds = %for.body.231
  %133 = load i32, i32* %lib232, align 4
  %idxprom244 = sext i32 %133 to i64
  %arrayidx245 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom244
  %134 = load i32, i32* %arrayidx245, align 4
  %135 = load i32, i32* @liberty_mark, align 4
  %cmp246 = icmp ne i32 %134, %135
  br i1 %cmp246, label %if.then.248, label %if.end.262

if.then.248:                                      ; preds = %land.lhs.true.243
  %136 = load i32*, i32** %libs.addr, align 8
  %cmp249 = icmp ne i32* %136, null
  br i1 %cmp249, label %if.then.251, label %if.end.254

if.then.251:                                      ; preds = %if.then.248
  %137 = load i32, i32* %lib232, align 4
  %138 = load i32, i32* %liberties, align 4
  %idxprom252 = sext i32 %138 to i64
  %139 = load i32*, i32** %libs.addr, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %139, i64 %idxprom252
  store i32 %137, i32* %arrayidx253, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.251, %if.then.248
  %140 = load i32, i32* %liberties, align 4
  %inc255 = add nsw i32 %140, 1
  store i32 %inc255, i32* %liberties, align 4
  %141 = load i32, i32* %liberties, align 4
  %142 = load i32, i32* %maxlib.addr, align 4
  %cmp256 = icmp sge i32 %141, %142
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.254
  %143 = load i32, i32* %liberties, align 4
  store i32 %143, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.end.254
  %144 = load i32, i32* @liberty_mark, align 4
  %145 = load i32, i32* %lib232, align 4
  %idxprom260 = sext i32 %145 to i64
  %arrayidx261 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom260
  store i32 %144, i32* %arrayidx261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.259, %land.lhs.true.243, %for.body.231
  br label %for.inc.263

for.inc.263:                                      ; preds = %if.end.262
  %146 = load i32, i32* %k, align 4
  %inc264 = add nsw i32 %146, 1
  store i32 %inc264, i32* %k, align 4
  br label %for.cond.225

for.end.265:                                      ; preds = %for.cond.225
  br label %if.end.266

if.end.266:                                       ; preds = %for.end.265, %if.else.213
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.209
  %147 = load i32, i32* %pos.addr, align 4
  %add268 = add nsw i32 %147, 1
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom269
  %148 = load i8, i8* %arrayidx270, align 1
  %conv271 = zext i8 %148 to i32
  %cmp272 = icmp eq i32 %conv271, 0
  br i1 %cmp272, label %land.lhs.true.274, label %if.else.293

land.lhs.true.274:                                ; preds = %if.end.267
  %149 = load i32, i32* %pos.addr, align 4
  %add275 = add nsw i32 %149, 1
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom276
  %150 = load i32, i32* %arrayidx277, align 4
  %151 = load i32, i32* @liberty_mark, align 4
  %cmp278 = icmp ne i32 %150, %151
  br i1 %cmp278, label %if.then.280, label %if.else.293

if.then.280:                                      ; preds = %land.lhs.true.274
  %152 = load i32*, i32** %libs.addr, align 8
  %cmp281 = icmp ne i32* %152, null
  br i1 %cmp281, label %if.then.283, label %if.end.287

if.then.283:                                      ; preds = %if.then.280
  %153 = load i32, i32* %pos.addr, align 4
  %add284 = add nsw i32 %153, 1
  %154 = load i32, i32* %liberties, align 4
  %idxprom285 = sext i32 %154 to i64
  %155 = load i32*, i32** %libs.addr, align 8
  %arrayidx286 = getelementptr inbounds i32, i32* %155, i64 %idxprom285
  store i32 %add284, i32* %arrayidx286, align 4
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.283, %if.then.280
  %156 = load i32, i32* %liberties, align 4
  %inc288 = add nsw i32 %156, 1
  store i32 %inc288, i32* %liberties, align 4
  %157 = load i32, i32* %liberties, align 4
  %158 = load i32, i32* %maxlib.addr, align 4
  %cmp289 = icmp sge i32 %157, %158
  br i1 %cmp289, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %if.end.287
  %159 = load i32, i32* %liberties, align 4
  store i32 %159, i32* %retval
  br label %return

if.end.292:                                       ; preds = %if.end.287
  br label %if.end.347

if.else.293:                                      ; preds = %land.lhs.true.274, %if.end.267
  %160 = load i32, i32* %pos.addr, align 4
  %add294 = add nsw i32 %160, 1
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom295
  %161 = load i8, i8* %arrayidx296, align 1
  %conv297 = zext i8 %161 to i32
  %162 = load i32, i32* %color.addr, align 4
  %cmp298 = icmp eq i32 %conv297, %162
  br i1 %cmp298, label %if.then.300, label %if.end.346

if.then.300:                                      ; preds = %if.else.293
  %163 = load i32, i32* %pos.addr, align 4
  %add302 = add nsw i32 %163, 1
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom303
  %164 = load i32, i32* %arrayidx304, align 4
  store i32 %164, i32* %s301, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.343, %if.then.300
  %165 = load i32, i32* %k, align 4
  %166 = load i32, i32* %s301, align 4
  %idxprom306 = sext i32 %166 to i64
  %arrayidx307 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom306
  %liberties308 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx307, i32 0, i32 3
  %167 = load i32, i32* %liberties308, align 4
  %cmp309 = icmp slt i32 %165, %167
  br i1 %cmp309, label %for.body.311, label %for.end.345

for.body.311:                                     ; preds = %for.cond.305
  %168 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %168 to i64
  %169 = load i32, i32* %s301, align 4
  %idxprom314 = sext i32 %169 to i64
  %arrayidx315 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom314
  %libs316 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx315, i32 0, i32 4
  %arrayidx317 = getelementptr inbounds [20 x i32], [20 x i32]* %libs316, i32 0, i64 %idxprom313
  %170 = load i32, i32* %arrayidx317, align 4
  store i32 %170, i32* %lib312, align 4
  %171 = load i32, i32* %lib312, align 4
  %idxprom318 = sext i32 %171 to i64
  %arrayidx319 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom318
  %172 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %172 to i32
  %cmp321 = icmp eq i32 %conv320, 0
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.342

land.lhs.true.323:                                ; preds = %for.body.311
  %173 = load i32, i32* %lib312, align 4
  %idxprom324 = sext i32 %173 to i64
  %arrayidx325 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom324
  %174 = load i32, i32* %arrayidx325, align 4
  %175 = load i32, i32* @liberty_mark, align 4
  %cmp326 = icmp ne i32 %174, %175
  br i1 %cmp326, label %if.then.328, label %if.end.342

if.then.328:                                      ; preds = %land.lhs.true.323
  %176 = load i32*, i32** %libs.addr, align 8
  %cmp329 = icmp ne i32* %176, null
  br i1 %cmp329, label %if.then.331, label %if.end.334

if.then.331:                                      ; preds = %if.then.328
  %177 = load i32, i32* %lib312, align 4
  %178 = load i32, i32* %liberties, align 4
  %idxprom332 = sext i32 %178 to i64
  %179 = load i32*, i32** %libs.addr, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %179, i64 %idxprom332
  store i32 %177, i32* %arrayidx333, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.331, %if.then.328
  %180 = load i32, i32* %liberties, align 4
  %inc335 = add nsw i32 %180, 1
  store i32 %inc335, i32* %liberties, align 4
  %181 = load i32, i32* %liberties, align 4
  %182 = load i32, i32* %maxlib.addr, align 4
  %cmp336 = icmp sge i32 %181, %182
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.end.334
  %183 = load i32, i32* %liberties, align 4
  store i32 %183, i32* %retval
  br label %return

if.end.339:                                       ; preds = %if.end.334
  %184 = load i32, i32* @liberty_mark, align 4
  %185 = load i32, i32* %lib312, align 4
  %idxprom340 = sext i32 %185 to i64
  %arrayidx341 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom340
  store i32 %184, i32* %arrayidx341, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.339, %land.lhs.true.323, %for.body.311
  br label %for.inc.343

for.inc.343:                                      ; preds = %if.end.342
  %186 = load i32, i32* %k, align 4
  %inc344 = add nsw i32 %186, 1
  store i32 %inc344, i32* %k, align 4
  br label %for.cond.305

for.end.345:                                      ; preds = %for.cond.305
  br label %if.end.346

if.end.346:                                       ; preds = %for.end.345, %if.else.293
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.292
  %187 = load i32, i32* %liberties, align 4
  store i32 %187, i32* %retval
  br label %return

return:                                           ; preds = %if.end.347, %if.then.338, %if.then.291, %if.then.258, %if.then.208, %if.then.175, %if.then.125, %if.then.94, %if.then.48, %if.then.22, %if.then.17
  %188 = load i32, i32* %retval
  ret i32 %188
}

; Function Attrs: nounwind uwtable
define internal i32 @slow_approxlib(i32 %pos, i32 %color, i32 %maxlib, i32* %libs) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %maxlib.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %liberties = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %s = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %l = alloca i32, align 4
  %d2 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %maxlib, i32* %maxlib.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32 0, i32* %liberties, align 4
  %0 = load i32, i32* @liberty_mark, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @liberty_mark, align 4
  %1 = load i32, i32* @liberty_mark, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* @string_mark, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* @string_mark, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %entry
  %4 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %4, 4
  br i1 %cmp, label %for.body, label %for.end.97

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  store i32 %6, i32* %d, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %d, align 4
  %add = add nsw i32 %7, %8
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, i32* %pos.addr, align 4
  %11 = load i32, i32* %d, align 4
  %add8 = add nsw i32 %10, %11
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %13 = load i32, i32* @liberty_mark, align 4
  %cmp11 = icmp ne i32 %12, %13
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32*, i32** %libs.addr, align 8
  %tobool = icmp ne i32* %14, null
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %d, align 4
  %add14 = add nsw i32 %15, %16
  %17 = load i32, i32* %liberties, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i32*, i32** %libs.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  store i32 %add14, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %19 = load i32, i32* %liberties, align 4
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %liberties, align 4
  %20 = load i32, i32* %liberties, align 4
  %21 = load i32, i32* %maxlib.addr, align 4
  %cmp18 = icmp eq i32 %20, %21
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %22 = load i32, i32* %liberties, align 4
  store i32 %22, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %23 = load i32, i32* @liberty_mark, align 4
  %24 = load i32, i32* %pos.addr, align 4
  %25 = load i32, i32* %d, align 4
  %add22 = add nsw i32 %24, %25
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom23
  store i32 %23, i32* %arrayidx24, align 4
  br label %if.end.94

if.else:                                          ; preds = %land.lhs.true, %for.body
  %26 = load i32, i32* %pos.addr, align 4
  %27 = load i32, i32* %d, align 4
  %add25 = add nsw i32 %26, %27
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %28 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %28 to i32
  %29 = load i32, i32* %color.addr, align 4
  %cmp29 = icmp eq i32 %conv28, %29
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.93

land.lhs.true.31:                                 ; preds = %if.else
  %30 = load i32, i32* %pos.addr, align 4
  %31 = load i32, i32* %d, align 4
  %add32 = add nsw i32 %30, %31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom33
  %32 = load i32, i32* %arrayidx34, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom35
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx36, i32 0, i32 7
  %33 = load i32, i32* %mark, align 4
  %34 = load i32, i32* @string_mark, align 4
  %cmp37 = icmp ne i32 %33, %34
  br i1 %cmp37, label %if.then.39, label %if.end.93

if.then.39:                                       ; preds = %land.lhs.true.31
  %35 = load i32, i32* %pos.addr, align 4
  %36 = load i32, i32* %d, align 4
  %add40 = add nsw i32 %35, %36
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom41
  %37 = load i32, i32* %arrayidx42, align 4
  store i32 %37, i32* %s, align 4
  %38 = load i32, i32* %s, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom43
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx44, i32 0, i32 2
  %39 = load i32, i32* %origin, align 4
  store i32 %39, i32* %pos2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.39
  store i32 0, i32* %l, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %do.body
  %40 = load i32, i32* %l, align 4
  %cmp46 = icmp slt i32 %40, 4
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.45
  %41 = load i32, i32* %l, align 4
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom49
  %42 = load i32, i32* %arrayidx50, align 4
  store i32 %42, i32* %d2, align 4
  %43 = load i32, i32* %pos2, align 4
  %44 = load i32, i32* %d2, align 4
  %add51 = add nsw i32 %43, %44
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %45 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %45 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.78

land.lhs.true.57:                                 ; preds = %for.body.48
  %46 = load i32, i32* %pos2, align 4
  %47 = load i32, i32* %d2, align 4
  %add58 = add nsw i32 %46, %47
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom59
  %48 = load i32, i32* %arrayidx60, align 4
  %49 = load i32, i32* @liberty_mark, align 4
  %cmp61 = icmp ne i32 %48, %49
  br i1 %cmp61, label %if.then.63, label %if.end.78

if.then.63:                                       ; preds = %land.lhs.true.57
  %50 = load i32*, i32** %libs.addr, align 8
  %tobool64 = icmp ne i32* %50, null
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.then.63
  %51 = load i32, i32* %pos2, align 4
  %52 = load i32, i32* %d2, align 4
  %add66 = add nsw i32 %51, %52
  %53 = load i32, i32* %liberties, align 4
  %idxprom67 = sext i32 %53 to i64
  %54 = load i32*, i32** %libs.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %54, i64 %idxprom67
  store i32 %add66, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.then.63
  %55 = load i32, i32* %liberties, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* %liberties, align 4
  %56 = load i32, i32* %liberties, align 4
  %57 = load i32, i32* %maxlib.addr, align 4
  %cmp71 = icmp eq i32 %56, %57
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.69
  %58 = load i32, i32* %liberties, align 4
  store i32 %58, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.69
  %59 = load i32, i32* @liberty_mark, align 4
  %60 = load i32, i32* %pos2, align 4
  %61 = load i32, i32* %d2, align 4
  %add75 = add nsw i32 %60, %61
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom76
  store i32 %59, i32* %arrayidx77, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.74, %land.lhs.true.57, %for.body.48
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %62 = load i32, i32* %l, align 4
  %inc79 = add nsw i32 %62, 1
  store i32 %inc79, i32* %l, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  %63 = load i32, i32* %pos2, align 4
  %idxprom80 = sext i32 %63 to i64
  %arrayidx81 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom80
  %64 = load i32, i32* %arrayidx81, align 4
  store i32 %64, i32* %pos2, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %65 = load i32, i32* %pos2, align 4
  %66 = load i32, i32* %s, align 4
  %idxprom82 = sext i32 %66 to i64
  %arrayidx83 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom82
  %origin84 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx83, i32 0, i32 2
  %67 = load i32, i32* %origin84, align 4
  %cmp85 = icmp eq i32 %65, %67
  %lnot = xor i1 %cmp85, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %68 = load i32, i32* @string_mark, align 4
  %69 = load i32, i32* %pos.addr, align 4
  %70 = load i32, i32* %d, align 4
  %add87 = add nsw i32 %69, %70
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom88
  %71 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %71 to i64
  %arrayidx91 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom90
  %mark92 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx91, i32 0, i32 7
  store i32 %68, i32* %mark92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %do.end, %land.lhs.true.31, %if.else
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.21
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %72 = load i32, i32* %k, align 4
  %inc96 = add nsw i32 %72, 1
  store i32 %inc96, i32* %k, align 4
  br label %for.cond

for.end.97:                                       ; preds = %for.cond
  %73 = load i32, i32* %liberties, align 4
  store i32 %73, i32* %retval
  br label %return

return:                                           ; preds = %for.end.97, %if.then.73, %if.then.20
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @accuratelib(i32 %pos, i32 %color, i32 %maxlib, i32* %libs) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %maxlib.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %liberties = alloca i32, align 4
  %lib = alloca i32, align 4
  %captured = alloca [4 x i32], align 16
  %captures = alloca i32, align 4
  %fast_liberties = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  %stone = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %maxlib, i32* %maxlib.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32 0, i32* %liberties, align 4
  store i32 0, i32* %captures, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %3, 20
  %sub2 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1745, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub, i32 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %color.addr, align 4
  %cmp3 = icmp eq i32 %4, 1
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %color.addr, align 4
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.13

if.else.8:                                        ; preds = %lor.lhs.false
  %6 = load i32, i32* %pos.addr, align 4
  %div9 = sdiv i32 %6, 20
  %sub10 = sub nsw i32 %div9, 1
  %7 = load i32, i32* %pos.addr, align 4
  %rem11 = srem i32 %7, 20
  %sub12 = sub nsw i32 %rem11, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1746, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub10, i32 %sub12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.8, %if.then.7
  %8 = load i32*, i32** %libs.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.end.19, label %if.then.14

if.then.14:                                       ; preds = %if.end.13
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %color.addr, align 4
  %call = call i32 @fastlib(i32 %9, i32 %10, i32 0)
  store i32 %call, i32* %fast_liberties, align 4
  %11 = load i32, i32* %fast_liberties, align 4
  %cmp15 = icmp sge i32 %11, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  %12 = load i32, i32* %fast_liberties, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.13
  %13 = load i32, i32* @string_mark, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @string_mark, align 4
  %14 = load i32, i32* @liberty_mark, align 4
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, i32* @liberty_mark, align 4
  %15 = load i32, i32* @liberty_mark, align 4
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom21
  store i32 %15, i32* %arrayidx22, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.252, %if.end.19
  %17 = load i32, i32* %k, align 4
  %cmp23 = icmp slt i32 %17, 4
  br i1 %cmp23, label %for.body, label %for.end.254

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom25
  %20 = load i32, i32* %arrayidx26, align 4
  %add = add nsw i32 %18, %20
  store i32 %add, i32* %pos2, align 4
  %21 = load i32, i32* %pos2, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %land.lhs.true, label %if.else.49

land.lhs.true:                                    ; preds = %for.body
  %23 = load i32, i32* %pos2, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %25 = load i32, i32* @liberty_mark, align 4
  %cmp34 = icmp ne i32 %24, %25
  br i1 %cmp34, label %if.then.36, label %if.else.49

if.then.36:                                       ; preds = %land.lhs.true
  %26 = load i32*, i32** %libs.addr, align 8
  %tobool37 = icmp ne i32* %26, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.then.36
  %27 = load i32, i32* %pos2, align 4
  %28 = load i32, i32* %liberties, align 4
  %idxprom39 = sext i32 %28 to i64
  %29 = load i32*, i32** %libs.addr, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %29, i64 %idxprom39
  store i32 %27, i32* %arrayidx40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.then.36
  %30 = load i32, i32* %liberties, align 4
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, i32* %liberties, align 4
  %31 = load i32, i32* %liberties, align 4
  %32 = load i32, i32* %maxlib.addr, align 4
  %cmp43 = icmp sge i32 %31, %32
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  %33 = load i32, i32* %liberties, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.41
  %34 = load i32, i32* @liberty_mark, align 4
  %35 = load i32, i32* %pos2, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom47
  store i32 %34, i32* %arrayidx48, align 4
  br label %if.end.251

if.else.49:                                       ; preds = %land.lhs.true, %for.body
  %36 = load i32, i32* %pos2, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom50
  %37 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %37 to i32
  %38 = load i32, i32* %color.addr, align 4
  %cmp53 = icmp eq i32 %conv52, %38
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.230

land.lhs.true.55:                                 ; preds = %if.else.49
  %39 = load i32, i32* %pos2, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom56
  %40 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom58
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx59, i32 0, i32 7
  %41 = load i32, i32* %mark, align 4
  %42 = load i32, i32* @string_mark, align 4
  %cmp60 = icmp ne i32 %41, %42
  br i1 %cmp60, label %if.then.62, label %if.else.230

if.then.62:                                       ; preds = %land.lhs.true.55
  %43 = load i32, i32* %pos2, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom63
  %44 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom65
  store %struct.string_data* %arrayidx66, %struct.string_data** %s, align 8
  %45 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties67 = getelementptr inbounds %struct.string_data, %struct.string_data* %45, i32 0, i32 3
  %46 = load i32, i32* %liberties67, align 4
  %cmp68 = icmp sle i32 %46, 20
  br i1 %cmp68, label %if.then.73, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.then.62
  %47 = load i32, i32* %maxlib.addr, align 4
  %cmp71 = icmp sle i32 %47, 19
  br i1 %cmp71, label %if.then.73, label %if.else.107

if.then.73:                                       ; preds = %lor.lhs.false.70, %if.then.62
  store i32 0, i32* %l, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc, %if.then.73
  %48 = load i32, i32* %l, align 4
  %49 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties75 = getelementptr inbounds %struct.string_data, %struct.string_data* %49, i32 0, i32 3
  %50 = load i32, i32* %liberties75, align 4
  %cmp76 = icmp slt i32 %48, %50
  br i1 %cmp76, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.74
  %51 = load i32, i32* %l, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs80 = getelementptr inbounds %struct.string_data, %struct.string_data* %52, i32 0, i32 4
  %arrayidx81 = getelementptr inbounds [20 x i32], [20 x i32]* %libs80, i32 0, i64 %idxprom79
  %53 = load i32, i32* %arrayidx81, align 4
  store i32 %53, i32* %lib, align 4
  %54 = load i32, i32* %lib, align 4
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom82
  %55 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %55 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.105

land.lhs.true.87:                                 ; preds = %for.body.78
  %56 = load i32, i32* %lib, align 4
  %idxprom88 = sext i32 %56 to i64
  %arrayidx89 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom88
  %57 = load i32, i32* %arrayidx89, align 4
  %58 = load i32, i32* @liberty_mark, align 4
  %cmp90 = icmp ne i32 %57, %58
  br i1 %cmp90, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %land.lhs.true.87
  %59 = load i32*, i32** %libs.addr, align 8
  %tobool93 = icmp ne i32* %59, null
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.then.92
  %60 = load i32, i32* %lib, align 4
  %61 = load i32, i32* %liberties, align 4
  %idxprom95 = sext i32 %61 to i64
  %62 = load i32*, i32** %libs.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %62, i64 %idxprom95
  store i32 %60, i32* %arrayidx96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.then.92
  %63 = load i32, i32* %liberties, align 4
  %inc98 = add nsw i32 %63, 1
  store i32 %inc98, i32* %liberties, align 4
  %64 = load i32, i32* %liberties, align 4
  %65 = load i32, i32* %maxlib.addr, align 4
  %cmp99 = icmp sge i32 %64, %65
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  %66 = load i32, i32* %liberties, align 4
  store i32 %66, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.end.97
  %67 = load i32, i32* @liberty_mark, align 4
  %68 = load i32, i32* %lib, align 4
  %idxprom103 = sext i32 %68 to i64
  %arrayidx104 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom103
  store i32 %67, i32* %arrayidx104, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.102, %land.lhs.true.87, %for.body.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %69 = load i32, i32* %l, align 4
  %inc106 = add nsw i32 %69, 1
  store i32 %inc106, i32* %l, align 4
  br label %for.cond.74

for.end:                                          ; preds = %for.cond.74
  br label %if.end.224

if.else.107:                                      ; preds = %lor.lhs.false.70
  %70 = load i32, i32* %pos2, align 4
  store i32 %70, i32* %stone, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.107
  %71 = load i32, i32* %stone, align 4
  %add108 = add nsw i32 %71, 20
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom109
  %72 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %72 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.135

land.lhs.true.114:                                ; preds = %do.body
  %73 = load i32, i32* %stone, align 4
  %add115 = add nsw i32 %73, 20
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom116
  %74 = load i32, i32* %arrayidx117, align 4
  %75 = load i32, i32* @liberty_mark, align 4
  %cmp118 = icmp ne i32 %74, %75
  br i1 %cmp118, label %if.then.120, label %if.end.135

if.then.120:                                      ; preds = %land.lhs.true.114
  %76 = load i32*, i32** %libs.addr, align 8
  %tobool121 = icmp ne i32* %76, null
  br i1 %tobool121, label %if.then.122, label %if.end.126

if.then.122:                                      ; preds = %if.then.120
  %77 = load i32, i32* %stone, align 4
  %add123 = add nsw i32 %77, 20
  %78 = load i32, i32* %liberties, align 4
  %idxprom124 = sext i32 %78 to i64
  %79 = load i32*, i32** %libs.addr, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %79, i64 %idxprom124
  store i32 %add123, i32* %arrayidx125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.122, %if.then.120
  %80 = load i32, i32* %liberties, align 4
  %inc127 = add nsw i32 %80, 1
  store i32 %inc127, i32* %liberties, align 4
  %81 = load i32, i32* %liberties, align 4
  %82 = load i32, i32* %maxlib.addr, align 4
  %cmp128 = icmp sge i32 %81, %82
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.126
  %83 = load i32, i32* %liberties, align 4
  store i32 %83, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.126
  %84 = load i32, i32* @liberty_mark, align 4
  %85 = load i32, i32* %stone, align 4
  %add132 = add nsw i32 %85, 20
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom133
  store i32 %84, i32* %arrayidx134, align 4
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.131, %land.lhs.true.114, %do.body
  %86 = load i32, i32* %stone, align 4
  %sub136 = sub nsw i32 %86, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom137
  %87 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %87 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.163

land.lhs.true.142:                                ; preds = %if.end.135
  %88 = load i32, i32* %stone, align 4
  %sub143 = sub nsw i32 %88, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom144
  %89 = load i32, i32* %arrayidx145, align 4
  %90 = load i32, i32* @liberty_mark, align 4
  %cmp146 = icmp ne i32 %89, %90
  br i1 %cmp146, label %if.then.148, label %if.end.163

if.then.148:                                      ; preds = %land.lhs.true.142
  %91 = load i32*, i32** %libs.addr, align 8
  %tobool149 = icmp ne i32* %91, null
  br i1 %tobool149, label %if.then.150, label %if.end.154

if.then.150:                                      ; preds = %if.then.148
  %92 = load i32, i32* %stone, align 4
  %sub151 = sub nsw i32 %92, 1
  %93 = load i32, i32* %liberties, align 4
  %idxprom152 = sext i32 %93 to i64
  %94 = load i32*, i32** %libs.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %94, i64 %idxprom152
  store i32 %sub151, i32* %arrayidx153, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.150, %if.then.148
  %95 = load i32, i32* %liberties, align 4
  %inc155 = add nsw i32 %95, 1
  store i32 %inc155, i32* %liberties, align 4
  %96 = load i32, i32* %liberties, align 4
  %97 = load i32, i32* %maxlib.addr, align 4
  %cmp156 = icmp sge i32 %96, %97
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.154
  %98 = load i32, i32* %liberties, align 4
  store i32 %98, i32* %retval
  br label %return

if.end.159:                                       ; preds = %if.end.154
  %99 = load i32, i32* @liberty_mark, align 4
  %100 = load i32, i32* %stone, align 4
  %sub160 = sub nsw i32 %100, 1
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom161
  store i32 %99, i32* %arrayidx162, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.159, %land.lhs.true.142, %if.end.135
  %101 = load i32, i32* %stone, align 4
  %sub164 = sub nsw i32 %101, 20
  %idxprom165 = sext i32 %sub164 to i64
  %arrayidx166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom165
  %102 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %102 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.191

land.lhs.true.170:                                ; preds = %if.end.163
  %103 = load i32, i32* %stone, align 4
  %sub171 = sub nsw i32 %103, 20
  %idxprom172 = sext i32 %sub171 to i64
  %arrayidx173 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom172
  %104 = load i32, i32* %arrayidx173, align 4
  %105 = load i32, i32* @liberty_mark, align 4
  %cmp174 = icmp ne i32 %104, %105
  br i1 %cmp174, label %if.then.176, label %if.end.191

if.then.176:                                      ; preds = %land.lhs.true.170
  %106 = load i32*, i32** %libs.addr, align 8
  %tobool177 = icmp ne i32* %106, null
  br i1 %tobool177, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %if.then.176
  %107 = load i32, i32* %stone, align 4
  %sub179 = sub nsw i32 %107, 20
  %108 = load i32, i32* %liberties, align 4
  %idxprom180 = sext i32 %108 to i64
  %109 = load i32*, i32** %libs.addr, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %109, i64 %idxprom180
  store i32 %sub179, i32* %arrayidx181, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %if.then.176
  %110 = load i32, i32* %liberties, align 4
  %inc183 = add nsw i32 %110, 1
  store i32 %inc183, i32* %liberties, align 4
  %111 = load i32, i32* %liberties, align 4
  %112 = load i32, i32* %maxlib.addr, align 4
  %cmp184 = icmp sge i32 %111, %112
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.182
  %113 = load i32, i32* %liberties, align 4
  store i32 %113, i32* %retval
  br label %return

if.end.187:                                       ; preds = %if.end.182
  %114 = load i32, i32* @liberty_mark, align 4
  %115 = load i32, i32* %stone, align 4
  %sub188 = sub nsw i32 %115, 20
  %idxprom189 = sext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom189
  store i32 %114, i32* %arrayidx190, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.187, %land.lhs.true.170, %if.end.163
  %116 = load i32, i32* %stone, align 4
  %add192 = add nsw i32 %116, 1
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom193
  %117 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %117 to i32
  %cmp196 = icmp eq i32 %conv195, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.219

land.lhs.true.198:                                ; preds = %if.end.191
  %118 = load i32, i32* %stone, align 4
  %add199 = add nsw i32 %118, 1
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom200
  %119 = load i32, i32* %arrayidx201, align 4
  %120 = load i32, i32* @liberty_mark, align 4
  %cmp202 = icmp ne i32 %119, %120
  br i1 %cmp202, label %if.then.204, label %if.end.219

if.then.204:                                      ; preds = %land.lhs.true.198
  %121 = load i32*, i32** %libs.addr, align 8
  %tobool205 = icmp ne i32* %121, null
  br i1 %tobool205, label %if.then.206, label %if.end.210

if.then.206:                                      ; preds = %if.then.204
  %122 = load i32, i32* %stone, align 4
  %add207 = add nsw i32 %122, 1
  %123 = load i32, i32* %liberties, align 4
  %idxprom208 = sext i32 %123 to i64
  %124 = load i32*, i32** %libs.addr, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %124, i64 %idxprom208
  store i32 %add207, i32* %arrayidx209, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.206, %if.then.204
  %125 = load i32, i32* %liberties, align 4
  %inc211 = add nsw i32 %125, 1
  store i32 %inc211, i32* %liberties, align 4
  %126 = load i32, i32* %liberties, align 4
  %127 = load i32, i32* %maxlib.addr, align 4
  %cmp212 = icmp sge i32 %126, %127
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %if.end.210
  %128 = load i32, i32* %liberties, align 4
  store i32 %128, i32* %retval
  br label %return

if.end.215:                                       ; preds = %if.end.210
  %129 = load i32, i32* @liberty_mark, align 4
  %130 = load i32, i32* %stone, align 4
  %add216 = add nsw i32 %130, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom217
  store i32 %129, i32* %arrayidx218, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.215, %land.lhs.true.198, %if.end.191
  %131 = load i32, i32* %stone, align 4
  %idxprom220 = sext i32 %131 to i64
  %arrayidx221 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom220
  %132 = load i32, i32* %arrayidx221, align 4
  store i32 %132, i32* %stone, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.219
  %133 = load i32, i32* %stone, align 4
  %134 = load i32, i32* %pos2, align 4
  %cmp222 = icmp ne i32 %133, %134
  br i1 %cmp222, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.224

if.end.224:                                       ; preds = %do.end, %for.end
  %135 = load i32, i32* @string_mark, align 4
  %136 = load i32, i32* %pos2, align 4
  %idxprom225 = sext i32 %136 to i64
  %arrayidx226 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom225
  %137 = load i32, i32* %arrayidx226, align 4
  %idxprom227 = sext i32 %137 to i64
  %arrayidx228 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom227
  %mark229 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx228, i32 0, i32 7
  store i32 %135, i32* %mark229, align 4
  br label %if.end.250

if.else.230:                                      ; preds = %land.lhs.true.55, %if.else.49
  %138 = load i32, i32* %pos2, align 4
  %idxprom231 = sext i32 %138 to i64
  %arrayidx232 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom231
  %139 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %139 to i32
  %140 = load i32, i32* %color.addr, align 4
  %sub234 = sub nsw i32 3, %140
  %cmp235 = icmp eq i32 %conv233, %sub234
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.249

land.lhs.true.237:                                ; preds = %if.else.230
  %141 = load i32, i32* %pos2, align 4
  %idxprom238 = sext i32 %141 to i64
  %arrayidx239 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom238
  %142 = load i32, i32* %arrayidx239, align 4
  %idxprom240 = sext i32 %142 to i64
  %arrayidx241 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom240
  %liberties242 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx241, i32 0, i32 3
  %143 = load i32, i32* %liberties242, align 4
  %cmp243 = icmp eq i32 %143, 1
  br i1 %cmp243, label %if.then.245, label %if.end.249

if.then.245:                                      ; preds = %land.lhs.true.237
  %144 = load i32, i32* %pos2, align 4
  %145 = load i32, i32* %captures, align 4
  %inc246 = add nsw i32 %145, 1
  store i32 %inc246, i32* %captures, align 4
  %idxprom247 = sext i32 %145 to i64
  %arrayidx248 = getelementptr inbounds [4 x i32], [4 x i32]* %captured, i32 0, i64 %idxprom247
  store i32 %144, i32* %arrayidx248, align 4
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.245, %land.lhs.true.237, %if.else.230
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.224
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.46
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %146 = load i32, i32* %k, align 4
  %inc253 = add nsw i32 %146, 1
  store i32 %inc253, i32* %k, align 4
  br label %for.cond

for.end.254:                                      ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.441, %for.end.254
  %147 = load i32, i32* %k, align 4
  %148 = load i32, i32* %captures, align 4
  %cmp256 = icmp slt i32 %147, %148
  br i1 %cmp256, label %for.body.258, label %for.end.443

for.body.258:                                     ; preds = %for.cond.255
  %149 = load i32, i32* %k, align 4
  %idxprom259 = sext i32 %149 to i64
  %arrayidx260 = getelementptr inbounds [4 x i32], [4 x i32]* %captured, i32 0, i64 %idxprom259
  %150 = load i32, i32* %arrayidx260, align 4
  store i32 %150, i32* %lib, align 4
  %151 = load i32, i32* %lib, align 4
  %add261 = add nsw i32 %151, 20
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom262
  %152 = load i8, i8* %arrayidx263, align 1
  %conv264 = zext i8 %152 to i32
  %153 = load i32, i32* %color.addr, align 4
  %cmp265 = icmp eq i32 %conv264, %153
  br i1 %cmp265, label %land.lhs.true.267, label %land.lhs.true.276

land.lhs.true.267:                                ; preds = %for.body.258
  %154 = load i32, i32* %lib, align 4
  %add268 = add nsw i32 %154, 20
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom269
  %155 = load i32, i32* %arrayidx270, align 4
  %idxprom271 = sext i32 %155 to i64
  %arrayidx272 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom271
  %mark273 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx272, i32 0, i32 7
  %156 = load i32, i32* %mark273, align 4
  %157 = load i32, i32* @string_mark, align 4
  %cmp274 = icmp eq i32 %156, %157
  br i1 %cmp274, label %if.end.335, label %land.lhs.true.276

land.lhs.true.276:                                ; preds = %land.lhs.true.267, %for.body.258
  %158 = load i32, i32* %lib, align 4
  %sub277 = sub nsw i32 %158, 1
  %idxprom278 = sext i32 %sub277 to i64
  %arrayidx279 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom278
  %159 = load i8, i8* %arrayidx279, align 1
  %conv280 = zext i8 %159 to i32
  %160 = load i32, i32* %color.addr, align 4
  %cmp281 = icmp eq i32 %conv280, %160
  br i1 %cmp281, label %land.lhs.true.283, label %land.lhs.true.292

land.lhs.true.283:                                ; preds = %land.lhs.true.276
  %161 = load i32, i32* %lib, align 4
  %sub284 = sub nsw i32 %161, 1
  %idxprom285 = sext i32 %sub284 to i64
  %arrayidx286 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom285
  %162 = load i32, i32* %arrayidx286, align 4
  %idxprom287 = sext i32 %162 to i64
  %arrayidx288 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom287
  %mark289 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx288, i32 0, i32 7
  %163 = load i32, i32* %mark289, align 4
  %164 = load i32, i32* @string_mark, align 4
  %cmp290 = icmp eq i32 %163, %164
  br i1 %cmp290, label %if.end.335, label %land.lhs.true.292

land.lhs.true.292:                                ; preds = %land.lhs.true.283, %land.lhs.true.276
  %165 = load i32, i32* %lib, align 4
  %sub293 = sub nsw i32 %165, 20
  %idxprom294 = sext i32 %sub293 to i64
  %arrayidx295 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom294
  %166 = load i8, i8* %arrayidx295, align 1
  %conv296 = zext i8 %166 to i32
  %167 = load i32, i32* %color.addr, align 4
  %cmp297 = icmp eq i32 %conv296, %167
  br i1 %cmp297, label %land.lhs.true.299, label %land.lhs.true.308

land.lhs.true.299:                                ; preds = %land.lhs.true.292
  %168 = load i32, i32* %lib, align 4
  %sub300 = sub nsw i32 %168, 20
  %idxprom301 = sext i32 %sub300 to i64
  %arrayidx302 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom301
  %169 = load i32, i32* %arrayidx302, align 4
  %idxprom303 = sext i32 %169 to i64
  %arrayidx304 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom303
  %mark305 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx304, i32 0, i32 7
  %170 = load i32, i32* %mark305, align 4
  %171 = load i32, i32* @string_mark, align 4
  %cmp306 = icmp eq i32 %170, %171
  br i1 %cmp306, label %if.end.335, label %land.lhs.true.308

land.lhs.true.308:                                ; preds = %land.lhs.true.299, %land.lhs.true.292
  %172 = load i32, i32* %lib, align 4
  %add309 = add nsw i32 %172, 1
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom310
  %173 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %173 to i32
  %174 = load i32, i32* %color.addr, align 4
  %cmp313 = icmp eq i32 %conv312, %174
  br i1 %cmp313, label %land.lhs.true.315, label %if.then.324

land.lhs.true.315:                                ; preds = %land.lhs.true.308
  %175 = load i32, i32* %lib, align 4
  %add316 = add nsw i32 %175, 1
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom317
  %176 = load i32, i32* %arrayidx318, align 4
  %idxprom319 = sext i32 %176 to i64
  %arrayidx320 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom319
  %mark321 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx320, i32 0, i32 7
  %177 = load i32, i32* %mark321, align 4
  %178 = load i32, i32* @string_mark, align 4
  %cmp322 = icmp eq i32 %177, %178
  br i1 %cmp322, label %if.end.335, label %if.then.324

if.then.324:                                      ; preds = %land.lhs.true.315, %land.lhs.true.308
  %179 = load i32*, i32** %libs.addr, align 8
  %tobool325 = icmp ne i32* %179, null
  br i1 %tobool325, label %if.then.326, label %if.end.329

if.then.326:                                      ; preds = %if.then.324
  %180 = load i32, i32* %lib, align 4
  %181 = load i32, i32* %liberties, align 4
  %idxprom327 = sext i32 %181 to i64
  %182 = load i32*, i32** %libs.addr, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %182, i64 %idxprom327
  store i32 %180, i32* %arrayidx328, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.326, %if.then.324
  %183 = load i32, i32* %liberties, align 4
  %inc330 = add nsw i32 %183, 1
  store i32 %inc330, i32* %liberties, align 4
  %184 = load i32, i32* %liberties, align 4
  %185 = load i32, i32* %maxlib.addr, align 4
  %cmp331 = icmp sge i32 %184, %185
  br i1 %cmp331, label %if.then.333, label %if.end.334

if.then.333:                                      ; preds = %if.end.329
  %186 = load i32, i32* %liberties, align 4
  store i32 %186, i32* %retval
  br label %return

if.end.334:                                       ; preds = %if.end.329
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %land.lhs.true.315, %land.lhs.true.299, %land.lhs.true.283, %land.lhs.true.267
  store i32 0, i32* %l, align 4
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.350, %if.end.335
  %187 = load i32, i32* %l, align 4
  %188 = load i32, i32* %k, align 4
  %cmp337 = icmp slt i32 %187, %188
  br i1 %cmp337, label %for.body.339, label %for.end.352

for.body.339:                                     ; preds = %for.cond.336
  %189 = load i32, i32* %l, align 4
  %idxprom340 = sext i32 %189 to i64
  %arrayidx341 = getelementptr inbounds [4 x i32], [4 x i32]* %captured, i32 0, i64 %idxprom340
  %190 = load i32, i32* %arrayidx341, align 4
  %idxprom342 = sext i32 %190 to i64
  %arrayidx343 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom342
  %191 = load i32, i32* %arrayidx343, align 4
  %192 = load i32, i32* %lib, align 4
  %idxprom344 = sext i32 %192 to i64
  %arrayidx345 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom344
  %193 = load i32, i32* %arrayidx345, align 4
  %cmp346 = icmp eq i32 %191, %193
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %for.body.339
  br label %for.end.352

if.end.349:                                       ; preds = %for.body.339
  br label %for.inc.350

for.inc.350:                                      ; preds = %if.end.349
  %194 = load i32, i32* %l, align 4
  %inc351 = add nsw i32 %194, 1
  store i32 %inc351, i32* %l, align 4
  br label %for.cond.336

for.end.352:                                      ; preds = %if.then.348, %for.cond.336
  %195 = load i32, i32* %l, align 4
  %196 = load i32, i32* %k, align 4
  %cmp353 = icmp eq i32 %195, %196
  br i1 %cmp353, label %if.then.355, label %if.end.440

if.then.355:                                      ; preds = %for.end.352
  br label %do.body.356

do.body.356:                                      ; preds = %do.cond.434, %if.then.355
  %197 = load i32, i32* %lib, align 4
  %add357 = add nsw i32 %197, 20
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom358
  %198 = load i8, i8* %arrayidx359, align 1
  %conv360 = zext i8 %198 to i32
  %199 = load i32, i32* %color.addr, align 4
  %cmp361 = icmp eq i32 %conv360, %199
  br i1 %cmp361, label %land.lhs.true.363, label %lor.lhs.false.372

land.lhs.true.363:                                ; preds = %do.body.356
  %200 = load i32, i32* %lib, align 4
  %add364 = add nsw i32 %200, 20
  %idxprom365 = sext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom365
  %201 = load i32, i32* %arrayidx366, align 4
  %idxprom367 = sext i32 %201 to i64
  %arrayidx368 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom367
  %mark369 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx368, i32 0, i32 7
  %202 = load i32, i32* %mark369, align 4
  %203 = load i32, i32* @string_mark, align 4
  %cmp370 = icmp eq i32 %202, %203
  br i1 %cmp370, label %if.then.420, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %land.lhs.true.363, %do.body.356
  %204 = load i32, i32* %lib, align 4
  %sub373 = sub nsw i32 %204, 1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom374
  %205 = load i8, i8* %arrayidx375, align 1
  %conv376 = zext i8 %205 to i32
  %206 = load i32, i32* %color.addr, align 4
  %cmp377 = icmp eq i32 %conv376, %206
  br i1 %cmp377, label %land.lhs.true.379, label %lor.lhs.false.388

land.lhs.true.379:                                ; preds = %lor.lhs.false.372
  %207 = load i32, i32* %lib, align 4
  %sub380 = sub nsw i32 %207, 1
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom381
  %208 = load i32, i32* %arrayidx382, align 4
  %idxprom383 = sext i32 %208 to i64
  %arrayidx384 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom383
  %mark385 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx384, i32 0, i32 7
  %209 = load i32, i32* %mark385, align 4
  %210 = load i32, i32* @string_mark, align 4
  %cmp386 = icmp eq i32 %209, %210
  br i1 %cmp386, label %if.then.420, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %land.lhs.true.379, %lor.lhs.false.372
  %211 = load i32, i32* %lib, align 4
  %sub389 = sub nsw i32 %211, 20
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom390
  %212 = load i8, i8* %arrayidx391, align 1
  %conv392 = zext i8 %212 to i32
  %213 = load i32, i32* %color.addr, align 4
  %cmp393 = icmp eq i32 %conv392, %213
  br i1 %cmp393, label %land.lhs.true.395, label %lor.lhs.false.404

land.lhs.true.395:                                ; preds = %lor.lhs.false.388
  %214 = load i32, i32* %lib, align 4
  %sub396 = sub nsw i32 %214, 20
  %idxprom397 = sext i32 %sub396 to i64
  %arrayidx398 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom397
  %215 = load i32, i32* %arrayidx398, align 4
  %idxprom399 = sext i32 %215 to i64
  %arrayidx400 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom399
  %mark401 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx400, i32 0, i32 7
  %216 = load i32, i32* %mark401, align 4
  %217 = load i32, i32* @string_mark, align 4
  %cmp402 = icmp eq i32 %216, %217
  br i1 %cmp402, label %if.then.420, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %land.lhs.true.395, %lor.lhs.false.388
  %218 = load i32, i32* %lib, align 4
  %add405 = add nsw i32 %218, 1
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom406
  %219 = load i8, i8* %arrayidx407, align 1
  %conv408 = zext i8 %219 to i32
  %220 = load i32, i32* %color.addr, align 4
  %cmp409 = icmp eq i32 %conv408, %220
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.431

land.lhs.true.411:                                ; preds = %lor.lhs.false.404
  %221 = load i32, i32* %lib, align 4
  %add412 = add nsw i32 %221, 1
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom413
  %222 = load i32, i32* %arrayidx414, align 4
  %idxprom415 = sext i32 %222 to i64
  %arrayidx416 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom415
  %mark417 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx416, i32 0, i32 7
  %223 = load i32, i32* %mark417, align 4
  %224 = load i32, i32* @string_mark, align 4
  %cmp418 = icmp eq i32 %223, %224
  br i1 %cmp418, label %if.then.420, label %if.end.431

if.then.420:                                      ; preds = %land.lhs.true.411, %land.lhs.true.395, %land.lhs.true.379, %land.lhs.true.363
  %225 = load i32*, i32** %libs.addr, align 8
  %tobool421 = icmp ne i32* %225, null
  br i1 %tobool421, label %if.then.422, label %if.end.425

if.then.422:                                      ; preds = %if.then.420
  %226 = load i32, i32* %lib, align 4
  %227 = load i32, i32* %liberties, align 4
  %idxprom423 = sext i32 %227 to i64
  %228 = load i32*, i32** %libs.addr, align 8
  %arrayidx424 = getelementptr inbounds i32, i32* %228, i64 %idxprom423
  store i32 %226, i32* %arrayidx424, align 4
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.422, %if.then.420
  %229 = load i32, i32* %liberties, align 4
  %inc426 = add nsw i32 %229, 1
  store i32 %inc426, i32* %liberties, align 4
  %230 = load i32, i32* %liberties, align 4
  %231 = load i32, i32* %maxlib.addr, align 4
  %cmp427 = icmp sge i32 %230, %231
  br i1 %cmp427, label %if.then.429, label %if.end.430

if.then.429:                                      ; preds = %if.end.425
  %232 = load i32, i32* %liberties, align 4
  store i32 %232, i32* %retval
  br label %return

if.end.430:                                       ; preds = %if.end.425
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %land.lhs.true.411, %lor.lhs.false.404
  %233 = load i32, i32* %lib, align 4
  %idxprom432 = sext i32 %233 to i64
  %arrayidx433 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom432
  %234 = load i32, i32* %arrayidx433, align 4
  store i32 %234, i32* %lib, align 4
  br label %do.cond.434

do.cond.434:                                      ; preds = %if.end.431
  %235 = load i32, i32* %lib, align 4
  %236 = load i32, i32* %k, align 4
  %idxprom435 = sext i32 %236 to i64
  %arrayidx436 = getelementptr inbounds [4 x i32], [4 x i32]* %captured, i32 0, i64 %idxprom435
  %237 = load i32, i32* %arrayidx436, align 4
  %cmp437 = icmp ne i32 %235, %237
  br i1 %cmp437, label %do.body.356, label %do.end.439

do.end.439:                                       ; preds = %do.cond.434
  br label %if.end.440

if.end.440:                                       ; preds = %do.end.439, %for.end.352
  br label %for.inc.441

for.inc.441:                                      ; preds = %if.end.440
  %238 = load i32, i32* %k, align 4
  %inc442 = add nsw i32 %238, 1
  store i32 %inc442, i32* %k, align 4
  br label %for.cond.255

for.end.443:                                      ; preds = %for.cond.255
  %239 = load i32, i32* %liberties, align 4
  store i32 %239, i32* %retval
  br label %return

return:                                           ; preds = %for.end.443, %if.then.429, %if.then.333, %if.then.214, %if.then.186, %if.then.158, %if.then.130, %if.then.101, %if.then.45, %if.then.17
  %240 = load i32, i32* %retval
  ret i32 %240
}

; Function Attrs: nounwind uwtable
define i32 @find_common_libs(i32 %str1, i32 %str2, i32 %maxlib, i32* %libs) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %maxlib.addr = alloca i32, align 4
  %libs.addr = alloca i32*, align 8
  %all_libs1 = alloca [241 x i32], align 16
  %libs1 = alloca i32*, align 8
  %liberties1 = alloca i32, align 4
  %liberties2 = alloca i32, align 4
  %commonlibs = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32 %maxlib, i32* %maxlib.addr, align 4
  store i32* %libs, i32** %libs.addr, align 8
  store i32 0, i32* %commonlibs, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1981, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1982, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %str1.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.35

if.else.30:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* %str1.addr, align 4
  %div31 = sdiv i32 %14, 20
  %sub32 = sub nsw i32 %div31, 1
  %15 = load i32, i32* %str1.addr, align 4
  %rem33 = srem i32 %15, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1983, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %str2.addr, align 4
  %idxprom36 = sext i32 %16 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %17 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %18 = load i32, i32* %str2.addr, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %if.end.53

if.else.48:                                       ; preds = %lor.lhs.false.41
  %20 = load i32, i32* %str2.addr, align 4
  %div49 = sdiv i32 %20, 20
  %sub50 = sub nsw i32 %div49, 1
  %21 = load i32, i32* %str2.addr, align 4
  %rem51 = srem i32 %21, 20
  %sub52 = sub nsw i32 %rem51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1984, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %sub50, i32 %sub52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.47
  %22 = load i32*, i32** %libs.addr, align 8
  %cmp54 = icmp ne i32* %22, null
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.53
  br label %if.end.62

if.else.57:                                       ; preds = %if.end.53
  %23 = load i32, i32* %str1.addr, align 4
  %div58 = sdiv i32 %23, 20
  %sub59 = sub nsw i32 %div58, 1
  %24 = load i32, i32* %str1.addr, align 4
  %rem60 = srem i32 %24, 20
  %sub61 = sub nsw i32 %rem60, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1985, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 %sub59, i32 %sub61)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.56
  %25 = load i32, i32* %str1.addr, align 4
  %idxprom63 = sext i32 %25 to i64
  %arrayidx64 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom63
  %26 = load i32, i32* %arrayidx64, align 4
  store i32 %26, i32* %n, align 4
  %27 = load i32, i32* %n, align 4
  %idxprom65 = sext i32 %27 to i64
  %arrayidx66 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom65
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx66, i32 0, i32 3
  %28 = load i32, i32* %liberties, align 4
  store i32 %28, i32* %liberties1, align 4
  %29 = load i32, i32* %liberties1, align 4
  %30 = load i32, i32* %str2.addr, align 4
  %idxprom67 = sext i32 %30 to i64
  %arrayidx68 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom67
  %31 = load i32, i32* %arrayidx68, align 4
  %idxprom69 = sext i32 %31 to i64
  %arrayidx70 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom69
  %liberties71 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx70, i32 0, i32 3
  %32 = load i32, i32* %liberties71, align 4
  %cmp72 = icmp sgt i32 %29, %32
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %if.end.62
  %33 = load i32, i32* %str2.addr, align 4
  %idxprom75 = sext i32 %33 to i64
  %arrayidx76 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom75
  %34 = load i32, i32* %arrayidx76, align 4
  store i32 %34, i32* %n, align 4
  %35 = load i32, i32* %n, align 4
  %idxprom77 = sext i32 %35 to i64
  %arrayidx78 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom77
  %liberties79 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx78, i32 0, i32 3
  %36 = load i32, i32* %liberties79, align 4
  store i32 %36, i32* %liberties1, align 4
  %37 = load i32, i32* %str1.addr, align 4
  store i32 %37, i32* %tmp, align 4
  %38 = load i32, i32* %str2.addr, align 4
  store i32 %38, i32* %str1.addr, align 4
  %39 = load i32, i32* %tmp, align 4
  store i32 %39, i32* %str2.addr, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %if.end.62
  %40 = load i32, i32* %liberties1, align 4
  %cmp81 = icmp sle i32 %40, 20
  br i1 %cmp81, label %if.then.83, label %if.else.139

if.then.83:                                       ; preds = %if.end.80
  %41 = load i32, i32* %n, align 4
  %idxprom84 = sext i32 %41 to i64
  %arrayidx85 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom84
  %libs86 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx85, i32 0, i32 4
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %libs86, i32 0, i32 0
  store i32* %arraydecay, i32** %libs1, align 8
  %42 = load i32, i32* %str2.addr, align 4
  %idxprom87 = sext i32 %42 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom87
  %43 = load i32, i32* %arrayidx88, align 4
  store i32 %43, i32* %n, align 4
  %44 = load i32, i32* %n, align 4
  %idxprom89 = sext i32 %44 to i64
  %arrayidx90 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom89
  %liberties91 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx90, i32 0, i32 3
  %45 = load i32, i32* %liberties91, align 4
  store i32 %45, i32* %liberties2, align 4
  %46 = load i32, i32* %liberties2, align 4
  %cmp92 = icmp sle i32 %46, 20
  br i1 %cmp92, label %if.then.94, label %if.end.138

if.then.94:                                       ; preds = %if.then.83
  %47 = load i32, i32* @liberty_mark, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @liberty_mark, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.94
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %liberties1, align 4
  %cmp95 = icmp slt i32 %48, %49
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* @liberty_mark, align 4
  %51 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %51 to i64
  %52 = load i32*, i32** %libs1, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %52, i64 %idxprom97
  %53 = load i32, i32* %arrayidx98, align 4
  %idxprom99 = sext i32 %53 to i64
  %arrayidx100 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom99
  store i32 %50, i32* %arrayidx100, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %54, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %n, align 4
  %idxprom102 = sext i32 %55 to i64
  %arrayidx103 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom102
  %libs104 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx103, i32 0, i32 4
  %arraydecay105 = getelementptr inbounds [20 x i32], [20 x i32]* %libs104, i32 0, i32 0
  store i32* %arraydecay105, i32** %libs1, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.135, %for.end
  %56 = load i32, i32* %k, align 4
  %57 = load i32, i32* %liberties2, align 4
  %cmp107 = icmp slt i32 %56, %57
  br i1 %cmp107, label %for.body.109, label %for.end.137

for.body.109:                                     ; preds = %for.cond.106
  %58 = load i32, i32* %k, align 4
  %idxprom110 = sext i32 %58 to i64
  %59 = load i32*, i32** %libs1, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %59, i64 %idxprom110
  %60 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %60 to i64
  %arrayidx113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom112
  %61 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %61 to i32
  %cmp115 = icmp eq i32 %conv114, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.then.124

land.lhs.true.117:                                ; preds = %for.body.109
  %62 = load i32, i32* %k, align 4
  %idxprom118 = sext i32 %62 to i64
  %63 = load i32*, i32** %libs1, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %63, i64 %idxprom118
  %64 = load i32, i32* %arrayidx119, align 4
  %idxprom120 = sext i32 %64 to i64
  %arrayidx121 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom120
  %65 = load i32, i32* %arrayidx121, align 4
  %66 = load i32, i32* @liberty_mark, align 4
  %cmp122 = icmp ne i32 %65, %66
  br i1 %cmp122, label %if.end.134, label %if.then.124

if.then.124:                                      ; preds = %land.lhs.true.117, %for.body.109
  %67 = load i32, i32* %commonlibs, align 4
  %68 = load i32, i32* %maxlib.addr, align 4
  %cmp125 = icmp slt i32 %67, %68
  br i1 %cmp125, label %if.then.127, label %if.end.132

if.then.127:                                      ; preds = %if.then.124
  %69 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %69 to i64
  %70 = load i32*, i32** %libs1, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %70, i64 %idxprom128
  %71 = load i32, i32* %arrayidx129, align 4
  %72 = load i32, i32* %commonlibs, align 4
  %idxprom130 = sext i32 %72 to i64
  %73 = load i32*, i32** %libs.addr, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %73, i64 %idxprom130
  store i32 %71, i32* %arrayidx131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.127, %if.then.124
  %74 = load i32, i32* %commonlibs, align 4
  %inc133 = add nsw i32 %74, 1
  store i32 %inc133, i32* %commonlibs, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.132, %land.lhs.true.117
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %75 = load i32, i32* %k, align 4
  %inc136 = add nsw i32 %75, 1
  store i32 %inc136, i32* %k, align 4
  br label %for.cond.106

for.end.137:                                      ; preds = %for.cond.106
  %76 = load i32, i32* %commonlibs, align 4
  store i32 %76, i32* %retval
  br label %return

if.end.138:                                       ; preds = %if.then.83
  br label %if.end.142

if.else.139:                                      ; preds = %if.end.80
  %77 = load i32, i32* %str1.addr, align 4
  %arraydecay140 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  %call = call i32 @findlib(i32 %77, i32 241, i32* %arraydecay140)
  %arraydecay141 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  store i32* %arraydecay141, i32** %libs1, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.139, %if.end.138
  store i32 0, i32* %k, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.244, %if.end.142
  %78 = load i32, i32* %k, align 4
  %79 = load i32, i32* %liberties1, align 4
  %cmp144 = icmp slt i32 %78, %79
  br i1 %cmp144, label %for.body.146, label %for.end.246

for.body.146:                                     ; preds = %for.cond.143
  %80 = load i32, i32* %k, align 4
  %idxprom147 = sext i32 %80 to i64
  %81 = load i32*, i32** %libs1, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %81, i64 %idxprom147
  %82 = load i32, i32* %arrayidx148, align 4
  %add = add nsw i32 %82, 20
  %idxprom149 = sext i32 %add to i64
  %arrayidx150 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom149
  %83 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %83 to i32
  %84 = load i32, i32* %str2.addr, align 4
  %idxprom152 = sext i32 %84 to i64
  %arrayidx153 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom152
  %85 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %85 to i32
  %cmp155 = icmp eq i32 %conv151, %conv154
  br i1 %cmp155, label %land.lhs.true.157, label %lor.lhs.false.167

land.lhs.true.157:                                ; preds = %for.body.146
  %86 = load i32, i32* %k, align 4
  %idxprom158 = sext i32 %86 to i64
  %87 = load i32*, i32** %libs1, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %87, i64 %idxprom158
  %88 = load i32, i32* %arrayidx159, align 4
  %add160 = add nsw i32 %88, 20
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom161
  %89 = load i32, i32* %arrayidx162, align 4
  %90 = load i32, i32* %str2.addr, align 4
  %idxprom163 = sext i32 %90 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom163
  %91 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp eq i32 %89, %91
  br i1 %cmp165, label %if.then.233, label %lor.lhs.false.167

lor.lhs.false.167:                                ; preds = %land.lhs.true.157, %for.body.146
  %92 = load i32, i32* %k, align 4
  %idxprom168 = sext i32 %92 to i64
  %93 = load i32*, i32** %libs1, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %93, i64 %idxprom168
  %94 = load i32, i32* %arrayidx169, align 4
  %sub170 = sub nsw i32 %94, 1
  %idxprom171 = sext i32 %sub170 to i64
  %arrayidx172 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom171
  %95 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %95 to i32
  %96 = load i32, i32* %str2.addr, align 4
  %idxprom174 = sext i32 %96 to i64
  %arrayidx175 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom174
  %97 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %97 to i32
  %cmp177 = icmp eq i32 %conv173, %conv176
  br i1 %cmp177, label %land.lhs.true.179, label %lor.lhs.false.189

land.lhs.true.179:                                ; preds = %lor.lhs.false.167
  %98 = load i32, i32* %k, align 4
  %idxprom180 = sext i32 %98 to i64
  %99 = load i32*, i32** %libs1, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %99, i64 %idxprom180
  %100 = load i32, i32* %arrayidx181, align 4
  %sub182 = sub nsw i32 %100, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom183
  %101 = load i32, i32* %arrayidx184, align 4
  %102 = load i32, i32* %str2.addr, align 4
  %idxprom185 = sext i32 %102 to i64
  %arrayidx186 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom185
  %103 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp eq i32 %101, %103
  br i1 %cmp187, label %if.then.233, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %land.lhs.true.179, %lor.lhs.false.167
  %104 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %104 to i64
  %105 = load i32*, i32** %libs1, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %105, i64 %idxprom190
  %106 = load i32, i32* %arrayidx191, align 4
  %sub192 = sub nsw i32 %106, 20
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom193
  %107 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %107 to i32
  %108 = load i32, i32* %str2.addr, align 4
  %idxprom196 = sext i32 %108 to i64
  %arrayidx197 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom196
  %109 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %109 to i32
  %cmp199 = icmp eq i32 %conv195, %conv198
  br i1 %cmp199, label %land.lhs.true.201, label %lor.lhs.false.211

land.lhs.true.201:                                ; preds = %lor.lhs.false.189
  %110 = load i32, i32* %k, align 4
  %idxprom202 = sext i32 %110 to i64
  %111 = load i32*, i32** %libs1, align 8
  %arrayidx203 = getelementptr inbounds i32, i32* %111, i64 %idxprom202
  %112 = load i32, i32* %arrayidx203, align 4
  %sub204 = sub nsw i32 %112, 20
  %idxprom205 = sext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom205
  %113 = load i32, i32* %arrayidx206, align 4
  %114 = load i32, i32* %str2.addr, align 4
  %idxprom207 = sext i32 %114 to i64
  %arrayidx208 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom207
  %115 = load i32, i32* %arrayidx208, align 4
  %cmp209 = icmp eq i32 %113, %115
  br i1 %cmp209, label %if.then.233, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %land.lhs.true.201, %lor.lhs.false.189
  %116 = load i32, i32* %k, align 4
  %idxprom212 = sext i32 %116 to i64
  %117 = load i32*, i32** %libs1, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %117, i64 %idxprom212
  %118 = load i32, i32* %arrayidx213, align 4
  %add214 = add nsw i32 %118, 1
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom215
  %119 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %119 to i32
  %120 = load i32, i32* %str2.addr, align 4
  %idxprom218 = sext i32 %120 to i64
  %arrayidx219 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom218
  %121 = load i8, i8* %arrayidx219, align 1
  %conv220 = zext i8 %121 to i32
  %cmp221 = icmp eq i32 %conv217, %conv220
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.243

land.lhs.true.223:                                ; preds = %lor.lhs.false.211
  %122 = load i32, i32* %k, align 4
  %idxprom224 = sext i32 %122 to i64
  %123 = load i32*, i32** %libs1, align 8
  %arrayidx225 = getelementptr inbounds i32, i32* %123, i64 %idxprom224
  %124 = load i32, i32* %arrayidx225, align 4
  %add226 = add nsw i32 %124, 1
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom227
  %125 = load i32, i32* %arrayidx228, align 4
  %126 = load i32, i32* %str2.addr, align 4
  %idxprom229 = sext i32 %126 to i64
  %arrayidx230 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom229
  %127 = load i32, i32* %arrayidx230, align 4
  %cmp231 = icmp eq i32 %125, %127
  br i1 %cmp231, label %if.then.233, label %if.end.243

if.then.233:                                      ; preds = %land.lhs.true.223, %land.lhs.true.201, %land.lhs.true.179, %land.lhs.true.157
  %128 = load i32, i32* %commonlibs, align 4
  %129 = load i32, i32* %maxlib.addr, align 4
  %cmp234 = icmp slt i32 %128, %129
  br i1 %cmp234, label %if.then.236, label %if.end.241

if.then.236:                                      ; preds = %if.then.233
  %130 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %130 to i64
  %131 = load i32*, i32** %libs1, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %131, i64 %idxprom237
  %132 = load i32, i32* %arrayidx238, align 4
  %133 = load i32, i32* %commonlibs, align 4
  %idxprom239 = sext i32 %133 to i64
  %134 = load i32*, i32** %libs.addr, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %134, i64 %idxprom239
  store i32 %132, i32* %arrayidx240, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.236, %if.then.233
  %135 = load i32, i32* %commonlibs, align 4
  %inc242 = add nsw i32 %135, 1
  store i32 %inc242, i32* %commonlibs, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.241, %land.lhs.true.223, %lor.lhs.false.211
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.243
  %136 = load i32, i32* %k, align 4
  %inc245 = add nsw i32 %136, 1
  store i32 %inc245, i32* %k, align 4
  br label %for.cond.143

for.end.246:                                      ; preds = %for.cond.143
  %137 = load i32, i32* %commonlibs, align 4
  store i32 %137, i32* %retval
  br label %return

return:                                           ; preds = %for.end.246, %for.end.137
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define i32 @have_common_lib(i32 %str1, i32 %str2, i32* %lib) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %lib.addr = alloca i32*, align 8
  %all_libs1 = alloca [241 x i32], align 16
  %libs1 = alloca i32*, align 8
  %liberties1 = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  store i32* %lib, i32** %lib.addr, align 8
  %0 = load i32, i32* %str1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2049, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2050, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %str1.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.35

if.else.30:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* %str1.addr, align 4
  %div31 = sdiv i32 %14, 20
  %sub32 = sub nsw i32 %div31, 1
  %15 = load i32, i32* %str1.addr, align 4
  %rem33 = srem i32 %15, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2051, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %str2.addr, align 4
  %idxprom36 = sext i32 %16 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %17 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %18 = load i32, i32* %str2.addr, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %if.end.53

if.else.48:                                       ; preds = %lor.lhs.false.41
  %20 = load i32, i32* %str2.addr, align 4
  %div49 = sdiv i32 %20, 20
  %sub50 = sub nsw i32 %div49, 1
  %21 = load i32, i32* %str2.addr, align 4
  %rem51 = srem i32 %21, 20
  %sub52 = sub nsw i32 %rem51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2052, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %sub50, i32 %sub52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.47
  %22 = load i32, i32* %str1.addr, align 4
  %idxprom54 = sext i32 %22 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom54
  %23 = load i32, i32* %arrayidx55, align 4
  store i32 %23, i32* %n, align 4
  %24 = load i32, i32* %n, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom56
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx57, i32 0, i32 3
  %25 = load i32, i32* %liberties, align 4
  store i32 %25, i32* %liberties1, align 4
  %26 = load i32, i32* %liberties1, align 4
  %27 = load i32, i32* %str2.addr, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom58
  %28 = load i32, i32* %arrayidx59, align 4
  %idxprom60 = sext i32 %28 to i64
  %arrayidx61 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom60
  %liberties62 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx61, i32 0, i32 3
  %29 = load i32, i32* %liberties62, align 4
  %cmp63 = icmp sgt i32 %26, %29
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %if.end.53
  %30 = load i32, i32* %str2.addr, align 4
  %idxprom66 = sext i32 %30 to i64
  %arrayidx67 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom66
  %31 = load i32, i32* %arrayidx67, align 4
  store i32 %31, i32* %n, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom68 = sext i32 %32 to i64
  %arrayidx69 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom68
  %liberties70 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx69, i32 0, i32 3
  %33 = load i32, i32* %liberties70, align 4
  store i32 %33, i32* %liberties1, align 4
  %34 = load i32, i32* %str1.addr, align 4
  store i32 %34, i32* %tmp, align 4
  %35 = load i32, i32* %str2.addr, align 4
  store i32 %35, i32* %str1.addr, align 4
  %36 = load i32, i32* %tmp, align 4
  store i32 %36, i32* %str2.addr, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %if.end.53
  %37 = load i32, i32* %liberties1, align 4
  %cmp72 = icmp sle i32 %37, 20
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.end.71
  %38 = load i32, i32* %n, align 4
  %idxprom75 = sext i32 %38 to i64
  %arrayidx76 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom75
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx76, i32 0, i32 4
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i32 0
  store i32* %arraydecay, i32** %libs1, align 8
  br label %if.end.80

if.else.77:                                       ; preds = %if.end.71
  %39 = load i32, i32* %str1.addr, align 4
  %arraydecay78 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  %call = call i32 @findlib(i32 %39, i32 241, i32* %arraydecay78)
  %arraydecay79 = getelementptr inbounds [241 x i32], [241 x i32]* %all_libs1, i32 0, i32 0
  store i32* %arraydecay79, i32** %libs1, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.74
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.80
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %liberties1, align 4
  %cmp81 = icmp slt i32 %40, %41
  br i1 %cmp81, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %42 to i64
  %43 = load i32*, i32** %libs1, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %43, i64 %idxprom83
  %44 = load i32, i32* %arrayidx84, align 4
  %add = add nsw i32 %44, 20
  %idxprom85 = sext i32 %add to i64
  %arrayidx86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom85
  %45 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %45 to i32
  %46 = load i32, i32* %str2.addr, align 4
  %idxprom88 = sext i32 %46 to i64
  %arrayidx89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom88
  %47 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %47 to i32
  %cmp91 = icmp eq i32 %conv87, %conv90
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.103

land.lhs.true.93:                                 ; preds = %for.body
  %48 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %48 to i64
  %49 = load i32*, i32** %libs1, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %49, i64 %idxprom94
  %50 = load i32, i32* %arrayidx95, align 4
  %add96 = add nsw i32 %50, 20
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom97
  %51 = load i32, i32* %arrayidx98, align 4
  %52 = load i32, i32* %str2.addr, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom99
  %53 = load i32, i32* %arrayidx100, align 4
  %cmp101 = icmp eq i32 %51, %53
  br i1 %cmp101, label %if.then.169, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true.93, %for.body
  %54 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %54 to i64
  %55 = load i32*, i32** %libs1, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %55, i64 %idxprom104
  %56 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %56, 1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom107
  %57 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %57 to i32
  %58 = load i32, i32* %str2.addr, align 4
  %idxprom110 = sext i32 %58 to i64
  %arrayidx111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom110
  %59 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %59 to i32
  %cmp113 = icmp eq i32 %conv109, %conv112
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false.125

land.lhs.true.115:                                ; preds = %lor.lhs.false.103
  %60 = load i32, i32* %k, align 4
  %idxprom116 = sext i32 %60 to i64
  %61 = load i32*, i32** %libs1, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %61, i64 %idxprom116
  %62 = load i32, i32* %arrayidx117, align 4
  %sub118 = sub nsw i32 %62, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom119
  %63 = load i32, i32* %arrayidx120, align 4
  %64 = load i32, i32* %str2.addr, align 4
  %idxprom121 = sext i32 %64 to i64
  %arrayidx122 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom121
  %65 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp eq i32 %63, %65
  br i1 %cmp123, label %if.then.169, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %land.lhs.true.115, %lor.lhs.false.103
  %66 = load i32, i32* %k, align 4
  %idxprom126 = sext i32 %66 to i64
  %67 = load i32*, i32** %libs1, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %67, i64 %idxprom126
  %68 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 %68, 20
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom129
  %69 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %69 to i32
  %70 = load i32, i32* %str2.addr, align 4
  %idxprom132 = sext i32 %70 to i64
  %arrayidx133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom132
  %71 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %71 to i32
  %cmp135 = icmp eq i32 %conv131, %conv134
  br i1 %cmp135, label %land.lhs.true.137, label %lor.lhs.false.147

land.lhs.true.137:                                ; preds = %lor.lhs.false.125
  %72 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %72 to i64
  %73 = load i32*, i32** %libs1, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %73, i64 %idxprom138
  %74 = load i32, i32* %arrayidx139, align 4
  %sub140 = sub nsw i32 %74, 20
  %idxprom141 = sext i32 %sub140 to i64
  %arrayidx142 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom141
  %75 = load i32, i32* %arrayidx142, align 4
  %76 = load i32, i32* %str2.addr, align 4
  %idxprom143 = sext i32 %76 to i64
  %arrayidx144 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom143
  %77 = load i32, i32* %arrayidx144, align 4
  %cmp145 = icmp eq i32 %75, %77
  br i1 %cmp145, label %if.then.169, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.137, %lor.lhs.false.125
  %78 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %78 to i64
  %79 = load i32*, i32** %libs1, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %79, i64 %idxprom148
  %80 = load i32, i32* %arrayidx149, align 4
  %add150 = add nsw i32 %80, 1
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom151
  %81 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %81 to i32
  %82 = load i32, i32* %str2.addr, align 4
  %idxprom154 = sext i32 %82 to i64
  %arrayidx155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom154
  %83 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %83 to i32
  %cmp157 = icmp eq i32 %conv153, %conv156
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.174

land.lhs.true.159:                                ; preds = %lor.lhs.false.147
  %84 = load i32, i32* %k, align 4
  %idxprom160 = sext i32 %84 to i64
  %85 = load i32*, i32** %libs1, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %85, i64 %idxprom160
  %86 = load i32, i32* %arrayidx161, align 4
  %add162 = add nsw i32 %86, 1
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom163
  %87 = load i32, i32* %arrayidx164, align 4
  %88 = load i32, i32* %str2.addr, align 4
  %idxprom165 = sext i32 %88 to i64
  %arrayidx166 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom165
  %89 = load i32, i32* %arrayidx166, align 4
  %cmp167 = icmp eq i32 %87, %89
  br i1 %cmp167, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %land.lhs.true.159, %land.lhs.true.137, %land.lhs.true.115, %land.lhs.true.93
  %90 = load i32*, i32** %lib.addr, align 8
  %tobool = icmp ne i32* %90, null
  br i1 %tobool, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %if.then.169
  %91 = load i32, i32* %k, align 4
  %idxprom171 = sext i32 %91 to i64
  %92 = load i32*, i32** %libs1, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %92, i64 %idxprom171
  %93 = load i32, i32* %arrayidx172, align 4
  %94 = load i32*, i32** %lib.addr, align 8
  store i32 %93, i32* %94, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.170, %if.then.169
  store i32 1, i32* %retval
  br label %return

if.end.174:                                       ; preds = %land.lhs.true.159, %lor.lhs.false.147
  br label %for.inc

for.inc:                                          ; preds = %if.end.174
  %95 = load i32, i32* %k, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.173
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define i32 @countstones(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2093, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.20

if.else.15:                                       ; preds = %lor.lhs.false
  %9 = load i32, i32* %str.addr, align 4
  %div16 = sdiv i32 %9, 20
  %sub17 = sub nsw i32 %div16, 1
  %10 = load i32, i32* %str.addr, align 4
  %rem18 = srem i32 %10, 20
  %sub19 = sub nsw i32 %rem18, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2094, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub17, i32 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  %11 = load i32, i32* %str.addr, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom21
  %12 = load i32, i32* %arrayidx22, align 4
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom23
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx24, i32 0, i32 1
  %13 = load i32, i32* %size, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @findstones(i32 %str, i32 %maxstones, i32* %stones) #0 {
entry:
  %str.addr = alloca i32, align 4
  %maxstones.addr = alloca i32, align 4
  %stones.addr = alloca i32*, align 8
  %s = alloca i32, align 4
  %size = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %maxstones, i32* %maxstones.addr, align 4
  store i32* %stones, i32** %stones.addr, align 8
  %0 = load i32, i32* %str.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 1
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %str.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom9
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp eq i32 %conv11, 2
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end
  br label %if.end.20

if.else.15:                                       ; preds = %lor.lhs.false
  %9 = load i32, i32* %str.addr, align 4
  %div16 = sdiv i32 %9, 20
  %sub17 = sub nsw i32 %div16, 1
  %10 = load i32, i32* %str.addr, align 4
  %rem18 = srem i32 %10, 20
  %sub19 = sub nsw i32 %rem18, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub17, i32 %sub19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.15, %if.then.14
  %11 = load i32, i32* %str.addr, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom21
  %12 = load i32, i32* %arrayidx22, align 4
  store i32 %12, i32* %s, align 4
  %13 = load i32, i32* %s, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom23
  %size25 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx24, i32 0, i32 1
  %14 = load i32, i32* %size25, align 4
  store i32 %14, i32* %size, align 4
  %15 = load i32, i32* %s, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom26
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx27, i32 0, i32 2
  %16 = load i32, i32* %origin, align 4
  store i32 %16, i32* %pos, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %maxstones.addr, align 4
  %cmp28 = icmp slt i32 %17, %18
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %size, align 4
  %cmp30 = icmp slt i32 %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load i32, i32* %pos, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load i32*, i32** %stones.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %24, i64 %idxprom32
  store i32 %22, i32* %arrayidx33, align 4
  %25 = load i32, i32* %pos, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom34
  %26 = load i32, i32* %arrayidx35, align 4
  store i32 %26, i32* %pos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %28 = load i32, i32* %size, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @chainlinks(i32 %str, i32* %adj) #0 {
entry:
  %str.addr = alloca i32, align 4
  %adj.addr = alloca i32*, align 8
  %s = alloca %struct.string_data*, align 8
  %k = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %adj, i32** %adj.addr, align 8
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  store %struct.string_data* %arrayidx11, %struct.string_data** %s, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %k, align 4
  %9 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %9, i32 0, i32 5
  %10 = load i32, i32* %neighbors, align 4
  %cmp12 = icmp slt i32 %8, %10
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %11 to i64
  %12 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %12, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom16
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx17, i32 0, i32 2
  %14 = load i32, i32* %origin, align 4
  %15 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %15 to i64
  %16 = load i32*, i32** %adj.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %16, i64 %idxprom18
  store i32 %14, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors20 = getelementptr inbounds %struct.string_data, %struct.string_data* %18, i32 0, i32 5
  %19 = load i32, i32* %neighbors20, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @chainlinks2(i32 %str, i32* %adj, i32 %lib) #0 {
entry:
  %str.addr = alloca i32, align 4
  %adj.addr = alloca i32*, align 8
  %lib.addr = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  %t = alloca %struct.string_data*, align 8
  %k = alloca i32, align 4
  %neighbors = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %adj, i32** %adj.addr, align 8
  store i32 %lib, i32* %lib.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %neighbors, align 4
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  store %struct.string_data* %arrayidx11, %struct.string_data** %s, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %k, align 4
  %9 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors12 = getelementptr inbounds %struct.string_data, %struct.string_data* %9, i32 0, i32 5
  %10 = load i32, i32* %neighbors12, align 4
  %cmp13 = icmp slt i32 %8, %10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %12, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom17
  store %struct.string_data* %arrayidx18, %struct.string_data** %t, align 8
  %14 = load %struct.string_data*, %struct.string_data** %t, align 8
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %14, i32 0, i32 3
  %15 = load i32, i32* %liberties, align 4
  %16 = load i32, i32* %lib.addr, align 4
  %cmp19 = icmp eq i32 %15, %16
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %for.body
  %17 = load %struct.string_data*, %struct.string_data** %t, align 8
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %17, i32 0, i32 2
  %18 = load i32, i32* %origin, align 4
  %19 = load i32, i32* %neighbors, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %neighbors, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i32*, i32** %adj.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %20, i64 %idxprom22
  store i32 %18, i32* %arrayidx23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %21 = load i32, i32* %k, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %neighbors, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @chainlinks3(i32 %str, i32* %adj, i32 %lib) #0 {
entry:
  %str.addr = alloca i32, align 4
  %adj.addr = alloca i32*, align 8
  %lib.addr = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  %t = alloca %struct.string_data*, align 8
  %k = alloca i32, align 4
  %neighbors = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %adj, i32** %adj.addr, align 8
  store i32 %lib, i32* %lib.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %neighbors, align 4
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  store %struct.string_data* %arrayidx11, %struct.string_data** %s, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %k, align 4
  %9 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors12 = getelementptr inbounds %struct.string_data, %struct.string_data* %9, i32 0, i32 5
  %10 = load i32, i32* %neighbors12, align 4
  %cmp13 = icmp slt i32 %8, %10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %11 to i64
  %12 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %12, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom17
  store %struct.string_data* %arrayidx18, %struct.string_data** %t, align 8
  %14 = load %struct.string_data*, %struct.string_data** %t, align 8
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %14, i32 0, i32 3
  %15 = load i32, i32* %liberties, align 4
  %16 = load i32, i32* %lib.addr, align 4
  %cmp19 = icmp sle i32 %15, %16
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %for.body
  %17 = load %struct.string_data*, %struct.string_data** %t, align 8
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %17, i32 0, i32 2
  %18 = load i32, i32* %origin, align 4
  %19 = load i32, i32* %neighbors, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %neighbors, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i32*, i32** %adj.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %20, i64 %idxprom22
  store i32 %18, i32* %arrayidx23, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %21 = load i32, i32* %k, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %neighbors, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @extended_chainlinks(i32 %str, i32* %adj, i32 %both_colors) #0 {
entry:
  %str.addr = alloca i32, align 4
  %adj.addr = alloca i32*, align 8
  %both_colors.addr = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %adj, i32** %adj.addr, align 8
  store i32 %both_colors, i32* %both_colors.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  store %struct.string_data* %arrayidx11, %struct.string_data** %s, align 8
  %8 = load i32, i32* @string_mark, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @string_mark, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %n, align 4
  %10 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %10, i32 0, i32 5
  %11 = load i32, i32* %neighbors, align 4
  %cmp12 = icmp slt i32 %9, %11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %13, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom14
  %14 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom16
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx17, i32 0, i32 2
  %15 = load i32, i32* %origin, align 4
  %16 = load i32, i32* %n, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32*, i32** %adj.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 %idxprom18
  store i32 %15, i32* %arrayidx19, align 4
  %18 = load i32, i32* @string_mark, align 4
  %19 = load i32, i32* %n, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load i32*, i32** %adj.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %20, i64 %idxprom20
  %21 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom24
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx25, i32 0, i32 7
  store i32 %18, i32* %mark, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %n, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call = call i32 @findlib(i32 %24, i32 241, i32* %arraydecay)
  store i32 %call, i32* %liberties, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.100, %for.end
  %25 = load i32, i32* %r, align 4
  %26 = load i32, i32* %liberties, align 4
  %cmp28 = icmp slt i32 %25, %26
  br i1 %cmp28, label %for.body.30, label %for.end.102

for.body.30:                                      ; preds = %for.cond.27
  store i32 0, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.97, %for.body.30
  %27 = load i32, i32* %k, align 4
  %cmp32 = icmp slt i32 %27, 4
  br i1 %cmp32, label %for.body.34, label %for.end.99

for.body.34:                                      ; preds = %for.cond.31
  %28 = load i32, i32* %r, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %30 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom37
  %31 = load i32, i32* %arrayidx38, align 4
  %add = add nsw i32 %29, %31
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom39
  %32 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %32 to i32
  %33 = load i32, i32* %str.addr, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %34 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %34 to i32
  %sub45 = sub nsw i32 3, %conv44
  %cmp46 = icmp eq i32 %conv41, %sub45
  br i1 %cmp46, label %land.lhs.true.62, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %for.body.34
  %35 = load i32, i32* %both_colors.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %lor.lhs.false.48
  %36 = load i32, i32* %r, align 4
  %idxprom49 = sext i32 %36 to i64
  %arrayidx50 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom49
  %37 = load i32, i32* %arrayidx50, align 4
  %38 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom51
  %39 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %37, %39
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom54
  %40 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %40 to i32
  %41 = load i32, i32* %str.addr, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %42 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %42 to i32
  %cmp60 = icmp eq i32 %conv56, %conv59
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.96

land.lhs.true.62:                                 ; preds = %land.lhs.true, %for.body.34
  %43 = load i32, i32* %r, align 4
  %idxprom63 = sext i32 %43 to i64
  %arrayidx64 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom63
  %44 = load i32, i32* %arrayidx64, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %45 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom65
  %46 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %44, %46
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom68
  %47 = load i32, i32* %arrayidx69, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom70
  %mark72 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx71, i32 0, i32 7
  %48 = load i32, i32* %mark72, align 4
  %49 = load i32, i32* @string_mark, align 4
  %cmp73 = icmp ne i32 %48, %49
  br i1 %cmp73, label %if.then.75, label %if.end.96

if.then.75:                                       ; preds = %land.lhs.true.62
  %50 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %50 to i64
  %arrayidx77 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom76
  %51 = load i32, i32* %arrayidx77, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %52 to i64
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom78
  %53 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %51, %53
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom81
  %54 = load i32, i32* %arrayidx82, align 4
  %idxprom83 = sext i32 %54 to i64
  %arrayidx84 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom83
  %origin85 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx84, i32 0, i32 2
  %55 = load i32, i32* %origin85, align 4
  %56 = load i32, i32* %n, align 4
  %idxprom86 = sext i32 %56 to i64
  %57 = load i32*, i32** %adj.addr, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %57, i64 %idxprom86
  store i32 %55, i32* %arrayidx87, align 4
  %58 = load i32, i32* @string_mark, align 4
  %59 = load i32, i32* %n, align 4
  %idxprom88 = sext i32 %59 to i64
  %60 = load i32*, i32** %adj.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %60, i64 %idxprom88
  %61 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %61 to i64
  %arrayidx91 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom90
  %62 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom92
  %mark94 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx93, i32 0, i32 7
  store i32 %58, i32* %mark94, align 4
  %63 = load i32, i32* %n, align 4
  %inc95 = add nsw i32 %63, 1
  store i32 %inc95, i32* %n, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.75, %land.lhs.true.62, %land.lhs.true, %lor.lhs.false.48
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %64 = load i32, i32* %k, align 4
  %inc98 = add nsw i32 %64, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond.31

for.end.99:                                       ; preds = %for.cond.31
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %65 = load i32, i32* %r, align 4
  %inc101 = add nsw i32 %65, 1
  store i32 %inc101, i32* %r, align 4
  br label %for.cond.27

for.end.102:                                      ; preds = %for.cond.27
  %66 = load i32, i32* %n, align 4
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @find_origin(i32 %str) #0 {
entry:
  %str.addr = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2270, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %str.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx11, i32 0, i32 2
  %8 = load i32, i32* %origin, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @is_self_atari(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %trivial_liberties = alloca i32, align 4
  %captures = alloca i32, align 4
  %far_liberties = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %trivial_liberties, align 4
  store i32 0, i32* %captures, align 4
  store i32 0, i32* %far_liberties, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %cmp = icmp ult i32 %1, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %4, 20
  %sub3 = sub nsw i32 %div, 1
  %5 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2294, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub3, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %div12 = sdiv i32 %8, 20
  %sub13 = sub nsw i32 %div12, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem14 = srem i32 %9, 20
  %sub15 = sub nsw i32 %rem14, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2295, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub13, i32 %sub15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.11, %if.then.10
  %10 = load i32, i32* %color.addr, align 4
  %cmp17 = icmp eq i32 %10, 1
  br i1 %cmp17, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %11 = load i32, i32* %color.addr, align 4
  %cmp19 = icmp eq i32 %11, 2
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  br label %if.end.27

if.else.22:                                       ; preds = %lor.lhs.false
  %12 = load i32, i32* %pos.addr, align 4
  %div23 = sdiv i32 %12, 20
  %sub24 = sub nsw i32 %div23, 1
  %13 = load i32, i32* %pos.addr, align 4
  %rem25 = srem i32 %13, 20
  %sub26 = sub nsw i32 %rem25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2296, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub24, i32 %sub26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %if.then.21
  %14 = load i32, i32* @string_mark, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* @string_mark, align 4
  %15 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %15, 20
  %idxprom28 = sext i32 %add to i64
  %arrayidx29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom28
  %16 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %16 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.end.27
  %17 = load i32, i32* %trivial_liberties, align 4
  %inc34 = add nsw i32 %17, 1
  store i32 %inc34, i32* %trivial_liberties, align 4
  br label %if.end.97

if.else.35:                                       ; preds = %if.end.27
  %18 = load i32, i32* %pos.addr, align 4
  %add36 = add nsw i32 %18, 20
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom37
  %19 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %19 to i32
  %20 = load i32, i32* %color.addr, align 4
  %cmp40 = icmp eq i32 %conv39, %20
  br i1 %cmp40, label %if.then.42, label %if.else.63

if.then.42:                                       ; preds = %if.else.35
  %21 = load i32, i32* %pos.addr, align 4
  %add43 = add nsw i32 %21, 20
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom44
  %22 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %22 to i64
  %arrayidx47 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom46
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx47, i32 0, i32 3
  %23 = load i32, i32* %liberties, align 4
  %cmp48 = icmp sgt i32 %23, 2
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.42
  %24 = load i32, i32* %pos.addr, align 4
  %add52 = add nsw i32 %24, 20
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom53
  %25 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %25 to i64
  %arrayidx56 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom55
  %liberties57 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx56, i32 0, i32 3
  %26 = load i32, i32* %liberties57, align 4
  %cmp58 = icmp eq i32 %26, 2
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.51
  %27 = load i32, i32* %far_liberties, align 4
  %inc61 = add nsw i32 %27, 1
  store i32 %inc61, i32* %far_liberties, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.51
  br label %if.end.96

if.else.63:                                       ; preds = %if.else.35
  %28 = load i32, i32* %pos.addr, align 4
  %add64 = add nsw i32 %28, 20
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom65
  %29 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %29 to i32
  %30 = load i32, i32* %other, align 4
  %cmp68 = icmp eq i32 %conv67, %30
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.95

land.lhs.true.70:                                 ; preds = %if.else.63
  %31 = load i32, i32* %pos.addr, align 4
  %add71 = add nsw i32 %31, 20
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom72
  %32 = load i32, i32* %arrayidx73, align 4
  %idxprom74 = sext i32 %32 to i64
  %arrayidx75 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom74
  %liberties76 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx75, i32 0, i32 3
  %33 = load i32, i32* %liberties76, align 4
  %cmp77 = icmp eq i32 %33, 1
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.95

land.lhs.true.79:                                 ; preds = %land.lhs.true.70
  %34 = load i32, i32* %pos.addr, align 4
  %add80 = add nsw i32 %34, 20
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom81
  %35 = load i32, i32* %arrayidx82, align 4
  %idxprom83 = sext i32 %35 to i64
  %arrayidx84 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom83
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx84, i32 0, i32 7
  %36 = load i32, i32* %mark, align 4
  %37 = load i32, i32* @string_mark, align 4
  %cmp85 = icmp ne i32 %36, %37
  br i1 %cmp85, label %if.then.87, label %if.end.95

if.then.87:                                       ; preds = %land.lhs.true.79
  %38 = load i32, i32* %captures, align 4
  %inc88 = add nsw i32 %38, 1
  store i32 %inc88, i32* %captures, align 4
  %39 = load i32, i32* @string_mark, align 4
  %40 = load i32, i32* %pos.addr, align 4
  %add89 = add nsw i32 %40, 20
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom90
  %41 = load i32, i32* %arrayidx91, align 4
  %idxprom92 = sext i32 %41 to i64
  %arrayidx93 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom92
  %mark94 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx93, i32 0, i32 7
  store i32 %39, i32* %mark94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.87, %land.lhs.true.79, %land.lhs.true.70, %if.else.63
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.62
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.33
  %42 = load i32, i32* %pos.addr, align 4
  %sub98 = sub nsw i32 %42, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %43 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %43 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.end.97
  %44 = load i32, i32* %trivial_liberties, align 4
  %inc105 = add nsw i32 %44, 1
  store i32 %inc105, i32* %trivial_liberties, align 4
  br label %if.end.170

if.else.106:                                      ; preds = %if.end.97
  %45 = load i32, i32* %pos.addr, align 4
  %sub107 = sub nsw i32 %45, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom108
  %46 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %46 to i32
  %47 = load i32, i32* %color.addr, align 4
  %cmp111 = icmp eq i32 %conv110, %47
  br i1 %cmp111, label %if.then.113, label %if.else.135

if.then.113:                                      ; preds = %if.else.106
  %48 = load i32, i32* %pos.addr, align 4
  %sub114 = sub nsw i32 %48, 1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom115
  %49 = load i32, i32* %arrayidx116, align 4
  %idxprom117 = sext i32 %49 to i64
  %arrayidx118 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom117
  %liberties119 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx118, i32 0, i32 3
  %50 = load i32, i32* %liberties119, align 4
  %cmp120 = icmp sgt i32 %50, 2
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.113
  store i32 0, i32* %retval
  br label %return

if.end.123:                                       ; preds = %if.then.113
  %51 = load i32, i32* %pos.addr, align 4
  %sub124 = sub nsw i32 %51, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom125
  %52 = load i32, i32* %arrayidx126, align 4
  %idxprom127 = sext i32 %52 to i64
  %arrayidx128 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom127
  %liberties129 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx128, i32 0, i32 3
  %53 = load i32, i32* %liberties129, align 4
  %cmp130 = icmp eq i32 %53, 2
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.123
  %54 = load i32, i32* %far_liberties, align 4
  %inc133 = add nsw i32 %54, 1
  store i32 %inc133, i32* %far_liberties, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.123
  br label %if.end.169

if.else.135:                                      ; preds = %if.else.106
  %55 = load i32, i32* %pos.addr, align 4
  %sub136 = sub nsw i32 %55, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom137
  %56 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %56 to i32
  %57 = load i32, i32* %other, align 4
  %cmp140 = icmp eq i32 %conv139, %57
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.168

land.lhs.true.142:                                ; preds = %if.else.135
  %58 = load i32, i32* %pos.addr, align 4
  %sub143 = sub nsw i32 %58, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom144
  %59 = load i32, i32* %arrayidx145, align 4
  %idxprom146 = sext i32 %59 to i64
  %arrayidx147 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom146
  %liberties148 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx147, i32 0, i32 3
  %60 = load i32, i32* %liberties148, align 4
  %cmp149 = icmp eq i32 %60, 1
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.168

land.lhs.true.151:                                ; preds = %land.lhs.true.142
  %61 = load i32, i32* %pos.addr, align 4
  %sub152 = sub nsw i32 %61, 1
  %idxprom153 = sext i32 %sub152 to i64
  %arrayidx154 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom153
  %62 = load i32, i32* %arrayidx154, align 4
  %idxprom155 = sext i32 %62 to i64
  %arrayidx156 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom155
  %mark157 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx156, i32 0, i32 7
  %63 = load i32, i32* %mark157, align 4
  %64 = load i32, i32* @string_mark, align 4
  %cmp158 = icmp ne i32 %63, %64
  br i1 %cmp158, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %land.lhs.true.151
  %65 = load i32, i32* %captures, align 4
  %inc161 = add nsw i32 %65, 1
  store i32 %inc161, i32* %captures, align 4
  %66 = load i32, i32* @string_mark, align 4
  %67 = load i32, i32* %pos.addr, align 4
  %sub162 = sub nsw i32 %67, 1
  %idxprom163 = sext i32 %sub162 to i64
  %arrayidx164 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom163
  %68 = load i32, i32* %arrayidx164, align 4
  %idxprom165 = sext i32 %68 to i64
  %arrayidx166 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom165
  %mark167 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx166, i32 0, i32 7
  store i32 %66, i32* %mark167, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.160, %land.lhs.true.151, %land.lhs.true.142, %if.else.135
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.end.134
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.then.104
  %69 = load i32, i32* %pos.addr, align 4
  %sub171 = sub nsw i32 %69, 20
  %idxprom172 = sext i32 %sub171 to i64
  %arrayidx173 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom172
  %70 = load i8, i8* %arrayidx173, align 1
  %conv174 = zext i8 %70 to i32
  %cmp175 = icmp eq i32 %conv174, 0
  br i1 %cmp175, label %if.then.177, label %if.else.179

if.then.177:                                      ; preds = %if.end.170
  %71 = load i32, i32* %trivial_liberties, align 4
  %inc178 = add nsw i32 %71, 1
  store i32 %inc178, i32* %trivial_liberties, align 4
  br label %if.end.243

if.else.179:                                      ; preds = %if.end.170
  %72 = load i32, i32* %pos.addr, align 4
  %sub180 = sub nsw i32 %72, 20
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom181
  %73 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %73 to i32
  %74 = load i32, i32* %color.addr, align 4
  %cmp184 = icmp eq i32 %conv183, %74
  br i1 %cmp184, label %if.then.186, label %if.else.208

if.then.186:                                      ; preds = %if.else.179
  %75 = load i32, i32* %pos.addr, align 4
  %sub187 = sub nsw i32 %75, 20
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom188
  %76 = load i32, i32* %arrayidx189, align 4
  %idxprom190 = sext i32 %76 to i64
  %arrayidx191 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom190
  %liberties192 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx191, i32 0, i32 3
  %77 = load i32, i32* %liberties192, align 4
  %cmp193 = icmp sgt i32 %77, 2
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.186
  store i32 0, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.then.186
  %78 = load i32, i32* %pos.addr, align 4
  %sub197 = sub nsw i32 %78, 20
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom198
  %79 = load i32, i32* %arrayidx199, align 4
  %idxprom200 = sext i32 %79 to i64
  %arrayidx201 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom200
  %liberties202 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx201, i32 0, i32 3
  %80 = load i32, i32* %liberties202, align 4
  %cmp203 = icmp eq i32 %80, 2
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.end.196
  %81 = load i32, i32* %far_liberties, align 4
  %inc206 = add nsw i32 %81, 1
  store i32 %inc206, i32* %far_liberties, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.end.196
  br label %if.end.242

if.else.208:                                      ; preds = %if.else.179
  %82 = load i32, i32* %pos.addr, align 4
  %sub209 = sub nsw i32 %82, 20
  %idxprom210 = sext i32 %sub209 to i64
  %arrayidx211 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom210
  %83 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %83 to i32
  %84 = load i32, i32* %other, align 4
  %cmp213 = icmp eq i32 %conv212, %84
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.241

land.lhs.true.215:                                ; preds = %if.else.208
  %85 = load i32, i32* %pos.addr, align 4
  %sub216 = sub nsw i32 %85, 20
  %idxprom217 = sext i32 %sub216 to i64
  %arrayidx218 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom217
  %86 = load i32, i32* %arrayidx218, align 4
  %idxprom219 = sext i32 %86 to i64
  %arrayidx220 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom219
  %liberties221 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx220, i32 0, i32 3
  %87 = load i32, i32* %liberties221, align 4
  %cmp222 = icmp eq i32 %87, 1
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.241

land.lhs.true.224:                                ; preds = %land.lhs.true.215
  %88 = load i32, i32* %pos.addr, align 4
  %sub225 = sub nsw i32 %88, 20
  %idxprom226 = sext i32 %sub225 to i64
  %arrayidx227 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom226
  %89 = load i32, i32* %arrayidx227, align 4
  %idxprom228 = sext i32 %89 to i64
  %arrayidx229 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom228
  %mark230 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx229, i32 0, i32 7
  %90 = load i32, i32* %mark230, align 4
  %91 = load i32, i32* @string_mark, align 4
  %cmp231 = icmp ne i32 %90, %91
  br i1 %cmp231, label %if.then.233, label %if.end.241

if.then.233:                                      ; preds = %land.lhs.true.224
  %92 = load i32, i32* %captures, align 4
  %inc234 = add nsw i32 %92, 1
  store i32 %inc234, i32* %captures, align 4
  %93 = load i32, i32* @string_mark, align 4
  %94 = load i32, i32* %pos.addr, align 4
  %sub235 = sub nsw i32 %94, 20
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom236
  %95 = load i32, i32* %arrayidx237, align 4
  %idxprom238 = sext i32 %95 to i64
  %arrayidx239 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom238
  %mark240 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx239, i32 0, i32 7
  store i32 %93, i32* %mark240, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.233, %land.lhs.true.224, %land.lhs.true.215, %if.else.208
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.207
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.then.177
  %96 = load i32, i32* %pos.addr, align 4
  %add244 = add nsw i32 %96, 1
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom245
  %97 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %97 to i32
  %cmp248 = icmp eq i32 %conv247, 0
  br i1 %cmp248, label %if.then.250, label %if.else.252

if.then.250:                                      ; preds = %if.end.243
  %98 = load i32, i32* %trivial_liberties, align 4
  %inc251 = add nsw i32 %98, 1
  store i32 %inc251, i32* %trivial_liberties, align 4
  br label %if.end.310

if.else.252:                                      ; preds = %if.end.243
  %99 = load i32, i32* %pos.addr, align 4
  %add253 = add nsw i32 %99, 1
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom254
  %100 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %100 to i32
  %101 = load i32, i32* %color.addr, align 4
  %cmp257 = icmp eq i32 %conv256, %101
  br i1 %cmp257, label %if.then.259, label %if.else.281

if.then.259:                                      ; preds = %if.else.252
  %102 = load i32, i32* %pos.addr, align 4
  %add260 = add nsw i32 %102, 1
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom261
  %103 = load i32, i32* %arrayidx262, align 4
  %idxprom263 = sext i32 %103 to i64
  %arrayidx264 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom263
  %liberties265 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx264, i32 0, i32 3
  %104 = load i32, i32* %liberties265, align 4
  %cmp266 = icmp sgt i32 %104, 2
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.then.259
  store i32 0, i32* %retval
  br label %return

if.end.269:                                       ; preds = %if.then.259
  %105 = load i32, i32* %pos.addr, align 4
  %add270 = add nsw i32 %105, 1
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom271
  %106 = load i32, i32* %arrayidx272, align 4
  %idxprom273 = sext i32 %106 to i64
  %arrayidx274 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom273
  %liberties275 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx274, i32 0, i32 3
  %107 = load i32, i32* %liberties275, align 4
  %cmp276 = icmp eq i32 %107, 2
  br i1 %cmp276, label %if.then.278, label %if.end.280

if.then.278:                                      ; preds = %if.end.269
  %108 = load i32, i32* %far_liberties, align 4
  %inc279 = add nsw i32 %108, 1
  store i32 %inc279, i32* %far_liberties, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.278, %if.end.269
  br label %if.end.309

if.else.281:                                      ; preds = %if.else.252
  %109 = load i32, i32* %pos.addr, align 4
  %add282 = add nsw i32 %109, 1
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom283
  %110 = load i8, i8* %arrayidx284, align 1
  %conv285 = zext i8 %110 to i32
  %111 = load i32, i32* %other, align 4
  %cmp286 = icmp eq i32 %conv285, %111
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.308

land.lhs.true.288:                                ; preds = %if.else.281
  %112 = load i32, i32* %pos.addr, align 4
  %add289 = add nsw i32 %112, 1
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom290
  %113 = load i32, i32* %arrayidx291, align 4
  %idxprom292 = sext i32 %113 to i64
  %arrayidx293 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom292
  %liberties294 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx293, i32 0, i32 3
  %114 = load i32, i32* %liberties294, align 4
  %cmp295 = icmp eq i32 %114, 1
  br i1 %cmp295, label %land.lhs.true.297, label %if.end.308

land.lhs.true.297:                                ; preds = %land.lhs.true.288
  %115 = load i32, i32* %pos.addr, align 4
  %add298 = add nsw i32 %115, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom299
  %116 = load i32, i32* %arrayidx300, align 4
  %idxprom301 = sext i32 %116 to i64
  %arrayidx302 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom301
  %mark303 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx302, i32 0, i32 7
  %117 = load i32, i32* %mark303, align 4
  %118 = load i32, i32* @string_mark, align 4
  %cmp304 = icmp ne i32 %117, %118
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %land.lhs.true.297
  %119 = load i32, i32* %captures, align 4
  %inc307 = add nsw i32 %119, 1
  store i32 %inc307, i32* %captures, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %land.lhs.true.297, %land.lhs.true.288, %if.else.281
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.280
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.250
  %120 = load i32, i32* %trivial_liberties, align 4
  %121 = load i32, i32* %captures, align 4
  %add311 = add nsw i32 %120, %121
  %cmp312 = icmp sge i32 %add311, 2
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.310
  store i32 0, i32* %retval
  br label %return

if.end.315:                                       ; preds = %if.end.310
  %122 = load i32, i32* %far_liberties, align 4
  %cmp316 = icmp sgt i32 %122, 0
  %conv317 = zext i1 %cmp316 to i32
  %123 = load i32, i32* %captures, align 4
  %add318 = add nsw i32 %conv317, %123
  %cmp319 = icmp sge i32 %add318, 2
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.end.315
  store i32 0, i32* %retval
  br label %return

if.end.322:                                       ; preds = %if.end.315
  %124 = load i32, i32* %captures, align 4
  %cmp323 = icmp eq i32 %124, 0
  br i1 %cmp323, label %land.lhs.true.325, label %if.end.330

land.lhs.true.325:                                ; preds = %if.end.322
  %125 = load i32, i32* %far_liberties, align 4
  %126 = load i32, i32* %trivial_liberties, align 4
  %add326 = add nsw i32 %125, %126
  %cmp327 = icmp sle i32 %add326, 1
  br i1 %cmp327, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %land.lhs.true.325
  store i32 1, i32* %retval
  br label %return

if.end.330:                                       ; preds = %land.lhs.true.325, %if.end.322
  %127 = load i32, i32* %pos.addr, align 4
  %128 = load i32, i32* %color.addr, align 4
  %call = call i32 @accuratelib(i32 %127, i32 %128, i32 2, i32* null)
  %cmp331 = icmp sle i32 %call, 1
  %conv332 = zext i1 %cmp331 to i32
  store i32 %conv332, i32* %retval
  br label %return

return:                                           ; preds = %if.end.330, %if.then.329, %if.then.321, %if.then.314, %if.then.268, %if.then.195, %if.then.122, %if.then.50
  %129 = load i32, i32* %retval
  ret i32 %129
}

; Function Attrs: nounwind uwtable
define i32 @liberty_of_string(i32 %pos, i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %str, i32* %str.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2382, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %pos.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %14 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %14, 20
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom31
  %15 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %15 to i32
  %16 = load i32, i32* %str.addr, align 4
  %idxprom34 = sext i32 %16 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %17 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %17 to i32
  %cmp37 = icmp eq i32 %conv33, %conv36
  br i1 %cmp37, label %land.lhs.true.39, label %lor.lhs.false.47

land.lhs.true.39:                                 ; preds = %if.end.30
  %18 = load i32, i32* %pos.addr, align 4
  %add40 = add nsw i32 %18, 20
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom41
  %19 = load i32, i32* %arrayidx42, align 4
  %20 = load i32, i32* %str.addr, align 4
  %idxprom43 = sext i32 %20 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom43
  %21 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %19, %21
  br i1 %cmp45, label %lor.end, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.39, %if.end.30
  %22 = load i32, i32* %pos.addr, align 4
  %sub48 = sub nsw i32 %22, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom49
  %23 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %23 to i32
  %24 = load i32, i32* %str.addr, align 4
  %idxprom52 = sext i32 %24 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %25 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %25 to i32
  %cmp55 = icmp eq i32 %conv51, %conv54
  br i1 %cmp55, label %land.lhs.true.57, label %lor.lhs.false.65

land.lhs.true.57:                                 ; preds = %lor.lhs.false.47
  %26 = load i32, i32* %pos.addr, align 4
  %sub58 = sub nsw i32 %26, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom59
  %27 = load i32, i32* %arrayidx60, align 4
  %28 = load i32, i32* %str.addr, align 4
  %idxprom61 = sext i32 %28 to i64
  %arrayidx62 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom61
  %29 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %27, %29
  br i1 %cmp63, label %lor.end, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.57, %lor.lhs.false.47
  %30 = load i32, i32* %pos.addr, align 4
  %sub66 = sub nsw i32 %30, 20
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %31 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %31 to i32
  %32 = load i32, i32* %str.addr, align 4
  %idxprom70 = sext i32 %32 to i64
  %arrayidx71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom70
  %33 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %cmp73 = icmp eq i32 %conv69, %conv72
  br i1 %cmp73, label %land.lhs.true.75, label %lor.rhs

land.lhs.true.75:                                 ; preds = %lor.lhs.false.65
  %34 = load i32, i32* %pos.addr, align 4
  %sub76 = sub nsw i32 %34, 20
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom77
  %35 = load i32, i32* %arrayidx78, align 4
  %36 = load i32, i32* %str.addr, align 4
  %idxprom79 = sext i32 %36 to i64
  %arrayidx80 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom79
  %37 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp eq i32 %35, %37
  br i1 %cmp81, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.75, %lor.lhs.false.65
  %38 = load i32, i32* %pos.addr, align 4
  %add83 = add nsw i32 %38, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom84
  %39 = load i8, i8* %arrayidx85, align 1
  %conv86 = zext i8 %39 to i32
  %40 = load i32, i32* %str.addr, align 4
  %idxprom87 = sext i32 %40 to i64
  %arrayidx88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom87
  %41 = load i8, i8* %arrayidx88, align 1
  %conv89 = zext i8 %41 to i32
  %cmp90 = icmp eq i32 %conv86, %conv89
  br i1 %cmp90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %42 = load i32, i32* %pos.addr, align 4
  %add92 = add nsw i32 %42, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom93
  %43 = load i32, i32* %arrayidx94, align 4
  %44 = load i32, i32* %str.addr, align 4
  %idxprom95 = sext i32 %44 to i64
  %arrayidx96 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom95
  %45 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp eq i32 %43, %45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %46 = phi i1 [ false, %lor.rhs ], [ %cmp97, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.75, %land.lhs.true.57, %land.lhs.true.39
  %47 = phi i1 [ true, %land.lhs.true.75 ], [ true, %land.lhs.true.57 ], [ true, %land.lhs.true.39 ], [ %46, %land.end ]
  %lor.ext = zext i1 %47 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.29
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @second_order_liberty_of_string(i32 %pos, i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %str, i32* %str.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2397, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2398, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %10 = load i32, i32* %k, align 4
  %cmp19 = icmp slt i32 %10, 4
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %pos.addr, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom21
  %13 = load i32, i32* %arrayidx22, align 4
  %add = add nsw i32 %11, %13
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %14 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.124

land.lhs.true.28:                                 ; preds = %for.body
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %16 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom29
  %17 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %15, %17
  %add32 = add nsw i32 %add31, 20
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %18 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %18 to i32
  %19 = load i32, i32* %str.addr, align 4
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %20 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %20 to i32
  %cmp39 = icmp eq i32 %conv35, %conv38
  br i1 %cmp39, label %land.lhs.true.41, label %lor.lhs.false

land.lhs.true.41:                                 ; preds = %land.lhs.true.28
  %21 = load i32, i32* %pos.addr, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom42
  %23 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %21, %23
  %add45 = add nsw i32 %add44, 20
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom46
  %24 = load i32, i32* %arrayidx47, align 4
  %25 = load i32, i32* %str.addr, align 4
  %idxprom48 = sext i32 %25 to i64
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom48
  %26 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp eq i32 %24, %26
  br i1 %cmp50, label %if.then.123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.41, %land.lhs.true.28
  %27 = load i32, i32* %pos.addr, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %28 to i64
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom52
  %29 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %27, %29
  %sub55 = sub nsw i32 %add54, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom56
  %30 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %30 to i32
  %31 = load i32, i32* %str.addr, align 4
  %idxprom59 = sext i32 %31 to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %32 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %32 to i32
  %cmp62 = icmp eq i32 %conv58, %conv61
  br i1 %cmp62, label %land.lhs.true.64, label %lor.lhs.false.75

land.lhs.true.64:                                 ; preds = %lor.lhs.false
  %33 = load i32, i32* %pos.addr, align 4
  %34 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %34 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom65
  %35 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %33, %35
  %sub68 = sub nsw i32 %add67, 1
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom69
  %36 = load i32, i32* %arrayidx70, align 4
  %37 = load i32, i32* %str.addr, align 4
  %idxprom71 = sext i32 %37 to i64
  %arrayidx72 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom71
  %38 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %36, %38
  br i1 %cmp73, label %if.then.123, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %land.lhs.true.64, %lor.lhs.false
  %39 = load i32, i32* %pos.addr, align 4
  %40 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %40 to i64
  %arrayidx77 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom76
  %41 = load i32, i32* %arrayidx77, align 4
  %add78 = add nsw i32 %39, %41
  %sub79 = sub nsw i32 %add78, 20
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom80
  %42 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %42 to i32
  %43 = load i32, i32* %str.addr, align 4
  %idxprom83 = sext i32 %43 to i64
  %arrayidx84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom83
  %44 = load i8, i8* %arrayidx84, align 1
  %conv85 = zext i8 %44 to i32
  %cmp86 = icmp eq i32 %conv82, %conv85
  br i1 %cmp86, label %land.lhs.true.88, label %lor.lhs.false.99

land.lhs.true.88:                                 ; preds = %lor.lhs.false.75
  %45 = load i32, i32* %pos.addr, align 4
  %46 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %46 to i64
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom89
  %47 = load i32, i32* %arrayidx90, align 4
  %add91 = add nsw i32 %45, %47
  %sub92 = sub nsw i32 %add91, 20
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom93
  %48 = load i32, i32* %arrayidx94, align 4
  %49 = load i32, i32* %str.addr, align 4
  %idxprom95 = sext i32 %49 to i64
  %arrayidx96 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom95
  %50 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp eq i32 %48, %50
  br i1 %cmp97, label %if.then.123, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.88, %lor.lhs.false.75
  %51 = load i32, i32* %pos.addr, align 4
  %52 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %52 to i64
  %arrayidx101 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom100
  %53 = load i32, i32* %arrayidx101, align 4
  %add102 = add nsw i32 %51, %53
  %add103 = add nsw i32 %add102, 1
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom104
  %54 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %54 to i32
  %55 = load i32, i32* %str.addr, align 4
  %idxprom107 = sext i32 %55 to i64
  %arrayidx108 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom107
  %56 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %56 to i32
  %cmp110 = icmp eq i32 %conv106, %conv109
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.124

land.lhs.true.112:                                ; preds = %lor.lhs.false.99
  %57 = load i32, i32* %pos.addr, align 4
  %58 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %58 to i64
  %arrayidx114 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom113
  %59 = load i32, i32* %arrayidx114, align 4
  %add115 = add nsw i32 %57, %59
  %add116 = add nsw i32 %add115, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom117
  %60 = load i32, i32* %arrayidx118, align 4
  %61 = load i32, i32* %str.addr, align 4
  %idxprom119 = sext i32 %61 to i64
  %arrayidx120 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom119
  %62 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp eq i32 %60, %62
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %land.lhs.true.112, %land.lhs.true.88, %land.lhs.true.64, %land.lhs.true.41
  store i32 1, i32* %retval
  br label %return

if.end.124:                                       ; preds = %land.lhs.true.112, %lor.lhs.false.99, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.124
  %63 = load i32, i32* %k, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.123
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define i32 @neighbor_of_string(i32 %pos, i32 %str) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %color = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
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
  %4 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %5, 20
  %sub4 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2418, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp ult i32 %6, 421
  br i1 %cmp5, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %pos.addr, align 4
  %div14 = sdiv i32 %9, 20
  %sub15 = sub nsw i32 %div14, 1
  %10 = load i32, i32* %pos.addr, align 4
  %rem16 = srem i32 %10, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2419, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %11 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %11, 20
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i32, i32* %color, align 4
  %cmp22 = icmp eq i32 %conv21, %13
  br i1 %cmp22, label %land.lhs.true.24, label %lor.lhs.false.32

land.lhs.true.24:                                 ; preds = %if.end.18
  %14 = load i32, i32* %pos.addr, align 4
  %add25 = add nsw i32 %14, 20
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom26
  %15 = load i32, i32* %arrayidx27, align 4
  %16 = load i32, i32* %str.addr, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom28
  %17 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %15, %17
  br i1 %cmp30, label %lor.end, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %land.lhs.true.24, %if.end.18
  %18 = load i32, i32* %pos.addr, align 4
  %sub33 = sub nsw i32 %18, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %19 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %19 to i32
  %20 = load i32, i32* %color, align 4
  %cmp37 = icmp eq i32 %conv36, %20
  br i1 %cmp37, label %land.lhs.true.39, label %lor.lhs.false.47

land.lhs.true.39:                                 ; preds = %lor.lhs.false.32
  %21 = load i32, i32* %pos.addr, align 4
  %sub40 = sub nsw i32 %21, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom41
  %22 = load i32, i32* %arrayidx42, align 4
  %23 = load i32, i32* %str.addr, align 4
  %idxprom43 = sext i32 %23 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom43
  %24 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %22, %24
  br i1 %cmp45, label %lor.end, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.39, %lor.lhs.false.32
  %25 = load i32, i32* %pos.addr, align 4
  %sub48 = sub nsw i32 %25, 20
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom49
  %26 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %26 to i32
  %27 = load i32, i32* %color, align 4
  %cmp52 = icmp eq i32 %conv51, %27
  br i1 %cmp52, label %land.lhs.true.54, label %lor.rhs

land.lhs.true.54:                                 ; preds = %lor.lhs.false.47
  %28 = load i32, i32* %pos.addr, align 4
  %sub55 = sub nsw i32 %28, 20
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom56
  %29 = load i32, i32* %arrayidx57, align 4
  %30 = load i32, i32* %str.addr, align 4
  %idxprom58 = sext i32 %30 to i64
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom58
  %31 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp eq i32 %29, %31
  br i1 %cmp60, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.54, %lor.lhs.false.47
  %32 = load i32, i32* %pos.addr, align 4
  %add62 = add nsw i32 %32, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %33 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %33 to i32
  %34 = load i32, i32* %color, align 4
  %cmp66 = icmp eq i32 %conv65, %34
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %35 = load i32, i32* %pos.addr, align 4
  %add68 = add nsw i32 %35, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom69
  %36 = load i32, i32* %arrayidx70, align 4
  %37 = load i32, i32* %str.addr, align 4
  %idxprom71 = sext i32 %37 to i64
  %arrayidx72 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom71
  %38 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %36, %38
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %39 = phi i1 [ false, %lor.rhs ], [ %cmp73, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.54, %land.lhs.true.39, %land.lhs.true.24
  %40 = phi i1 [ true, %land.lhs.true.54 ], [ true, %land.lhs.true.39 ], [ true, %land.lhs.true.24 ], [ %39, %land.end ]
  %lor.ext = zext i1 %40 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @has_neighbor(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %color.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %color.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.14

if.else.9:                                        ; preds = %lor.lhs.false
  %7 = load i32, i32* %pos.addr, align 4
  %div10 = sdiv i32 %7, 20
  %sub11 = sub nsw i32 %div10, 1
  %8 = load i32, i32* %pos.addr, align 4
  %rem12 = srem i32 %8, 20
  %sub13 = sub nsw i32 %rem12, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2432, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0), i32 %sub11, i32 %sub13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.8
  %9 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %9, 20
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %10 to i32
  %11 = load i32, i32* %color.addr, align 4
  %cmp18 = icmp eq i32 %conv17, %11
  br i1 %cmp18, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.14
  %12 = load i32, i32* %pos.addr, align 4
  %sub21 = sub nsw i32 %12, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %14 = load i32, i32* %color.addr, align 4
  %cmp25 = icmp eq i32 %conv24, %14
  br i1 %cmp25, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.20
  %15 = load i32, i32* %pos.addr, align 4
  %sub28 = sub nsw i32 %15, 20
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  %17 = load i32, i32* %color.addr, align 4
  %cmp32 = icmp eq i32 %conv31, %17
  br i1 %cmp32, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.27
  %18 = load i32, i32* %pos.addr, align 4
  %add34 = add nsw i32 %18, 1
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom35
  %19 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %19 to i32
  %20 = load i32, i32* %color.addr, align 4
  %cmp38 = icmp eq i32 %conv37, %20
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.27, %lor.lhs.false.20, %if.end.14
  %21 = phi i1 [ true, %lor.lhs.false.27 ], [ true, %lor.lhs.false.20 ], [ true, %if.end.14 ], [ %cmp38, %lor.rhs ]
  %lor.ext = zext i1 %21 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define i32 @same_string(i32 %str1, i32 %str2) #0 {
entry:
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2447, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %str1.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.35

if.else.30:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* %str1.addr, align 4
  %div31 = sdiv i32 %14, 20
  %sub32 = sub nsw i32 %div31, 1
  %15 = load i32, i32* %str1.addr, align 4
  %rem33 = srem i32 %15, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2449, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %str2.addr, align 4
  %idxprom36 = sext i32 %16 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %17 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %18 = load i32, i32* %str2.addr, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %if.end.53

if.else.48:                                       ; preds = %lor.lhs.false.41
  %20 = load i32, i32* %str2.addr, align 4
  %div49 = sdiv i32 %20, 20
  %sub50 = sub nsw i32 %div49, 1
  %21 = load i32, i32* %str2.addr, align 4
  %rem51 = srem i32 %21, 20
  %sub52 = sub nsw i32 %rem51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2450, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %sub50, i32 %sub52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.47
  %22 = load i32, i32* %str1.addr, align 4
  %idxprom54 = sext i32 %22 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom54
  %23 = load i32, i32* %arrayidx55, align 4
  %24 = load i32, i32* %str2.addr, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom56
  %25 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %23, %25
  %conv59 = zext i1 %cmp58 to i32
  ret i32 %conv59
}

; Function Attrs: nounwind uwtable
define i32 @adjacent_strings(i32 %str1, i32 %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i32, align 4
  %str2.addr = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %str1, i32* %str1.addr, align 4
  store i32 %str2, i32* %str2.addr, align 4
  %0 = load i32, i32* %str1.addr, align 4
  %cmp = icmp ult i32 %0, 421
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %str1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %str1.addr, align 4
  %div = sdiv i32 %3, 20
  %sub = sub nsw i32 %div, 1
  %4 = load i32, i32* %str1.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2466, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %str2.addr, align 4
  %cmp4 = icmp ult i32 %5, 421
  br i1 %cmp4, label %land.lhs.true.6, label %if.else.13

land.lhs.true.6:                                  ; preds = %if.end
  %6 = load i32, i32* %str2.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp10 = icmp ne i32 %conv9, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.6
  br label %if.end.18

if.else.13:                                       ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %str2.addr, align 4
  %div14 = sdiv i32 %8, 20
  %sub15 = sub nsw i32 %div14, 1
  %9 = load i32, i32* %str2.addr, align 4
  %rem16 = srem i32 %9, 20
  %sub17 = sub nsw i32 %rem16, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2467, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i32 %sub15, i32 %sub17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.13, %if.then.12
  %10 = load i32, i32* %str1.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 1
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %12 = load i32, i32* %str1.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %13 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.18
  br label %if.end.35

if.else.30:                                       ; preds = %lor.lhs.false
  %14 = load i32, i32* %str1.addr, align 4
  %div31 = sdiv i32 %14, 20
  %sub32 = sub nsw i32 %div31, 1
  %15 = load i32, i32* %str1.addr, align 4
  %rem33 = srem i32 %15, 20
  %sub34 = sub nsw i32 %rem33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2468, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0), i32 %sub32, i32 %sub34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.29
  %16 = load i32, i32* %str2.addr, align 4
  %idxprom36 = sext i32 %16 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %17 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 1
  br i1 %cmp39, label %if.then.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.35
  %18 = load i32, i32* %str2.addr, align 4
  %idxprom42 = sext i32 %18 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %19 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %cmp45 = icmp eq i32 %conv44, 2
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.41, %if.end.35
  br label %if.end.53

if.else.48:                                       ; preds = %lor.lhs.false.41
  %20 = load i32, i32* %str2.addr, align 4
  %div49 = sdiv i32 %20, 20
  %sub50 = sub nsw i32 %div49, 1
  %21 = load i32, i32* %str2.addr, align 4
  %rem51 = srem i32 %21, 20
  %sub52 = sub nsw i32 %rem51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2469, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i32 %sub50, i32 %sub52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.48, %if.then.47
  %22 = load i32, i32* %str1.addr, align 4
  %idxprom54 = sext i32 %22 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom54
  %23 = load i32, i32* %arrayidx55, align 4
  store i32 %23, i32* %s1, align 4
  %24 = load i32, i32* %str2.addr, align 4
  %idxprom56 = sext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom56
  %25 = load i32, i32* %arrayidx57, align 4
  store i32 %25, i32* %s2, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.53
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %s1, align 4
  %idxprom58 = sext i32 %27 to i64
  %arrayidx59 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom58
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx59, i32 0, i32 5
  %28 = load i32, i32* %neighbors, align 4
  %cmp60 = icmp slt i32 %26, %28
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %29 to i64
  %30 = load i32, i32* %s1, align 4
  %idxprom63 = sext i32 %30 to i64
  %arrayidx64 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom63
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx64, i32 0, i32 6
  %arrayidx65 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom62
  %31 = load i32, i32* %arrayidx65, align 4
  %32 = load i32, i32* %s2, align 4
  %cmp66 = icmp eq i32 %31, %32
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %33 = load i32, i32* %k, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.68
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @is_ko_point(i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2563, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %sub, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.34

if.then.9:                                        ; preds = %if.end
  %7 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %7, 20
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 3
  br i1 %cmp13, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.then.9
  %9 = load i32, i32* %pos.addr, align 4
  %add16 = add nsw i32 %9, 20
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %10 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %10 to i32
  store i32 %conv19, i32* %color, align 4
  br label %if.end.25

if.else.20:                                       ; preds = %if.then.9
  %11 = load i32, i32* %pos.addr, align 4
  %sub21 = sub nsw i32 %11, 20
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  store i32 %conv24, i32* %color, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.20, %if.then.15
  %13 = load i32, i32* %color, align 4
  %cmp26 = icmp eq i32 %13, 1
  br i1 %cmp26, label %land.lhs.true.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %14 = load i32, i32* %color, align 4
  %cmp28 = icmp eq i32 %14, 2
  br i1 %cmp28, label %land.lhs.true.30, label %if.end.33

land.lhs.true.30:                                 ; preds = %lor.lhs.false, %if.end.25
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %color, align 4
  %sub31 = sub nsw i32 3, %16
  %call = call i32 @is_ko(i32 %15, i32 %sub31, i32* null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.30
  store i32 1, i32* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.30, %lor.lhs.false
  br label %if.end.52

if.else.34:                                       ; preds = %if.end
  %17 = load i32, i32* %pos.addr, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom35
  %18 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = sext i32 %18 to i64
  %arrayidx38 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom37
  store %struct.string_data* %arrayidx38, %struct.string_data** %s, align 8
  %19 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %19, i32 0, i32 3
  %20 = load i32, i32* %liberties, align 4
  %cmp39 = icmp eq i32 %20, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.51

land.lhs.true.41:                                 ; preds = %if.else.34
  %21 = load %struct.string_data*, %struct.string_data** %s, align 8
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %21, i32 0, i32 1
  %22 = load i32, i32* %size, align 4
  %cmp42 = icmp eq i32 %22, 1
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.51

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %23 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %23, i32 0, i32 4
  %arrayidx45 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 0
  %24 = load i32, i32* %arrayidx45, align 4
  %25 = load %struct.string_data*, %struct.string_data** %s, align 8
  %color46 = getelementptr inbounds %struct.string_data, %struct.string_data* %25, i32 0, i32 0
  %26 = load i32, i32* %color46, align 4
  %sub47 = sub nsw i32 3, %26
  %call48 = call i32 @is_ko(i32 %24, i32 %sub47, i32* null)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.44
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.44, %land.lhs.true.41, %if.else.34
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.50, %if.then.32
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define i32 @does_capture_something(i32 %pos, i32 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %3, 20
  %sub2 = sub nsw i32 %div, 1
  %4 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %4, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2592, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %5, 20
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i32, i32* %other, align 4
  %cmp7 = icmp eq i32 %conv6, %7
  br i1 %cmp7, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %add9 = add nsw i32 %8, 20
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom10
  %9 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom12
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx13, i32 0, i32 3
  %10 = load i32, i32* %liberties, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.end
  %11 = load i32, i32* %pos.addr, align 4
  %sub18 = sub nsw i32 %11, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %13 = load i32, i32* %other, align 4
  %cmp22 = icmp eq i32 %conv21, %13
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.34

land.lhs.true.24:                                 ; preds = %if.end.17
  %14 = load i32, i32* %pos.addr, align 4
  %sub25 = sub nsw i32 %14, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom26
  %15 = load i32, i32* %arrayidx27, align 4
  %idxprom28 = sext i32 %15 to i64
  %arrayidx29 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom28
  %liberties30 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx29, i32 0, i32 3
  %16 = load i32, i32* %liberties30, align 4
  %cmp31 = icmp eq i32 %16, 1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.24, %if.end.17
  %17 = load i32, i32* %pos.addr, align 4
  %sub35 = sub nsw i32 %17, 20
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %18 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %18 to i32
  %19 = load i32, i32* %other, align 4
  %cmp39 = icmp eq i32 %conv38, %19
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.51

land.lhs.true.41:                                 ; preds = %if.end.34
  %20 = load i32, i32* %pos.addr, align 4
  %sub42 = sub nsw i32 %20, 20
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom43
  %21 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %21 to i64
  %arrayidx46 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom45
  %liberties47 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx46, i32 0, i32 3
  %22 = load i32, i32* %liberties47, align 4
  %cmp48 = icmp eq i32 %22, 1
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.41, %if.end.34
  %23 = load i32, i32* %pos.addr, align 4
  %add52 = add nsw i32 %23, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom53
  %24 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %24 to i32
  %25 = load i32, i32* %other, align 4
  %cmp56 = icmp eq i32 %conv55, %25
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.68

land.lhs.true.58:                                 ; preds = %if.end.51
  %26 = load i32, i32* %pos.addr, align 4
  %add59 = add nsw i32 %26, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom60
  %27 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %27 to i64
  %arrayidx63 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom62
  %liberties64 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx63, i32 0, i32 3
  %28 = load i32, i32* %liberties64, align 4
  %cmp65 = icmp eq i32 %28, 1
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.58
  store i32 1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.58, %if.end.51
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then.67, %if.then.50, %if.then.33, %if.then.16
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define void @mark_string(i32 %str, i8* %mx, i8 signext %mark) #0 {
entry:
  %str.addr = alloca i32, align 4
  %mx.addr = alloca i8*, align 8
  %mark.addr = alloca i8, align 1
  %pos = alloca i32, align 4
  store i32 %str, i32* %str.addr, align 4
  store i8* %mx, i8** %mx.addr, align 8
  store i8 %mark, i8* %mark.addr, align 1
  %0 = load i32, i32* %str.addr, align 4
  store i32 %0, i32* %pos, align 4
  %1 = load i32, i32* %str.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %str.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %6, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2621, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %7 = load i8, i8* %mark.addr, align 1
  %8 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i8*, i8** %mx.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8
  store i8 %7, i8* %arrayidx9, align 1
  %10 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  store i32 %11, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i32, i32* %pos, align 4
  %13 = load i32, i32* %str.addr, align 4
  %cmp12 = icmp ne i32 %12, %13
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @move_in_stack(i32 %pos, i32 %cutoff) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %cutoff.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %cutoff, i32* %cutoff.addr, align 4
  %0 = load i32, i32* %cutoff.addr, align 4
  store i32 %0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* @stackp, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* @stack, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %pos.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @get_move_from_stack(i32 %k, i32* %move, i32* %color) #0 {
entry:
  %k.addr = alloca i32, align 4
  %move.addr = alloca i32*, align 8
  %color.addr = alloca i32*, align 8
  store i32 %k, i32* %k.addr, align 4
  store i32* %move, i32** %move.addr, align 8
  store i32* %color, i32** %color.addr, align 8
  %0 = load i32, i32* %k.addr, align 4
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2649, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %k.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [361 x i32], [361 x i32]* @stack, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32*, i32** %move.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %k.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [361 x i32], [361 x i32]* @move_color, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32*, i32** %color.addr, align 8
  store i32 %6, i32* %7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stones_on_board(i32 %color) #0 {
entry:
  %color.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2666, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @stones_on_board.stone_count_for_position, align 4
  %2 = load i32, i32* @position_number, align 4
  %cmp1 = icmp ne i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* @stones_on_board.white_stones, align 4
  store i32 0, i32* @stones_on_board.black_stones, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load i32, i32* %pos, align 4
  %cmp3 = icmp slt i32 %3, 400
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv, 1
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %for.body
  %6 = load i32, i32* @stones_on_board.white_stones, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @stones_on_board.white_stones, align 4
  br label %if.end.16

if.else.7:                                        ; preds = %for.body
  %7 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom8
  %8 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 2
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.else.7
  %9 = load i32, i32* @stones_on_board.black_stones, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* @stones_on_board.black_stones, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.else.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %10 = load i32, i32* %pos, align 4
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* @position_number, align 4
  store i32 %11, i32* @stones_on_board.stone_count_for_position, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %12 = load i32, i32* %color.addr, align 4
  %and = and i32 %12, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  %13 = load i32, i32* @stones_on_board.black_stones, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ]
  %14 = load i32, i32* %color.addr, align 4
  %and19 = and i32 %14, 1
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %15 = load i32, i32* @stones_on_board.white_stones, align 4
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi i32 [ %15, %cond.true.21 ], [ 0, %cond.false.22 ]
  %add = add nsw i32 %cond, %cond24
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define void @reset_trymove_counter() #0 {
entry:
  store i32 0, i32* @trymove_counter, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get_trymove_counter() #0 {
entry:
  %0 = load i32, i32* @trymove_counter, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @incremental_order_moves(i32 %move, i32 %color, i32 %str, i32* %number_edges, i32* %number_same_string, i32* %number_own, i32* %number_opponent, i32* %captured_stones, i32* %threatened_stones, i32* %saved_stones, i32* %number_open) #0 {
entry:
  %move.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %number_edges.addr = alloca i32*, align 8
  %number_same_string.addr = alloca i32*, align 8
  %number_own.addr = alloca i32*, align 8
  %number_opponent.addr = alloca i32*, align 8
  %captured_stones.addr = alloca i32*, align 8
  %threatened_stones.addr = alloca i32*, align 8
  %saved_stones.addr = alloca i32*, align 8
  %number_open.addr = alloca i32*, align 8
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %t = alloca %struct.string_data*, align 8
  %s114 = alloca i32, align 4
  %r152 = alloca i32, align 4
  %t153 = alloca %struct.string_data*, align 8
  %s231 = alloca i32, align 4
  %r269 = alloca i32, align 4
  %t270 = alloca %struct.string_data*, align 8
  %s348 = alloca i32, align 4
  %r386 = alloca i32, align 4
  %t387 = alloca %struct.string_data*, align 8
  store i32 %move, i32* %move.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %number_edges, i32** %number_edges.addr, align 8
  store i32* %number_same_string, i32** %number_same_string.addr, align 8
  store i32* %number_own, i32** %number_own.addr, align 8
  store i32* %number_opponent, i32** %number_opponent.addr, align 8
  store i32* %captured_stones, i32** %captured_stones.addr, align 8
  store i32* %threatened_stones, i32** %threatened_stones.addr, align 8
  store i32* %saved_stones, i32** %saved_stones.addr, align 8
  store i32* %number_open, i32** %number_open.addr, align 8
  %0 = load i32, i32* @string_mark, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @string_mark, align 4
  %1 = load i32, i32* %move.addr, align 4
  %add = add nsw i32 %1, 20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 3
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %number_edges.addr, align 8
  %4 = load i32, i32* %3, align 4
  %inc2 = add nsw i32 %4, 1
  store i32 %inc2, i32* %3, align 4
  br label %if.end.96

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %move.addr, align 4
  %add3 = add nsw i32 %5, 20
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else
  %7 = load i32*, i32** %number_open.addr, align 8
  %8 = load i32, i32* %7, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %7, align 4
  br label %if.end.95

if.else.11:                                       ; preds = %if.else
  %9 = load i32, i32* %move.addr, align 4
  %add12 = add nsw i32 %9, 20
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom13
  %10 = load i32, i32* %arrayidx14, align 4
  store i32 %10, i32* %s, align 4
  %11 = load i32, i32* %str.addr, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx16, align 4
  %13 = load i32, i32* %s, align 4
  %cmp17 = icmp eq i32 %12, %13
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else.11
  %14 = load i32*, i32** %number_same_string.addr, align 8
  %15 = load i32, i32* %14, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else.11
  %16 = load i32, i32* %move.addr, align 4
  %add21 = add nsw i32 %16, 20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %17 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %17 to i32
  %18 = load i32, i32* %color.addr, align 4
  %cmp25 = icmp eq i32 %conv24, %18
  br i1 %cmp25, label %if.then.27, label %if.else.38

if.then.27:                                       ; preds = %if.end
  %19 = load i32*, i32** %number_own.addr, align 8
  %20 = load i32, i32* %19, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %19, align 4
  %21 = load i32, i32* %s, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom29
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx30, i32 0, i32 3
  %22 = load i32, i32* %liberties, align 4
  %cmp31 = icmp eq i32 %22, 1
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.then.27
  %23 = load i32, i32* %s, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom34
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx35, i32 0, i32 1
  %24 = load i32, i32* %size, align 4
  %25 = load i32*, i32** %saved_stones.addr, align 8
  %26 = load i32, i32* %25, align 4
  %add36 = add nsw i32 %26, %24
  store i32 %add36, i32* %25, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.then.27
  br label %if.end.94

if.else.38:                                       ; preds = %if.end
  %27 = load i32*, i32** %number_opponent.addr, align 8
  %28 = load i32, i32* %27, align 4
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %27, align 4
  %29 = load i32, i32* %s, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom40
  %liberties42 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx41, i32 0, i32 3
  %30 = load i32, i32* %liberties42, align 4
  %cmp43 = icmp eq i32 %30, 1
  br i1 %cmp43, label %if.then.45, label %if.else.68

if.then.45:                                       ; preds = %if.else.38
  %31 = load i32, i32* %s, align 4
  %idxprom46 = sext i32 %31 to i64
  %arrayidx47 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom46
  %size48 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx47, i32 0, i32 1
  %32 = load i32, i32* %size48, align 4
  %33 = load i32*, i32** %captured_stones.addr, align 8
  %34 = load i32, i32* %33, align 4
  %add49 = add nsw i32 %34, %32
  store i32 %add49, i32* %33, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.45
  %35 = load i32, i32* %r, align 4
  %36 = load i32, i32* %s, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom50
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx51, i32 0, i32 5
  %37 = load i32, i32* %neighbors, align 4
  %cmp52 = icmp slt i32 %35, %37
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %r, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load i32, i32* %s, align 4
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom55
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx56, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom54
  %40 = load i32, i32* %arrayidx57, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom58
  store %struct.string_data* %arrayidx59, %struct.string_data** %t, align 8
  %41 = load %struct.string_data*, %struct.string_data** %t, align 8
  %liberties60 = getelementptr inbounds %struct.string_data, %struct.string_data* %41, i32 0, i32 3
  %42 = load i32, i32* %liberties60, align 4
  %cmp61 = icmp eq i32 %42, 1
  br i1 %cmp61, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %for.body
  %43 = load %struct.string_data*, %struct.string_data** %t, align 8
  %size64 = getelementptr inbounds %struct.string_data, %struct.string_data* %43, i32 0, i32 1
  %44 = load i32, i32* %size64, align 4
  %45 = load i32*, i32** %saved_stones.addr, align 8
  %46 = load i32, i32* %45, align 4
  %add65 = add nsw i32 %46, %44
  store i32 %add65, i32* %45, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %47 = load i32, i32* %r, align 4
  %inc67 = add nsw i32 %47, 1
  store i32 %inc67, i32* %r, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.93

if.else.68:                                       ; preds = %if.else.38
  %48 = load i32, i32* %s, align 4
  %idxprom69 = sext i32 %48 to i64
  %arrayidx70 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom69
  %liberties71 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx70, i32 0, i32 3
  %49 = load i32, i32* %liberties71, align 4
  %cmp72 = icmp eq i32 %49, 2
  br i1 %cmp72, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.else.68
  %50 = load i32, i32* %move.addr, align 4
  %add74 = add nsw i32 %50, 20
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom75
  %51 = load i32, i32* %arrayidx76, align 4
  %idxprom77 = sext i32 %51 to i64
  %arrayidx78 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom77
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx78, i32 0, i32 7
  %52 = load i32, i32* %mark, align 4
  %53 = load i32, i32* @string_mark, align 4
  %cmp79 = icmp ne i32 %52, %53
  br i1 %cmp79, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %s, align 4
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom82
  %size84 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx83, i32 0, i32 1
  %55 = load i32, i32* %size84, align 4
  %56 = load i32*, i32** %threatened_stones.addr, align 8
  %57 = load i32, i32* %56, align 4
  %add85 = add nsw i32 %57, %55
  store i32 %add85, i32* %56, align 4
  %58 = load i32, i32* @string_mark, align 4
  %59 = load i32, i32* %move.addr, align 4
  %add86 = add nsw i32 %59, 20
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom87
  %60 = load i32, i32* %arrayidx88, align 4
  %idxprom89 = sext i32 %60 to i64
  %arrayidx90 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom89
  %mark91 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx90, i32 0, i32 7
  store i32 %58, i32* %mark91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.81, %land.lhs.true, %if.else.68
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %for.end
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.37
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.9
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then
  %61 = load i32, i32* %move.addr, align 4
  %sub = sub nsw i32 %61, 1
  %idxprom97 = sext i32 %sub to i64
  %arrayidx98 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom97
  %62 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %62 to i32
  %cmp100 = icmp ne i32 %conv99, 3
  br i1 %cmp100, label %if.else.104, label %if.then.102

if.then.102:                                      ; preds = %if.end.96
  %63 = load i32*, i32** %number_edges.addr, align 8
  %64 = load i32, i32* %63, align 4
  %inc103 = add nsw i32 %64, 1
  store i32 %inc103, i32* %63, align 4
  br label %if.end.212

if.else.104:                                      ; preds = %if.end.96
  %65 = load i32, i32* %move.addr, align 4
  %sub105 = sub nsw i32 %65, 1
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom106
  %66 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %66 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.else.104
  %67 = load i32*, i32** %number_open.addr, align 8
  %68 = load i32, i32* %67, align 4
  %inc112 = add nsw i32 %68, 1
  store i32 %inc112, i32* %67, align 4
  br label %if.end.211

if.else.113:                                      ; preds = %if.else.104
  %69 = load i32, i32* %move.addr, align 4
  %sub115 = sub nsw i32 %69, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom116
  %70 = load i32, i32* %arrayidx117, align 4
  store i32 %70, i32* %s114, align 4
  %71 = load i32, i32* %str.addr, align 4
  %idxprom118 = sext i32 %71 to i64
  %arrayidx119 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom118
  %72 = load i32, i32* %arrayidx119, align 4
  %73 = load i32, i32* %s114, align 4
  %cmp120 = icmp eq i32 %72, %73
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.else.113
  %74 = load i32*, i32** %number_same_string.addr, align 8
  %75 = load i32, i32* %74, align 4
  %inc123 = add nsw i32 %75, 1
  store i32 %inc123, i32* %74, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.else.113
  %76 = load i32, i32* %move.addr, align 4
  %sub125 = sub nsw i32 %76, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom126
  %77 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %77 to i32
  %78 = load i32, i32* %color.addr, align 4
  %cmp129 = icmp eq i32 %conv128, %78
  br i1 %cmp129, label %if.then.131, label %if.else.144

if.then.131:                                      ; preds = %if.end.124
  %79 = load i32*, i32** %number_own.addr, align 8
  %80 = load i32, i32* %79, align 4
  %inc132 = add nsw i32 %80, 1
  store i32 %inc132, i32* %79, align 4
  %81 = load i32, i32* %s114, align 4
  %idxprom133 = sext i32 %81 to i64
  %arrayidx134 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom133
  %liberties135 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx134, i32 0, i32 3
  %82 = load i32, i32* %liberties135, align 4
  %cmp136 = icmp eq i32 %82, 1
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.then.131
  %83 = load i32, i32* %s114, align 4
  %idxprom139 = sext i32 %83 to i64
  %arrayidx140 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom139
  %size141 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx140, i32 0, i32 1
  %84 = load i32, i32* %size141, align 4
  %85 = load i32*, i32** %saved_stones.addr, align 8
  %86 = load i32, i32* %85, align 4
  %add142 = add nsw i32 %86, %84
  store i32 %add142, i32* %85, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.then.131
  br label %if.end.210

if.else.144:                                      ; preds = %if.end.124
  %87 = load i32*, i32** %number_opponent.addr, align 8
  %88 = load i32, i32* %87, align 4
  %inc145 = add nsw i32 %88, 1
  store i32 %inc145, i32* %87, align 4
  %89 = load i32, i32* %s114, align 4
  %idxprom146 = sext i32 %89 to i64
  %arrayidx147 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom146
  %liberties148 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx147, i32 0, i32 3
  %90 = load i32, i32* %liberties148, align 4
  %cmp149 = icmp eq i32 %90, 1
  br i1 %cmp149, label %if.then.151, label %if.else.182

if.then.151:                                      ; preds = %if.else.144
  %91 = load i32, i32* %s114, align 4
  %idxprom154 = sext i32 %91 to i64
  %arrayidx155 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom154
  %size156 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx155, i32 0, i32 1
  %92 = load i32, i32* %size156, align 4
  %93 = load i32*, i32** %captured_stones.addr, align 8
  %94 = load i32, i32* %93, align 4
  %add157 = add nsw i32 %94, %92
  store i32 %add157, i32* %93, align 4
  store i32 0, i32* %r152, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.179, %if.then.151
  %95 = load i32, i32* %r152, align 4
  %96 = load i32, i32* %s114, align 4
  %idxprom159 = sext i32 %96 to i64
  %arrayidx160 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom159
  %neighbors161 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx160, i32 0, i32 5
  %97 = load i32, i32* %neighbors161, align 4
  %cmp162 = icmp slt i32 %95, %97
  br i1 %cmp162, label %for.body.164, label %for.end.181

for.body.164:                                     ; preds = %for.cond.158
  %98 = load i32, i32* %r152, align 4
  %idxprom165 = sext i32 %98 to i64
  %99 = load i32, i32* %s114, align 4
  %idxprom166 = sext i32 %99 to i64
  %arrayidx167 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom166
  %neighborlist168 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx167, i32 0, i32 6
  %arrayidx169 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist168, i32 0, i64 %idxprom165
  %100 = load i32, i32* %arrayidx169, align 4
  %idxprom170 = sext i32 %100 to i64
  %arrayidx171 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom170
  store %struct.string_data* %arrayidx171, %struct.string_data** %t153, align 8
  %101 = load %struct.string_data*, %struct.string_data** %t153, align 8
  %liberties172 = getelementptr inbounds %struct.string_data, %struct.string_data* %101, i32 0, i32 3
  %102 = load i32, i32* %liberties172, align 4
  %cmp173 = icmp eq i32 %102, 1
  br i1 %cmp173, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %for.body.164
  %103 = load %struct.string_data*, %struct.string_data** %t153, align 8
  %size176 = getelementptr inbounds %struct.string_data, %struct.string_data* %103, i32 0, i32 1
  %104 = load i32, i32* %size176, align 4
  %105 = load i32*, i32** %saved_stones.addr, align 8
  %106 = load i32, i32* %105, align 4
  %add177 = add nsw i32 %106, %104
  store i32 %add177, i32* %105, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %for.body.164
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %107 = load i32, i32* %r152, align 4
  %inc180 = add nsw i32 %107, 1
  store i32 %inc180, i32* %r152, align 4
  br label %for.cond.158

for.end.181:                                      ; preds = %for.cond.158
  br label %if.end.209

if.else.182:                                      ; preds = %if.else.144
  %108 = load i32, i32* %s114, align 4
  %idxprom183 = sext i32 %108 to i64
  %arrayidx184 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom183
  %liberties185 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx184, i32 0, i32 3
  %109 = load i32, i32* %liberties185, align 4
  %cmp186 = icmp eq i32 %109, 2
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.208

land.lhs.true.188:                                ; preds = %if.else.182
  %110 = load i32, i32* %move.addr, align 4
  %sub189 = sub nsw i32 %110, 1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom190
  %111 = load i32, i32* %arrayidx191, align 4
  %idxprom192 = sext i32 %111 to i64
  %arrayidx193 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom192
  %mark194 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx193, i32 0, i32 7
  %112 = load i32, i32* %mark194, align 4
  %113 = load i32, i32* @string_mark, align 4
  %cmp195 = icmp ne i32 %112, %113
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %land.lhs.true.188
  %114 = load i32, i32* %s114, align 4
  %idxprom198 = sext i32 %114 to i64
  %arrayidx199 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom198
  %size200 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx199, i32 0, i32 1
  %115 = load i32, i32* %size200, align 4
  %116 = load i32*, i32** %threatened_stones.addr, align 8
  %117 = load i32, i32* %116, align 4
  %add201 = add nsw i32 %117, %115
  store i32 %add201, i32* %116, align 4
  %118 = load i32, i32* @string_mark, align 4
  %119 = load i32, i32* %move.addr, align 4
  %sub202 = sub nsw i32 %119, 1
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom203
  %120 = load i32, i32* %arrayidx204, align 4
  %idxprom205 = sext i32 %120 to i64
  %arrayidx206 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom205
  %mark207 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx206, i32 0, i32 7
  store i32 %118, i32* %mark207, align 4
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.197, %land.lhs.true.188, %if.else.182
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %for.end.181
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.143
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.then.111
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.211, %if.then.102
  %121 = load i32, i32* %move.addr, align 4
  %sub213 = sub nsw i32 %121, 20
  %idxprom214 = sext i32 %sub213 to i64
  %arrayidx215 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom214
  %122 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %122 to i32
  %cmp217 = icmp ne i32 %conv216, 3
  br i1 %cmp217, label %if.else.221, label %if.then.219

if.then.219:                                      ; preds = %if.end.212
  %123 = load i32*, i32** %number_edges.addr, align 8
  %124 = load i32, i32* %123, align 4
  %inc220 = add nsw i32 %124, 1
  store i32 %inc220, i32* %123, align 4
  br label %if.end.329

if.else.221:                                      ; preds = %if.end.212
  %125 = load i32, i32* %move.addr, align 4
  %sub222 = sub nsw i32 %125, 20
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom223
  %126 = load i8, i8* %arrayidx224, align 1
  %conv225 = zext i8 %126 to i32
  %cmp226 = icmp eq i32 %conv225, 0
  br i1 %cmp226, label %if.then.228, label %if.else.230

if.then.228:                                      ; preds = %if.else.221
  %127 = load i32*, i32** %number_open.addr, align 8
  %128 = load i32, i32* %127, align 4
  %inc229 = add nsw i32 %128, 1
  store i32 %inc229, i32* %127, align 4
  br label %if.end.328

if.else.230:                                      ; preds = %if.else.221
  %129 = load i32, i32* %move.addr, align 4
  %sub232 = sub nsw i32 %129, 20
  %idxprom233 = sext i32 %sub232 to i64
  %arrayidx234 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom233
  %130 = load i32, i32* %arrayidx234, align 4
  store i32 %130, i32* %s231, align 4
  %131 = load i32, i32* %str.addr, align 4
  %idxprom235 = sext i32 %131 to i64
  %arrayidx236 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom235
  %132 = load i32, i32* %arrayidx236, align 4
  %133 = load i32, i32* %s231, align 4
  %cmp237 = icmp eq i32 %132, %133
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %if.else.230
  %134 = load i32*, i32** %number_same_string.addr, align 8
  %135 = load i32, i32* %134, align 4
  %inc240 = add nsw i32 %135, 1
  store i32 %inc240, i32* %134, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %if.else.230
  %136 = load i32, i32* %move.addr, align 4
  %sub242 = sub nsw i32 %136, 20
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom243
  %137 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %137 to i32
  %138 = load i32, i32* %color.addr, align 4
  %cmp246 = icmp eq i32 %conv245, %138
  br i1 %cmp246, label %if.then.248, label %if.else.261

if.then.248:                                      ; preds = %if.end.241
  %139 = load i32*, i32** %number_own.addr, align 8
  %140 = load i32, i32* %139, align 4
  %inc249 = add nsw i32 %140, 1
  store i32 %inc249, i32* %139, align 4
  %141 = load i32, i32* %s231, align 4
  %idxprom250 = sext i32 %141 to i64
  %arrayidx251 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom250
  %liberties252 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx251, i32 0, i32 3
  %142 = load i32, i32* %liberties252, align 4
  %cmp253 = icmp eq i32 %142, 1
  br i1 %cmp253, label %if.then.255, label %if.end.260

if.then.255:                                      ; preds = %if.then.248
  %143 = load i32, i32* %s231, align 4
  %idxprom256 = sext i32 %143 to i64
  %arrayidx257 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom256
  %size258 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx257, i32 0, i32 1
  %144 = load i32, i32* %size258, align 4
  %145 = load i32*, i32** %saved_stones.addr, align 8
  %146 = load i32, i32* %145, align 4
  %add259 = add nsw i32 %146, %144
  store i32 %add259, i32* %145, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.255, %if.then.248
  br label %if.end.327

if.else.261:                                      ; preds = %if.end.241
  %147 = load i32*, i32** %number_opponent.addr, align 8
  %148 = load i32, i32* %147, align 4
  %inc262 = add nsw i32 %148, 1
  store i32 %inc262, i32* %147, align 4
  %149 = load i32, i32* %s231, align 4
  %idxprom263 = sext i32 %149 to i64
  %arrayidx264 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom263
  %liberties265 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx264, i32 0, i32 3
  %150 = load i32, i32* %liberties265, align 4
  %cmp266 = icmp eq i32 %150, 1
  br i1 %cmp266, label %if.then.268, label %if.else.299

if.then.268:                                      ; preds = %if.else.261
  %151 = load i32, i32* %s231, align 4
  %idxprom271 = sext i32 %151 to i64
  %arrayidx272 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom271
  %size273 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx272, i32 0, i32 1
  %152 = load i32, i32* %size273, align 4
  %153 = load i32*, i32** %captured_stones.addr, align 8
  %154 = load i32, i32* %153, align 4
  %add274 = add nsw i32 %154, %152
  store i32 %add274, i32* %153, align 4
  store i32 0, i32* %r269, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.296, %if.then.268
  %155 = load i32, i32* %r269, align 4
  %156 = load i32, i32* %s231, align 4
  %idxprom276 = sext i32 %156 to i64
  %arrayidx277 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom276
  %neighbors278 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx277, i32 0, i32 5
  %157 = load i32, i32* %neighbors278, align 4
  %cmp279 = icmp slt i32 %155, %157
  br i1 %cmp279, label %for.body.281, label %for.end.298

for.body.281:                                     ; preds = %for.cond.275
  %158 = load i32, i32* %r269, align 4
  %idxprom282 = sext i32 %158 to i64
  %159 = load i32, i32* %s231, align 4
  %idxprom283 = sext i32 %159 to i64
  %arrayidx284 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom283
  %neighborlist285 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx284, i32 0, i32 6
  %arrayidx286 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist285, i32 0, i64 %idxprom282
  %160 = load i32, i32* %arrayidx286, align 4
  %idxprom287 = sext i32 %160 to i64
  %arrayidx288 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom287
  store %struct.string_data* %arrayidx288, %struct.string_data** %t270, align 8
  %161 = load %struct.string_data*, %struct.string_data** %t270, align 8
  %liberties289 = getelementptr inbounds %struct.string_data, %struct.string_data* %161, i32 0, i32 3
  %162 = load i32, i32* %liberties289, align 4
  %cmp290 = icmp eq i32 %162, 1
  br i1 %cmp290, label %if.then.292, label %if.end.295

if.then.292:                                      ; preds = %for.body.281
  %163 = load %struct.string_data*, %struct.string_data** %t270, align 8
  %size293 = getelementptr inbounds %struct.string_data, %struct.string_data* %163, i32 0, i32 1
  %164 = load i32, i32* %size293, align 4
  %165 = load i32*, i32** %saved_stones.addr, align 8
  %166 = load i32, i32* %165, align 4
  %add294 = add nsw i32 %166, %164
  store i32 %add294, i32* %165, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.292, %for.body.281
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.295
  %167 = load i32, i32* %r269, align 4
  %inc297 = add nsw i32 %167, 1
  store i32 %inc297, i32* %r269, align 4
  br label %for.cond.275

for.end.298:                                      ; preds = %for.cond.275
  br label %if.end.326

if.else.299:                                      ; preds = %if.else.261
  %168 = load i32, i32* %s231, align 4
  %idxprom300 = sext i32 %168 to i64
  %arrayidx301 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom300
  %liberties302 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx301, i32 0, i32 3
  %169 = load i32, i32* %liberties302, align 4
  %cmp303 = icmp eq i32 %169, 2
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.325

land.lhs.true.305:                                ; preds = %if.else.299
  %170 = load i32, i32* %move.addr, align 4
  %sub306 = sub nsw i32 %170, 20
  %idxprom307 = sext i32 %sub306 to i64
  %arrayidx308 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom307
  %171 = load i32, i32* %arrayidx308, align 4
  %idxprom309 = sext i32 %171 to i64
  %arrayidx310 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom309
  %mark311 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx310, i32 0, i32 7
  %172 = load i32, i32* %mark311, align 4
  %173 = load i32, i32* @string_mark, align 4
  %cmp312 = icmp ne i32 %172, %173
  br i1 %cmp312, label %if.then.314, label %if.end.325

if.then.314:                                      ; preds = %land.lhs.true.305
  %174 = load i32, i32* %s231, align 4
  %idxprom315 = sext i32 %174 to i64
  %arrayidx316 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom315
  %size317 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx316, i32 0, i32 1
  %175 = load i32, i32* %size317, align 4
  %176 = load i32*, i32** %threatened_stones.addr, align 8
  %177 = load i32, i32* %176, align 4
  %add318 = add nsw i32 %177, %175
  store i32 %add318, i32* %176, align 4
  %178 = load i32, i32* @string_mark, align 4
  %179 = load i32, i32* %move.addr, align 4
  %sub319 = sub nsw i32 %179, 20
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom320
  %180 = load i32, i32* %arrayidx321, align 4
  %idxprom322 = sext i32 %180 to i64
  %arrayidx323 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom322
  %mark324 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx323, i32 0, i32 7
  store i32 %178, i32* %mark324, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.314, %land.lhs.true.305, %if.else.299
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %for.end.298
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.end.260
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.228
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.219
  %181 = load i32, i32* %move.addr, align 4
  %add330 = add nsw i32 %181, 1
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom331
  %182 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %182 to i32
  %cmp334 = icmp ne i32 %conv333, 3
  br i1 %cmp334, label %if.else.338, label %if.then.336

if.then.336:                                      ; preds = %if.end.329
  %183 = load i32*, i32** %number_edges.addr, align 8
  %184 = load i32, i32* %183, align 4
  %inc337 = add nsw i32 %184, 1
  store i32 %inc337, i32* %183, align 4
  br label %if.end.446

if.else.338:                                      ; preds = %if.end.329
  %185 = load i32, i32* %move.addr, align 4
  %add339 = add nsw i32 %185, 1
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom340
  %186 = load i8, i8* %arrayidx341, align 1
  %conv342 = zext i8 %186 to i32
  %cmp343 = icmp eq i32 %conv342, 0
  br i1 %cmp343, label %if.then.345, label %if.else.347

if.then.345:                                      ; preds = %if.else.338
  %187 = load i32*, i32** %number_open.addr, align 8
  %188 = load i32, i32* %187, align 4
  %inc346 = add nsw i32 %188, 1
  store i32 %inc346, i32* %187, align 4
  br label %if.end.445

if.else.347:                                      ; preds = %if.else.338
  %189 = load i32, i32* %move.addr, align 4
  %add349 = add nsw i32 %189, 1
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom350
  %190 = load i32, i32* %arrayidx351, align 4
  store i32 %190, i32* %s348, align 4
  %191 = load i32, i32* %str.addr, align 4
  %idxprom352 = sext i32 %191 to i64
  %arrayidx353 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom352
  %192 = load i32, i32* %arrayidx353, align 4
  %193 = load i32, i32* %s348, align 4
  %cmp354 = icmp eq i32 %192, %193
  br i1 %cmp354, label %if.then.356, label %if.end.358

if.then.356:                                      ; preds = %if.else.347
  %194 = load i32*, i32** %number_same_string.addr, align 8
  %195 = load i32, i32* %194, align 4
  %inc357 = add nsw i32 %195, 1
  store i32 %inc357, i32* %194, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.356, %if.else.347
  %196 = load i32, i32* %move.addr, align 4
  %add359 = add nsw i32 %196, 1
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom360
  %197 = load i8, i8* %arrayidx361, align 1
  %conv362 = zext i8 %197 to i32
  %198 = load i32, i32* %color.addr, align 4
  %cmp363 = icmp eq i32 %conv362, %198
  br i1 %cmp363, label %if.then.365, label %if.else.378

if.then.365:                                      ; preds = %if.end.358
  %199 = load i32*, i32** %number_own.addr, align 8
  %200 = load i32, i32* %199, align 4
  %inc366 = add nsw i32 %200, 1
  store i32 %inc366, i32* %199, align 4
  %201 = load i32, i32* %s348, align 4
  %idxprom367 = sext i32 %201 to i64
  %arrayidx368 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom367
  %liberties369 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx368, i32 0, i32 3
  %202 = load i32, i32* %liberties369, align 4
  %cmp370 = icmp eq i32 %202, 1
  br i1 %cmp370, label %if.then.372, label %if.end.377

if.then.372:                                      ; preds = %if.then.365
  %203 = load i32, i32* %s348, align 4
  %idxprom373 = sext i32 %203 to i64
  %arrayidx374 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom373
  %size375 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx374, i32 0, i32 1
  %204 = load i32, i32* %size375, align 4
  %205 = load i32*, i32** %saved_stones.addr, align 8
  %206 = load i32, i32* %205, align 4
  %add376 = add nsw i32 %206, %204
  store i32 %add376, i32* %205, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.372, %if.then.365
  br label %if.end.444

if.else.378:                                      ; preds = %if.end.358
  %207 = load i32*, i32** %number_opponent.addr, align 8
  %208 = load i32, i32* %207, align 4
  %inc379 = add nsw i32 %208, 1
  store i32 %inc379, i32* %207, align 4
  %209 = load i32, i32* %s348, align 4
  %idxprom380 = sext i32 %209 to i64
  %arrayidx381 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom380
  %liberties382 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx381, i32 0, i32 3
  %210 = load i32, i32* %liberties382, align 4
  %cmp383 = icmp eq i32 %210, 1
  br i1 %cmp383, label %if.then.385, label %if.else.416

if.then.385:                                      ; preds = %if.else.378
  %211 = load i32, i32* %s348, align 4
  %idxprom388 = sext i32 %211 to i64
  %arrayidx389 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom388
  %size390 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx389, i32 0, i32 1
  %212 = load i32, i32* %size390, align 4
  %213 = load i32*, i32** %captured_stones.addr, align 8
  %214 = load i32, i32* %213, align 4
  %add391 = add nsw i32 %214, %212
  store i32 %add391, i32* %213, align 4
  store i32 0, i32* %r386, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.413, %if.then.385
  %215 = load i32, i32* %r386, align 4
  %216 = load i32, i32* %s348, align 4
  %idxprom393 = sext i32 %216 to i64
  %arrayidx394 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom393
  %neighbors395 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx394, i32 0, i32 5
  %217 = load i32, i32* %neighbors395, align 4
  %cmp396 = icmp slt i32 %215, %217
  br i1 %cmp396, label %for.body.398, label %for.end.415

for.body.398:                                     ; preds = %for.cond.392
  %218 = load i32, i32* %r386, align 4
  %idxprom399 = sext i32 %218 to i64
  %219 = load i32, i32* %s348, align 4
  %idxprom400 = sext i32 %219 to i64
  %arrayidx401 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom400
  %neighborlist402 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx401, i32 0, i32 6
  %arrayidx403 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist402, i32 0, i64 %idxprom399
  %220 = load i32, i32* %arrayidx403, align 4
  %idxprom404 = sext i32 %220 to i64
  %arrayidx405 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom404
  store %struct.string_data* %arrayidx405, %struct.string_data** %t387, align 8
  %221 = load %struct.string_data*, %struct.string_data** %t387, align 8
  %liberties406 = getelementptr inbounds %struct.string_data, %struct.string_data* %221, i32 0, i32 3
  %222 = load i32, i32* %liberties406, align 4
  %cmp407 = icmp eq i32 %222, 1
  br i1 %cmp407, label %if.then.409, label %if.end.412

if.then.409:                                      ; preds = %for.body.398
  %223 = load %struct.string_data*, %struct.string_data** %t387, align 8
  %size410 = getelementptr inbounds %struct.string_data, %struct.string_data* %223, i32 0, i32 1
  %224 = load i32, i32* %size410, align 4
  %225 = load i32*, i32** %saved_stones.addr, align 8
  %226 = load i32, i32* %225, align 4
  %add411 = add nsw i32 %226, %224
  store i32 %add411, i32* %225, align 4
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.409, %for.body.398
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %227 = load i32, i32* %r386, align 4
  %inc414 = add nsw i32 %227, 1
  store i32 %inc414, i32* %r386, align 4
  br label %for.cond.392

for.end.415:                                      ; preds = %for.cond.392
  br label %if.end.443

if.else.416:                                      ; preds = %if.else.378
  %228 = load i32, i32* %s348, align 4
  %idxprom417 = sext i32 %228 to i64
  %arrayidx418 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom417
  %liberties419 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx418, i32 0, i32 3
  %229 = load i32, i32* %liberties419, align 4
  %cmp420 = icmp eq i32 %229, 2
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.442

land.lhs.true.422:                                ; preds = %if.else.416
  %230 = load i32, i32* %move.addr, align 4
  %add423 = add nsw i32 %230, 1
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom424
  %231 = load i32, i32* %arrayidx425, align 4
  %idxprom426 = sext i32 %231 to i64
  %arrayidx427 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom426
  %mark428 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx427, i32 0, i32 7
  %232 = load i32, i32* %mark428, align 4
  %233 = load i32, i32* @string_mark, align 4
  %cmp429 = icmp ne i32 %232, %233
  br i1 %cmp429, label %if.then.431, label %if.end.442

if.then.431:                                      ; preds = %land.lhs.true.422
  %234 = load i32, i32* %s348, align 4
  %idxprom432 = sext i32 %234 to i64
  %arrayidx433 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom432
  %size434 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx433, i32 0, i32 1
  %235 = load i32, i32* %size434, align 4
  %236 = load i32*, i32** %threatened_stones.addr, align 8
  %237 = load i32, i32* %236, align 4
  %add435 = add nsw i32 %237, %235
  store i32 %add435, i32* %236, align 4
  %238 = load i32, i32* @string_mark, align 4
  %239 = load i32, i32* %move.addr, align 4
  %add436 = add nsw i32 %239, 1
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom437
  %240 = load i32, i32* %arrayidx438, align 4
  %idxprom439 = sext i32 %240 to i64
  %arrayidx440 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom439
  %mark441 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx440, i32 0, i32 7
  store i32 %238, i32* %mark441, align 4
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.431, %land.lhs.true.422, %if.else.416
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %for.end.415
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %if.end.377
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %if.then.345
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %if.then.336
  ret void
}

declare void @showboard(i32) #1

declare void @hashdata_invert_ko(%struct.Hash_data*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @do_play_move(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %other = alloca i32, align 4
  %captured_stones = alloca i32, align 4
  %neighbor_allies = alloca i32, align 4
  %have_liberties = alloca i32, align 4
  %s = alloca i32, align 4
  %south = alloca i32, align 4
  %west = alloca i32, align 4
  %north = alloca i32, align 4
  %east = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  store i32 0, i32* %captured_stones, align 4
  store i32 0, i32* %neighbor_allies, align 4
  store i32 0, i32* %have_liberties, align 4
  store i32 -1, i32* %s, align 4
  %1 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %1, 20
  store i32 %add, i32* %south, align 4
  %2 = load i32, i32* %pos.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %west, align 4
  %3 = load i32, i32* %pos.addr, align 4
  %sub2 = sub nsw i32 %3, 20
  store i32 %sub2, i32* %north, align 4
  %4 = load i32, i32* %pos.addr, align 4
  %add3 = add nsw i32 %4, 1
  store i32 %add3, i32* %east, align 4
  %5 = load i32, i32* %south, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %other, align 4
  %cmp = icmp eq i32 %conv, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %south, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom7
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx8, i32 0, i32 3
  %10 = load i32, i32* %liberties, align 4
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %south, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  %call = call i32 @do_remove_string(i32 %12)
  %13 = load i32, i32* %captured_stones, align 4
  %add13 = add nsw i32 %13, %call
  store i32 %add13, i32* %captured_stones, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load i32, i32* %west, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %16 = load i32, i32* %other, align 4
  %cmp17 = icmp eq i32 %conv16, %16
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.32

land.lhs.true.19:                                 ; preds = %if.end
  %17 = load i32, i32* %west, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom20
  %18 = load i32, i32* %arrayidx21, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom22
  %liberties24 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx23, i32 0, i32 3
  %19 = load i32, i32* %liberties24, align 4
  %cmp25 = icmp eq i32 %19, 1
  br i1 %cmp25, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %land.lhs.true.19
  %20 = load i32, i32* %west, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom28
  %21 = load i32, i32* %arrayidx29, align 4
  %call30 = call i32 @do_remove_string(i32 %21)
  %22 = load i32, i32* %captured_stones, align 4
  %add31 = add nsw i32 %22, %call30
  store i32 %add31, i32* %captured_stones, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %land.lhs.true.19, %if.end
  %23 = load i32, i32* %north, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom33
  %24 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %24 to i32
  %25 = load i32, i32* %other, align 4
  %cmp36 = icmp eq i32 %conv35, %25
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.51

land.lhs.true.38:                                 ; preds = %if.end.32
  %26 = load i32, i32* %north, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom39
  %27 = load i32, i32* %arrayidx40, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom41
  %liberties43 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx42, i32 0, i32 3
  %28 = load i32, i32* %liberties43, align 4
  %cmp44 = icmp eq i32 %28, 1
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.38
  %29 = load i32, i32* %north, align 4
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom47
  %30 = load i32, i32* %arrayidx48, align 4
  %call49 = call i32 @do_remove_string(i32 %30)
  %31 = load i32, i32* %captured_stones, align 4
  %add50 = add nsw i32 %31, %call49
  store i32 %add50, i32* %captured_stones, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %land.lhs.true.38, %if.end.32
  %32 = load i32, i32* %east, align 4
  %idxprom52 = sext i32 %32 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %33 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %33 to i32
  %34 = load i32, i32* %other, align 4
  %cmp55 = icmp eq i32 %conv54, %34
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %if.end.51
  %35 = load i32, i32* %east, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom58
  %36 = load i32, i32* %arrayidx59, align 4
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom60
  %liberties62 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx61, i32 0, i32 3
  %37 = load i32, i32* %liberties62, align 4
  %cmp63 = icmp eq i32 %37, 1
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %land.lhs.true.57
  %38 = load i32, i32* %east, align 4
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom66
  %39 = load i32, i32* %arrayidx67, align 4
  %call68 = call i32 @do_remove_string(i32 %39)
  %40 = load i32, i32* %captured_stones, align 4
  %add69 = add nsw i32 %40, %call68
  store i32 %add69, i32* %captured_stones, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %land.lhs.true.57, %if.end.51
  %41 = load i32, i32* %captured_stones, align 4
  %cmp71 = icmp eq i32 %41, 0
  br i1 %cmp71, label %if.then.73, label %if.else.159

if.then.73:                                       ; preds = %if.end.70
  %42 = load i32, i32* %south, align 4
  %idxprom74 = sext i32 %42 to i64
  %arrayidx75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom74
  %43 = load i8, i8* %arrayidx75, align 1
  %conv76 = zext i8 %43 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.73
  %44 = load i32, i32* %south, align 4
  %idxprom79 = sext i32 %44 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %45 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %45 to i32
  %46 = load i32, i32* %color.addr, align 4
  %cmp82 = icmp eq i32 %conv81, %46
  br i1 %cmp82, label %land.lhs.true.84, label %if.else

land.lhs.true.84:                                 ; preds = %lor.lhs.false
  %47 = load i32, i32* %south, align 4
  %idxprom85 = sext i32 %47 to i64
  %arrayidx86 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom85
  %48 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %48 to i64
  %arrayidx88 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom87
  %liberties89 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx88, i32 0, i32 3
  %49 = load i32, i32* %liberties89, align 4
  %cmp90 = icmp sgt i32 %49, 1
  br i1 %cmp90, label %if.then.92, label %if.else

if.then.92:                                       ; preds = %land.lhs.true.84, %if.then.73
  store i32 1, i32* %have_liberties, align 4
  br label %if.end.158

if.else:                                          ; preds = %land.lhs.true.84, %lor.lhs.false
  %50 = load i32, i32* %west, align 4
  %idxprom93 = sext i32 %50 to i64
  %arrayidx94 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom93
  %51 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %51 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.112, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else
  %52 = load i32, i32* %west, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %53 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %53 to i32
  %54 = load i32, i32* %color.addr, align 4
  %cmp102 = icmp eq i32 %conv101, %54
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.113

land.lhs.true.104:                                ; preds = %lor.lhs.false.98
  %55 = load i32, i32* %west, align 4
  %idxprom105 = sext i32 %55 to i64
  %arrayidx106 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom105
  %56 = load i32, i32* %arrayidx106, align 4
  %idxprom107 = sext i32 %56 to i64
  %arrayidx108 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom107
  %liberties109 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx108, i32 0, i32 3
  %57 = load i32, i32* %liberties109, align 4
  %cmp110 = icmp sgt i32 %57, 1
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.104, %if.else
  store i32 1, i32* %have_liberties, align 4
  br label %if.end.157

if.else.113:                                      ; preds = %land.lhs.true.104, %lor.lhs.false.98
  %58 = load i32, i32* %north, align 4
  %idxprom114 = sext i32 %58 to i64
  %arrayidx115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom114
  %59 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %59 to i32
  %cmp117 = icmp eq i32 %conv116, 0
  br i1 %cmp117, label %if.then.133, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.else.113
  %60 = load i32, i32* %north, align 4
  %idxprom120 = sext i32 %60 to i64
  %arrayidx121 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom120
  %61 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %61 to i32
  %62 = load i32, i32* %color.addr, align 4
  %cmp123 = icmp eq i32 %conv122, %62
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.134

land.lhs.true.125:                                ; preds = %lor.lhs.false.119
  %63 = load i32, i32* %north, align 4
  %idxprom126 = sext i32 %63 to i64
  %arrayidx127 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom126
  %64 = load i32, i32* %arrayidx127, align 4
  %idxprom128 = sext i32 %64 to i64
  %arrayidx129 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom128
  %liberties130 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx129, i32 0, i32 3
  %65 = load i32, i32* %liberties130, align 4
  %cmp131 = icmp sgt i32 %65, 1
  br i1 %cmp131, label %if.then.133, label %if.else.134

if.then.133:                                      ; preds = %land.lhs.true.125, %if.else.113
  store i32 1, i32* %have_liberties, align 4
  br label %if.end.156

if.else.134:                                      ; preds = %land.lhs.true.125, %lor.lhs.false.119
  %66 = load i32, i32* %east, align 4
  %idxprom135 = sext i32 %66 to i64
  %arrayidx136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom135
  %67 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %67 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %if.then.154, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.else.134
  %68 = load i32, i32* %east, align 4
  %idxprom141 = sext i32 %68 to i64
  %arrayidx142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom141
  %69 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %69 to i32
  %70 = load i32, i32* %color.addr, align 4
  %cmp144 = icmp eq i32 %conv143, %70
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.155

land.lhs.true.146:                                ; preds = %lor.lhs.false.140
  %71 = load i32, i32* %east, align 4
  %idxprom147 = sext i32 %71 to i64
  %arrayidx148 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom147
  %72 = load i32, i32* %arrayidx148, align 4
  %idxprom149 = sext i32 %72 to i64
  %arrayidx150 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom149
  %liberties151 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx150, i32 0, i32 3
  %73 = load i32, i32* %liberties151, align 4
  %cmp152 = icmp sgt i32 %73, 1
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %land.lhs.true.146, %if.else.134
  store i32 1, i32* %have_liberties, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %land.lhs.true.146, %lor.lhs.false.140
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.then.133
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.then.112
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.92
  br label %if.end.160

if.else.159:                                      ; preds = %if.end.70
  store i32 1, i32* %have_liberties, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.end.158
  %74 = load i32, i32* %have_liberties, align 4
  %cmp161 = icmp eq i32 %74, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.167

land.lhs.true.163:                                ; preds = %if.end.160
  %75 = load i32, i32* %captured_stones, align 4
  %cmp164 = icmp eq i32 %75, 0
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true.163
  %76 = load i32, i32* %pos.addr, align 4
  %77 = load i32, i32* %color.addr, align 4
  call void @do_commit_suicide(i32 %76, i32 %77)
  br label %if.end.386

if.end.167:                                       ; preds = %land.lhs.true.163, %if.end.160
  br label %do.body

do.body:                                          ; preds = %if.end.167
  %78 = load i32, i32* %pos.addr, align 4
  %idxprom168 = sext i32 %78 to i64
  %arrayidx169 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom168
  %79 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %address = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %79, i32 0, i32 0
  store i8* %arrayidx169, i8** %address, align 8
  %80 = load i32, i32* %pos.addr, align 4
  %idxprom170 = sext i32 %80 to i64
  %arrayidx171 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom170
  %81 = load i8, i8* %arrayidx171, align 1
  %conv172 = zext i8 %81 to i32
  %82 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %82, i32 1
  store %struct.vertex_stack_entry* %incdec.ptr, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %value = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %82, i32 0, i32 1
  store i32 %conv172, i32* %value, align 4
  %83 = load i32, i32* %color.addr, align 4
  %conv173 = trunc i32 %83 to i8
  %84 = load i32, i32* %pos.addr, align 4
  %idxprom174 = sext i32 %84 to i64
  %arrayidx175 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom174
  store i8 %conv173, i8* %arrayidx175, align 1
  %85 = load i32, i32* %pos.addr, align 4
  %86 = load i32, i32* %color.addr, align 4
  call void @hashdata_invert_stone(%struct.Hash_data* @hashdata, i32 %85, i32 %86)
  br label %do.end

do.end:                                           ; preds = %do.body
  %87 = load i32, i32* @string_mark, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* @string_mark, align 4
  %88 = load i32, i32* %south, align 4
  %idxprom176 = sext i32 %88 to i64
  %arrayidx177 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom176
  %89 = load i8, i8* %arrayidx177, align 1
  %conv178 = zext i8 %89 to i32
  %90 = load i32, i32* %color.addr, align 4
  %cmp179 = icmp eq i32 %conv178, %90
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.197

land.lhs.true.181:                                ; preds = %do.end
  %91 = load i32, i32* %south, align 4
  %idxprom182 = sext i32 %91 to i64
  %arrayidx183 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom182
  %92 = load i32, i32* %arrayidx183, align 4
  %idxprom184 = sext i32 %92 to i64
  %arrayidx185 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom184
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx185, i32 0, i32 7
  %93 = load i32, i32* %mark, align 4
  %94 = load i32, i32* @string_mark, align 4
  %cmp186 = icmp ne i32 %93, %94
  br i1 %cmp186, label %if.then.188, label %if.else.197

if.then.188:                                      ; preds = %land.lhs.true.181
  %95 = load i32, i32* %neighbor_allies, align 4
  %inc189 = add nsw i32 %95, 1
  store i32 %inc189, i32* %neighbor_allies, align 4
  %96 = load i32, i32* %south, align 4
  %idxprom190 = sext i32 %96 to i64
  %arrayidx191 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom190
  %97 = load i32, i32* %arrayidx191, align 4
  store i32 %97, i32* %s, align 4
  %98 = load i32, i32* @string_mark, align 4
  %99 = load i32, i32* %south, align 4
  %idxprom192 = sext i32 %99 to i64
  %arrayidx193 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom192
  %100 = load i32, i32* %arrayidx193, align 4
  %idxprom194 = sext i32 %100 to i64
  %arrayidx195 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom194
  %mark196 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx195, i32 0, i32 7
  store i32 %98, i32* %mark196, align 4
  br label %if.end.220

if.else.197:                                      ; preds = %land.lhs.true.181, %do.end
  %101 = load i32, i32* %south, align 4
  %idxprom198 = sext i32 %101 to i64
  %arrayidx199 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom198
  %102 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %102 to i32
  %103 = load i32, i32* %other, align 4
  %cmp201 = icmp eq i32 %conv200, %103
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.219

land.lhs.true.203:                                ; preds = %if.else.197
  %104 = load i32, i32* %south, align 4
  %idxprom204 = sext i32 %104 to i64
  %arrayidx205 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom204
  %105 = load i32, i32* %arrayidx205, align 4
  %idxprom206 = sext i32 %105 to i64
  %arrayidx207 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom206
  %mark208 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx207, i32 0, i32 7
  %106 = load i32, i32* %mark208, align 4
  %107 = load i32, i32* @string_mark, align 4
  %cmp209 = icmp ne i32 %106, %107
  br i1 %cmp209, label %if.then.211, label %if.end.219

if.then.211:                                      ; preds = %land.lhs.true.203
  %108 = load i32, i32* %south, align 4
  %idxprom212 = sext i32 %108 to i64
  %arrayidx213 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom212
  %109 = load i32, i32* %arrayidx213, align 4
  %110 = load i32, i32* %pos.addr, align 4
  call void @remove_liberty(i32 %109, i32 %110)
  %111 = load i32, i32* @string_mark, align 4
  %112 = load i32, i32* %south, align 4
  %idxprom214 = sext i32 %112 to i64
  %arrayidx215 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom214
  %113 = load i32, i32* %arrayidx215, align 4
  %idxprom216 = sext i32 %113 to i64
  %arrayidx217 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom216
  %mark218 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx217, i32 0, i32 7
  store i32 %111, i32* %mark218, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.211, %land.lhs.true.203, %if.else.197
  br label %if.end.220

if.end.220:                                       ; preds = %if.end.219, %if.then.188
  %114 = load i32, i32* %west, align 4
  %idxprom221 = sext i32 %114 to i64
  %arrayidx222 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom221
  %115 = load i8, i8* %arrayidx222, align 1
  %conv223 = zext i8 %115 to i32
  %116 = load i32, i32* %color.addr, align 4
  %cmp224 = icmp eq i32 %conv223, %116
  br i1 %cmp224, label %land.lhs.true.226, label %if.else.243

land.lhs.true.226:                                ; preds = %if.end.220
  %117 = load i32, i32* %west, align 4
  %idxprom227 = sext i32 %117 to i64
  %arrayidx228 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom227
  %118 = load i32, i32* %arrayidx228, align 4
  %idxprom229 = sext i32 %118 to i64
  %arrayidx230 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom229
  %mark231 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx230, i32 0, i32 7
  %119 = load i32, i32* %mark231, align 4
  %120 = load i32, i32* @string_mark, align 4
  %cmp232 = icmp ne i32 %119, %120
  br i1 %cmp232, label %if.then.234, label %if.else.243

if.then.234:                                      ; preds = %land.lhs.true.226
  %121 = load i32, i32* %neighbor_allies, align 4
  %inc235 = add nsw i32 %121, 1
  store i32 %inc235, i32* %neighbor_allies, align 4
  %122 = load i32, i32* %west, align 4
  %idxprom236 = sext i32 %122 to i64
  %arrayidx237 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom236
  %123 = load i32, i32* %arrayidx237, align 4
  store i32 %123, i32* %s, align 4
  %124 = load i32, i32* @string_mark, align 4
  %125 = load i32, i32* %west, align 4
  %idxprom238 = sext i32 %125 to i64
  %arrayidx239 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom238
  %126 = load i32, i32* %arrayidx239, align 4
  %idxprom240 = sext i32 %126 to i64
  %arrayidx241 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom240
  %mark242 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx241, i32 0, i32 7
  store i32 %124, i32* %mark242, align 4
  br label %if.end.266

if.else.243:                                      ; preds = %land.lhs.true.226, %if.end.220
  %127 = load i32, i32* %west, align 4
  %idxprom244 = sext i32 %127 to i64
  %arrayidx245 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom244
  %128 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %128 to i32
  %129 = load i32, i32* %other, align 4
  %cmp247 = icmp eq i32 %conv246, %129
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.265

land.lhs.true.249:                                ; preds = %if.else.243
  %130 = load i32, i32* %west, align 4
  %idxprom250 = sext i32 %130 to i64
  %arrayidx251 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom250
  %131 = load i32, i32* %arrayidx251, align 4
  %idxprom252 = sext i32 %131 to i64
  %arrayidx253 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom252
  %mark254 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx253, i32 0, i32 7
  %132 = load i32, i32* %mark254, align 4
  %133 = load i32, i32* @string_mark, align 4
  %cmp255 = icmp ne i32 %132, %133
  br i1 %cmp255, label %if.then.257, label %if.end.265

if.then.257:                                      ; preds = %land.lhs.true.249
  %134 = load i32, i32* %west, align 4
  %idxprom258 = sext i32 %134 to i64
  %arrayidx259 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom258
  %135 = load i32, i32* %arrayidx259, align 4
  %136 = load i32, i32* %pos.addr, align 4
  call void @remove_liberty(i32 %135, i32 %136)
  %137 = load i32, i32* @string_mark, align 4
  %138 = load i32, i32* %west, align 4
  %idxprom260 = sext i32 %138 to i64
  %arrayidx261 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom260
  %139 = load i32, i32* %arrayidx261, align 4
  %idxprom262 = sext i32 %139 to i64
  %arrayidx263 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom262
  %mark264 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx263, i32 0, i32 7
  store i32 %137, i32* %mark264, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.257, %land.lhs.true.249, %if.else.243
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.234
  %140 = load i32, i32* %north, align 4
  %idxprom267 = sext i32 %140 to i64
  %arrayidx268 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom267
  %141 = load i8, i8* %arrayidx268, align 1
  %conv269 = zext i8 %141 to i32
  %142 = load i32, i32* %color.addr, align 4
  %cmp270 = icmp eq i32 %conv269, %142
  br i1 %cmp270, label %land.lhs.true.272, label %if.else.289

land.lhs.true.272:                                ; preds = %if.end.266
  %143 = load i32, i32* %north, align 4
  %idxprom273 = sext i32 %143 to i64
  %arrayidx274 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom273
  %144 = load i32, i32* %arrayidx274, align 4
  %idxprom275 = sext i32 %144 to i64
  %arrayidx276 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom275
  %mark277 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx276, i32 0, i32 7
  %145 = load i32, i32* %mark277, align 4
  %146 = load i32, i32* @string_mark, align 4
  %cmp278 = icmp ne i32 %145, %146
  br i1 %cmp278, label %if.then.280, label %if.else.289

if.then.280:                                      ; preds = %land.lhs.true.272
  %147 = load i32, i32* %neighbor_allies, align 4
  %inc281 = add nsw i32 %147, 1
  store i32 %inc281, i32* %neighbor_allies, align 4
  %148 = load i32, i32* %north, align 4
  %idxprom282 = sext i32 %148 to i64
  %arrayidx283 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom282
  %149 = load i32, i32* %arrayidx283, align 4
  store i32 %149, i32* %s, align 4
  %150 = load i32, i32* @string_mark, align 4
  %151 = load i32, i32* %north, align 4
  %idxprom284 = sext i32 %151 to i64
  %arrayidx285 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom284
  %152 = load i32, i32* %arrayidx285, align 4
  %idxprom286 = sext i32 %152 to i64
  %arrayidx287 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom286
  %mark288 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx287, i32 0, i32 7
  store i32 %150, i32* %mark288, align 4
  br label %if.end.312

if.else.289:                                      ; preds = %land.lhs.true.272, %if.end.266
  %153 = load i32, i32* %north, align 4
  %idxprom290 = sext i32 %153 to i64
  %arrayidx291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom290
  %154 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %154 to i32
  %155 = load i32, i32* %other, align 4
  %cmp293 = icmp eq i32 %conv292, %155
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.311

land.lhs.true.295:                                ; preds = %if.else.289
  %156 = load i32, i32* %north, align 4
  %idxprom296 = sext i32 %156 to i64
  %arrayidx297 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom296
  %157 = load i32, i32* %arrayidx297, align 4
  %idxprom298 = sext i32 %157 to i64
  %arrayidx299 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom298
  %mark300 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx299, i32 0, i32 7
  %158 = load i32, i32* %mark300, align 4
  %159 = load i32, i32* @string_mark, align 4
  %cmp301 = icmp ne i32 %158, %159
  br i1 %cmp301, label %if.then.303, label %if.end.311

if.then.303:                                      ; preds = %land.lhs.true.295
  %160 = load i32, i32* %north, align 4
  %idxprom304 = sext i32 %160 to i64
  %arrayidx305 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom304
  %161 = load i32, i32* %arrayidx305, align 4
  %162 = load i32, i32* %pos.addr, align 4
  call void @remove_liberty(i32 %161, i32 %162)
  %163 = load i32, i32* @string_mark, align 4
  %164 = load i32, i32* %north, align 4
  %idxprom306 = sext i32 %164 to i64
  %arrayidx307 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom306
  %165 = load i32, i32* %arrayidx307, align 4
  %idxprom308 = sext i32 %165 to i64
  %arrayidx309 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom308
  %mark310 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx309, i32 0, i32 7
  store i32 %163, i32* %mark310, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.303, %land.lhs.true.295, %if.else.289
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %if.then.280
  %166 = load i32, i32* %east, align 4
  %idxprom313 = sext i32 %166 to i64
  %arrayidx314 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom313
  %167 = load i8, i8* %arrayidx314, align 1
  %conv315 = zext i8 %167 to i32
  %168 = load i32, i32* %color.addr, align 4
  %cmp316 = icmp eq i32 %conv315, %168
  br i1 %cmp316, label %land.lhs.true.318, label %if.else.330

land.lhs.true.318:                                ; preds = %if.end.312
  %169 = load i32, i32* %east, align 4
  %idxprom319 = sext i32 %169 to i64
  %arrayidx320 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom319
  %170 = load i32, i32* %arrayidx320, align 4
  %idxprom321 = sext i32 %170 to i64
  %arrayidx322 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom321
  %mark323 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx322, i32 0, i32 7
  %171 = load i32, i32* %mark323, align 4
  %172 = load i32, i32* @string_mark, align 4
  %cmp324 = icmp ne i32 %171, %172
  br i1 %cmp324, label %if.then.326, label %if.else.330

if.then.326:                                      ; preds = %land.lhs.true.318
  %173 = load i32, i32* %neighbor_allies, align 4
  %inc327 = add nsw i32 %173, 1
  store i32 %inc327, i32* %neighbor_allies, align 4
  %174 = load i32, i32* %east, align 4
  %idxprom328 = sext i32 %174 to i64
  %arrayidx329 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom328
  %175 = load i32, i32* %arrayidx329, align 4
  store i32 %175, i32* %s, align 4
  br label %if.end.348

if.else.330:                                      ; preds = %land.lhs.true.318, %if.end.312
  %176 = load i32, i32* %east, align 4
  %idxprom331 = sext i32 %176 to i64
  %arrayidx332 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom331
  %177 = load i8, i8* %arrayidx332, align 1
  %conv333 = zext i8 %177 to i32
  %178 = load i32, i32* %other, align 4
  %cmp334 = icmp eq i32 %conv333, %178
  br i1 %cmp334, label %land.lhs.true.336, label %if.end.347

land.lhs.true.336:                                ; preds = %if.else.330
  %179 = load i32, i32* %east, align 4
  %idxprom337 = sext i32 %179 to i64
  %arrayidx338 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom337
  %180 = load i32, i32* %arrayidx338, align 4
  %idxprom339 = sext i32 %180 to i64
  %arrayidx340 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom339
  %mark341 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx340, i32 0, i32 7
  %181 = load i32, i32* %mark341, align 4
  %182 = load i32, i32* @string_mark, align 4
  %cmp342 = icmp ne i32 %181, %182
  br i1 %cmp342, label %if.then.344, label %if.end.347

if.then.344:                                      ; preds = %land.lhs.true.336
  %183 = load i32, i32* %east, align 4
  %idxprom345 = sext i32 %183 to i64
  %arrayidx346 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom345
  %184 = load i32, i32* %arrayidx346, align 4
  %185 = load i32, i32* %pos.addr, align 4
  call void @remove_liberty(i32 %184, i32 %185)
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.344, %land.lhs.true.336, %if.else.330
  br label %if.end.348

if.end.348:                                       ; preds = %if.end.347, %if.then.326
  %186 = load i32, i32* %neighbor_allies, align 4
  %cmp349 = icmp eq i32 %186, 0
  br i1 %cmp349, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %if.end.348
  %187 = load i32, i32* %pos.addr, align 4
  call void @create_new_string(i32 %187)
  br label %if.end.362

if.else.352:                                      ; preds = %if.end.348
  %188 = load i32, i32* %neighbor_allies, align 4
  %cmp353 = icmp eq i32 %188, 1
  br i1 %cmp353, label %if.then.355, label %if.else.361

if.then.355:                                      ; preds = %if.else.352
  %189 = load i32, i32* %s, align 4
  %cmp356 = icmp sge i32 %189, 0
  br i1 %cmp356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %if.then.355
  br label %if.end.360

if.else.359:                                      ; preds = %if.then.355
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 3498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.359, %if.then.358
  %190 = load i32, i32* %pos.addr, align 4
  %191 = load i32, i32* %s, align 4
  call void @extend_neighbor_string(i32 %190, i32 %191)
  br label %if.end.386

if.else.361:                                      ; preds = %if.else.352
  %192 = load i32, i32* %pos.addr, align 4
  call void @assimilate_neighbor_strings(i32 %192)
  br label %if.end.386

if.end.362:                                       ; preds = %if.then.351
  %193 = load i32, i32* %pos.addr, align 4
  %idxprom363 = sext i32 %193 to i64
  %arrayidx364 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom363
  %194 = load i32, i32* %arrayidx364, align 4
  store i32 %194, i32* %s, align 4
  %195 = load i32, i32* %s, align 4
  %idxprom365 = sext i32 %195 to i64
  %arrayidx366 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom365
  %liberties367 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx366, i32 0, i32 3
  %196 = load i32, i32* %liberties367, align 4
  %cmp368 = icmp eq i32 %196, 1
  br i1 %cmp368, label %land.lhs.true.370, label %if.end.386

land.lhs.true.370:                                ; preds = %if.end.362
  %197 = load i32, i32* %s, align 4
  %idxprom371 = sext i32 %197 to i64
  %arrayidx372 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom371
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx372, i32 0, i32 1
  %198 = load i32, i32* %size, align 4
  %cmp373 = icmp eq i32 %198, 1
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.386

land.lhs.true.375:                                ; preds = %land.lhs.true.370
  %199 = load i32, i32* %captured_stones, align 4
  %cmp376 = icmp eq i32 %199, 1
  br i1 %cmp376, label %if.then.378, label %if.end.386

if.then.378:                                      ; preds = %land.lhs.true.375
  %200 = load i32, i32* @board_ko_pos, align 4
  %cmp379 = icmp ne i32 %200, 0
  br i1 %cmp379, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %if.then.378
  %201 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_invert_ko(%struct.Hash_data* @hashdata, i32 %201)
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.381, %if.then.378
  %202 = load i32, i32* %s, align 4
  %idxprom383 = sext i32 %202 to i64
  %arrayidx384 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom383
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx384, i32 0, i32 4
  %arrayidx385 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 0
  %203 = load i32, i32* %arrayidx385, align 4
  store i32 %203, i32* @board_ko_pos, align 4
  %204 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_invert_ko(%struct.Hash_data* @hashdata, i32 %204)
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.166, %if.end.360, %if.else.361, %if.end.382, %land.lhs.true.375, %land.lhs.true.370, %if.end.362
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @do_remove_string(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx, i32 0, i32 2
  %1 = load i32, i32* %origin, align 4
  store i32 %1, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %pos, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1
  %3 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %3, i32 0, i32 0
  store i32* %arrayidx2, i32** %address, align 8
  %4 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %6, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %6, i32 0, i32 1
  store i32 %5, i32* %value, align 4
  %7 = load i32, i32* %pos, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom5
  %8 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address7 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %8, i32 0, i32 0
  store i32* %arrayidx6, i32** %address7, align 8
  %9 = load i32, i32* %pos, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  %11 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %11, i32 1
  store %struct.change_stack_entry* %incdec.ptr10, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value11 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %11, i32 0, i32 1
  store i32 %10, i32* %value11, align 4
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %12 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %13 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %address15 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %13, i32 0, i32 0
  store i8* %arrayidx14, i8** %address15, align 8
  %14 = load i32, i32* %pos, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %15 to i32
  %16 = load %struct.vertex_stack_entry*, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %16, i32 1
  store %struct.vertex_stack_entry* %incdec.ptr18, %struct.vertex_stack_entry** @vertex_stack_pointer, align 8
  %value19 = getelementptr inbounds %struct.vertex_stack_entry, %struct.vertex_stack_entry* %16, i32 0, i32 1
  store i32 %conv, i32* %value19, align 4
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  call void @hashdata_invert_stone(%struct.Hash_data* @hashdata, i32 %17, i32 %conv22)
  %20 = load i32, i32* %pos, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1
  br label %do.end

do.end:                                           ; preds = %do.body.12
  %21 = load i32, i32* %pos, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom25
  %22 = load i32, i32* %arrayidx26, align 4
  store i32 %22, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* %s.addr, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom27
  %origin29 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx28, i32 0, i32 2
  %25 = load i32, i32* %origin29, align 4
  %cmp = icmp eq i32 %23, %25
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %do.body, label %do.end.31

do.end.31:                                        ; preds = %do.cond
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.31
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %s.addr, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom32
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx33, i32 0, i32 5
  %28 = load i32, i32* %neighbors, align 4
  %cmp34 = icmp slt i32 %26, %28
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %s.addr, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom37
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx38, i32 0, i32 6
  %arrayidx39 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom36
  %31 = load i32, i32* %arrayidx39, align 4
  %32 = load i32, i32* %s.addr, align 4
  call void @remove_neighbor(i32 %31, i32 %32)
  %33 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %33 to i64
  %34 = load i32, i32* %s.addr, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom41
  %neighborlist43 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx42, i32 0, i32 6
  %arrayidx44 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist43, i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx44, align 4
  call void @update_liberties(i32 %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %k, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %s.addr, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom45
  %color = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx46, i32 0, i32 0
  %38 = load i32, i32* %color, align 4
  %cmp47 = icmp eq i32 %38, 1
  br i1 %cmp47, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %39 = load i32, i32* %s.addr, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom49
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx50, i32 0, i32 1
  %40 = load i32, i32* %size, align 4
  %41 = load i32, i32* @white_captured, align 4
  %add = add nsw i32 %41, %40
  store i32 %add, i32* @white_captured, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %42 = load i32, i32* %s.addr, align 4
  %idxprom51 = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom51
  %size53 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx52, i32 0, i32 1
  %43 = load i32, i32* %size53, align 4
  %44 = load i32, i32* @black_captured, align 4
  %add54 = add nsw i32 %44, %43
  store i32 %add54, i32* @black_captured, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %45 = load i32, i32* %s.addr, align 4
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom55
  %size57 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx56, i32 0, i32 1
  %46 = load i32, i32* %size57, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal void @do_commit_suicide(i32 %pos, i32 %color) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %0, 20
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %color.addr, align 4
  %cmp = icmp eq i32 %conv, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %pos.addr, align 4
  %add2 = add nsw i32 %3, 20
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx4, align 4
  %call = call i32 @do_remove_string(i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %pos.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i32, i32* %color.addr, align 4
  %cmp8 = icmp eq i32 %conv7, %7
  br i1 %cmp8, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end
  %8 = load i32, i32* %pos.addr, align 4
  %sub11 = sub nsw i32 %8, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom12
  %9 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 @do_remove_string(i32 %9)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  %10 = load i32, i32* %pos.addr, align 4
  %sub16 = sub nsw i32 %10, 20
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom17
  %11 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %12 = load i32, i32* %color.addr, align 4
  %cmp20 = icmp eq i32 %conv19, %12
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.15
  %13 = load i32, i32* %pos.addr, align 4
  %sub23 = sub nsw i32 %13, 20
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom24
  %14 = load i32, i32* %arrayidx25, align 4
  %call26 = call i32 @do_remove_string(i32 %14)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end.15
  %15 = load i32, i32* %pos.addr, align 4
  %add28 = add nsw i32 %15, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  %17 = load i32, i32* %color.addr, align 4
  %cmp32 = icmp eq i32 %conv31, %17
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.end.27
  %18 = load i32, i32* %pos.addr, align 4
  %add35 = add nsw i32 %18, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom36
  %19 = load i32, i32* %arrayidx37, align 4
  %call38 = call i32 @do_remove_string(i32 %19)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.end.27
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_liberty(i32 %str_number, i32 %pos) #0 {
entry:
  %str_number.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  store i32 %str_number, i32* %str_number.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %str_number.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom
  store %struct.string_data* %arrayidx, %struct.string_data** %s, align 8
  %1 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %1, i32 0, i32 3
  %2 = load i32, i32* %liberties, align 4
  %cmp = icmp sgt i32 %2, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %str_number.addr, align 4
  call void @update_liberties(i32 %3)
  br label %if.end.39

if.else:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %k, align 4
  %5 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties1 = getelementptr inbounds %struct.string_data, %struct.string_data* %5, i32 0, i32 3
  %6 = load i32, i32* %liberties1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %8, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %cmp5 = icmp eq i32 %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %11 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties7 = getelementptr inbounds %struct.string_data, %struct.string_data* %11, i32 0, i32 3
  %12 = load i32, i32* %liberties7, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom8 = sext i32 %sub to i64
  %13 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs9 = getelementptr inbounds %struct.string_data, %struct.string_data* %13, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [20 x i32], [20 x i32]* %libs9, i32 0, i64 %idxprom8
  %14 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %14, i32 0, i32 0
  store i32* %arrayidx10, i32** %address, align 8
  %15 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties11 = getelementptr inbounds %struct.string_data, %struct.string_data* %15, i32 0, i32 3
  %16 = load i32, i32* %liberties11, align 4
  %sub12 = sub nsw i32 %16, 1
  %idxprom13 = sext i32 %sub12 to i64
  %17 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs14 = getelementptr inbounds %struct.string_data, %struct.string_data* %17, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [20 x i32], [20 x i32]* %libs14, i32 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx15, align 4
  %19 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %19, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %19, i32 0, i32 1
  store i32 %18, i32* %value, align 4
  %20 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs17 = getelementptr inbounds %struct.string_data, %struct.string_data* %21, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [20 x i32], [20 x i32]* %libs17, i32 0, i64 %idxprom16
  %22 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address19 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %22, i32 0, i32 0
  store i32* %arrayidx18, i32** %address19, align 8
  %23 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs21 = getelementptr inbounds %struct.string_data, %struct.string_data* %24, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [20 x i32], [20 x i32]* %libs21, i32 0, i64 %idxprom20
  %25 = load i32, i32* %arrayidx22, align 4
  %26 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %26, i32 1
  store %struct.change_stack_entry* %incdec.ptr23, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value24 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %26, i32 0, i32 1
  store i32 %25, i32* %value24, align 4
  %27 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties25 = getelementptr inbounds %struct.string_data, %struct.string_data* %27, i32 0, i32 3
  %28 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address26 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %28, i32 0, i32 0
  store i32* %liberties25, i32** %address26, align 8
  %29 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties27 = getelementptr inbounds %struct.string_data, %struct.string_data* %29, i32 0, i32 3
  %30 = load i32, i32* %liberties27, align 4
  %31 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr28 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %31, i32 1
  store %struct.change_stack_entry* %incdec.ptr28, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value29 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %31, i32 0, i32 1
  store i32 %30, i32* %value29, align 4
  %32 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties30 = getelementptr inbounds %struct.string_data, %struct.string_data* %32, i32 0, i32 3
  %33 = load i32, i32* %liberties30, align 4
  %sub31 = sub nsw i32 %33, 1
  %idxprom32 = sext i32 %sub31 to i64
  %34 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs33 = getelementptr inbounds %struct.string_data, %struct.string_data* %34, i32 0, i32 4
  %arrayidx34 = getelementptr inbounds [20 x i32], [20 x i32]* %libs33, i32 0, i64 %idxprom32
  %35 = load i32, i32* %arrayidx34, align 4
  %36 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load %struct.string_data*, %struct.string_data** %s, align 8
  %libs36 = getelementptr inbounds %struct.string_data, %struct.string_data* %37, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [20 x i32], [20 x i32]* %libs36, i32 0, i64 %idxprom35
  store i32 %35, i32* %arrayidx37, align 4
  %38 = load %struct.string_data*, %struct.string_data** %s, align 8
  %liberties38 = getelementptr inbounds %struct.string_data, %struct.string_data* %38, i32 0, i32 3
  %39 = load i32, i32* %liberties38, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %liberties38, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %k, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @create_new_string(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s2144 = alloca i32, align 4
  %s2234 = alloca i32, align 4
  %s2324 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %3, i32 0, i32 0
  store i32* @next_string, i32** %address, align 8
  %4 = load i32, i32* @next_string, align 4
  %5 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %5, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %5, i32 0, i32 1
  store i32 %4, i32* %value, align 4
  %6 = load i32, i32* @next_string, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @next_string, align 4
  store i32 %6, i32* %s, align 4
  %7 = load i32, i32* %s, align 4
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1
  store i32 %7, i32* %arrayidx2, align 4
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom3
  store i32 %9, i32* %arrayidx4, align 4
  %11 = load i32, i32* %color, align 4
  %12 = load i32, i32* %s, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom5
  %color7 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx6, i32 0, i32 0
  store i32 %11, i32* %color7, align 4
  %13 = load i32, i32* %s, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom8
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx9, i32 0, i32 1
  store i32 1, i32* %size, align 4
  %14 = load i32, i32* %pos.addr, align 4
  %15 = load i32, i32* %s, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom10
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx11, i32 0, i32 2
  store i32 %14, i32* %origin, align 4
  %16 = load i32, i32* %s, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom12
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx13, i32 0, i32 3
  store i32 0, i32* %liberties, align 4
  %17 = load i32, i32* %s, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom14
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx15, i32 0, i32 5
  store i32 0, i32* %neighbors, align 4
  %18 = load i32, i32* %s, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom16
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx17, i32 0, i32 7
  store i32 0, i32* %mark, align 4
  %19 = load i32, i32* @string_mark, align 4
  %inc18 = add nsw i32 %19, 1
  store i32 %inc18, i32* @string_mark, align 4
  %20 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %20, 20
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %21 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %21 to i32
  %cmp = icmp eq i32 %conv21, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %22 = load i32, i32* %s, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom23
  %liberties25 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx24, i32 0, i32 3
  %23 = load i32, i32* %liberties25, align 4
  %cmp26 = icmp slt i32 %23, 20
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %do.body
  %24 = load i32, i32* %pos.addr, align 4
  %add29 = add nsw i32 %24, 20
  %25 = load i32, i32* %s, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom30
  %liberties32 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx31, i32 0, i32 3
  %26 = load i32, i32* %liberties32, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load i32, i32* %s, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom34
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx35, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom33
  store i32 %add29, i32* %arrayidx36, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %do.body
  %28 = load i32, i32* %s, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom37
  %liberties39 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx38, i32 0, i32 3
  %29 = load i32, i32* %liberties39, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, i32* %liberties39, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.97

if.else:                                          ; preds = %entry
  %30 = load i32, i32* %pos.addr, align 4
  %add41 = add nsw i32 %30, 20
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom42
  %31 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %31 to i32
  %32 = load i32, i32* %other, align 4
  %cmp45 = icmp eq i32 %conv44, %32
  br i1 %cmp45, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %if.else
  %33 = load i32, i32* %pos.addr, align 4
  %add47 = add nsw i32 %33, 20
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom48
  %34 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom50
  %mark52 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx51, i32 0, i32 7
  %35 = load i32, i32* %mark52, align 4
  %36 = load i32, i32* @string_mark, align 4
  %cmp53 = icmp ne i32 %35, %36
  br i1 %cmp53, label %if.then.55, label %if.end.96

if.then.55:                                       ; preds = %land.lhs.true
  %37 = load i32, i32* %pos.addr, align 4
  %add56 = add nsw i32 %37, 20
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom57
  %38 = load i32, i32* %arrayidx58, align 4
  store i32 %38, i32* %s2, align 4
  %39 = load i32, i32* %pos.addr, align 4
  %add59 = add nsw i32 %39, 20
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom60
  %40 = load i32, i32* %arrayidx61, align 4
  %41 = load i32, i32* %s, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom62
  %neighbors64 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx63, i32 0, i32 5
  %42 = load i32, i32* %neighbors64, align 4
  %inc65 = add nsw i32 %42, 1
  store i32 %inc65, i32* %neighbors64, align 4
  %idxprom66 = sext i32 %42 to i64
  %43 = load i32, i32* %s, align 4
  %idxprom67 = sext i32 %43 to i64
  %arrayidx68 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom67
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx68, i32 0, i32 6
  %arrayidx69 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom66
  store i32 %40, i32* %arrayidx69, align 4
  %44 = load i32, i32* %s2, align 4
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom70
  %neighbors72 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx71, i32 0, i32 5
  %45 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address73 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %45, i32 0, i32 0
  store i32* %neighbors72, i32** %address73, align 8
  %46 = load i32, i32* %s2, align 4
  %idxprom74 = sext i32 %46 to i64
  %arrayidx75 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom74
  %neighbors76 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx75, i32 0, i32 5
  %47 = load i32, i32* %neighbors76, align 4
  %48 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr77 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %48, i32 1
  store %struct.change_stack_entry* %incdec.ptr77, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value78 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %48, i32 0, i32 1
  store i32 %47, i32* %value78, align 4
  %49 = load i32, i32* %pos.addr, align 4
  %idxprom79 = sext i32 %49 to i64
  %arrayidx80 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom79
  %50 = load i32, i32* %arrayidx80, align 4
  %51 = load i32, i32* %s2, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom81
  %neighbors83 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx82, i32 0, i32 5
  %52 = load i32, i32* %neighbors83, align 4
  %inc84 = add nsw i32 %52, 1
  store i32 %inc84, i32* %neighbors83, align 4
  %idxprom85 = sext i32 %52 to i64
  %53 = load i32, i32* %s2, align 4
  %idxprom86 = sext i32 %53 to i64
  %arrayidx87 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom86
  %neighborlist88 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx87, i32 0, i32 6
  %arrayidx89 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist88, i32 0, i64 %idxprom85
  store i32 %50, i32* %arrayidx89, align 4
  %54 = load i32, i32* @string_mark, align 4
  %55 = load i32, i32* %pos.addr, align 4
  %add90 = add nsw i32 %55, 20
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom91
  %56 = load i32, i32* %arrayidx92, align 4
  %idxprom93 = sext i32 %56 to i64
  %arrayidx94 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom93
  %mark95 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx94, i32 0, i32 7
  store i32 %54, i32* %mark95, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.55, %land.lhs.true, %if.else
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %do.end
  %57 = load i32, i32* %pos.addr, align 4
  %sub98 = sub nsw i32 %57, 1
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %58 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %58 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.127

if.then.104:                                      ; preds = %if.end.97
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %59 = load i32, i32* %s, align 4
  %idxprom106 = sext i32 %59 to i64
  %arrayidx107 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom106
  %liberties108 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx107, i32 0, i32 3
  %60 = load i32, i32* %liberties108, align 4
  %cmp109 = icmp slt i32 %60, 20
  br i1 %cmp109, label %if.then.111, label %if.end.121

if.then.111:                                      ; preds = %do.body.105
  %61 = load i32, i32* %pos.addr, align 4
  %sub112 = sub nsw i32 %61, 1
  %62 = load i32, i32* %s, align 4
  %idxprom113 = sext i32 %62 to i64
  %arrayidx114 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom113
  %liberties115 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx114, i32 0, i32 3
  %63 = load i32, i32* %liberties115, align 4
  %idxprom116 = sext i32 %63 to i64
  %64 = load i32, i32* %s, align 4
  %idxprom117 = sext i32 %64 to i64
  %arrayidx118 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom117
  %libs119 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx118, i32 0, i32 4
  %arrayidx120 = getelementptr inbounds [20 x i32], [20 x i32]* %libs119, i32 0, i64 %idxprom116
  store i32 %sub112, i32* %arrayidx120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.111, %do.body.105
  %65 = load i32, i32* %s, align 4
  %idxprom122 = sext i32 %65 to i64
  %arrayidx123 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom122
  %liberties124 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx123, i32 0, i32 3
  %66 = load i32, i32* %liberties124, align 4
  %inc125 = add nsw i32 %66, 1
  store i32 %inc125, i32* %liberties124, align 4
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.121
  br label %if.end.187

if.else.127:                                      ; preds = %if.end.97
  %67 = load i32, i32* %pos.addr, align 4
  %sub128 = sub nsw i32 %67, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom129
  %68 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %68 to i32
  %69 = load i32, i32* %other, align 4
  %cmp132 = icmp eq i32 %conv131, %69
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.186

land.lhs.true.134:                                ; preds = %if.else.127
  %70 = load i32, i32* %pos.addr, align 4
  %sub135 = sub nsw i32 %70, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom136
  %71 = load i32, i32* %arrayidx137, align 4
  %idxprom138 = sext i32 %71 to i64
  %arrayidx139 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom138
  %mark140 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx139, i32 0, i32 7
  %72 = load i32, i32* %mark140, align 4
  %73 = load i32, i32* @string_mark, align 4
  %cmp141 = icmp ne i32 %72, %73
  br i1 %cmp141, label %if.then.143, label %if.end.186

if.then.143:                                      ; preds = %land.lhs.true.134
  %74 = load i32, i32* %pos.addr, align 4
  %sub145 = sub nsw i32 %74, 1
  %idxprom146 = sext i32 %sub145 to i64
  %arrayidx147 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom146
  %75 = load i32, i32* %arrayidx147, align 4
  store i32 %75, i32* %s2144, align 4
  %76 = load i32, i32* %pos.addr, align 4
  %sub148 = sub nsw i32 %76, 1
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom149
  %77 = load i32, i32* %arrayidx150, align 4
  %78 = load i32, i32* %s, align 4
  %idxprom151 = sext i32 %78 to i64
  %arrayidx152 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom151
  %neighbors153 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx152, i32 0, i32 5
  %79 = load i32, i32* %neighbors153, align 4
  %inc154 = add nsw i32 %79, 1
  store i32 %inc154, i32* %neighbors153, align 4
  %idxprom155 = sext i32 %79 to i64
  %80 = load i32, i32* %s, align 4
  %idxprom156 = sext i32 %80 to i64
  %arrayidx157 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom156
  %neighborlist158 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx157, i32 0, i32 6
  %arrayidx159 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist158, i32 0, i64 %idxprom155
  store i32 %77, i32* %arrayidx159, align 4
  %81 = load i32, i32* %s2144, align 4
  %idxprom160 = sext i32 %81 to i64
  %arrayidx161 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom160
  %neighbors162 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx161, i32 0, i32 5
  %82 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address163 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %82, i32 0, i32 0
  store i32* %neighbors162, i32** %address163, align 8
  %83 = load i32, i32* %s2144, align 4
  %idxprom164 = sext i32 %83 to i64
  %arrayidx165 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom164
  %neighbors166 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx165, i32 0, i32 5
  %84 = load i32, i32* %neighbors166, align 4
  %85 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr167 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %85, i32 1
  store %struct.change_stack_entry* %incdec.ptr167, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value168 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %85, i32 0, i32 1
  store i32 %84, i32* %value168, align 4
  %86 = load i32, i32* %pos.addr, align 4
  %idxprom169 = sext i32 %86 to i64
  %arrayidx170 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom169
  %87 = load i32, i32* %arrayidx170, align 4
  %88 = load i32, i32* %s2144, align 4
  %idxprom171 = sext i32 %88 to i64
  %arrayidx172 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom171
  %neighbors173 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx172, i32 0, i32 5
  %89 = load i32, i32* %neighbors173, align 4
  %inc174 = add nsw i32 %89, 1
  store i32 %inc174, i32* %neighbors173, align 4
  %idxprom175 = sext i32 %89 to i64
  %90 = load i32, i32* %s2144, align 4
  %idxprom176 = sext i32 %90 to i64
  %arrayidx177 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom176
  %neighborlist178 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx177, i32 0, i32 6
  %arrayidx179 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist178, i32 0, i64 %idxprom175
  store i32 %87, i32* %arrayidx179, align 4
  %91 = load i32, i32* @string_mark, align 4
  %92 = load i32, i32* %pos.addr, align 4
  %sub180 = sub nsw i32 %92, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom181
  %93 = load i32, i32* %arrayidx182, align 4
  %idxprom183 = sext i32 %93 to i64
  %arrayidx184 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom183
  %mark185 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx184, i32 0, i32 7
  store i32 %91, i32* %mark185, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.143, %land.lhs.true.134, %if.else.127
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %do.end.126
  %94 = load i32, i32* %pos.addr, align 4
  %sub188 = sub nsw i32 %94, 20
  %idxprom189 = sext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom189
  %95 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %95 to i32
  %cmp192 = icmp eq i32 %conv191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.217

if.then.194:                                      ; preds = %if.end.187
  br label %do.body.195

do.body.195:                                      ; preds = %if.then.194
  %96 = load i32, i32* %s, align 4
  %idxprom196 = sext i32 %96 to i64
  %arrayidx197 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom196
  %liberties198 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx197, i32 0, i32 3
  %97 = load i32, i32* %liberties198, align 4
  %cmp199 = icmp slt i32 %97, 20
  br i1 %cmp199, label %if.then.201, label %if.end.211

if.then.201:                                      ; preds = %do.body.195
  %98 = load i32, i32* %pos.addr, align 4
  %sub202 = sub nsw i32 %98, 20
  %99 = load i32, i32* %s, align 4
  %idxprom203 = sext i32 %99 to i64
  %arrayidx204 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom203
  %liberties205 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx204, i32 0, i32 3
  %100 = load i32, i32* %liberties205, align 4
  %idxprom206 = sext i32 %100 to i64
  %101 = load i32, i32* %s, align 4
  %idxprom207 = sext i32 %101 to i64
  %arrayidx208 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom207
  %libs209 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx208, i32 0, i32 4
  %arrayidx210 = getelementptr inbounds [20 x i32], [20 x i32]* %libs209, i32 0, i64 %idxprom206
  store i32 %sub202, i32* %arrayidx210, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.201, %do.body.195
  %102 = load i32, i32* %s, align 4
  %idxprom212 = sext i32 %102 to i64
  %arrayidx213 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom212
  %liberties214 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx213, i32 0, i32 3
  %103 = load i32, i32* %liberties214, align 4
  %inc215 = add nsw i32 %103, 1
  store i32 %inc215, i32* %liberties214, align 4
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.211
  br label %if.end.277

if.else.217:                                      ; preds = %if.end.187
  %104 = load i32, i32* %pos.addr, align 4
  %sub218 = sub nsw i32 %104, 20
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom219
  %105 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %105 to i32
  %106 = load i32, i32* %other, align 4
  %cmp222 = icmp eq i32 %conv221, %106
  br i1 %cmp222, label %land.lhs.true.224, label %if.end.276

land.lhs.true.224:                                ; preds = %if.else.217
  %107 = load i32, i32* %pos.addr, align 4
  %sub225 = sub nsw i32 %107, 20
  %idxprom226 = sext i32 %sub225 to i64
  %arrayidx227 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom226
  %108 = load i32, i32* %arrayidx227, align 4
  %idxprom228 = sext i32 %108 to i64
  %arrayidx229 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom228
  %mark230 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx229, i32 0, i32 7
  %109 = load i32, i32* %mark230, align 4
  %110 = load i32, i32* @string_mark, align 4
  %cmp231 = icmp ne i32 %109, %110
  br i1 %cmp231, label %if.then.233, label %if.end.276

if.then.233:                                      ; preds = %land.lhs.true.224
  %111 = load i32, i32* %pos.addr, align 4
  %sub235 = sub nsw i32 %111, 20
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom236
  %112 = load i32, i32* %arrayidx237, align 4
  store i32 %112, i32* %s2234, align 4
  %113 = load i32, i32* %pos.addr, align 4
  %sub238 = sub nsw i32 %113, 20
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom239
  %114 = load i32, i32* %arrayidx240, align 4
  %115 = load i32, i32* %s, align 4
  %idxprom241 = sext i32 %115 to i64
  %arrayidx242 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom241
  %neighbors243 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx242, i32 0, i32 5
  %116 = load i32, i32* %neighbors243, align 4
  %inc244 = add nsw i32 %116, 1
  store i32 %inc244, i32* %neighbors243, align 4
  %idxprom245 = sext i32 %116 to i64
  %117 = load i32, i32* %s, align 4
  %idxprom246 = sext i32 %117 to i64
  %arrayidx247 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom246
  %neighborlist248 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx247, i32 0, i32 6
  %arrayidx249 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist248, i32 0, i64 %idxprom245
  store i32 %114, i32* %arrayidx249, align 4
  %118 = load i32, i32* %s2234, align 4
  %idxprom250 = sext i32 %118 to i64
  %arrayidx251 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom250
  %neighbors252 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx251, i32 0, i32 5
  %119 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address253 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %119, i32 0, i32 0
  store i32* %neighbors252, i32** %address253, align 8
  %120 = load i32, i32* %s2234, align 4
  %idxprom254 = sext i32 %120 to i64
  %arrayidx255 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom254
  %neighbors256 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx255, i32 0, i32 5
  %121 = load i32, i32* %neighbors256, align 4
  %122 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr257 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %122, i32 1
  store %struct.change_stack_entry* %incdec.ptr257, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value258 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %122, i32 0, i32 1
  store i32 %121, i32* %value258, align 4
  %123 = load i32, i32* %pos.addr, align 4
  %idxprom259 = sext i32 %123 to i64
  %arrayidx260 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom259
  %124 = load i32, i32* %arrayidx260, align 4
  %125 = load i32, i32* %s2234, align 4
  %idxprom261 = sext i32 %125 to i64
  %arrayidx262 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom261
  %neighbors263 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx262, i32 0, i32 5
  %126 = load i32, i32* %neighbors263, align 4
  %inc264 = add nsw i32 %126, 1
  store i32 %inc264, i32* %neighbors263, align 4
  %idxprom265 = sext i32 %126 to i64
  %127 = load i32, i32* %s2234, align 4
  %idxprom266 = sext i32 %127 to i64
  %arrayidx267 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom266
  %neighborlist268 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx267, i32 0, i32 6
  %arrayidx269 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist268, i32 0, i64 %idxprom265
  store i32 %124, i32* %arrayidx269, align 4
  %128 = load i32, i32* @string_mark, align 4
  %129 = load i32, i32* %pos.addr, align 4
  %sub270 = sub nsw i32 %129, 20
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom271
  %130 = load i32, i32* %arrayidx272, align 4
  %idxprom273 = sext i32 %130 to i64
  %arrayidx274 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom273
  %mark275 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx274, i32 0, i32 7
  store i32 %128, i32* %mark275, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.233, %land.lhs.true.224, %if.else.217
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %do.end.216
  %131 = load i32, i32* %pos.addr, align 4
  %add278 = add nsw i32 %131, 1
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom279
  %132 = load i8, i8* %arrayidx280, align 1
  %conv281 = zext i8 %132 to i32
  %cmp282 = icmp eq i32 %conv281, 0
  br i1 %cmp282, label %if.then.284, label %if.else.307

if.then.284:                                      ; preds = %if.end.277
  br label %do.body.285

do.body.285:                                      ; preds = %if.then.284
  %133 = load i32, i32* %s, align 4
  %idxprom286 = sext i32 %133 to i64
  %arrayidx287 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom286
  %liberties288 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx287, i32 0, i32 3
  %134 = load i32, i32* %liberties288, align 4
  %cmp289 = icmp slt i32 %134, 20
  br i1 %cmp289, label %if.then.291, label %if.end.301

if.then.291:                                      ; preds = %do.body.285
  %135 = load i32, i32* %pos.addr, align 4
  %add292 = add nsw i32 %135, 1
  %136 = load i32, i32* %s, align 4
  %idxprom293 = sext i32 %136 to i64
  %arrayidx294 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom293
  %liberties295 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx294, i32 0, i32 3
  %137 = load i32, i32* %liberties295, align 4
  %idxprom296 = sext i32 %137 to i64
  %138 = load i32, i32* %s, align 4
  %idxprom297 = sext i32 %138 to i64
  %arrayidx298 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom297
  %libs299 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx298, i32 0, i32 4
  %arrayidx300 = getelementptr inbounds [20 x i32], [20 x i32]* %libs299, i32 0, i64 %idxprom296
  store i32 %add292, i32* %arrayidx300, align 4
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.291, %do.body.285
  %139 = load i32, i32* %s, align 4
  %idxprom302 = sext i32 %139 to i64
  %arrayidx303 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom302
  %liberties304 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx303, i32 0, i32 3
  %140 = load i32, i32* %liberties304, align 4
  %inc305 = add nsw i32 %140, 1
  store i32 %inc305, i32* %liberties304, align 4
  br label %do.end.306

do.end.306:                                       ; preds = %if.end.301
  br label %if.end.361

if.else.307:                                      ; preds = %if.end.277
  %141 = load i32, i32* %pos.addr, align 4
  %add308 = add nsw i32 %141, 1
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom309
  %142 = load i8, i8* %arrayidx310, align 1
  %conv311 = zext i8 %142 to i32
  %143 = load i32, i32* %other, align 4
  %cmp312 = icmp eq i32 %conv311, %143
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.360

land.lhs.true.314:                                ; preds = %if.else.307
  %144 = load i32, i32* %pos.addr, align 4
  %add315 = add nsw i32 %144, 1
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom316
  %145 = load i32, i32* %arrayidx317, align 4
  %idxprom318 = sext i32 %145 to i64
  %arrayidx319 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom318
  %mark320 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx319, i32 0, i32 7
  %146 = load i32, i32* %mark320, align 4
  %147 = load i32, i32* @string_mark, align 4
  %cmp321 = icmp ne i32 %146, %147
  br i1 %cmp321, label %if.then.323, label %if.end.360

if.then.323:                                      ; preds = %land.lhs.true.314
  %148 = load i32, i32* %pos.addr, align 4
  %add325 = add nsw i32 %148, 1
  %idxprom326 = sext i32 %add325 to i64
  %arrayidx327 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom326
  %149 = load i32, i32* %arrayidx327, align 4
  store i32 %149, i32* %s2324, align 4
  %150 = load i32, i32* %pos.addr, align 4
  %add328 = add nsw i32 %150, 1
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom329
  %151 = load i32, i32* %arrayidx330, align 4
  %152 = load i32, i32* %s, align 4
  %idxprom331 = sext i32 %152 to i64
  %arrayidx332 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom331
  %neighbors333 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx332, i32 0, i32 5
  %153 = load i32, i32* %neighbors333, align 4
  %inc334 = add nsw i32 %153, 1
  store i32 %inc334, i32* %neighbors333, align 4
  %idxprom335 = sext i32 %153 to i64
  %154 = load i32, i32* %s, align 4
  %idxprom336 = sext i32 %154 to i64
  %arrayidx337 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom336
  %neighborlist338 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx337, i32 0, i32 6
  %arrayidx339 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist338, i32 0, i64 %idxprom335
  store i32 %151, i32* %arrayidx339, align 4
  %155 = load i32, i32* %s2324, align 4
  %idxprom340 = sext i32 %155 to i64
  %arrayidx341 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom340
  %neighbors342 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx341, i32 0, i32 5
  %156 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address343 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %156, i32 0, i32 0
  store i32* %neighbors342, i32** %address343, align 8
  %157 = load i32, i32* %s2324, align 4
  %idxprom344 = sext i32 %157 to i64
  %arrayidx345 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom344
  %neighbors346 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx345, i32 0, i32 5
  %158 = load i32, i32* %neighbors346, align 4
  %159 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr347 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %159, i32 1
  store %struct.change_stack_entry* %incdec.ptr347, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value348 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %159, i32 0, i32 1
  store i32 %158, i32* %value348, align 4
  %160 = load i32, i32* %pos.addr, align 4
  %idxprom349 = sext i32 %160 to i64
  %arrayidx350 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom349
  %161 = load i32, i32* %arrayidx350, align 4
  %162 = load i32, i32* %s2324, align 4
  %idxprom351 = sext i32 %162 to i64
  %arrayidx352 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom351
  %neighbors353 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx352, i32 0, i32 5
  %163 = load i32, i32* %neighbors353, align 4
  %inc354 = add nsw i32 %163, 1
  store i32 %inc354, i32* %neighbors353, align 4
  %idxprom355 = sext i32 %163 to i64
  %164 = load i32, i32* %s2324, align 4
  %idxprom356 = sext i32 %164 to i64
  %arrayidx357 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom356
  %neighborlist358 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx357, i32 0, i32 6
  %arrayidx359 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist358, i32 0, i64 %idxprom355
  store i32 %161, i32* %arrayidx359, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.323, %land.lhs.true.314, %if.else.307
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %do.end.306
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @extend_neighbor_string(i32 %pos, i32 %s) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %liberties_updated = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s2290 = alloca i32, align 4
  %s2437 = alloca i32, align 4
  %s2584 = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 0, i32* %liberties_updated, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx2, i32 0, i32 2
  %4 = load i32, i32* %origin, align 4
  store i32 %4, i32* %pos2, align 4
  %5 = load i32, i32* %pos2, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom3
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %pos.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom5
  store i32 %6, i32* %arrayidx6, align 4
  %8 = load i32, i32* %pos2, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom7
  %9 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %9, i32 0, i32 0
  store i32* %arrayidx8, i32** %address, align 8
  %10 = load i32, i32* %pos2, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %12 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %12, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %12, i32 0, i32 1
  store i32 %11, i32* %value, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %14 = load i32, i32* %pos2, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom11
  store i32 %13, i32* %arrayidx12, align 4
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %pos2, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %s.addr, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom14
  %origin16 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx15, i32 0, i32 2
  %18 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address17 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %18, i32 0, i32 0
  store i32* %origin16, i32** %address17, align 8
  %19 = load i32, i32* %s.addr, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom18
  %origin20 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx19, i32 0, i32 2
  %20 = load i32, i32* %origin20, align 4
  %21 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr21 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %21, i32 1
  store %struct.change_stack_entry* %incdec.ptr21, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value22 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %21, i32 0, i32 1
  store i32 %20, i32* %value22, align 4
  %22 = load i32, i32* %pos.addr, align 4
  %23 = load i32, i32* %s.addr, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom23
  %origin25 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx24, i32 0, i32 2
  store i32 %22, i32* %origin25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %s.addr, align 4
  %25 = load i32, i32* %pos.addr, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom26
  store i32 %24, i32* %arrayidx27, align 4
  %26 = load i32, i32* %s.addr, align 4
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom28
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx29, i32 0, i32 1
  %27 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address30 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %27, i32 0, i32 0
  store i32* %size, i32** %address30, align 8
  %28 = load i32, i32* %s.addr, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom31
  %size33 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx32, i32 0, i32 1
  %29 = load i32, i32* %size33, align 4
  %30 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %30, i32 1
  store %struct.change_stack_entry* %incdec.ptr34, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value35 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %30, i32 0, i32 1
  store i32 %29, i32* %value35, align 4
  %31 = load i32, i32* %s.addr, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom36
  %size38 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx37, i32 0, i32 1
  %32 = load i32, i32* %size38, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %size38, align 4
  %33 = load i32, i32* %s.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom39
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx40, i32 0, i32 3
  %34 = load i32, i32* %liberties, align 4
  %cmp41 = icmp sgt i32 %34, 20
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.end
  %35 = load i32, i32* %s.addr, align 4
  call void @update_liberties(i32 %35)
  store i32 1, i32* %liberties_updated, align 4
  br label %if.end.44

if.else:                                          ; preds = %if.end
  %36 = load i32, i32* %s.addr, align 4
  %37 = load i32, i32* %pos.addr, align 4
  call void @remove_liberty(i32 %36, i32 %37)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.43
  %38 = load i32, i32* @string_mark, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* @string_mark, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %s.addr, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom46
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx47, i32 0, i32 5
  %41 = load i32, i32* %neighbors, align 4
  %cmp48 = icmp slt i32 %39, %41
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* @string_mark, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %43 to i64
  %44 = load i32, i32* %s.addr, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom51
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx52, i32 0, i32 6
  %arrayidx53 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom50
  %45 = load i32, i32* %arrayidx53, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom54
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx55, i32 0, i32 7
  store i32 %42, i32* %mark, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %46, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %47, 20
  %idxprom57 = sext i32 %add to i64
  %arrayidx58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom57
  %48 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %48 to i32
  %cmp60 = icmp eq i32 %conv59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.127

if.then.62:                                       ; preds = %for.end
  %49 = load i32, i32* %liberties_updated, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.end.126, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.62
  %50 = load i32, i32* %pos.addr, align 4
  %add63 = add nsw i32 %50, 20
  %add64 = add nsw i32 %add63, 20
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom65
  %51 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %51 to i32
  %52 = load i32, i32* %color, align 4
  %cmp68 = icmp eq i32 %conv67, %52
  br i1 %cmp68, label %land.lhs.true.70, label %lor.lhs.false

land.lhs.true.70:                                 ; preds = %land.lhs.true
  %53 = load i32, i32* %pos.addr, align 4
  %add71 = add nsw i32 %53, 20
  %add72 = add nsw i32 %add71, 20
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom73
  %54 = load i32, i32* %arrayidx74, align 4
  %55 = load i32, i32* %s.addr, align 4
  %cmp75 = icmp eq i32 %54, %55
  br i1 %cmp75, label %if.end.126, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.70, %land.lhs.true
  %56 = load i32, i32* %pos.addr, align 4
  %add77 = add nsw i32 %56, 20
  %sub78 = sub nsw i32 %add77, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom79
  %57 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %57 to i32
  %58 = load i32, i32* %color, align 4
  %cmp82 = icmp eq i32 %conv81, %58
  br i1 %cmp82, label %land.lhs.true.84, label %lor.lhs.false.91

land.lhs.true.84:                                 ; preds = %lor.lhs.false
  %59 = load i32, i32* %pos.addr, align 4
  %add85 = add nsw i32 %59, 20
  %sub86 = sub nsw i32 %add85, 1
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom87
  %60 = load i32, i32* %arrayidx88, align 4
  %61 = load i32, i32* %s.addr, align 4
  %cmp89 = icmp eq i32 %60, %61
  br i1 %cmp89, label %if.end.126, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.84, %lor.lhs.false
  %62 = load i32, i32* %pos.addr, align 4
  %add92 = add nsw i32 %62, 20
  %add93 = add nsw i32 %add92, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom94
  %63 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %63 to i32
  %64 = load i32, i32* %color, align 4
  %cmp97 = icmp eq i32 %conv96, %64
  br i1 %cmp97, label %land.lhs.true.99, label %if.then.106

land.lhs.true.99:                                 ; preds = %lor.lhs.false.91
  %65 = load i32, i32* %pos.addr, align 4
  %add100 = add nsw i32 %65, 20
  %add101 = add nsw i32 %add100, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom102
  %66 = load i32, i32* %arrayidx103, align 4
  %67 = load i32, i32* %s.addr, align 4
  %cmp104 = icmp eq i32 %66, %67
  br i1 %cmp104, label %if.end.126, label %if.then.106

if.then.106:                                      ; preds = %land.lhs.true.99, %lor.lhs.false.91
  br label %do.body

do.body:                                          ; preds = %if.then.106
  %68 = load i32, i32* %s.addr, align 4
  %idxprom107 = sext i32 %68 to i64
  %arrayidx108 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom107
  %liberties109 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx108, i32 0, i32 3
  %69 = load i32, i32* %liberties109, align 4
  %cmp110 = icmp slt i32 %69, 20
  br i1 %cmp110, label %if.then.112, label %if.end.121

if.then.112:                                      ; preds = %do.body
  %70 = load i32, i32* %pos.addr, align 4
  %add113 = add nsw i32 %70, 20
  %71 = load i32, i32* %s.addr, align 4
  %idxprom114 = sext i32 %71 to i64
  %arrayidx115 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom114
  %liberties116 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx115, i32 0, i32 3
  %72 = load i32, i32* %liberties116, align 4
  %idxprom117 = sext i32 %72 to i64
  %73 = load i32, i32* %s.addr, align 4
  %idxprom118 = sext i32 %73 to i64
  %arrayidx119 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom118
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx119, i32 0, i32 4
  %arrayidx120 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom117
  store i32 %add113, i32* %arrayidx120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.112, %do.body
  %74 = load i32, i32* %s.addr, align 4
  %idxprom122 = sext i32 %74 to i64
  %arrayidx123 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom122
  %liberties124 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx123, i32 0, i32 3
  %75 = load i32, i32* %liberties124, align 4
  %inc125 = add nsw i32 %75, 1
  store i32 %inc125, i32* %liberties124, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.121
  br label %if.end.126

if.end.126:                                       ; preds = %do.end, %land.lhs.true.99, %land.lhs.true.84, %land.lhs.true.70, %if.then.62
  br label %if.end.195

if.else.127:                                      ; preds = %for.end
  %76 = load i32, i32* %pos.addr, align 4
  %add128 = add nsw i32 %76, 20
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom129
  %77 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %77 to i32
  %78 = load i32, i32* %other, align 4
  %cmp132 = icmp eq i32 %conv131, %78
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.194

land.lhs.true.134:                                ; preds = %if.else.127
  %79 = load i32, i32* %pos.addr, align 4
  %add135 = add nsw i32 %79, 20
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom136
  %80 = load i32, i32* %arrayidx137, align 4
  %idxprom138 = sext i32 %80 to i64
  %arrayidx139 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom138
  %mark140 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx139, i32 0, i32 7
  %81 = load i32, i32* %mark140, align 4
  %82 = load i32, i32* @string_mark, align 4
  %cmp141 = icmp ne i32 %81, %82
  br i1 %cmp141, label %if.then.143, label %if.end.194

if.then.143:                                      ; preds = %land.lhs.true.134
  %83 = load i32, i32* %pos.addr, align 4
  %add144 = add nsw i32 %83, 20
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom145
  %84 = load i32, i32* %arrayidx146, align 4
  store i32 %84, i32* %s2, align 4
  %85 = load i32, i32* %s.addr, align 4
  %idxprom147 = sext i32 %85 to i64
  %arrayidx148 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom147
  %neighbors149 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx148, i32 0, i32 5
  %86 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address150 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %86, i32 0, i32 0
  store i32* %neighbors149, i32** %address150, align 8
  %87 = load i32, i32* %s.addr, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom151
  %neighbors153 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx152, i32 0, i32 5
  %88 = load i32, i32* %neighbors153, align 4
  %89 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr154 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %89, i32 1
  store %struct.change_stack_entry* %incdec.ptr154, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value155 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %89, i32 0, i32 1
  store i32 %88, i32* %value155, align 4
  %90 = load i32, i32* %pos.addr, align 4
  %add156 = add nsw i32 %90, 20
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom157
  %91 = load i32, i32* %arrayidx158, align 4
  %92 = load i32, i32* %s.addr, align 4
  %idxprom159 = sext i32 %92 to i64
  %arrayidx160 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom159
  %neighbors161 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx160, i32 0, i32 5
  %93 = load i32, i32* %neighbors161, align 4
  %inc162 = add nsw i32 %93, 1
  store i32 %inc162, i32* %neighbors161, align 4
  %idxprom163 = sext i32 %93 to i64
  %94 = load i32, i32* %s.addr, align 4
  %idxprom164 = sext i32 %94 to i64
  %arrayidx165 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom164
  %neighborlist166 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx165, i32 0, i32 6
  %arrayidx167 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist166, i32 0, i64 %idxprom163
  store i32 %91, i32* %arrayidx167, align 4
  %95 = load i32, i32* %s2, align 4
  %idxprom168 = sext i32 %95 to i64
  %arrayidx169 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom168
  %neighbors170 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx169, i32 0, i32 5
  %96 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address171 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %96, i32 0, i32 0
  store i32* %neighbors170, i32** %address171, align 8
  %97 = load i32, i32* %s2, align 4
  %idxprom172 = sext i32 %97 to i64
  %arrayidx173 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom172
  %neighbors174 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx173, i32 0, i32 5
  %98 = load i32, i32* %neighbors174, align 4
  %99 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr175 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %99, i32 1
  store %struct.change_stack_entry* %incdec.ptr175, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value176 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %99, i32 0, i32 1
  store i32 %98, i32* %value176, align 4
  %100 = load i32, i32* %pos.addr, align 4
  %idxprom177 = sext i32 %100 to i64
  %arrayidx178 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom177
  %101 = load i32, i32* %arrayidx178, align 4
  %102 = load i32, i32* %s2, align 4
  %idxprom179 = sext i32 %102 to i64
  %arrayidx180 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom179
  %neighbors181 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx180, i32 0, i32 5
  %103 = load i32, i32* %neighbors181, align 4
  %inc182 = add nsw i32 %103, 1
  store i32 %inc182, i32* %neighbors181, align 4
  %idxprom183 = sext i32 %103 to i64
  %104 = load i32, i32* %s2, align 4
  %idxprom184 = sext i32 %104 to i64
  %arrayidx185 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom184
  %neighborlist186 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx185, i32 0, i32 6
  %arrayidx187 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist186, i32 0, i64 %idxprom183
  store i32 %101, i32* %arrayidx187, align 4
  %105 = load i32, i32* @string_mark, align 4
  %106 = load i32, i32* %pos.addr, align 4
  %add188 = add nsw i32 %106, 20
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom189
  %107 = load i32, i32* %arrayidx190, align 4
  %idxprom191 = sext i32 %107 to i64
  %arrayidx192 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom191
  %mark193 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx192, i32 0, i32 7
  store i32 %105, i32* %mark193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.143, %land.lhs.true.134, %if.else.127
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.end.126
  %108 = load i32, i32* %pos.addr, align 4
  %sub196 = sub nsw i32 %108, 1
  %idxprom197 = sext i32 %sub196 to i64
  %arrayidx198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom197
  %109 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %109 to i32
  %cmp200 = icmp eq i32 %conv199, 0
  br i1 %cmp200, label %if.then.202, label %if.else.273

if.then.202:                                      ; preds = %if.end.195
  %110 = load i32, i32* %liberties_updated, align 4
  %tobool203 = icmp ne i32 %110, 0
  br i1 %tobool203, label %if.end.272, label %land.lhs.true.204

land.lhs.true.204:                                ; preds = %if.then.202
  %111 = load i32, i32* %pos.addr, align 4
  %sub205 = sub nsw i32 %111, 1
  %sub206 = sub nsw i32 %sub205, 1
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom207
  %112 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %112 to i32
  %113 = load i32, i32* %color, align 4
  %cmp210 = icmp eq i32 %conv209, %113
  br i1 %cmp210, label %land.lhs.true.212, label %lor.lhs.false.219

land.lhs.true.212:                                ; preds = %land.lhs.true.204
  %114 = load i32, i32* %pos.addr, align 4
  %sub213 = sub nsw i32 %114, 1
  %sub214 = sub nsw i32 %sub213, 1
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom215
  %115 = load i32, i32* %arrayidx216, align 4
  %116 = load i32, i32* %s.addr, align 4
  %cmp217 = icmp eq i32 %115, %116
  br i1 %cmp217, label %if.end.272, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %land.lhs.true.212, %land.lhs.true.204
  %117 = load i32, i32* %pos.addr, align 4
  %sub220 = sub nsw i32 %117, 1
  %sub221 = sub nsw i32 %sub220, 20
  %idxprom222 = sext i32 %sub221 to i64
  %arrayidx223 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom222
  %118 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %118 to i32
  %119 = load i32, i32* %color, align 4
  %cmp225 = icmp eq i32 %conv224, %119
  br i1 %cmp225, label %land.lhs.true.227, label %lor.lhs.false.234

land.lhs.true.227:                                ; preds = %lor.lhs.false.219
  %120 = load i32, i32* %pos.addr, align 4
  %sub228 = sub nsw i32 %120, 1
  %sub229 = sub nsw i32 %sub228, 20
  %idxprom230 = sext i32 %sub229 to i64
  %arrayidx231 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom230
  %121 = load i32, i32* %arrayidx231, align 4
  %122 = load i32, i32* %s.addr, align 4
  %cmp232 = icmp eq i32 %121, %122
  br i1 %cmp232, label %if.end.272, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %land.lhs.true.227, %lor.lhs.false.219
  %123 = load i32, i32* %pos.addr, align 4
  %sub235 = sub nsw i32 %123, 1
  %add236 = add nsw i32 %sub235, 20
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom237
  %124 = load i8, i8* %arrayidx238, align 1
  %conv239 = zext i8 %124 to i32
  %125 = load i32, i32* %color, align 4
  %cmp240 = icmp eq i32 %conv239, %125
  br i1 %cmp240, label %land.lhs.true.242, label %if.then.249

land.lhs.true.242:                                ; preds = %lor.lhs.false.234
  %126 = load i32, i32* %pos.addr, align 4
  %sub243 = sub nsw i32 %126, 1
  %add244 = add nsw i32 %sub243, 20
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom245
  %127 = load i32, i32* %arrayidx246, align 4
  %128 = load i32, i32* %s.addr, align 4
  %cmp247 = icmp eq i32 %127, %128
  br i1 %cmp247, label %if.end.272, label %if.then.249

if.then.249:                                      ; preds = %land.lhs.true.242, %lor.lhs.false.234
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  %129 = load i32, i32* %s.addr, align 4
  %idxprom251 = sext i32 %129 to i64
  %arrayidx252 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom251
  %liberties253 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx252, i32 0, i32 3
  %130 = load i32, i32* %liberties253, align 4
  %cmp254 = icmp slt i32 %130, 20
  br i1 %cmp254, label %if.then.256, label %if.end.266

if.then.256:                                      ; preds = %do.body.250
  %131 = load i32, i32* %pos.addr, align 4
  %sub257 = sub nsw i32 %131, 1
  %132 = load i32, i32* %s.addr, align 4
  %idxprom258 = sext i32 %132 to i64
  %arrayidx259 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom258
  %liberties260 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx259, i32 0, i32 3
  %133 = load i32, i32* %liberties260, align 4
  %idxprom261 = sext i32 %133 to i64
  %134 = load i32, i32* %s.addr, align 4
  %idxprom262 = sext i32 %134 to i64
  %arrayidx263 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom262
  %libs264 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx263, i32 0, i32 4
  %arrayidx265 = getelementptr inbounds [20 x i32], [20 x i32]* %libs264, i32 0, i64 %idxprom261
  store i32 %sub257, i32* %arrayidx265, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.256, %do.body.250
  %135 = load i32, i32* %s.addr, align 4
  %idxprom267 = sext i32 %135 to i64
  %arrayidx268 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom267
  %liberties269 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx268, i32 0, i32 3
  %136 = load i32, i32* %liberties269, align 4
  %inc270 = add nsw i32 %136, 1
  store i32 %inc270, i32* %liberties269, align 4
  br label %do.end.271

do.end.271:                                       ; preds = %if.end.266
  br label %if.end.272

if.end.272:                                       ; preds = %do.end.271, %land.lhs.true.242, %land.lhs.true.227, %land.lhs.true.212, %if.then.202
  br label %if.end.342

if.else.273:                                      ; preds = %if.end.195
  %137 = load i32, i32* %pos.addr, align 4
  %sub274 = sub nsw i32 %137, 1
  %idxprom275 = sext i32 %sub274 to i64
  %arrayidx276 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom275
  %138 = load i8, i8* %arrayidx276, align 1
  %conv277 = zext i8 %138 to i32
  %139 = load i32, i32* %other, align 4
  %cmp278 = icmp eq i32 %conv277, %139
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.341

land.lhs.true.280:                                ; preds = %if.else.273
  %140 = load i32, i32* %pos.addr, align 4
  %sub281 = sub nsw i32 %140, 1
  %idxprom282 = sext i32 %sub281 to i64
  %arrayidx283 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom282
  %141 = load i32, i32* %arrayidx283, align 4
  %idxprom284 = sext i32 %141 to i64
  %arrayidx285 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom284
  %mark286 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx285, i32 0, i32 7
  %142 = load i32, i32* %mark286, align 4
  %143 = load i32, i32* @string_mark, align 4
  %cmp287 = icmp ne i32 %142, %143
  br i1 %cmp287, label %if.then.289, label %if.end.341

if.then.289:                                      ; preds = %land.lhs.true.280
  %144 = load i32, i32* %pos.addr, align 4
  %sub291 = sub nsw i32 %144, 1
  %idxprom292 = sext i32 %sub291 to i64
  %arrayidx293 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom292
  %145 = load i32, i32* %arrayidx293, align 4
  store i32 %145, i32* %s2290, align 4
  %146 = load i32, i32* %s.addr, align 4
  %idxprom294 = sext i32 %146 to i64
  %arrayidx295 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom294
  %neighbors296 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx295, i32 0, i32 5
  %147 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address297 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %147, i32 0, i32 0
  store i32* %neighbors296, i32** %address297, align 8
  %148 = load i32, i32* %s.addr, align 4
  %idxprom298 = sext i32 %148 to i64
  %arrayidx299 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom298
  %neighbors300 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx299, i32 0, i32 5
  %149 = load i32, i32* %neighbors300, align 4
  %150 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr301 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %150, i32 1
  store %struct.change_stack_entry* %incdec.ptr301, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value302 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %150, i32 0, i32 1
  store i32 %149, i32* %value302, align 4
  %151 = load i32, i32* %pos.addr, align 4
  %sub303 = sub nsw i32 %151, 1
  %idxprom304 = sext i32 %sub303 to i64
  %arrayidx305 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom304
  %152 = load i32, i32* %arrayidx305, align 4
  %153 = load i32, i32* %s.addr, align 4
  %idxprom306 = sext i32 %153 to i64
  %arrayidx307 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom306
  %neighbors308 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx307, i32 0, i32 5
  %154 = load i32, i32* %neighbors308, align 4
  %inc309 = add nsw i32 %154, 1
  store i32 %inc309, i32* %neighbors308, align 4
  %idxprom310 = sext i32 %154 to i64
  %155 = load i32, i32* %s.addr, align 4
  %idxprom311 = sext i32 %155 to i64
  %arrayidx312 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom311
  %neighborlist313 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx312, i32 0, i32 6
  %arrayidx314 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist313, i32 0, i64 %idxprom310
  store i32 %152, i32* %arrayidx314, align 4
  %156 = load i32, i32* %s2290, align 4
  %idxprom315 = sext i32 %156 to i64
  %arrayidx316 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom315
  %neighbors317 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx316, i32 0, i32 5
  %157 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address318 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %157, i32 0, i32 0
  store i32* %neighbors317, i32** %address318, align 8
  %158 = load i32, i32* %s2290, align 4
  %idxprom319 = sext i32 %158 to i64
  %arrayidx320 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom319
  %neighbors321 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx320, i32 0, i32 5
  %159 = load i32, i32* %neighbors321, align 4
  %160 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr322 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %160, i32 1
  store %struct.change_stack_entry* %incdec.ptr322, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value323 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %160, i32 0, i32 1
  store i32 %159, i32* %value323, align 4
  %161 = load i32, i32* %pos.addr, align 4
  %idxprom324 = sext i32 %161 to i64
  %arrayidx325 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom324
  %162 = load i32, i32* %arrayidx325, align 4
  %163 = load i32, i32* %s2290, align 4
  %idxprom326 = sext i32 %163 to i64
  %arrayidx327 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom326
  %neighbors328 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx327, i32 0, i32 5
  %164 = load i32, i32* %neighbors328, align 4
  %inc329 = add nsw i32 %164, 1
  store i32 %inc329, i32* %neighbors328, align 4
  %idxprom330 = sext i32 %164 to i64
  %165 = load i32, i32* %s2290, align 4
  %idxprom331 = sext i32 %165 to i64
  %arrayidx332 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom331
  %neighborlist333 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx332, i32 0, i32 6
  %arrayidx334 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist333, i32 0, i64 %idxprom330
  store i32 %162, i32* %arrayidx334, align 4
  %166 = load i32, i32* @string_mark, align 4
  %167 = load i32, i32* %pos.addr, align 4
  %sub335 = sub nsw i32 %167, 1
  %idxprom336 = sext i32 %sub335 to i64
  %arrayidx337 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom336
  %168 = load i32, i32* %arrayidx337, align 4
  %idxprom338 = sext i32 %168 to i64
  %arrayidx339 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom338
  %mark340 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx339, i32 0, i32 7
  store i32 %166, i32* %mark340, align 4
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.289, %land.lhs.true.280, %if.else.273
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.end.272
  %169 = load i32, i32* %pos.addr, align 4
  %sub343 = sub nsw i32 %169, 20
  %idxprom344 = sext i32 %sub343 to i64
  %arrayidx345 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom344
  %170 = load i8, i8* %arrayidx345, align 1
  %conv346 = zext i8 %170 to i32
  %cmp347 = icmp eq i32 %conv346, 0
  br i1 %cmp347, label %if.then.349, label %if.else.420

if.then.349:                                      ; preds = %if.end.342
  %171 = load i32, i32* %liberties_updated, align 4
  %tobool350 = icmp ne i32 %171, 0
  br i1 %tobool350, label %if.end.419, label %land.lhs.true.351

land.lhs.true.351:                                ; preds = %if.then.349
  %172 = load i32, i32* %pos.addr, align 4
  %sub352 = sub nsw i32 %172, 20
  %sub353 = sub nsw i32 %sub352, 20
  %idxprom354 = sext i32 %sub353 to i64
  %arrayidx355 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom354
  %173 = load i8, i8* %arrayidx355, align 1
  %conv356 = zext i8 %173 to i32
  %174 = load i32, i32* %color, align 4
  %cmp357 = icmp eq i32 %conv356, %174
  br i1 %cmp357, label %land.lhs.true.359, label %lor.lhs.false.366

land.lhs.true.359:                                ; preds = %land.lhs.true.351
  %175 = load i32, i32* %pos.addr, align 4
  %sub360 = sub nsw i32 %175, 20
  %sub361 = sub nsw i32 %sub360, 20
  %idxprom362 = sext i32 %sub361 to i64
  %arrayidx363 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom362
  %176 = load i32, i32* %arrayidx363, align 4
  %177 = load i32, i32* %s.addr, align 4
  %cmp364 = icmp eq i32 %176, %177
  br i1 %cmp364, label %if.end.419, label %lor.lhs.false.366

lor.lhs.false.366:                                ; preds = %land.lhs.true.359, %land.lhs.true.351
  %178 = load i32, i32* %pos.addr, align 4
  %sub367 = sub nsw i32 %178, 20
  %add368 = add nsw i32 %sub367, 1
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom369
  %179 = load i8, i8* %arrayidx370, align 1
  %conv371 = zext i8 %179 to i32
  %180 = load i32, i32* %color, align 4
  %cmp372 = icmp eq i32 %conv371, %180
  br i1 %cmp372, label %land.lhs.true.374, label %lor.lhs.false.381

land.lhs.true.374:                                ; preds = %lor.lhs.false.366
  %181 = load i32, i32* %pos.addr, align 4
  %sub375 = sub nsw i32 %181, 20
  %add376 = add nsw i32 %sub375, 1
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom377
  %182 = load i32, i32* %arrayidx378, align 4
  %183 = load i32, i32* %s.addr, align 4
  %cmp379 = icmp eq i32 %182, %183
  br i1 %cmp379, label %if.end.419, label %lor.lhs.false.381

lor.lhs.false.381:                                ; preds = %land.lhs.true.374, %lor.lhs.false.366
  %184 = load i32, i32* %pos.addr, align 4
  %sub382 = sub nsw i32 %184, 20
  %sub383 = sub nsw i32 %sub382, 1
  %idxprom384 = sext i32 %sub383 to i64
  %arrayidx385 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom384
  %185 = load i8, i8* %arrayidx385, align 1
  %conv386 = zext i8 %185 to i32
  %186 = load i32, i32* %color, align 4
  %cmp387 = icmp eq i32 %conv386, %186
  br i1 %cmp387, label %land.lhs.true.389, label %if.then.396

land.lhs.true.389:                                ; preds = %lor.lhs.false.381
  %187 = load i32, i32* %pos.addr, align 4
  %sub390 = sub nsw i32 %187, 20
  %sub391 = sub nsw i32 %sub390, 1
  %idxprom392 = sext i32 %sub391 to i64
  %arrayidx393 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom392
  %188 = load i32, i32* %arrayidx393, align 4
  %189 = load i32, i32* %s.addr, align 4
  %cmp394 = icmp eq i32 %188, %189
  br i1 %cmp394, label %if.end.419, label %if.then.396

if.then.396:                                      ; preds = %land.lhs.true.389, %lor.lhs.false.381
  br label %do.body.397

do.body.397:                                      ; preds = %if.then.396
  %190 = load i32, i32* %s.addr, align 4
  %idxprom398 = sext i32 %190 to i64
  %arrayidx399 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom398
  %liberties400 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx399, i32 0, i32 3
  %191 = load i32, i32* %liberties400, align 4
  %cmp401 = icmp slt i32 %191, 20
  br i1 %cmp401, label %if.then.403, label %if.end.413

if.then.403:                                      ; preds = %do.body.397
  %192 = load i32, i32* %pos.addr, align 4
  %sub404 = sub nsw i32 %192, 20
  %193 = load i32, i32* %s.addr, align 4
  %idxprom405 = sext i32 %193 to i64
  %arrayidx406 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom405
  %liberties407 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx406, i32 0, i32 3
  %194 = load i32, i32* %liberties407, align 4
  %idxprom408 = sext i32 %194 to i64
  %195 = load i32, i32* %s.addr, align 4
  %idxprom409 = sext i32 %195 to i64
  %arrayidx410 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom409
  %libs411 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx410, i32 0, i32 4
  %arrayidx412 = getelementptr inbounds [20 x i32], [20 x i32]* %libs411, i32 0, i64 %idxprom408
  store i32 %sub404, i32* %arrayidx412, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.403, %do.body.397
  %196 = load i32, i32* %s.addr, align 4
  %idxprom414 = sext i32 %196 to i64
  %arrayidx415 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom414
  %liberties416 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx415, i32 0, i32 3
  %197 = load i32, i32* %liberties416, align 4
  %inc417 = add nsw i32 %197, 1
  store i32 %inc417, i32* %liberties416, align 4
  br label %do.end.418

do.end.418:                                       ; preds = %if.end.413
  br label %if.end.419

if.end.419:                                       ; preds = %do.end.418, %land.lhs.true.389, %land.lhs.true.374, %land.lhs.true.359, %if.then.349
  br label %if.end.489

if.else.420:                                      ; preds = %if.end.342
  %198 = load i32, i32* %pos.addr, align 4
  %sub421 = sub nsw i32 %198, 20
  %idxprom422 = sext i32 %sub421 to i64
  %arrayidx423 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom422
  %199 = load i8, i8* %arrayidx423, align 1
  %conv424 = zext i8 %199 to i32
  %200 = load i32, i32* %other, align 4
  %cmp425 = icmp eq i32 %conv424, %200
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.488

land.lhs.true.427:                                ; preds = %if.else.420
  %201 = load i32, i32* %pos.addr, align 4
  %sub428 = sub nsw i32 %201, 20
  %idxprom429 = sext i32 %sub428 to i64
  %arrayidx430 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom429
  %202 = load i32, i32* %arrayidx430, align 4
  %idxprom431 = sext i32 %202 to i64
  %arrayidx432 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom431
  %mark433 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx432, i32 0, i32 7
  %203 = load i32, i32* %mark433, align 4
  %204 = load i32, i32* @string_mark, align 4
  %cmp434 = icmp ne i32 %203, %204
  br i1 %cmp434, label %if.then.436, label %if.end.488

if.then.436:                                      ; preds = %land.lhs.true.427
  %205 = load i32, i32* %pos.addr, align 4
  %sub438 = sub nsw i32 %205, 20
  %idxprom439 = sext i32 %sub438 to i64
  %arrayidx440 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom439
  %206 = load i32, i32* %arrayidx440, align 4
  store i32 %206, i32* %s2437, align 4
  %207 = load i32, i32* %s.addr, align 4
  %idxprom441 = sext i32 %207 to i64
  %arrayidx442 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom441
  %neighbors443 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx442, i32 0, i32 5
  %208 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address444 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %208, i32 0, i32 0
  store i32* %neighbors443, i32** %address444, align 8
  %209 = load i32, i32* %s.addr, align 4
  %idxprom445 = sext i32 %209 to i64
  %arrayidx446 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom445
  %neighbors447 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx446, i32 0, i32 5
  %210 = load i32, i32* %neighbors447, align 4
  %211 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr448 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %211, i32 1
  store %struct.change_stack_entry* %incdec.ptr448, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value449 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %211, i32 0, i32 1
  store i32 %210, i32* %value449, align 4
  %212 = load i32, i32* %pos.addr, align 4
  %sub450 = sub nsw i32 %212, 20
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom451
  %213 = load i32, i32* %arrayidx452, align 4
  %214 = load i32, i32* %s.addr, align 4
  %idxprom453 = sext i32 %214 to i64
  %arrayidx454 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom453
  %neighbors455 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx454, i32 0, i32 5
  %215 = load i32, i32* %neighbors455, align 4
  %inc456 = add nsw i32 %215, 1
  store i32 %inc456, i32* %neighbors455, align 4
  %idxprom457 = sext i32 %215 to i64
  %216 = load i32, i32* %s.addr, align 4
  %idxprom458 = sext i32 %216 to i64
  %arrayidx459 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom458
  %neighborlist460 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx459, i32 0, i32 6
  %arrayidx461 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist460, i32 0, i64 %idxprom457
  store i32 %213, i32* %arrayidx461, align 4
  %217 = load i32, i32* %s2437, align 4
  %idxprom462 = sext i32 %217 to i64
  %arrayidx463 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom462
  %neighbors464 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx463, i32 0, i32 5
  %218 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address465 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %218, i32 0, i32 0
  store i32* %neighbors464, i32** %address465, align 8
  %219 = load i32, i32* %s2437, align 4
  %idxprom466 = sext i32 %219 to i64
  %arrayidx467 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom466
  %neighbors468 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx467, i32 0, i32 5
  %220 = load i32, i32* %neighbors468, align 4
  %221 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr469 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %221, i32 1
  store %struct.change_stack_entry* %incdec.ptr469, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value470 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %221, i32 0, i32 1
  store i32 %220, i32* %value470, align 4
  %222 = load i32, i32* %pos.addr, align 4
  %idxprom471 = sext i32 %222 to i64
  %arrayidx472 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom471
  %223 = load i32, i32* %arrayidx472, align 4
  %224 = load i32, i32* %s2437, align 4
  %idxprom473 = sext i32 %224 to i64
  %arrayidx474 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom473
  %neighbors475 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx474, i32 0, i32 5
  %225 = load i32, i32* %neighbors475, align 4
  %inc476 = add nsw i32 %225, 1
  store i32 %inc476, i32* %neighbors475, align 4
  %idxprom477 = sext i32 %225 to i64
  %226 = load i32, i32* %s2437, align 4
  %idxprom478 = sext i32 %226 to i64
  %arrayidx479 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom478
  %neighborlist480 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx479, i32 0, i32 6
  %arrayidx481 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist480, i32 0, i64 %idxprom477
  store i32 %223, i32* %arrayidx481, align 4
  %227 = load i32, i32* @string_mark, align 4
  %228 = load i32, i32* %pos.addr, align 4
  %sub482 = sub nsw i32 %228, 20
  %idxprom483 = sext i32 %sub482 to i64
  %arrayidx484 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom483
  %229 = load i32, i32* %arrayidx484, align 4
  %idxprom485 = sext i32 %229 to i64
  %arrayidx486 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom485
  %mark487 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx486, i32 0, i32 7
  store i32 %227, i32* %mark487, align 4
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.436, %land.lhs.true.427, %if.else.420
  br label %if.end.489

if.end.489:                                       ; preds = %if.end.488, %if.end.419
  %230 = load i32, i32* %pos.addr, align 4
  %add490 = add nsw i32 %230, 1
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom491
  %231 = load i8, i8* %arrayidx492, align 1
  %conv493 = zext i8 %231 to i32
  %cmp494 = icmp eq i32 %conv493, 0
  br i1 %cmp494, label %if.then.496, label %if.else.567

if.then.496:                                      ; preds = %if.end.489
  %232 = load i32, i32* %liberties_updated, align 4
  %tobool497 = icmp ne i32 %232, 0
  br i1 %tobool497, label %if.end.566, label %land.lhs.true.498

land.lhs.true.498:                                ; preds = %if.then.496
  %233 = load i32, i32* %pos.addr, align 4
  %add499 = add nsw i32 %233, 1
  %add500 = add nsw i32 %add499, 1
  %idxprom501 = sext i32 %add500 to i64
  %arrayidx502 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom501
  %234 = load i8, i8* %arrayidx502, align 1
  %conv503 = zext i8 %234 to i32
  %235 = load i32, i32* %color, align 4
  %cmp504 = icmp eq i32 %conv503, %235
  br i1 %cmp504, label %land.lhs.true.506, label %lor.lhs.false.513

land.lhs.true.506:                                ; preds = %land.lhs.true.498
  %236 = load i32, i32* %pos.addr, align 4
  %add507 = add nsw i32 %236, 1
  %add508 = add nsw i32 %add507, 1
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom509
  %237 = load i32, i32* %arrayidx510, align 4
  %238 = load i32, i32* %s.addr, align 4
  %cmp511 = icmp eq i32 %237, %238
  br i1 %cmp511, label %if.end.566, label %lor.lhs.false.513

lor.lhs.false.513:                                ; preds = %land.lhs.true.506, %land.lhs.true.498
  %239 = load i32, i32* %pos.addr, align 4
  %add514 = add nsw i32 %239, 1
  %add515 = add nsw i32 %add514, 20
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom516
  %240 = load i8, i8* %arrayidx517, align 1
  %conv518 = zext i8 %240 to i32
  %241 = load i32, i32* %color, align 4
  %cmp519 = icmp eq i32 %conv518, %241
  br i1 %cmp519, label %land.lhs.true.521, label %lor.lhs.false.528

land.lhs.true.521:                                ; preds = %lor.lhs.false.513
  %242 = load i32, i32* %pos.addr, align 4
  %add522 = add nsw i32 %242, 1
  %add523 = add nsw i32 %add522, 20
  %idxprom524 = sext i32 %add523 to i64
  %arrayidx525 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom524
  %243 = load i32, i32* %arrayidx525, align 4
  %244 = load i32, i32* %s.addr, align 4
  %cmp526 = icmp eq i32 %243, %244
  br i1 %cmp526, label %if.end.566, label %lor.lhs.false.528

lor.lhs.false.528:                                ; preds = %land.lhs.true.521, %lor.lhs.false.513
  %245 = load i32, i32* %pos.addr, align 4
  %add529 = add nsw i32 %245, 1
  %sub530 = sub nsw i32 %add529, 20
  %idxprom531 = sext i32 %sub530 to i64
  %arrayidx532 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom531
  %246 = load i8, i8* %arrayidx532, align 1
  %conv533 = zext i8 %246 to i32
  %247 = load i32, i32* %color, align 4
  %cmp534 = icmp eq i32 %conv533, %247
  br i1 %cmp534, label %land.lhs.true.536, label %if.then.543

land.lhs.true.536:                                ; preds = %lor.lhs.false.528
  %248 = load i32, i32* %pos.addr, align 4
  %add537 = add nsw i32 %248, 1
  %sub538 = sub nsw i32 %add537, 20
  %idxprom539 = sext i32 %sub538 to i64
  %arrayidx540 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom539
  %249 = load i32, i32* %arrayidx540, align 4
  %250 = load i32, i32* %s.addr, align 4
  %cmp541 = icmp eq i32 %249, %250
  br i1 %cmp541, label %if.end.566, label %if.then.543

if.then.543:                                      ; preds = %land.lhs.true.536, %lor.lhs.false.528
  br label %do.body.544

do.body.544:                                      ; preds = %if.then.543
  %251 = load i32, i32* %s.addr, align 4
  %idxprom545 = sext i32 %251 to i64
  %arrayidx546 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom545
  %liberties547 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx546, i32 0, i32 3
  %252 = load i32, i32* %liberties547, align 4
  %cmp548 = icmp slt i32 %252, 20
  br i1 %cmp548, label %if.then.550, label %if.end.560

if.then.550:                                      ; preds = %do.body.544
  %253 = load i32, i32* %pos.addr, align 4
  %add551 = add nsw i32 %253, 1
  %254 = load i32, i32* %s.addr, align 4
  %idxprom552 = sext i32 %254 to i64
  %arrayidx553 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom552
  %liberties554 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx553, i32 0, i32 3
  %255 = load i32, i32* %liberties554, align 4
  %idxprom555 = sext i32 %255 to i64
  %256 = load i32, i32* %s.addr, align 4
  %idxprom556 = sext i32 %256 to i64
  %arrayidx557 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom556
  %libs558 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx557, i32 0, i32 4
  %arrayidx559 = getelementptr inbounds [20 x i32], [20 x i32]* %libs558, i32 0, i64 %idxprom555
  store i32 %add551, i32* %arrayidx559, align 4
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.550, %do.body.544
  %257 = load i32, i32* %s.addr, align 4
  %idxprom561 = sext i32 %257 to i64
  %arrayidx562 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom561
  %liberties563 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx562, i32 0, i32 3
  %258 = load i32, i32* %liberties563, align 4
  %inc564 = add nsw i32 %258, 1
  store i32 %inc564, i32* %liberties563, align 4
  br label %do.end.565

do.end.565:                                       ; preds = %if.end.560
  br label %if.end.566

if.end.566:                                       ; preds = %do.end.565, %land.lhs.true.536, %land.lhs.true.521, %land.lhs.true.506, %if.then.496
  br label %if.end.630

if.else.567:                                      ; preds = %if.end.489
  %259 = load i32, i32* %pos.addr, align 4
  %add568 = add nsw i32 %259, 1
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom569
  %260 = load i8, i8* %arrayidx570, align 1
  %conv571 = zext i8 %260 to i32
  %261 = load i32, i32* %other, align 4
  %cmp572 = icmp eq i32 %conv571, %261
  br i1 %cmp572, label %land.lhs.true.574, label %if.end.629

land.lhs.true.574:                                ; preds = %if.else.567
  %262 = load i32, i32* %pos.addr, align 4
  %add575 = add nsw i32 %262, 1
  %idxprom576 = sext i32 %add575 to i64
  %arrayidx577 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom576
  %263 = load i32, i32* %arrayidx577, align 4
  %idxprom578 = sext i32 %263 to i64
  %arrayidx579 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom578
  %mark580 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx579, i32 0, i32 7
  %264 = load i32, i32* %mark580, align 4
  %265 = load i32, i32* @string_mark, align 4
  %cmp581 = icmp ne i32 %264, %265
  br i1 %cmp581, label %if.then.583, label %if.end.629

if.then.583:                                      ; preds = %land.lhs.true.574
  %266 = load i32, i32* %pos.addr, align 4
  %add585 = add nsw i32 %266, 1
  %idxprom586 = sext i32 %add585 to i64
  %arrayidx587 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom586
  %267 = load i32, i32* %arrayidx587, align 4
  store i32 %267, i32* %s2584, align 4
  %268 = load i32, i32* %s.addr, align 4
  %idxprom588 = sext i32 %268 to i64
  %arrayidx589 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom588
  %neighbors590 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx589, i32 0, i32 5
  %269 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address591 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %269, i32 0, i32 0
  store i32* %neighbors590, i32** %address591, align 8
  %270 = load i32, i32* %s.addr, align 4
  %idxprom592 = sext i32 %270 to i64
  %arrayidx593 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom592
  %neighbors594 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx593, i32 0, i32 5
  %271 = load i32, i32* %neighbors594, align 4
  %272 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr595 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %272, i32 1
  store %struct.change_stack_entry* %incdec.ptr595, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value596 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %272, i32 0, i32 1
  store i32 %271, i32* %value596, align 4
  %273 = load i32, i32* %pos.addr, align 4
  %add597 = add nsw i32 %273, 1
  %idxprom598 = sext i32 %add597 to i64
  %arrayidx599 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom598
  %274 = load i32, i32* %arrayidx599, align 4
  %275 = load i32, i32* %s.addr, align 4
  %idxprom600 = sext i32 %275 to i64
  %arrayidx601 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom600
  %neighbors602 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx601, i32 0, i32 5
  %276 = load i32, i32* %neighbors602, align 4
  %inc603 = add nsw i32 %276, 1
  store i32 %inc603, i32* %neighbors602, align 4
  %idxprom604 = sext i32 %276 to i64
  %277 = load i32, i32* %s.addr, align 4
  %idxprom605 = sext i32 %277 to i64
  %arrayidx606 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom605
  %neighborlist607 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx606, i32 0, i32 6
  %arrayidx608 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist607, i32 0, i64 %idxprom604
  store i32 %274, i32* %arrayidx608, align 4
  %278 = load i32, i32* %s2584, align 4
  %idxprom609 = sext i32 %278 to i64
  %arrayidx610 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom609
  %neighbors611 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx610, i32 0, i32 5
  %279 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address612 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %279, i32 0, i32 0
  store i32* %neighbors611, i32** %address612, align 8
  %280 = load i32, i32* %s2584, align 4
  %idxprom613 = sext i32 %280 to i64
  %arrayidx614 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom613
  %neighbors615 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx614, i32 0, i32 5
  %281 = load i32, i32* %neighbors615, align 4
  %282 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr616 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %282, i32 1
  store %struct.change_stack_entry* %incdec.ptr616, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value617 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %282, i32 0, i32 1
  store i32 %281, i32* %value617, align 4
  %283 = load i32, i32* %pos.addr, align 4
  %idxprom618 = sext i32 %283 to i64
  %arrayidx619 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom618
  %284 = load i32, i32* %arrayidx619, align 4
  %285 = load i32, i32* %s2584, align 4
  %idxprom620 = sext i32 %285 to i64
  %arrayidx621 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom620
  %neighbors622 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx621, i32 0, i32 5
  %286 = load i32, i32* %neighbors622, align 4
  %inc623 = add nsw i32 %286, 1
  store i32 %inc623, i32* %neighbors622, align 4
  %idxprom624 = sext i32 %286 to i64
  %287 = load i32, i32* %s2584, align 4
  %idxprom625 = sext i32 %287 to i64
  %arrayidx626 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom625
  %neighborlist627 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx626, i32 0, i32 6
  %arrayidx628 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist627, i32 0, i64 %idxprom624
  store i32 %284, i32* %arrayidx628, align 4
  br label %if.end.629

if.end.629:                                       ; preds = %if.then.583, %land.lhs.true.574, %if.else.567
  br label %if.end.630

if.end.630:                                       ; preds = %if.end.629, %if.end.566
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @assimilate_neighbor_strings(i32 %pos) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %color = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %color, align 4
  %2 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %2
  store i32 %sub, i32* %other, align 4
  %3 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %3, i32 0, i32 0
  store i32* @next_string, i32** %address, align 8
  %4 = load i32, i32* @next_string, align 4
  %5 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %5, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %5, i32 0, i32 1
  store i32 %4, i32* %value, align 4
  %6 = load i32, i32* @next_string, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @next_string, align 4
  store i32 %6, i32* %s, align 4
  %7 = load i32, i32* %s, align 4
  %cmp = icmp slt i32 %7, 240
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %pos.addr, align 4
  %div = sdiv i32 %8, 20
  %sub2 = sub nsw i32 %div, 1
  %9 = load i32, i32* %pos.addr, align 4
  %rem = srem i32 %9, 20
  %sub3 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 3296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0), i32 %sub2, i32 %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %pos.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom4
  store i32 %10, i32* %arrayidx5, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %pos.addr, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom6
  store i32 %12, i32* %arrayidx7, align 4
  %14 = load i32, i32* %color, align 4
  %15 = load i32, i32* %s, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom8
  %color10 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx9, i32 0, i32 0
  store i32 %14, i32* %color10, align 4
  %16 = load i32, i32* %s, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom11
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx12, i32 0, i32 1
  store i32 1, i32* %size, align 4
  %17 = load i32, i32* %pos.addr, align 4
  %18 = load i32, i32* %s, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom13
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx14, i32 0, i32 2
  store i32 %17, i32* %origin, align 4
  %19 = load i32, i32* %s, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom15
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx16, i32 0, i32 3
  store i32 0, i32* %liberties, align 4
  %20 = load i32, i32* %s, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom17
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx18, i32 0, i32 5
  store i32 0, i32* %neighbors, align 4
  %21 = load i32, i32* @liberty_mark, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* @liberty_mark, align 4
  %22 = load i32, i32* @string_mark, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* @string_mark, align 4
  %23 = load i32, i32* @string_mark, align 4
  %24 = load i32, i32* %s, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom21
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx22, i32 0, i32 7
  store i32 %23, i32* %mark, align 4
  %25 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %25, 20
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %26 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %26 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %land.lhs.true, label %if.else.56

land.lhs.true:                                    ; preds = %if.end
  %27 = load i32, i32* %pos.addr, align 4
  %add28 = add nsw i32 %27, 20
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom29
  %28 = load i32, i32* %arrayidx30, align 4
  %29 = load i32, i32* @liberty_mark, align 4
  %cmp31 = icmp ne i32 %28, %29
  br i1 %cmp31, label %if.then.33, label %if.else.56

if.then.33:                                       ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.33
  %30 = load i32, i32* %s, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom34
  %liberties36 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx35, i32 0, i32 3
  %31 = load i32, i32* %liberties36, align 4
  %cmp37 = icmp slt i32 %31, 20
  br i1 %cmp37, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %do.body
  %32 = load i32, i32* %pos.addr, align 4
  %add40 = add nsw i32 %32, 20
  %33 = load i32, i32* %s, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom41
  %liberties43 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx42, i32 0, i32 3
  %34 = load i32, i32* %liberties43, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load i32, i32* %s, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom45
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx46, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom44
  store i32 %add40, i32* %arrayidx47, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.39, %do.body
  %36 = load i32, i32* %s, align 4
  %idxprom49 = sext i32 %36 to i64
  %arrayidx50 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom49
  %liberties51 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx50, i32 0, i32 3
  %37 = load i32, i32* %liberties51, align 4
  %inc52 = add nsw i32 %37, 1
  store i32 %inc52, i32* %liberties51, align 4
  %38 = load i32, i32* @liberty_mark, align 4
  %39 = load i32, i32* %pos.addr, align 4
  %add53 = add nsw i32 %39, 20
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom54
  store i32 %38, i32* %arrayidx55, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.48
  br label %if.end.142

if.else.56:                                       ; preds = %land.lhs.true, %if.end
  %40 = load i32, i32* %pos.addr, align 4
  %add57 = add nsw i32 %40, 20
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom58
  %41 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %41 to i32
  %42 = load i32, i32* %other, align 4
  %cmp61 = icmp eq i32 %conv60, %42
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.122

land.lhs.true.63:                                 ; preds = %if.else.56
  %43 = load i32, i32* %pos.addr, align 4
  %add64 = add nsw i32 %43, 20
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom65
  %44 = load i32, i32* %arrayidx66, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom67
  %mark69 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx68, i32 0, i32 7
  %45 = load i32, i32* %mark69, align 4
  %46 = load i32, i32* @string_mark, align 4
  %cmp70 = icmp ne i32 %45, %46
  br i1 %cmp70, label %if.then.72, label %if.else.122

if.then.72:                                       ; preds = %land.lhs.true.63
  %47 = load i32, i32* %pos.addr, align 4
  %add73 = add nsw i32 %47, 20
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom74
  %48 = load i32, i32* %arrayidx75, align 4
  %49 = load i32, i32* %s, align 4
  %idxprom76 = sext i32 %49 to i64
  %arrayidx77 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom76
  %neighbors78 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx77, i32 0, i32 5
  %50 = load i32, i32* %neighbors78, align 4
  %inc79 = add nsw i32 %50, 1
  store i32 %inc79, i32* %neighbors78, align 4
  %idxprom80 = sext i32 %50 to i64
  %51 = load i32, i32* %s, align 4
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom81
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx82, i32 0, i32 6
  %arrayidx83 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom80
  store i32 %48, i32* %arrayidx83, align 4
  %52 = load i32, i32* %pos.addr, align 4
  %add84 = add nsw i32 %52, 20
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom85
  %53 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom87
  %neighbors89 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx88, i32 0, i32 5
  %54 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address90 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %54, i32 0, i32 0
  store i32* %neighbors89, i32** %address90, align 8
  %55 = load i32, i32* %pos.addr, align 4
  %add91 = add nsw i32 %55, 20
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom92
  %56 = load i32, i32* %arrayidx93, align 4
  %idxprom94 = sext i32 %56 to i64
  %arrayidx95 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom94
  %neighbors96 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx95, i32 0, i32 5
  %57 = load i32, i32* %neighbors96, align 4
  %58 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr97 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %58, i32 1
  store %struct.change_stack_entry* %incdec.ptr97, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value98 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %58, i32 0, i32 1
  store i32 %57, i32* %value98, align 4
  %59 = load i32, i32* %pos.addr, align 4
  %idxprom99 = sext i32 %59 to i64
  %arrayidx100 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom99
  %60 = load i32, i32* %arrayidx100, align 4
  %61 = load i32, i32* %pos.addr, align 4
  %add101 = add nsw i32 %61, 20
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom102
  %62 = load i32, i32* %arrayidx103, align 4
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom104
  %neighbors106 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx105, i32 0, i32 5
  %63 = load i32, i32* %neighbors106, align 4
  %inc107 = add nsw i32 %63, 1
  store i32 %inc107, i32* %neighbors106, align 4
  %idxprom108 = sext i32 %63 to i64
  %64 = load i32, i32* %pos.addr, align 4
  %add109 = add nsw i32 %64, 20
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom110
  %65 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %65 to i64
  %arrayidx113 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom112
  %neighborlist114 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx113, i32 0, i32 6
  %arrayidx115 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist114, i32 0, i64 %idxprom108
  store i32 %60, i32* %arrayidx115, align 4
  %66 = load i32, i32* @string_mark, align 4
  %67 = load i32, i32* %pos.addr, align 4
  %add116 = add nsw i32 %67, 20
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom117
  %68 = load i32, i32* %arrayidx118, align 4
  %idxprom119 = sext i32 %68 to i64
  %arrayidx120 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom119
  %mark121 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx120, i32 0, i32 7
  store i32 %66, i32* %mark121, align 4
  br label %if.end.141

if.else.122:                                      ; preds = %land.lhs.true.63, %if.else.56
  %69 = load i32, i32* %pos.addr, align 4
  %add123 = add nsw i32 %69, 20
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom124
  %70 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %70 to i32
  %71 = load i32, i32* %color, align 4
  %cmp127 = icmp eq i32 %conv126, %71
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.140

land.lhs.true.129:                                ; preds = %if.else.122
  %72 = load i32, i32* %pos.addr, align 4
  %add130 = add nsw i32 %72, 20
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom131
  %73 = load i32, i32* %arrayidx132, align 4
  %idxprom133 = sext i32 %73 to i64
  %arrayidx134 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom133
  %mark135 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx134, i32 0, i32 7
  %74 = load i32, i32* %mark135, align 4
  %75 = load i32, i32* @string_mark, align 4
  %cmp136 = icmp ne i32 %74, %75
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %land.lhs.true.129
  %76 = load i32, i32* %s, align 4
  %77 = load i32, i32* %pos.addr, align 4
  %add139 = add nsw i32 %77, 20
  call void @assimilate_string(i32 %76, i32 %add139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %land.lhs.true.129, %if.else.122
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.72
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %do.end
  %78 = load i32, i32* %pos.addr, align 4
  %sub143 = sub nsw i32 %78, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom144
  %79 = load i8, i8* %arrayidx145, align 1
  %conv146 = zext i8 %79 to i32
  %cmp147 = icmp eq i32 %conv146, 0
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.181

land.lhs.true.149:                                ; preds = %if.end.142
  %80 = load i32, i32* %pos.addr, align 4
  %sub150 = sub nsw i32 %80, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom151
  %81 = load i32, i32* %arrayidx152, align 4
  %82 = load i32, i32* @liberty_mark, align 4
  %cmp153 = icmp ne i32 %81, %82
  br i1 %cmp153, label %if.then.155, label %if.else.181

if.then.155:                                      ; preds = %land.lhs.true.149
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.155
  %83 = load i32, i32* %s, align 4
  %idxprom157 = sext i32 %83 to i64
  %arrayidx158 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom157
  %liberties159 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx158, i32 0, i32 3
  %84 = load i32, i32* %liberties159, align 4
  %cmp160 = icmp slt i32 %84, 20
  br i1 %cmp160, label %if.then.162, label %if.end.172

if.then.162:                                      ; preds = %do.body.156
  %85 = load i32, i32* %pos.addr, align 4
  %sub163 = sub nsw i32 %85, 1
  %86 = load i32, i32* %s, align 4
  %idxprom164 = sext i32 %86 to i64
  %arrayidx165 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom164
  %liberties166 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx165, i32 0, i32 3
  %87 = load i32, i32* %liberties166, align 4
  %idxprom167 = sext i32 %87 to i64
  %88 = load i32, i32* %s, align 4
  %idxprom168 = sext i32 %88 to i64
  %arrayidx169 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom168
  %libs170 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx169, i32 0, i32 4
  %arrayidx171 = getelementptr inbounds [20 x i32], [20 x i32]* %libs170, i32 0, i64 %idxprom167
  store i32 %sub163, i32* %arrayidx171, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.162, %do.body.156
  %89 = load i32, i32* %s, align 4
  %idxprom173 = sext i32 %89 to i64
  %arrayidx174 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom173
  %liberties175 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx174, i32 0, i32 3
  %90 = load i32, i32* %liberties175, align 4
  %inc176 = add nsw i32 %90, 1
  store i32 %inc176, i32* %liberties175, align 4
  %91 = load i32, i32* @liberty_mark, align 4
  %92 = load i32, i32* %pos.addr, align 4
  %sub177 = sub nsw i32 %92, 1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom178
  store i32 %91, i32* %arrayidx179, align 4
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.172
  br label %if.end.268

if.else.181:                                      ; preds = %land.lhs.true.149, %if.end.142
  %93 = load i32, i32* %pos.addr, align 4
  %sub182 = sub nsw i32 %93, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom183
  %94 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %94 to i32
  %95 = load i32, i32* %other, align 4
  %cmp186 = icmp eq i32 %conv185, %95
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.248

land.lhs.true.188:                                ; preds = %if.else.181
  %96 = load i32, i32* %pos.addr, align 4
  %sub189 = sub nsw i32 %96, 1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom190
  %97 = load i32, i32* %arrayidx191, align 4
  %idxprom192 = sext i32 %97 to i64
  %arrayidx193 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom192
  %mark194 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx193, i32 0, i32 7
  %98 = load i32, i32* %mark194, align 4
  %99 = load i32, i32* @string_mark, align 4
  %cmp195 = icmp ne i32 %98, %99
  br i1 %cmp195, label %if.then.197, label %if.else.248

if.then.197:                                      ; preds = %land.lhs.true.188
  %100 = load i32, i32* %pos.addr, align 4
  %sub198 = sub nsw i32 %100, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom199
  %101 = load i32, i32* %arrayidx200, align 4
  %102 = load i32, i32* %s, align 4
  %idxprom201 = sext i32 %102 to i64
  %arrayidx202 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom201
  %neighbors203 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx202, i32 0, i32 5
  %103 = load i32, i32* %neighbors203, align 4
  %inc204 = add nsw i32 %103, 1
  store i32 %inc204, i32* %neighbors203, align 4
  %idxprom205 = sext i32 %103 to i64
  %104 = load i32, i32* %s, align 4
  %idxprom206 = sext i32 %104 to i64
  %arrayidx207 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom206
  %neighborlist208 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx207, i32 0, i32 6
  %arrayidx209 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist208, i32 0, i64 %idxprom205
  store i32 %101, i32* %arrayidx209, align 4
  %105 = load i32, i32* %pos.addr, align 4
  %sub210 = sub nsw i32 %105, 1
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom211
  %106 = load i32, i32* %arrayidx212, align 4
  %idxprom213 = sext i32 %106 to i64
  %arrayidx214 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom213
  %neighbors215 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx214, i32 0, i32 5
  %107 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address216 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %107, i32 0, i32 0
  store i32* %neighbors215, i32** %address216, align 8
  %108 = load i32, i32* %pos.addr, align 4
  %sub217 = sub nsw i32 %108, 1
  %idxprom218 = sext i32 %sub217 to i64
  %arrayidx219 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom218
  %109 = load i32, i32* %arrayidx219, align 4
  %idxprom220 = sext i32 %109 to i64
  %arrayidx221 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom220
  %neighbors222 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx221, i32 0, i32 5
  %110 = load i32, i32* %neighbors222, align 4
  %111 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr223 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %111, i32 1
  store %struct.change_stack_entry* %incdec.ptr223, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value224 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %111, i32 0, i32 1
  store i32 %110, i32* %value224, align 4
  %112 = load i32, i32* %pos.addr, align 4
  %idxprom225 = sext i32 %112 to i64
  %arrayidx226 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom225
  %113 = load i32, i32* %arrayidx226, align 4
  %114 = load i32, i32* %pos.addr, align 4
  %sub227 = sub nsw i32 %114, 1
  %idxprom228 = sext i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom228
  %115 = load i32, i32* %arrayidx229, align 4
  %idxprom230 = sext i32 %115 to i64
  %arrayidx231 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom230
  %neighbors232 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx231, i32 0, i32 5
  %116 = load i32, i32* %neighbors232, align 4
  %inc233 = add nsw i32 %116, 1
  store i32 %inc233, i32* %neighbors232, align 4
  %idxprom234 = sext i32 %116 to i64
  %117 = load i32, i32* %pos.addr, align 4
  %sub235 = sub nsw i32 %117, 1
  %idxprom236 = sext i32 %sub235 to i64
  %arrayidx237 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom236
  %118 = load i32, i32* %arrayidx237, align 4
  %idxprom238 = sext i32 %118 to i64
  %arrayidx239 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom238
  %neighborlist240 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx239, i32 0, i32 6
  %arrayidx241 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist240, i32 0, i64 %idxprom234
  store i32 %113, i32* %arrayidx241, align 4
  %119 = load i32, i32* @string_mark, align 4
  %120 = load i32, i32* %pos.addr, align 4
  %sub242 = sub nsw i32 %120, 1
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom243
  %121 = load i32, i32* %arrayidx244, align 4
  %idxprom245 = sext i32 %121 to i64
  %arrayidx246 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom245
  %mark247 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx246, i32 0, i32 7
  store i32 %119, i32* %mark247, align 4
  br label %if.end.267

if.else.248:                                      ; preds = %land.lhs.true.188, %if.else.181
  %122 = load i32, i32* %pos.addr, align 4
  %sub249 = sub nsw i32 %122, 1
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom250
  %123 = load i8, i8* %arrayidx251, align 1
  %conv252 = zext i8 %123 to i32
  %124 = load i32, i32* %color, align 4
  %cmp253 = icmp eq i32 %conv252, %124
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.266

land.lhs.true.255:                                ; preds = %if.else.248
  %125 = load i32, i32* %pos.addr, align 4
  %sub256 = sub nsw i32 %125, 1
  %idxprom257 = sext i32 %sub256 to i64
  %arrayidx258 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom257
  %126 = load i32, i32* %arrayidx258, align 4
  %idxprom259 = sext i32 %126 to i64
  %arrayidx260 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom259
  %mark261 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx260, i32 0, i32 7
  %127 = load i32, i32* %mark261, align 4
  %128 = load i32, i32* @string_mark, align 4
  %cmp262 = icmp ne i32 %127, %128
  br i1 %cmp262, label %if.then.264, label %if.end.266

if.then.264:                                      ; preds = %land.lhs.true.255
  %129 = load i32, i32* %s, align 4
  %130 = load i32, i32* %pos.addr, align 4
  %sub265 = sub nsw i32 %130, 1
  call void @assimilate_string(i32 %129, i32 %sub265)
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.264, %land.lhs.true.255, %if.else.248
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.then.197
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %do.end.180
  %131 = load i32, i32* %pos.addr, align 4
  %sub269 = sub nsw i32 %131, 20
  %idxprom270 = sext i32 %sub269 to i64
  %arrayidx271 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom270
  %132 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %132 to i32
  %cmp273 = icmp eq i32 %conv272, 0
  br i1 %cmp273, label %land.lhs.true.275, label %if.else.307

land.lhs.true.275:                                ; preds = %if.end.268
  %133 = load i32, i32* %pos.addr, align 4
  %sub276 = sub nsw i32 %133, 20
  %idxprom277 = sext i32 %sub276 to i64
  %arrayidx278 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom277
  %134 = load i32, i32* %arrayidx278, align 4
  %135 = load i32, i32* @liberty_mark, align 4
  %cmp279 = icmp ne i32 %134, %135
  br i1 %cmp279, label %if.then.281, label %if.else.307

if.then.281:                                      ; preds = %land.lhs.true.275
  br label %do.body.282

do.body.282:                                      ; preds = %if.then.281
  %136 = load i32, i32* %s, align 4
  %idxprom283 = sext i32 %136 to i64
  %arrayidx284 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom283
  %liberties285 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx284, i32 0, i32 3
  %137 = load i32, i32* %liberties285, align 4
  %cmp286 = icmp slt i32 %137, 20
  br i1 %cmp286, label %if.then.288, label %if.end.298

if.then.288:                                      ; preds = %do.body.282
  %138 = load i32, i32* %pos.addr, align 4
  %sub289 = sub nsw i32 %138, 20
  %139 = load i32, i32* %s, align 4
  %idxprom290 = sext i32 %139 to i64
  %arrayidx291 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom290
  %liberties292 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx291, i32 0, i32 3
  %140 = load i32, i32* %liberties292, align 4
  %idxprom293 = sext i32 %140 to i64
  %141 = load i32, i32* %s, align 4
  %idxprom294 = sext i32 %141 to i64
  %arrayidx295 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom294
  %libs296 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx295, i32 0, i32 4
  %arrayidx297 = getelementptr inbounds [20 x i32], [20 x i32]* %libs296, i32 0, i64 %idxprom293
  store i32 %sub289, i32* %arrayidx297, align 4
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.288, %do.body.282
  %142 = load i32, i32* %s, align 4
  %idxprom299 = sext i32 %142 to i64
  %arrayidx300 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom299
  %liberties301 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx300, i32 0, i32 3
  %143 = load i32, i32* %liberties301, align 4
  %inc302 = add nsw i32 %143, 1
  store i32 %inc302, i32* %liberties301, align 4
  %144 = load i32, i32* @liberty_mark, align 4
  %145 = load i32, i32* %pos.addr, align 4
  %sub303 = sub nsw i32 %145, 20
  %idxprom304 = sext i32 %sub303 to i64
  %arrayidx305 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom304
  store i32 %144, i32* %arrayidx305, align 4
  br label %do.end.306

do.end.306:                                       ; preds = %if.end.298
  br label %if.end.394

if.else.307:                                      ; preds = %land.lhs.true.275, %if.end.268
  %146 = load i32, i32* %pos.addr, align 4
  %sub308 = sub nsw i32 %146, 20
  %idxprom309 = sext i32 %sub308 to i64
  %arrayidx310 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom309
  %147 = load i8, i8* %arrayidx310, align 1
  %conv311 = zext i8 %147 to i32
  %148 = load i32, i32* %other, align 4
  %cmp312 = icmp eq i32 %conv311, %148
  br i1 %cmp312, label %land.lhs.true.314, label %if.else.374

land.lhs.true.314:                                ; preds = %if.else.307
  %149 = load i32, i32* %pos.addr, align 4
  %sub315 = sub nsw i32 %149, 20
  %idxprom316 = sext i32 %sub315 to i64
  %arrayidx317 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom316
  %150 = load i32, i32* %arrayidx317, align 4
  %idxprom318 = sext i32 %150 to i64
  %arrayidx319 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom318
  %mark320 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx319, i32 0, i32 7
  %151 = load i32, i32* %mark320, align 4
  %152 = load i32, i32* @string_mark, align 4
  %cmp321 = icmp ne i32 %151, %152
  br i1 %cmp321, label %if.then.323, label %if.else.374

if.then.323:                                      ; preds = %land.lhs.true.314
  %153 = load i32, i32* %pos.addr, align 4
  %sub324 = sub nsw i32 %153, 20
  %idxprom325 = sext i32 %sub324 to i64
  %arrayidx326 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom325
  %154 = load i32, i32* %arrayidx326, align 4
  %155 = load i32, i32* %s, align 4
  %idxprom327 = sext i32 %155 to i64
  %arrayidx328 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom327
  %neighbors329 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx328, i32 0, i32 5
  %156 = load i32, i32* %neighbors329, align 4
  %inc330 = add nsw i32 %156, 1
  store i32 %inc330, i32* %neighbors329, align 4
  %idxprom331 = sext i32 %156 to i64
  %157 = load i32, i32* %s, align 4
  %idxprom332 = sext i32 %157 to i64
  %arrayidx333 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom332
  %neighborlist334 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx333, i32 0, i32 6
  %arrayidx335 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist334, i32 0, i64 %idxprom331
  store i32 %154, i32* %arrayidx335, align 4
  %158 = load i32, i32* %pos.addr, align 4
  %sub336 = sub nsw i32 %158, 20
  %idxprom337 = sext i32 %sub336 to i64
  %arrayidx338 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom337
  %159 = load i32, i32* %arrayidx338, align 4
  %idxprom339 = sext i32 %159 to i64
  %arrayidx340 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom339
  %neighbors341 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx340, i32 0, i32 5
  %160 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address342 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %160, i32 0, i32 0
  store i32* %neighbors341, i32** %address342, align 8
  %161 = load i32, i32* %pos.addr, align 4
  %sub343 = sub nsw i32 %161, 20
  %idxprom344 = sext i32 %sub343 to i64
  %arrayidx345 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom344
  %162 = load i32, i32* %arrayidx345, align 4
  %idxprom346 = sext i32 %162 to i64
  %arrayidx347 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom346
  %neighbors348 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx347, i32 0, i32 5
  %163 = load i32, i32* %neighbors348, align 4
  %164 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr349 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %164, i32 1
  store %struct.change_stack_entry* %incdec.ptr349, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value350 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %164, i32 0, i32 1
  store i32 %163, i32* %value350, align 4
  %165 = load i32, i32* %pos.addr, align 4
  %idxprom351 = sext i32 %165 to i64
  %arrayidx352 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom351
  %166 = load i32, i32* %arrayidx352, align 4
  %167 = load i32, i32* %pos.addr, align 4
  %sub353 = sub nsw i32 %167, 20
  %idxprom354 = sext i32 %sub353 to i64
  %arrayidx355 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom354
  %168 = load i32, i32* %arrayidx355, align 4
  %idxprom356 = sext i32 %168 to i64
  %arrayidx357 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom356
  %neighbors358 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx357, i32 0, i32 5
  %169 = load i32, i32* %neighbors358, align 4
  %inc359 = add nsw i32 %169, 1
  store i32 %inc359, i32* %neighbors358, align 4
  %idxprom360 = sext i32 %169 to i64
  %170 = load i32, i32* %pos.addr, align 4
  %sub361 = sub nsw i32 %170, 20
  %idxprom362 = sext i32 %sub361 to i64
  %arrayidx363 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom362
  %171 = load i32, i32* %arrayidx363, align 4
  %idxprom364 = sext i32 %171 to i64
  %arrayidx365 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom364
  %neighborlist366 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx365, i32 0, i32 6
  %arrayidx367 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist366, i32 0, i64 %idxprom360
  store i32 %166, i32* %arrayidx367, align 4
  %172 = load i32, i32* @string_mark, align 4
  %173 = load i32, i32* %pos.addr, align 4
  %sub368 = sub nsw i32 %173, 20
  %idxprom369 = sext i32 %sub368 to i64
  %arrayidx370 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom369
  %174 = load i32, i32* %arrayidx370, align 4
  %idxprom371 = sext i32 %174 to i64
  %arrayidx372 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom371
  %mark373 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx372, i32 0, i32 7
  store i32 %172, i32* %mark373, align 4
  br label %if.end.393

if.else.374:                                      ; preds = %land.lhs.true.314, %if.else.307
  %175 = load i32, i32* %pos.addr, align 4
  %sub375 = sub nsw i32 %175, 20
  %idxprom376 = sext i32 %sub375 to i64
  %arrayidx377 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom376
  %176 = load i8, i8* %arrayidx377, align 1
  %conv378 = zext i8 %176 to i32
  %177 = load i32, i32* %color, align 4
  %cmp379 = icmp eq i32 %conv378, %177
  br i1 %cmp379, label %land.lhs.true.381, label %if.end.392

land.lhs.true.381:                                ; preds = %if.else.374
  %178 = load i32, i32* %pos.addr, align 4
  %sub382 = sub nsw i32 %178, 20
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom383
  %179 = load i32, i32* %arrayidx384, align 4
  %idxprom385 = sext i32 %179 to i64
  %arrayidx386 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom385
  %mark387 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx386, i32 0, i32 7
  %180 = load i32, i32* %mark387, align 4
  %181 = load i32, i32* @string_mark, align 4
  %cmp388 = icmp ne i32 %180, %181
  br i1 %cmp388, label %if.then.390, label %if.end.392

if.then.390:                                      ; preds = %land.lhs.true.381
  %182 = load i32, i32* %s, align 4
  %183 = load i32, i32* %pos.addr, align 4
  %sub391 = sub nsw i32 %183, 20
  call void @assimilate_string(i32 %182, i32 %sub391)
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.390, %land.lhs.true.381, %if.else.374
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.then.323
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %do.end.306
  %184 = load i32, i32* %pos.addr, align 4
  %add395 = add nsw i32 %184, 1
  %idxprom396 = sext i32 %add395 to i64
  %arrayidx397 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom396
  %185 = load i8, i8* %arrayidx397, align 1
  %conv398 = zext i8 %185 to i32
  %cmp399 = icmp eq i32 %conv398, 0
  br i1 %cmp399, label %land.lhs.true.401, label %if.else.430

land.lhs.true.401:                                ; preds = %if.end.394
  %186 = load i32, i32* %pos.addr, align 4
  %add402 = add nsw i32 %186, 1
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom403
  %187 = load i32, i32* %arrayidx404, align 4
  %188 = load i32, i32* @liberty_mark, align 4
  %cmp405 = icmp ne i32 %187, %188
  br i1 %cmp405, label %if.then.407, label %if.else.430

if.then.407:                                      ; preds = %land.lhs.true.401
  br label %do.body.408

do.body.408:                                      ; preds = %if.then.407
  %189 = load i32, i32* %s, align 4
  %idxprom409 = sext i32 %189 to i64
  %arrayidx410 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom409
  %liberties411 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx410, i32 0, i32 3
  %190 = load i32, i32* %liberties411, align 4
  %cmp412 = icmp slt i32 %190, 20
  br i1 %cmp412, label %if.then.414, label %if.end.424

if.then.414:                                      ; preds = %do.body.408
  %191 = load i32, i32* %pos.addr, align 4
  %add415 = add nsw i32 %191, 1
  %192 = load i32, i32* %s, align 4
  %idxprom416 = sext i32 %192 to i64
  %arrayidx417 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom416
  %liberties418 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx417, i32 0, i32 3
  %193 = load i32, i32* %liberties418, align 4
  %idxprom419 = sext i32 %193 to i64
  %194 = load i32, i32* %s, align 4
  %idxprom420 = sext i32 %194 to i64
  %arrayidx421 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom420
  %libs422 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx421, i32 0, i32 4
  %arrayidx423 = getelementptr inbounds [20 x i32], [20 x i32]* %libs422, i32 0, i64 %idxprom419
  store i32 %add415, i32* %arrayidx423, align 4
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.414, %do.body.408
  %195 = load i32, i32* %s, align 4
  %idxprom425 = sext i32 %195 to i64
  %arrayidx426 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom425
  %liberties427 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx426, i32 0, i32 3
  %196 = load i32, i32* %liberties427, align 4
  %inc428 = add nsw i32 %196, 1
  store i32 %inc428, i32* %liberties427, align 4
  br label %do.end.429

do.end.429:                                       ; preds = %if.end.424
  br label %if.end.511

if.else.430:                                      ; preds = %land.lhs.true.401, %if.end.394
  %197 = load i32, i32* %pos.addr, align 4
  %add431 = add nsw i32 %197, 1
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom432
  %198 = load i8, i8* %arrayidx433, align 1
  %conv434 = zext i8 %198 to i32
  %199 = load i32, i32* %other, align 4
  %cmp435 = icmp eq i32 %conv434, %199
  br i1 %cmp435, label %land.lhs.true.437, label %if.else.491

land.lhs.true.437:                                ; preds = %if.else.430
  %200 = load i32, i32* %pos.addr, align 4
  %add438 = add nsw i32 %200, 1
  %idxprom439 = sext i32 %add438 to i64
  %arrayidx440 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom439
  %201 = load i32, i32* %arrayidx440, align 4
  %idxprom441 = sext i32 %201 to i64
  %arrayidx442 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom441
  %mark443 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx442, i32 0, i32 7
  %202 = load i32, i32* %mark443, align 4
  %203 = load i32, i32* @string_mark, align 4
  %cmp444 = icmp ne i32 %202, %203
  br i1 %cmp444, label %if.then.446, label %if.else.491

if.then.446:                                      ; preds = %land.lhs.true.437
  %204 = load i32, i32* %pos.addr, align 4
  %add447 = add nsw i32 %204, 1
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom448
  %205 = load i32, i32* %arrayidx449, align 4
  %206 = load i32, i32* %s, align 4
  %idxprom450 = sext i32 %206 to i64
  %arrayidx451 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom450
  %neighbors452 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx451, i32 0, i32 5
  %207 = load i32, i32* %neighbors452, align 4
  %inc453 = add nsw i32 %207, 1
  store i32 %inc453, i32* %neighbors452, align 4
  %idxprom454 = sext i32 %207 to i64
  %208 = load i32, i32* %s, align 4
  %idxprom455 = sext i32 %208 to i64
  %arrayidx456 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom455
  %neighborlist457 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx456, i32 0, i32 6
  %arrayidx458 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist457, i32 0, i64 %idxprom454
  store i32 %205, i32* %arrayidx458, align 4
  %209 = load i32, i32* %pos.addr, align 4
  %add459 = add nsw i32 %209, 1
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom460
  %210 = load i32, i32* %arrayidx461, align 4
  %idxprom462 = sext i32 %210 to i64
  %arrayidx463 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom462
  %neighbors464 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx463, i32 0, i32 5
  %211 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address465 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %211, i32 0, i32 0
  store i32* %neighbors464, i32** %address465, align 8
  %212 = load i32, i32* %pos.addr, align 4
  %add466 = add nsw i32 %212, 1
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom467
  %213 = load i32, i32* %arrayidx468, align 4
  %idxprom469 = sext i32 %213 to i64
  %arrayidx470 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom469
  %neighbors471 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx470, i32 0, i32 5
  %214 = load i32, i32* %neighbors471, align 4
  %215 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr472 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %215, i32 1
  store %struct.change_stack_entry* %incdec.ptr472, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value473 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %215, i32 0, i32 1
  store i32 %214, i32* %value473, align 4
  %216 = load i32, i32* %pos.addr, align 4
  %idxprom474 = sext i32 %216 to i64
  %arrayidx475 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom474
  %217 = load i32, i32* %arrayidx475, align 4
  %218 = load i32, i32* %pos.addr, align 4
  %add476 = add nsw i32 %218, 1
  %idxprom477 = sext i32 %add476 to i64
  %arrayidx478 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom477
  %219 = load i32, i32* %arrayidx478, align 4
  %idxprom479 = sext i32 %219 to i64
  %arrayidx480 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom479
  %neighbors481 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx480, i32 0, i32 5
  %220 = load i32, i32* %neighbors481, align 4
  %inc482 = add nsw i32 %220, 1
  store i32 %inc482, i32* %neighbors481, align 4
  %idxprom483 = sext i32 %220 to i64
  %221 = load i32, i32* %pos.addr, align 4
  %add484 = add nsw i32 %221, 1
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom485
  %222 = load i32, i32* %arrayidx486, align 4
  %idxprom487 = sext i32 %222 to i64
  %arrayidx488 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom487
  %neighborlist489 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx488, i32 0, i32 6
  %arrayidx490 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist489, i32 0, i64 %idxprom483
  store i32 %217, i32* %arrayidx490, align 4
  br label %if.end.510

if.else.491:                                      ; preds = %land.lhs.true.437, %if.else.430
  %223 = load i32, i32* %pos.addr, align 4
  %add492 = add nsw i32 %223, 1
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom493
  %224 = load i8, i8* %arrayidx494, align 1
  %conv495 = zext i8 %224 to i32
  %225 = load i32, i32* %color, align 4
  %cmp496 = icmp eq i32 %conv495, %225
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.509

land.lhs.true.498:                                ; preds = %if.else.491
  %226 = load i32, i32* %pos.addr, align 4
  %add499 = add nsw i32 %226, 1
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom500
  %227 = load i32, i32* %arrayidx501, align 4
  %idxprom502 = sext i32 %227 to i64
  %arrayidx503 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom502
  %mark504 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx503, i32 0, i32 7
  %228 = load i32, i32* %mark504, align 4
  %229 = load i32, i32* @string_mark, align 4
  %cmp505 = icmp ne i32 %228, %229
  br i1 %cmp505, label %if.then.507, label %if.end.509

if.then.507:                                      ; preds = %land.lhs.true.498
  %230 = load i32, i32* %s, align 4
  %231 = load i32, i32* %pos.addr, align 4
  %add508 = add nsw i32 %231, 1
  call void @assimilate_string(i32 %230, i32 %add508)
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.507, %land.lhs.true.498, %if.else.491
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.509, %if.then.446
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.510, %do.end.429
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_neighbor(i32 %str_number, i32 %n) #0 {
entry:
  %str_number.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %done = alloca i32, align 4
  %s = alloca %struct.string_data*, align 8
  store i32 %str_number, i32* %str_number.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %done, align 4
  %0 = load i32, i32* %str_number.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom
  store %struct.string_data* %arrayidx, %struct.string_data** %s, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %2, i32 0, i32 5
  %3 = load i32, i32* %neighbors, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %5, i32 0, i32 6
  %arrayidx2 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp eq i32 %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors4 = getelementptr inbounds %struct.string_data, %struct.string_data* %8, i32 0, i32 5
  %9 = load i32, i32* %neighbors4, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub to i64
  %10 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist6 = getelementptr inbounds %struct.string_data, %struct.string_data* %10, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist6, i32 0, i64 %idxprom5
  %11 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %11, i32 0, i32 0
  store i32* %arrayidx7, i32** %address, align 8
  %12 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors8 = getelementptr inbounds %struct.string_data, %struct.string_data* %12, i32 0, i32 5
  %13 = load i32, i32* %neighbors8, align 4
  %sub9 = sub nsw i32 %13, 1
  %idxprom10 = sext i32 %sub9 to i64
  %14 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist11 = getelementptr inbounds %struct.string_data, %struct.string_data* %14, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist11, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx12, align 4
  %16 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %16, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %16, i32 0, i32 1
  store i32 %15, i32* %value, align 4
  %17 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist14 = getelementptr inbounds %struct.string_data, %struct.string_data* %18, i32 0, i32 6
  %arrayidx15 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist14, i32 0, i64 %idxprom13
  %19 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address16 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %19, i32 0, i32 0
  store i32* %arrayidx15, i32** %address16, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %20 to i64
  %21 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist18 = getelementptr inbounds %struct.string_data, %struct.string_data* %21, i32 0, i32 6
  %arrayidx19 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist18, i32 0, i64 %idxprom17
  %22 = load i32, i32* %arrayidx19, align 4
  %23 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %23, i32 1
  store %struct.change_stack_entry* %incdec.ptr20, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value21 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %23, i32 0, i32 1
  store i32 %22, i32* %value21, align 4
  %24 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors22 = getelementptr inbounds %struct.string_data, %struct.string_data* %24, i32 0, i32 5
  %25 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address23 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %25, i32 0, i32 0
  store i32* %neighbors22, i32** %address23, align 8
  %26 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors24 = getelementptr inbounds %struct.string_data, %struct.string_data* %26, i32 0, i32 5
  %27 = load i32, i32* %neighbors24, align 4
  %28 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr25 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %28, i32 1
  store %struct.change_stack_entry* %incdec.ptr25, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value26 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %28, i32 0, i32 1
  store i32 %27, i32* %value26, align 4
  %29 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors27 = getelementptr inbounds %struct.string_data, %struct.string_data* %29, i32 0, i32 5
  %30 = load i32, i32* %neighbors27, align 4
  %sub28 = sub nsw i32 %30, 1
  %idxprom29 = sext i32 %sub28 to i64
  %31 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist30 = getelementptr inbounds %struct.string_data, %struct.string_data* %31, i32 0, i32 6
  %arrayidx31 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist30, i32 0, i64 %idxprom29
  %32 = load i32, i32* %arrayidx31, align 4
  %33 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighborlist33 = getelementptr inbounds %struct.string_data, %struct.string_data* %34, i32 0, i32 6
  %arrayidx34 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist33, i32 0, i64 %idxprom32
  store i32 %32, i32* %arrayidx34, align 4
  %35 = load %struct.string_data*, %struct.string_data** %s, align 8
  %neighbors35 = getelementptr inbounds %struct.string_data, %struct.string_data* %35, i32 0, i32 5
  %36 = load i32, i32* %neighbors35, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %neighbors35, align 4
  store i32 1, i32* %done, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %k, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %38 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.end
  br label %if.end.37

if.else:                                          ; preds = %for.end
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2930, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_liberties(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx, i32 0, i32 3
  %1 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %1, i32 0, i32 0
  store i32* %liberties, i32** %address, align 8
  %2 = load i32, i32* %s.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1
  %liberties3 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx2, i32 0, i32 3
  %3 = load i32, i32* %liberties3, align 4
  %4 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %4, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %4, i32 0, i32 1
  store i32 %3, i32* %value, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %s.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom4
  %liberties6 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %liberties6, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %8, 20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp7, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load i32, i32* %s.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom9
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx10, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom8
  %12 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address12 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %12, i32 0, i32 0
  store i32* %arrayidx11, i32** %address12, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %s.addr, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom14
  %libs16 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx15, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [20 x i32], [20 x i32]* %libs16, i32 0, i64 %idxprom13
  %15 = load i32, i32* %arrayidx17, align 4
  %16 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr18 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %16, i32 1
  store %struct.change_stack_entry* %incdec.ptr18, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value19 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %16, i32 0, i32 1
  store i32 %15, i32* %value19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %18 = load i32, i32* %s.addr, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom20
  %liberties22 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx21, i32 0, i32 3
  store i32 0, i32* %liberties22, align 4
  %19 = load i32, i32* @liberty_mark, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* @liberty_mark, align 4
  %20 = load i32, i32* %s.addr, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom24
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx25, i32 0, i32 2
  %21 = load i32, i32* %origin, align 4
  store i32 %21, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %22 = load i32, i32* %pos, align 4
  %add = add nsw i32 %22, 20
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %23 = load i8, i8* %arrayidx27, align 1
  %conv = zext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %do.body
  %24 = load i32, i32* %pos, align 4
  %add30 = add nsw i32 %24, 20
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom31
  %25 = load i32, i32* %arrayidx32, align 4
  %26 = load i32, i32* @liberty_mark, align 4
  %cmp33 = icmp ne i32 %25, %26
  br i1 %cmp33, label %if.then, label %if.end.58

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.35

do.body.35:                                       ; preds = %if.then
  %27 = load i32, i32* %s.addr, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom36
  %liberties38 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx37, i32 0, i32 3
  %28 = load i32, i32* %liberties38, align 4
  %cmp39 = icmp slt i32 %28, 20
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %do.body.35
  %29 = load i32, i32* %pos, align 4
  %add42 = add nsw i32 %29, 20
  %30 = load i32, i32* %s.addr, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom43
  %liberties45 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx44, i32 0, i32 3
  %31 = load i32, i32* %liberties45, align 4
  %idxprom46 = sext i32 %31 to i64
  %32 = load i32, i32* %s.addr, align 4
  %idxprom47 = sext i32 %32 to i64
  %arrayidx48 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom47
  %libs49 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx48, i32 0, i32 4
  %arrayidx50 = getelementptr inbounds [20 x i32], [20 x i32]* %libs49, i32 0, i64 %idxprom46
  store i32 %add42, i32* %arrayidx50, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.41, %do.body.35
  %33 = load i32, i32* %s.addr, align 4
  %idxprom51 = sext i32 %33 to i64
  %arrayidx52 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom51
  %liberties53 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx52, i32 0, i32 3
  %34 = load i32, i32* %liberties53, align 4
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, i32* %liberties53, align 4
  %35 = load i32, i32* @liberty_mark, align 4
  %36 = load i32, i32* %pos, align 4
  %add55 = add nsw i32 %36, 20
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom56
  store i32 %35, i32* %arrayidx57, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.58

if.end.58:                                        ; preds = %do.end, %land.lhs.true, %do.body
  %37 = load i32, i32* %pos, align 4
  %sub = sub nsw i32 %37, 1
  %idxprom59 = sext i32 %sub to i64
  %arrayidx60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom59
  %38 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %38 to i32
  %cmp62 = icmp eq i32 %conv61, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.96

land.lhs.true.64:                                 ; preds = %if.end.58
  %39 = load i32, i32* %pos, align 4
  %sub65 = sub nsw i32 %39, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom66
  %40 = load i32, i32* %arrayidx67, align 4
  %41 = load i32, i32* @liberty_mark, align 4
  %cmp68 = icmp ne i32 %40, %41
  br i1 %cmp68, label %if.then.70, label %if.end.96

if.then.70:                                       ; preds = %land.lhs.true.64
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %42 = load i32, i32* %s.addr, align 4
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom72
  %liberties74 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx73, i32 0, i32 3
  %43 = load i32, i32* %liberties74, align 4
  %cmp75 = icmp slt i32 %43, 20
  br i1 %cmp75, label %if.then.77, label %if.end.87

if.then.77:                                       ; preds = %do.body.71
  %44 = load i32, i32* %pos, align 4
  %sub78 = sub nsw i32 %44, 1
  %45 = load i32, i32* %s.addr, align 4
  %idxprom79 = sext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom79
  %liberties81 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx80, i32 0, i32 3
  %46 = load i32, i32* %liberties81, align 4
  %idxprom82 = sext i32 %46 to i64
  %47 = load i32, i32* %s.addr, align 4
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom83
  %libs85 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx84, i32 0, i32 4
  %arrayidx86 = getelementptr inbounds [20 x i32], [20 x i32]* %libs85, i32 0, i64 %idxprom82
  store i32 %sub78, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.77, %do.body.71
  %48 = load i32, i32* %s.addr, align 4
  %idxprom88 = sext i32 %48 to i64
  %arrayidx89 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom88
  %liberties90 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx89, i32 0, i32 3
  %49 = load i32, i32* %liberties90, align 4
  %inc91 = add nsw i32 %49, 1
  store i32 %inc91, i32* %liberties90, align 4
  %50 = load i32, i32* @liberty_mark, align 4
  %51 = load i32, i32* %pos, align 4
  %sub92 = sub nsw i32 %51, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom93
  store i32 %50, i32* %arrayidx94, align 4
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.87
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %land.lhs.true.64, %if.end.58
  %52 = load i32, i32* %pos, align 4
  %sub97 = sub nsw i32 %52, 20
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom98
  %53 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %53 to i32
  %cmp101 = icmp eq i32 %conv100, 0
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.135

land.lhs.true.103:                                ; preds = %if.end.96
  %54 = load i32, i32* %pos, align 4
  %sub104 = sub nsw i32 %54, 20
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom105
  %55 = load i32, i32* %arrayidx106, align 4
  %56 = load i32, i32* @liberty_mark, align 4
  %cmp107 = icmp ne i32 %55, %56
  br i1 %cmp107, label %if.then.109, label %if.end.135

if.then.109:                                      ; preds = %land.lhs.true.103
  br label %do.body.110

do.body.110:                                      ; preds = %if.then.109
  %57 = load i32, i32* %s.addr, align 4
  %idxprom111 = sext i32 %57 to i64
  %arrayidx112 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom111
  %liberties113 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx112, i32 0, i32 3
  %58 = load i32, i32* %liberties113, align 4
  %cmp114 = icmp slt i32 %58, 20
  br i1 %cmp114, label %if.then.116, label %if.end.126

if.then.116:                                      ; preds = %do.body.110
  %59 = load i32, i32* %pos, align 4
  %sub117 = sub nsw i32 %59, 20
  %60 = load i32, i32* %s.addr, align 4
  %idxprom118 = sext i32 %60 to i64
  %arrayidx119 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom118
  %liberties120 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx119, i32 0, i32 3
  %61 = load i32, i32* %liberties120, align 4
  %idxprom121 = sext i32 %61 to i64
  %62 = load i32, i32* %s.addr, align 4
  %idxprom122 = sext i32 %62 to i64
  %arrayidx123 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom122
  %libs124 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx123, i32 0, i32 4
  %arrayidx125 = getelementptr inbounds [20 x i32], [20 x i32]* %libs124, i32 0, i64 %idxprom121
  store i32 %sub117, i32* %arrayidx125, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.116, %do.body.110
  %63 = load i32, i32* %s.addr, align 4
  %idxprom127 = sext i32 %63 to i64
  %arrayidx128 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom127
  %liberties129 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx128, i32 0, i32 3
  %64 = load i32, i32* %liberties129, align 4
  %inc130 = add nsw i32 %64, 1
  store i32 %inc130, i32* %liberties129, align 4
  %65 = load i32, i32* @liberty_mark, align 4
  %66 = load i32, i32* %pos, align 4
  %sub131 = sub nsw i32 %66, 20
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom132
  store i32 %65, i32* %arrayidx133, align 4
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.126
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %land.lhs.true.103, %if.end.96
  %67 = load i32, i32* %pos, align 4
  %add136 = add nsw i32 %67, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom137
  %68 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %68 to i32
  %cmp140 = icmp eq i32 %conv139, 0
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.174

land.lhs.true.142:                                ; preds = %if.end.135
  %69 = load i32, i32* %pos, align 4
  %add143 = add nsw i32 %69, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom144
  %70 = load i32, i32* %arrayidx145, align 4
  %71 = load i32, i32* @liberty_mark, align 4
  %cmp146 = icmp ne i32 %70, %71
  br i1 %cmp146, label %if.then.148, label %if.end.174

if.then.148:                                      ; preds = %land.lhs.true.142
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %72 = load i32, i32* %s.addr, align 4
  %idxprom150 = sext i32 %72 to i64
  %arrayidx151 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom150
  %liberties152 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx151, i32 0, i32 3
  %73 = load i32, i32* %liberties152, align 4
  %cmp153 = icmp slt i32 %73, 20
  br i1 %cmp153, label %if.then.155, label %if.end.165

if.then.155:                                      ; preds = %do.body.149
  %74 = load i32, i32* %pos, align 4
  %add156 = add nsw i32 %74, 1
  %75 = load i32, i32* %s.addr, align 4
  %idxprom157 = sext i32 %75 to i64
  %arrayidx158 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom157
  %liberties159 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx158, i32 0, i32 3
  %76 = load i32, i32* %liberties159, align 4
  %idxprom160 = sext i32 %76 to i64
  %77 = load i32, i32* %s.addr, align 4
  %idxprom161 = sext i32 %77 to i64
  %arrayidx162 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom161
  %libs163 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx162, i32 0, i32 4
  %arrayidx164 = getelementptr inbounds [20 x i32], [20 x i32]* %libs163, i32 0, i64 %idxprom160
  store i32 %add156, i32* %arrayidx164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.155, %do.body.149
  %78 = load i32, i32* %s.addr, align 4
  %idxprom166 = sext i32 %78 to i64
  %arrayidx167 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom166
  %liberties168 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx167, i32 0, i32 3
  %79 = load i32, i32* %liberties168, align 4
  %inc169 = add nsw i32 %79, 1
  store i32 %inc169, i32* %liberties168, align 4
  %80 = load i32, i32* @liberty_mark, align 4
  %81 = load i32, i32* %pos, align 4
  %add170 = add nsw i32 %81, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom171
  store i32 %80, i32* %arrayidx172, align 4
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.165
  br label %if.end.174

if.end.174:                                       ; preds = %do.end.173, %land.lhs.true.142, %if.end.135
  %82 = load i32, i32* %pos, align 4
  %idxprom175 = sext i32 %82 to i64
  %arrayidx176 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom175
  %83 = load i32, i32* %arrayidx176, align 4
  store i32 %83, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.174
  %84 = load i32, i32* %pos, align 4
  %85 = load i32, i32* %s.addr, align 4
  %idxprom177 = sext i32 %85 to i64
  %arrayidx178 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom177
  %origin179 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx178, i32 0, i32 2
  %86 = load i32, i32* %origin179, align 4
  %cmp180 = icmp eq i32 %84, %86
  %lnot = xor i1 %cmp180, true
  br i1 %lnot, label %do.body, label %do.end.182

do.end.182:                                       ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @assimilate_string(i32 %s, i32 %pos) #0 {
entry:
  %s.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %last = alloca i32, align 4
  %s2 = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos263 = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %s2, align 4
  %2 = load i32, i32* %s2, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom1
  %size = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %s.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom3
  %size5 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx4, i32 0, i32 1
  %5 = load i32, i32* %size5, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, i32* %size5, align 4
  %6 = load i32, i32* %s2, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom6
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx7, i32 0, i32 2
  %7 = load i32, i32* %origin, align 4
  store i32 %7, i32* %pos.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, i32* %pos.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom8
  %9 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %9, i32 0, i32 0
  store i32* %arrayidx9, i32** %address, align 8
  %10 = load i32, i32* %pos.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %12, i32 1
  store %struct.change_stack_entry* %incdec.ptr, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %12, i32 0, i32 1
  store i32 %11, i32* %value, align 4
  %13 = load i32, i32* %s.addr, align 4
  %14 = load i32, i32* %pos.addr, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom12
  store i32 %13, i32* %arrayidx13, align 4
  %15 = load i32, i32* %pos.addr, align 4
  store i32 %15, i32* %last, align 4
  %16 = load i32, i32* %pos.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  store i32 %17, i32* %pos.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %s2, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom16
  %origin18 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx17, i32 0, i32 2
  %20 = load i32, i32* %origin18, align 4
  %cmp = icmp eq i32 %18, %20
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %s.addr, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom19
  %origin21 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx20, i32 0, i32 2
  %22 = load i32, i32* %origin21, align 4
  store i32 %22, i32* %pos2, align 4
  %23 = load i32, i32* %last, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom22
  %24 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address24 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %24, i32 0, i32 0
  store i32* %arrayidx23, i32** %address24, align 8
  %25 = load i32, i32* %last, align 4
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom25
  %26 = load i32, i32* %arrayidx26, align 4
  %27 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %27, i32 1
  store %struct.change_stack_entry* %incdec.ptr27, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value28 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %27, i32 0, i32 1
  store i32 %26, i32* %value28, align 4
  %28 = load i32, i32* %pos2, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom29
  %29 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address31 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %29, i32 0, i32 0
  store i32* %arrayidx30, i32** %address31, align 8
  %30 = load i32, i32* %pos2, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom32
  %31 = load i32, i32* %arrayidx33, align 4
  %32 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr34 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %32, i32 1
  store %struct.change_stack_entry* %incdec.ptr34, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value35 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %32, i32 0, i32 1
  store i32 %31, i32* %value35, align 4
  %33 = load i32, i32* %pos2, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom36
  %34 = load i32, i32* %arrayidx37, align 4
  %35 = load i32, i32* %last, align 4
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom38
  store i32 %34, i32* %arrayidx39, align 4
  %36 = load i32, i32* %s2, align 4
  %idxprom40 = sext i32 %36 to i64
  %arrayidx41 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom40
  %origin42 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx41, i32 0, i32 2
  %37 = load i32, i32* %origin42, align 4
  %38 = load i32, i32* %pos2, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom43
  store i32 %37, i32* %arrayidx44, align 4
  %39 = load i32, i32* %s2, align 4
  %idxprom45 = sext i32 %39 to i64
  %arrayidx46 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom45
  %origin47 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx46, i32 0, i32 2
  %40 = load i32, i32* %origin47, align 4
  %41 = load i32, i32* %pos2, align 4
  %cmp48 = icmp slt i32 %40, %41
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %42 = load i32, i32* %s2, align 4
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom49
  %origin51 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx50, i32 0, i32 2
  %43 = load i32, i32* %origin51, align 4
  %44 = load i32, i32* %s.addr, align 4
  %idxprom52 = sext i32 %44 to i64
  %arrayidx53 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom52
  %origin54 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx53, i32 0, i32 2
  store i32 %43, i32* %origin54, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %45 = load i32, i32* %s2, align 4
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom55
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx56, i32 0, i32 3
  %46 = load i32, i32* %liberties, align 4
  %cmp57 = icmp sle i32 %46, 20
  br i1 %cmp57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.58
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %s2, align 4
  %idxprom59 = sext i32 %48 to i64
  %arrayidx60 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom59
  %liberties61 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx60, i32 0, i32 3
  %49 = load i32, i32* %liberties61, align 4
  %cmp62 = icmp slt i32 %47, %49
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load i32, i32* %s2, align 4
  %idxprom65 = sext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom65
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx66, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom64
  %52 = load i32, i32* %arrayidx67, align 4
  store i32 %52, i32* %pos263, align 4
  %53 = load i32, i32* %pos263, align 4
  %idxprom68 = sext i32 %53 to i64
  %arrayidx69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom68
  %54 = load i8, i8* %arrayidx69, align 1
  %conv = zext i8 %54 to i32
  %cmp70 = icmp eq i32 %conv, 0
  br i1 %cmp70, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %for.body
  %55 = load i32, i32* %pos263, align 4
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom72
  %56 = load i32, i32* %arrayidx73, align 4
  %57 = load i32, i32* @liberty_mark, align 4
  %cmp74 = icmp ne i32 %56, %57
  br i1 %cmp74, label %if.then.76, label %if.end.100

if.then.76:                                       ; preds = %land.lhs.true
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %58 = load i32, i32* %s.addr, align 4
  %idxprom78 = sext i32 %58 to i64
  %arrayidx79 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom78
  %liberties80 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx79, i32 0, i32 3
  %59 = load i32, i32* %liberties80, align 4
  %cmp81 = icmp slt i32 %59, 20
  br i1 %cmp81, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %do.body.77
  %60 = load i32, i32* %pos263, align 4
  %61 = load i32, i32* %s.addr, align 4
  %idxprom84 = sext i32 %61 to i64
  %arrayidx85 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom84
  %liberties86 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx85, i32 0, i32 3
  %62 = load i32, i32* %liberties86, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i32, i32* %s.addr, align 4
  %idxprom88 = sext i32 %63 to i64
  %arrayidx89 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom88
  %libs90 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx89, i32 0, i32 4
  %arrayidx91 = getelementptr inbounds [20 x i32], [20 x i32]* %libs90, i32 0, i64 %idxprom87
  store i32 %60, i32* %arrayidx91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.83, %do.body.77
  %64 = load i32, i32* %s.addr, align 4
  %idxprom93 = sext i32 %64 to i64
  %arrayidx94 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom93
  %liberties95 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx94, i32 0, i32 3
  %65 = load i32, i32* %liberties95, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %liberties95, align 4
  %66 = load i32, i32* @liberty_mark, align 4
  %67 = load i32, i32* %pos263, align 4
  %idxprom96 = sext i32 %67 to i64
  %arrayidx97 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom96
  store i32 %66, i32* %arrayidx97, align 4
  br label %do.end.99

do.end.99:                                        ; preds = %if.end.92
  br label %if.end.100

if.end.100:                                       ; preds = %do.end.99, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %68 = load i32, i32* %k, align 4
  %inc101 = add nsw i32 %68, 1
  store i32 %inc101, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.106

if.else:                                          ; preds = %if.end
  %69 = load i32, i32* @liberty_mark, align 4
  %inc102 = add nsw i32 %69, 1
  store i32 %inc102, i32* @liberty_mark, align 4
  %70 = load i32, i32* %s.addr, align 4
  %idxprom103 = sext i32 %70 to i64
  %arrayidx104 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom103
  %liberties105 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx104, i32 0, i32 3
  store i32 0, i32* %liberties105, align 4
  %71 = load i32, i32* %s.addr, align 4
  call void @update_liberties(i32 %71)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.153, %if.end.106
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %s2, align 4
  %idxprom108 = sext i32 %73 to i64
  %arrayidx109 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom108
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx109, i32 0, i32 5
  %74 = load i32, i32* %neighbors, align 4
  %cmp110 = icmp slt i32 %72, %74
  br i1 %cmp110, label %for.body.112, label %for.end.155

for.body.112:                                     ; preds = %for.cond.107
  %75 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %75 to i64
  %76 = load i32, i32* %s2, align 4
  %idxprom114 = sext i32 %76 to i64
  %arrayidx115 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom114
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx115, i32 0, i32 6
  %arrayidx116 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom113
  %77 = load i32, i32* %arrayidx116, align 4
  store i32 %77, i32* %t, align 4
  %78 = load i32, i32* %t, align 4
  %79 = load i32, i32* %s2, align 4
  call void @remove_neighbor(i32 %78, i32 %79)
  %80 = load i32, i32* %t, align 4
  %idxprom117 = sext i32 %80 to i64
  %arrayidx118 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom117
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx118, i32 0, i32 7
  %81 = load i32, i32* %mark, align 4
  %82 = load i32, i32* @string_mark, align 4
  %cmp119 = icmp ne i32 %81, %82
  br i1 %cmp119, label %if.then.121, label %if.end.152

if.then.121:                                      ; preds = %for.body.112
  %83 = load i32, i32* %t, align 4
  %idxprom122 = sext i32 %83 to i64
  %arrayidx123 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom122
  %neighbors124 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx123, i32 0, i32 5
  %84 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %address125 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %84, i32 0, i32 0
  store i32* %neighbors124, i32** %address125, align 8
  %85 = load i32, i32* %t, align 4
  %idxprom126 = sext i32 %85 to i64
  %arrayidx127 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom126
  %neighbors128 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx127, i32 0, i32 5
  %86 = load i32, i32* %neighbors128, align 4
  %87 = load %struct.change_stack_entry*, %struct.change_stack_entry** @change_stack_pointer, align 8
  %incdec.ptr129 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %87, i32 1
  store %struct.change_stack_entry* %incdec.ptr129, %struct.change_stack_entry** @change_stack_pointer, align 8
  %value130 = getelementptr inbounds %struct.change_stack_entry, %struct.change_stack_entry* %87, i32 0, i32 1
  store i32 %86, i32* %value130, align 4
  %88 = load i32, i32* %s.addr, align 4
  %89 = load i32, i32* %t, align 4
  %idxprom131 = sext i32 %89 to i64
  %arrayidx132 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom131
  %neighbors133 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx132, i32 0, i32 5
  %90 = load i32, i32* %neighbors133, align 4
  %inc134 = add nsw i32 %90, 1
  store i32 %inc134, i32* %neighbors133, align 4
  %idxprom135 = sext i32 %90 to i64
  %91 = load i32, i32* %t, align 4
  %idxprom136 = sext i32 %91 to i64
  %arrayidx137 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom136
  %neighborlist138 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx137, i32 0, i32 6
  %arrayidx139 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist138, i32 0, i64 %idxprom135
  store i32 %88, i32* %arrayidx139, align 4
  %92 = load i32, i32* %t, align 4
  %93 = load i32, i32* %s.addr, align 4
  %idxprom140 = sext i32 %93 to i64
  %arrayidx141 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom140
  %neighbors142 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx141, i32 0, i32 5
  %94 = load i32, i32* %neighbors142, align 4
  %inc143 = add nsw i32 %94, 1
  store i32 %inc143, i32* %neighbors142, align 4
  %idxprom144 = sext i32 %94 to i64
  %95 = load i32, i32* %s.addr, align 4
  %idxprom145 = sext i32 %95 to i64
  %arrayidx146 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom145
  %neighborlist147 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx146, i32 0, i32 6
  %arrayidx148 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist147, i32 0, i64 %idxprom144
  store i32 %92, i32* %arrayidx148, align 4
  %96 = load i32, i32* @string_mark, align 4
  %97 = load i32, i32* %t, align 4
  %idxprom149 = sext i32 %97 to i64
  %arrayidx150 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom149
  %mark151 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx150, i32 0, i32 7
  store i32 %96, i32* %mark151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.121, %for.body.112
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %98 = load i32, i32* %k, align 4
  %inc154 = add nsw i32 %98, 1
  store i32 %inc154, i32* %k, align 4
  br label %for.cond.107

for.end.155:                                      ; preds = %for.cond.107
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @propagate_string(i32 %stone, i32 %str) #0 {
entry:
  %stone.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %stone, i32* %stone.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 1, i32* %size, align 4
  %0 = load i32, i32* %stone.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %stone.addr, align 4
  %3 = load i32, i32* %stone.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %str.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32, i32* %stone.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %7 = load i32, i32* %str.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %9 = load i32, i32* %stone.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom7
  store i32 %8, i32* %arrayidx8, align 4
  %10 = load i32, i32* %stone.addr, align 4
  %11 = load i32, i32* %str.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom9
  store i32 %10, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %k, align 4
  %cmp11 = icmp slt i32 %12, 4
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  store i32 %14, i32* %d, align 4
  %15 = load i32, i32* %stone.addr, align 4
  %16 = load i32, i32* %d, align 4
  %add = add nsw i32 %15, %16
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %17 = load i8, i8* %arrayidx15, align 1
  %conv = zext i8 %17 to i32
  %cmp16 = icmp ne i32 %conv, 3
  br i1 %cmp16, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32, i32* %stone.addr, align 4
  %19 = load i32, i32* %d, align 4
  %add18 = add nsw i32 %18, %19
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom19
  %20 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  %21 = load i32, i32* %stone.addr, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom22
  %22 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %22 to i32
  %cmp25 = icmp eq i32 %conv21, %conv24
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.36

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %23 = load i32, i32* %stone.addr, align 4
  %24 = load i32, i32* %d, align 4
  %add28 = add nsw i32 %23, %24
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom29
  %25 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %25, -1
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %land.lhs.true.27
  %26 = load i32, i32* %stone.addr, align 4
  %27 = load i32, i32* %d, align 4
  %add34 = add nsw i32 %26, %27
  %28 = load i32, i32* %str.addr, align 4
  %call = call i32 @propagate_string(i32 %add34, i32 %28)
  %29 = load i32, i32* %size, align 4
  %add35 = add nsw i32 %29, %call
  store i32 %add35, i32* %size, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %land.lhs.true.27, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %30 = load i32, i32* %k, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %size, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal void @find_liberties_and_neighbors(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %other = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom
  %color = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx, i32 0, i32 0
  %1 = load i32, i32* %color, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, i32* %other, align 4
  %2 = load i32, i32* @liberty_mark, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @liberty_mark, align 4
  %3 = load i32, i32* @string_mark, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* @string_mark, align 4
  %4 = load i32, i32* %s.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom2
  %origin = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx3, i32 0, i32 2
  %5 = load i32, i32* %origin, align 4
  store i32 %5, i32* %pos, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %6 = load i32, i32* %pos, align 4
  %add = add nsw i32 %6, 20
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %8 = load i32, i32* %pos, align 4
  %add7 = add nsw i32 %8, 20
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* @liberty_mark, align 4
  %cmp10 = icmp ne i32 %9, %10
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %do.body.12

do.body.12:                                       ; preds = %if.then
  %11 = load i32, i32* %s.addr, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom13
  %liberties = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx14, i32 0, i32 3
  %12 = load i32, i32* %liberties, align 4
  %cmp15 = icmp slt i32 %12, 20
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %do.body.12
  %13 = load i32, i32* %pos, align 4
  %add18 = add nsw i32 %13, 20
  %14 = load i32, i32* %s.addr, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom19
  %liberties21 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx20, i32 0, i32 3
  %15 = load i32, i32* %liberties21, align 4
  %idxprom22 = sext i32 %15 to i64
  %16 = load i32, i32* %s.addr, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom23
  %libs = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx24, i32 0, i32 4
  %arrayidx25 = getelementptr inbounds [20 x i32], [20 x i32]* %libs, i32 0, i64 %idxprom22
  store i32 %add18, i32* %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.17, %do.body.12
  %17 = load i32, i32* %s.addr, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom26
  %liberties28 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx27, i32 0, i32 3
  %18 = load i32, i32* %liberties28, align 4
  %inc29 = add nsw i32 %18, 1
  store i32 %inc29, i32* %liberties28, align 4
  %19 = load i32, i32* @liberty_mark, align 4
  %20 = load i32, i32* %pos, align 4
  %add30 = add nsw i32 %20, 20
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom31
  store i32 %19, i32* %arrayidx32, align 4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.65

if.else:                                          ; preds = %land.lhs.true, %do.body
  %21 = load i32, i32* %pos, align 4
  %add33 = add nsw i32 %21, 20
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom34
  %22 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %22 to i32
  %23 = load i32, i32* %other, align 4
  %cmp37 = icmp eq i32 %conv36, %23
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.64

land.lhs.true.39:                                 ; preds = %if.else
  %24 = load i32, i32* %pos, align 4
  %add40 = add nsw i32 %24, 20
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom41
  %25 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom43
  %mark = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx44, i32 0, i32 7
  %26 = load i32, i32* %mark, align 4
  %27 = load i32, i32* @string_mark, align 4
  %cmp45 = icmp ne i32 %26, %27
  br i1 %cmp45, label %if.then.47, label %if.end.64

if.then.47:                                       ; preds = %land.lhs.true.39
  %28 = load i32, i32* %pos, align 4
  %add48 = add nsw i32 %28, 20
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom49
  %29 = load i32, i32* %arrayidx50, align 4
  %30 = load i32, i32* %s.addr, align 4
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom51
  %neighbors = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx52, i32 0, i32 5
  %31 = load i32, i32* %neighbors, align 4
  %inc53 = add nsw i32 %31, 1
  store i32 %inc53, i32* %neighbors, align 4
  %idxprom54 = sext i32 %31 to i64
  %32 = load i32, i32* %s.addr, align 4
  %idxprom55 = sext i32 %32 to i64
  %arrayidx56 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom55
  %neighborlist = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx56, i32 0, i32 6
  %arrayidx57 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist, i32 0, i64 %idxprom54
  store i32 %29, i32* %arrayidx57, align 4
  %33 = load i32, i32* @string_mark, align 4
  %34 = load i32, i32* %pos, align 4
  %add58 = add nsw i32 %34, 20
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom59
  %35 = load i32, i32* %arrayidx60, align 4
  %idxprom61 = sext i32 %35 to i64
  %arrayidx62 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom61
  %mark63 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx62, i32 0, i32 7
  store i32 %33, i32* %mark63, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.47, %land.lhs.true.39, %if.else
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %do.end
  %36 = load i32, i32* %pos, align 4
  %sub66 = sub nsw i32 %36, 1
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom67
  %37 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %37 to i32
  %cmp70 = icmp eq i32 %conv69, 0
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.104

land.lhs.true.72:                                 ; preds = %if.end.65
  %38 = load i32, i32* %pos, align 4
  %sub73 = sub nsw i32 %38, 1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom74
  %39 = load i32, i32* %arrayidx75, align 4
  %40 = load i32, i32* @liberty_mark, align 4
  %cmp76 = icmp ne i32 %39, %40
  br i1 %cmp76, label %if.then.78, label %if.else.104

if.then.78:                                       ; preds = %land.lhs.true.72
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.78
  %41 = load i32, i32* %s.addr, align 4
  %idxprom80 = sext i32 %41 to i64
  %arrayidx81 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom80
  %liberties82 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx81, i32 0, i32 3
  %42 = load i32, i32* %liberties82, align 4
  %cmp83 = icmp slt i32 %42, 20
  br i1 %cmp83, label %if.then.85, label %if.end.95

if.then.85:                                       ; preds = %do.body.79
  %43 = load i32, i32* %pos, align 4
  %sub86 = sub nsw i32 %43, 1
  %44 = load i32, i32* %s.addr, align 4
  %idxprom87 = sext i32 %44 to i64
  %arrayidx88 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom87
  %liberties89 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx88, i32 0, i32 3
  %45 = load i32, i32* %liberties89, align 4
  %idxprom90 = sext i32 %45 to i64
  %46 = load i32, i32* %s.addr, align 4
  %idxprom91 = sext i32 %46 to i64
  %arrayidx92 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom91
  %libs93 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx92, i32 0, i32 4
  %arrayidx94 = getelementptr inbounds [20 x i32], [20 x i32]* %libs93, i32 0, i64 %idxprom90
  store i32 %sub86, i32* %arrayidx94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.85, %do.body.79
  %47 = load i32, i32* %s.addr, align 4
  %idxprom96 = sext i32 %47 to i64
  %arrayidx97 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom96
  %liberties98 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx97, i32 0, i32 3
  %48 = load i32, i32* %liberties98, align 4
  %inc99 = add nsw i32 %48, 1
  store i32 %inc99, i32* %liberties98, align 4
  %49 = load i32, i32* @liberty_mark, align 4
  %50 = load i32, i32* %pos, align 4
  %sub100 = sub nsw i32 %50, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom101
  store i32 %49, i32* %arrayidx102, align 4
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.95
  br label %if.end.140

if.else.104:                                      ; preds = %land.lhs.true.72, %if.end.65
  %51 = load i32, i32* %pos, align 4
  %sub105 = sub nsw i32 %51, 1
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom106
  %52 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %52 to i32
  %53 = load i32, i32* %other, align 4
  %cmp109 = icmp eq i32 %conv108, %53
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.139

land.lhs.true.111:                                ; preds = %if.else.104
  %54 = load i32, i32* %pos, align 4
  %sub112 = sub nsw i32 %54, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom113
  %55 = load i32, i32* %arrayidx114, align 4
  %idxprom115 = sext i32 %55 to i64
  %arrayidx116 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom115
  %mark117 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx116, i32 0, i32 7
  %56 = load i32, i32* %mark117, align 4
  %57 = load i32, i32* @string_mark, align 4
  %cmp118 = icmp ne i32 %56, %57
  br i1 %cmp118, label %if.then.120, label %if.end.139

if.then.120:                                      ; preds = %land.lhs.true.111
  %58 = load i32, i32* %pos, align 4
  %sub121 = sub nsw i32 %58, 1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom122
  %59 = load i32, i32* %arrayidx123, align 4
  %60 = load i32, i32* %s.addr, align 4
  %idxprom124 = sext i32 %60 to i64
  %arrayidx125 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom124
  %neighbors126 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx125, i32 0, i32 5
  %61 = load i32, i32* %neighbors126, align 4
  %inc127 = add nsw i32 %61, 1
  store i32 %inc127, i32* %neighbors126, align 4
  %idxprom128 = sext i32 %61 to i64
  %62 = load i32, i32* %s.addr, align 4
  %idxprom129 = sext i32 %62 to i64
  %arrayidx130 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom129
  %neighborlist131 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx130, i32 0, i32 6
  %arrayidx132 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist131, i32 0, i64 %idxprom128
  store i32 %59, i32* %arrayidx132, align 4
  %63 = load i32, i32* @string_mark, align 4
  %64 = load i32, i32* %pos, align 4
  %sub133 = sub nsw i32 %64, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom134
  %65 = load i32, i32* %arrayidx135, align 4
  %idxprom136 = sext i32 %65 to i64
  %arrayidx137 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom136
  %mark138 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx137, i32 0, i32 7
  store i32 %63, i32* %mark138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.120, %land.lhs.true.111, %if.else.104
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %do.end.103
  %66 = load i32, i32* %pos, align 4
  %sub141 = sub nsw i32 %66, 20
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom142
  %67 = load i8, i8* %arrayidx143, align 1
  %conv144 = zext i8 %67 to i32
  %cmp145 = icmp eq i32 %conv144, 0
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.179

land.lhs.true.147:                                ; preds = %if.end.140
  %68 = load i32, i32* %pos, align 4
  %sub148 = sub nsw i32 %68, 20
  %idxprom149 = sext i32 %sub148 to i64
  %arrayidx150 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom149
  %69 = load i32, i32* %arrayidx150, align 4
  %70 = load i32, i32* @liberty_mark, align 4
  %cmp151 = icmp ne i32 %69, %70
  br i1 %cmp151, label %if.then.153, label %if.else.179

if.then.153:                                      ; preds = %land.lhs.true.147
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  %71 = load i32, i32* %s.addr, align 4
  %idxprom155 = sext i32 %71 to i64
  %arrayidx156 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom155
  %liberties157 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx156, i32 0, i32 3
  %72 = load i32, i32* %liberties157, align 4
  %cmp158 = icmp slt i32 %72, 20
  br i1 %cmp158, label %if.then.160, label %if.end.170

if.then.160:                                      ; preds = %do.body.154
  %73 = load i32, i32* %pos, align 4
  %sub161 = sub nsw i32 %73, 20
  %74 = load i32, i32* %s.addr, align 4
  %idxprom162 = sext i32 %74 to i64
  %arrayidx163 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom162
  %liberties164 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx163, i32 0, i32 3
  %75 = load i32, i32* %liberties164, align 4
  %idxprom165 = sext i32 %75 to i64
  %76 = load i32, i32* %s.addr, align 4
  %idxprom166 = sext i32 %76 to i64
  %arrayidx167 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom166
  %libs168 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx167, i32 0, i32 4
  %arrayidx169 = getelementptr inbounds [20 x i32], [20 x i32]* %libs168, i32 0, i64 %idxprom165
  store i32 %sub161, i32* %arrayidx169, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.160, %do.body.154
  %77 = load i32, i32* %s.addr, align 4
  %idxprom171 = sext i32 %77 to i64
  %arrayidx172 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom171
  %liberties173 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx172, i32 0, i32 3
  %78 = load i32, i32* %liberties173, align 4
  %inc174 = add nsw i32 %78, 1
  store i32 %inc174, i32* %liberties173, align 4
  %79 = load i32, i32* @liberty_mark, align 4
  %80 = load i32, i32* %pos, align 4
  %sub175 = sub nsw i32 %80, 20
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom176
  store i32 %79, i32* %arrayidx177, align 4
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.170
  br label %if.end.215

if.else.179:                                      ; preds = %land.lhs.true.147, %if.end.140
  %81 = load i32, i32* %pos, align 4
  %sub180 = sub nsw i32 %81, 20
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom181
  %82 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %82 to i32
  %83 = load i32, i32* %other, align 4
  %cmp184 = icmp eq i32 %conv183, %83
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.214

land.lhs.true.186:                                ; preds = %if.else.179
  %84 = load i32, i32* %pos, align 4
  %sub187 = sub nsw i32 %84, 20
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom188
  %85 = load i32, i32* %arrayidx189, align 4
  %idxprom190 = sext i32 %85 to i64
  %arrayidx191 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom190
  %mark192 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx191, i32 0, i32 7
  %86 = load i32, i32* %mark192, align 4
  %87 = load i32, i32* @string_mark, align 4
  %cmp193 = icmp ne i32 %86, %87
  br i1 %cmp193, label %if.then.195, label %if.end.214

if.then.195:                                      ; preds = %land.lhs.true.186
  %88 = load i32, i32* %pos, align 4
  %sub196 = sub nsw i32 %88, 20
  %idxprom197 = sext i32 %sub196 to i64
  %arrayidx198 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom197
  %89 = load i32, i32* %arrayidx198, align 4
  %90 = load i32, i32* %s.addr, align 4
  %idxprom199 = sext i32 %90 to i64
  %arrayidx200 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom199
  %neighbors201 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx200, i32 0, i32 5
  %91 = load i32, i32* %neighbors201, align 4
  %inc202 = add nsw i32 %91, 1
  store i32 %inc202, i32* %neighbors201, align 4
  %idxprom203 = sext i32 %91 to i64
  %92 = load i32, i32* %s.addr, align 4
  %idxprom204 = sext i32 %92 to i64
  %arrayidx205 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom204
  %neighborlist206 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx205, i32 0, i32 6
  %arrayidx207 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist206, i32 0, i64 %idxprom203
  store i32 %89, i32* %arrayidx207, align 4
  %93 = load i32, i32* @string_mark, align 4
  %94 = load i32, i32* %pos, align 4
  %sub208 = sub nsw i32 %94, 20
  %idxprom209 = sext i32 %sub208 to i64
  %arrayidx210 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom209
  %95 = load i32, i32* %arrayidx210, align 4
  %idxprom211 = sext i32 %95 to i64
  %arrayidx212 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom211
  %mark213 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx212, i32 0, i32 7
  store i32 %93, i32* %mark213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.195, %land.lhs.true.186, %if.else.179
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %do.end.178
  %96 = load i32, i32* %pos, align 4
  %add216 = add nsw i32 %96, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom217
  %97 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %97 to i32
  %cmp220 = icmp eq i32 %conv219, 0
  br i1 %cmp220, label %land.lhs.true.222, label %if.else.254

land.lhs.true.222:                                ; preds = %if.end.215
  %98 = load i32, i32* %pos, align 4
  %add223 = add nsw i32 %98, 1
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom224
  %99 = load i32, i32* %arrayidx225, align 4
  %100 = load i32, i32* @liberty_mark, align 4
  %cmp226 = icmp ne i32 %99, %100
  br i1 %cmp226, label %if.then.228, label %if.else.254

if.then.228:                                      ; preds = %land.lhs.true.222
  br label %do.body.229

do.body.229:                                      ; preds = %if.then.228
  %101 = load i32, i32* %s.addr, align 4
  %idxprom230 = sext i32 %101 to i64
  %arrayidx231 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom230
  %liberties232 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx231, i32 0, i32 3
  %102 = load i32, i32* %liberties232, align 4
  %cmp233 = icmp slt i32 %102, 20
  br i1 %cmp233, label %if.then.235, label %if.end.245

if.then.235:                                      ; preds = %do.body.229
  %103 = load i32, i32* %pos, align 4
  %add236 = add nsw i32 %103, 1
  %104 = load i32, i32* %s.addr, align 4
  %idxprom237 = sext i32 %104 to i64
  %arrayidx238 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom237
  %liberties239 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx238, i32 0, i32 3
  %105 = load i32, i32* %liberties239, align 4
  %idxprom240 = sext i32 %105 to i64
  %106 = load i32, i32* %s.addr, align 4
  %idxprom241 = sext i32 %106 to i64
  %arrayidx242 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom241
  %libs243 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx242, i32 0, i32 4
  %arrayidx244 = getelementptr inbounds [20 x i32], [20 x i32]* %libs243, i32 0, i64 %idxprom240
  store i32 %add236, i32* %arrayidx244, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.235, %do.body.229
  %107 = load i32, i32* %s.addr, align 4
  %idxprom246 = sext i32 %107 to i64
  %arrayidx247 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom246
  %liberties248 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx247, i32 0, i32 3
  %108 = load i32, i32* %liberties248, align 4
  %inc249 = add nsw i32 %108, 1
  store i32 %inc249, i32* %liberties248, align 4
  %109 = load i32, i32* @liberty_mark, align 4
  %110 = load i32, i32* %pos, align 4
  %add250 = add nsw i32 %110, 1
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds [400 x i32], [400 x i32]* @ml, i32 0, i64 %idxprom251
  store i32 %109, i32* %arrayidx252, align 4
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.245
  br label %if.end.290

if.else.254:                                      ; preds = %land.lhs.true.222, %if.end.215
  %111 = load i32, i32* %pos, align 4
  %add255 = add nsw i32 %111, 1
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom256
  %112 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %112 to i32
  %113 = load i32, i32* %other, align 4
  %cmp259 = icmp eq i32 %conv258, %113
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.289

land.lhs.true.261:                                ; preds = %if.else.254
  %114 = load i32, i32* %pos, align 4
  %add262 = add nsw i32 %114, 1
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom263
  %115 = load i32, i32* %arrayidx264, align 4
  %idxprom265 = sext i32 %115 to i64
  %arrayidx266 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom265
  %mark267 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx266, i32 0, i32 7
  %116 = load i32, i32* %mark267, align 4
  %117 = load i32, i32* @string_mark, align 4
  %cmp268 = icmp ne i32 %116, %117
  br i1 %cmp268, label %if.then.270, label %if.end.289

if.then.270:                                      ; preds = %land.lhs.true.261
  %118 = load i32, i32* %pos, align 4
  %add271 = add nsw i32 %118, 1
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom272
  %119 = load i32, i32* %arrayidx273, align 4
  %120 = load i32, i32* %s.addr, align 4
  %idxprom274 = sext i32 %120 to i64
  %arrayidx275 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom274
  %neighbors276 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx275, i32 0, i32 5
  %121 = load i32, i32* %neighbors276, align 4
  %inc277 = add nsw i32 %121, 1
  store i32 %inc277, i32* %neighbors276, align 4
  %idxprom278 = sext i32 %121 to i64
  %122 = load i32, i32* %s.addr, align 4
  %idxprom279 = sext i32 %122 to i64
  %arrayidx280 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom279
  %neighborlist281 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx280, i32 0, i32 6
  %arrayidx282 = getelementptr inbounds [160 x i32], [160 x i32]* %neighborlist281, i32 0, i64 %idxprom278
  store i32 %119, i32* %arrayidx282, align 4
  %123 = load i32, i32* @string_mark, align 4
  %124 = load i32, i32* %pos, align 4
  %add283 = add nsw i32 %124, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds [400 x i32], [400 x i32]* @string_number, i32 0, i64 %idxprom284
  %125 = load i32, i32* %arrayidx285, align 4
  %idxprom286 = sext i32 %125 to i64
  %arrayidx287 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom286
  %mark288 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx287, i32 0, i32 7
  store i32 %123, i32* %mark288, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.270, %land.lhs.true.261, %if.else.254
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %do.end.253
  %126 = load i32, i32* %pos, align 4
  %idxprom291 = sext i32 %126 to i64
  %arrayidx292 = getelementptr inbounds [400 x i32], [400 x i32]* @next_stone, i32 0, i64 %idxprom291
  %127 = load i32, i32* %arrayidx292, align 4
  store i32 %127, i32* %pos, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.290
  %128 = load i32, i32* %pos, align 4
  %129 = load i32, i32* %s.addr, align 4
  %idxprom293 = sext i32 %129 to i64
  %arrayidx294 = getelementptr inbounds [240 x %struct.string_data], [240 x %struct.string_data]* @string, i32 0, i64 %idxprom293
  %origin295 = getelementptr inbounds %struct.string_data, %struct.string_data* %arrayidx294, i32 0, i32 2
  %130 = load i32, i32* %origin295, align 4
  %cmp296 = icmp eq i32 %128, %130
  %lnot = xor i1 %cmp296, true
  br i1 %lnot, label %do.body, label %do.end.298

do.end.298:                                       ; preds = %do.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
