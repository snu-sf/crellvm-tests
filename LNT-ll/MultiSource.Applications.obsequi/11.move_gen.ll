; ModuleID = './MultiSource.Applications.obsequi/11.move_gen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Move = type { i32, i32, i32 }

@g_board_size = external global [2 x i32], align 4
@g_board = external global [2 x [32 x i32]], align 16
@lastbit16 = external global [65536 x i32], align 16

; Function Attrs: nounwind uwtable
define i32 @move_generator(%struct.Move* %movelist, i32 %player) #0 {
entry:
  %movelist.addr = alloca %struct.Move*, align 8
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %player_index = alloca i32, align 4
  %prot_rows = alloca i32, align 4
  %curr_row = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.Move* %movelist, %struct.Move** %movelist.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %player.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %player_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player_index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player_index, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 2
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player_index, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %6, %9
  store i32 %and9, i32* %prot_rows, align 4
  %10 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add10 to i64
  %11 = load i32, i32* %player_index, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx14, align 4
  store i32 %12, i32* %curr_row, align 4
  %13 = load i32, i32* %curr_row, align 4
  %14 = load i32, i32* %curr_row, align 4
  %shr = lshr i32 %14, 1
  %or = or i32 %13, %shr
  %15 = load i32, i32* %prot_rows, align 4
  %16 = load i32, i32* %prot_rows, align 4
  %shr15 = lshr i32 %16, 1
  %and16 = and i32 %15, %shr15
  %or17 = or i32 %or, %and16
  %neg = xor i32 %or17, -1
  store i32 %neg, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %17 = load i32, i32* %m, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %m, align 4
  %19 = load i32, i32* %m, align 4
  %sub = sub i32 0, %19
  %and18 = and i32 %18, %sub
  store i32 %and18, i32* %tmp, align 4
  %20 = load i32, i32* %tmp, align 4
  %21 = load i32, i32* %m, align 4
  %xor = xor i32 %21, %20
  store i32 %xor, i32* %m, align 4
  %22 = load i32, i32* %tmp, align 4
  %call = call i32 @lastbit32(i32 %22)
  %23 = load i32, i32* %count, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.Move, %struct.Move* %24, i64 %idxprom19
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx20, i32 0, i32 1
  store i32 %call, i32* %mask_index, align 4
  %25 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %25, 1
  %26 = load i32, i32* %count, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.Move, %struct.Move* %27, i64 %idxprom22
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx23, i32 0, i32 0
  store i32 %add21, i32* %array_index, align 4
  %28 = load i32, i32* %count, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.Move, %struct.Move* %29, i64 %idxprom24
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx25, i32 0, i32 2
  store i32 0, i32* %info, align 4
  %30 = load i32, i32* %count, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %31 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %count, align 4
  ret i32 %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lastbit32(i32 %x) #1 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %and = and i32 %0, 65535
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %and1 = and i32 %1, 65535
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %x.addr, align 4
  %and2 = and i32 %3, -65536
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %4 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %4, 16
  %and5 = and i32 %shr, 65535
  %idxprom6 = zext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds [65536 x i32], [65536 x i32]* @lastbit16, i32 0, i64 %idxprom6
  %5 = load i32, i32* %arrayidx7, align 4
  %add = add nsw i32 %5, 16
  store i32 %add, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  store i32 100, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @move_generator_stage1(%struct.Move* %movelist, i32 %player) #0 {
