; ModuleID = './MultiSource.Applications.obsequi/5.toggle_move.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Basic_Info = type { i32, i32, i32 }
%struct.Move = type { i32, i32, i32 }

@g_board = external global [2 x [32 x i32]], align 16
@g_board_size = external global [2 x i32], align 4
@.str = private unnamed_addr constant [89 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/obsequi/toggle_move.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"No maximum\0A\00", align 1
@g_info = external global [2 x [32 x %struct.Basic_Info]], align 16
@g_info_totals = external global [2 x %struct.Basic_Info], align 16
@move_table16 = external global [65536 x i32], align 16
@g_first_move = external global [2 x [32 x [32 x i32]]], align 16

; Function Attrs: nounwind uwtable
define void @update_safe(i32 %player, i32 %row) #0 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  call void @_update_safe(i32 %0, i32 %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_update_safe(i32 %player, i32 %row) #1 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  %call = call i32 @count_safe(i32 %0, i32 %1)
  store i32 %call, i32* %count, align 4
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx, i32 0, i64 %idxprom
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx2, i32 0, i32 0
  %5 = load i32, i32* %safe, align 4
  %sub = sub nsw i32 %2, %5
  %6 = load i32, i32* %player.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom3
  %safe5 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %safe5, align 4
  %add = add nsw i32 %7, %sub
  store i32 %add, i32* %safe5, align 4
  %8 = load i32, i32* %count, align 4
  %9 = load i32, i32* %row.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx8, i32 0, i64 %idxprom6
  %safe10 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx9, i32 0, i32 0
  store i32 %8, i32* %safe10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_real(i32 %player, i32 %row) #0 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  call void @_update_real(i32 %0, i32 %1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_update_real(i32 %player, i32 %row) #1 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %1 = load i32, i32* %row.addr, align 4
  %call = call i32 @count_real(i32 %0, i32 %1)
  store i32 %call, i32* %count, align 4
  %2 = load i32, i32* %count, align 4
  %3 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %real, align 4
  %sub = sub nsw i32 %2, %5
  %6 = load i32, i32* %player.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.Basic_Info], [2 x %struct.Basic_Info]* @g_info_totals, i32 0, i64 %idxprom3
  %real5 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx4, i32 0, i32 1
  %7 = load i32, i32* %real5, align 4
  %add = add nsw i32 %7, %sub
  store i32 %add, i32* %real5, align 4
  %8 = load i32, i32* %count, align 4
  %9 = load i32, i32* %row.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx8, i32 0, i64 %idxprom6
  %real10 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx9, i32 0, i32 1
  store i32 %8, i32* %real10, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @toggle_move(i64 %move.coerce0, i32 %move.coerce1, i32 %player) #0 {
