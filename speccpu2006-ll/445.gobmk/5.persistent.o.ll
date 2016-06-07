; ModuleID = 'engine/persistent.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reading_cache = type { i32, [400 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32] }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.owl_cache = type { i32, [400 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@purge_persistent_reading_cache.last_purge_position_number = internal global i32 -1, align 4
@stackp = external global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"engine/persistent.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@position_number = external global i32, align 4
@persistent_reading_cache_size = internal global i32 0, align 4
@persistent_reading_cache = internal global [100 x %struct.reading_cache] zeroinitializer, align 16
@board_size = external global i32, align 4
@board = external global [421 x i8], align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"purge_persistent_reading_cache\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"entry->result == 0 || entry->move == NO_MOVE || ON_BOARD(entry->move)\00", align 1
@debug = external global i32, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%o%s %1m = %d %1m, cached (%d nodes) \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%o%s %1m = %d, cached (%d nodes) \00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"result == 0 || (move == 0) || ON_BOARD(move)\00", align 1
@movenum = external global i32, align 4
@depth = external global i32, align 4
@shadow = external global [400 x i8], align 16
@worm = external global [400 x %struct.worm_data], align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@purge_persistent_owl_cache.last_purge_position_number = internal global i32 -1, align 4
@persistent_owl_cache_size = internal global i32 0, align 4
@persistent_owl_cache = internal global [150 x %struct.owl_cache] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [27 x i8] c"stackp == 0 || stackp == 1\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"persistent owl cache hit: routine %s at %1m result %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Persistent owl cache full.\0A\00", align 1
@delta = external global [8 x i32], align 16
@.str.13 = private unnamed_addr constant [39 x i8] c"%o Stored result in cache (entry %d):\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Owl hotspots: %d %1m %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"str == find_origin(str)\00", align 1
@deltai = external global [8 x i32], align 16
@deltaj = external global [8 x i32], align 16
@.str.16 = private unnamed_addr constant [24 x i8] c"%omovenum         = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"%otactical_nodes  = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%oroutine         = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%o(apos)          = %1m\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%o(bpos)          = %1m\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%o(cpos)          = %1m\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%oresult          = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"%o(move)          = %1m\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%o(move2)         = %1m\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"[%c\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"]%c\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IS_STONE(board[dr])\00", align 1

; Function Attrs: nounwind uwtable
define void @purge_persistent_reading_cache() #0 {
entry:
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %played_moves = alloca i32, align 4
  %entry_ok = alloca i32, align 4
  %apos = alloca i32, align 4
  %color = alloca i32, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @purge_persistent_reading_cache.last_purge_position_number, align 4
  %2 = load i32, i32* @position_number, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %for.end.54

if.else.3:                                        ; preds = %if.end
  %3 = load i32, i32* @position_number, align 4
  store i32 %3, i32* @purge_persistent_reading_cache.last_purge_position_number, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %if.end.4
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %played_moves, align 4
  store i32 1, i32* %entry_ok, align 4
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom
  %boardsize = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %boardsize, align 4
  %8 = load i32, i32* @board_size, align 4
  %cmp6 = icmp ne i32 %7, %8
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %for.body
  store i32 0, i32* %entry_ok, align 4
  br label %if.end.31

if.else.8:                                        ; preds = %for.body
  store i32 0, i32* %r, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.else.8
  %9 = load i32, i32* %r, align 4
  %cmp10 = icmp slt i32 %9, 5
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %10 = load i32, i32* %r, align 4
  %idxprom12 = sext i32 %10 to i64
  %11 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom13
  %stack = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx14, i32 0, i32 10
  %arrayidx15 = getelementptr inbounds [5 x i32], [5 x i32]* %stack, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx15, align 4
  store i32 %12, i32* %apos, align 4
  %13 = load i32, i32* %r, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom17
  %move_color = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx18, i32 0, i32 11
  %arrayidx19 = getelementptr inbounds [5 x i32], [5 x i32]* %move_color, i32 0, i64 %idxprom16
  %15 = load i32, i32* %arrayidx19, align 4
  store i32 %15, i32* %color, align 4
  %16 = load i32, i32* %apos, align 4
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.11
  br label %for.end

if.end.22:                                        ; preds = %for.body.11
  %17 = load i32, i32* %apos, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %18 = load i8, i8* %arrayidx24, align 1
  %conv = zext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv, 0
  br i1 %cmp25, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.end.22
  %19 = load i32, i32* %apos, align 4
  %20 = load i32, i32* %color, align 4
  %call = call i32 @trymove(i32 %19, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %played_moves, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %played_moves, align 4
  br label %if.end.29

if.else.28:                                       ; preds = %land.lhs.true, %if.end.22
  store i32 0, i32* %entry_ok, align 4
  br label %for.end

if.end.29:                                        ; preds = %if.then.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %22 = load i32, i32* %r, align 4
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, i32* %r, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.else.28, %if.then.21, %for.cond.9
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.then.7
  %23 = load i32, i32* %entry_ok, align 4
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %lor.lhs.false, label %if.then.37

lor.lhs.false:                                    ; preds = %if.end.31
  %24 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom33
  %board = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx34, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i32 0
  %call35 = call i32 @verify_stored_board(i8* %arraydecay)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.48, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.31
  %25 = load i32, i32* %k, align 4
  %26 = load i32, i32* @persistent_reading_cache_size, align 4
  %sub = sub nsw i32 %26, 1
  %cmp38 = icmp slt i32 %25, %sub
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.then.37
  %27 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom41
  %28 = load i32, i32* @persistent_reading_cache_size, align 4
  %sub43 = sub nsw i32 %28, 1
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom44
  %29 = bitcast %struct.reading_cache* %arrayidx42 to i8*
  %30 = bitcast %struct.reading_cache* %arrayidx45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 476, i32 4, i1 false)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.40, %if.then.37
  %31 = load i32, i32* %k, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %k, align 4
  %32 = load i32, i32* @persistent_reading_cache_size, align 4
  %dec47 = add nsw i32 %32, -1
  store i32 %dec47, i32* @persistent_reading_cache_size, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.48
  %33 = load i32, i32* %played_moves, align 4
  %cmp49 = icmp sgt i32 %33, 0
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @popgo()
  %34 = load i32, i32* %played_moves, align 4
  %dec51 = add nsw i32 %34, -1
  store i32 %dec51, i32* %played_moves, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.52

for.inc.52:                                       ; preds = %while.end
  %35 = load i32, i32* %k, align 4
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, i32* %k, align 4
  br label %for.cond

for.end.54:                                       ; preds = %if.then.2, %for.cond
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @verify_stored_board(i8* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 3
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i8*, i8** %p.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 3
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  br label %for.inc

if.else.9:                                        ; preds = %if.else
  %6 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %6 to i64
  %7 = load i8*, i8** %p.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %8 to i32
  %and = and i32 %conv12, 3
  %9 = load i32, i32* %pos, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom13
  %10 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %10 to i32
  %cmp16 = icmp ne i32 %and, %conv15
  br i1 %cmp16, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else.9
  store i32 0, i32* %retval
  br label %return

if.else.19:                                       ; preds = %if.else.9
  %11 = load i32, i32* %pos, align 4
  %idxprom20 = sext i32 %11 to i64
  %12 = load i8*, i8** %p.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %12, i64 %idxprom20
  %13 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %13 to i32
  %and23 = and i32 %conv22, 4
  %tobool = icmp ne i32 %and23, 0
  br i1 %tobool, label %if.else.25, label %if.then.24

if.then.24:                                       ; preds = %if.else.19
  br label %for.inc

if.else.25:                                       ; preds = %if.else.19
  %14 = load i32, i32* %pos, align 4
  %call = call i32 @countlib(i32 %14)
  %cmp26 = icmp sle i32 %call, 4
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.else.25
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.32, %if.then.24, %if.then.8, %if.then
  %15 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.28, %if.then.18
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @popgo() #1

; Function Attrs: nounwind uwtable
define void @clear_persistent_reading_cache() #0 {
entry:
  store i32 0, i32* @persistent_reading_cache_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @search_persistent_reading_cache(i32 %routine, i32 %str, i32* %result, i32* %move) #0 {
entry:
  %retval = alloca i32, align 4
  %routine.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %result.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %entry1 = alloca %struct.reading_cache*, align 8
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32* %result, i32** %result.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  %0 = load i32, i32* %routine.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @find_persistent_reading_cache_entry(i32 %0, i32 %1)
  store i32 %call, i32* %k, align 4
  %2 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom
  store %struct.reading_cache* %arrayidx, %struct.reading_cache** %entry1, align 8
  %4 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %nodes = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %4, i32 0, i32 3
  %5 = load i32, i32* %nodes, align 4
  %6 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %score = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %6, i32 0, i32 4
  %7 = load i32, i32* %score, align 4
  %add = add nsw i32 %7, %5
  store i32 %add, i32* %score, align 4
  %8 = load i32*, i32** %result.addr, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result3 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %9, i32 0, i32 8
  %10 = load i32, i32* %result3, align 4
  %11 = load i32*, i32** %result.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %12 = load i32*, i32** %move.addr, align 8
  %tobool5 = icmp ne i32* %12, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %13 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move7 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %13, i32 0, i32 9
  %14 = load i32, i32* %move7, align 4
  %15 = load i32*, i32** %move.addr, align 8
  store i32 %14, i32* %15, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %16 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result9 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %16, i32 0, i32 8
  %17 = load i32, i32* %result9, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %18 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move11 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %18, i32 0, i32 9
  %19 = load i32, i32* %move11, align 4
  %cmp12 = icmp eq i32 %19, 0
  br i1 %cmp12, label %if.then.19, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %20 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move14 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %20, i32 0, i32 9
  %21 = load i32, i32* %move14, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom15
  %22 = load i8, i8* %arrayidx16, align 1
  %conv = zext i8 %22 to i32
  %cmp17 = icmp ne i32 %conv, 3
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %if.end.8
  br label %if.end.23

if.else:                                          ; preds = %lor.lhs.false.13
  %23 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move20 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %23, i32 0, i32 9
  %24 = load i32, i32* %move20, align 4
  %div = sdiv i32 %24, 20
  %sub = sub nsw i32 %div, 1
  %25 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move21 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %25, i32 0, i32 9
  %26 = load i32, i32* %move21, align 4
  %rem = srem i32 %26, 20
  %sub22 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 339, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0), i32 %sub, i32 %sub22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  %27 = load i32, i32* @debug, align 4
  %and = and i32 %27, 32768
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.23
  %28 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %nodes25 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %28, i32 0, i32 3
  %29 = load i32, i32* %nodes25, align 4
  %cmp26 = icmp sge i32 %29, 1000
  br i1 %cmp26, label %if.then.28, label %if.end.47

if.then.28:                                       ; preds = %land.lhs.true
  %30 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result29 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %30, i32 0, i32 8
  %31 = load i32, i32* %result29, align 4
  %cmp30 = icmp ne i32 %31, 0
  br i1 %cmp30, label %if.then.32, label %if.else.39

if.then.32:                                       ; preds = %if.then.28
  %32 = load i32, i32* %routine.addr, align 4
  %cmp33 = icmp eq i32 %32, 4
  %cond = select i1 %cmp33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)
  %33 = load i32, i32* %str.addr, align 4
  %34 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result35 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %34, i32 0, i32 8
  %35 = load i32, i32* %result35, align 4
  %36 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move36 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %36, i32 0, i32 9
  %37 = load i32, i32* %move36, align 4
  %38 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %nodes37 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %38, i32 0, i32 3
  %39 = load i32, i32* %nodes37, align 4
  %call38 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* %cond, i32 %33, i32 %35, i32 %37, i32 %39)
  br label %if.end.46

if.else.39:                                       ; preds = %if.then.28
  %40 = load i32, i32* %routine.addr, align 4
  %cmp40 = icmp eq i32 %40, 4
  %cond42 = select i1 %cmp40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)
  %41 = load i32, i32* %str.addr, align 4
  %42 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result43 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %42, i32 0, i32 8
  %43 = load i32, i32* %result43, align 4
  %44 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %nodes44 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %44, i32 0, i32 3
  %45 = load i32, i32* %nodes44, align 4
  %call45 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* %cond42, i32 %41, i32 %43, i32 %45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.39, %if.then.32
  call void @dump_stack()
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %land.lhs.true, %if.end.23
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @find_persistent_reading_cache_entry(i32 %routine, i32 %str) #0 {
entry:
  %retval = alloca i32, align 4
  %routine.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %entry3 = alloca %struct.reading_cache*, align 8
  %apos = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %str.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @find_origin(i32 %1)
  %cmp = icmp eq i32 %0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %str.addr, align 4
  %div = sdiv i32 %2, 20
  %sub = sub nsw i32 %div, 1
  %3 = load i32, i32* %str.addr, align 4
  %rem = srem i32 %3, 20
  %sub1 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i32 %sub, i32 %sub1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom
  store %struct.reading_cache* %arrayidx, %struct.reading_cache** %entry3, align 8
  store i32 0, i32* %apos, align 4
  %7 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %routine4 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %7, i32 0, i32 6
  %8 = load i32, i32* %routine4, align 4
  %9 = load i32, i32* %routine.addr, align 4
  %cmp5 = icmp ne i32 %8, %9
  br i1 %cmp5, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %str6 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %10, i32 0, i32 7
  %11 = load i32, i32* %str6, align 4
  %12 = load i32, i32* %str.addr, align 4
  %cmp7 = icmp ne i32 %11, %12
  br i1 %cmp7, label %if.then.13, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %13 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %remaining_depth = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %13, i32 0, i32 5
  %14 = load i32, i32* %remaining_depth, align 4
  %15 = load i32, i32* @depth, align 4
  %16 = load i32, i32* @stackp, align 4
  %sub9 = sub nsw i32 %15, %16
  %cmp10 = icmp slt i32 %14, %sub9
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %17 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %boardsize = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %17, i32 0, i32 0
  %18 = load i32, i32* %boardsize, align 4
  %19 = load i32, i32* @board_size, align 4
  %cmp12 = icmp ne i32 %18, %19
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false, %for.body
  br label %for.inc.48

