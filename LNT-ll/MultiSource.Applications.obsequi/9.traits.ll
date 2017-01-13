; ModuleID = './MultiSource.Applications.obsequi/9.traits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@trait_file = internal global %struct._IO_FILE* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"trait_file\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't open \22trait_file\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%c %15s :\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %2d :\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@g_board_size = external global [2 x i32], align 4
@g_board = external global [2 x [32 x i32]], align 16
@countbits16 = external global [65536 x i32], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @write_node_info(i64 %num_nodes, i32 %winner) #0 {
entry:
  %num_nodes.addr = alloca i64, align 8
  %winner.addr = alloca i32, align 4
  %num = alloca i32, align 4
  store i64 %num_nodes, i64* %num_nodes.addr, align 8
  store i32 %winner, i32* %winner.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @trait_file, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %4 = load i32, i32* %winner.addr, align 4
  %cmp5 = icmp eq i32 %4, 1
  %cond = select i1 %cmp5, i32 86, i32 72
  %5 = load i64, i64* %num_nodes.addr, align 8
  %call6 = call i8* @u64bit_to_string(i64 %5)
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %cond, i8* %call6)
  %6 = load i32, i32* %winner.addr, align 4
  %call8 = call i32 @tr_total_non_safe_moves(i32 %6)
  store i32 %call8, i32* %num, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %8 = load i32, i32* %num, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %winner.addr, align 4
  %xor = xor i32 %9, 1
  %call10 = call i32 @tr_total_non_safe_moves(i32 %xor)
  store i32 %call10, i32* %num, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %11 = load i32, i32* %num, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  %12 = load i32, i32* %winner.addr, align 4
  %call12 = call i32 @tr_non_safe_moves_a_little_touchy(i32 %12)
  store i32 %call12, i32* %num, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %14 = load i32, i32* %num, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %winner.addr, align 4
  %xor14 = xor i32 %15, 1
  %call15 = call i32 @tr_non_safe_moves_a_little_touchy(i32 %xor14)
  store i32 %call15, i32* %num, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %17 = load i32, i32* %num, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %17)
  %18 = load i32, i32* %winner.addr, align 4
  %call17 = call i32 @tr_non_safe_moves_no_touchy(i32 %18)
  store i32 %call17, i32* %num, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %20 = load i32, i32* %num, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %20)
  %21 = load i32, i32* %winner.addr, align 4
  %xor19 = xor i32 %21, 1
  %call20 = call i32 @tr_non_safe_moves_no_touchy(i32 %xor19)
  store i32 %call20, i32* %num, align 4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %23 = load i32, i32* %num, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %23)
  %call22 = call i32 @tr_total_empty_squares()
  store i32 %call22, i32* %num, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %25 = load i32, i32* %num, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %25)
  %26 = load i32, i32* %winner.addr, align 4
  %call24 = call i32 @tr_border_length_col(i32 %26)
  store i32 %call24, i32* %num, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %28 = load i32, i32* %num, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %28)
  %29 = load i32, i32* %winner.addr, align 4
  %call26 = call i32 @tr_border_length_row(i32 %29)
  store i32 %call26, i32* %num, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %31 = load i32, i32* %num, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @trait_file, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @u64bit_to_string(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @tr_total_non_safe_moves(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %mask2 = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %num_rows, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rows, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 2
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %and = and i32 %6, %9
  store i32 %and, i32* %mask1, align 4
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %10, 1
  %idxprom10 = sext i32 %add9 to i64
  %11 = load i32, i32* %player.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx13, align 4
  %neg = xor i32 %12, -1
  store i32 %neg, i32* %mask2, align 4
  %13 = load i32, i32* %mask1, align 4
  %shr = lshr i32 %13, 1
  %14 = load i32, i32* %mask1, align 4
  %and14 = and i32 %shr, %14
  %neg15 = xor i32 %and14, -1
  %15 = load i32, i32* %mask2, align 4
  %shr16 = lshr i32 %15, 1
  %16 = load i32, i32* %mask2, align 4
  %and17 = and i32 %shr16, %16
  %and18 = and i32 %neg15, %and17
  store i32 %and18, i32* %mask1, align 4
  %17 = load i32, i32* %mask1, align 4
  %and19 = and i32 %17, 65535
  %idxprom20 = zext i32 %and19 to i64
  %arrayidx21 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom20
  %18 = load i32, i32* %arrayidx21, align 4
  %19 = load i32, i32* %mask1, align 4
  %shr22 = lshr i32 %19, 16
  %and23 = and i32 %shr22, 65535
  %idxprom24 = zext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom24
  %20 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %18, %20
  %21 = load i32, i32* %count, align 4
  %add27 = add nsw i32 %21, %add26
  store i32 %add27, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %count, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @tr_non_safe_moves_a_little_touchy(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %mask2 = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %num_rows, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rows, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 2
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %or = or i32 %6, %9
  store i32 %or, i32* %mask1, align 4
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %10, 1
  %idxprom10 = sext i32 %add9 to i64
  %11 = load i32, i32* %player.addr, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx13, align 4
  store i32 %12, i32* %mask2, align 4
  %13 = load i32, i32* %mask1, align 4
  %shl = shl i32 %13, 1
  %14 = load i32, i32* %mask1, align 4
  %or14 = or i32 %shl, %14
  %15 = load i32, i32* %mask2, align 4
  %shr = lshr i32 %15, 1
  %or15 = or i32 %or14, %shr
  %16 = load i32, i32* %mask2, align 4
  %or16 = or i32 %or15, %16
  %17 = load i32, i32* %mask2, align 4
  %shl17 = shl i32 %17, 1
  %or18 = or i32 %or16, %shl17
  %18 = load i32, i32* %mask2, align 4
  %shl19 = shl i32 %18, 2
  %or20 = or i32 %or18, %shl19
  store i32 %or20, i32* %mask1, align 4
  %19 = load i32, i32* %mask1, align 4
  %neg = xor i32 %19, -1
  %and = and i32 %neg, 65535
  %idxprom21 = zext i32 %and to i64
  %arrayidx22 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %21 = load i32, i32* %mask1, align 4
  %neg23 = xor i32 %21, -1
  %shr24 = lshr i32 %neg23, 16
  %and25 = and i32 %shr24, 65535
  %idxprom26 = zext i32 %and25 to i64
  %arrayidx27 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %add28 = add nsw i32 %20, %22
  %23 = load i32, i32* %count, align 4
  %add29 = add nsw i32 %23, %add28
  store i32 %add29, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %count, align 4
  %cmp30 = icmp eq i32 %25, -1
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %26 = load i32, i32* %player.addr, align 4
  call void @print_board(i32 %26)
  %27 = load i32, i32* %player.addr, align 4
  %28 = load i32, i32* %count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %27, i32 %28)
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %for.end
  %29 = load i32, i32* %count, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @tr_non_safe_moves_no_touchy(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @tr_border_length_col(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %num_rows, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rows, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom5 = sext i32 %add to i64
  %8 = load i32, i32* %player.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx7, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx8, align 4
  %xor = xor i32 %6, %9
  store i32 %xor, i32* %mask, align 4
  %10 = load i32, i32* %mask, align 4
  %and = and i32 %10, 65535
  %idxprom9 = zext i32 %and to i64
  %arrayidx10 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %12 = load i32, i32* %mask, align 4
  %shr = lshr i32 %12, 16
  %and11 = and i32 %shr, 65535
  %idxprom12 = zext i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %add14 = add nsw i32 %11, %13
  %14 = load i32, i32* %count, align 4
  %add15 = add nsw i32 %14, %add14
  store i32 %add15, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %count, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @tr_border_length_row(i32 %player) #0 {
entry:
  %player.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %player, i32* %player.addr, align 4
  %0 = load i32, i32* %player.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @g_board_size, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %num_rows, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_rows, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom1 = sext i32 %add to i64
  %5 = load i32, i32* %player.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx4, align 4
  %shr = lshr i32 %6, 1
  %7 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %7, 1
  %idxprom6 = sext i32 %add5 to i64
  %8 = load i32, i32* %player.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %9 = load i32, i32* %arrayidx9, align 4
  %xor = xor i32 %shr, %9
  store i32 %xor, i32* %mask, align 4
  %10 = load i32, i32* %mask, align 4
  %and = and i32 %10, 2147483647
  store i32 %and, i32* %mask, align 4
  %11 = load i32, i32* %mask, align 4
  %and10 = and i32 %11, 65535
  %idxprom11 = zext i32 %and10 to i64
  %arrayidx12 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  %13 = load i32, i32* %mask, align 4
  %shr13 = lshr i32 %13, 16
  %and14 = and i32 %shr13, 65535
  %idxprom15 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %add17 = add nsw i32 %12, %14
  %15 = load i32, i32* %count, align 4
  %add18 = add nsw i32 %15, %add17
  store i32 %add18, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %count, align 4
  ret i32 %17
}

declare void @print_board(i32) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tr_total_empty_squares() #0 {
entry:
  %mask = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_board_size, i32 0, i64 0), align 4
  store i32 %0, i32* %num_rows, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_rows, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* getelementptr inbounds ([2 x [32 x i32]], [2 x [32 x i32]]* @g_board, i32 0, i64 0), i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %neg = xor i32 %4, -1
  store i32 %neg, i32* %mask, align 4
  %5 = load i32, i32* %mask, align 4
  %and = and i32 %5, 65535
  %idxprom1 = zext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32, i32* %mask, align 4
  %shr = lshr i32 %7, 16
  %and3 = and i32 %shr, 65535
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [65536 x i32], [65536 x i32]* @countbits16, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %6, %8
  %9 = load i32, i32* %count, align 4
  %add7 = add nsw i32 %9, %add6
  store i32 %add7, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %count, align 4
  ret i32 %11
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