entry:
  %move = alloca %struct.Move, align 8
  %coerce = alloca { i64, i32 }, align 8
  %player.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %horz_play = alloca i32, align 4
  %vert_play = alloca i32, align 4
  %0 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %move.coerce0, i64* %0
  %1 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %move.coerce1, i32* %1
  %2 = bitcast %struct.Move* %move to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i32 %player, i32* %player.addr, align 4
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %move, i32 0, i32 0
  %4 = load i32, i32* %array_index, align 4
  store i32 %4, i32* %row, align 4
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %move, i32 0, i32 1
  %5 = load i32, i32* %mask_index, align 4
  store i32 %5, i32* %col, align 4
  %6 = load i32, i32* %player.addr, align 4
  %and = and i32 %6, 1
  store i32 %and, i32* %horz_play, align 4
  %7 = load i32, i32* %player.addr, align 4
  %xor = xor i32 %7, 1
  store i32 %xor, i32* %vert_play, align 4
  %8 = load i32, i32* %col, align 4
  %shl = shl i32 3, %8
  %9 = load i32, i32* %row, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %horz_play, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx2, align 4
  %xor3 = xor i32 %11, %shl
  store i32 %xor3, i32* %arrayidx2, align 4
  %12 = load i32, i32* %row, align 4
  %shl4 = shl i32 1, %12
  %13 = load i32, i32* %col, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i32, i32* %vert_play, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %15 = load i32, i32* %arrayidx8, align 4
  %xor9 = xor i32 %15, %shl4
  store i32 %xor9, i32* %arrayidx8, align 4
  %16 = load i32, i32* %row, align 4
  %shl10 = shl i32 1, %16
  %17 = load i32, i32* %col, align 4
  %add = add nsw i32 %17, 1
  %idxprom11 = sext i32 %add to i64
  %18 = load i32, i32* %vert_play, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %19 = load i32, i32* %arrayidx14, align 4
  %xor15 = xor i32 %19, %shl10
  store i32 %xor15, i32* %arrayidx14, align 4
  %20 = load i32, i32* %row, align 4
  %sub = sub nsw i32 %20, 1
  %cmp = icmp ne i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %horz_play, align 4
  %22 = load i32, i32* %row, align 4
  %sub16 = sub nsw i32 %22, 1
  call void @_update_safe(i32 %21, i32 %sub16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load i32, i32* %horz_play, align 4
  %24 = load i32, i32* %row, align 4
  call void @_update_safe(i32 %23, i32 %24)
  %25 = load i32, i32* %row, align 4
  %26 = load i32, i32* %horz_play, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom17
  %27 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ne i32 %25, %27
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end
  %28 = load i32, i32* %horz_play, align 4
  %29 = load i32, i32* %row, align 4
  %add21 = add nsw i32 %29, 1
  call void @_update_safe(i32 %28, i32 %add21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end
  %30 = load i32, i32* %col, align 4
  %sub23 = sub nsw i32 %30, 1
  %cmp24 = icmp ne i32 %sub23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %31 = load i32, i32* %vert_play, align 4
  %32 = load i32, i32* %col, align 4
  %sub26 = sub nsw i32 %32, 1
  call void @_update_safe(i32 %31, i32 %sub26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %33 = load i32, i32* %col, align 4
  %add28 = add nsw i32 %33, 1
  %34 = load i32, i32* %vert_play, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom29
  %35 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp ne i32 %add28, %35
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.27
  %36 = load i32, i32* %vert_play, align 4
  %37 = load i32, i32* %col, align 4
  %add33 = add nsw i32 %37, 2
  call void @_update_safe(i32 %36, i32 %add33)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.27
  %38 = load i32, i32* %horz_play, align 4
  %39 = load i32, i32* %row, align 4
  call void @_update_real(i32 %38, i32 %39)
  %40 = load i32, i32* %vert_play, align 4
  %41 = load i32, i32* %col, align 4
  call void @_update_real(i32 %40, i32 %41)
  %42 = load i32, i32* %vert_play, align 4
  %43 = load i32, i32* %col, align 4
  %add35 = add nsw i32 %43, 1
  call void @_update_real(i32 %42, i32 %add35)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @score_and_get_first(%struct.Move* %movelist, i32 %num_moves, i32 %player, i64 %first.coerce0, i32 %first.coerce1) #0 {
entry:
  %first = alloca %struct.Move, align 8
  %coerce = alloca { i64, i32 }, align 8
  %movelist.addr = alloca %struct.Move*, align 8
  %num_moves.addr = alloca i32, align 4
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %max_index = alloca i32, align 4
  %arrayidx13.coerce = alloca { i64, i32 }
  %arrayidx22.coerce = alloca { i64, i32 }
  %tmp_move = alloca %struct.Move, align 4
  %0 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %first.coerce0, i64* %0
  %1 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %first.coerce1, i32* %1
  %2 = bitcast %struct.Move* %first to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store %struct.Move* %movelist, %struct.Move** %movelist.addr, align 8
  store i32 %num_moves, i32* %num_moves.addr, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 -50000, i32* %max, align 4
  store i32 -1, i32* %max_index, align 4
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %first, i32 0, i32 0
  %4 = load i32, i32* %array_index, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then, label %if.else.17

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num_moves.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %array_index2 = getelementptr inbounds %struct.Move, %struct.Move* %first, i32 0, i32 0
  %7 = load i32, i32* %array_index2, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Move, %struct.Move* %9, i64 %idxprom
  %array_index3 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %array_index3, align 4
  %cmp4 = icmp eq i32 %7, %10
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %first, i32 0, i32 1
  %11 = load i32, i32* %mask_index, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.Move, %struct.Move* %13, i64 %idxprom5
  %mask_index7 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx6, i32 0, i32 1
  %14 = load i32, i32* %mask_index7, align 4
  %cmp8 = icmp eq i32 %11, %14
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.Move, %struct.Move* %16, i64 %idxprom10
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx11, i32 0, i32 2
  store i32 450000, i32* %info, align 4
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %max_index, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.Move, %struct.Move* %19, i64 %idxprom12
  %20 = load i32, i32* %player.addr, align 4
  %21 = bitcast { i64, i32 }* %arrayidx13.coerce to i8*
  %22 = bitcast %struct.Move* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 12, i32 0, i1 false)
  %23 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx13.coerce, i32 0, i32 0
  %24 = load i64, i64* %23, align 1
  %25 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx13.coerce, i32 0, i32 1
  %26 = load i32, i32* %25, align 1
  %call = call i32 @score_move(i64 %24, i32 %26, i32 %20)
  %27 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.Move, %struct.Move* %28, i64 %idxprom14
  %info16 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx15, i32 0, i32 2
  store i32 %call, i32* %info16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.else.17:                                       ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.36, %if.else.17
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %num_moves.addr, align 4
  %cmp19 = icmp slt i32 %30, %31
  br i1 %cmp19, label %for.body.20, label %for.end.38

for.body.20:                                      ; preds = %for.cond.18
  %32 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.Move, %struct.Move* %33, i64 %idxprom21
  %34 = load i32, i32* %player.addr, align 4
  %35 = bitcast { i64, i32 }* %arrayidx22.coerce to i8*
  %36 = bitcast %struct.Move* %arrayidx22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 12, i32 0, i1 false)
  %37 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx22.coerce, i32 0, i32 0
  %38 = load i64, i64* %37, align 1
  %39 = getelementptr { i64, i32 }, { i64, i32 }* %arrayidx22.coerce, i32 0, i32 1
  %40 = load i32, i32* %39, align 1
  %call23 = call i32 @score_move(i64 %38, i32 %40, i32 %34)
  %41 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %41 to i64
  %42 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.Move, %struct.Move* %42, i64 %idxprom24
  %info26 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx25, i32 0, i32 2
  store i32 %call23, i32* %info26, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.Move, %struct.Move* %44, i64 %idxprom27
  %info29 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx28, i32 0, i32 2
  %45 = load i32, i32* %info29, align 4
  %46 = load i32, i32* %max, align 4
  %cmp30 = icmp sgt i32 %45, %46
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %for.body.20
  %47 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %47 to i64
  %48 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.Move, %struct.Move* %48, i64 %idxprom32
  %info34 = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx33, i32 0, i32 2
  %49 = load i32, i32* %info34, align 4
  store i32 %49, i32* %max, align 4
  %50 = load i32, i32* %i, align 4
  store i32 %50, i32* %max_index, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %for.body.20
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %51 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %51, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.18

for.end.38:                                       ; preds = %for.cond.18
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %for.end
  %52 = load i32, i32* %max_index, align 4
  %cmp40 = icmp eq i32 %52, -1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i32 0, i32 0), i32 180, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %53 = load i32, i32* %num_moves.addr, align 4
  %cmp43 = icmp sgt i32 %53, 1
  br i1 %cmp43, label %if.then.44, label %if.end.57

