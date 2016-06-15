; ModuleID = 'engine/interface.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [19 x i8] c"engine/interface.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"5 <= boardsize && boardsize <= 19\00", align 1
@board_size = external global i32, align 4
@komi = external global float, align 4
@board = external global [421 x i8], align 16
@movenum = external global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Board Size:   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Handicap      %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Komi:         %.1f\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Move Number:  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"To Move:      %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Computer player: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"White\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Black\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Both (solo)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Nobody\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [35 x i8] c" Handicap HA[%d] is unreasonable.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c" Modify SGF file.\0A\00", align 1
@debug = external global i32, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"Loading until move %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Loading until move at %d,%d (%m)\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%c%c[%s]\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"WARNING: Move off board or on occupied position found in sgf-file.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Move at %m ignored, trying to proceed.\0A\00", align 1
@board_ko_pos = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @init_gnugo() #0 {
entry:
  call void @reading_cache_init()
  call void @clear_board()
  call void @transformation_init()
  call void @dfa_match_init()
  ret void
}

declare void @reading_cache_init() #1

declare void @clear_board() #1

declare void @transformation_init() #1

declare void @dfa_match_init() #1

; Function Attrs: nounwind uwtable
define void @gnugo_clear_board(i32 %boardsize) #0 {
entry:
  %boardsize.addr = alloca i32, align 4
  store i32 %boardsize, i32* %boardsize.addr, align 4
  %0 = load i32, i32* %boardsize.addr, align 4
  %cmp = icmp sle i32 5, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %boardsize.addr, align 4
  %cmp1 = icmp sle i32 %1, 19
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @abortgo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %boardsize.addr, align 4
  store i32 %2, i32* @board_size, align 4
  call void @clear_board()
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gnugo_set_komi(float %new_komi) #0 {
entry:
  %new_komi.addr = alloca float, align 4
  store float %new_komi, float* %new_komi.addr, align 4
  %0 = load float, float* %new_komi.addr, align 4
  store float %0, float* @komi, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @gnugo_add_stone(i32 %i, i32 %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  %2 = load i32, i32* %color.addr, align 4
  call void @add_stone(i32 %add1, i32 %2)
  ret void
}