entry:
  %movelist.addr = alloca %struct.Move*, align 8
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %player_index = alloca i32, align 4
  %prot_rows = alloca i32, align 4
  %curr_row = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.Move* %movelist, %struct.Move** %movelist.addr, align 8
  store i32 %player, i32* %player.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* %player.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %player_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player_index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player_index, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 2
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player_index, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %6, %9
  store i32 %and9, i32* %prot_rows, align 4
  %10 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add10 to i64
  %11 = load i32, i32* %player_index, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx14, align 4
  store i32 %12, i32* %curr_row, align 4
  %13 = load i32, i32* %curr_row, align 4
  %14 = load i32, i32* %curr_row, align 4
  %shr = lshr i32 %14, 1
  %or = or i32 %13, %shr
  %15 = load i32, i32* %prot_rows, align 4
  %16 = load i32, i32* %prot_rows, align 4
  %shr15 = lshr i32 %16, 1
  %or16 = or i32 %15, %shr15
  %or17 = or i32 %or, %or16
  %neg = xor i32 %or17, -1
  store i32 %neg, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %17 = load i32, i32* %m, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %m, align 4
  %19 = load i32, i32* %m, align 4
  %sub = sub i32 0, %19
  %and18 = and i32 %18, %sub
  store i32 %and18, i32* %tmp, align 4
  %20 = load i32, i32* %tmp, align 4
  %21 = load i32, i32* %m, align 4
  %xor = xor i32 %21, %20
  store i32 %xor, i32* %m, align 4
  %22 = load i32, i32* %tmp, align 4
  %call = call i32 @lastbit32(i32 %22)
  %23 = load i32, i32* %count, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.Move, %struct.Move* %24, i64 %idxprom19
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx20, i32 0, i32 1
  store i32 %call, i32* %mask_index, align 4
  %25 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %25, 1
  %26 = load i32, i32* %count, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.Move, %struct.Move* %27, i64 %idxprom22
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx23, i32 0, i32 0
  store i32 %add21, i32* %array_index, align 4
  %28 = load i32, i32* %count, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.Move, %struct.Move* %29, i64 %idxprom24
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx25, i32 0, i32 2
  store i32 0, i32* %info, align 4
  %30 = load i32, i32* %count, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %31 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %count, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @move_generator_stage2(%struct.Move* %movelist, i32 %count, i32 %player) #0 {
entry:
  %movelist.addr = alloca %struct.Move*, align 8
  %count.addr = alloca i32, align 4
  %player.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %player_index = alloca i32, align 4
  %prot_rows = alloca i32, align 4
  %curr_row = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.Move* %movelist, %struct.Move** %movelist.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %player_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %player_index, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player_index, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 2
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player_index, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %6, %9
  store i32 %and9, i32* %prot_rows, align 4
  %10 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %10, 1
  %idxprom11 = sext i32 %add10 to i64
  %11 = load i32, i32* %player_index, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx14, align 4
  store i32 %12, i32* %curr_row, align 4
  %13 = load i32, i32* %curr_row, align 4
  %14 = load i32, i32* %curr_row, align 4
  %shr = lshr i32 %14, 1
  %or = or i32 %13, %shr
  %15 = load i32, i32* %prot_rows, align 4
  %16 = load i32, i32* %prot_rows, align 4
  %shr15 = lshr i32 %16, 1
  %xor = xor i32 %15, %shr15
  %neg = xor i32 %xor, -1
  %or16 = or i32 %or, %neg
  %neg17 = xor i32 %or16, -1
  store i32 %neg17, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %17 = load i32, i32* %m, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %m, align 4
  %19 = load i32, i32* %m, align 4
  %sub = sub i32 0, %19
  %and18 = and i32 %18, %sub
  store i32 %and18, i32* %tmp, align 4
  %20 = load i32, i32* %tmp, align 4
  %21 = load i32, i32* %m, align 4
  %xor19 = xor i32 %21, %20
  store i32 %xor19, i32* %m, align 4
  %22 = load i32, i32* %tmp, align 4
  %call = call i32 @lastbit32(i32 %22)
  %23 = load i32, i32* %count.addr, align 4
  %idxprom20 = sext i32 %23 to i64
  %24 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.Move, %struct.Move* %24, i64 %idxprom20
  %mask_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx21, i32 0, i32 1
  store i32 %call, i32* %mask_index, align 4
  %25 = load i32, i32* %i, align 4
  %add22 = add nsw i32 %25, 1
  %26 = load i32, i32* %count.addr, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.Move, %struct.Move* %27, i64 %idxprom23
  %array_index = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx24, i32 0, i32 0
  store i32 %add22, i32* %array_index, align 4
  %28 = load i32, i32* %count.addr, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.Move*, %struct.Move** %movelist.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.Move, %struct.Move* %29, i64 %idxprom25
  %info = getelementptr inbounds %struct.Move, %struct.Move* %arrayidx26, i32 0, i32 2
  store i32 0, i32* %info, align 4
  %30 = load i32, i32* %count.addr, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %31 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %count.addr, align 4
  ret i32 %32
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