if.then.44:                                       ; preds = %if.end.42
  %54 = load i32, i32* %max_index, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.Move, %struct.Move* %55, i64 %idxprom45
  %56 = bitcast %struct.Move* %tmp_move to i8*
  %57 = bitcast %struct.Move* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 12, i32 4, i1 false)
  %58 = load i32, i32* %max_index, align 4
  store i32 %58, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.54, %if.then.44
  %59 = load i32, i32* %i, align 4
  %cmp48 = icmp sgt i32 %59, 0
  br i1 %cmp48, label %for.body.49, label %for.end.55

for.body.49:                                      ; preds = %for.cond.47
  %60 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %60 to i64
  %61 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.Move, %struct.Move* %61, i64 %idxprom50
  %62 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %62, 1
  %idxprom52 = sext i32 %sub to i64
  %63 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.Move, %struct.Move* %63, i64 %idxprom52
  %64 = bitcast %struct.Move* %arrayidx51 to i8*
  %65 = bitcast %struct.Move* %arrayidx53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 12, i32 4, i1 false)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %66 = load i32, i32* %i, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.47

for.end.55:                                       ; preds = %for.cond.47
  %67 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.Move, %struct.Move* %67, i64 0
  %68 = bitcast %struct.Move* %arrayidx56 to i8*
  %69 = bitcast %struct.Move* %tmp_move to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 12, i32 4, i1 false)
  br label %if.end.57