declare void @add_stone(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @gnugo_remove_stone(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  call void @remove_stone(i32 %add1)
  ret void
}

declare void @remove_stone(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_is_pass(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  %call = call i32 @is_pass(i32 %add1)
  ret i32 %call
}

declare i32 @is_pass(i32) #1

; Function Attrs: nounwind uwtable
define void @gnugo_play_move(i32 %i, i32 %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  %2 = load i32, i32* %color.addr, align 4
  call void @play_move(i32 %add1, i32 %2)
  ret void
}

declare void @play_move(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_undo_move(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @undo_move(i32 %0)
  ret i32 %call
}

declare i32 @undo_move(i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %node, i32 %to_move) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %to_move.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %to_move, i32* %to_move.addr, align 4
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %0, i32 0, i32 0
  %1 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool = icmp ne %struct.SGFProperty_t* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %3, i32 0, i32 1
  %4 = load i16, i16* %name, align 2
  %conv = sext i16 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 16961, label %sw.bb
    i32 22337, label %sw.bb.1
    i32 19536, label %sw.bb.3
    i32 8279, label %sw.bb.11
    i32 8258, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %6 = load i32, i32* @board_size, align 4
  %call = call i32 @get_moveXY(%struct.SGFProperty_t* %5, i32* %i, i32* %j, i32 %6)
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %7, i32 %8, i32 2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %10 = load i32, i32* @board_size, align 4
  %call2 = call i32 @get_moveXY(%struct.SGFProperty_t* %9, i32* %i, i32* %j, i32 %10)
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %11, i32 %12, i32 1)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %for.body
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 2
  %14 = load i8*, i8** %value, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %15 to i32
  %cmp = icmp eq i32 %conv4, 119
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.3
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value6 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %16, i32 0, i32 2
  %17 = load i8*, i8** %value6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %18 to i32
  %cmp9 = icmp eq i32 %conv8, 87
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.3
  store i32 1, i32* %to_move.addr, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 2, i32* %to_move.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body, %for.body
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name12 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %19, i32 0, i32 1
  %20 = load i16, i16* %name12, align 2
  %conv13 = sext i16 %20 to i32
  %cmp14 = icmp eq i32 %conv13, 8279
  %cond = select i1 %cmp14, i32 1, i32 2
  store i32 %cond, i32* %to_move.addr, align 4
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %22 = load i32, i32* @board_size, align 4
  %call16 = call i32 @get_moveXY(%struct.SGFProperty_t* %21, i32* %i, i32* %j, i32 %22)
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %to_move.addr, align 4
  call void @gnugo_play_move(i32 %23, i32 %24, i32 %25)
  %26 = load i32, i32* %to_move.addr, align 4
  %sub = sub nsw i32 3, %26
  store i32 %sub, i32* %to_move.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.11, %if.end, %sw.bb.1, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 0
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next, align 8
  store %struct.SGFProperty_t* %28, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %to_move.addr, align 4
  ret i32 %29
}

declare i32 @get_moveXY(%struct.SGFProperty_t*, i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_play_sgftree(%struct.SGFNode_t* %root, i32* %until, %struct.SGFNode_t** %curnode) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.SGFNode_t*, align 8
  %until.addr = alloca i32*, align 8
  %curnode.addr = alloca %struct.SGFNode_t**, align 8
  %node = alloca %struct.SGFNode_t*, align 8
  %next = alloca i32, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %movenumber = alloca i32, align 4
  store %struct.SGFNode_t* %root, %struct.SGFNode_t** %root.addr, align 8
  store i32* %until, i32** %until.addr, align 8
  store %struct.SGFNode_t** %curnode, %struct.SGFNode_t*** %curnode.addr, align 8
  store i32 2, i32* %next, align 4
  store i32 0, i32* %movenumber, align 4
  %0 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %0)
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %tobool = icmp ne %struct.SGFNode_t* %2, null
  br i1 %tobool, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %3, i32 0, i32 0
  %4 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %4, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool2 = icmp ne %struct.SGFProperty_t* %5, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %6, i32 0, i32 1
  %7 = load i16, i16* %name, align 2
  %conv = sext i16 %7 to i32
  switch i32 %conv, label %sw.epilog [
    i32 16961, label %sw.bb
    i32 22337, label %sw.bb.4
    i32 19536, label %sw.bb.6
    i32 8279, label %sw.bb.14
    i32 8258, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %for.body.3
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %9 = load i32, i32* @board_size, align 4
  %call = call i32 @get_moveXY(%struct.SGFProperty_t* %8, i32* %i, i32* %j, i32 %9)
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %10, i32 %11, i32 2)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body.3
  %12 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %13 = load i32, i32* @board_size, align 4
  %call5 = call i32 @get_moveXY(%struct.SGFProperty_t* %12, i32* %i, i32* %j, i32 %13)
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %14, i32 %15, i32 1)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body.3
  %16 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %16, i32 0, i32 2
  %17 = load i8*, i8** %value, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %18 to i32
  %cmp = icmp eq i32 %conv7, 119
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value9 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %19, i32 0, i32 2
  %20 = load i8*, i8** %value9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %21 to i32
  %cmp12 = icmp eq i32 %conv11, 87
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %sw.bb.6
  store i32 1, i32* %next, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 2, i32* %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.14:                                         ; preds = %for.body.3, %for.body.3
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name15 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %22, i32 0, i32 1
  %23 = load i16, i16* %name15, align 2
  %conv16 = sext i16 %23 to i32
  %cmp17 = icmp eq i32 %conv16, 8279
  %cond = select i1 %cmp17, i32 1, i32 2
  store i32 %cond, i32* %next, align 4
  %24 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %25 = load i32, i32* @board_size, align 4
  %call19 = call i32 @get_moveXY(%struct.SGFProperty_t* %24, i32* %i, i32* %j, i32 %25)
  %26 = load i32, i32* %movenumber, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %movenumber, align 4
  %27 = load i32, i32* %movenumber, align 4
  %28 = load i32*, i32** %until.addr, align 8
  %29 = load i32, i32* %28, align 4
  %cmp20 = icmp eq i32 %27, %29
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.14
  %30 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %parent = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %30, i32 0, i32 1
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %parent, align 8
  %32 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %curnode.addr, align 8
  store %struct.SGFNode_t* %31, %struct.SGFNode_t** %32, align 8
  %33 = load i32, i32* %next, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.14
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %next, align 4
  call void @gnugo_play_move(i32 %34, i32 %35, i32 %36)
  %37 = load i32, i32* %next, align 4
  %sub = sub nsw i32 3, %37
  store i32 %sub, i32* %next, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.3, %if.end.23, %if.end, %sw.bb.4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next24 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %38, i32 0, i32 0
  %39 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next24, align 8
  store %struct.SGFProperty_t* %39, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %child = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %40, i32 0, i32 2
  %41 = load %struct.SGFNode_t*, %struct.SGFNode_t** %child, align 8
  store %struct.SGFNode_t* %41, %struct.SGFNode_t** %node, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %42 = load i32, i32* %movenumber, align 4
  %43 = load i32*, i32** %until.addr, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %next, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.22
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @gnugo_is_legal(i32 %i, i32 %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  %2 = load i32, i32* %color.addr, align 4
  %call = call i32 @is_legal(i32 %add1, i32 %2)
  ret i32 %call
}