if.end.14:                                        ; preds = %lor.lhs.false.11
  store i32 0, i32* %r, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.14
  %20 = load i32, i32* %r, align 4
  %cmp16 = icmp slt i32 %20, 5
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %r, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %stack = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %22, i32 0, i32 10
  %arrayidx19 = getelementptr inbounds [5 x i32], [5 x i32]* %stack, i32 0, i64 %idxprom18
  %23 = load i32, i32* %arrayidx19, align 4
  store i32 %23, i32* %apos, align 4
  %24 = load i32, i32* %apos, align 4
  %cmp20 = icmp eq i32 %24, 0
  br i1 %cmp20, label %if.then.35, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %for.body.17
  %25 = load i32, i32* %apos, align 4
  %idxprom22 = sext i32 %25 to i64
  %26 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %board = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %26, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i64 %idxprom22
  %27 = load i8, i8* %arrayidx23, align 1
  %conv = sext i8 %27 to i32
  %cmp24 = icmp ne i32 %conv, 3
  br i1 %cmp24, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false.21
  %28 = load i32, i32* %apos, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom26
  %29 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %29 to i32
  %30 = load i32, i32* %apos, align 4
  %idxprom29 = sext i32 %30 to i64
  %31 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %board30 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %31, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [400 x i8], [400 x i8]* %board30, i32 0, i64 %idxprom29
  %32 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %32 to i32
  %cmp33 = icmp ne i32 %conv28, %conv32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true, %for.body.17
  br label %for.end

if.end.36:                                        ; preds = %land.lhs.true, %lor.lhs.false.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %33 = load i32, i32* %r, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.15

for.end:                                          ; preds = %if.then.35, %for.cond.15
  %34 = load i32, i32* %r, align 4
  %cmp37 = icmp slt i32 %34, 5
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %for.end
  %35 = load i32, i32* %apos, align 4
  %cmp40 = icmp ne i32 %35, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  br label %for.inc.48

if.end.43:                                        ; preds = %land.lhs.true.39, %for.end
  %36 = load %struct.reading_cache*, %struct.reading_cache** %entry3, align 8
  %board44 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %36, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board44, i32 0, i32 0
  %call45 = call i32 @verify_stored_board(i8* %arraydecay)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  br label %for.inc.48

if.end.47:                                        ; preds = %if.end.43
  %37 = load i32, i32* %k, align 4
  store i32 %37, i32* %retval
  br label %return

for.inc.48:                                       ; preds = %if.then.46, %if.then.42, %if.then.13
  %38 = load i32, i32* %k, align 4
  %inc49 = add nsw i32 %38, 1
  store i32 %inc49, i32* %k, align 4
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.50, %if.end.47
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @gprintf(i8*, ...) #1

declare void @dump_stack() #1

; Function Attrs: nounwind uwtable
define void @store_persistent_reading_cache(i32 %routine, i32 %str, i32 %result, i32 %move, i32 %nodes) #0 {
entry:
  %routine.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %result.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %nodes.addr = alloca i32, align 4
  %active = alloca [400 x i8], align 16
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %score = alloca i32, align 4
  %entry1 = alloca %struct.reading_cache*, align 8
  %worst_entry = alloca i32, align 4
  %worst_score = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  store i32 %result, i32* %result.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %nodes, i32* %nodes.addr, align 4
  %0 = load i32, i32* %nodes.addr, align 4
  store i32 %0, i32* %score, align 4
  %1 = load i32, i32* %result.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %move.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %move.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv, 3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.3
  %5 = load i32, i32* %move.addr, align 4
  %div = sdiv i32 %5, 20
  %sub = sub nsw i32 %div, 1
  %6 = load i32, i32* %move.addr, align 4
  %rem = srem i32 %6, 20
  %sub6 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i32 %sub, i32 %sub6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @stackp, align 4
  %cmp7 = icmp sgt i32 %7, 5
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  br label %return

if.end.10:                                        ; preds = %if.end
  %8 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp11 = icmp eq i32 %8, 100
  br i1 %cmp11, label %if.then.13, label %if.end.41

if.then.13:                                       ; preds = %if.end.10
  store i32 -1, i32* %worst_entry, align 4
  %9 = load i32, i32* %score, align 4
  store i32 %9, i32* %worst_score, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom16
  %score18 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx17, i32 0, i32 4
  %13 = load i32, i32* %score18, align 4
  %14 = load i32, i32* %worst_score, align 4
  %cmp19 = icmp slt i32 %13, %14
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %for.body
  %15 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom22
  %score24 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx23, i32 0, i32 4
  %16 = load i32, i32* %score24, align 4
  store i32 %16, i32* %worst_score, align 4
  %17 = load i32, i32* %k, align 4
  store i32 %17, i32* %worst_entry, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %worst_entry, align 4
  %cmp26 = icmp ne i32 %19, -1
  br i1 %cmp26, label %if.then.28, label %if.else.39

if.then.28:                                       ; preds = %for.end
  %20 = load i32, i32* %worst_entry, align 4
  %21 = load i32, i32* @persistent_reading_cache_size, align 4
  %sub29 = sub nsw i32 %21, 1
  %cmp30 = icmp slt i32 %20, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.then.28
  %22 = load i32, i32* %worst_entry, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom33
  %23 = load i32, i32* @persistent_reading_cache_size, align 4
  %sub35 = sub nsw i32 %23, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom36
  %24 = bitcast %struct.reading_cache* %arrayidx34 to i8*
  %25 = bitcast %struct.reading_cache* %arrayidx37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 476, i32 4, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %if.then.28
  %26 = load i32, i32* @persistent_reading_cache_size, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* @persistent_reading_cache_size, align 4
  br label %if.end.40

if.else.39:                                       ; preds = %for.end
  br label %return

if.end.40:                                        ; preds = %if.end.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.10
  %27 = load i32, i32* @persistent_reading_cache_size, align 4
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom42
  store %struct.reading_cache* %arrayidx43, %struct.reading_cache** %entry1, align 8
  %28 = load i32, i32* @board_size, align 4
  %29 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %boardsize = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %29, i32 0, i32 0
  store i32 %28, i32* %boardsize, align 4
  %30 = load i32, i32* @movenum, align 4
  %31 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %movenum = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %31, i32 0, i32 2
  store i32 %30, i32* %movenum, align 4
  %32 = load i32, i32* %nodes.addr, align 4
  %33 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %nodes44 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %33, i32 0, i32 3
  store i32 %32, i32* %nodes44, align 4
  %34 = load i32, i32* %score, align 4
  %35 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %score45 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %35, i32 0, i32 4
  store i32 %34, i32* %score45, align 4
  %36 = load i32, i32* @depth, align 4
  %37 = load i32, i32* @stackp, align 4
  %sub46 = sub nsw i32 %36, %37
  %38 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %remaining_depth = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %38, i32 0, i32 5
  store i32 %sub46, i32* %remaining_depth, align 4
  %39 = load i32, i32* %routine.addr, align 4
  %40 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %routine47 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %40, i32 0, i32 6
  store i32 %39, i32* %routine47, align 4
  %41 = load i32, i32* %str.addr, align 4
  %42 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %str48 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %42, i32 0, i32 7
  store i32 %41, i32* %str48, align 4
  %43 = load i32, i32* %result.addr, align 4
  %44 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %result49 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %44, i32 0, i32 8
  store i32 %43, i32* %result49, align 4
  %45 = load i32, i32* %move.addr, align 4
  %46 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move50 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %46, i32 0, i32 9
  store i32 %45, i32* %move50, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.70, %if.end.41
  %47 = load i32, i32* %r, align 4
  %cmp52 = icmp slt i32 %47, 5
  br i1 %cmp52, label %for.body.54, label %for.end.72

for.body.54:                                      ; preds = %for.cond.51
  %48 = load i32, i32* %r, align 4
  %49 = load i32, i32* @stackp, align 4
  %cmp55 = icmp slt i32 %48, %49
  br i1 %cmp55, label %if.then.57, label %if.else.62

if.then.57:                                       ; preds = %for.body.54
  %50 = load i32, i32* %r, align 4
  %51 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %51 to i64
  %52 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %stack = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %52, i32 0, i32 10
  %arrayidx59 = getelementptr inbounds [5 x i32], [5 x i32]* %stack, i32 0, i64 %idxprom58
  %53 = load i32, i32* %r, align 4
  %idxprom60 = sext i32 %53 to i64
  %54 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move_color = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %54, i32 0, i32 11
  %arrayidx61 = getelementptr inbounds [5 x i32], [5 x i32]* %move_color, i32 0, i64 %idxprom60
  call void @get_move_from_stack(i32 %50, i32* %arrayidx59, i32* %arrayidx61)
  br label %if.end.69

if.else.62:                                       ; preds = %for.body.54
  %55 = load i32, i32* %r, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %stack64 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %56, i32 0, i32 10
  %arrayidx65 = getelementptr inbounds [5 x i32], [5 x i32]* %stack64, i32 0, i64 %idxprom63
  store i32 0, i32* %arrayidx65, align 4
  %57 = load i32, i32* %r, align 4
  %idxprom66 = sext i32 %57 to i64
  %58 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %move_color67 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %58, i32 0, i32 11
  %arrayidx68 = getelementptr inbounds [5 x i32], [5 x i32]* %move_color67, i32 0, i64 %idxprom66
  store i32 0, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.then.57
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %59 = load i32, i32* %r, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, i32* %r, align 4
  br label %for.cond.51

for.end.72:                                       ; preds = %for.cond.51
  store i32 21, i32* %k, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.81, %for.end.72
  %60 = load i32, i32* %k, align 4
  %cmp74 = icmp slt i32 %60, 400
  br i1 %cmp74, label %for.body.76, label %for.end.83

for.body.76:                                      ; preds = %for.cond.73
  %61 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %61 to i64
  %arrayidx78 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i32 0, i64 %idxprom77
  %62 = load i8, i8* %arrayidx78, align 1
  %63 = load i32, i32* %k, align 4
  %idxprom79 = sext i32 %63 to i64
  %arrayidx80 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom79
  store i8 %62, i8* %arrayidx80, align 1
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.76
  %64 = load i32, i32* %k, align 4
  %inc82 = add nsw i32 %64, 1
  store i32 %inc82, i32* %k, align 4
  br label %for.cond.73

for.end.83:                                       ; preds = %for.cond.73
  %65 = load i32, i32* %str.addr, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i32 0
  call void @mark_string(i32 %65, i8* %arraydecay, i8 signext 1)
  %66 = load i32, i32* %result.addr, align 4
  %cmp84 = icmp ne i32 %66, 0
  br i1 %cmp84, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %for.end.83
  %67 = load i32, i32* %move.addr, align 4
  %cmp86 = icmp ne i32 %67, 0
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %land.lhs.true
  %68 = load i32, i32* %move.addr, align 4
  %idxprom89 = sext i32 %68 to i64
  %arrayidx90 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom89
  store i8 1, i8* %arrayidx90, align 1
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %land.lhs.true, %for.end.83
  store i32 21, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.183, %if.end.91
  %69 = load i32, i32* %k, align 4
  %cmp93 = icmp slt i32 %69, 400
  br i1 %cmp93, label %for.body.95, label %for.end.185

for.body.95:                                      ; preds = %for.cond.92
  %70 = load i32, i32* %k, align 4
  %idxprom96 = sext i32 %70 to i64
  %arrayidx97 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom96
  %71 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %71 to i32
  %cmp99 = icmp ne i32 %conv98, 3
  br i1 %cmp99, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %for.body.95
  br label %for.inc.183

if.end.102:                                       ; preds = %for.body.95
  %72 = load i32, i32* %k, align 4
  %idxprom103 = sext i32 %72 to i64
  %arrayidx104 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom103
  %73 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %73 to i32
  %cmp106 = icmp ne i32 %conv105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.102
  br label %for.inc.183

if.end.109:                                       ; preds = %if.end.102
  %74 = load i32, i32* %k, align 4
  %add = add nsw i32 %74, 20
  %idxprom110 = sext i32 %add to i64
  %arrayidx111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom110
  %75 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %75 to i32
  %cmp113 = icmp ne i32 %conv112, 3
  br i1 %cmp113, label %land.lhs.true.115, label %lor.lhs.false.122

land.lhs.true.115:                                ; preds = %if.end.109
  %76 = load i32, i32* %k, align 4
  %add116 = add nsw i32 %76, 20
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom117
  %77 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %77 to i32
  %cmp120 = icmp eq i32 %conv119, 1
  br i1 %cmp120, label %if.then.164, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %land.lhs.true.115, %if.end.109
  %78 = load i32, i32* %k, align 4
  %sub123 = sub nsw i32 %78, 1
  %idxprom124 = sext i32 %sub123 to i64
  %arrayidx125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom124
  %79 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %79 to i32
  %cmp127 = icmp ne i32 %conv126, 3
  br i1 %cmp127, label %land.lhs.true.129, label %lor.lhs.false.136

land.lhs.true.129:                                ; preds = %lor.lhs.false.122
  %80 = load i32, i32* %k, align 4
  %sub130 = sub nsw i32 %80, 1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom131
  %81 = load i8, i8* %arrayidx132, align 1
  %conv133 = sext i8 %81 to i32
  %cmp134 = icmp eq i32 %conv133, 1
  br i1 %cmp134, label %if.then.164, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %land.lhs.true.129, %lor.lhs.false.122
  %82 = load i32, i32* %k, align 4
  %sub137 = sub nsw i32 %82, 20
  %idxprom138 = sext i32 %sub137 to i64
  %arrayidx139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom138
  %83 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %83 to i32
  %cmp141 = icmp ne i32 %conv140, 3
  br i1 %cmp141, label %land.lhs.true.143, label %lor.lhs.false.150

land.lhs.true.143:                                ; preds = %lor.lhs.false.136
  %84 = load i32, i32* %k, align 4
  %sub144 = sub nsw i32 %84, 20
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom145
  %85 = load i8, i8* %arrayidx146, align 1
  %conv147 = sext i8 %85 to i32
  %cmp148 = icmp eq i32 %conv147, 1
  br i1 %cmp148, label %if.then.164, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %land.lhs.true.143, %lor.lhs.false.136
  %86 = load i32, i32* %k, align 4
  %add151 = add nsw i32 %86, 1
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom152
  %87 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %87 to i32
  %cmp155 = icmp ne i32 %conv154, 3
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.182