if.end.57:                                        ; preds = %for.end.55, %if.end.42
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @score_move(i64 %move.coerce0, i32 %move.coerce1, i32 %player) #1 {
entry:
  %move = alloca %struct.Move, align 8
  %coerce = alloca { i64, i32 }, align 8
  %player.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %horz_play = alloca i32, align 4
  %vert_play = alloca i32, align 4
  %score = alloca i32, align 4
  %0 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 0
  store i64 %move.coerce0, i64* %0
  %1 = getelementptr { i64, i32 }, { i64, i32 }* %coerce, i32 0, i32 1
  store i32 %move.coerce1, i32* %1
  %2 = bitcast %struct.Move* %move to i8*
  %3 = bitcast { i64, i32 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 8, i1 false)
  store i32 %player, i32* %player.addr, align 4
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %move, i32 0, i32 0
  %4 = load i32, i32* %array_index, align 4
  store i32 %4, i32* %row, align 4
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %move, i32 0, i32 1
  %5 = load i32, i32* %mask_index, align 4
  store i32 %5, i32* %col, align 4
  %6 = load i32, i32* %player.addr, align 4
  %and = and i32 %6, 1
  store i32 %and, i32* %horz_play, align 4
  %7 = load i32, i32* %player.addr, align 4
  %xor = xor i32 %7, 1
  store i32 %xor, i32* %vert_play, align 4
  %8 = load i32, i32* %col, align 4
  %shl = shl i32 3, %8
  %9 = load i32, i32* %row, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %horz_play, align 4
  %idxprom1 = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx2, align 4
  %xor3 = xor i32 %11, %shl
  store i32 %xor3, i32* %arrayidx2, align 4
  %12 = load i32, i32* %row, align 4
  %shl4 = shl i32 1, %12
  %13 = load i32, i32* %col, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load i32, i32* %vert_play, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %15 = load i32, i32* %arrayidx8, align 4
  %xor9 = xor i32 %15, %shl4
  store i32 %xor9, i32* %arrayidx8, align 4
  %16 = load i32, i32* %row, align 4
  %shl10 = shl i32 1, %16
  %17 = load i32, i32* %col, align 4
  %add = add nsw i32 %17, 1
  %idxprom11 = sext i32 %add to i64
  %18 = load i32, i32* %vert_play, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %19 = load i32, i32* %arrayidx14, align 4
  %xor15 = xor i32 %19, %shl10
  store i32 %xor15, i32* %arrayidx14, align 4
  %20 = load i32, i32* %horz_play, align 4
  %21 = load i32, i32* %row, align 4
  %call = call i32 @count_real(i32 %20, i32 %21)
  %22 = load i32, i32* %row, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32, i32* %horz_play, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx18, i32 0, i64 %idxprom16
  %real = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx19, i32 0, i32 1
  %24 = load i32, i32* %real, align 4
  %sub = sub nsw i32 %call, %24
  store i32 %sub, i32* %score, align 4
  %25 = load i32, i32* %vert_play, align 4
  %26 = load i32, i32* %col, align 4
  %call20 = call i32 @count_real(i32 %25, i32 %26)
  %27 = load i32, i32* %col, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load i32, i32* %vert_play, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx23, i32 0, i64 %idxprom21
  %real25 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx24, i32 0, i32 1
  %29 = load i32, i32* %real25, align 4
  %sub26 = sub nsw i32 %call20, %29
  %30 = load i32, i32* %score, align 4
  %sub27 = sub nsw i32 %30, %sub26
  store i32 %sub27, i32* %score, align 4
  %31 = load i32, i32* %vert_play, align 4
  %32 = load i32, i32* %col, align 4
  %add28 = add nsw i32 %32, 1
  %call29 = call i32 @count_real(i32 %31, i32 %add28)
  %33 = load i32, i32* %col, align 4
  %add30 = add nsw i32 %33, 1
  %idxprom31 = sext i32 %add30 to i64
  %34 = load i32, i32* %vert_play, align 4
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx33, i32 0, i64 %idxprom31
  %real35 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx34, i32 0, i32 1
  %35 = load i32, i32* %real35, align 4
  %sub36 = sub nsw i32 %call29, %35
  %36 = load i32, i32* %score, align 4
  %sub37 = sub nsw i32 %36, %sub36
  store i32 %sub37, i32* %score, align 4
  %37 = load i32, i32* %row, align 4
  %sub38 = sub nsw i32 %37, 1
  %cmp = icmp ne i32 %sub38, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %38 = load i32, i32* %horz_play, align 4
  %39 = load i32, i32* %row, align 4
  %sub39 = sub nsw i32 %39, 1
  %call40 = call i32 @count_safe(i32 %38, i32 %sub39)
  %40 = load i32, i32* %row, align 4
  %sub41 = sub nsw i32 %40, 1
  %idxprom42 = sext i32 %sub41 to i64
  %41 = load i32, i32* %horz_play, align 4
  %idxprom43 = sext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx44, i32 0, i64 %idxprom42
  %safe = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx45, i32 0, i32 0
  %42 = load i32, i32* %safe, align 4
  %sub46 = sub nsw i32 %call40, %42
  %43 = load i32, i32* %score, align 4
  %add47 = add nsw i32 %43, %sub46
  store i32 %add47, i32* %score, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %44 = load i32, i32* %horz_play, align 4
  %45 = load i32, i32* %row, align 4
  %call48 = call i32 @count_safe(i32 %44, i32 %45)
  %46 = load i32, i32* %row, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load i32, i32* %horz_play, align 4
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx51, i32 0, i64 %idxprom49
  %safe53 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx52, i32 0, i32 0
  %48 = load i32, i32* %safe53, align 4
  %sub54 = sub nsw i32 %call48, %48
  %49 = load i32, i32* %score, align 4
  %add55 = add nsw i32 %49, %sub54
  store i32 %add55, i32* %score, align 4
  %50 = load i32, i32* %row, align 4
  %51 = load i32, i32* %horz_play, align 4
  %idxprom56 = sext i32 %51 to i64
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom56
  %52 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp ne i32 %50, %52
  br i1 %cmp58, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %if.end
  %53 = load i32, i32* %horz_play, align 4
  %54 = load i32, i32* %row, align 4
  %add60 = add nsw i32 %54, 1
  %call61 = call i32 @count_safe(i32 %53, i32 %add60)
  %55 = load i32, i32* %row, align 4
  %add62 = add nsw i32 %55, 1
  %idxprom63 = sext i32 %add62 to i64
  %56 = load i32, i32* %horz_play, align 4
  %idxprom64 = sext i32 %56 to i64
  %arrayidx65 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx65, i32 0, i64 %idxprom63
  %safe67 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx66, i32 0, i32 0
  %57 = load i32, i32* %safe67, align 4
  %sub68 = sub nsw i32 %call61, %57
  %58 = load i32, i32* %score, align 4
  %add69 = add nsw i32 %58, %sub68
  store i32 %add69, i32* %score, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.59, %if.end
  %59 = load i32, i32* %col, align 4
  %sub71 = sub nsw i32 %59, 1
  %cmp72 = icmp ne i32 %sub71, 0
  br i1 %cmp72, label %if.then.73, label %if.end.84