declare i32 @is_legal(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_is_suicide(i32 %i, i32 %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %j.addr, align 4
  %add1 = add nsw i32 %add, %1
  %2 = load i32, i32* %color.addr, align 4
  %call = call i32 @is_suicide(i32 %add1, i32 %2)
  ret i32 %call
}

declare i32 @is_suicide(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_placehand(i32 %handicap) #0 {
entry:
  %handicap.addr = alloca i32, align 4
  store i32 %handicap, i32* %handicap.addr, align 4
  %0 = load i32, i32* %handicap.addr, align 4
  %call = call i32 @place_fixed_handicap(i32 %0)
  ret i32 %call
}

declare i32 @place_fixed_handicap(i32) #1

; Function Attrs: nounwind uwtable
define void @gnugo_recordboard(%struct.SGFNode_t* %root) #0 {
entry:
  %root.addr = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %root, %struct.SGFNode_t** %root.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root.addr, align 8
  call void @sgffile_recordboard(%struct.SGFNode_t* %0)
  ret void
}

declare void @sgffile_recordboard(%struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_sethand(i32 %handicap, %struct.SGFNode_t* %node) #0 {
entry:
  %handicap.addr = alloca i32, align 4
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %stones = alloca i32, align 4
  store i32 %handicap, i32* %handicap.addr, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load i32, i32* %handicap.addr, align 4
  %call = call i32 @place_fixed_handicap(i32 %0)
  store i32 %call, i32* %stones, align 4
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  call void @sgffile_recordboard(%struct.SGFNode_t* %1)
  %2 = load i32, i32* %stones, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @gnugo_genmove(i32* %i, i32* %j, i32 %color) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %color.addr = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32*, i32** %i.addr, align 8
  %1 = load i32*, i32** %j.addr, align 8
  %2 = load i32, i32* %color.addr, align 4
  %call = call i32 @genmove(i32* %0, i32* %1, i32 %2)
  ret i32 %call
}

declare i32 @genmove(i32*, i32*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_attack(i32 %m, i32 %n, i32* %i, i32* %j) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %retval1 = alloca i32, align 4
  %move = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %n.addr, align 4
  %add2 = add nsw i32 %add, %1
  %call = call i32 @attack(i32 %add2, i32* %move)
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
  %tobool3 = icmp ne i32* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %move, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  %7 = load i32*, i32** %j.addr, align 8
  store i32 %sub5, i32* %7, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load i32, i32* %retval1, align 4
  ret i32 %8
}

declare i32 @attack(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gnugo_find_defense(i32 %m, i32 %n, i32* %i, i32* %j) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %retval1 = alloca i32, align 4
  %move = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %n.addr, align 4
  %add2 = add nsw i32 %add, %1
  %call = call i32 @find_defense(i32 %add2, i32* %move)
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
  %tobool3 = icmp ne i32* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* %move, align 4
  %rem = srem i32 %6, 20
  %sub5 = sub nsw i32 %rem, 1
  %7 = load i32*, i32** %j.addr, align 8
  store i32 %sub5, i32* %7, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %8 = load i32, i32* %retval1, align 4
  ret i32 %8
}

declare i32 @find_defense(i32, i32*) #1

; Function Attrs: nounwind uwtable
define void @gnugo_who_wins(i32 %color, %struct._IO_FILE* %outfile) #0 {
entry:
  %color.addr = alloca i32, align 4
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  store i32 %color, i32* %color.addr, align 4
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8
  %0 = load i32, i32* %color.addr, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8
  call void @who_wins(i32 %0, %struct._IO_FILE* %1)
  ret void
}

declare void @who_wins(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define float @gnugo_estimate_score(float* %upper, float* %lower) #0 {
entry:
  %upper.addr = alloca float*, align 8
  %lower.addr = alloca float*, align 8
  store float* %upper, float** %upper.addr, align 8
  store float* %lower, float** %lower.addr, align 8
  %0 = load float*, float** %lower.addr, align 8
  %1 = load float*, float** %upper.addr, align 8
  %call = call float @estimate_score(float* %0, float* %1)
  ret float %call
}

declare float @estimate_score(float*, float*) #1

; Function Attrs: nounwind uwtable
define void @gnugo_examine_position(i32 %color, i32 %how_much) #0 {
entry:
  %color.addr = alloca i32, align 4
  %how_much.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %how_much, i32* %how_much.addr, align 4
  %0 = load i32, i32* %color.addr, align 4
  %1 = load i32, i32* %how_much.addr, align 4
  call void @examine_position(i32 %0, i32 %1)
  ret void
}

declare void @examine_position(i32, i32) #1

; Function Attrs: nounwind uwtable
define float @gnugo_get_komi() #0 {
entry:
  %0 = load float, float* @komi, align 4
  ret float %0
}