land.lhs.true.157:                                ; preds = %lor.lhs.false.150
  %88 = load i32, i32* %k, align 4
  %add158 = add nsw i32 %88, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom159
  %89 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %89 to i32
  %cmp162 = icmp eq i32 %conv161, 1
  br i1 %cmp162, label %if.then.164, label %if.end.182

if.then.164:                                      ; preds = %land.lhs.true.157, %land.lhs.true.143, %land.lhs.true.129, %land.lhs.true.115
  %90 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %90 to i64
  %arrayidx166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom165
  %91 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %91 to i32
  %cmp168 = icmp eq i32 %conv167, 1
  br i1 %cmp168, label %if.then.176, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.then.164
  %92 = load i32, i32* %k, align 4
  %idxprom171 = sext i32 %92 to i64
  %arrayidx172 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom171
  %93 = load i8, i8* %arrayidx172, align 1
  %conv173 = zext i8 %93 to i32
  %cmp174 = icmp eq i32 %conv173, 2
  br i1 %cmp174, label %if.then.176, label %if.else.178

if.then.176:                                      ; preds = %lor.lhs.false.170, %if.then.164
  %94 = load i32, i32* %k, align 4
  %arraydecay177 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i32 0
  call void @mark_string(i32 %94, i8* %arraydecay177, i8 signext 2)
  br label %if.end.181

if.else.178:                                      ; preds = %lor.lhs.false.170
  %95 = load i32, i32* %k, align 4
  %idxprom179 = sext i32 %95 to i64
  %arrayidx180 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom179
  store i8 2, i8* %arrayidx180, align 1
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.then.176
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %land.lhs.true.157, %lor.lhs.false.150
  br label %for.inc.183

for.inc.183:                                      ; preds = %if.end.182, %if.then.108, %if.then.101
  %96 = load i32, i32* %k, align 4
  %inc184 = add nsw i32 %96, 1
  store i32 %inc184, i32* %k, align 4
  br label %for.cond.92

for.end.185:                                      ; preds = %for.cond.92
  store i32 21, i32* %k, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.215, %for.end.185
  %97 = load i32, i32* %k, align 4
  %cmp187 = icmp slt i32 %97, 400
  br i1 %cmp187, label %for.body.189, label %for.end.217

for.body.189:                                     ; preds = %for.cond.186
  %98 = load i32, i32* %k, align 4
  %idxprom190 = sext i32 %98 to i64
  %arrayidx191 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom190
  %99 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %99 to i32
  %cmp193 = icmp ne i32 %conv192, 3
  br i1 %cmp193, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %for.body.189
  br label %for.inc.215

if.end.196:                                       ; preds = %for.body.189
  %100 = load i32, i32* %k, align 4
  %idxprom197 = sext i32 %100 to i64
  %arrayidx198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom197
  %101 = load i8, i8* %arrayidx198, align 1
  %conv199 = zext i8 %101 to i32
  %cmp200 = icmp eq i32 %conv199, 1
  br i1 %cmp200, label %land.lhs.true.208, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %if.end.196
  %102 = load i32, i32* %k, align 4
  %idxprom203 = sext i32 %102 to i64
  %arrayidx204 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom203
  %103 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %103 to i32
  %cmp206 = icmp eq i32 %conv205, 2
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.214

land.lhs.true.208:                                ; preds = %lor.lhs.false.202, %if.end.196
  %104 = load i32, i32* %k, align 4
  %idxprom209 = sext i32 %104 to i64
  %arrayidx210 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i32 0, i64 %idxprom209
  %invincible = getelementptr inbounds %struct.worm_data, %struct.worm_data* %arrayidx210, i32 0, i32 13
  %105 = load i32, i32* %invincible, align 4
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %if.then.211, label %if.end.214

if.then.211:                                      ; preds = %land.lhs.true.208
  %106 = load i32, i32* %k, align 4
  %idxprom212 = sext i32 %106 to i64
  %arrayidx213 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom212
  store i8 0, i8* %arrayidx213, align 1
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.211, %land.lhs.true.208, %lor.lhs.false.202
  br label %for.inc.215

for.inc.215:                                      ; preds = %if.end.214, %if.then.195
  %107 = load i32, i32* %k, align 4
  %inc216 = add nsw i32 %107, 1
  store i32 %inc216, i32* %k, align 4
  br label %for.cond.186

for.end.217:                                      ; preds = %for.cond.186
  store i32 21, i32* %k, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.300, %for.end.217
  %108 = load i32, i32* %k, align 4
  %cmp219 = icmp slt i32 %108, 400
  br i1 %cmp219, label %for.body.221, label %for.end.302

for.body.221:                                     ; preds = %for.cond.218
  %109 = load i32, i32* %k, align 4
  %idxprom222 = sext i32 %109 to i64
  %arrayidx223 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom222
  %110 = load i8, i8* %arrayidx223, align 1
  %conv224 = zext i8 %110 to i32
  %cmp225 = icmp eq i32 %conv224, 1
  br i1 %cmp225, label %if.then.239, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %for.body.221
  %111 = load i32, i32* %k, align 4
  %idxprom228 = sext i32 %111 to i64
  %arrayidx229 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom228
  %112 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %112 to i32
  %cmp231 = icmp eq i32 %conv230, 2
  br i1 %cmp231, label %if.then.239, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %lor.lhs.false.227
  %113 = load i32, i32* %k, align 4
  %idxprom234 = sext i32 %113 to i64
  %arrayidx235 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom234
  %114 = load i8, i8* %arrayidx235, align 1
  %conv236 = sext i8 %114 to i32
  %cmp237 = icmp ne i32 %conv236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %lor.lhs.false.233, %lor.lhs.false.227, %for.body.221
  br label %for.inc.300

if.end.240:                                       ; preds = %lor.lhs.false.233
  %115 = load i32, i32* %k, align 4
  %add241 = add nsw i32 %115, 20
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom242
  %116 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %116 to i32
  %cmp245 = icmp eq i32 %conv244, 0
  br i1 %cmp245, label %land.lhs.true.247, label %lor.lhs.false.254

land.lhs.true.247:                                ; preds = %if.end.240
  %117 = load i32, i32* %k, align 4
  %add248 = add nsw i32 %117, 20
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom249
  %118 = load i8, i8* %arrayidx250, align 1
  %conv251 = sext i8 %118 to i32
  %cmp252 = icmp eq i32 %conv251, 2
  br i1 %cmp252, label %if.then.296, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %land.lhs.true.247, %if.end.240
  %119 = load i32, i32* %k, align 4
  %sub255 = sub nsw i32 %119, 1
  %idxprom256 = sext i32 %sub255 to i64
  %arrayidx257 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom256
  %120 = load i8, i8* %arrayidx257, align 1
  %conv258 = zext i8 %120 to i32
  %cmp259 = icmp eq i32 %conv258, 0
  br i1 %cmp259, label %land.lhs.true.261, label %lor.lhs.false.268

land.lhs.true.261:                                ; preds = %lor.lhs.false.254
  %121 = load i32, i32* %k, align 4
  %sub262 = sub nsw i32 %121, 1
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom263
  %122 = load i8, i8* %arrayidx264, align 1
  %conv265 = sext i8 %122 to i32
  %cmp266 = icmp eq i32 %conv265, 2
  br i1 %cmp266, label %if.then.296, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %land.lhs.true.261, %lor.lhs.false.254
  %123 = load i32, i32* %k, align 4
  %sub269 = sub nsw i32 %123, 20
  %idxprom270 = sext i32 %sub269 to i64
  %arrayidx271 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom270
  %124 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %124 to i32
  %cmp273 = icmp eq i32 %conv272, 0
  br i1 %cmp273, label %land.lhs.true.275, label %lor.lhs.false.282

land.lhs.true.275:                                ; preds = %lor.lhs.false.268
  %125 = load i32, i32* %k, align 4
  %sub276 = sub nsw i32 %125, 20
  %idxprom277 = sext i32 %sub276 to i64
  %arrayidx278 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom277
  %126 = load i8, i8* %arrayidx278, align 1
  %conv279 = sext i8 %126 to i32
  %cmp280 = icmp eq i32 %conv279, 2
  br i1 %cmp280, label %if.then.296, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %land.lhs.true.275, %lor.lhs.false.268
  %127 = load i32, i32* %k, align 4
  %add283 = add nsw i32 %127, 1
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom284
  %128 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %128 to i32
  %cmp287 = icmp eq i32 %conv286, 0
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.299

land.lhs.true.289:                                ; preds = %lor.lhs.false.282
  %129 = load i32, i32* %k, align 4
  %add290 = add nsw i32 %129, 1
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom291
  %130 = load i8, i8* %arrayidx292, align 1
  %conv293 = sext i8 %130 to i32
  %cmp294 = icmp eq i32 %conv293, 2
  br i1 %cmp294, label %if.then.296, label %if.end.299

if.then.296:                                      ; preds = %land.lhs.true.289, %land.lhs.true.275, %land.lhs.true.261, %land.lhs.true.247
  %131 = load i32, i32* %k, align 4
  %idxprom297 = sext i32 %131 to i64
  %arrayidx298 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom297
  store i8 3, i8* %arrayidx298, align 1
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.296, %land.lhs.true.289, %lor.lhs.false.282
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.299, %if.then.239
  %132 = load i32, i32* %k, align 4
  %inc301 = add nsw i32 %132, 1
  store i32 %inc301, i32* %k, align 4
  br label %for.cond.218

for.end.302:                                      ; preds = %for.cond.218
  store i32 21, i32* %k, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.408, %for.end.302
  %133 = load i32, i32* %k, align 4
  %cmp304 = icmp slt i32 %133, 400
  br i1 %cmp304, label %for.body.306, label %for.end.410

for.body.306:                                     ; preds = %for.cond.303
  %134 = load i32, i32* %k, align 4
  %idxprom307 = sext i32 %134 to i64
  %arrayidx308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom307
  %135 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %135 to i32
  %cmp310 = icmp ne i32 %conv309, 3
  br i1 %cmp310, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %for.body.306
  br label %for.inc.408

if.end.313:                                       ; preds = %for.body.306
  %136 = load i32, i32* %k, align 4
  %idxprom314 = sext i32 %136 to i64
  %arrayidx315 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom314
  %137 = load i8, i8* %arrayidx315, align 1
  %conv316 = sext i8 %137 to i32
  %cmp317 = icmp ne i32 %conv316, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.end.313
  br label %for.inc.408

if.end.320:                                       ; preds = %if.end.313
  %138 = load i32, i32* %k, align 4
  %add321 = add nsw i32 %138, 20
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom322
  %139 = load i8, i8* %arrayidx323, align 1
  %conv324 = zext i8 %139 to i32
  %cmp325 = icmp ne i32 %conv324, 3
  br i1 %cmp325, label %land.lhs.true.327, label %lor.lhs.false.341

land.lhs.true.327:                                ; preds = %if.end.320
  %140 = load i32, i32* %k, align 4
  %add328 = add nsw i32 %140, 20
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom329
  %141 = load i8, i8* %arrayidx330, align 1
  %conv331 = sext i8 %141 to i32
  %cmp332 = icmp sgt i32 %conv331, 0
  br i1 %cmp332, label %land.lhs.true.334, label %lor.lhs.false.341

land.lhs.true.334:                                ; preds = %land.lhs.true.327
  %142 = load i32, i32* %k, align 4
  %add335 = add nsw i32 %142, 20
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom336
  %143 = load i8, i8* %arrayidx337, align 1
  %conv338 = sext i8 %143 to i32
  %cmp339 = icmp slt i32 %conv338, 4
  br i1 %cmp339, label %if.then.404, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %land.lhs.true.334, %land.lhs.true.327, %if.end.320
  %144 = load i32, i32* %k, align 4
  %sub342 = sub nsw i32 %144, 1
  %idxprom343 = sext i32 %sub342 to i64
  %arrayidx344 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom343
  %145 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %145 to i32
  %cmp346 = icmp ne i32 %conv345, 3
  br i1 %cmp346, label %land.lhs.true.348, label %lor.lhs.false.362

land.lhs.true.348:                                ; preds = %lor.lhs.false.341
  %146 = load i32, i32* %k, align 4
  %sub349 = sub nsw i32 %146, 1
  %idxprom350 = sext i32 %sub349 to i64
  %arrayidx351 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom350
  %147 = load i8, i8* %arrayidx351, align 1
  %conv352 = sext i8 %147 to i32
  %cmp353 = icmp sgt i32 %conv352, 0
  br i1 %cmp353, label %land.lhs.true.355, label %lor.lhs.false.362

land.lhs.true.355:                                ; preds = %land.lhs.true.348
  %148 = load i32, i32* %k, align 4
  %sub356 = sub nsw i32 %148, 1
  %idxprom357 = sext i32 %sub356 to i64
  %arrayidx358 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom357
  %149 = load i8, i8* %arrayidx358, align 1
  %conv359 = sext i8 %149 to i32
  %cmp360 = icmp slt i32 %conv359, 4
  br i1 %cmp360, label %if.then.404, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %land.lhs.true.355, %land.lhs.true.348, %lor.lhs.false.341
  %150 = load i32, i32* %k, align 4
  %sub363 = sub nsw i32 %150, 20
  %idxprom364 = sext i32 %sub363 to i64
  %arrayidx365 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom364
  %151 = load i8, i8* %arrayidx365, align 1
  %conv366 = zext i8 %151 to i32
  %cmp367 = icmp ne i32 %conv366, 3
  br i1 %cmp367, label %land.lhs.true.369, label %lor.lhs.false.383

land.lhs.true.369:                                ; preds = %lor.lhs.false.362
  %152 = load i32, i32* %k, align 4
  %sub370 = sub nsw i32 %152, 20
  %idxprom371 = sext i32 %sub370 to i64
  %arrayidx372 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom371
  %153 = load i8, i8* %arrayidx372, align 1
  %conv373 = sext i8 %153 to i32
  %cmp374 = icmp sgt i32 %conv373, 0
  br i1 %cmp374, label %land.lhs.true.376, label %lor.lhs.false.383