if.then.73:                                       ; preds = %if.end.70
  %60 = load i32, i32* %vert_play, align 4
  %61 = load i32, i32* %col, align 4
  %sub74 = sub nsw i32 %61, 1
  %call75 = call i32 @count_safe(i32 %60, i32 %sub74)
  %62 = load i32, i32* %col, align 4
  %sub76 = sub nsw i32 %62, 1
  %idxprom77 = sext i32 %sub76 to i64
  %63 = load i32, i32* %vert_play, align 4
  %idxprom78 = sext i32 %63 to i64
  %arrayidx79 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx79, i32 0, i64 %idxprom77
  %safe81 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx80, i32 0, i32 0
  %64 = load i32, i32* %safe81, align 4
  %sub82 = sub nsw i32 %call75, %64
  %65 = load i32, i32* %score, align 4
  %sub83 = sub nsw i32 %65, %sub82
  store i32 %sub83, i32* %score, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.73, %if.end.70
  %66 = load i32, i32* %col, align 4
  %add85 = add nsw i32 %66, 1
  %67 = load i32, i32* %vert_play, align 4
  %idxprom86 = sext i32 %67 to i64
  %arrayidx87 = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom86
  %68 = load i32, i32* %arrayidx87, align 4
  %cmp88 = icmp ne i32 %add85, %68
  br i1 %cmp88, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %if.end.84
  %69 = load i32, i32* %vert_play, align 4
  %70 = load i32, i32* %col, align 4
  %add90 = add nsw i32 %70, 2
  %call91 = call i32 @count_safe(i32 %69, i32 %add90)
  %71 = load i32, i32* %col, align 4
  %add92 = add nsw i32 %71, 2
  %idxprom93 = sext i32 %add92 to i64
  %72 = load i32, i32* %vert_play, align 4
  %idxprom94 = sext i32 %72 to i64
  %arrayidx95 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], [2 x [32 x %struct.Basic_Info]]* @g_info, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [32 x %struct.Basic_Info], [32 x %struct.Basic_Info]* %arrayidx95, i32 0, i64 %idxprom93
  %safe97 = getelementptr inbounds %struct.Basic_Info, %struct.Basic_Info* %arrayidx96, i32 0, i32 0
  %73 = load i32, i32* %safe97, align 4
  %sub98 = sub nsw i32 %call91, %73
  %74 = load i32, i32* %score, align 4
  %sub99 = sub nsw i32 %74, %sub98
  store i32 %sub99, i32* %score, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.89, %if.end.84
  %75 = load i32, i32* %col, align 4
  %shl101 = shl i32 3, %75
  %76 = load i32, i32* %row, align 4
  %idxprom102 = sext i32 %76 to i64
  %77 = load i32, i32* %horz_play, align 4
  %idxprom103 = sext i32 %77 to i64
  %arrayidx104 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx104, i32 0, i64 %idxprom102
  %78 = load i32, i32* %arrayidx105, align 4
  %xor106 = xor i32 %78, %shl101
  store i32 %xor106, i32* %arrayidx105, align 4
  %79 = load i32, i32* %row, align 4
  %shl107 = shl i32 1, %79
  %80 = load i32, i32* %col, align 4
  %idxprom108 = sext i32 %80 to i64
  %81 = load i32, i32* %vert_play, align 4
  %idxprom109 = sext i32 %81 to i64
  %arrayidx110 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx110, i32 0, i64 %idxprom108
  %82 = load i32, i32* %arrayidx111, align 4
  %xor112 = xor i32 %82, %shl107
  store i32 %xor112, i32* %arrayidx111, align 4
  %83 = load i32, i32* %row, align 4
  %shl113 = shl i32 1, %83
  %84 = load i32, i32* %col, align 4
  %add114 = add nsw i32 %84, 1
  %idxprom115 = sext i32 %add114 to i64
  %85 = load i32, i32* %vert_play, align 4
  %idxprom116 = sext i32 %85 to i64
  %arrayidx117 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx117, i32 0, i64 %idxprom115
  %86 = load i32, i32* %arrayidx118, align 4
  %xor119 = xor i32 %86, %shl113
  store i32 %xor119, i32* %arrayidx118, align 4
  %87 = load i32, i32* %score, align 4
  %mul = mul nsw i32 %87, 128
  store i32 %mul, i32* %score, align 4
  %88 = load i32, i32* %col, align 4
  %idxprom120 = sext i32 %88 to i64
  %89 = load i32, i32* %row, align 4
  %idxprom121 = sext i32 %89 to i64
  %90 = load i32, i32* %player.addr, align 4
  %idxprom122 = sext i32 %90 to i64
  %arrayidx123 = getelementptr inbounds [2 x [32 x [32 x i32]]], [2 x [32 x [32 x i32]]]* @g_first_move, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx123, i32 0, i64 %idxprom121
  %arrayidx125 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx124, i32 0, i64 %idxprom120
  %91 = load i32, i32* %arrayidx125, align 4
  %92 = load i32, i32* %score, align 4
  %add126 = add nsw i32 %92, %91
  store i32 %add126, i32* %score, align 4
  %93 = load i32, i32* %score, align 4
  ret i32 %93
}