; Function Attrs: nounwind uwtable
define void @gnugo_get_board([19 x i32]* %b) #0 {
entry:
  %b.addr = alloca [19 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [19 x i32]* %b, [19 x i32]** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %5
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load [19 x i32]*, [19 x i32]** %b.addr, align 8
  %arrayidx7 = getelementptr inbounds [19 x i32], [19 x i32]* %9, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [19 x i32], [19 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  store i32 %conv, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gnugo_get_boardsize() #0 {
entry:
  %0 = load i32, i32* @board_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @gnugo_get_move_number() #0 {
entry:
  %0 = load i32, i32* @movenum, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @gameinfo_clear(%struct.Gameinfo* %ginfo, i32 %boardsize, float %komi) #0 {
entry:
  %ginfo.addr = alloca %struct.Gameinfo*, align 8
  %boardsize.addr = alloca i32, align 4
  %komi.addr = alloca float, align 4
  store %struct.Gameinfo* %ginfo, %struct.Gameinfo** %ginfo.addr, align 8
  store i32 %boardsize, i32* %boardsize.addr, align 4
  store float %komi, float* %komi.addr, align 4
  %0 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %handicap = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %0, i32 0, i32 0
  store i32 0, i32* %handicap, align 4
  %1 = load i32, i32* %boardsize.addr, align 4
  call void @gnugo_clear_board(i32 %1)
  %2 = load float, float* %komi.addr, align 4
  call void @gnugo_set_komi(float %2)
  %3 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %3, i32 0, i32 1
  store i32 2, i32* %to_move, align 4
  %4 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %game_record = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %4, i32 0, i32 2
  call void @sgftree_clear(%struct.SGFTree_t* %game_record)
  %5 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %5, i32 0, i32 3
  store i32 1, i32* %computer_player, align 4
  ret void
}

declare void @sgftree_clear(%struct.SGFTree_t*) #1

; Function Attrs: nounwind uwtable
define void @gameinfo_print(%struct.Gameinfo* %ginfo) #0 {
entry:
  %ginfo.addr = alloca %struct.Gameinfo*, align 8
  store %struct.Gameinfo* %ginfo, %struct.Gameinfo** %ginfo.addr, align 8
  %0 = load i32, i32* @board_size, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %0)
  %1 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %handicap = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %1, i32 0, i32 0
  %2 = load i32, i32* %handicap, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %2)
  %3 = load float, float* @komi, align 4
  %conv = fpext float %3 to double
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), double %conv)
  %4 = load i32, i32* @movenum, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %4)
  %5 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %5, i32 0, i32 1
  %6 = load i32, i32* %to_move, align 4
  %call4 = call i8* @color_to_string(i32 %6)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %call4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0))
  %7 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %computer_player = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %7, i32 0, i32 3
  %8 = load i32, i32* %computer_player, align 4
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.23

if.else:                                          ; preds = %entry
  %9 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %computer_player9 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %9, i32 0, i32 3
  %10 = load i32, i32* %computer_player9, align 4
  %cmp10 = icmp eq i32 %10, 2
  br i1 %cmp10, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.22

if.else.14:                                       ; preds = %if.else
  %11 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %computer_player15 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %11, i32 0, i32 3
  %12 = load i32, i32* %computer_player15, align 4
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.14
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else.20:                                       ; preds = %if.else.14
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else.20, %if.then.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i8* @color_to_string(i32) #1

; Function Attrs: nounwind uwtable
define void @gameinfo_load_sgfheader(%struct.Gameinfo* %gameinfo, %struct.SGFNode_t* %head) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %head.addr = alloca %struct.SGFNode_t*, align 8
  %bsize = alloca i32, align 4
  %handicap = alloca i32, align 4
  %komi = alloca float, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store %struct.SGFNode_t* %head, %struct.SGFNode_t** %head.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head.addr, align 8
  %call = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32* %bsize)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 19, i32* %bsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head.addr, align 8
  %call1 = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), float* %komi)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store float 5.500000e+00, float* %komi, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load i32, i32* %bsize, align 4
  call void @gnugo_clear_board(i32 %2)
  %3 = load float, float* %komi, align 4
  call void @gnugo_set_komi(float %3)
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %head.addr, align 8
  %call5 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %handicap)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.end.4
  %5 = load i32, i32* %handicap, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 0, i32* %handicap, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %lor.lhs.false
  %6 = load i32, i32* %handicap, align 4
  %7 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap9 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %7, i32 0, i32 0
  store i32 %6, i32* %handicap9, align 4
  %8 = load i32, i32* %handicap, align 4
  %9 = load i32, i32* %bsize, align 4
  %10 = load i32, i32* %bsize, align 4
  %mul = mul nsw i32 %9, %10
  %sub = sub nsw i32 %mul, 1
  %cmp10 = icmp sgt i32 %8, %sub
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.8
  %11 = load i32, i32* %handicap, align 4
  %cmp12 = icmp slt i32 %11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %lor.lhs.false.11, %if.end.8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %handicap, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.16:                                        ; preds = %lor.lhs.false.11
  ret void
}

declare i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #1

declare i32 @sgfGetFloatProperty(%struct.SGFNode_t*, i8*, float*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @gameinfo_play_move(%struct.Gameinfo* %ginfo, i32 %i, i32 %j, i32 %color) #0 {
entry:
  %ginfo.addr = alloca %struct.Gameinfo*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.Gameinfo* %ginfo, %struct.Gameinfo** %ginfo.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %color, i32* %color.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %j.addr, align 4
  %2 = load i32, i32* %color.addr, align 4
  call void @gnugo_play_move(i32 %0, i32 %1, i32 %2)
  %3 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %game_record = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %3, i32 0, i32 2
  %4 = load i32, i32* %color.addr, align 4
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32, i32* %j.addr, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %game_record, i32 %4, i32 %5, i32 %6)
  %7 = load i32, i32* %color.addr, align 4
  %sub = sub nsw i32 3, %7
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %ginfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %8, i32 0, i32 1
  store i32 %sub, i32* %to_move, align 4
  ret void
}