land.lhs.true.376:                                ; preds = %land.lhs.true.369
  %154 = load i32, i32* %k, align 4
  %sub377 = sub nsw i32 %154, 20
  %idxprom378 = sext i32 %sub377 to i64
  %arrayidx379 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom378
  %155 = load i8, i8* %arrayidx379, align 1
  %conv380 = sext i8 %155 to i32
  %cmp381 = icmp slt i32 %conv380, 4
  br i1 %cmp381, label %if.then.404, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %land.lhs.true.376, %land.lhs.true.369, %lor.lhs.false.362
  %156 = load i32, i32* %k, align 4
  %add384 = add nsw i32 %156, 1
  %idxprom385 = sext i32 %add384 to i64
  %arrayidx386 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom385
  %157 = load i8, i8* %arrayidx386, align 1
  %conv387 = zext i8 %157 to i32
  %cmp388 = icmp ne i32 %conv387, 3
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.407

land.lhs.true.390:                                ; preds = %lor.lhs.false.383
  %158 = load i32, i32* %k, align 4
  %add391 = add nsw i32 %158, 1
  %idxprom392 = sext i32 %add391 to i64
  %arrayidx393 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom392
  %159 = load i8, i8* %arrayidx393, align 1
  %conv394 = sext i8 %159 to i32
  %cmp395 = icmp sgt i32 %conv394, 0
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.407

land.lhs.true.397:                                ; preds = %land.lhs.true.390
  %160 = load i32, i32* %k, align 4
  %add398 = add nsw i32 %160, 1
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom399
  %161 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %161 to i32
  %cmp402 = icmp slt i32 %conv401, 4
  br i1 %cmp402, label %if.then.404, label %if.end.407

if.then.404:                                      ; preds = %land.lhs.true.397, %land.lhs.true.376, %land.lhs.true.355, %land.lhs.true.334
  %162 = load i32, i32* %k, align 4
  %idxprom405 = sext i32 %162 to i64
  %arrayidx406 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom405
  store i8 4, i8* %arrayidx406, align 1
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.404, %land.lhs.true.397, %land.lhs.true.390, %lor.lhs.false.383
  br label %for.inc.408

for.inc.408:                                      ; preds = %if.end.407, %if.then.319, %if.then.312
  %163 = load i32, i32* %k, align 4
  %inc409 = add nsw i32 %163, 1
  store i32 %inc409, i32* %k, align 4
  br label %for.cond.303

for.end.410:                                      ; preds = %for.cond.303
  store i32 0, i32* %r, align 4
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.420, %for.end.410
  %164 = load i32, i32* %r, align 4
  %165 = load i32, i32* @stackp, align 4
  %cmp412 = icmp slt i32 %164, %165
  br i1 %cmp412, label %for.body.414, label %for.end.422

for.body.414:                                     ; preds = %for.cond.411
  %166 = load i32, i32* %r, align 4
  %idxprom415 = sext i32 %166 to i64
  %167 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %stack416 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %167, i32 0, i32 10
  %arrayidx417 = getelementptr inbounds [5 x i32], [5 x i32]* %stack416, i32 0, i64 %idxprom415
  %168 = load i32, i32* %arrayidx417, align 4
  %idxprom418 = sext i32 %168 to i64
  %arrayidx419 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom418
  store i8 5, i8* %arrayidx419, align 1
  br label %for.inc.420

for.inc.420:                                      ; preds = %for.body.414
  %169 = load i32, i32* %r, align 4
  %inc421 = add nsw i32 %169, 1
  store i32 %inc421, i32* %r, align 4
  br label %for.cond.411

for.end.422:                                      ; preds = %for.cond.411
  store i32 21, i32* %k, align 4
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.445, %for.end.422
  %170 = load i32, i32* %k, align 4
  %cmp424 = icmp slt i32 %170, 400
  br i1 %cmp424, label %for.body.426, label %for.end.447

for.body.426:                                     ; preds = %for.cond.423
  %171 = load i32, i32* %k, align 4
  %idxprom427 = sext i32 %171 to i64
  %arrayidx428 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom427
  %172 = load i8, i8* %arrayidx428, align 1
  %conv429 = zext i8 %172 to i32
  %cmp430 = icmp ne i32 %conv429, 3
  br i1 %cmp430, label %if.end.433, label %if.then.432

if.then.432:                                      ; preds = %for.body.426
  br label %for.inc.445

if.end.433:                                       ; preds = %for.body.426
  %173 = load i32, i32* %k, align 4
  %idxprom434 = sext i32 %173 to i64
  %arrayidx435 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom434
  %174 = load i8, i8* %arrayidx435, align 1
  %conv436 = sext i8 %174 to i32
  %cmp437 = icmp ne i32 %conv436, 0
  br i1 %cmp437, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.433
  %175 = load i32, i32* %k, align 4
  %idxprom439 = sext i32 %175 to i64
  %arrayidx440 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom439
  %176 = load i8, i8* %arrayidx440, align 1
  %conv441 = zext i8 %176 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end.433
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv441, %cond.true ], [ 3, %cond.false ]
  %conv442 = trunc i32 %cond to i8
  %177 = load i32, i32* %k, align 4
  %idxprom443 = sext i32 %177 to i64
  %178 = load %struct.reading_cache*, %struct.reading_cache** %entry1, align 8
  %board = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %178, i32 0, i32 1
  %arrayidx444 = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i64 %idxprom443
  store i8 %conv442, i8* %arrayidx444, align 1
  br label %for.inc.445

for.inc.445:                                      ; preds = %cond.end, %if.then.432
  %179 = load i32, i32* %k, align 4
  %inc446 = add nsw i32 %179, 1
  store i32 %inc446, i32* %k, align 4
  br label %for.cond.423

for.end.447:                                      ; preds = %for.cond.423
  %180 = load i32, i32* @persistent_reading_cache_size, align 4
  %inc448 = add nsw i32 %180, 1
  store i32 %inc448, i32* @persistent_reading_cache_size, align 4
  br label %return

return:                                           ; preds = %for.end.447, %if.else.39, %if.then.9
  ret void
}

declare void @get_move_from_stack(i32, i32*, i32*) #1

declare void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @delete_persistent_reading_cache_entry(i32 %routine, i32 %str) #0 {
entry:
  %routine.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %str, i32* %str.addr, align 4
  %0 = load i32, i32* %routine.addr, align 4
  %1 = load i32, i32* %str.addr, align 4
  %call = call i32 @find_origin(i32 %1)
  %call1 = call i32 @find_persistent_reading_cache_entry(i32 %0, i32 %call)
  store i32 %call1, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %k, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom
  %4 = load i32, i32* @persistent_reading_cache_size, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @persistent_reading_cache_size, align 4
  %idxprom2 = sext i32 %dec to i64
  %arrayidx3 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom2
  %5 = bitcast %struct.reading_cache* %arrayidx to i8*
  %6 = bitcast %struct.reading_cache* %arrayidx3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 476, i32 4, i1 false)
  %7 = load i32, i32* %routine.addr, align 4
  %8 = load i32, i32* %str.addr, align 4
  %call4 = call i32 @find_origin(i32 %8)
  %call5 = call i32 @find_persistent_reading_cache_entry(i32 %7, i32 %call4)
  store i32 %call5, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @find_origin(i32) #1

; Function Attrs: nounwind uwtable
define void @reading_hotspots(float* %values) #0 {
entry:
  %values.addr = alloca float*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %sum_nodes = alloca i32, align 4
  %entry21 = alloca %struct.reading_cache*, align 8
  %contribution = alloca float, align 4
  store float* %values, float** %values.addr, align 8
  store i32 0, i32* %sum_nodes, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %4, 20
  %add = add nsw i32 21, %mul
  %5 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %5
  %idxprom = sext i32 %add4 to i64
  %6 = load float*, float** %values.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %8 = load i32, i32* %m, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* %m, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %for.end.7
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp9 = icmp slt i32 %9, %10
  br i1 %cmp9, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom11
  %nodes = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %arrayidx12, i32 0, i32 3
  %12 = load i32, i32* %nodes, align 4
  %13 = load i32, i32* %sum_nodes, align 4
  %add13 = add nsw i32 %13, %12
  store i32 %add13, i32* %sum_nodes, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.10
  %14 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  %15 = load i32, i32* %sum_nodes, align 4
  %cmp17 = icmp sle i32 %15, 100
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.16
  br label %for.end.31

if.end:                                           ; preds = %for.end.16
  store i32 0, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %if.end
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* @persistent_reading_cache_size, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %18 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i32 0, i64 %idxprom22
  store %struct.reading_cache* %arrayidx23, %struct.reading_cache** %entry21, align 8
  %19 = load %struct.reading_cache*, %struct.reading_cache** %entry21, align 8
  %nodes24 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %19, i32 0, i32 3
  %20 = load i32, i32* %nodes24, align 4
  %conv = sitofp i32 %20 to float
  %21 = load i32, i32* %sum_nodes, align 4
  %conv25 = sitofp i32 %21 to float
  %div = fdiv float %conv, %conv25
  store float %div, float* %contribution, align 4
  %22 = load %struct.reading_cache*, %struct.reading_cache** %entry21, align 8
  %routine = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %22, i32 0, i32 6
  %23 = load i32, i32* %routine, align 4
  switch i32 %23, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body.20, %for.body.20
  %24 = load float*, float** %values.addr, align 8
  %25 = load %struct.reading_cache*, %struct.reading_cache** %entry21, align 8
  %str = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %25, i32 0, i32 7
  %26 = load i32, i32* %str, align 4
  %div26 = sdiv i32 %26, 20
  %sub = sub nsw i32 %div26, 1
  %27 = load %struct.reading_cache*, %struct.reading_cache** %entry21, align 8
  %str27 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %27, i32 0, i32 7
  %28 = load i32, i32* %str27, align 4
  %rem = srem i32 %28, 20
  %sub28 = sub nsw i32 %rem, 1
  %29 = load float, float* %contribution, align 4
  call void @mark_string_hotspot_values(float* %24, i32 %sub, i32 %sub28, float %29)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.20
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 630, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc.29

for.inc.29:                                       ; preds = %sw.epilog
  %30 = load i32, i32* %k, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %k, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %if.then, %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_string_hotspot_values(float* %values, i32 %m, i32 %n, float %contribution) #0 {
entry:
  %values.addr = alloca float*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %contribution.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %di = alloca i32, align 4
  %dj = alloca i32, align 4
  store float* %values, float** %values.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %contribution, float* %contribution.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %0, 20
  %add = add nsw i32 21, %mul
  %1 = load i32, i32* %n.addr, align 4
  %add1 = add nsw i32 %add, %1
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp sle i32 %3, 1
  br i1 %cmp3, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp6 = icmp sle i32 %4, 1
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %5 = load i32, i32* %m.addr, align 4
  %6 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %5, %6
  %mul10 = mul nsw i32 %add9, 20
  %add11 = add nsw i32 21, %mul10
  %7 = load i32, i32* %n.addr, align 4
  %8 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %7, %8
  %add13 = add nsw i32 %add11, %add12
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom14
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.body.8
  %10 = load float, float* %contribution.addr, align 4
  %11 = load i32, i32* %m.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %11, %12
  %mul21 = mul nsw i32 %add20, 20
  %add22 = add nsw i32 21, %mul21
  %13 = load i32, i32* %n.addr, align 4
  %14 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %13, %14
  %add24 = add nsw i32 %add22, %add23
  %idxprom25 = sext i32 %add24 to i64
  %15 = load float*, float** %values.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %15, i64 %idxprom25
  %16 = load float, float* %arrayidx26, align 4
  %add27 = fadd float %16, %10
  store float %add27, float* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %18, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  br label %for.end.148

if.end.31:                                        ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.146, %if.end.31
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @board_size, align 4
  %cmp33 = icmp slt i32 %19, %20
  br i1 %cmp33, label %for.body.35, label %for.end.148

for.body.35:                                      ; preds = %for.cond.32
  store i32 0, i32* %j, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.143, %for.body.35
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* @board_size, align 4
  %cmp37 = icmp slt i32 %21, %22
  br i1 %cmp37, label %for.body.39, label %for.end.145

for.body.39:                                      ; preds = %for.cond.36
  %23 = load i32, i32* %i, align 4
  %mul40 = mul nsw i32 %23, 20
  %add41 = add nsw i32 21, %mul40
  %24 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %add41, %24
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom43
  %25 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %25 to i32
  %cmp46 = icmp ne i32 %conv45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.39
  br label %for.inc.143

if.end.49:                                        ; preds = %for.body.39
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.140, %if.end.49
  %26 = load i32, i32* %k, align 4
  %cmp51 = icmp slt i32 %26, 8
  br i1 %cmp51, label %for.body.53, label %for.end.142

for.body.53:                                      ; preds = %for.cond.50
  %27 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %27 to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i32 0, i64 %idxprom54
  %28 = load i32, i32* %arrayidx55, align 4
  store i32 %28, i32* %di, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom56 = sext i32 %29 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i32 0, i64 %idxprom56
  %30 = load i32, i32* %arrayidx57, align 4
  store i32 %30, i32* %dj, align 4
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %di, align 4
  %add58 = add nsw i32 %31, %32
  %mul59 = mul nsw i32 %add58, 20
  %add60 = add nsw i32 21, %mul59
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %dj, align 4
  %add61 = add nsw i32 %33, %34
  %add62 = add nsw i32 %add60, %add61
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom63
  %35 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %35 to i32
  %cmp66 = icmp eq i32 %conv65, 1
  br i1 %cmp66, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.53
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %di, align 4
  %add68 = add nsw i32 %36, %37
  %mul69 = mul nsw i32 %add68, 20
  %add70 = add nsw i32 21, %mul69
  %38 = load i32, i32* %j, align 4
  %39 = load i32, i32* %dj, align 4
  %add71 = add nsw i32 %38, %39
  %add72 = add nsw i32 %add70, %add71
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom73
  %40 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %40 to i32
  %cmp76 = icmp eq i32 %conv75, 2
  br i1 %cmp76, label %land.lhs.true, label %if.end.139

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body.53
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %di, align 4
  %add78 = add nsw i32 %41, %42
  %mul79 = mul nsw i32 %add78, 20
  %add80 = add nsw i32 21, %mul79
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %dj, align 4
  %add81 = add nsw i32 %43, %44
  %add82 = add nsw i32 %add80, %add81
  %45 = load i32, i32* %m.addr, align 4
  %mul83 = mul nsw i32 %45, 20
  %add84 = add nsw i32 21, %mul83
  %46 = load i32, i32* %n.addr, align 4
  %add85 = add nsw i32 %add84, %46
  %call = call i32 @same_string(i32 %add82, i32 %add85)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.86, label %if.end.139