declare void @_fatal_error_aux(i8*, i32, i32, i8*, ...) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @count_safe(i32 %player, i32 %row) #1 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %guard = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %1 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx2, align 4
  %3 = load i32, i32* %row.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom3 = sext i32 %add to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx6, align 4
  %and = and i32 %2, %5
  store i32 %and, i32* %guard, align 4
  %6 = load i32, i32* %row.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %player.addr, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx9, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx10, align 4
  %9 = load i32, i32* %row.addr, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i32, i32* %player.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx14, align 4
  %shl = shl i32 %11, 1
  %or = or i32 %8, %shl
  %neg = xor i32 %or, -1
  %12 = load i32, i32* %guard, align 4
  %13 = load i32, i32* %guard, align 4
  %shl15 = shl i32 %13, 1
  %and16 = and i32 %12, %shl15
  %and17 = and i32 %neg, %and16
  store i32 %and17, i32* %mask, align 4
  %14 = load i32, i32* %mask, align 4
  %call = call i32 @COUNTMOVES(i32 %14)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @COUNTMOVES(i32 %mask) #1 {
entry:
  %mask.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %mask.addr, align 4
  %and = and i32 %0, 65535
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* @move_table16, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %count, align 4
  %2 = load i32, i32* %count, align 4
  %and1 = and i32 %2, -268435456
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %count, align 4
  %and2 = and i32 %3, 65535
  %4 = load i32, i32* %mask.addr, align 4
  %shr = lshr i32 %4, 16
  %idxprom3 = zext i32 %shr to i64
  %arrayidx4 = getelementptr inbounds [65536 x i32], [65536 x i32]* @move_table16, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %and2, %5
  %and5 = and i32 %add, 65534
  store i32 %and5, i32* %count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %count, align 4
  %7 = load i32, i32* %mask.addr, align 4
  %shr6 = lshr i32 %7, 16
  %idxprom7 = zext i32 %shr6 to i64
  %arrayidx8 = getelementptr inbounds [65536 x i32], [65536 x i32]* @move_table16, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %6, %8
  %and10 = and i32 %add9, 65535
  store i32 %and10, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %count, align 4
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @count_real(i32 %player, i32 %row) #1 {
entry:
  %player.addr = alloca i32, align 4
  %row.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  store i32 %row, i32* %row.addr, align 4
  %0 = load i32, i32* %row.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %player.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx2, align 4
  %3 = load i32, i32* %row.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %4 = load i32, i32* %player.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx5, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx6, align 4
  %shl = shl i32 %5, 1
  %or = or i32 %2, %shl
  %neg = xor i32 %or, -1
  store i32 %neg, i32* %mask, align 4
  %6 = load i32, i32* %mask, align 4
  %call = call i32 @COUNTMOVES(i32 %6)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