declare void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %gameinfo, %struct.SGFTree_t* %tree, i8* %untilstr, i32 %orientation) #0 {
entry:
  %retval = alloca i32, align 4
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %untilstr.addr = alloca i8*, align 8
  %orientation.addr = alloca i32, align 4
  %bs = alloca i32, align 4
  %handicap = alloca i32, align 4
  %komi = alloca float, align 4
  %next = alloca i32, align 4
  %untilm = alloca i32, align 4
  %untiln = alloca i32, align 4
  %until = alloca i32, align 4
  %addstone = alloca i32, align 4
  %prop = alloca %struct.SGFProperty_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %move_color = alloca i32, align 4
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i8* %untilstr, i8** %untilstr.addr, align 8
  store i32 %orientation, i32* %orientation.addr, align 4
  store i32 2, i32* %next, align 4
  store i32 -1, i32* %untilm, align 4
  store i32 -1, i32* %untiln, align 4
  store i32 9999, i32* %until, align 4
  store i32 0, i32* %addstone, align 4
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %0, i32 0, i32 0
  %1 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), float* %komi)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap1 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %2, i32 0, i32 0
  %3 = load i32, i32* %handicap1, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store float 5.500000e+00, float* %komi, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store float 5.000000e-01, float* %komi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root4 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 0
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root4, align 8
  %call5 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32* %bs)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  store i32 19, i32* %bs, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.3
  %6 = load i32, i32* %bs, align 4
  call void @gnugo_clear_board(i32 %6)
  %7 = load float, float* %komi, align 4
  call void @gnugo_set_komi(float %7)
  %8 = load i8*, i8** %untilstr.addr, align 8
  %tobool9 = icmp ne i8* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.36

if.then.10:                                       ; preds = %if.end.8
  %9 = load i8*, i8** %untilstr.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp11 = icmp sgt i32 %conv, 48
  br i1 %cmp11, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %if.then.10
  %11 = load i8*, i8** %untilstr.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp sle i32 %conv13, 57
  br i1 %cmp14, label %if.then.16, label %if.else.20

if.then.16:                                       ; preds = %land.lhs.true
  %13 = load i8*, i8** %untilstr.addr, align 8
  %call17 = call i32 @atoi(i8* %13) #5
  store i32 %call17, i32* %until, align 4
  %14 = load i32, i32* @debug, align 4
  %and = and i32 %14, 128
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.16
  br label %cond.end

cond.false:                                       ; preds = %if.then.16
  %15 = load i32, i32* %until, align 4
  %call19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i32 %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %if.end.35

if.else.20:                                       ; preds = %land.lhs.true, %if.then.10
  %16 = load i8*, i8** %untilstr.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv21 = sext i8 %17 to i32
  %sub = sub nsw i32 %conv21, 65
  store i32 %sub, i32* %untiln, align 4
  %18 = load i8*, i8** %untilstr.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp sge i32 %conv22, 73
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.else.20
  %20 = load i32, i32* %untiln, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %untiln, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.else.20
  %21 = load i32, i32* @board_size, align 4
  %22 = load i8*, i8** %untilstr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %call27 = call i32 @atoi(i8* %add.ptr) #5
  %sub28 = sub nsw i32 %21, %call27
  store i32 %sub28, i32* %untilm, align 4
  %23 = load i32, i32* @debug, align 4
  %and29 = and i32 %23, 128
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.false.32, label %cond.true.31

cond.true.31:                                     ; preds = %if.end.26
  br label %cond.end.34

cond.false.32:                                    ; preds = %if.end.26
  %24 = load i32, i32* %untilm, align 4
  %25 = load i32, i32* %untiln, align 4
  %26 = load i32, i32* %untilm, align 4
  %27 = load i32, i32* %untiln, align 4
  %call33 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0), i32 %24, i32 %25, i32 %26, i32 %27)
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.31
  br label %if.end.35

if.end.35:                                        ; preds = %cond.end.34, %cond.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.8
  %28 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root37 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %28, i32 0, i32 0
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root37, align 8
  %call38 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32* %handicap)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.end.36
  %30 = load i32, i32* %handicap, align 4
  %cmp41 = icmp sgt i32 %30, 1
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.40
  %31 = load i32, i32* %handicap, align 4
  %32 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap44 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %32, i32 0, i32 0
  store i32 %31, i32* %handicap44, align 4
  store i32 1, i32* %next, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.40, %if.end.36
  %33 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %33, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %lastnode, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end.45
  %34 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call46 = call i32 @sgftreeForward(%struct.SGFTree_t* %34)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %for.body, label %for.end.194