if.then.86:                                       ; preds = %land.lhs.true
  %47 = load i32, i32* %k, align 4
  %cmp87 = icmp slt i32 %47, 4
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %if.then.86
  %48 = load float, float* %contribution.addr, align 4
  %49 = load i32, i32* %i, align 4
  %mul90 = mul nsw i32 %49, 20
  %add91 = add nsw i32 21, %mul90
  %50 = load i32, i32* %j, align 4
  %add92 = add nsw i32 %add91, %50
  %idxprom93 = sext i32 %add92 to i64
  %51 = load float*, float** %values.addr, align 8
  %arrayidx94 = getelementptr inbounds float, float* %51, i64 %idxprom93
  %52 = load float, float* %arrayidx94, align 4
  %add95 = fadd float %52, %48
  store float %add95, float* %arrayidx94, align 4
  br label %for.end.142

if.else:                                          ; preds = %if.then.86
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %di, align 4
  %add96 = add nsw i32 %53, %54
  %mul97 = mul nsw i32 %add96, 20
  %add98 = add nsw i32 21, %mul97
  %55 = load i32, i32* %j, align 4
  %add99 = add nsw i32 %add98, %55
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom100
  %56 = load i8, i8* %arrayidx101, align 1
  %conv102 = zext i8 %56 to i32
  %cmp103 = icmp eq i32 %conv102, 0
  br i1 %cmp103, label %if.then.131, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.else
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %di, align 4
  %add106 = add nsw i32 %57, %58
  %mul107 = mul nsw i32 %add106, 20
  %add108 = add nsw i32 21, %mul107
  %59 = load i32, i32* %j, align 4
  %add109 = add nsw i32 %add108, %59
  %call110 = call i32 @countlib(i32 %add109)
  %cmp111 = icmp sle i32 %call110, 2
  br i1 %cmp111, label %if.then.131, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.105
  %60 = load i32, i32* %i, align 4
  %mul114 = mul nsw i32 %60, 20
  %add115 = add nsw i32 21, %mul114
  %61 = load i32, i32* %j, align 4
  %62 = load i32, i32* %dj, align 4
  %add116 = add nsw i32 %61, %62
  %add117 = add nsw i32 %add115, %add116
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom118
  %63 = load i8, i8* %arrayidx119, align 1
  %conv120 = zext i8 %63 to i32
  %cmp121 = icmp eq i32 %conv120, 0
  br i1 %cmp121, label %if.then.131, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.113
  %64 = load i32, i32* %i, align 4
  %mul124 = mul nsw i32 %64, 20
  %add125 = add nsw i32 21, %mul124
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %dj, align 4
  %add126 = add nsw i32 %65, %66
  %add127 = add nsw i32 %add125, %add126
  %call128 = call i32 @countlib(i32 %add127)
  %cmp129 = icmp sle i32 %call128, 2
  br i1 %cmp129, label %if.then.131, label %if.end.138

if.then.131:                                      ; preds = %lor.lhs.false.123, %lor.lhs.false.113, %lor.lhs.false.105, %if.else
  %67 = load float, float* %contribution.addr, align 4
  %68 = load i32, i32* %i, align 4
  %mul132 = mul nsw i32 %68, 20
  %add133 = add nsw i32 21, %mul132
  %69 = load i32, i32* %j, align 4
  %add134 = add nsw i32 %add133, %69
  %idxprom135 = sext i32 %add134 to i64
  %70 = load float*, float** %values.addr, align 8
  %arrayidx136 = getelementptr inbounds float, float* %70, i64 %idxprom135
  %71 = load float, float* %arrayidx136, align 4
  %add137 = fadd float %71, %67
  store float %add137, float* %arrayidx136, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.131, %lor.lhs.false.123
  br label %for.end.142

if.end.139:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc.140

for.inc.140:                                      ; preds = %if.end.139
  %72 = load i32, i32* %k, align 4
  %inc141 = add nsw i32 %72, 1
  store i32 %inc141, i32* %k, align 4
  br label %for.cond.50

for.end.142:                                      ; preds = %if.end.138, %if.then.89, %for.cond.50
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.142, %if.then.48
  %73 = load i32, i32* %j, align 4
  %inc144 = add nsw i32 %73, 1
  store i32 %inc144, i32* %j, align 4
  br label %for.cond.36

for.end.145:                                      ; preds = %for.cond.36
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %74 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %74, 1
  store i32 %inc147, i32* %i, align 4
  br label %for.cond.32

for.end.148:                                      ; preds = %for.end.30, %for.cond.32
  ret void
}

; Function Attrs: nounwind uwtable
define void @purge_persistent_owl_cache() #0 {
entry:
  %k = alloca i32, align 4
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 651, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @purge_persistent_owl_cache.last_purge_position_number, align 4
  %2 = load i32, i32* @position_number, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.else.3:                                        ; preds = %if.end
  %3 = load i32, i32* @position_number, align 4
  store i32 %3, i32* @purge_persistent_owl_cache.last_purge_position_number, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom
  %boardsize = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %boardsize, align 4
  %8 = load i32, i32* @board_size, align 4
  %cmp6 = icmp ne i32 %7, %8
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom7
  %board = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i32 0
  %call = call i32 @verify_stored_board(i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %for.body
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* @persistent_owl_cache_size, align 4
  %sub = sub nsw i32 %11, 1
  %cmp10 = icmp slt i32 %10, %sub
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.then.9
  %12 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom12
  %13 = load i32, i32* @persistent_owl_cache_size, align 4
  %sub14 = sub nsw i32 %13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom15
  %14 = bitcast %struct.owl_cache* %arrayidx13 to i8*
  %15 = bitcast %struct.owl_cache* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 444, i32 4, i1 false)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %if.then.9
  %16 = load i32, i32* %k, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %k, align 4
  %17 = load i32, i32* @persistent_owl_cache_size, align 4
  %dec18 = add nsw i32 %17, -1
  store i32 %dec18, i32* @persistent_owl_cache_size, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.17, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_persistent_owl_cache() #0 {
entry:
  store i32 0, i32* @persistent_owl_cache_size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @search_persistent_owl_cache(i32 %routine, i32 %apos, i32 %bpos, i32 %cpos, i32* %result, i32* %move, i32* %move2, i32* %certain) #0 {
entry:
  %retval = alloca i32, align 4
  %routine.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %result.addr = alloca i32*, align 8
  %move.addr = alloca i32*, align 8
  %move2.addr = alloca i32*, align 8
  %certain.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  store i32* %result, i32** %result.addr, align 8
  store i32* %move, i32** %move.addr, align 8
  store i32* %move2, i32** %move2.addr, align 8
  store i32* %certain, i32** %certain.addr, align 8
  %0 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @stackp, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 685, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom
  %routine3 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx, i32 0, i32 4
  %5 = load i32, i32* %routine3, align 4
  %6 = load i32, i32* %routine.addr, align 4
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom5
  %apos7 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx6, i32 0, i32 5
  %8 = load i32, i32* %apos7, align 4
  %9 = load i32, i32* %apos.addr, align 4
  %cmp8 = icmp eq i32 %8, %9
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.50

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom10
  %bpos12 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx11, i32 0, i32 6
  %11 = load i32, i32* %bpos12, align 4
  %12 = load i32, i32* %bpos.addr, align 4
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.50

land.lhs.true.14:                                 ; preds = %land.lhs.true.9
  %13 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom15
  %cpos17 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx16, i32 0, i32 7
  %14 = load i32, i32* %cpos17, align 4
  %15 = load i32, i32* %cpos.addr, align 4
  %cmp18 = icmp eq i32 %14, %15
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.50

land.lhs.true.19:                                 ; preds = %land.lhs.true.14
  %16 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom20
  %board = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx21, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i32 0
  %call = call i32 @verify_stored_board(i8* %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.22, label %if.end.50

if.then.22:                                       ; preds = %land.lhs.true.19
  %17 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom23
  %result25 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx24, i32 0, i32 8
  %18 = load i32, i32* %result25, align 4
  %19 = load i32*, i32** %result.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %move.addr, align 8
  %tobool26 = icmp ne i32* %20, null
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.then.22
  %21 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom28
  %move30 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx29, i32 0, i32 10
  %22 = load i32, i32* %move30, align 4
  %23 = load i32*, i32** %move.addr, align 8
  store i32 %22, i32* %23, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.then.22
  %24 = load i32*, i32** %move2.addr, align 8
  %tobool32 = icmp ne i32* %24, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.31
  %25 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom34
  %move236 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx35, i32 0, i32 11
  %26 = load i32, i32* %move236, align 4
  %27 = load i32*, i32** %move2.addr, align 8
  store i32 %26, i32* %27, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.31
  %28 = load i32*, i32** %certain.addr, align 8
  %tobool38 = icmp ne i32* %28, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.end.37
  %29 = load i32, i32* %k, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom40
  %result_certain = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx41, i32 0, i32 9
  %30 = load i32, i32* %result_certain, align 4
  %31 = load i32*, i32** %certain.addr, align 8
  store i32 %30, i32* %31, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.37
  %32 = load i32, i32* @debug, align 4
  %and = and i32 %32, 2097152
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end.42
  br label %cond.end

cond.false:                                       ; preds = %if.end.42
  %33 = load i32, i32* %routine.addr, align 4
  %call44 = call i8* @routine_to_string(i32 %33)
  %34 = load i32, i32* %apos.addr, align 4
  %35 = load i32, i32* %bpos.addr, align 4
  %36 = load i32, i32* %cpos.addr, align 4
  %37 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom45
  %result47 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx46, i32 0, i32 8
  %38 = load i32, i32* %result47, align 4
  %call48 = call i8* @result_to_string(i32 %38)
  %call49 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), i8* %call44, i32 %34, i32 %35, i32 %36, i8* %call48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.19, %land.lhs.true.14, %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %39 = load i32, i32* %k, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %cond.end
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i8* @routine_to_string(i32) #1

declare i8* @result_to_string(i32) #1

; Function Attrs: nounwind uwtable
define void @store_persistent_owl_cache(i32 %routine, i32 %apos, i32 %bpos, i32 %cpos, i32 %result, i32 %move, i32 %move2, i32 %certain, i32 %tactical_nodes, i8* %goal, i32 %goal_color) #0 {
entry:
  %routine.addr = alloca i32, align 4
  %apos.addr = alloca i32, align 4
  %bpos.addr = alloca i32, align 4
  %cpos.addr = alloca i32, align 4
  %result.addr = alloca i32, align 4
  %move.addr = alloca i32, align 4
  %move2.addr = alloca i32, align 4
  %certain.addr = alloca i32, align 4
  %tactical_nodes.addr = alloca i32, align 4
  %goal.addr = alloca i8*, align 8
  %goal_color.addr = alloca i32, align 4
  %active = alloca [400 x i8], align 16
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %other = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %libs = alloca [4 x i32], align 16
  %liberties = alloca i32, align 4
  %adjs = alloca [160 x i32], align 16
  %adj = alloca i32, align 4
  %s = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %routine, i32* %routine.addr, align 4
  store i32 %apos, i32* %apos.addr, align 4
  store i32 %bpos, i32* %bpos.addr, align 4
  store i32 %cpos, i32* %cpos.addr, align 4
  store i32 %result, i32* %result.addr, align 4
  store i32 %move, i32* %move.addr, align 4
  store i32 %move2, i32* %move2.addr, align 4
  store i32 %certain, i32* %certain.addr, align 4
  store i32 %tactical_nodes, i32* %tactical_nodes.addr, align 4
  store i8* %goal, i8** %goal.addr, align 8
  store i32 %goal_color, i32* %goal_color.addr, align 4
  %0 = load i32, i32* %goal_color.addr, align 4
  %sub = sub nsw i32 3, %0
  store i32 %sub, i32* %other, align 4
  %1 = load i32, i32* @stackp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 722, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp1 = icmp eq i32 %2, 150
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @purge_persistent_owl_cache()
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp4 = icmp eq i32 %3, 150
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %4 = load i32, i32* @debug, align 4
  %and = and i32 %4, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load i32, i32* @board_size, align 4
  %6 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom
  %boardsize = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx, i32 0, i32 0
  store i32 %5, i32* %boardsize, align 4
  %7 = load i32, i32* %routine.addr, align 4
  %8 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom7
  %routine9 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx8, i32 0, i32 4
  store i32 %7, i32* %routine9, align 4
  %9 = load i32, i32* %apos.addr, align 4
  %10 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom10
  %apos12 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx11, i32 0, i32 5
  store i32 %9, i32* %apos12, align 4
  %11 = load i32, i32* %bpos.addr, align 4
  %12 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom13
  %bpos15 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx14, i32 0, i32 6
  store i32 %11, i32* %bpos15, align 4
  %13 = load i32, i32* %cpos.addr, align 4
  %14 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom16
  %cpos18 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx17, i32 0, i32 7
  store i32 %13, i32* %cpos18, align 4
  %15 = load i32, i32* %result.addr, align 4
  %16 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom19
  %result21 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx20, i32 0, i32 8
  store i32 %15, i32* %result21, align 4
  %17 = load i32, i32* %certain.addr, align 4
  %18 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom22
  %result_certain = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx23, i32 0, i32 9
  store i32 %17, i32* %result_certain, align 4
  %19 = load i32, i32* %move.addr, align 4
  %20 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom24
  %move26 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx25, i32 0, i32 10
  store i32 %19, i32* %move26, align 4
  %21 = load i32, i32* %move2.addr, align 4
  %22 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom27
  %move229 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx28, i32 0, i32 11
  store i32 %21, i32* %move229, align 4
  %23 = load i32, i32* %tactical_nodes.addr, align 4
  %24 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom30
  %tactical_nodes32 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx31, i32 0, i32 3
  store i32 %23, i32* %tactical_nodes32, align 4
  %25 = load i32, i32* @movenum, align 4
  %26 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom33
  %movenum = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx34, i32 0, i32 2
  store i32 %25, i32* %movenum, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %27 = load i32, i32* %pos, align 4
  %cmp35 = icmp slt i32 %27, 400
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %pos, align 4
  %idxprom36 = sext i32 %28 to i64
  %arrayidx37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom36
  %29 = load i8, i8* %arrayidx37, align 1
  %conv = zext i8 %29 to i32
  %cmp38 = icmp ne i32 %conv, 3
  br i1 %cmp38, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %for.body
  %30 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %30 to i64
  %31 = load i8*, i8** %goal.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %31, i64 %idxprom41
  %32 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp ne i32 %conv43, 0
  %conv45 = zext i1 %cmp44 to i32
  %conv46 = trunc i32 %conv45 to i8
  %33 = load i32, i32* %pos, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom47
  store i8 %conv46, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.40, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %34 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %move.addr, align 4
  %cmp50 = icmp ult i32 %35, 421
  br i1 %cmp50, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %for.end
  %36 = load i32, i32* %move.addr, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom52
  %37 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %37 to i32
  %cmp55 = icmp ne i32 %conv54, 3
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %land.lhs.true
  %38 = load i32, i32* %move.addr, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom58
  store i8 1, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %land.lhs.true, %for.end
  %39 = load i32, i32* %move2.addr, align 4
  %cmp61 = icmp ult i32 %39, 421
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.72

