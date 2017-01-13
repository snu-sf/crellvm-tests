; ModuleID = './MultiSource.Applications.obsequi/2.init.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Entry = type { [4 x i32], i32, i8, [3 x i8] }
%struct.Basic_Info = type { i32, i32, i32 }
%struct.Hash_Key = type { [4 x i32], i32 }

@g_board_size = global [2 x i32] [i32 -1, i32 -1], align 4
@g_trans_table = global %struct.Hash_Entry* null, align 8
@g_info_totals = common global [2 x %struct.Basic_Info] zeroinitializer, align 16
@g_info = common global [2 x [32 x %struct.Basic_Info]] zeroinitializer, align 16
@g_zobrist = common global [32 x [32 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [82 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/init.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid board size %dX%d.\0A\00", align 1
@g_board = common global [2 x [32 x i32]] zeroinitializer, align 16
@g_norm_hashkey = external global %struct.Hash_Key, align 4
@g_flipV_hashkey = external global %struct.Hash_Key, align 4
@g_flipH_hashkey = external global %struct.Hash_Key, align 4
@g_flipVH_hashkey = external global %struct.Hash_Key, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@norm_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@flipV_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@flipH_hashkey = common global %struct.Hash_Key zeroinitializer, align 4
@flipVH_hashkey = common global %struct.Hash_Key zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define void @init__safe_count(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx, i32 0, i32 0
  store i32 0, i32* %safe, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom3 = sext i32 %add to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx5, i32 0, i64 %idxprom3
  %safe7 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx6, i32 0, i32 0
  store i32 0, i32* %safe7, align 4
  %6 = load i32, i32* %player.addr, align 4
  %7 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %7, 1
  call void @update_safe(i32 %6, i32 %add8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @update_safe(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @init__real_count(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx, i32 0, i32 1
  store i32 0, i32* %real, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom3 = sext i32 %add to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx5, i32 0, i64 %idxprom3
  %real7 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx6, i32 0, i32 1
  store i32 0, i32* %real7, align 4
  %6 = load i32, i32* %player.addr, align 4
  %7 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %7, 1
  call void @update_real(i32 %6, i32 %add8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @update_real(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @initialize_solver() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %cmp = icmp eq %struct.Hash_Entry* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @calloc(i64 8388608, i64 24) #3
  %1 = bitcast i8* %call to %struct.Hash_Entry*
  store %struct.Hash_Entry* %1, %struct.Hash_Entry** @g_trans_table, align 8
  call void @srandom(i32 1) #3
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.then
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 31
  br i1 %cmp1, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %3, 31
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %call5 = call i64 @random() #3
  %and = and i64 %call5, 8388607
  %conv = trunc i64 %and to i32
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @g_zobrist, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  call void (...) @init_static_tables()
  br label %if.end

if.end:                                           ; preds = %for.end.10, %entry
  call void (...) @init_less_static_tables()
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @srandom(i32) #2

; Function Attrs: nounwind
declare i64 @random() #2

declare void @init_static_tables(...) #1

declare void @init_less_static_tables(...) #1

; Function Attrs: nounwind uwtable
define void @initialize_board(i32 %num_rows, i32 %num_cols, [30 x i32]* %board) #0 {
entry:
  %num_rows.addr = alloca i32, align 4
  %num_cols.addr = alloca i32, align 4
  %board.addr = alloca [30 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %init = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %num_rows, i32* %num_rows.addr, align 4
  store i32 %num_cols, i32* %num_cols.addr, align 4
  store [30 x i32]* %board, [30 x i32]** %board.addr, align 8
  store i32 0, i32* %init, align 4
  %0 = load i32, i32* %num_rows.addr, align 4
  %cmp = icmp sgt i32 %0, 30
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %num_rows.addr, align 4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %num_cols.addr, align 4
  %cmp3 = icmp sgt i32 %2, 30
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %num_cols.addr, align 4
  %cmp5 = icmp slt i32 %3, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %4 = load i32, i32* %num_rows.addr, align 4
  %5 = load i32, i32* %num_cols.addr, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 102, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  %6 = load i32, i32* %num_rows.addr, align 4
  %7 = load i32, i32* %num_cols.addr, align 4
  %mul = mul nsw i32 %6, %7
  %cmp6 = icmp sge i32 %mul, 128
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %8 = load i32, i32* %num_rows.addr, align 4
  %9 = load i32, i32* %num_cols.addr, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i32 105, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %8, i32 %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %10 = load %struct.Hash_Entry*, %struct.Hash_Entry** @g_trans_table, align 8
  %cmp9 = icmp eq %struct.Hash_Entry* %10, null
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.end.8
  %11 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  %12 = load i32, i32* %num_rows.addr, align 4
  %cmp11 = icmp ne i32 %11, %12
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %13 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  %14 = load i32, i32* %num_cols.addr, align 4
  %cmp13 = icmp ne i32 %13, %14
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %if.end.8
  store i32 1, i32* %init, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %lor.lhs.false.12
  %15 = load i32, i32* %num_rows.addr, align 4
  store i32 %15, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  %16 = load i32, i32* %num_cols.addr, align 4
  store i32 %16, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  %17 = load i32, i32* %init, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.15
  call void @initialize_solver()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.15
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %18 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %18, 32
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 1), i32 0, i64 %idxprom19
  store i32 -1, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.47, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %num_rows.addr, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body.23, label %for.end.49

for.body.23:                                      ; preds = %for.cond.21
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.44, %for.body.23
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %num_cols.addr, align 4
  %cmp25 = icmp slt i32 %24, %25
  br i1 %cmp25, label %for.body.26, label %for.end.46

for.body.26:                                      ; preds = %for.cond.24
  %26 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load [30 x i32]*, [30 x i32]** %board.addr, align 8
  %arrayidx29 = getelementptr inbounds [30 x i32], [30 x i32]* %28, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx29, i32 0, i64 %idxprom27
  %29 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %29, 0
  br i1 %cmp31, label %if.then.32, label %if.end.43

if.then.32:                                       ; preds = %for.body.26
  %30 = load i32, i32* %j, align 4
  %add = add nsw i32 %30, 1
  %shl = shl i32 1, %add
  %neg = xor i32 %shl, -1
  %31 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %31, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom34
  %32 = load i32, i32* %arrayidx35, align 4
  %and = and i32 %32, %neg
  store i32 %and, i32* %arrayidx35, align 4
  %33 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %33, 1
  %shl37 = shl i32 1, %add36
  %neg38 = xor i32 %shl37, -1
  %34 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %34, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 1), i32 0, i64 %idxprom40
  %35 = load i32, i32* %arrayidx41, align 4
  %and42 = and i32 %35, %neg38
  store i32 %and42, i32* %arrayidx41, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.32, %for.body.26
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %36 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %36, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond.24

for.end.46:                                       ; preds = %for.cond.24
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %37 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.21

for.end.49:                                       ; preds = %for.cond.21
  call void @init__real_count(i32 1)
  call void @init__real_count(i32 0)
  call void @init__safe_count(i32 1)
  call void @init__safe_count(i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.61, %for.end.49
  %38 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %38, 4
  br i1 %cmp51, label %for.body.52, label %for.end.63

for.body.52:                                      ; preds = %for.cond.50
  %39 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom53
  store i32 0, i32* %arrayidx54, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom55
  store i32 0, i32* %arrayidx56, align 4
  %41 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom57
  store i32 0, i32* %arrayidx58, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom59
  store i32 0, i32* %arrayidx60, align 4
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.52
  %43 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.50

for.end.63:                                       ; preds = %for.cond.50
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.116, %for.end.63
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %num_rows.addr, align 4
  %cmp65 = icmp slt i32 %44, %45
  br i1 %cmp65, label %for.body.66, label %for.end.118

for.body.66:                                      ; preds = %for.cond.64
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.113, %for.body.66
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %num_cols.addr, align 4
  %cmp68 = icmp slt i32 %46, %47
  br i1 %cmp68, label %for.body.69, label %for.end.115

for.body.69:                                      ; preds = %for.cond.67
  %48 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %49 to i64
  %50 = load [30 x i32]*, [30 x i32]** %board.addr, align 8
  %arrayidx72 = getelementptr inbounds [30 x i32], [30 x i32]* %50, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [30 x i32], [30 x i32]* %arrayidx72, i32 0, i64 %idxprom70
  %51 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp ne i32 %51, 0
  br i1 %cmp74, label %if.then.75, label %if.end.112

if.then.75:                                       ; preds = %for.body.69
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %num_cols.addr, align 4
  %mul76 = mul nsw i32 %52, %53
  %54 = load i32, i32* %j, align 4
  %add77 = add nsw i32 %mul76, %54
  store i32 %add77, i32* %index, align 4
  %55 = load i32, i32* %index, align 4
  %rem = srem i32 %55, 32
  %shl78 = shl i32 1, %rem
  %56 = load i32, i32* %index, align 4
  %div = sdiv i32 %56, 32
  %idxprom79 = sext i32 %div to i64
  %arrayidx80 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_norm_hashkey, i32 0, i32 0), i32 0, i64 %idxprom79
  %57 = load i32, i32* %arrayidx80, align 4
  %or = or i32 %57, %shl78
  store i32 %or, i32* %arrayidx80, align 4
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %num_cols.addr, align 4
  %mul81 = mul nsw i32 %58, %59
  %60 = load i32, i32* %num_cols.addr, align 4
  %61 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %60, %61
  %sub82 = sub nsw i32 %sub, 1
  %add83 = add nsw i32 %mul81, %sub82
  store i32 %add83, i32* %index, align 4
  %62 = load i32, i32* %index, align 4
  %rem84 = srem i32 %62, 32
  %shl85 = shl i32 1, %rem84
  %63 = load i32, i32* %index, align 4
  %div86 = sdiv i32 %63, 32
  %idxprom87 = sext i32 %div86 to i64
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipV_hashkey, i32 0, i32 0), i32 0, i64 %idxprom87
  %64 = load i32, i32* %arrayidx88, align 4
  %or89 = or i32 %64, %shl85
  store i32 %or89, i32* %arrayidx88, align 4
  %65 = load i32, i32* %num_rows.addr, align 4
  %66 = load i32, i32* %i, align 4
  %sub90 = sub nsw i32 %65, %66
  %sub91 = sub nsw i32 %sub90, 1
  %67 = load i32, i32* %num_cols.addr, align 4
  %mul92 = mul nsw i32 %sub91, %67
  %68 = load i32, i32* %j, align 4
  %add93 = add nsw i32 %mul92, %68
  store i32 %add93, i32* %index, align 4
  %69 = load i32, i32* %index, align 4
  %rem94 = srem i32 %69, 32
  %shl95 = shl i32 1, %rem94
  %70 = load i32, i32* %index, align 4
  %div96 = sdiv i32 %70, 32
  %idxprom97 = sext i32 %div96 to i64
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom97
  %71 = load i32, i32* %arrayidx98, align 4
  %or99 = or i32 %71, %shl95
  store i32 %or99, i32* %arrayidx98, align 4
  %72 = load i32, i32* %num_rows.addr, align 4
  %73 = load i32, i32* %i, align 4
  %sub100 = sub nsw i32 %72, %73
  %sub101 = sub nsw i32 %sub100, 1
  %74 = load i32, i32* %num_cols.addr, align 4
  %mul102 = mul nsw i32 %sub101, %74
  %75 = load i32, i32* %num_cols.addr, align 4
  %76 = load i32, i32* %j, align 4
  %sub103 = sub nsw i32 %75, %76
  %sub104 = sub nsw i32 %sub103, 1
  %add105 = add nsw i32 %mul102, %sub104
  store i32 %add105, i32* %index, align 4
  %77 = load i32, i32* %index, align 4
  %rem106 = srem i32 %77, 32
  %shl107 = shl i32 1, %rem106
  %78 = load i32, i32* %index, align 4
  %div108 = sdiv i32 %78, 32
  %idxprom109 = sext i32 %div108 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.Hash_Key, %struct.Hash_Key* @g_flipVH_hashkey, i32 0, i32 0), i32 0, i64 %idxprom109
  %79 = load i32, i32* %arrayidx110, align 4
  %or111 = or i32 %79, %shl107
  store i32 %or111, i32* %arrayidx110, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.75, %for.body.69
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %80 = load i32, i32* %j, align 4
  %inc114 = add nsw i32 %80, 1
  store i32 %inc114, i32* %j, align 4
  br label %for.cond.67

for.end.115:                                      ; preds = %for.cond.67
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %81 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %81, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.64

for.end.118:                                      ; preds = %for.cond.64
  call void @init_hashkey_code(%struct.Hash_Key* @g_norm_hashkey)
  call void @init_hashkey_code(%struct.Hash_Key* @g_flipV_hashkey)
  call void @init_hashkey_code(%struct.Hash_Key* @g_flipH_hashkey)
  call void @init_hashkey_code(%struct.Hash_Key* @g_flipVH_hashkey)
  call void @print_board(i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void (i32, ...) bitcast (void (...)* @print_board_info to void (i32, ...)*)(i32 0)
  call void (...) @check_hash_code_sanity()
  ret void
}

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @init_hashkey_code(%struct.Hash_Key* %key) #0 {
entry:
  %key.addr = alloca %struct.Hash_Key*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %n_rows = alloca i32, align 4
  %n_cols = alloca i32, align 4
  store %struct.Hash_Key* %key, %struct.Hash_Key** %key.addr, align 8
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %0, i32* %n_rows, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 1), align 4
  store i32 %1, i32* %n_cols, align 4
  %2 = load %struct.Hash_Key*, %struct.Hash_Key** %key.addr, align 8
  %code = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %2, i32 0, i32 1
  store i32 0, i32* %code, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_rows, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n_cols, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_cols, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %9
  store i32 %add, i32* %index, align 4
  %10 = load i32, i32* %index, align 4
  %div = sdiv i32 %10, 32
  %idxprom = sext i32 %div to i64
  %11 = load %struct.Hash_Key*, %struct.Hash_Key** %key.addr, align 8
  %key4 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %key4, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* %index, align 4
  %rem = srem i32 %13, 32
  %shl = shl i32 1, %rem
  %and = and i32 %12, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %14 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %14, 1
  %idxprom6 = sext i32 %add5 to i64
  %15 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @g_zobrist, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx9, i32 0, i64 %idxprom6
  %16 = load i32, i32* %arrayidx10, align 4
  %17 = load %struct.Hash_Key*, %struct.Hash_Key** %key.addr, align 8
  %code11 = getelementptr inbounds %struct.Hash_Key, %struct.Hash_Key* %17, i32 0, i32 1
  %18 = load i32, i32* %code11, align 4
  %xor = xor i32 %18, %16
  store i32 %xor, i32* %code11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  ret void
}

declare void @print_board(i32) #1

declare i32 @printf(i8*, ...) #1

declare void @print_board_info(...) #1

declare void @check_hash_code_sanity(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