for.body:                                         ; preds = %for.cond
  %35 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode48 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %35, i32 0, i32 1
  %36 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode48, align 8
  %props = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %36, i32 0, i32 0
  %37 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %props, align 8
  store %struct.SGFProperty_t* %37, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %38 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %tobool50 = icmp ne %struct.SGFProperty_t* %38, null
  br i1 %tobool50, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.49
  %39 = load i32, i32* @debug, align 4
  %and52 = and i32 %39, 128
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %cond.false.55, label %cond.true.54

cond.true.54:                                     ; preds = %for.body.51
  br label %cond.end.61

cond.false.55:                                    ; preds = %for.body.51
  %40 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %40, i32 0, i32 1
  %41 = load i16, i16* %name, align 2
  %conv56 = sext i16 %41 to i32
  %and57 = and i32 %conv56, 255
  %42 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name58 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %42, i32 0, i32 1
  %43 = load i16, i16* %name58, align 2
  %conv59 = sext i16 %43 to i32
  %shr = ashr i32 %conv59, 8
  %44 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %44, i32 0, i32 2
  %45 = load i8*, i8** %value, align 8
  %call60 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 %and57, i32 %shr, i8* %45)
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.55, %cond.true.54
  %46 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name62 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %46, i32 0, i32 1
  %47 = load i16, i16* %name62, align 2
  %conv63 = sext i16 %47 to i32
  switch i32 %conv63, label %sw.epilog [
    i32 16961, label %sw.bb
    i32 22337, label %sw.bb.65
    i32 19536, label %sw.bb.67
    i32 8279, label %sw.bb.96
    i32 8258, label %sw.bb.96
    i32 19529, label %sw.bb.153
  ]

sw.bb:                                            ; preds = %cond.end.61
  %48 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %49 = load i32, i32* @board_size, align 4
  %call64 = call i32 @get_moveXY(%struct.SGFProperty_t* %48, i32* %i, i32* %j, i32 %49)
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* @board_size, align 4
  %53 = load i32, i32* %orientation.addr, align 4
  call void @rotate(i32 %50, i32 %51, i32* %i, i32* %j, i32 %52, i32 %53)
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %54, i32 %55, i32 2)
  store i32 1, i32* %addstone, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %cond.end.61
  %56 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %57 = load i32, i32* @board_size, align 4
  %call66 = call i32 @get_moveXY(%struct.SGFProperty_t* %56, i32* %i, i32* %j, i32 %57)
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* @board_size, align 4
  %61 = load i32, i32* %orientation.addr, align 4
  call void @rotate(i32 %58, i32 %59, i32* %i, i32* %j, i32 %60, i32 %61)
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %j, align 4
  call void @gnugo_add_stone(i32 %62, i32 %63, i32 1)
  store i32 1, i32* %addstone, align 4
  br label %sw.epilog

sw.bb.67:                                         ; preds = %cond.end.61
  %64 = load i32, i32* @movenum, align 4
  %cmp68 = icmp ne i32 %64, 0
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.77

land.lhs.true.70:                                 ; preds = %sw.bb.67
  %65 = load i32, i32* %addstone, align 4
  %tobool71 = icmp ne i32 %65, 0
  br i1 %tobool71, label %if.end.77, label %if.then.72

if.then.72:                                       ; preds = %land.lhs.true.70
  %66 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap73 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %66, i32 0, i32 0
  %67 = load i32, i32* %handicap73, align 4
  %call74 = call i32 @gnugo_sethand(i32 %67, %struct.SGFNode_t* null)
  %68 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root75 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %68, i32 0, i32 0
  %69 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root75, align 8
  %70 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap76 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %70, i32 0, i32 0
  %71 = load i32, i32* %handicap76, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %71)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %land.lhs.true.70, %sw.bb.67
  %72 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value78 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %72, i32 0, i32 2
  %73 = load i8*, i8** %value78, align 8
  %arrayidx = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx, align 1
  %conv79 = sext i8 %74 to i32
  %cmp80 = icmp eq i32 %conv79, 119
  br i1 %cmp80, label %if.then.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.77
  %75 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value82 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %75, i32 0, i32 2
  %76 = load i8*, i8** %value82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %77 to i32
  %cmp85 = icmp eq i32 %conv84, 87
  br i1 %cmp85, label %if.then.93, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false
  %78 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %value88 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %78, i32 0, i32 2
  %79 = load i8*, i8** %value88, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %79, i64 0
  %80 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %80 to i32
  %cmp91 = icmp eq i32 %conv90, 50
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %lor.lhs.false.87, %lor.lhs.false, %if.end.77
  store i32 1, i32* %next, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %lor.lhs.false.87
  store i32 2, i32* %next, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.93
  br label %sw.epilog