land.lhs.true.63:                                 ; preds = %if.end.60
  %40 = load i32, i32* %move2.addr, align 4
  %idxprom64 = sext i32 %40 to i64
  %arrayidx65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom64
  %41 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %41 to i32
  %cmp67 = icmp ne i32 %conv66, 3
  br i1 %cmp67, label %if.then.69, label %if.end.72

if.then.69:                                       ; preds = %land.lhs.true.63
  %42 = load i32, i32* %move2.addr, align 4
  %idxprom70 = sext i32 %42 to i64
  %arrayidx71 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom70
  store i8 1, i8* %arrayidx71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.69, %land.lhs.true.63, %if.end.60
  store i32 1, i32* %k, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.172, %if.end.72
  %43 = load i32, i32* %k, align 4
  %cmp74 = icmp slt i32 %43, 5
  br i1 %cmp74, label %for.body.76, label %for.end.174

for.body.76:                                      ; preds = %for.cond.73
  store i32 21, i32* %pos, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.169, %for.body.76
  %44 = load i32, i32* %pos, align 4
  %cmp78 = icmp slt i32 %44, 400
  br i1 %cmp78, label %for.body.80, label %for.end.171

for.body.80:                                      ; preds = %for.cond.77
  %45 = load i32, i32* %pos, align 4
  %idxprom81 = sext i32 %45 to i64
  %arrayidx82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom81
  %46 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %46 to i32
  %cmp84 = icmp ne i32 %conv83, 3
  br i1 %cmp84, label %lor.lhs.false, label %if.then.97

lor.lhs.false:                                    ; preds = %for.body.80
  %47 = load i32, i32* %pos, align 4
  %idxprom86 = sext i32 %47 to i64
  %arrayidx87 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom86
  %48 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %48 to i32
  %49 = load i32, i32* %other, align 4
  %cmp89 = icmp eq i32 %conv88, %49
  br i1 %cmp89, label %if.then.97, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false
  %50 = load i32, i32* %pos, align 4
  %idxprom92 = sext i32 %50 to i64
  %arrayidx93 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom92
  %51 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %51 to i32
  %cmp95 = icmp ne i32 %conv94, 0
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %lor.lhs.false.91, %lor.lhs.false, %for.body.80
  br label %for.inc.169

if.end.98:                                        ; preds = %lor.lhs.false.91
  %52 = load i32, i32* %pos, align 4
  %add = add nsw i32 %52, 20
  %idxprom99 = sext i32 %add to i64
  %arrayidx100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom99
  %53 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %53 to i32
  %cmp102 = icmp ne i32 %conv101, 3
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.111

land.lhs.true.104:                                ; preds = %if.end.98
  %54 = load i32, i32* %pos, align 4
  %add105 = add nsw i32 %54, 20
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom106
  %55 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %55 to i32
  %56 = load i32, i32* %k, align 4
  %cmp109 = icmp eq i32 %conv108, %56
  br i1 %cmp109, label %if.then.153, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.104, %if.end.98
  %57 = load i32, i32* %pos, align 4
  %sub112 = sub nsw i32 %57, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom113
  %58 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %58 to i32
  %cmp116 = icmp ne i32 %conv115, 3
  br i1 %cmp116, label %land.lhs.true.118, label %lor.lhs.false.125

land.lhs.true.118:                                ; preds = %lor.lhs.false.111
  %59 = load i32, i32* %pos, align 4
  %sub119 = sub nsw i32 %59, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom120
  %60 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %60 to i32
  %61 = load i32, i32* %k, align 4
  %cmp123 = icmp eq i32 %conv122, %61
  br i1 %cmp123, label %if.then.153, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %land.lhs.true.118, %lor.lhs.false.111
  %62 = load i32, i32* %pos, align 4
  %sub126 = sub nsw i32 %62, 20
  %idxprom127 = sext i32 %sub126 to i64
  %arrayidx128 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom127
  %63 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %63 to i32
  %cmp130 = icmp ne i32 %conv129, 3
  br i1 %cmp130, label %land.lhs.true.132, label %lor.lhs.false.139

land.lhs.true.132:                                ; preds = %lor.lhs.false.125
  %64 = load i32, i32* %pos, align 4
  %sub133 = sub nsw i32 %64, 20
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom134
  %65 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %65 to i32
  %66 = load i32, i32* %k, align 4
  %cmp137 = icmp eq i32 %conv136, %66
  br i1 %cmp137, label %if.then.153, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %land.lhs.true.132, %lor.lhs.false.125
  %67 = load i32, i32* %pos, align 4
  %add140 = add nsw i32 %67, 1
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom141
  %68 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %68 to i32
  %cmp144 = icmp ne i32 %conv143, 3
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.168

land.lhs.true.146:                                ; preds = %lor.lhs.false.139
  %69 = load i32, i32* %pos, align 4
  %add147 = add nsw i32 %69, 1
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom148
  %70 = load i8, i8* %arrayidx149, align 1
  %conv150 = sext i8 %70 to i32
  %71 = load i32, i32* %k, align 4
  %cmp151 = icmp eq i32 %conv150, %71
  br i1 %cmp151, label %if.then.153, label %if.end.168

if.then.153:                                      ; preds = %land.lhs.true.146, %land.lhs.true.132, %land.lhs.true.118, %land.lhs.true.104
  %72 = load i32, i32* %pos, align 4
  %idxprom154 = sext i32 %72 to i64
  %arrayidx155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom154
  %73 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %73 to i32
  %cmp157 = icmp eq i32 %conv156, 0
  br i1 %cmp157, label %if.then.159, label %if.else.164

if.then.159:                                      ; preds = %if.then.153
  %74 = load i32, i32* %k, align 4
  %add160 = add nsw i32 %74, 1
  %conv161 = trunc i32 %add160 to i8
  %75 = load i32, i32* %pos, align 4
  %idxprom162 = sext i32 %75 to i64
  %arrayidx163 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom162
  store i8 %conv161, i8* %arrayidx163, align 1
  br label %if.end.167

if.else.164:                                      ; preds = %if.then.153
  %76 = load i32, i32* %pos, align 4
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i32 0
  %77 = load i32, i32* %k, align 4
  %add165 = add nsw i32 %77, 1
  %conv166 = trunc i32 %add165 to i8
  call void @mark_string(i32 %76, i8* %arraydecay, i8 signext %conv166)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.159
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.146, %lor.lhs.false.139
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168, %if.then.97
  %78 = load i32, i32* %pos, align 4
  %inc170 = add nsw i32 %78, 1
  store i32 %inc170, i32* %pos, align 4
  br label %for.cond.77

for.end.171:                                      ; preds = %for.cond.77
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %79 = load i32, i32* %k, align 4
  %inc173 = add nsw i32 %79, 1
  store i32 %inc173, i32* %k, align 4
  br label %for.cond.73

for.end.174:                                      ; preds = %for.cond.73
  store i32 21, i32* %pos, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.222, %for.end.174
  %80 = load i32, i32* %pos, align 4
  %cmp176 = icmp slt i32 %80, 400
  br i1 %cmp176, label %for.body.178, label %for.end.224

for.body.178:                                     ; preds = %for.cond.175
  %81 = load i32, i32* %pos, align 4
  %idxprom179 = sext i32 %81 to i64
  %arrayidx180 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom179
  %82 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %82 to i32
  %83 = load i32, i32* %other, align 4
  %cmp182 = icmp ne i32 %conv181, %83
  br i1 %cmp182, label %if.then.190, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %for.body.178
  %84 = load i32, i32* %pos, align 4
  %idxprom185 = sext i32 %84 to i64
  %arrayidx186 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom185
  %85 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %85 to i32
  %cmp188 = icmp ne i32 %conv187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %lor.lhs.false.184, %for.body.178
  br label %for.inc.222

if.end.191:                                       ; preds = %lor.lhs.false.184
  store i32 0, i32* %r, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.219, %if.end.191
  %86 = load i32, i32* %r, align 4
  %cmp193 = icmp slt i32 %86, 4
  br i1 %cmp193, label %for.body.195, label %for.end.221

for.body.195:                                     ; preds = %for.cond.192
  %87 = load i32, i32* %pos, align 4
  %88 = load i32, i32* %r, align 4
  %idxprom196 = sext i32 %88 to i64
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom196
  %89 = load i32, i32* %arrayidx197, align 4
  %add198 = add nsw i32 %87, %89
  store i32 %add198, i32* %pos2, align 4
  %90 = load i32, i32* %pos2, align 4
  %idxprom199 = sext i32 %90 to i64
  %arrayidx200 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom199
  %91 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %91 to i32
  %cmp202 = icmp ne i32 %conv201, 3
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.218

land.lhs.true.204:                                ; preds = %for.body.195
  %92 = load i32, i32* %pos2, align 4
  %idxprom205 = sext i32 %92 to i64
  %arrayidx206 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom205
  %93 = load i8, i8* %arrayidx206, align 1
  %conv207 = zext i8 %93 to i32
  %94 = load i32, i32* %other, align 4
  %cmp208 = icmp ne i32 %conv207, %94
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.218

land.lhs.true.210:                                ; preds = %land.lhs.true.204
  %95 = load i32, i32* %pos2, align 4
  %idxprom211 = sext i32 %95 to i64
  %arrayidx212 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom211
  %96 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %96 to i32
  %cmp214 = icmp ne i32 %conv213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %land.lhs.true.210
  %97 = load i32, i32* %pos, align 4
  %arraydecay217 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i32 0
  call void @mark_string(i32 %97, i8* %arraydecay217, i8 signext 1)
  br label %for.end.221

if.end.218:                                       ; preds = %land.lhs.true.210, %land.lhs.true.204, %for.body.195
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %98 = load i32, i32* %r, align 4
  %inc220 = add nsw i32 %98, 1
  store i32 %inc220, i32* %r, align 4
  br label %for.cond.192

for.end.221:                                      ; preds = %if.then.216, %for.cond.192
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.221, %if.then.190
  %99 = load i32, i32* %pos, align 4
  %inc223 = add nsw i32 %99, 1
  store i32 %inc223, i32* %pos, align 4
  br label %for.cond.175

for.end.224:                                      ; preds = %for.cond.175
  store i32 21, i32* %pos, align 4
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.290, %for.end.224
  %100 = load i32, i32* %pos, align 4
  %cmp226 = icmp slt i32 %100, 400
  br i1 %cmp226, label %for.body.228, label %for.end.292

for.body.228:                                     ; preds = %for.cond.225
  %101 = load i32, i32* %pos, align 4
  %idxprom229 = sext i32 %101 to i64
  %arrayidx230 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom229
  %102 = load i8, i8* %arrayidx230, align 1
  %conv231 = zext i8 %102 to i32
  %103 = load i32, i32* %other, align 4
  %cmp232 = icmp eq i32 %conv231, %103
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.289

land.lhs.true.234:                                ; preds = %for.body.228
  %104 = load i32, i32* %pos, align 4
  %idxprom235 = sext i32 %104 to i64
  %arrayidx236 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom235
  %105 = load i8, i8* %arrayidx236, align 1
  %conv237 = sext i8 %105 to i32
  %cmp238 = icmp ne i32 %conv237, 0
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.289

land.lhs.true.240:                                ; preds = %land.lhs.true.234
  %106 = load i32, i32* %pos, align 4
  %call241 = call i32 @countlib(i32 %106)
  %cmp242 = icmp slt i32 %call241, 5
  br i1 %cmp242, label %if.then.244, label %if.end.289

if.then.244:                                      ; preds = %land.lhs.true.240
  %107 = load i32, i32* %pos, align 4
  %arraydecay245 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call246 = call i32 @findlib(i32 %107, i32 4, i32* %arraydecay245)
  store i32 %call246, i32* %liberties, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.247

for.cond.247:                                     ; preds = %for.inc.255, %if.then.244
  %108 = load i32, i32* %r, align 4
  %109 = load i32, i32* %liberties, align 4
  %cmp248 = icmp slt i32 %108, %109
  br i1 %cmp248, label %for.body.250, label %for.end.257

for.body.250:                                     ; preds = %for.cond.247
  %110 = load i32, i32* %r, align 4
  %idxprom251 = sext i32 %110 to i64
  %arrayidx252 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom251
  %111 = load i32, i32* %arrayidx252, align 4
  %idxprom253 = sext i32 %111 to i64
  %arrayidx254 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom253
  store i8 1, i8* %arrayidx254, align 1
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.250
  %112 = load i32, i32* %r, align 4
  %inc256 = add nsw i32 %112, 1
  store i32 %inc256, i32* %r, align 4
  br label %for.cond.247

for.end.257:                                      ; preds = %for.cond.247
  %113 = load i32, i32* %pos, align 4
  %arraydecay258 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i32 0
  %call259 = call i32 @chainlinks(i32 %113, i32* %arraydecay258)
  store i32 %call259, i32* %adj, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.286, %for.end.257
  %114 = load i32, i32* %r, align 4
  %115 = load i32, i32* %adj, align 4
  %cmp261 = icmp slt i32 %114, %115
  br i1 %cmp261, label %for.body.263, label %for.end.288

for.body.263:                                     ; preds = %for.cond.260
  %116 = load i32, i32* %r, align 4
  %idxprom264 = sext i32 %116 to i64
  %arrayidx265 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom264
  %117 = load i32, i32* %arrayidx265, align 4
  %call266 = call i32 @countlib(i32 %117)
  %cmp267 = icmp sle i32 %call266, 3
  br i1 %cmp267, label %if.then.269, label %if.end.285

if.then.269:                                      ; preds = %for.body.263
  %118 = load i32, i32* %r, align 4
  %idxprom270 = sext i32 %118 to i64
  %arrayidx271 = getelementptr inbounds [160 x i32], [160 x i32]* %adjs, i32 0, i64 %idxprom270
  %119 = load i32, i32* %arrayidx271, align 4
  %arraydecay272 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i32 0
  %call273 = call i32 @findlib(i32 %119, i32 3, i32* %arraydecay272)
  store i32 %call273, i32* %liberties, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.282, %if.then.269
  %120 = load i32, i32* %s, align 4
  %121 = load i32, i32* %liberties, align 4
  %cmp275 = icmp slt i32 %120, %121
  br i1 %cmp275, label %for.body.277, label %for.end.284

for.body.277:                                     ; preds = %for.cond.274
  %122 = load i32, i32* %s, align 4
  %idxprom278 = sext i32 %122 to i64
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* %libs, i32 0, i64 %idxprom278
  %123 = load i32, i32* %arrayidx279, align 4
  %idxprom280 = sext i32 %123 to i64
  %arrayidx281 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom280
  store i8 1, i8* %arrayidx281, align 1
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.body.277
  %124 = load i32, i32* %s, align 4
  %inc283 = add nsw i32 %124, 1
  store i32 %inc283, i32* %s, align 4
  br label %for.cond.274

for.end.284:                                      ; preds = %for.cond.274
  br label %if.end.285

if.end.285:                                       ; preds = %for.end.284, %for.body.263
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %125 = load i32, i32* %r, align 4
  %inc287 = add nsw i32 %125, 1
  store i32 %inc287, i32* %r, align 4
  br label %for.cond.260

for.end.288:                                      ; preds = %for.cond.260
  br label %if.end.289

if.end.289:                                       ; preds = %for.end.288, %land.lhs.true.240, %land.lhs.true.234, %for.body.228
  br label %for.inc.290

for.inc.290:                                      ; preds = %if.end.289
  %126 = load i32, i32* %pos, align 4
  %inc291 = add nsw i32 %126, 1
  store i32 %inc291, i32* %pos, align 4
  br label %for.cond.225

for.end.292:                                      ; preds = %for.cond.225
  store i32 21, i32* %pos, align 4
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.335, %for.end.292
  %127 = load i32, i32* %pos, align 4
  %cmp294 = icmp slt i32 %127, 400
  br i1 %cmp294, label %for.body.296, label %for.end.337

for.body.296:                                     ; preds = %for.cond.293
  %128 = load i32, i32* %pos, align 4
  %idxprom297 = sext i32 %128 to i64
  %arrayidx298 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom297
  %129 = load i8, i8* %arrayidx298, align 1
  %conv299 = zext i8 %129 to i32
  store i32 %conv299, i32* %value, align 4
  %130 = load i32, i32* %pos, align 4
  %idxprom300 = sext i32 %130 to i64
  %arrayidx301 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom300
  %131 = load i8, i8* %arrayidx301, align 1
  %conv302 = zext i8 %131 to i32
  %cmp303 = icmp ne i32 %conv302, 3
  br i1 %cmp303, label %if.end.306, label %if.then.305

if.then.305:                                      ; preds = %for.body.296
  br label %for.inc.335

if.end.306:                                       ; preds = %for.body.296
  %132 = load i32, i32* %pos, align 4
  %idxprom307 = sext i32 %132 to i64
  %arrayidx308 = getelementptr inbounds [400 x i8], [400 x i8]* %active, i32 0, i64 %idxprom307
  %133 = load i8, i8* %arrayidx308, align 1
  %tobool309 = icmp ne i8 %133, 0
  br i1 %tobool309, label %if.else.311, label %if.then.310

if.then.310:                                      ; preds = %if.end.306
  store i32 3, i32* %value, align 4
  br label %if.end.329

if.else.311:                                      ; preds = %if.end.306
  %134 = load i32, i32* %pos, align 4
  %idxprom312 = sext i32 %134 to i64
  %arrayidx313 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom312
  %135 = load i8, i8* %arrayidx313, align 1
  %conv314 = zext i8 %135 to i32
  %cmp315 = icmp eq i32 %conv314, 1
  br i1 %cmp315, label %land.lhs.true.323, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %if.else.311
  %136 = load i32, i32* %pos, align 4
  %idxprom318 = sext i32 %136 to i64
  %arrayidx319 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom318
  %137 = load i8, i8* %arrayidx319, align 1
  %conv320 = zext i8 %137 to i32
  %cmp321 = icmp eq i32 %conv320, 2
  br i1 %cmp321, label %land.lhs.true.323, label %if.end.328

land.lhs.true.323:                                ; preds = %lor.lhs.false.317, %if.else.311
  %138 = load i32, i32* %pos, align 4
  %call324 = call i32 @countlib(i32 %138)
  %cmp325 = icmp sgt i32 %call324, 4
  br i1 %cmp325, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %land.lhs.true.323
  %139 = load i32, i32* %value, align 4
  %or = or i32 %139, 4
  store i32 %or, i32* %value, align 4
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.327, %land.lhs.true.323, %lor.lhs.false.317
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.then.310
  %140 = load i32, i32* %value, align 4
  %conv330 = trunc i32 %140 to i8
  %141 = load i32, i32* %pos, align 4
  %idxprom331 = sext i32 %141 to i64
  %142 = load i32, i32* @persistent_owl_cache_size, align 4
  %idxprom332 = sext i32 %142 to i64
  %arrayidx333 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom332
  %board = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx333, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i64 %idxprom331
  store i8 %conv330, i8* %arrayidx334, align 1
  br label %for.inc.335

for.inc.335:                                      ; preds = %if.end.329, %if.then.305
  %143 = load i32, i32* %pos, align 4
  %inc336 = add nsw i32 %143, 1
  store i32 %inc336, i32* %pos, align 4
  br label %for.cond.293

for.end.337:                                      ; preds = %for.cond.293
  %144 = load i32, i32* @debug, align 4
  %and338 = and i32 %144, 2097152
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %if.then.340, label %if.end.342

if.then.340:                                      ; preds = %for.end.337
  %145 = load i32, i32* @persistent_owl_cache_size, align 4
  %call341 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @persistent_owl_cache_size, align 4
  call void @print_persistent_owl_cache_entry(i32 %146)
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.340, %for.end.337
  %147 = load i32, i32* @persistent_owl_cache_size, align 4
  %inc343 = add nsw i32 %147, 1
  store i32 %inc343, i32* @persistent_owl_cache_size, align 4
  br label %return

return:                                           ; preds = %if.end.342, %cond.end
  ret void
}

declare i32 @countlib(i32) #1

declare i32 @findlib(i32, i32, i32*) #1

declare i32 @chainlinks(i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @print_persistent_owl_cache_entry(i32 %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  %entry1 = alloca %struct.owl_cache*, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom
  store %struct.owl_cache* %arrayidx, %struct.owl_cache** %entry1, align 8
  %1 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %movenum = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %1, i32 0, i32 2
  %2 = load i32, i32* %movenum, align 4
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i32 %2)
  %3 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %tactical_nodes = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %3, i32 0, i32 3
  %4 = load i32, i32* %tactical_nodes, align 4
  %call2 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0), i32 %4)
  %5 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %routine = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %5, i32 0, i32 4
  %6 = load i32, i32* %routine, align 4
  %call3 = call i8* @routine_to_string(i32 %6)
  %call4 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0), i8* %call3)
  %7 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %apos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %7, i32 0, i32 5
  %8 = load i32, i32* %apos, align 4
  %call5 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i32 %8)
  %9 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %bpos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %9, i32 0, i32 6
  %10 = load i32, i32* %bpos, align 4
  %call6 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i32 %10)
  %11 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %cpos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %11, i32 0, i32 7
  %12 = load i32, i32* %cpos, align 4
  %call7 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0), i32 %12)
  %13 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %result = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %13, i32 0, i32 8
  %14 = load i32, i32* %result, align 4
  %call8 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0), i32 %14)
  %15 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %move = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %15, i32 0, i32 10
  %16 = load i32, i32* %move, align 4
  %call9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), i32 %16)
  %17 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %move2 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %17, i32 0, i32 11
  %18 = load i32, i32* %move2, align 4
  %call10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i32 %18)
  %19 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %board = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %19, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i32 0
  %20 = load %struct.owl_cache*, %struct.owl_cache** %entry1, align 8
  %apos11 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %20, i32 0, i32 5
  %21 = load i32, i32* %apos11, align 4
  call void @draw_active_area(i8* %arraydecay, i32 %21)
  ret void
}

; Function Attrs: nounwind uwtable
define void @owl_hotspots(float* %values) #0 {
entry:
  %values.addr = alloca float*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %libs = alloca [241 x i32], align 16
  %liberties = alloca i32, align 4
  %sum_tactical_nodes = alloca i32, align 4
  %entry13 = alloca %struct.owl_cache*, align 8
  %contribution = alloca float, align 4
  store float* %values, float** %values.addr, align 8
  store i32 0, i32* %sum_tactical_nodes, align 4
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %pos, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load float*, float** %values.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom4
  %tactical_nodes = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %arrayidx5, i32 0, i32 3
  %7 = load i32, i32* %tactical_nodes, align 4
  %8 = load i32, i32* %sum_tactical_nodes, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %sum_tactical_nodes, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %9 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %k, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  %10 = load i32, i32* %sum_tactical_nodes, align 4
  %cmp9 = icmp sle i32 %10, 100
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.8
  br label %for.end.50

if.end:                                           ; preds = %for.end.8
  store i32 0, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %if.end
  %11 = load i32, i32* %k, align 4
  %12 = load i32, i32* @persistent_owl_cache_size, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.10
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i32 0, i64 %idxprom14
  store %struct.owl_cache* %arrayidx15, %struct.owl_cache** %entry13, align 8
  %14 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %tactical_nodes16 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %14, i32 0, i32 3
  %15 = load i32, i32* %tactical_nodes16, align 4
  %conv = sitofp i32 %15 to float
  %16 = load i32, i32* %sum_tactical_nodes, align 4
  %conv17 = sitofp i32 %16 to float
  %div = fdiv float %conv, %conv17
  store float %div, float* %contribution, align 4
  %17 = load i32, i32* @debug, align 4
  %and = and i32 %17, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.body.12
  %18 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %routine = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %18, i32 0, i32 4
  %19 = load i32, i32* %routine, align 4
  %20 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %apos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %20, i32 0, i32 5
  %21 = load i32, i32* %apos, align 4
  %22 = load float, float* %contribution, align 4
  %conv19 = fpext float %22 to double
  %call = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i32 %19, i32 %21, double %conv19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.body.12
  %23 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %routine21 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %23, i32 0, i32 4
  %24 = load i32, i32* %routine21, align 4
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb.23
    i32 5, label %sw.bb.23
    i32 8, label %sw.bb.23
    i32 6, label %sw.bb.26
    i32 7, label %sw.bb.32
  ]

sw.bb:                                            ; preds = %if.end.20, %if.end.20, %if.end.20, %if.end.20
  %25 = load float*, float** %values.addr, align 8
  %26 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %apos22 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %26, i32 0, i32 5
  %27 = load i32, i32* %apos22, align 4
  %28 = load float, float* %contribution, align 4
  %29 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %board = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [400 x i8], [400 x i8]* %board, i32 0, i32 0
  call void @mark_dragon_hotspot_values(float* %25, i32 %27, float %28, i8* %arraydecay)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.20, %if.end.20, %if.end.20
  %30 = load float*, float** %values.addr, align 8
  %31 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %bpos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %31, i32 0, i32 6
  %32 = load i32, i32* %bpos, align 4
  %33 = load float, float* %contribution, align 4
  %34 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %board24 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %34, i32 0, i32 1
  %arraydecay25 = getelementptr inbounds [400 x i8], [400 x i8]* %board24, i32 0, i32 0
  call void @mark_dragon_hotspot_values(float* %30, i32 %32, float %33, i8* %arraydecay25)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.20
  %35 = load float*, float** %values.addr, align 8
  %36 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %bpos27 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %36, i32 0, i32 6
  %37 = load i32, i32* %bpos27, align 4
  %38 = load float, float* %contribution, align 4
  %39 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %board28 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %39, i32 0, i32 1
  %arraydecay29 = getelementptr inbounds [400 x i8], [400 x i8]* %board28, i32 0, i32 0
  call void @mark_dragon_hotspot_values(float* %35, i32 %37, float %38, i8* %arraydecay29)
  %40 = load float*, float** %values.addr, align 8
  %41 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %cpos = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %41, i32 0, i32 7
  %42 = load i32, i32* %cpos, align 4
  %43 = load float, float* %contribution, align 4
  %44 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %board30 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %44, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [400 x i8], [400 x i8]* %board30, i32 0, i32 0
  call void @mark_dragon_hotspot_values(float* %40, i32 %42, float %43, i8* %arraydecay31)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.20
  %45 = load %struct.owl_cache*, %struct.owl_cache** %entry13, align 8
  %apos33 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %45, i32 0, i32 5
  %46 = load i32, i32* %apos33, align 4
  %arraydecay34 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i32 0
  %call35 = call i32 @findlib(i32 %46, i32 241, i32* %arraydecay34)
  store i32 %call35, i32* %liberties, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.45, %sw.bb.32
  %47 = load i32, i32* %r, align 4
  %48 = load i32, i32* %liberties, align 4
  %cmp37 = icmp slt i32 %47, %48
  br i1 %cmp37, label %for.body.39, label %for.end.47