sw.bb.96:                                         ; preds = %cond.end.61, %cond.end.61
  %81 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %name97 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %81, i32 0, i32 1
  %82 = load i16, i16* %name97, align 2
  %conv98 = sext i16 %82 to i32
  %cmp99 = icmp eq i32 %conv98, 8279
  %cond = select i1 %cmp99, i32 1, i32 2
  store i32 %cond, i32* %next, align 4
  %83 = load i32, i32* @movenum, align 4
  %cmp101 = icmp ne i32 %83, 0
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.110

land.lhs.true.103:                                ; preds = %sw.bb.96
  %84 = load i32, i32* %addstone, align 4
  %tobool104 = icmp ne i32 %84, 0
  br i1 %tobool104, label %if.end.110, label %if.then.105

if.then.105:                                      ; preds = %land.lhs.true.103
  %85 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap106 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %85, i32 0, i32 0
  %86 = load i32, i32* %handicap106, align 4
  %call107 = call i32 @gnugo_sethand(i32 %86, %struct.SGFNode_t* null)
  %87 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root108 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %87, i32 0, i32 0
  %88 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root108, align 8
  %89 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %handicap109 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %89, i32 0, i32 0
  %90 = load i32, i32* %handicap109, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %90)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.105, %land.lhs.true.103, %sw.bb.96
  %91 = load i32, i32* @movenum, align 4
  %92 = load i32, i32* %until, align 4
  %sub111 = sub nsw i32 %92, 1
  %cmp112 = icmp eq i32 %91, %sub111
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.110
  %93 = load i32, i32* %next, align 4
  %94 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %94, i32 0, i32 1
  store i32 %93, i32* %to_move, align 4
  %95 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call115 = call i32 @sgftreeBack(%struct.SGFTree_t* %95)
  %96 = load i32, i32* %next, align 4
  store i32 %96, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.110
  %97 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %98 = load i32, i32* @board_size, align 4
  %call117 = call i32 @get_moveXY(%struct.SGFProperty_t* %97, i32* %i, i32* %j, i32 %98)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then.119, label %if.end.129

if.then.119:                                      ; preds = %if.end.116
  %99 = load i32, i32* %i, align 4
  %100 = load i32, i32* %untilm, align 4
  %cmp120 = icmp eq i32 %99, %100
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.128

land.lhs.true.122:                                ; preds = %if.then.119
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* %untiln, align 4
  %cmp123 = icmp eq i32 %101, %102
  br i1 %cmp123, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %land.lhs.true.122
  %103 = load i32, i32* %next, align 4
  %104 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move126 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %104, i32 0, i32 1
  store i32 %103, i32* %to_move126, align 4
  %105 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %call127 = call i32 @sgftreeBack(%struct.SGFTree_t* %105)
  %106 = load i32, i32* %next, align 4
  store i32 %106, i32* %retval
  br label %return

if.end.128:                                       ; preds = %land.lhs.true.122, %if.then.119
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.116
  %107 = load i32, i32* %i, align 4
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* @board_size, align 4
  %110 = load i32, i32* %orientation.addr, align 4
  call void @rotate(i32 %107, i32 %108, i32* %i, i32* %j, i32 %109, i32 %110)
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* @board_size, align 4
  %cmp130 = icmp ult i32 %111, %112
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.141

land.lhs.true.132:                                ; preds = %if.end.129
  %113 = load i32, i32* %j, align 4
  %114 = load i32, i32* @board_size, align 4
  %cmp133 = icmp ult i32 %113, %114
  br i1 %cmp133, label %land.lhs.true.135, label %lor.lhs.false.141

land.lhs.true.135:                                ; preds = %land.lhs.true.132
  %115 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %115, 20
  %add = add nsw i32 21, %mul
  %116 = load i32, i32* %j, align 4
  %add136 = add nsw i32 %add, %116
  %idxprom = sext i32 %add136 to i64
  %arrayidx137 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %117 = load i8, i8* %arrayidx137, align 1
  %conv138 = zext i8 %117 to i32
  %cmp139 = icmp eq i32 %conv138, 0
  br i1 %cmp139, label %if.then.147, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.135, %land.lhs.true.132, %if.end.129
  %118 = load i32, i32* %i, align 4
  %cmp142 = icmp eq i32 %118, -1
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.149

land.lhs.true.144:                                ; preds = %lor.lhs.false.141
  %119 = load i32, i32* %j, align 4
  %cmp145 = icmp eq i32 %119, -1
  br i1 %cmp145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %land.lhs.true.144, %land.lhs.true.135
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %next, align 4
  call void @gnugo_play_move(i32 %120, i32 %121, i32 %122)
  %123 = load i32, i32* %next, align 4
  %sub148 = sub nsw i32 3, %123
  store i32 %sub148, i32* %next, align 4
  br label %if.end.152

if.else.149:                                      ; preds = %land.lhs.true.144, %lor.lhs.false.141
  %call150 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i32 0, i32 0))
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %j, align 4
  %call151 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i32 %124, i32 %125)
  %126 = load i32, i32* %next, align 4
  store i32 %126, i32* %retval
  br label %return

if.end.152:                                       ; preds = %if.then.147
  br label %sw.epilog