for.body.39:                                      ; preds = %for.cond.36
  %49 = load float, float* %contribution, align 4
  %50 = load i32, i32* %r, align 4
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds [241 x i32], [241 x i32]* %libs, i32 0, i64 %idxprom40
  %51 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %51 to i64
  %52 = load float*, float** %values.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %52, i64 %idxprom42
  %53 = load float, float* %arrayidx43, align 4
  %add44 = fadd float %53, %49
  store float %add44, float* %arrayidx43, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.39
  %54 = load i32, i32* %r, align 4
  %inc46 = add nsw i32 %54, 1
  store i32 %inc46, i32* %r, align 4
  br label %for.cond.36

for.end.47:                                       ; preds = %for.cond.36
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.20
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 977, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.47, %sw.bb.26, %sw.bb.23, %sw.bb
  br label %for.inc.48

for.inc.48:                                       ; preds = %sw.epilog
  %55 = load i32, i32* %k, align 4
  %inc49 = add nsw i32 %55, 1
  store i32 %inc49, i32* %k, align 4
  br label %for.cond.10

for.end.50:                                       ; preds = %if.then, %for.cond.10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_dragon_hotspot_values(float* %values, i32 %dr, float %contribution, i8* %active_board) #0 {
entry:
  %values.addr = alloca float*, align 8
  %dr.addr = alloca i32, align 4
  %contribution.addr = alloca float, align 4
  %active_board.addr = alloca i8*, align 8
  %pos = alloca i32, align 4
  %k = alloca i32, align 4
  %pos2 = alloca i32, align 4
  %pos3 = alloca i32, align 4
  %pos4 = alloca i32, align 4
  store float* %values, float** %values.addr, align 8
  store i32 %dr, i32* %dr.addr, align 4
  store float %contribution, float* %contribution.addr, align 4
  store i8* %active_board, i8** %active_board.addr, align 8
  %0 = load i32, i32* %dr.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %dr.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 2
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* %dr.addr, align 4
  %div = sdiv i32 %4, 20
  %sub = sub nsw i32 %div, 1
  %5 = load i32, i32* %dr.addr, align 4
  %rem = srem i32 %5, 20
  %sub7 = sub nsw i32 %rem, 1
  call void @abortgo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 %sub, i32 %sub7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 21, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.127, %if.end
  %6 = load i32, i32* %pos, align 4
  %cmp8 = icmp slt i32 %6, 400
  br i1 %cmp8, label %for.body, label %for.end.129

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.inc.127

if.end.16:                                        ; preds = %for.body
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.end.16
  %9 = load i32, i32* %k, align 4
  %cmp18 = icmp slt i32 %9, 8
  br i1 %cmp18, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.17
  %10 = load i32, i32* %pos, align 4
  %11 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom21
  %12 = load i32, i32* %arrayidx22, align 4
  %add = add nsw i32 %10, %12
  store i32 %add, i32* %pos2, align 4
  %13 = load i32, i32* %pos2, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom23
  %14 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp eq i32 %conv25, 1
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %for.body.20
  %15 = load i32, i32* %pos2, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom29
  %16 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %16 to i32
  %cmp32 = icmp eq i32 %conv31, 2
  br i1 %cmp32, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %lor.lhs.false.28, %for.body.20
  %17 = load i32, i32* %pos2, align 4
  %18 = load i32, i32* %dr.addr, align 4
  %call = call i32 @is_same_dragon(i32 %17, i32 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.46, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true
  %19 = load i32, i32* %pos2, align 4
  %20 = load i32, i32* %dr.addr, align 4
  %call35 = call i32 @are_neighbor_dragons(i32 %19, i32 %20)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.109

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34
  %21 = load i32, i32* %pos2, align 4
  %idxprom38 = sext i32 %21 to i64
  %arrayidx39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom38
  %22 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %22 to i32
  %23 = load i32, i32* %dr.addr, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom41
  %24 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %24 to i32
  %cmp44 = icmp eq i32 %conv40, %conv43
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.109

land.lhs.true.46:                                 ; preds = %land.lhs.true.37, %land.lhs.true
  %25 = load i32, i32* %pos2, align 4
  %call47 = call i32 @countlib(i32 %25)
  %cmp48 = icmp sle i32 %call47, 4
  br i1 %cmp48, label %if.then.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.46
  %26 = load i32, i32* %pos, align 4
  %call51 = call i32 @is_edge_vertex(i32 %26)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.109

if.then.53:                                       ; preds = %lor.lhs.false.50, %land.lhs.true.46
  %27 = load i32, i32* %k, align 4
  %cmp54 = icmp slt i32 %27, 4
  br i1 %cmp54, label %if.then.56, label %if.else.71

if.then.56:                                       ; preds = %if.then.53
  %28 = load i32, i32* %pos2, align 4
  %29 = load i32, i32* %dr.addr, align 4
  %call57 = call i32 @is_same_dragon(i32 %28, i32 %29)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %if.then.56
  %30 = load float, float* %contribution.addr, align 4
  %31 = load i32, i32* %pos, align 4
  %idxprom60 = sext i32 %31 to i64
  %32 = load float*, float** %values.addr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %32, i64 %idxprom60
  %33 = load float, float* %arrayidx61, align 4
  %add62 = fadd float %33, %30
  store float %add62, float* %arrayidx61, align 4
  br label %if.end.70

if.else.63:                                       ; preds = %if.then.56
  %34 = load float, float* %contribution.addr, align 4
  %conv64 = fpext float %34 to double
  %mul = fmul double 5.000000e-01, %conv64
  %35 = load i32, i32* %pos, align 4
  %idxprom65 = sext i32 %35 to i64
  %36 = load float*, float** %values.addr, align 8
  %arrayidx66 = getelementptr inbounds float, float* %36, i64 %idxprom65
  %37 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %37 to double
  %add68 = fadd double %conv67, %mul
  %conv69 = fptrunc double %add68 to float
  store float %conv69, float* %arrayidx66, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.63, %if.then.59
  br label %for.end

if.else.71:                                       ; preds = %if.then.53
  %38 = load i32, i32* %pos, align 4
  %39 = load i32, i32* %k, align 4
  %rem72 = srem i32 %39, 4
  %idxprom73 = sext i32 %rem72 to i64
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom73
  %40 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %38, %40
  store i32 %add75, i32* %pos3, align 4
  %41 = load i32, i32* %pos, align 4
  %42 = load i32, i32* %k, align 4
  %add76 = add nsw i32 %42, 1
  %rem77 = srem i32 %add76, 4
  %idxprom78 = sext i32 %rem77 to i64
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i32 0, i64 %idxprom78
  %43 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %41, %43
  store i32 %add80, i32* %pos4, align 4
  %44 = load i32, i32* %pos3, align 4
  %idxprom81 = sext i32 %44 to i64
  %arrayidx82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom81
  %45 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %45 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then.100, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.else.71
  %46 = load i32, i32* %pos3, align 4
  %call87 = call i32 @countlib(i32 %46)
  %cmp88 = icmp sle i32 %call87, 2
  br i1 %cmp88, label %if.then.100, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.86
  %47 = load i32, i32* %pos4, align 4
  %idxprom91 = sext i32 %47 to i64
  %arrayidx92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom91
  %48 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %48 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  br i1 %cmp94, label %if.then.100, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.90
  %49 = load i32, i32* %pos4, align 4
  %call97 = call i32 @countlib(i32 %49)
  %cmp98 = icmp sle i32 %call97, 2
  br i1 %cmp98, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %lor.lhs.false.96, %lor.lhs.false.90, %lor.lhs.false.86, %if.else.71
  %50 = load float, float* %contribution.addr, align 4
  %conv101 = fpext float %50 to double
  %mul102 = fmul double 5.000000e-01, %conv101
  %51 = load i32, i32* %pos, align 4
  %idxprom103 = sext i32 %51 to i64
  %52 = load float*, float** %values.addr, align 8
  %arrayidx104 = getelementptr inbounds float, float* %52, i64 %idxprom103
  %53 = load float, float* %arrayidx104, align 4
  %conv105 = fpext float %53 to double
  %add106 = fadd double %conv105, %mul102
  %conv107 = fptrunc double %add106 to float
  store float %conv107, float* %arrayidx104, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.100, %lor.lhs.false.96
  br label %for.end

if.end.109:                                       ; preds = %lor.lhs.false.50, %land.lhs.true.37, %lor.lhs.false.34, %lor.lhs.false.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.109
  %54 = load i32, i32* %k, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.17

for.end:                                          ; preds = %if.end.108, %if.end.70, %for.cond.17
  %55 = load i32, i32* %k, align 4
  %cmp110 = icmp eq i32 %55, 8
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.126

land.lhs.true.112:                                ; preds = %for.end
  %56 = load i32, i32* %pos, align 4
  %idxprom113 = sext i32 %56 to i64
  %57 = load i8*, i8** %active_board.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %57, i64 %idxprom113
  %58 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %58 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.126

if.then.118:                                      ; preds = %land.lhs.true.112
  %59 = load float, float* %contribution.addr, align 4
  %conv119 = fpext float %59 to double
  %mul120 = fmul double 5.000000e-01, %conv119
  %60 = load i32, i32* %pos, align 4
  %idxprom121 = sext i32 %60 to i64
  %61 = load float*, float** %values.addr, align 8
  %arrayidx122 = getelementptr inbounds float, float* %61, i64 %idxprom121
  %62 = load float, float* %arrayidx122, align 4
  %conv123 = fpext float %62 to double
  %sub124 = fsub double %conv123, %mul120
  %conv125 = fptrunc double %sub124 to float
  store float %conv125, float* %arrayidx122, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.118, %land.lhs.true.112, %for.end
  br label %for.inc.127

for.inc.127:                                      ; preds = %if.end.126, %if.then.15
  %63 = load i32, i32* %pos, align 4
  %inc128 = add nsw i32 %63, 1
  store i32 %inc128, i32* %pos, align 4
  br label %for.cond

for.end.129:                                      ; preds = %for.cond
  ret void
}

declare i32 @same_string(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @draw_active_area(i8* %board, i32 %apos) #0 {
entry:
  %board.addr = alloca i8*, align 8
  %apos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %c = alloca i32, align 4
  %cw = alloca i32, align 4
  %cb = alloca i32, align 4
  %pos = alloca i32, align 4
  store i8* %board, i8** %board.addr, align 8
  store i32 %apos, i32* %apos.addr, align 4
  store i32 32, i32* %c, align 4
  %0 = load i32, i32* %apos.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 79, i32 111
  store i32 %cond, i32* %cw, align 4
  %1 = load i32, i32* %apos.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  %cond2 = select i1 %cmp1, i32 88, i32 120
  store i32 %cond2, i32* %cb, align 4
  call void @start_draw_board()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @board_size, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @board_size, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %ii, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %ii, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %7)
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @board_size, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 20
  %add = add nsw i32 21, %mul
  %11 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %add, %11
  store i32 %add7, i32* %pos, align 4
  %12 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** %board.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp8 = icmp eq i32 %conv, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  store i32 46, i32* %c, align 4
  br label %if.end.40

if.else:                                          ; preds = %for.body.6
  %15 = load i32, i32* %pos, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8*, i8** %board.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 1
  br i1 %cmp13, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %18 = load i32, i32* %cw, align 4
  store i32 %18, i32* %c, align 4
  br label %if.end.39

if.else.16:                                       ; preds = %if.else
  %19 = load i32, i32* %pos, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i8*, i8** %board.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %20, i64 %idxprom17
  %21 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 5
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.16
  store i32 79, i32* %c, align 4
  br label %if.end.38

if.else.23:                                       ; preds = %if.else.16
  %22 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %22 to i64
  %23 = load i8*, i8** %board.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  %24 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.23
  %25 = load i32, i32* %cb, align 4
  store i32 %25, i32* %c, align 4
  br label %if.end.37

if.else.30:                                       ; preds = %if.else.23
  %26 = load i32, i32* %pos, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i8*, i8** %board.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %27, i64 %idxprom31
  %28 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %28 to i32
  %cmp34 = icmp eq i32 %conv33, 6
  br i1 %cmp34, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %if.else.30
  store i32 88, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %if.else.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.15
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  %29 = load i32, i32* %pos, align 4
  %idxprom41 = sext i32 %29 to i64
  %30 = load i8*, i8** %board.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %30, i64 %idxprom41
  %31 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %31 to i32
  %cmp44 = icmp eq i32 %conv43, 3
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.40
  store i32 63, i32* %c, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.40
  %32 = load i32, i32* %pos, align 4
  %33 = load i32, i32* %apos.addr, align 4
  %cmp48 = icmp eq i32 %32, %33
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.47
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %c, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 %35)
  br label %if.end.66

if.else.52:                                       ; preds = %if.end.47
  %36 = load i32, i32* %j, align 4
  %cmp53 = icmp sgt i32 %36, 0
  br i1 %cmp53, label %land.lhs.true, label %if.else.63

land.lhs.true:                                    ; preds = %if.else.52
  %37 = load i32, i32* %i, align 4
  %mul55 = mul nsw i32 %37, 20
  %add56 = add nsw i32 21, %mul55
  %38 = load i32, i32* %j, align 4
  %sub57 = sub nsw i32 %38, 1
  %add58 = add nsw i32 %add56, %sub57
  %39 = load i32, i32* %apos.addr, align 4
  %cmp59 = icmp eq i32 %add58, %39
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %land.lhs.true
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* %c, align 4
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 %41)
  br label %if.end.65

if.else.63:                                       ; preds = %land.lhs.true, %if.else.52
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %c, align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 %43)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i32, i32* %ii, align 4
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 %46)
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %47, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  call void @end_draw_board()
  ret void
}

declare void @start_draw_board() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @end_draw_board() #1

declare i32 @is_same_dragon(i32, i32) #1

declare i32 @are_neighbor_dragons(i32, i32) #1

declare i32 @is_edge_vertex(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