sw.bb.153:                                        ; preds = %cond.end.61
  %127 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %128 = load i32, i32* @board_size, align 4
  %call154 = call i32 @get_moveXY(%struct.SGFProperty_t* %127, i32* %i, i32* %j, i32 %128)
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %j, align 4
  %131 = load i32, i32* @board_size, align 4
  %132 = load i32, i32* %orientation.addr, align 4
  call void @rotate(i32 %129, i32 %130, i32* %i, i32* %j, i32 %131, i32 %132)
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* @board_size, align 4
  %cmp155 = icmp ult i32 %133, %134
  br i1 %cmp155, label %land.lhs.true.157, label %if.then.160

land.lhs.true.157:                                ; preds = %sw.bb.153
  %135 = load i32, i32* %j, align 4
  %136 = load i32, i32* @board_size, align 4
  %cmp158 = icmp ult i32 %135, %136
  br i1 %cmp158, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %land.lhs.true.157, %sw.bb.153
  br label %sw.epilog

if.end.161:                                       ; preds = %land.lhs.true.157
  %137 = load i32, i32* %i, align 4
  %cmp162 = icmp sgt i32 %137, 0
  br i1 %cmp162, label %if.then.164, label %if.else.173

if.then.164:                                      ; preds = %if.end.161
  %138 = load i32, i32* %i, align 4
  %sub165 = sub nsw i32 %138, 1
  %mul166 = mul nsw i32 %sub165, 20
  %add167 = add nsw i32 21, %mul166
  %139 = load i32, i32* %j, align 4
  %add168 = add nsw i32 %add167, %139
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom169
  %140 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %140 to i32
  %sub172 = sub nsw i32 3, %conv171
  store i32 %sub172, i32* %move_color, align 4
  br label %if.end.182

if.else.173:                                      ; preds = %if.end.161
  %141 = load i32, i32* %i, align 4
  %add174 = add nsw i32 %141, 1
  %mul175 = mul nsw i32 %add174, 20
  %add176 = add nsw i32 21, %mul175
  %142 = load i32, i32* %j, align 4
  %add177 = add nsw i32 %add176, %142
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom178
  %143 = load i8, i8* %arrayidx179, align 1
  %conv180 = zext i8 %143 to i32
  %sub181 = sub nsw i32 3, %conv180
  store i32 %sub181, i32* %move_color, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.173, %if.then.164
  %144 = load i32, i32* %i, align 4
  %mul183 = mul nsw i32 %144, 20
  %add184 = add nsw i32 21, %mul183
  %145 = load i32, i32* %j, align 4
  %add185 = add nsw i32 %add184, %145
  %146 = load i32, i32* %move_color, align 4
  %call186 = call i32 @is_ko(i32 %add185, i32 %146, i32* null)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.192

if.then.188:                                      ; preds = %if.end.182
  %147 = load i32, i32* %i, align 4
  %mul189 = mul nsw i32 %147, 20
  %add190 = add nsw i32 21, %mul189
  %148 = load i32, i32* %j, align 4
  %add191 = add nsw i32 %add190, %148
  store i32 %add191, i32* @board_ko_pos, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.188, %if.end.182
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.61, %if.end.192, %if.then.160, %if.end.152, %if.end.95, %sw.bb.65, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %149 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %prop, align 8
  %next193 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %149, i32 0, i32 0
  %150 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %next193, align 8
  store %struct.SGFProperty_t* %150, %struct.SGFProperty_t** %prop, align 8
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.cond

for.end.194:                                      ; preds = %for.cond
  %151 = load i32, i32* %next, align 4
  %152 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %to_move195 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %152, i32 0, i32 1
  store i32 %151, i32* %to_move195, align 4
  %153 = load i32, i32* %next, align 4
  store i32 %153, i32* %retval
  br label %return

return:                                           ; preds = %for.end.194, %if.else.149, %if.then.125, %if.then.114
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @gprintf(i8*, ...) #1

declare i32 @sgftreeForward(%struct.SGFTree_t*) #1

declare void @rotate(i32, i32, i32*, i32*, i32, i32) #1

declare void @sgfOverwritePropertyInt(%struct.SGFNode_t*, i8*, i32) #1

declare i32 @sgftreeBack(%struct.SGFTree_t*) #1

declare i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @gameinfo_play_sgftree(%struct.Gameinfo* %gameinfo, %struct.SGFTree_t* %tree, i8* %untilstr) #0 {
entry:
  %gameinfo.addr = alloca %struct.Gameinfo*, align 8
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %untilstr.addr = alloca i8*, align 8
  store %struct.Gameinfo* %gameinfo, %struct.Gameinfo** %gameinfo.addr, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  store i8* %untilstr, i8** %untilstr.addr, align 8
  %0 = load %struct.Gameinfo*, %struct.Gameinfo** %gameinfo.addr, align 8
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %2 = load i8*, i8** %untilstr.addr, align 8
  %call = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %0, %struct.SGFTree_t* %1, i8* %2, i32 0)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
