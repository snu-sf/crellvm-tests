; ModuleID = 'neval.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_p_tropism = constant [8 x i32] [i32 9999, i32 15, i32 10, i32 7, i32 2, i32 0, i32 0, i32 0], align 16
@std_own_p_tropism = constant [8 x i32] [i32 9999, i32 30, i32 10, i32 2, i32 0, i32 0, i32 0, i32 0], align 16
@std_r_tropism = constant [16 x i32] [i32 9999, i32 0, i32 15, i32 5, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@std_n_tropism = constant [8 x i32] [i32 9999, i32 14, i32 9, i32 6, i32 1, i32 0, i32 0, i32 0], align 16
@std_q_tropism = constant [8 x i32] [i32 9999, i32 200, i32 50, i32 15, i32 3, i32 2, i32 1, i32 0], align 16
@std_b_tropism = constant [8 x i32] [i32 9999, i32 12, i32 7, i32 5, i32 0, i32 0, i32 0, i32 0], align 16
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@board = external global [144 x i32], align 16
@white_castled = external global i32, align 4
@black_castled = external global i32, align 4
@phase = external global i32, align 4
@Xfile = external constant [144 x i32], align 16
@king_locs = common global [2 x i32] zeroinitializer, align 4
@distance = common global [144 x [144 x i32]] zeroinitializer, align 16
@Rook.square_d1 = internal constant [2 x i32] [i32 29, i32 113], align 4
@rookdistance = common global [144 x [144 x i32]] zeroinitializer, align 16
@wmat = common global i32 0, align 4
@bmat = common global i32 0, align 4
@sbishop = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 2, i32 5, i32 4, i32 4, i32 5, i32 2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 3, i32 3, i32 5, i32 5, i32 3, i32 3, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 8, i32 5, i32 5, i32 5, i32 5, i32 8, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sknight = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 10, i32 10, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 5, i32 5, i32 5, i32 5, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [35 x i8] c"Illegal piece detected sq=%i c=%i\0A\00", align 1
@white_to_move = external global i32, align 4
@Material = external global i32, align 4
@maxposdiff = common global i32 0, align 4
@wking_loc = external global i32, align 4
@bking_loc = external global i32, align 4
@material = external global [14 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@evalRoutines = internal global [7 x i32 (i32, i32)*] [i32 (i32, i32)* @ErrorIt, i32 (i32, i32)* @Pawn, i32 (i32, i32)* @Knight, i32 (i32, i32)* @King, i32 (i32, i32)* @Rook, i32 (i32, i32)* @Queen, i32 (i32, i32)* @Bishop], align 16
@swhite_pawn = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_pawn = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 22, i32 24, i32 26, i32 26, i32 24, i32 22, i32 20, i32 0, i32 0, i32 0, i32 0, i32 10, i32 12, i32 14, i32 16, i32 16, i32 14, i32 12, i32 10, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 14, i32 14, i32 9, i32 6, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 12, i32 12, i32 6, i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 10, i32 10, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@swhite_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@moved = external global [144 x i32], align 16
@send_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 25, i32 50, i32 50, i32 25, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 10, i32 25, i32 25, i32 25, i32 25, i32 10, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -3, i32 -1, i32 0, i32 0, i32 -1, i32 -3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sblack_king = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -55, i32 -55, i32 -89, i32 -89, i32 -89, i32 -89, i32 -55, i32 -55, i32 0, i32 0, i32 0, i32 0, i32 -34, i32 -34, i32 -55, i32 -55, i32 -55, i32 -55, i32 -34, i32 -34, i32 0, i32 0, i32 0, i32 0, i32 -21, i32 -21, i32 -34, i32 -34, i32 -34, i32 -34, i32 -21, i32 -21, i32 0, i32 0, i32 0, i32 0, i32 -13, i32 -13, i32 -21, i32 -21, i32 -21, i32 -21, i32 -13, i32 -13, i32 0, i32 0, i32 0, i32 0, i32 -8, i32 -8, i32 -13, i32 -13, i32 -13, i32 -13, i32 -8, i32 -8, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -8, i32 -8, i32 -8, i32 -8, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -3, i32 -5, i32 -6, i32 -6, i32 -6, i32 -6, i32 -5, i32 -3, i32 0, i32 0, i32 0, i32 0, i32 2, i32 14, i32 0, i32 0, i32 0, i32 9, i32 14, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@srev_rank = internal constant [9 x i32] [i32 0, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 16
@rook_mobility.dir = internal constant [4 x i32] [i32 -1, i32 1, i32 12, i32 -12], align 16
@bishop_mobility.dir = internal constant [4 x i32] [i32 -13, i32 -11, i32 11, i32 13], align 16

; Function Attrs: nounwind uwtable
define void @check_phase() #0 {
entry:
  %xnum_pieces = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %xnum_pieces, align 4
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* @piece_count, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* %a, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %7, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %9, 2
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.17

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp ne i32 %11, 13
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.17

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp ne i32 %13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.11
  %14 = load i32, i32* %xnum_pieces, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %xnum_pieces, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17, %if.then
  %15 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %xnum_pieces, align 4
  %cmp19 = icmp sge i32 %16, 12
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.28

land.lhs.true.20:                                 ; preds = %for.end
  %17 = load i32, i32* @white_castled, align 4
  %tobool21 = icmp ne i32 %17, 0
  br i1 %tobool21, label %lor.lhs.false, label %land.lhs.true.23

lor.lhs.false:                                    ; preds = %land.lhs.true.20
  %18 = load i32, i32* @black_castled, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %if.else.28, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %lor.lhs.false, %land.lhs.true.20
  %19 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 30), align 4
  %cmp24 = icmp eq i32 %19, 5
  br i1 %cmp24, label %if.then.27, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.23
  %20 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 114), align 4
  %cmp26 = icmp eq i32 %20, 6
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %lor.lhs.false.25, %land.lhs.true.23
  store i32 0, i32* @phase, align 4
  br label %if.end.33

if.else.28:                                       ; preds = %lor.lhs.false.25, %lor.lhs.false, %for.end
  %21 = load i32, i32* %xnum_pieces, align 4
  %cmp29 = icmp sle i32 %21, 6
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.28
  store i32 2, i32* @phase, align 4
  br label %if.end.32

if.else.31:                                       ; preds = %if.else.28
  store i32 1, i32* @phase, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.27
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @King(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %sq.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %1, 6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %sq.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %3, 1
  %shr = ashr i32 %add, 1
  %cmp3 = icmp eq i32 %shr, 4
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %sq.addr, align 4
  %sub5 = sub nsw i32 %4, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom6
  %5 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %5, 1
  %and = and i32 %add8, 1
  %6 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp eq i32 %and, %6
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  %7 = load i32, i32* %s, align 4
  %add10 = add nsw i32 %7, 2
  store i32 %add10, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %land.lhs.true, %entry
  %8 = load i32, i32* %sq.addr, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sge i32 %9, 6
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.30

land.lhs.true.14:                                 ; preds = %if.end
  %10 = load i32, i32* %sq.addr, align 4
  %add15 = add nsw i32 %10, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom16
  %11 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %11, 1
  %shr19 = ashr i32 %add18, 1
  %cmp20 = icmp eq i32 %shr19, 4
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.30

land.lhs.true.21:                                 ; preds = %land.lhs.true.14
  %12 = load i32, i32* %sq.addr, align 4
  %add22 = add nsw i32 %12, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %13 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %13, 1
  %and26 = and i32 %add25, 1
  %14 = load i32, i32* %c.addr, align 4
  %cmp27 = icmp eq i32 %and26, %14
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.21
  %15 = load i32, i32* %s, align 4
  %add29 = add nsw i32 %15, 2
  store i32 %add29, i32* %s, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true.21, %land.lhs.true.14, %if.end
  %16 = load i32, i32* %c.addr, align 4
  %cmp31 = icmp eq i32 %16, 1
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.30
  %17 = load i32, i32* %s, align 4
  %sub33 = sub nsw i32 0, %17
  store i32 %sub33, i32* %s, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.end.30
  %18 = load i32, i32* %s, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @Queen(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %mob = alloca i32, align 4
  %xside = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %0, 1
  store i32 %xor, i32* %xside, align 4
  %1 = load i32, i32* %s, align 4
  %add = add nsw i32 %1, 900
  store i32 %add, i32* %s, align 4
  %2 = load i32, i32* %xside, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %sq.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @std_q_tropism, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %s, align 4
  %add7 = add nsw i32 %7, %6
  store i32 %add7, i32* %s, align 4
  %8 = load i32, i32* %sq.addr, align 4
  %call = call i32 @rook_mobility(i32 %8)
  %shl = shl i32 %call, 1
  store i32 %shl, i32* %mob, align 4
  %9 = load i32, i32* %sq.addr, align 4
  %call8 = call i32 @bishop_mobility(i32 %9)
  %shl9 = shl i32 %call8, 1
  %10 = load i32, i32* %mob, align 4
  %add10 = add nsw i32 %10, %shl9
  store i32 %add10, i32* %mob, align 4
  %11 = load i32, i32* %mob, align 4
  %cmp = icmp sle i32 %11, 4
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %mob, align 4
  %cmp11 = icmp eq i32 %12, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %13 = load i32, i32* %mob, align 4
  %sub = sub nsw i32 %13, 15
  store i32 %sub, i32* %mob, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %14 = load i32, i32* %mob, align 4
  %cmp13 = icmp eq i32 %14, 2
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.else
  %15 = load i32, i32* %mob, align 4
  %sub15 = sub nsw i32 %15, 10
  store i32 %sub15, i32* %mob, align 4
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %16 = load i32, i32* %mob, align 4
  %sub17 = sub nsw i32 %16, 5
  store i32 %sub17, i32* %mob, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  %17 = load i32, i32* %mob, align 4
  %18 = load i32, i32* %s, align 4
  %add20 = add nsw i32 %18, %17
  store i32 %add20, i32* %s, align 4
  %19 = load i32, i32* %c.addr, align 4
  %cmp21 = icmp eq i32 %19, 1
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %20 = load i32, i32* %s, align 4
  %sub23 = sub nsw i32 0, %20
  store i32 %sub23, i32* %s, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %21 = load i32, i32* %s, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @rook_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %diridx = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  store i32 0, i32* %diridx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %diridx, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %square.addr, align 4
  %2 = load i32, i32* %diridx, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @rook_mobility.dir, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %l, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %5, 13
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %m, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %m, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %7 = load i32, i32* %diridx, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* @rook_mobility.dir, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %9, %8
  store i32 %add8, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %10 = load i32, i32* %diridx, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %diridx, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %11 = load i32, i32* %m, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @bishop_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %diridx = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  store i32 0, i32* %diridx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %diridx, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %square.addr, align 4
  %2 = load i32, i32* %diridx, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @bishop_mobility.dir, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  store i32 %add, i32* %l, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %l, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %5, 13
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %m, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %m, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %7 = load i32, i32* %diridx, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* @bishop_mobility.dir, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %9, %8
  store i32 %add8, i32* %l, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %10 = load i32, i32* %diridx, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %diridx, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %11 = load i32, i32* %m, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @Rook(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %mob = alloca i32, align 4
  %xside = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %0, 1
  store i32 %xor, i32* %xside, align 4
  %1 = load i32, i32* %s, align 4
  %add = add nsw i32 %1, 500
  store i32 %add, i32* %s, align 4
  %2 = load i32, i32* %xside, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %sq.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @rookdistance, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* @std_r_tropism, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %s, align 4
  %add7 = add nsw i32 %7, %6
  store i32 %add7, i32* %s, align 4
  %8 = load i32, i32* %sq.addr, align 4
  %call = call i32 @rook_mobility(i32 %8)
  %shl = shl i32 %call, 1
  store i32 %shl, i32* %mob, align 4
  %9 = load i32, i32* %mob, align 4
  %cmp = icmp sle i32 %9, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %mob, align 4
  %sub = sub nsw i32 %10, 5
  store i32 %sub, i32* %mob, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %mob, align 4
  %12 = load i32, i32* %s, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, i32* %s, align 4
  %13 = load i32, i32* %sq.addr, align 4
  %sub9 = sub nsw i32 %13, 1
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp ne i32 %14, 13
  br i1 %cmp12, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, i32* %sq.addr, align 4
  %add13 = add nsw i32 %15, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp ne i32 %16, 13
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %land.lhs.true
  %17 = load i32, i32* %s, align 4
  %sub18 = sub nsw i32 %17, 5
  store i32 %sub18, i32* %s, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true, %if.end
  %18 = load i32, i32* @wmat, align 4
  %cmp20 = icmp ne i32 %18, 1300
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %19 = load i32, i32* @bmat, align 4
  %cmp21 = icmp ne i32 %19, 1300
  br i1 %cmp21, label %if.then.22, label %if.end.54

if.then.22:                                       ; preds = %lor.lhs.false, %if.end.19
  %20 = load i32, i32* %sq.addr, align 4
  %21 = load i32, i32* %c.addr, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i32 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %20, %22
  br i1 %cmp25, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %if.then.22
  %23 = load i32, i32* %s, align 4
  %add27 = add nsw i32 %23, 10
  store i32 %add27, i32* %s, align 4
  %24 = load i32, i32* %c.addr, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i32 0, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %25, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom31
  %26 = load i32, i32* %arrayidx32, align 4
  %add33 = add nsw i32 %26, 1
  %shr = ashr i32 %add33, 1
  %cmp34 = icmp eq i32 %shr, 4
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.45

land.lhs.true.35:                                 ; preds = %if.then.26
  %27 = load i32, i32* %c.addr, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i32 0, i64 %idxprom36
  %28 = load i32, i32* %arrayidx37, align 4
  %add38 = add nsw i32 %28, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom39
  %29 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %29, 1
  %and = and i32 %add41, 1
  %30 = load i32, i32* %c.addr, align 4
  %cmp42 = icmp eq i32 %and, %30
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.35
  %31 = load i32, i32* %s, align 4
  %add44 = add nsw i32 %31, 5
  store i32 %add44, i32* %s, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.35, %if.then.26
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.22
  %32 = load i32, i32* %sq.addr, align 4
  %33 = load i32, i32* %c.addr, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds [2 x i32], [2 x i32]* @Rook.square_d1, i32 0, i64 %idxprom47
  %34 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %34, 1
  %cmp50 = icmp eq i32 %32, %add49
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.46
  %35 = load i32, i32* %s, align 4
  %add52 = add nsw i32 %35, 10
  store i32 %add52, i32* %s, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %lor.lhs.false
  %36 = load i32, i32* %c.addr, align 4
  %cmp55 = icmp eq i32 %36, 1
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %37 = load i32, i32* %s, align 4
  %sub57 = sub nsw i32 0, %37
  store i32 %sub57, i32* %s, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %38 = load i32, i32* %s, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define i32 @Bishop(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %mob = alloca i32, align 4
  %xside = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %0, 1
  store i32 %xor, i32* %xside, align 4
  %1 = load i32, i32* %s, align 4
  %add = add nsw i32 %1, 325
  store i32 %add, i32* %s, align 4
  %2 = load i32, i32* %sq.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @sbishop, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %s, align 4
  %add1 = add nsw i32 %4, %3
  store i32 %add1, i32* %s, align 4
  %5 = load i32, i32* %xside, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %sq.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx6, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @std_b_tropism, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* %s, align 4
  %add10 = add nsw i32 %10, %9
  store i32 %add10, i32* %s, align 4
  %11 = load i32, i32* %sq.addr, align 4
  %call = call i32 @bishop_mobility(i32 %11)
  %shl = shl i32 %call, 1
  store i32 %shl, i32* %mob, align 4
  %12 = load i32, i32* %mob, align 4
  %cmp = icmp sle i32 %12, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %mob, align 4
  %sub = sub nsw i32 %13, 5
  store i32 %sub, i32* %mob, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %mob, align 4
  %15 = load i32, i32* %s, align 4
  %add11 = add nsw i32 %15, %14
  store i32 %add11, i32* %s, align 4
  %16 = load i32, i32* %c.addr, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %sq.addr, align 4
  %cmp13 = icmp eq i32 %17, 39
  br i1 %cmp13, label %land.lhs.true.14, label %lor.lhs.false

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %18 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 52), align 4
  %cmp15 = icmp eq i32 %18, 1
  br i1 %cmp15, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14, %land.lhs.true, %if.end
  %19 = load i32, i32* %c.addr, align 4
  %cmp16 = icmp eq i32 %19, 1
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.23

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %20 = load i32, i32* %sq.addr, align 4
  %cmp18 = icmp eq i32 %20, 99
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %21 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 88), align 4
  %cmp20 = icmp eq i32 %21, 2
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.19, %land.lhs.true.14
  %22 = load i32, i32* %s, align 4
  %sub22 = sub nsw i32 %22, 5
  store i32 %sub22, i32* %s, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.19, %land.lhs.true.17, %lor.lhs.false
  %23 = load i32, i32* %c.addr, align 4
  %cmp24 = icmp eq i32 %23, 1
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.23
  %24 = load i32, i32* %s, align 4
  %sub26 = sub nsw i32 0, %24
  store i32 %sub26, i32* %s, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.23
  %25 = load i32, i32* %s, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @Knight(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %xside = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %0, 1
  store i32 %xor, i32* %xside, align 4
  %1 = load i32, i32* %s, align 4
  %add = add nsw i32 %1, 310
  store i32 %add, i32* %s, align 4
  %2 = load i32, i32* %sq.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @sknight, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %s, align 4
  %add1 = add nsw i32 %4, %3
  store i32 %add1, i32* %s, align 4
  %5 = load i32, i32* %xside, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %sq.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx6, i32 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* @std_n_tropism, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %10 = load i32, i32* %s, align 4
  %add10 = add nsw i32 %10, %9
  store i32 %add10, i32* %s, align 4
  %11 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %s, align 4
  %sub = sub nsw i32 0, %12
  store i32 %sub, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %s, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @Pawn(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %xside = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 0, i32* %s, align 4
  %0 = load i32, i32* %c.addr, align 4
  %xor = xor i32 %0, 1
  store i32 %xor, i32* %xside, align 4
  %1 = load i32, i32* %s, align 4
  %add = add nsw i32 %1, 100
  store i32 %add, i32* %s, align 4
  %2 = load i32, i32* %xside, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %sq.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* @std_p_tropism, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %7 = load i32, i32* %s, align 4
  %add7 = add nsw i32 %7, %6
  store i32 %add7, i32* %s, align 4
  %8 = load i32, i32* %c.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* @king_locs, i32 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %sq.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [144 x [144 x i32]], [144 x [144 x i32]]* @distance, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* @std_own_p_tropism, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %13 = load i32, i32* %s, align 4
  %add16 = add nsw i32 %13, %12
  store i32 %add16, i32* %s, align 4
  %14 = load i32, i32* %sq.addr, align 4
  %add17 = add nsw i32 %14, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom18
  %15 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %15, 1
  %shr = ashr i32 %add20, 1
  %cmp = icmp eq i32 %shr, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load i32, i32* %sq.addr, align 4
  %add21 = add nsw i32 %16, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom22
  %17 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %17, 1
  %and = and i32 %add24, 1
  %18 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp eq i32 %and, %18
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %s, align 4
  %add26 = add nsw i32 %19, 5
  store i32 %add26, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load i32, i32* %sq.addr, align 4
  %add27 = add nsw i32 %20, 11
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom28
  %21 = load i32, i32* %arrayidx29, align 4
  %add30 = add nsw i32 %21, 1
  %shr31 = ashr i32 %add30, 1
  %cmp32 = icmp eq i32 %shr31, 1
  br i1 %cmp32, label %land.lhs.true.33, label %if.else

land.lhs.true.33:                                 ; preds = %if.end
  %22 = load i32, i32* %sq.addr, align 4
  %add34 = add nsw i32 %22, 11
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom35
  %23 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %23, 1
  %and38 = and i32 %add37, 1
  %24 = load i32, i32* %c.addr, align 4
  %cmp39 = icmp eq i32 %and38, %24
  br i1 %cmp39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.33
  %25 = load i32, i32* %s, align 4
  %add41 = add nsw i32 %25, 1
  store i32 %add41, i32* %s, align 4
  br label %if.end.58

if.else:                                          ; preds = %land.lhs.true.33, %if.end
  %26 = load i32, i32* %sq.addr, align 4
  %add42 = add nsw i32 %26, 13
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom43
  %27 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %27, 1
  %shr46 = ashr i32 %add45, 1
  %cmp47 = icmp eq i32 %shr46, 1
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.57

land.lhs.true.48:                                 ; preds = %if.else
  %28 = load i32, i32* %sq.addr, align 4
  %add49 = add nsw i32 %28, 13
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom50
  %29 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %29, 1
  %and53 = and i32 %add52, 1
  %30 = load i32, i32* %c.addr, align 4
  %cmp54 = icmp eq i32 %and53, %30
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %land.lhs.true.48
  %31 = load i32, i32* %s, align 4
  %add56 = add nsw i32 %31, 1
  store i32 %add56, i32* %s, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true.48, %if.else
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.40
  %32 = load i32, i32* %c.addr, align 4
  %cmp59 = icmp eq i32 %32, 1
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %33 = load i32, i32* %s, align 4
  %sub = sub nsw i32 0, %33
  store i32 %sub, i32* %s, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %34 = load i32, i32* %s, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @ErrorIt(i32 %sq, i32 %c) #0 {
entry:
  %sq.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %sq, i32* %sq.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %sq.addr, align 4
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @std_eval(i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %pawn_file = alloca i32, align 4
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %srank = alloca i32, align 4
  %wking_pawn_file = alloca i32, align 4
  %bking_pawn_file = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca i32, align 4
  %isolated = alloca i32, align 4
  %backwards = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %wp = alloca i32, align 4
  %bp = alloca i32, align 4
  %wn = alloca i32, align 4
  %bn = alloca i32, align 4
  %wb = alloca i32, align 4
  %bb = alloca i32, align 4
  %wq = alloca i32, align 4
  %bq = alloca i32, align 4
  %wr = alloca i32, align 4
  %br = alloca i32, align 4
  %rbrook = alloca i32, align 4
  %fbrook = alloca i32, align 4
  %rwrook = alloca i32, align 4
  %fwrook = alloca i32, align 4
  %wpotential = alloca i32, align 4
  %bpotential = alloca i32, align 4
  %tmp = alloca i32, align 4
  %wksafety = alloca i32, align 4
  %bksafety = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 0, i32* %score, align 4
  %0 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* @Material, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @Material, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %sub, %cond.false ]
  %3 = load i32, i32* @maxposdiff, align 4
  %sub3 = sub nsw i32 %cond, %3
  %4 = load i32, i32* %beta.addr, align 4
  %cmp = icmp sge i32 %sub3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %5 = load i32, i32* @white_to_move, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %if.then
  %6 = load i32, i32* @Material, align 4
  br label %cond.end.8

cond.false.6:                                     ; preds = %if.then
  %7 = load i32, i32* @Material, align 4
  %sub7 = sub nsw i32 0, %7
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.6, %cond.true.5
  %cond9 = phi i32 [ %6, %cond.true.5 ], [ %sub7, %cond.false.6 ]
  %8 = load i32, i32* @maxposdiff, align 4
  %sub10 = sub nsw i32 %cond9, %8
  store i32 %sub10, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load i32, i32* @white_to_move, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %if.end
  %10 = load i32, i32* @Material, align 4
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.end
  %11 = load i32, i32* @Material, align 4
  %sub14 = sub nsw i32 0, %11
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i32 [ %10, %cond.true.12 ], [ %sub14, %cond.false.13 ]
  %12 = load i32, i32* @maxposdiff, align 4
  %add = add nsw i32 %cond16, %12
  %13 = load i32, i32* %alpha.addr, align 4
  %cmp17 = icmp sle i32 %add, %13
  br i1 %cmp17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %cond.end.15
  %14 = load i32, i32* @white_to_move, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.then.18
  %15 = load i32, i32* @Material, align 4
  br label %cond.end.23

cond.false.21:                                    ; preds = %if.then.18
  %16 = load i32, i32* @Material, align 4
  %sub22 = sub nsw i32 0, %16
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.21, %cond.true.20
  %cond24 = phi i32 [ %15, %cond.true.20 ], [ %sub22, %cond.false.21 ]
  %17 = load i32, i32* @maxposdiff, align 4
  %add25 = add nsw i32 %cond24, %17
  store i32 %add25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %cond.end.15
  store i32 0, i32* %in_cache, align 4
  call void @checkECache(i32* %score, i32* %in_cache)
  %18 = load i32, i32* %in_cache, align 4
  %tobool27 = icmp ne i32 %18, 0
  br i1 %tobool27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.end.26
  %19 = load i32, i32* @white_to_move, align 4
  %cmp29 = icmp eq i32 %19, 1
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.28
  %20 = load i32, i32* %score, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.28
  %21 = load i32, i32* %score, align 4
  %sub32 = sub nsw i32 0, %21
  store i32 %sub32, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.end.26
  %22 = bitcast [2 x [11 x i32]]* %pawns to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %23 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %23, 11
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom
  store i32 7, i32* %arrayidx, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom35
  store i32 2, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @wmat, align 4
  store i32 0, i32* @bmat, align 4
  %27 = load i32, i32* @wking_loc, align 4
  store i32 %27, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @king_locs, i32 0, i64 0), align 4
  %28 = load i32, i32* @bking_loc, align 4
  store i32 %28, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @king_locs, i32 0, i64 1), align 4
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.116, %for.end
  %29 = load i32, i32* %a, align 4
  %30 = load i32, i32* @piece_count, align 4
  %cmp38 = icmp sle i32 %29, %30
  br i1 %cmp38, label %for.body.39, label %for.end.118

for.body.39:                                      ; preds = %for.cond.37
  %31 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom40
  %32 = load i32, i32* %arrayidx41, align 4
  store i32 %32, i32* %i, align 4
  %33 = load i32, i32* %i, align 4
  %tobool42 = icmp ne i32 %33, 0
  br i1 %tobool42, label %if.else, label %if.then.43

if.then.43:                                       ; preds = %for.body.39
  br label %for.inc.116

if.else:                                          ; preds = %for.body.39
  %34 = load i32, i32* %a, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, i32* %a, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else
  %35 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom46
  %36 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %36, 1
  %shr = ashr i32 %add48, 1
  %cmp49 = icmp ne i32 %shr, 1
  br i1 %cmp49, label %land.lhs.true, label %if.end.73

land.lhs.true:                                    ; preds = %if.end.45
  %37 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom50
  %38 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %38, 1
  %shr53 = ashr i32 %add52, 1
  %cmp54 = icmp ne i32 %shr53, 3
  br i1 %cmp54, label %if.then.55, label %if.end.73

if.then.55:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %39 to i64
  %arrayidx57 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom56
  %40 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %40, 1
  %and = and i32 %add58, 1
  %cmp59 = icmp eq i32 %and, 0
  br i1 %cmp59, label %if.then.60, label %if.else.66

if.then.60:                                       ; preds = %if.then.55
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom61
  %42 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom63
  %43 = load i32, i32* %arrayidx64, align 4
  %44 = load i32, i32* @wmat, align 4
  %add65 = add nsw i32 %44, %43
  store i32 %add65, i32* @wmat, align 4
  br label %if.end.72

if.else.66:                                       ; preds = %if.then.55
  %45 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %45 to i64
  %arrayidx68 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom67
  %46 = load i32, i32* %arrayidx68, align 4
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom69
  %47 = load i32, i32* %arrayidx70, align 4
  %call = call i32 @abs(i32 %47) #4
  %48 = load i32, i32* @bmat, align 4
  %add71 = add nsw i32 %48, %call
  store i32 %add71, i32* @bmat, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.66, %if.then.60
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true, %if.end.45
  %49 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom74
  %50 = load i32, i32* %arrayidx75, align 4
  %add76 = add nsw i32 %50, 1
  %shr77 = ashr i32 %add76, 1
  %cmp78 = icmp eq i32 %shr77, 1
  br i1 %cmp78, label %if.then.79, label %if.end.115

if.then.79:                                       ; preds = %if.end.73
  %51 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %51 to i64
  %arrayidx81 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom80
  %52 = load i32, i32* %arrayidx81, align 4
  %add82 = add nsw i32 %52, 1
  store i32 %add82, i32* %pawn_file, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %53 to i64
  %arrayidx84 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom83
  %54 = load i32, i32* %arrayidx84, align 4
  store i32 %54, i32* %srank, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %55 to i64
  %arrayidx86 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom85
  %56 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %56, 1
  %and88 = and i32 %add87, 1
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %if.then.90, label %if.else.102

if.then.90:                                       ; preds = %if.then.79
  %57 = load i32, i32* %pawn_file, align 4
  %idxprom91 = sext i32 %57 to i64
  %arrayidx92 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx92, i32 0, i64 %idxprom91
  %58 = load i32, i32* %arrayidx93, align 4
  %inc94 = add nsw i32 %58, 1
  store i32 %inc94, i32* %arrayidx93, align 4
  %59 = load i32, i32* %srank, align 4
  %60 = load i32, i32* %pawn_file, align 4
  %idxprom95 = sext i32 %60 to i64
  %arrayidx96 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom95
  %61 = load i32, i32* %arrayidx96, align 4
  %cmp97 = icmp slt i32 %59, %61
  br i1 %cmp97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.then.90
  %62 = load i32, i32* %srank, align 4
  %63 = load i32, i32* %pawn_file, align 4
  %idxprom99 = sext i32 %63 to i64
  %arrayidx100 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom99
  store i32 %62, i32* %arrayidx100, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.then.90
  br label %if.end.114

if.else.102:                                      ; preds = %if.then.79
  %64 = load i32, i32* %pawn_file, align 4
  %idxprom103 = sext i32 %64 to i64
  %arrayidx104 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx105 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx104, i32 0, i64 %idxprom103
  %65 = load i32, i32* %arrayidx105, align 4
  %inc106 = add nsw i32 %65, 1
  store i32 %inc106, i32* %arrayidx105, align 4
  %66 = load i32, i32* %srank, align 4
  %67 = load i32, i32* %pawn_file, align 4
  %idxprom107 = sext i32 %67 to i64
  %arrayidx108 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom107
  %68 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp sgt i32 %66, %68
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %if.else.102
  %69 = load i32, i32* %srank, align 4
  %70 = load i32, i32* %pawn_file, align 4
  %idxprom111 = sext i32 %70 to i64
  %arrayidx112 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom111
  store i32 %69, i32* %arrayidx112, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %if.else.102
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.101
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.73
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115, %if.then.43
  %71 = load i32, i32* %j, align 4
  %inc117 = add nsw i32 %71, 1
  store i32 %inc117, i32* %j, align 4
  br label %for.cond.37

for.end.118:                                      ; preds = %for.cond.37
  store i32 0, i32* %wpotential, align 4
  store i32 0, i32* %bpotential, align 4
  store i32 0, i32* %wksafety, align 4
  store i32 0, i32* %bksafety, align 4
  store i32 0, i32* %rbrook, align 4
  store i32 0, i32* %fbrook, align 4
  store i32 0, i32* %rwrook, align 4
  store i32 0, i32* %fwrook, align 4
  store i32 0, i32* %wp, align 4
  store i32 0, i32* %bp, align 4
  store i32 0, i32* %wb, align 4
  store i32 0, i32* %bb, align 4
  store i32 0, i32* %wn, align 4
  store i32 0, i32* %bn, align 4
  store i32 0, i32* %wr, align 4
  store i32 0, i32* %br, align 4
  store i32 0, i32* %wq, align 4
  store i32 0, i32* %bq, align 4
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.991, %for.end.118
  %72 = load i32, i32* %a, align 4
  %73 = load i32, i32* @piece_count, align 4
  %cmp120 = icmp sle i32 %72, %73
  br i1 %cmp120, label %for.body.121, label %for.end.993

for.body.121:                                     ; preds = %for.cond.119
  %74 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %74 to i64
  %arrayidx123 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom122
  %75 = load i32, i32* %arrayidx123, align 4
  store i32 %75, i32* %i, align 4
  %76 = load i32, i32* %i, align 4
  %tobool124 = icmp ne i32 %76, 0
  br i1 %tobool124, label %if.else.126, label %if.then.125

if.then.125:                                      ; preds = %for.body.121
  br label %for.inc.991

if.else.126:                                      ; preds = %for.body.121
  %77 = load i32, i32* %a, align 4
  %inc127 = add nsw i32 %77, 1
  store i32 %inc127, i32* %a, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126
  %78 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %78 to i64
  %arrayidx130 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom129
  %79 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %79, 1
  %shr132 = ashr i32 %add131, 1
  %idxprom133 = sext i32 %shr132 to i64
  %arrayidx134 = getelementptr inbounds [7 x i32 (i32, i32)*], [7 x i32 (i32, i32)*]* @evalRoutines, i32 0, i64 %idxprom133
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %arrayidx134, align 8
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %82 to i64
  %arrayidx136 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom135
  %83 = load i32, i32* %arrayidx136, align 4
  %add137 = add nsw i32 %83, 1
  %and138 = and i32 %add137, 1
  %call139 = call i32 %80(i32 %81, i32 %and138)
  %84 = load i32, i32* %score, align 4
  %add140 = add nsw i32 %84, %call139
  store i32 %add140, i32* %score, align 4
  %85 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %85 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom141
  %86 = load i32, i32* %arrayidx142, align 4
  %add143 = add nsw i32 %86, 1
  store i32 %add143, i32* %pawn_file, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %87 to i64
  %arrayidx145 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom144
  %88 = load i32, i32* %arrayidx145, align 4
  store i32 %88, i32* %srank, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %89 to i64
  %arrayidx147 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom146
  %90 = load i32, i32* %arrayidx147, align 4
  switch i32 %90, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.414
    i32 7, label %sw.bb.685
    i32 8, label %sw.bb.726
    i32 11, label %sw.bb.767
    i32 12, label %sw.bb.769
    i32 3, label %sw.bb.771
    i32 4, label %sw.bb.773
    i32 9, label %sw.bb.775
    i32 10, label %sw.bb.777
    i32 5, label %sw.bb.779
    i32 6, label %sw.bb.882
  ]

sw.bb:                                            ; preds = %if.end.128
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %91 to i64
  %arrayidx149 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i32 0, i64 %idxprom148
  %92 = load i32, i32* %arrayidx149, align 4
  %93 = load i32, i32* %score, align 4
  %add150 = add nsw i32 %93, %92
  store i32 %add150, i32* %score, align 4
  %94 = load i32, i32* %wp, align 4
  %inc151 = add nsw i32 %94, 1
  store i32 %inc151, i32* %wp, align 4
  %95 = load i32, i32* %pawn_file, align 4
  %add152 = add nsw i32 %95, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom153
  %96 = load i32, i32* %arrayidx154, align 4
  %97 = load i32, i32* %srank, align 4
  %cmp155 = icmp sgt i32 %96, %97
  br i1 %cmp155, label %land.lhs.true.156, label %if.end.177

land.lhs.true.156:                                ; preds = %sw.bb
  %98 = load i32, i32* %pawn_file, align 4
  %sub157 = sub nsw i32 %98, 1
  %idxprom158 = sext i32 %sub157 to i64
  %arrayidx159 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom158
  %99 = load i32, i32* %arrayidx159, align 4
  %100 = load i32, i32* %srank, align 4
  %cmp160 = icmp sgt i32 %99, %100
  br i1 %cmp160, label %if.then.161, label %if.end.177

if.then.161:                                      ; preds = %land.lhs.true.156
  %101 = load i32, i32* %score, align 4
  %sub162 = sub nsw i32 %101, 8
  store i32 %sub162, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %102 = load i32, i32* %pawn_file, align 4
  %add163 = add nsw i32 %102, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx166 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx165, i32 0, i64 %idxprom164
  %103 = load i32, i32* %arrayidx166, align 4
  %tobool167 = icmp ne i32 %103, 0
  br i1 %tobool167, label %if.end.176, label %land.lhs.true.168

land.lhs.true.168:                                ; preds = %if.then.161
  %104 = load i32, i32* %pawn_file, align 4
  %sub169 = sub nsw i32 %104, 1
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx172 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx171, i32 0, i64 %idxprom170
  %105 = load i32, i32* %arrayidx172, align 4
  %tobool173 = icmp ne i32 %105, 0
  br i1 %tobool173, label %if.end.176, label %if.then.174

if.then.174:                                      ; preds = %land.lhs.true.168
  %106 = load i32, i32* %score, align 4
  %sub175 = sub nsw i32 %106, 5
  store i32 %sub175, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %land.lhs.true.168, %if.then.161
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %land.lhs.true.156, %sw.bb
  %107 = load i32, i32* %pawn_file, align 4
  %idxprom178 = sext i32 %107 to i64
  %arrayidx179 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx180 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx179, i32 0, i64 %idxprom178
  %108 = load i32, i32* %arrayidx180, align 4
  %tobool181 = icmp ne i32 %108, 0
  br i1 %tobool181, label %if.end.191, label %if.then.182

if.then.182:                                      ; preds = %if.end.177
  %109 = load i32, i32* %backwards, align 4
  %tobool183 = icmp ne i32 %109, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.182
  %110 = load i32, i32* %score, align 4
  %sub185 = sub nsw i32 %110, 3
  store i32 %sub185, i32* %score, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.182
  %111 = load i32, i32* %isolated, align 4
  %tobool187 = icmp ne i32 %111, 0
  br i1 %tobool187, label %if.then.188, label %if.end.190

if.then.188:                                      ; preds = %if.end.186
  %112 = load i32, i32* %score, align 4
  %sub189 = sub nsw i32 %112, 5
  store i32 %sub189, i32* %score, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %if.end.186
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.177
  %113 = load i32, i32* %pawn_file, align 4
  %idxprom192 = sext i32 %113 to i64
  %arrayidx193 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx194 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx193, i32 0, i64 %idxprom192
  %114 = load i32, i32* %arrayidx194, align 4
  %cmp195 = icmp sgt i32 %114, 1
  br i1 %cmp195, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %if.end.191
  %115 = load i32, i32* %pawn_file, align 4
  %idxprom197 = sext i32 %115 to i64
  %arrayidx198 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx199 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx198, i32 0, i64 %idxprom197
  %116 = load i32, i32* %arrayidx199, align 4
  %sub200 = sub nsw i32 %116, 1
  %mul = mul nsw i32 3, %sub200
  %117 = load i32, i32* %score, align 4
  %sub201 = sub nsw i32 %117, %mul
  store i32 %sub201, i32* %score, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.196, %if.end.191
  %118 = load i32, i32* %pawn_file, align 4
  %idxprom203 = sext i32 %118 to i64
  %arrayidx204 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx205 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx204, i32 0, i64 %idxprom203
  %119 = load i32, i32* %arrayidx205, align 4
  %tobool206 = icmp ne i32 %119, 0
  br i1 %tobool206, label %if.end.405, label %land.lhs.true.207

land.lhs.true.207:                                ; preds = %if.end.202
  %120 = load i32, i32* %srank, align 4
  %121 = load i32, i32* %pawn_file, align 4
  %sub208 = sub nsw i32 %121, 1
  %idxprom209 = sext i32 %sub208 to i64
  %arrayidx210 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom209
  %122 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp sge i32 %120, %122
  br i1 %cmp211, label %land.lhs.true.212, label %if.end.405

land.lhs.true.212:                                ; preds = %land.lhs.true.207
  %123 = load i32, i32* %srank, align 4
  %124 = load i32, i32* %pawn_file, align 4
  %add213 = add nsw i32 %124, 1
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom214
  %125 = load i32, i32* %arrayidx215, align 4
  %cmp216 = icmp sge i32 %123, %125
  br i1 %cmp216, label %if.then.217, label %if.end.405

if.then.217:                                      ; preds = %land.lhs.true.212
  %126 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %126 to i64
  %arrayidx219 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i32 0, i64 %idxprom218
  %127 = load i32, i32* %arrayidx219, align 4
  %mul220 = mul nsw i32 3, %127
  %add221 = add nsw i32 30, %mul220
  %128 = load i32, i32* %score, align 4
  %add222 = add nsw i32 %128, %add221
  store i32 %add222, i32* %score, align 4
  %129 = load i32, i32* @white_to_move, align 4
  %tobool223 = icmp ne i32 %129, 0
  br i1 %tobool223, label %if.then.224, label %if.else.268

if.then.224:                                      ; preds = %if.then.217
  %130 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %130 to i64
  %arrayidx226 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom225
  %131 = load i32, i32* %arrayidx226, align 4
  %add227 = add nsw i32 110, %131
  %sub228 = sub nsw i32 %add227, 1
  store i32 %sub228, i32* %tmp, align 4
  %132 = load i32, i32* @bking_loc, align 4
  %idxprom229 = sext i32 %132 to i64
  %arrayidx230 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom229
  %133 = load i32, i32* %arrayidx230, align 4
  %134 = load i32, i32* %tmp, align 4
  %idxprom231 = sext i32 %134 to i64
  %arrayidx232 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom231
  %135 = load i32, i32* %arrayidx232, align 4
  %sub233 = sub nsw i32 %133, %135
  %call234 = call i32 @abs(i32 %sub233) #4
  %136 = load i32, i32* @bking_loc, align 4
  %idxprom235 = sext i32 %136 to i64
  %arrayidx236 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom235
  %137 = load i32, i32* %arrayidx236, align 4
  %138 = load i32, i32* %tmp, align 4
  %idxprom237 = sext i32 %138 to i64
  %arrayidx238 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom237
  %139 = load i32, i32* %arrayidx238, align 4
  %sub239 = sub nsw i32 %137, %139
  %call240 = call i32 @abs(i32 %sub239) #4
  %cmp241 = icmp sgt i32 %call234, %call240
  br i1 %cmp241, label %cond.true.242, label %cond.false.249

cond.true.242:                                    ; preds = %if.then.224
  %140 = load i32, i32* @bking_loc, align 4
  %idxprom243 = sext i32 %140 to i64
  %arrayidx244 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom243
  %141 = load i32, i32* %arrayidx244, align 4
  %142 = load i32, i32* %tmp, align 4
  %idxprom245 = sext i32 %142 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom245
  %143 = load i32, i32* %arrayidx246, align 4
  %sub247 = sub nsw i32 %141, %143
  %call248 = call i32 @abs(i32 %sub247) #4
  br label %cond.end.256

cond.false.249:                                   ; preds = %if.then.224
  %144 = load i32, i32* @bking_loc, align 4
  %idxprom250 = sext i32 %144 to i64
  %arrayidx251 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom250
  %145 = load i32, i32* %arrayidx251, align 4
  %146 = load i32, i32* %tmp, align 4
  %idxprom252 = sext i32 %146 to i64
  %arrayidx253 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom252
  %147 = load i32, i32* %arrayidx253, align 4
  %sub254 = sub nsw i32 %145, %147
  %call255 = call i32 @abs(i32 %sub254) #4
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.249, %cond.true.242
  %cond257 = phi i32 [ %call248, %cond.true.242 ], [ %call255, %cond.false.249 ]
  %148 = load i32, i32* %tmp, align 4
  %idxprom258 = sext i32 %148 to i64
  %arrayidx259 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom258
  %149 = load i32, i32* %arrayidx259, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %150 to i64
  %arrayidx261 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom260
  %151 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %149, %151
  %call263 = call i32 @abs(i32 %sub262) #4
  %cmp264 = icmp sgt i32 %cond257, %call263
  br i1 %cmp264, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %cond.end.256
  %152 = load i32, i32* %wpotential, align 4
  %add266 = add nsw i32 %152, 800
  store i32 %add266, i32* %wpotential, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.265, %cond.end.256
  br label %if.end.313

if.else.268:                                      ; preds = %if.then.217
  %153 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %153 to i64
  %arrayidx270 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom269
  %154 = load i32, i32* %arrayidx270, align 4
  %add271 = add nsw i32 110, %154
  %sub272 = sub nsw i32 %add271, 1
  store i32 %sub272, i32* %tmp, align 4
  %155 = load i32, i32* @bking_loc, align 4
  %idxprom273 = sext i32 %155 to i64
  %arrayidx274 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom273
  %156 = load i32, i32* %arrayidx274, align 4
  %157 = load i32, i32* %tmp, align 4
  %idxprom275 = sext i32 %157 to i64
  %arrayidx276 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom275
  %158 = load i32, i32* %arrayidx276, align 4
  %sub277 = sub nsw i32 %156, %158
  %call278 = call i32 @abs(i32 %sub277) #4
  %159 = load i32, i32* @bking_loc, align 4
  %idxprom279 = sext i32 %159 to i64
  %arrayidx280 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom279
  %160 = load i32, i32* %arrayidx280, align 4
  %161 = load i32, i32* %tmp, align 4
  %idxprom281 = sext i32 %161 to i64
  %arrayidx282 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom281
  %162 = load i32, i32* %arrayidx282, align 4
  %sub283 = sub nsw i32 %160, %162
  %call284 = call i32 @abs(i32 %sub283) #4
  %cmp285 = icmp sgt i32 %call278, %call284
  br i1 %cmp285, label %cond.true.286, label %cond.false.293

cond.true.286:                                    ; preds = %if.else.268
  %163 = load i32, i32* @bking_loc, align 4
  %idxprom287 = sext i32 %163 to i64
  %arrayidx288 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom287
  %164 = load i32, i32* %arrayidx288, align 4
  %165 = load i32, i32* %tmp, align 4
  %idxprom289 = sext i32 %165 to i64
  %arrayidx290 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom289
  %166 = load i32, i32* %arrayidx290, align 4
  %sub291 = sub nsw i32 %164, %166
  %call292 = call i32 @abs(i32 %sub291) #4
  br label %cond.end.300

cond.false.293:                                   ; preds = %if.else.268
  %167 = load i32, i32* @bking_loc, align 4
  %idxprom294 = sext i32 %167 to i64
  %arrayidx295 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom294
  %168 = load i32, i32* %arrayidx295, align 4
  %169 = load i32, i32* %tmp, align 4
  %idxprom296 = sext i32 %169 to i64
  %arrayidx297 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom296
  %170 = load i32, i32* %arrayidx297, align 4
  %sub298 = sub nsw i32 %168, %170
  %call299 = call i32 @abs(i32 %sub298) #4
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.293, %cond.true.286
  %cond301 = phi i32 [ %call292, %cond.true.286 ], [ %call299, %cond.false.293 ]
  %sub302 = sub nsw i32 %cond301, 1
  %171 = load i32, i32* %tmp, align 4
  %idxprom303 = sext i32 %171 to i64
  %arrayidx304 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom303
  %172 = load i32, i32* %arrayidx304, align 4
  %173 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %173 to i64
  %arrayidx306 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom305
  %174 = load i32, i32* %arrayidx306, align 4
  %sub307 = sub nsw i32 %172, %174
  %call308 = call i32 @abs(i32 %sub307) #4
  %cmp309 = icmp sgt i32 %sub302, %call308
  br i1 %cmp309, label %if.then.310, label %if.end.312

if.then.310:                                      ; preds = %cond.end.300
  %175 = load i32, i32* %wpotential, align 4
  %add311 = add nsw i32 %175, 800
  store i32 %add311, i32* %wpotential, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.310, %cond.end.300
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.end.267
  %176 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %176 to i64
  %arrayidx315 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom314
  %177 = load i32, i32* %arrayidx315, align 4
  %cmp316 = icmp eq i32 %177, 1
  br i1 %cmp316, label %if.then.320, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.313
  %178 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %178 to i64
  %arrayidx318 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom317
  %179 = load i32, i32* %arrayidx318, align 4
  %cmp319 = icmp eq i32 %179, 8
  br i1 %cmp319, label %if.then.320, label %if.end.326

if.then.320:                                      ; preds = %lor.lhs.false, %if.end.313
  %180 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %180 to i64
  %arrayidx322 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_pawn, i32 0, i64 %idxprom321
  %181 = load i32, i32* %arrayidx322, align 4
  %mul323 = mul nsw i32 2, %181
  %add324 = add nsw i32 12, %mul323
  %182 = load i32, i32* %score, align 4
  %add325 = add nsw i32 %182, %add324
  store i32 %add325, i32* %score, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.320, %lor.lhs.false
  %183 = load i32, i32* %isolated, align 4
  %tobool327 = icmp ne i32 %183, 0
  br i1 %tobool327, label %if.end.404, label %if.then.328

if.then.328:                                      ; preds = %if.end.326
  %184 = load i32, i32* %score, align 4
  %add329 = add nsw i32 %184, 12
  store i32 %add329, i32* %score, align 4
  %185 = load i32, i32* %pawn_file, align 4
  %add330 = add nsw i32 %185, 1
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx333 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx332, i32 0, i64 %idxprom331
  %186 = load i32, i32* %arrayidx333, align 4
  %tobool334 = icmp ne i32 %186, 0
  br i1 %tobool334, label %if.then.335, label %if.end.366

if.then.335:                                      ; preds = %if.then.328
  %187 = load i32, i32* %pawn_file, align 4
  %add336 = add nsw i32 %187, 1
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx339 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx338, i32 0, i64 %idxprom337
  %188 = load i32, i32* %arrayidx339, align 4
  %tobool340 = icmp ne i32 %188, 0
  br i1 %tobool340, label %if.end.365, label %land.lhs.true.341

land.lhs.true.341:                                ; preds = %if.then.335
  %189 = load i32, i32* %pawn_file, align 4
  %add342 = add nsw i32 %189, 1
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom343
  %190 = load i32, i32* %arrayidx344, align 4
  %191 = load i32, i32* %pawn_file, align 4
  %add345 = add nsw i32 %191, 2
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom346
  %192 = load i32, i32* %arrayidx347, align 4
  %cmp348 = icmp sge i32 %190, %192
  br i1 %cmp348, label %if.then.349, label %if.end.365

if.then.349:                                      ; preds = %land.lhs.true.341
  %193 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %193 to i64
  %arrayidx351 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom350
  %194 = load i32, i32* %arrayidx351, align 4
  %mul352 = mul nsw i32 7, %194
  %195 = load i32, i32* %score, align 4
  %add353 = add nsw i32 %195, %mul352
  store i32 %add353, i32* %score, align 4
  %196 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %196 to i64
  %arrayidx355 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom354
  %197 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp eq i32 %197, 7
  br i1 %cmp356, label %land.lhs.true.357, label %if.end.364

land.lhs.true.357:                                ; preds = %if.then.349
  %198 = load i32, i32* %pawn_file, align 4
  %add358 = add nsw i32 %198, 1
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom359
  %199 = load i32, i32* %arrayidx360, align 4
  %cmp361 = icmp sge i32 %199, 6
  br i1 %cmp361, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %land.lhs.true.357
  %200 = load i32, i32* %score, align 4
  %add363 = add nsw i32 %200, 50
  store i32 %add363, i32* %score, align 4
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.362, %land.lhs.true.357, %if.then.349
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %land.lhs.true.341, %if.then.335
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %if.then.328
  %201 = load i32, i32* %pawn_file, align 4
  %sub367 = sub nsw i32 %201, 1
  %idxprom368 = sext i32 %sub367 to i64
  %arrayidx369 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx370 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx369, i32 0, i64 %idxprom368
  %202 = load i32, i32* %arrayidx370, align 4
  %tobool371 = icmp ne i32 %202, 0
  br i1 %tobool371, label %if.then.372, label %if.end.403

if.then.372:                                      ; preds = %if.end.366
  %203 = load i32, i32* %pawn_file, align 4
  %sub373 = sub nsw i32 %203, 1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx376 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx375, i32 0, i64 %idxprom374
  %204 = load i32, i32* %arrayidx376, align 4
  %tobool377 = icmp ne i32 %204, 0
  br i1 %tobool377, label %if.end.402, label %land.lhs.true.378

land.lhs.true.378:                                ; preds = %if.then.372
  %205 = load i32, i32* %pawn_file, align 4
  %add379 = add nsw i32 %205, 1
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom380
  %206 = load i32, i32* %arrayidx381, align 4
  %207 = load i32, i32* %pawn_file, align 4
  %sub382 = sub nsw i32 %207, 2
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom383
  %208 = load i32, i32* %arrayidx384, align 4
  %cmp385 = icmp sge i32 %206, %208
  br i1 %cmp385, label %if.then.386, label %if.end.402

if.then.386:                                      ; preds = %land.lhs.true.378
  %209 = load i32, i32* %i, align 4
  %idxprom387 = sext i32 %209 to i64
  %arrayidx388 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom387
  %210 = load i32, i32* %arrayidx388, align 4
  %mul389 = mul nsw i32 7, %210
  %211 = load i32, i32* %score, align 4
  %add390 = add nsw i32 %211, %mul389
  store i32 %add390, i32* %score, align 4
  %212 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %212 to i64
  %arrayidx392 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom391
  %213 = load i32, i32* %arrayidx392, align 4
  %cmp393 = icmp eq i32 %213, 7
  br i1 %cmp393, label %land.lhs.true.394, label %if.end.401

land.lhs.true.394:                                ; preds = %if.then.386
  %214 = load i32, i32* %pawn_file, align 4
  %sub395 = sub nsw i32 %214, 1
  %idxprom396 = sext i32 %sub395 to i64
  %arrayidx397 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom396
  %215 = load i32, i32* %arrayidx397, align 4
  %cmp398 = icmp sge i32 %215, 6
  br i1 %cmp398, label %if.then.399, label %if.end.401

if.then.399:                                      ; preds = %land.lhs.true.394
  %216 = load i32, i32* %score, align 4
  %add400 = add nsw i32 %216, 50
  store i32 %add400, i32* %score, align 4
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.399, %land.lhs.true.394, %if.then.386
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.401, %land.lhs.true.378, %if.then.372
  br label %if.end.403

if.end.403:                                       ; preds = %if.end.402, %if.end.366
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.end.326
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %land.lhs.true.212, %land.lhs.true.207, %if.end.202
  %217 = load i32, i32* %pawn_file, align 4
  %sub406 = sub nsw i32 %217, 1
  %idxprom407 = sext i32 %sub406 to i64
  %arrayidx408 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx409 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx408, i32 0, i64 %idxprom407
  %218 = load i32, i32* %arrayidx409, align 4
  %tobool410 = icmp ne i32 %218, 0
  br i1 %tobool410, label %if.end.413, label %if.then.411

if.then.411:                                      ; preds = %if.end.405
  %219 = load i32, i32* %score, align 4
  %sub412 = sub nsw i32 %219, 7
  store i32 %sub412, i32* %score, align 4
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.411, %if.end.405
  br label %sw.epilog

sw.bb.414:                                        ; preds = %if.end.128
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom415 = sext i32 %220 to i64
  %arrayidx416 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i32 0, i64 %idxprom415
  %221 = load i32, i32* %arrayidx416, align 4
  %222 = load i32, i32* %score, align 4
  %sub417 = sub nsw i32 %222, %221
  store i32 %sub417, i32* %score, align 4
  %223 = load i32, i32* %bp, align 4
  %inc418 = add nsw i32 %223, 1
  store i32 %inc418, i32* %bp, align 4
  %224 = load i32, i32* %pawn_file, align 4
  %add419 = add nsw i32 %224, 1
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom420
  %225 = load i32, i32* %arrayidx421, align 4
  %226 = load i32, i32* %srank, align 4
  %cmp422 = icmp slt i32 %225, %226
  br i1 %cmp422, label %land.lhs.true.423, label %if.end.444

land.lhs.true.423:                                ; preds = %sw.bb.414
  %227 = load i32, i32* %pawn_file, align 4
  %sub424 = sub nsw i32 %227, 1
  %idxprom425 = sext i32 %sub424 to i64
  %arrayidx426 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom425
  %228 = load i32, i32* %arrayidx426, align 4
  %229 = load i32, i32* %srank, align 4
  %cmp427 = icmp slt i32 %228, %229
  br i1 %cmp427, label %if.then.428, label %if.end.444

if.then.428:                                      ; preds = %land.lhs.true.423
  %230 = load i32, i32* %score, align 4
  %add429 = add nsw i32 %230, 8
  store i32 %add429, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %231 = load i32, i32* %pawn_file, align 4
  %add430 = add nsw i32 %231, 1
  %idxprom431 = sext i32 %add430 to i64
  %arrayidx432 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx433 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx432, i32 0, i64 %idxprom431
  %232 = load i32, i32* %arrayidx433, align 4
  %tobool434 = icmp ne i32 %232, 0
  br i1 %tobool434, label %if.end.443, label %land.lhs.true.435

land.lhs.true.435:                                ; preds = %if.then.428
  %233 = load i32, i32* %pawn_file, align 4
  %sub436 = sub nsw i32 %233, 1
  %idxprom437 = sext i32 %sub436 to i64
  %arrayidx438 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx439 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx438, i32 0, i64 %idxprom437
  %234 = load i32, i32* %arrayidx439, align 4
  %tobool440 = icmp ne i32 %234, 0
  br i1 %tobool440, label %if.end.443, label %if.then.441

if.then.441:                                      ; preds = %land.lhs.true.435
  %235 = load i32, i32* %score, align 4
  %add442 = add nsw i32 %235, 5
  store i32 %add442, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.441, %land.lhs.true.435, %if.then.428
  br label %if.end.444

if.end.444:                                       ; preds = %if.end.443, %land.lhs.true.423, %sw.bb.414
  %236 = load i32, i32* %pawn_file, align 4
  %idxprom445 = sext i32 %236 to i64
  %arrayidx446 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx447 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx446, i32 0, i64 %idxprom445
  %237 = load i32, i32* %arrayidx447, align 4
  %tobool448 = icmp ne i32 %237, 0
  br i1 %tobool448, label %if.end.458, label %if.then.449

if.then.449:                                      ; preds = %if.end.444
  %238 = load i32, i32* %backwards, align 4
  %tobool450 = icmp ne i32 %238, 0
  br i1 %tobool450, label %if.then.451, label %if.end.453

if.then.451:                                      ; preds = %if.then.449
  %239 = load i32, i32* %score, align 4
  %add452 = add nsw i32 %239, 3
  store i32 %add452, i32* %score, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.451, %if.then.449
  %240 = load i32, i32* %isolated, align 4
  %tobool454 = icmp ne i32 %240, 0
  br i1 %tobool454, label %if.then.455, label %if.end.457

if.then.455:                                      ; preds = %if.end.453
  %241 = load i32, i32* %score, align 4
  %add456 = add nsw i32 %241, 5
  store i32 %add456, i32* %score, align 4
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.455, %if.end.453
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %if.end.444
  %242 = load i32, i32* %pawn_file, align 4
  %idxprom459 = sext i32 %242 to i64
  %arrayidx460 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx461 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx460, i32 0, i64 %idxprom459
  %243 = load i32, i32* %arrayidx461, align 4
  %cmp462 = icmp sgt i32 %243, 1
  br i1 %cmp462, label %if.then.463, label %if.end.470

if.then.463:                                      ; preds = %if.end.458
  %244 = load i32, i32* %pawn_file, align 4
  %idxprom464 = sext i32 %244 to i64
  %arrayidx465 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx466 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx465, i32 0, i64 %idxprom464
  %245 = load i32, i32* %arrayidx466, align 4
  %sub467 = sub nsw i32 %245, 1
  %mul468 = mul nsw i32 3, %sub467
  %246 = load i32, i32* %score, align 4
  %add469 = add nsw i32 %246, %mul468
  store i32 %add469, i32* %score, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.463, %if.end.458
  %247 = load i32, i32* %pawn_file, align 4
  %idxprom471 = sext i32 %247 to i64
  %arrayidx472 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx473 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx472, i32 0, i64 %idxprom471
  %248 = load i32, i32* %arrayidx473, align 4
  %tobool474 = icmp ne i32 %248, 0
  br i1 %tobool474, label %if.end.676, label %land.lhs.true.475

land.lhs.true.475:                                ; preds = %if.end.470
  %249 = load i32, i32* %srank, align 4
  %250 = load i32, i32* %pawn_file, align 4
  %sub476 = sub nsw i32 %250, 1
  %idxprom477 = sext i32 %sub476 to i64
  %arrayidx478 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom477
  %251 = load i32, i32* %arrayidx478, align 4
  %cmp479 = icmp sle i32 %249, %251
  br i1 %cmp479, label %land.lhs.true.480, label %if.end.676

land.lhs.true.480:                                ; preds = %land.lhs.true.475
  %252 = load i32, i32* %srank, align 4
  %253 = load i32, i32* %pawn_file, align 4
  %add481 = add nsw i32 %253, 1
  %idxprom482 = sext i32 %add481 to i64
  %arrayidx483 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom482
  %254 = load i32, i32* %arrayidx483, align 4
  %cmp484 = icmp sle i32 %252, %254
  br i1 %cmp484, label %if.then.485, label %if.end.676

if.then.485:                                      ; preds = %land.lhs.true.480
  %255 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %255 to i64
  %arrayidx487 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i32 0, i64 %idxprom486
  %256 = load i32, i32* %arrayidx487, align 4
  %mul488 = mul nsw i32 3, %256
  %add489 = add nsw i32 30, %mul488
  %257 = load i32, i32* %score, align 4
  %sub490 = sub nsw i32 %257, %add489
  store i32 %sub490, i32* %score, align 4
  %258 = load i32, i32* @white_to_move, align 4
  %tobool491 = icmp ne i32 %258, 0
  br i1 %tobool491, label %if.else.536, label %if.then.492

if.then.492:                                      ; preds = %if.then.485
  %259 = load i32, i32* %i, align 4
  %idxprom493 = sext i32 %259 to i64
  %arrayidx494 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom493
  %260 = load i32, i32* %arrayidx494, align 4
  %add495 = add nsw i32 26, %260
  %sub496 = sub nsw i32 %add495, 1
  store i32 %sub496, i32* %tmp, align 4
  %261 = load i32, i32* @wking_loc, align 4
  %idxprom497 = sext i32 %261 to i64
  %arrayidx498 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom497
  %262 = load i32, i32* %arrayidx498, align 4
  %263 = load i32, i32* %tmp, align 4
  %idxprom499 = sext i32 %263 to i64
  %arrayidx500 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom499
  %264 = load i32, i32* %arrayidx500, align 4
  %sub501 = sub nsw i32 %262, %264
  %call502 = call i32 @abs(i32 %sub501) #4
  %265 = load i32, i32* @wking_loc, align 4
  %idxprom503 = sext i32 %265 to i64
  %arrayidx504 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom503
  %266 = load i32, i32* %arrayidx504, align 4
  %267 = load i32, i32* %tmp, align 4
  %idxprom505 = sext i32 %267 to i64
  %arrayidx506 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom505
  %268 = load i32, i32* %arrayidx506, align 4
  %sub507 = sub nsw i32 %266, %268
  %call508 = call i32 @abs(i32 %sub507) #4
  %cmp509 = icmp sgt i32 %call502, %call508
  br i1 %cmp509, label %cond.true.510, label %cond.false.517

cond.true.510:                                    ; preds = %if.then.492
  %269 = load i32, i32* @wking_loc, align 4
  %idxprom511 = sext i32 %269 to i64
  %arrayidx512 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom511
  %270 = load i32, i32* %arrayidx512, align 4
  %271 = load i32, i32* %tmp, align 4
  %idxprom513 = sext i32 %271 to i64
  %arrayidx514 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom513
  %272 = load i32, i32* %arrayidx514, align 4
  %sub515 = sub nsw i32 %270, %272
  %call516 = call i32 @abs(i32 %sub515) #4
  br label %cond.end.524

cond.false.517:                                   ; preds = %if.then.492
  %273 = load i32, i32* @wking_loc, align 4
  %idxprom518 = sext i32 %273 to i64
  %arrayidx519 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom518
  %274 = load i32, i32* %arrayidx519, align 4
  %275 = load i32, i32* %tmp, align 4
  %idxprom520 = sext i32 %275 to i64
  %arrayidx521 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom520
  %276 = load i32, i32* %arrayidx521, align 4
  %sub522 = sub nsw i32 %274, %276
  %call523 = call i32 @abs(i32 %sub522) #4
  br label %cond.end.524

cond.end.524:                                     ; preds = %cond.false.517, %cond.true.510
  %cond525 = phi i32 [ %call516, %cond.true.510 ], [ %call523, %cond.false.517 ]
  %277 = load i32, i32* %tmp, align 4
  %idxprom526 = sext i32 %277 to i64
  %arrayidx527 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom526
  %278 = load i32, i32* %arrayidx527, align 4
  %279 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %279 to i64
  %arrayidx529 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom528
  %280 = load i32, i32* %arrayidx529, align 4
  %sub530 = sub nsw i32 %278, %280
  %call531 = call i32 @abs(i32 %sub530) #4
  %cmp532 = icmp sgt i32 %cond525, %call531
  br i1 %cmp532, label %if.then.533, label %if.end.535

if.then.533:                                      ; preds = %cond.end.524
  %281 = load i32, i32* %bpotential, align 4
  %sub534 = sub nsw i32 %281, 800
  store i32 %sub534, i32* %bpotential, align 4
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.533, %cond.end.524
  br label %if.end.581

if.else.536:                                      ; preds = %if.then.485
  %282 = load i32, i32* %i, align 4
  %idxprom537 = sext i32 %282 to i64
  %arrayidx538 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom537
  %283 = load i32, i32* %arrayidx538, align 4
  %add539 = add nsw i32 26, %283
  %sub540 = sub nsw i32 %add539, 1
  store i32 %sub540, i32* %tmp, align 4
  %284 = load i32, i32* @wking_loc, align 4
  %idxprom541 = sext i32 %284 to i64
  %arrayidx542 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom541
  %285 = load i32, i32* %arrayidx542, align 4
  %286 = load i32, i32* %tmp, align 4
  %idxprom543 = sext i32 %286 to i64
  %arrayidx544 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom543
  %287 = load i32, i32* %arrayidx544, align 4
  %sub545 = sub nsw i32 %285, %287
  %call546 = call i32 @abs(i32 %sub545) #4
  %288 = load i32, i32* @wking_loc, align 4
  %idxprom547 = sext i32 %288 to i64
  %arrayidx548 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom547
  %289 = load i32, i32* %arrayidx548, align 4
  %290 = load i32, i32* %tmp, align 4
  %idxprom549 = sext i32 %290 to i64
  %arrayidx550 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom549
  %291 = load i32, i32* %arrayidx550, align 4
  %sub551 = sub nsw i32 %289, %291
  %call552 = call i32 @abs(i32 %sub551) #4
  %cmp553 = icmp sgt i32 %call546, %call552
  br i1 %cmp553, label %cond.true.554, label %cond.false.561

cond.true.554:                                    ; preds = %if.else.536
  %292 = load i32, i32* @wking_loc, align 4
  %idxprom555 = sext i32 %292 to i64
  %arrayidx556 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom555
  %293 = load i32, i32* %arrayidx556, align 4
  %294 = load i32, i32* %tmp, align 4
  %idxprom557 = sext i32 %294 to i64
  %arrayidx558 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom557
  %295 = load i32, i32* %arrayidx558, align 4
  %sub559 = sub nsw i32 %293, %295
  %call560 = call i32 @abs(i32 %sub559) #4
  br label %cond.end.568

cond.false.561:                                   ; preds = %if.else.536
  %296 = load i32, i32* @wking_loc, align 4
  %idxprom562 = sext i32 %296 to i64
  %arrayidx563 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom562
  %297 = load i32, i32* %arrayidx563, align 4
  %298 = load i32, i32* %tmp, align 4
  %idxprom564 = sext i32 %298 to i64
  %arrayidx565 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom564
  %299 = load i32, i32* %arrayidx565, align 4
  %sub566 = sub nsw i32 %297, %299
  %call567 = call i32 @abs(i32 %sub566) #4
  br label %cond.end.568

cond.end.568:                                     ; preds = %cond.false.561, %cond.true.554
  %cond569 = phi i32 [ %call560, %cond.true.554 ], [ %call567, %cond.false.561 ]
  %sub570 = sub nsw i32 %cond569, 1
  %300 = load i32, i32* %tmp, align 4
  %idxprom571 = sext i32 %300 to i64
  %arrayidx572 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom571
  %301 = load i32, i32* %arrayidx572, align 4
  %302 = load i32, i32* %i, align 4
  %idxprom573 = sext i32 %302 to i64
  %arrayidx574 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom573
  %303 = load i32, i32* %arrayidx574, align 4
  %sub575 = sub nsw i32 %301, %303
  %call576 = call i32 @abs(i32 %sub575) #4
  %cmp577 = icmp sgt i32 %sub570, %call576
  br i1 %cmp577, label %if.then.578, label %if.end.580

if.then.578:                                      ; preds = %cond.end.568
  %304 = load i32, i32* %bpotential, align 4
  %sub579 = sub nsw i32 %304, 800
  store i32 %sub579, i32* %bpotential, align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.578, %cond.end.568
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %if.end.535
  %305 = load i32, i32* %i, align 4
  %idxprom582 = sext i32 %305 to i64
  %arrayidx583 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom582
  %306 = load i32, i32* %arrayidx583, align 4
  %cmp584 = icmp eq i32 %306, 1
  br i1 %cmp584, label %if.then.589, label %lor.lhs.false.585

lor.lhs.false.585:                                ; preds = %if.end.581
  %307 = load i32, i32* %i, align 4
  %idxprom586 = sext i32 %307 to i64
  %arrayidx587 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom586
  %308 = load i32, i32* %arrayidx587, align 4
  %cmp588 = icmp eq i32 %308, 8
  br i1 %cmp588, label %if.then.589, label %if.end.595

if.then.589:                                      ; preds = %lor.lhs.false.585, %if.end.581
  %309 = load i32, i32* %i, align 4
  %idxprom590 = sext i32 %309 to i64
  %arrayidx591 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_pawn, i32 0, i64 %idxprom590
  %310 = load i32, i32* %arrayidx591, align 4
  %mul592 = mul nsw i32 2, %310
  %add593 = add nsw i32 12, %mul592
  %311 = load i32, i32* %score, align 4
  %sub594 = sub nsw i32 %311, %add593
  store i32 %sub594, i32* %score, align 4
  br label %if.end.595

if.end.595:                                       ; preds = %if.then.589, %lor.lhs.false.585
  %312 = load i32, i32* %isolated, align 4
  %tobool596 = icmp ne i32 %312, 0
  br i1 %tobool596, label %if.end.675, label %if.then.597

if.then.597:                                      ; preds = %if.end.595
  %313 = load i32, i32* %score, align 4
  %sub598 = sub nsw i32 %313, 12
  store i32 %sub598, i32* %score, align 4
  %314 = load i32, i32* %pawn_file, align 4
  %add599 = add nsw i32 %314, 1
  %idxprom600 = sext i32 %add599 to i64
  %arrayidx601 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx602 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx601, i32 0, i64 %idxprom600
  %315 = load i32, i32* %arrayidx602, align 4
  %tobool603 = icmp ne i32 %315, 0
  br i1 %tobool603, label %if.then.604, label %if.end.636

if.then.604:                                      ; preds = %if.then.597
  %316 = load i32, i32* %pawn_file, align 4
  %add605 = add nsw i32 %316, 1
  %idxprom606 = sext i32 %add605 to i64
  %arrayidx607 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx608 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx607, i32 0, i64 %idxprom606
  %317 = load i32, i32* %arrayidx608, align 4
  %tobool609 = icmp ne i32 %317, 0
  br i1 %tobool609, label %if.end.635, label %land.lhs.true.610

land.lhs.true.610:                                ; preds = %if.then.604
  %318 = load i32, i32* %pawn_file, align 4
  %add611 = add nsw i32 %318, 1
  %idxprom612 = sext i32 %add611 to i64
  %arrayidx613 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom612
  %319 = load i32, i32* %arrayidx613, align 4
  %320 = load i32, i32* %pawn_file, align 4
  %add614 = add nsw i32 %320, 2
  %idxprom615 = sext i32 %add614 to i64
  %arrayidx616 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom615
  %321 = load i32, i32* %arrayidx616, align 4
  %cmp617 = icmp sle i32 %319, %321
  br i1 %cmp617, label %if.then.618, label %if.end.635

if.then.618:                                      ; preds = %land.lhs.true.610
  %322 = load i32, i32* %i, align 4
  %idxprom619 = sext i32 %322 to i64
  %arrayidx620 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom619
  %323 = load i32, i32* %arrayidx620, align 4
  %sub621 = sub nsw i32 9, %323
  %mul622 = mul nsw i32 7, %sub621
  %324 = load i32, i32* %score, align 4
  %sub623 = sub nsw i32 %324, %mul622
  store i32 %sub623, i32* %score, align 4
  %325 = load i32, i32* %i, align 4
  %idxprom624 = sext i32 %325 to i64
  %arrayidx625 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom624
  %326 = load i32, i32* %arrayidx625, align 4
  %cmp626 = icmp eq i32 %326, 2
  br i1 %cmp626, label %land.lhs.true.627, label %if.end.634

land.lhs.true.627:                                ; preds = %if.then.618
  %327 = load i32, i32* %pawn_file, align 4
  %add628 = add nsw i32 %327, 1
  %idxprom629 = sext i32 %add628 to i64
  %arrayidx630 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom629
  %328 = load i32, i32* %arrayidx630, align 4
  %cmp631 = icmp sle i32 %328, 3
  br i1 %cmp631, label %if.then.632, label %if.end.634

if.then.632:                                      ; preds = %land.lhs.true.627
  %329 = load i32, i32* %score, align 4
  %sub633 = sub nsw i32 %329, 50
  store i32 %sub633, i32* %score, align 4
  br label %if.end.634

if.end.634:                                       ; preds = %if.then.632, %land.lhs.true.627, %if.then.618
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %land.lhs.true.610, %if.then.604
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.then.597
  %330 = load i32, i32* %pawn_file, align 4
  %sub637 = sub nsw i32 %330, 1
  %idxprom638 = sext i32 %sub637 to i64
  %arrayidx639 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx640 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx639, i32 0, i64 %idxprom638
  %331 = load i32, i32* %arrayidx640, align 4
  %tobool641 = icmp ne i32 %331, 0
  br i1 %tobool641, label %if.then.642, label %if.end.674

if.then.642:                                      ; preds = %if.end.636
  %332 = load i32, i32* %pawn_file, align 4
  %sub643 = sub nsw i32 %332, 1
  %idxprom644 = sext i32 %sub643 to i64
  %arrayidx645 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx646 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx645, i32 0, i64 %idxprom644
  %333 = load i32, i32* %arrayidx646, align 4
  %tobool647 = icmp ne i32 %333, 0
  br i1 %tobool647, label %if.end.673, label %land.lhs.true.648

land.lhs.true.648:                                ; preds = %if.then.642
  %334 = load i32, i32* %pawn_file, align 4
  %sub649 = sub nsw i32 %334, 1
  %idxprom650 = sext i32 %sub649 to i64
  %arrayidx651 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom650
  %335 = load i32, i32* %arrayidx651, align 4
  %336 = load i32, i32* %pawn_file, align 4
  %sub652 = sub nsw i32 %336, 2
  %idxprom653 = sext i32 %sub652 to i64
  %arrayidx654 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom653
  %337 = load i32, i32* %arrayidx654, align 4
  %cmp655 = icmp sle i32 %335, %337
  br i1 %cmp655, label %if.then.656, label %if.end.673

if.then.656:                                      ; preds = %land.lhs.true.648
  %338 = load i32, i32* %i, align 4
  %idxprom657 = sext i32 %338 to i64
  %arrayidx658 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom657
  %339 = load i32, i32* %arrayidx658, align 4
  %sub659 = sub nsw i32 9, %339
  %mul660 = mul nsw i32 7, %sub659
  %340 = load i32, i32* %score, align 4
  %sub661 = sub nsw i32 %340, %mul660
  store i32 %sub661, i32* %score, align 4
  %341 = load i32, i32* %i, align 4
  %idxprom662 = sext i32 %341 to i64
  %arrayidx663 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom662
  %342 = load i32, i32* %arrayidx663, align 4
  %cmp664 = icmp eq i32 %342, 2
  br i1 %cmp664, label %land.lhs.true.665, label %if.end.672

land.lhs.true.665:                                ; preds = %if.then.656
  %343 = load i32, i32* %pawn_file, align 4
  %sub666 = sub nsw i32 %343, 1
  %idxprom667 = sext i32 %sub666 to i64
  %arrayidx668 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom667
  %344 = load i32, i32* %arrayidx668, align 4
  %cmp669 = icmp sle i32 %344, 3
  br i1 %cmp669, label %if.then.670, label %if.end.672

if.then.670:                                      ; preds = %land.lhs.true.665
  %345 = load i32, i32* %score, align 4
  %sub671 = sub nsw i32 %345, 50
  store i32 %sub671, i32* %score, align 4
  br label %if.end.672

if.end.672:                                       ; preds = %if.then.670, %land.lhs.true.665, %if.then.656
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %land.lhs.true.648, %if.then.642
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.end.636
  br label %if.end.675

if.end.675:                                       ; preds = %if.end.674, %if.end.595
  br label %if.end.676

if.end.676:                                       ; preds = %if.end.675, %land.lhs.true.480, %land.lhs.true.475, %if.end.470
  %346 = load i32, i32* %pawn_file, align 4
  %sub677 = sub nsw i32 %346, 1
  %idxprom678 = sext i32 %sub677 to i64
  %arrayidx679 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx680 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx679, i32 0, i64 %idxprom678
  %347 = load i32, i32* %arrayidx680, align 4
  %tobool681 = icmp ne i32 %347, 0
  br i1 %tobool681, label %if.end.684, label %if.then.682

if.then.682:                                      ; preds = %if.end.676
  %348 = load i32, i32* %score, align 4
  %add683 = add nsw i32 %348, 7
  store i32 %add683, i32* %score, align 4
  br label %if.end.684

if.end.684:                                       ; preds = %if.then.682, %if.end.676
  br label %sw.epilog

sw.bb.685:                                        ; preds = %if.end.128
  %349 = load i32, i32* %wr, align 4
  %inc686 = add nsw i32 %349, 1
  store i32 %inc686, i32* %wr, align 4
  %350 = load i32, i32* %wr, align 4
  %cmp687 = icmp eq i32 %350, 1
  br i1 %cmp687, label %if.then.688, label %if.end.693

if.then.688:                                      ; preds = %sw.bb.685
  %351 = load i32, i32* %i, align 4
  %idxprom689 = sext i32 %351 to i64
  %arrayidx690 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom689
  %352 = load i32, i32* %arrayidx690, align 4
  store i32 %352, i32* %fwrook, align 4
  %353 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %353 to i64
  %arrayidx692 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom691
  %354 = load i32, i32* %arrayidx692, align 4
  store i32 %354, i32* %rwrook, align 4
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.688, %sw.bb.685
  %355 = load i32, i32* %srank, align 4
  %cmp694 = icmp eq i32 %355, 7
  br i1 %cmp694, label %if.then.695, label %if.end.703

if.then.695:                                      ; preds = %if.end.693
  %356 = load i32, i32* %score, align 4
  %add696 = add nsw i32 %356, 25
  store i32 %add696, i32* %score, align 4
  %357 = load i32, i32* %wr, align 4
  %cmp697 = icmp eq i32 %357, 2
  br i1 %cmp697, label %land.lhs.true.698, label %if.end.702

land.lhs.true.698:                                ; preds = %if.then.695
  %358 = load i32, i32* %rwrook, align 4
  %cmp699 = icmp eq i32 %358, 7
  br i1 %cmp699, label %if.then.700, label %if.end.702

if.then.700:                                      ; preds = %land.lhs.true.698
  %359 = load i32, i32* %score, align 4
  %add701 = add nsw i32 %359, 10
  store i32 %add701, i32* %score, align 4
  br label %if.end.702

if.end.702:                                       ; preds = %if.then.700, %land.lhs.true.698, %if.then.695
  br label %if.end.703

if.end.703:                                       ; preds = %if.end.702, %if.end.693
  %360 = load i32, i32* %pawn_file, align 4
  %idxprom704 = sext i32 %360 to i64
  %arrayidx705 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx706 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx705, i32 0, i64 %idxprom704
  %361 = load i32, i32* %arrayidx706, align 4
  %tobool707 = icmp ne i32 %361, 0
  br i1 %tobool707, label %if.end.725, label %if.then.708

if.then.708:                                      ; preds = %if.end.703
  %362 = load i32, i32* %score, align 4
  %add709 = add nsw i32 %362, 5
  store i32 %add709, i32* %score, align 4
  %363 = load i32, i32* %wr, align 4
  %cmp710 = icmp eq i32 %363, 2
  br i1 %cmp710, label %land.lhs.true.711, label %if.end.717

land.lhs.true.711:                                ; preds = %if.then.708
  %364 = load i32, i32* %i, align 4
  %idxprom712 = sext i32 %364 to i64
  %arrayidx713 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom712
  %365 = load i32, i32* %arrayidx713, align 4
  %366 = load i32, i32* %fwrook, align 4
  %cmp714 = icmp eq i32 %365, %366
  br i1 %cmp714, label %if.then.715, label %if.end.717

if.then.715:                                      ; preds = %land.lhs.true.711
  %367 = load i32, i32* %score, align 4
  %add716 = add nsw i32 %367, 12
  store i32 %add716, i32* %score, align 4
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.715, %land.lhs.true.711, %if.then.708
  %368 = load i32, i32* %pawn_file, align 4
  %idxprom718 = sext i32 %368 to i64
  %arrayidx719 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx720 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx719, i32 0, i64 %idxprom718
  %369 = load i32, i32* %arrayidx720, align 4
  %tobool721 = icmp ne i32 %369, 0
  br i1 %tobool721, label %if.end.724, label %if.then.722

if.then.722:                                      ; preds = %if.end.717
  %370 = load i32, i32* %score, align 4
  %add723 = add nsw i32 %370, 3
  store i32 %add723, i32* %score, align 4
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.722, %if.end.717
  br label %if.end.725

if.end.725:                                       ; preds = %if.end.724, %if.end.703
  br label %sw.epilog

sw.bb.726:                                        ; preds = %if.end.128
  %371 = load i32, i32* %br, align 4
  %inc727 = add nsw i32 %371, 1
  store i32 %inc727, i32* %br, align 4
  %372 = load i32, i32* %br, align 4
  %cmp728 = icmp eq i32 %372, 1
  br i1 %cmp728, label %if.then.729, label %if.end.734

if.then.729:                                      ; preds = %sw.bb.726
  %373 = load i32, i32* %i, align 4
  %idxprom730 = sext i32 %373 to i64
  %arrayidx731 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom730
  %374 = load i32, i32* %arrayidx731, align 4
  store i32 %374, i32* %fbrook, align 4
  %375 = load i32, i32* %i, align 4
  %idxprom732 = sext i32 %375 to i64
  %arrayidx733 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom732
  %376 = load i32, i32* %arrayidx733, align 4
  store i32 %376, i32* %rbrook, align 4
  br label %if.end.734

if.end.734:                                       ; preds = %if.then.729, %sw.bb.726
  %377 = load i32, i32* %srank, align 4
  %cmp735 = icmp eq i32 %377, 2
  br i1 %cmp735, label %if.then.736, label %if.end.744

if.then.736:                                      ; preds = %if.end.734
  %378 = load i32, i32* %score, align 4
  %sub737 = sub nsw i32 %378, 25
  store i32 %sub737, i32* %score, align 4
  %379 = load i32, i32* %wr, align 4
  %cmp738 = icmp eq i32 %379, 2
  br i1 %cmp738, label %land.lhs.true.739, label %if.end.743

land.lhs.true.739:                                ; preds = %if.then.736
  %380 = load i32, i32* %rbrook, align 4
  %cmp740 = icmp eq i32 %380, 2
  br i1 %cmp740, label %if.then.741, label %if.end.743

if.then.741:                                      ; preds = %land.lhs.true.739
  %381 = load i32, i32* %score, align 4
  %sub742 = sub nsw i32 %381, 10
  store i32 %sub742, i32* %score, align 4
  br label %if.end.743

if.end.743:                                       ; preds = %if.then.741, %land.lhs.true.739, %if.then.736
  br label %if.end.744

if.end.744:                                       ; preds = %if.end.743, %if.end.734
  %382 = load i32, i32* %pawn_file, align 4
  %idxprom745 = sext i32 %382 to i64
  %arrayidx746 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx747 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx746, i32 0, i64 %idxprom745
  %383 = load i32, i32* %arrayidx747, align 4
  %tobool748 = icmp ne i32 %383, 0
  br i1 %tobool748, label %if.end.766, label %if.then.749

if.then.749:                                      ; preds = %if.end.744
  %384 = load i32, i32* %score, align 4
  %sub750 = sub nsw i32 %384, 5
  store i32 %sub750, i32* %score, align 4
  %385 = load i32, i32* %br, align 4
  %cmp751 = icmp eq i32 %385, 2
  br i1 %cmp751, label %land.lhs.true.752, label %if.end.758

land.lhs.true.752:                                ; preds = %if.then.749
  %386 = load i32, i32* %i, align 4
  %idxprom753 = sext i32 %386 to i64
  %arrayidx754 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom753
  %387 = load i32, i32* %arrayidx754, align 4
  %388 = load i32, i32* %fbrook, align 4
  %cmp755 = icmp eq i32 %387, %388
  br i1 %cmp755, label %if.then.756, label %if.end.758

if.then.756:                                      ; preds = %land.lhs.true.752
  %389 = load i32, i32* %score, align 4
  %sub757 = sub nsw i32 %389, 12
  store i32 %sub757, i32* %score, align 4
  br label %if.end.758

if.end.758:                                       ; preds = %if.then.756, %land.lhs.true.752, %if.then.749
  %390 = load i32, i32* %pawn_file, align 4
  %idxprom759 = sext i32 %390 to i64
  %arrayidx760 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx761 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx760, i32 0, i64 %idxprom759
  %391 = load i32, i32* %arrayidx761, align 4
  %tobool762 = icmp ne i32 %391, 0
  br i1 %tobool762, label %if.end.765, label %if.then.763

if.then.763:                                      ; preds = %if.end.758
  %392 = load i32, i32* %score, align 4
  %sub764 = sub nsw i32 %392, 3
  store i32 %sub764, i32* %score, align 4
  br label %if.end.765

if.end.765:                                       ; preds = %if.then.763, %if.end.758
  br label %if.end.766

if.end.766:                                       ; preds = %if.end.765, %if.end.744
  br label %sw.epilog

sw.bb.767:                                        ; preds = %if.end.128
  %393 = load i32, i32* %wb, align 4
  %inc768 = add nsw i32 %393, 1
  store i32 %inc768, i32* %wb, align 4
  br label %sw.epilog

sw.bb.769:                                        ; preds = %if.end.128
  %394 = load i32, i32* %bb, align 4
  %inc770 = add nsw i32 %394, 1
  store i32 %inc770, i32* %bb, align 4
  br label %sw.epilog

sw.bb.771:                                        ; preds = %if.end.128
  %395 = load i32, i32* %wn, align 4
  %inc772 = add nsw i32 %395, 1
  store i32 %inc772, i32* %wn, align 4
  br label %sw.epilog

sw.bb.773:                                        ; preds = %if.end.128
  %396 = load i32, i32* %bn, align 4
  %inc774 = add nsw i32 %396, 1
  store i32 %inc774, i32* %bn, align 4
  br label %sw.epilog

sw.bb.775:                                        ; preds = %if.end.128
  %397 = load i32, i32* %wq, align 4
  %inc776 = add nsw i32 %397, 1
  store i32 %inc776, i32* %wq, align 4
  br label %sw.epilog

sw.bb.777:                                        ; preds = %if.end.128
  %398 = load i32, i32* %bq, align 4
  %inc778 = add nsw i32 %398, 1
  store i32 %inc778, i32* %bq, align 4
  br label %sw.epilog

sw.bb.779:                                        ; preds = %if.end.128
  %399 = load i32, i32* @wmat, align 4
  %cmp780 = icmp sgt i32 %399, 1300
  br i1 %cmp780, label %if.then.781, label %if.else.877

if.then.781:                                      ; preds = %sw.bb.779
  %400 = load i32, i32* %i, align 4
  %idxprom782 = sext i32 %400 to i64
  %arrayidx783 = getelementptr inbounds [144 x i32], [144 x i32]* @swhite_king, i32 0, i64 %idxprom782
  %401 = load i32, i32* %arrayidx783, align 4
  %402 = load i32, i32* %score, align 4
  %add784 = add nsw i32 %402, %401
  store i32 %add784, i32* %score, align 4
  %403 = load i32, i32* @white_castled, align 4
  %cmp785 = icmp eq i32 %403, 2
  br i1 %cmp785, label %if.then.786, label %if.else.788

if.then.786:                                      ; preds = %if.then.781
  %404 = load i32, i32* %score, align 4
  %add787 = add nsw i32 %404, 15
  store i32 %add787, i32* %score, align 4
  br label %if.end.805

if.else.788:                                      ; preds = %if.then.781
  %405 = load i32, i32* @white_castled, align 4
  %cmp789 = icmp eq i32 %405, 1
  br i1 %cmp789, label %if.then.790, label %if.else.792

if.then.790:                                      ; preds = %if.else.788
  %406 = load i32, i32* %score, align 4
  %add791 = add nsw i32 %406, 25
  store i32 %add791, i32* %score, align 4
  br label %if.end.804

if.else.792:                                      ; preds = %if.else.788
  %407 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 30), align 4
  %tobool793 = icmp ne i32 %407, 0
  br i1 %tobool793, label %if.then.794, label %if.end.803

if.then.794:                                      ; preds = %if.else.792
  %408 = load i32, i32* %score, align 4
  %sub795 = sub nsw i32 %408, 10
  store i32 %sub795, i32* %score, align 4
  %409 = load i32, i32* %pawn_file, align 4
  %idxprom796 = sext i32 %409 to i64
  %arrayidx797 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx798 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx797, i32 0, i64 %idxprom796
  %410 = load i32, i32* %arrayidx798, align 4
  %tobool799 = icmp ne i32 %410, 0
  br i1 %tobool799, label %if.end.802, label %if.then.800

if.then.800:                                      ; preds = %if.then.794
  %411 = load i32, i32* %score, align 4
  %sub801 = sub nsw i32 %411, 15
  store i32 %sub801, i32* %score, align 4
  br label %if.end.802

if.end.802:                                       ; preds = %if.then.800, %if.then.794
  br label %if.end.803

if.end.803:                                       ; preds = %if.end.802, %if.else.792
  br label %if.end.804

if.end.804:                                       ; preds = %if.end.803, %if.then.790
  br label %if.end.805

if.end.805:                                       ; preds = %if.end.804, %if.then.786
  %412 = load i32, i32* @wking_loc, align 4
  %idxprom806 = sext i32 %412 to i64
  %arrayidx807 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom806
  %413 = load i32, i32* %arrayidx807, align 4
  %cmp808 = icmp ne i32 %413, 4
  br i1 %cmp808, label %land.lhs.true.809, label %if.else.874

land.lhs.true.809:                                ; preds = %if.end.805
  %414 = load i32, i32* @wking_loc, align 4
  %idxprom810 = sext i32 %414 to i64
  %arrayidx811 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom810
  %415 = load i32, i32* %arrayidx811, align 4
  %cmp812 = icmp ne i32 %415, 5
  br i1 %cmp812, label %if.then.813, label %if.else.874

if.then.813:                                      ; preds = %land.lhs.true.809
  %416 = load i32, i32* %srank, align 4
  %417 = load i32, i32* %pawn_file, align 4
  %idxprom814 = sext i32 %417 to i64
  %arrayidx815 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom814
  %418 = load i32, i32* %arrayidx815, align 4
  %cmp816 = icmp slt i32 %416, %418
  br i1 %cmp816, label %land.lhs.true.817, label %if.else.829

land.lhs.true.817:                                ; preds = %if.then.813
  %419 = load i32, i32* %pawn_file, align 4
  %idxprom818 = sext i32 %419 to i64
  %arrayidx819 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx820 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx819, i32 0, i64 %idxprom818
  %420 = load i32, i32* %arrayidx820, align 4
  %tobool821 = icmp ne i32 %420, 0
  br i1 %tobool821, label %if.then.822, label %if.else.829

if.then.822:                                      ; preds = %land.lhs.true.817
  %421 = load i32, i32* %pawn_file, align 4
  %idxprom823 = sext i32 %421 to i64
  %arrayidx824 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom823
  %422 = load i32, i32* %arrayidx824, align 4
  %423 = load i32, i32* %srank, align 4
  %sub825 = sub nsw i32 %422, %423
  %sub826 = sub nsw i32 %sub825, 1
  %mul827 = mul nsw i32 9, %sub826
  %424 = load i32, i32* %score, align 4
  %sub828 = sub nsw i32 %424, %mul827
  store i32 %sub828, i32* %score, align 4
  br label %if.end.831

if.else.829:                                      ; preds = %land.lhs.true.817, %if.then.813
  %425 = load i32, i32* %score, align 4
  %sub830 = sub nsw i32 %425, 22
  store i32 %sub830, i32* %score, align 4
  br label %if.end.831

if.end.831:                                       ; preds = %if.else.829, %if.then.822
  %426 = load i32, i32* %srank, align 4
  %427 = load i32, i32* %pawn_file, align 4
  %add832 = add nsw i32 %427, 1
  %idxprom833 = sext i32 %add832 to i64
  %arrayidx834 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom833
  %428 = load i32, i32* %arrayidx834, align 4
  %cmp835 = icmp slt i32 %426, %428
  br i1 %cmp835, label %land.lhs.true.836, label %if.else.850

land.lhs.true.836:                                ; preds = %if.end.831
  %429 = load i32, i32* %pawn_file, align 4
  %add837 = add nsw i32 %429, 1
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx840 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx839, i32 0, i64 %idxprom838
  %430 = load i32, i32* %arrayidx840, align 4
  %tobool841 = icmp ne i32 %430, 0
  br i1 %tobool841, label %if.then.842, label %if.else.850

if.then.842:                                      ; preds = %land.lhs.true.836
  %431 = load i32, i32* %pawn_file, align 4
  %add843 = add nsw i32 %431, 1
  %idxprom844 = sext i32 %add843 to i64
  %arrayidx845 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom844
  %432 = load i32, i32* %arrayidx845, align 4
  %433 = load i32, i32* %srank, align 4
  %sub846 = sub nsw i32 %432, %433
  %sub847 = sub nsw i32 %sub846, 1
  %mul848 = mul nsw i32 8, %sub847
  %434 = load i32, i32* %score, align 4
  %sub849 = sub nsw i32 %434, %mul848
  store i32 %sub849, i32* %score, align 4
  br label %if.end.852

if.else.850:                                      ; preds = %land.lhs.true.836, %if.end.831
  %435 = load i32, i32* %score, align 4
  %sub851 = sub nsw i32 %435, 16
  store i32 %sub851, i32* %score, align 4
  br label %if.end.852

if.end.852:                                       ; preds = %if.else.850, %if.then.842
  %436 = load i32, i32* %srank, align 4
  %437 = load i32, i32* %pawn_file, align 4
  %sub853 = sub nsw i32 %437, 1
  %idxprom854 = sext i32 %sub853 to i64
  %arrayidx855 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom854
  %438 = load i32, i32* %arrayidx855, align 4
  %cmp856 = icmp slt i32 %436, %438
  br i1 %cmp856, label %land.lhs.true.857, label %if.else.871

land.lhs.true.857:                                ; preds = %if.end.852
  %439 = load i32, i32* %pawn_file, align 4
  %sub858 = sub nsw i32 %439, 1
  %idxprom859 = sext i32 %sub858 to i64
  %arrayidx860 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx861 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx860, i32 0, i64 %idxprom859
  %440 = load i32, i32* %arrayidx861, align 4
  %tobool862 = icmp ne i32 %440, 0
  br i1 %tobool862, label %if.then.863, label %if.else.871

if.then.863:                                      ; preds = %land.lhs.true.857
  %441 = load i32, i32* %pawn_file, align 4
  %sub864 = sub nsw i32 %441, 1
  %idxprom865 = sext i32 %sub864 to i64
  %arrayidx866 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom865
  %442 = load i32, i32* %arrayidx866, align 4
  %443 = load i32, i32* %srank, align 4
  %sub867 = sub nsw i32 %442, %443
  %sub868 = sub nsw i32 %sub867, 1
  %mul869 = mul nsw i32 8, %sub868
  %444 = load i32, i32* %score, align 4
  %sub870 = sub nsw i32 %444, %mul869
  store i32 %sub870, i32* %score, align 4
  br label %if.end.873

if.else.871:                                      ; preds = %land.lhs.true.857, %if.end.852
  %445 = load i32, i32* %score, align 4
  %sub872 = sub nsw i32 %445, 16
  store i32 %sub872, i32* %score, align 4
  br label %if.end.873

if.end.873:                                       ; preds = %if.else.871, %if.then.863
  br label %if.end.876

if.else.874:                                      ; preds = %land.lhs.true.809, %if.end.805
  %446 = load i32, i32* %score, align 4
  %sub875 = sub nsw i32 %446, 10
  store i32 %sub875, i32* %score, align 4
  br label %if.end.876

if.end.876:                                       ; preds = %if.else.874, %if.end.873
  br label %if.end.881

if.else.877:                                      ; preds = %sw.bb.779
  %447 = load i32, i32* %i, align 4
  %idxprom878 = sext i32 %447 to i64
  %arrayidx879 = getelementptr inbounds [144 x i32], [144 x i32]* @send_king, i32 0, i64 %idxprom878
  %448 = load i32, i32* %arrayidx879, align 4
  %449 = load i32, i32* %score, align 4
  %add880 = add nsw i32 %449, %448
  store i32 %add880, i32* %score, align 4
  br label %if.end.881

if.end.881:                                       ; preds = %if.else.877, %if.end.876
  br label %sw.epilog

sw.bb.882:                                        ; preds = %if.end.128
  %450 = load i32, i32* @bmat, align 4
  %cmp883 = icmp sgt i32 %450, 1300
  br i1 %cmp883, label %if.then.884, label %if.else.986

if.then.884:                                      ; preds = %sw.bb.882
  %451 = load i32, i32* %i, align 4
  %idxprom885 = sext i32 %451 to i64
  %arrayidx886 = getelementptr inbounds [144 x i32], [144 x i32]* @sblack_king, i32 0, i64 %idxprom885
  %452 = load i32, i32* %arrayidx886, align 4
  %453 = load i32, i32* %score, align 4
  %sub887 = sub nsw i32 %453, %452
  store i32 %sub887, i32* %score, align 4
  %454 = load i32, i32* @black_castled, align 4
  %cmp888 = icmp eq i32 %454, 4
  br i1 %cmp888, label %if.then.889, label %if.else.891

if.then.889:                                      ; preds = %if.then.884
  %455 = load i32, i32* %score, align 4
  %sub890 = sub nsw i32 %455, 15
  store i32 %sub890, i32* %score, align 4
  br label %if.end.908

if.else.891:                                      ; preds = %if.then.884
  %456 = load i32, i32* @black_castled, align 4
  %cmp892 = icmp eq i32 %456, 3
  br i1 %cmp892, label %if.then.893, label %if.else.895

if.then.893:                                      ; preds = %if.else.891
  %457 = load i32, i32* %score, align 4
  %sub894 = sub nsw i32 %457, 25
  store i32 %sub894, i32* %score, align 4
  br label %if.end.907

if.else.895:                                      ; preds = %if.else.891
  %458 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 114), align 4
  %tobool896 = icmp ne i32 %458, 0
  br i1 %tobool896, label %if.then.897, label %if.end.906

if.then.897:                                      ; preds = %if.else.895
  %459 = load i32, i32* %score, align 4
  %add898 = add nsw i32 %459, 10
  store i32 %add898, i32* %score, align 4
  %460 = load i32, i32* %pawn_file, align 4
  %idxprom899 = sext i32 %460 to i64
  %arrayidx900 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx901 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx900, i32 0, i64 %idxprom899
  %461 = load i32, i32* %arrayidx901, align 4
  %tobool902 = icmp ne i32 %461, 0
  br i1 %tobool902, label %if.end.905, label %if.then.903

if.then.903:                                      ; preds = %if.then.897
  %462 = load i32, i32* %score, align 4
  %add904 = add nsw i32 %462, 15
  store i32 %add904, i32* %score, align 4
  br label %if.end.905

if.end.905:                                       ; preds = %if.then.903, %if.then.897
  br label %if.end.906

if.end.906:                                       ; preds = %if.end.905, %if.else.895
  br label %if.end.907

if.end.907:                                       ; preds = %if.end.906, %if.then.893
  br label %if.end.908

if.end.908:                                       ; preds = %if.end.907, %if.then.889
  %463 = load i32, i32* @bking_loc, align 4
  %idxprom909 = sext i32 %463 to i64
  %arrayidx910 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom909
  %464 = load i32, i32* %arrayidx910, align 4
  %cmp911 = icmp ne i32 %464, 4
  br i1 %cmp911, label %land.lhs.true.912, label %if.else.983

land.lhs.true.912:                                ; preds = %if.end.908
  %465 = load i32, i32* @bking_loc, align 4
  %idxprom913 = sext i32 %465 to i64
  %arrayidx914 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom913
  %466 = load i32, i32* %arrayidx914, align 4
  %cmp915 = icmp ne i32 %466, 5
  br i1 %cmp915, label %if.then.916, label %if.else.983

if.then.916:                                      ; preds = %land.lhs.true.912
  %467 = load i32, i32* %srank, align 4
  %468 = load i32, i32* %pawn_file, align 4
  %idxprom917 = sext i32 %468 to i64
  %arrayidx918 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom917
  %469 = load i32, i32* %arrayidx918, align 4
  %cmp919 = icmp sgt i32 %467, %469
  br i1 %cmp919, label %land.lhs.true.920, label %if.else.934

land.lhs.true.920:                                ; preds = %if.then.916
  %470 = load i32, i32* %pawn_file, align 4
  %idxprom921 = sext i32 %470 to i64
  %arrayidx922 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx923 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx922, i32 0, i64 %idxprom921
  %471 = load i32, i32* %arrayidx923, align 4
  %tobool924 = icmp ne i32 %471, 0
  br i1 %tobool924, label %if.then.925, label %if.else.934

if.then.925:                                      ; preds = %land.lhs.true.920
  %472 = load i32, i32* %srank, align 4
  %473 = load i32, i32* %pawn_file, align 4
  %idxprom926 = sext i32 %473 to i64
  %arrayidx927 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom926
  %474 = load i32, i32* %arrayidx927, align 4
  %sub928 = sub nsw i32 %472, %474
  %sub929 = sub nsw i32 %sub928, 1
  %idxprom930 = sext i32 %sub929 to i64
  %arrayidx931 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom930
  %475 = load i32, i32* %arrayidx931, align 4
  %mul932 = mul nsw i32 9, %475
  %476 = load i32, i32* %score, align 4
  %add933 = add nsw i32 %476, %mul932
  store i32 %add933, i32* %score, align 4
  br label %if.end.936

if.else.934:                                      ; preds = %land.lhs.true.920, %if.then.916
  %477 = load i32, i32* %score, align 4
  %add935 = add nsw i32 %477, 22
  store i32 %add935, i32* %score, align 4
  br label %if.end.936

if.end.936:                                       ; preds = %if.else.934, %if.then.925
  %478 = load i32, i32* %srank, align 4
  %479 = load i32, i32* %pawn_file, align 4
  %add937 = add nsw i32 %479, 1
  %idxprom938 = sext i32 %add937 to i64
  %arrayidx939 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom938
  %480 = load i32, i32* %arrayidx939, align 4
  %cmp940 = icmp sgt i32 %478, %480
  br i1 %cmp940, label %land.lhs.true.941, label %if.else.957

land.lhs.true.941:                                ; preds = %if.end.936
  %481 = load i32, i32* %pawn_file, align 4
  %add942 = add nsw i32 %481, 1
  %idxprom943 = sext i32 %add942 to i64
  %arrayidx944 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx945 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx944, i32 0, i64 %idxprom943
  %482 = load i32, i32* %arrayidx945, align 4
  %tobool946 = icmp ne i32 %482, 0
  br i1 %tobool946, label %if.then.947, label %if.else.957

if.then.947:                                      ; preds = %land.lhs.true.941
  %483 = load i32, i32* %srank, align 4
  %484 = load i32, i32* %pawn_file, align 4
  %add948 = add nsw i32 %484, 1
  %idxprom949 = sext i32 %add948 to i64
  %arrayidx950 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom949
  %485 = load i32, i32* %arrayidx950, align 4
  %sub951 = sub nsw i32 %483, %485
  %sub952 = sub nsw i32 %sub951, 1
  %idxprom953 = sext i32 %sub952 to i64
  %arrayidx954 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom953
  %486 = load i32, i32* %arrayidx954, align 4
  %mul955 = mul nsw i32 8, %486
  %487 = load i32, i32* %score, align 4
  %add956 = add nsw i32 %487, %mul955
  store i32 %add956, i32* %score, align 4
  br label %if.end.959

if.else.957:                                      ; preds = %land.lhs.true.941, %if.end.936
  %488 = load i32, i32* %score, align 4
  %add958 = add nsw i32 %488, 16
  store i32 %add958, i32* %score, align 4
  br label %if.end.959

if.end.959:                                       ; preds = %if.else.957, %if.then.947
  %489 = load i32, i32* %srank, align 4
  %490 = load i32, i32* %pawn_file, align 4
  %sub960 = sub nsw i32 %490, 1
  %idxprom961 = sext i32 %sub960 to i64
  %arrayidx962 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom961
  %491 = load i32, i32* %arrayidx962, align 4
  %cmp963 = icmp sgt i32 %489, %491
  br i1 %cmp963, label %land.lhs.true.964, label %if.else.980

land.lhs.true.964:                                ; preds = %if.end.959
  %492 = load i32, i32* %pawn_file, align 4
  %sub965 = sub nsw i32 %492, 1
  %idxprom966 = sext i32 %sub965 to i64
  %arrayidx967 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx968 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx967, i32 0, i64 %idxprom966
  %493 = load i32, i32* %arrayidx968, align 4
  %tobool969 = icmp ne i32 %493, 0
  br i1 %tobool969, label %if.then.970, label %if.else.980

if.then.970:                                      ; preds = %land.lhs.true.964
  %494 = load i32, i32* %srank, align 4
  %495 = load i32, i32* %pawn_file, align 4
  %sub971 = sub nsw i32 %495, 1
  %idxprom972 = sext i32 %sub971 to i64
  %arrayidx973 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom972
  %496 = load i32, i32* %arrayidx973, align 4
  %sub974 = sub nsw i32 %494, %496
  %sub975 = sub nsw i32 %sub974, 1
  %idxprom976 = sext i32 %sub975 to i64
  %arrayidx977 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom976
  %497 = load i32, i32* %arrayidx977, align 4
  %mul978 = mul nsw i32 8, %497
  %498 = load i32, i32* %score, align 4
  %add979 = add nsw i32 %498, %mul978
  store i32 %add979, i32* %score, align 4
  br label %if.end.982

if.else.980:                                      ; preds = %land.lhs.true.964, %if.end.959
  %499 = load i32, i32* %score, align 4
  %add981 = add nsw i32 %499, 16
  store i32 %add981, i32* %score, align 4
  br label %if.end.982

if.end.982:                                       ; preds = %if.else.980, %if.then.970
  br label %if.end.985

if.else.983:                                      ; preds = %land.lhs.true.912, %if.end.908
  %500 = load i32, i32* %score, align 4
  %add984 = add nsw i32 %500, 10
  store i32 %add984, i32* %score, align 4
  br label %if.end.985

if.end.985:                                       ; preds = %if.else.983, %if.end.982
  br label %if.end.990

if.else.986:                                      ; preds = %sw.bb.882
  %501 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %501 to i64
  %arrayidx988 = getelementptr inbounds [144 x i32], [144 x i32]* @send_king, i32 0, i64 %idxprom987
  %502 = load i32, i32* %arrayidx988, align 4
  %503 = load i32, i32* %score, align 4
  %sub989 = sub nsw i32 %503, %502
  store i32 %sub989, i32* %score, align 4
  br label %if.end.990

if.end.990:                                       ; preds = %if.else.986, %if.end.985
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.128, %if.end.990, %if.end.881, %sw.bb.777, %sw.bb.775, %sw.bb.773, %sw.bb.771, %sw.bb.769, %sw.bb.767, %if.end.766, %if.end.725, %if.end.684, %if.end.413
  br label %for.inc.991

for.inc.991:                                      ; preds = %sw.epilog, %if.then.125
  %504 = load i32, i32* %j, align 4
  %inc992 = add nsw i32 %504, 1
  store i32 %inc992, i32* %j, align 4
  br label %for.cond.119

for.end.993:                                      ; preds = %for.cond.119
  %505 = load i32, i32* @wmat, align 4
  %cmp994 = icmp sgt i32 %505, 2200
  br i1 %cmp994, label %if.then.997, label %lor.lhs.false.995

lor.lhs.false.995:                                ; preds = %for.end.993
  %506 = load i32, i32* @bmat, align 4
  %cmp996 = icmp sgt i32 %506, 2200
  br i1 %cmp996, label %if.then.997, label %if.end.1022

if.then.997:                                      ; preds = %lor.lhs.false.995, %for.end.993
  %507 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 41), align 4
  %tobool998 = icmp ne i32 %507, 0
  br i1 %tobool998, label %if.end.1003, label %land.lhs.true.999

land.lhs.true.999:                                ; preds = %if.then.997
  %508 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 53), align 4
  %cmp1000 = icmp ne i32 %508, 13
  br i1 %cmp1000, label %if.then.1001, label %if.end.1003

if.then.1001:                                     ; preds = %land.lhs.true.999
  %509 = load i32, i32* %score, align 4
  %sub1002 = sub nsw i32 %509, 5
  store i32 %sub1002, i32* %score, align 4
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.1001, %land.lhs.true.999, %if.then.997
  %510 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 42), align 4
  %tobool1004 = icmp ne i32 %510, 0
  br i1 %tobool1004, label %if.end.1009, label %land.lhs.true.1005

land.lhs.true.1005:                               ; preds = %if.end.1003
  %511 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 54), align 4
  %cmp1006 = icmp ne i32 %511, 13
  br i1 %cmp1006, label %if.then.1007, label %if.end.1009

if.then.1007:                                     ; preds = %land.lhs.true.1005
  %512 = load i32, i32* %score, align 4
  %sub1008 = sub nsw i32 %512, 5
  store i32 %sub1008, i32* %score, align 4
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.then.1007, %land.lhs.true.1005, %if.end.1003
  %513 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 101), align 4
  %tobool1010 = icmp ne i32 %513, 0
  br i1 %tobool1010, label %if.end.1015, label %land.lhs.true.1011

land.lhs.true.1011:                               ; preds = %if.end.1009
  %514 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 89), align 4
  %cmp1012 = icmp ne i32 %514, 13
  br i1 %cmp1012, label %if.then.1013, label %if.end.1015

if.then.1013:                                     ; preds = %land.lhs.true.1011
  %515 = load i32, i32* %score, align 4
  %add1014 = add nsw i32 %515, 5
  store i32 %add1014, i32* %score, align 4
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.then.1013, %land.lhs.true.1011, %if.end.1009
  %516 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @moved, i32 0, i64 102), align 4
  %tobool1016 = icmp ne i32 %516, 0
  br i1 %tobool1016, label %if.end.1021, label %land.lhs.true.1017

land.lhs.true.1017:                               ; preds = %if.end.1015
  %517 = load i32, i32* getelementptr inbounds ([144 x i32], [144 x i32]* @board, i32 0, i64 90), align 4
  %cmp1018 = icmp ne i32 %517, 13
  br i1 %cmp1018, label %if.then.1019, label %if.end.1021

if.then.1019:                                     ; preds = %land.lhs.true.1017
  %518 = load i32, i32* %score, align 4
  %add1020 = add nsw i32 %518, 5
  store i32 %add1020, i32* %score, align 4
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1019, %land.lhs.true.1017, %if.end.1015
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.end.1021, %lor.lhs.false.995
  %519 = load i32, i32* @wmat, align 4
  %cmp1023 = icmp sgt i32 %519, 1300
  br i1 %cmp1023, label %if.then.1026, label %lor.lhs.false.1024

lor.lhs.false.1024:                               ; preds = %if.end.1022
  %520 = load i32, i32* @bmat, align 4
  %cmp1025 = icmp sgt i32 %520, 1300
  br i1 %cmp1025, label %if.then.1026, label %if.end.1124

if.then.1026:                                     ; preds = %lor.lhs.false.1024, %if.end.1022
  %521 = load i32, i32* @wking_loc, align 4
  %idxprom1027 = sext i32 %521 to i64
  %arrayidx1028 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom1027
  %522 = load i32, i32* %arrayidx1028, align 4
  %add1029 = add nsw i32 %522, 1
  store i32 %add1029, i32* %wking_pawn_file, align 4
  %523 = load i32, i32* @bking_loc, align 4
  %idxprom1030 = sext i32 %523 to i64
  %arrayidx1031 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom1030
  %524 = load i32, i32* %arrayidx1031, align 4
  %add1032 = add nsw i32 %524, 1
  store i32 %add1032, i32* %bking_pawn_file, align 4
  %525 = load i32, i32* %wking_pawn_file, align 4
  %526 = load i32, i32* %bking_pawn_file, align 4
  %sub1033 = sub nsw i32 %525, %526
  %call1034 = call i32 @abs(i32 %sub1033) #4
  %cmp1035 = icmp sgt i32 %call1034, 2
  br i1 %cmp1035, label %if.then.1036, label %if.end.1123

if.then.1036:                                     ; preds = %if.then.1026
  %527 = load i32, i32* %wking_pawn_file, align 4
  %idxprom1037 = sext i32 %527 to i64
  %arrayidx1038 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom1037
  %528 = load i32, i32* %arrayidx1038, align 4
  %idxprom1039 = sext i32 %528 to i64
  %arrayidx1040 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom1039
  %529 = load i32, i32* %arrayidx1040, align 4
  %sub1041 = sub nsw i32 %529, 2
  %mul1042 = mul nsw i32 3, %sub1041
  %530 = load i32, i32* %wksafety, align 4
  %add1043 = add nsw i32 %530, %mul1042
  store i32 %add1043, i32* %wksafety, align 4
  %531 = load i32, i32* %wking_pawn_file, align 4
  %add1044 = add nsw i32 %531, 1
  %idxprom1045 = sext i32 %add1044 to i64
  %arrayidx1046 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom1045
  %532 = load i32, i32* %arrayidx1046, align 4
  %idxprom1047 = sext i32 %532 to i64
  %arrayidx1048 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom1047
  %533 = load i32, i32* %arrayidx1048, align 4
  %sub1049 = sub nsw i32 %533, 2
  %mul1050 = mul nsw i32 3, %sub1049
  %534 = load i32, i32* %wksafety, align 4
  %add1051 = add nsw i32 %534, %mul1050
  store i32 %add1051, i32* %wksafety, align 4
  %535 = load i32, i32* %wking_pawn_file, align 4
  %sub1052 = sub nsw i32 %535, 1
  %idxprom1053 = sext i32 %sub1052 to i64
  %arrayidx1054 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom1053
  %536 = load i32, i32* %arrayidx1054, align 4
  %idxprom1055 = sext i32 %536 to i64
  %arrayidx1056 = getelementptr inbounds [9 x i32], [9 x i32]* @srev_rank, i32 0, i64 %idxprom1055
  %537 = load i32, i32* %arrayidx1056, align 4
  %sub1057 = sub nsw i32 %537, 2
  %mul1058 = mul nsw i32 3, %sub1057
  %538 = load i32, i32* %wksafety, align 4
  %add1059 = add nsw i32 %538, %mul1058
  store i32 %add1059, i32* %wksafety, align 4
  %539 = load i32, i32* %bking_pawn_file, align 4
  %idxprom1060 = sext i32 %539 to i64
  %arrayidx1061 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom1060
  %540 = load i32, i32* %arrayidx1061, align 4
  %sub1062 = sub nsw i32 %540, 2
  %mul1063 = mul nsw i32 3, %sub1062
  %541 = load i32, i32* %bksafety, align 4
  %add1064 = add nsw i32 %541, %mul1063
  store i32 %add1064, i32* %bksafety, align 4
  %542 = load i32, i32* %bking_pawn_file, align 4
  %add1065 = add nsw i32 %542, 1
  %idxprom1066 = sext i32 %add1065 to i64
  %arrayidx1067 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom1066
  %543 = load i32, i32* %arrayidx1067, align 4
  %sub1068 = sub nsw i32 %543, 2
  %mul1069 = mul nsw i32 3, %sub1068
  %544 = load i32, i32* %bksafety, align 4
  %add1070 = add nsw i32 %544, %mul1069
  store i32 %add1070, i32* %bksafety, align 4
  %545 = load i32, i32* %bking_pawn_file, align 4
  %sub1071 = sub nsw i32 %545, 1
  %idxprom1072 = sext i32 %sub1071 to i64
  %arrayidx1073 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom1072
  %546 = load i32, i32* %arrayidx1073, align 4
  %sub1074 = sub nsw i32 %546, 2
  %mul1075 = mul nsw i32 3, %sub1074
  %547 = load i32, i32* %bksafety, align 4
  %add1076 = add nsw i32 %547, %mul1075
  store i32 %add1076, i32* %bksafety, align 4
  %548 = load i32, i32* %wking_pawn_file, align 4
  %idxprom1077 = sext i32 %548 to i64
  %arrayidx1078 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx1079 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1078, i32 0, i64 %idxprom1077
  %549 = load i32, i32* %arrayidx1079, align 4
  %tobool1080 = icmp ne i32 %549, 0
  br i1 %tobool1080, label %if.end.1083, label %if.then.1081

if.then.1081:                                     ; preds = %if.then.1036
  %550 = load i32, i32* %wksafety, align 4
  %add1082 = add nsw i32 %550, 8
  store i32 %add1082, i32* %wksafety, align 4
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.then.1081, %if.then.1036
  %551 = load i32, i32* %wking_pawn_file, align 4
  %add1084 = add nsw i32 %551, 1
  %idxprom1085 = sext i32 %add1084 to i64
  %arrayidx1086 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx1087 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1086, i32 0, i64 %idxprom1085
  %552 = load i32, i32* %arrayidx1087, align 4
  %tobool1088 = icmp ne i32 %552, 0
  br i1 %tobool1088, label %if.end.1091, label %if.then.1089

if.then.1089:                                     ; preds = %if.end.1083
  %553 = load i32, i32* %wksafety, align 4
  %add1090 = add nsw i32 %553, 6
  store i32 %add1090, i32* %wksafety, align 4
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1089, %if.end.1083
  %554 = load i32, i32* %wking_pawn_file, align 4
  %sub1092 = sub nsw i32 %554, 1
  %idxprom1093 = sext i32 %sub1092 to i64
  %arrayidx1094 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx1095 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1094, i32 0, i64 %idxprom1093
  %555 = load i32, i32* %arrayidx1095, align 4
  %tobool1096 = icmp ne i32 %555, 0
  br i1 %tobool1096, label %if.end.1099, label %if.then.1097

if.then.1097:                                     ; preds = %if.end.1091
  %556 = load i32, i32* %wksafety, align 4
  %add1098 = add nsw i32 %556, 6
  store i32 %add1098, i32* %wksafety, align 4
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.then.1097, %if.end.1091
  %557 = load i32, i32* %bking_pawn_file, align 4
  %idxprom1100 = sext i32 %557 to i64
  %arrayidx1101 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx1102 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1101, i32 0, i64 %idxprom1100
  %558 = load i32, i32* %arrayidx1102, align 4
  %tobool1103 = icmp ne i32 %558, 0
  br i1 %tobool1103, label %if.end.1106, label %if.then.1104

if.then.1104:                                     ; preds = %if.end.1099
  %559 = load i32, i32* %bksafety, align 4
  %add1105 = add nsw i32 %559, 8
  store i32 %add1105, i32* %bksafety, align 4
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.then.1104, %if.end.1099
  %560 = load i32, i32* %bking_pawn_file, align 4
  %add1107 = add nsw i32 %560, 1
  %idxprom1108 = sext i32 %add1107 to i64
  %arrayidx1109 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx1110 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1109, i32 0, i64 %idxprom1108
  %561 = load i32, i32* %arrayidx1110, align 4
  %tobool1111 = icmp ne i32 %561, 0
  br i1 %tobool1111, label %if.end.1114, label %if.then.1112

if.then.1112:                                     ; preds = %if.end.1106
  %562 = load i32, i32* %bksafety, align 4
  %add1113 = add nsw i32 %562, 6
  store i32 %add1113, i32* %bksafety, align 4
  br label %if.end.1114

if.end.1114:                                      ; preds = %if.then.1112, %if.end.1106
  %563 = load i32, i32* %bking_pawn_file, align 4
  %sub1115 = sub nsw i32 %563, 1
  %idxprom1116 = sext i32 %sub1115 to i64
  %arrayidx1117 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx1118 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx1117, i32 0, i64 %idxprom1116
  %564 = load i32, i32* %arrayidx1118, align 4
  %tobool1119 = icmp ne i32 %564, 0
  br i1 %tobool1119, label %if.end.1122, label %if.then.1120

if.then.1120:                                     ; preds = %if.end.1114
  %565 = load i32, i32* %bksafety, align 4
  %add1121 = add nsw i32 %565, 6
  store i32 %add1121, i32* %bksafety, align 4
  br label %if.end.1122

if.end.1122:                                      ; preds = %if.then.1120, %if.end.1114
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.end.1122, %if.then.1026
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.end.1123, %lor.lhs.false.1024
  %566 = load i32, i32* @bmat, align 4
  %cmp1125 = icmp sgt i32 %566, 1300
  br i1 %cmp1125, label %land.lhs.true.1126, label %if.end.1130

land.lhs.true.1126:                               ; preds = %if.end.1124
  %567 = load i32, i32* %bq, align 4
  %tobool1127 = icmp ne i32 %567, 0
  br i1 %tobool1127, label %if.then.1128, label %if.end.1130

if.then.1128:                                     ; preds = %land.lhs.true.1126
  %568 = load i32, i32* %wksafety, align 4
  %569 = load i32, i32* %score, align 4
  %sub1129 = sub nsw i32 %569, %568
  store i32 %sub1129, i32* %score, align 4
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.then.1128, %land.lhs.true.1126, %if.end.1124
  %570 = load i32, i32* @wmat, align 4
  %cmp1131 = icmp sgt i32 %570, 1300
  br i1 %cmp1131, label %land.lhs.true.1132, label %if.end.1136

land.lhs.true.1132:                               ; preds = %if.end.1130
  %571 = load i32, i32* %wq, align 4
  %tobool1133 = icmp ne i32 %571, 0
  br i1 %tobool1133, label %if.then.1134, label %if.end.1136

if.then.1134:                                     ; preds = %land.lhs.true.1132
  %572 = load i32, i32* %bksafety, align 4
  %573 = load i32, i32* %score, align 4
  %add1135 = add nsw i32 %573, %572
  store i32 %add1135, i32* %score, align 4
  br label %if.end.1136

if.end.1136:                                      ; preds = %if.then.1134, %land.lhs.true.1132, %if.end.1130
  %574 = load i32, i32* %wr, align 4
  %tobool1137 = icmp ne i32 %574, 0
  br i1 %tobool1137, label %if.end.1146, label %land.lhs.true.1138

land.lhs.true.1138:                               ; preds = %if.end.1136
  %575 = load i32, i32* %wq, align 4
  %tobool1139 = icmp ne i32 %575, 0
  br i1 %tobool1139, label %if.end.1146, label %land.lhs.true.1140

land.lhs.true.1140:                               ; preds = %land.lhs.true.1138
  %576 = load i32, i32* %wb, align 4
  %tobool1141 = icmp ne i32 %576, 0
  br i1 %tobool1141, label %if.end.1146, label %land.lhs.true.1142

land.lhs.true.1142:                               ; preds = %land.lhs.true.1140
  %577 = load i32, i32* %wn, align 4
  %tobool1143 = icmp ne i32 %577, 0
  br i1 %tobool1143, label %if.end.1146, label %if.then.1144

if.then.1144:                                     ; preds = %land.lhs.true.1142
  %578 = load i32, i32* %bpotential, align 4
  %579 = load i32, i32* %score, align 4
  %add1145 = add nsw i32 %579, %578
  store i32 %add1145, i32* %score, align 4
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.then.1144, %land.lhs.true.1142, %land.lhs.true.1140, %land.lhs.true.1138, %if.end.1136
  %580 = load i32, i32* %br, align 4
  %tobool1147 = icmp ne i32 %580, 0
  br i1 %tobool1147, label %if.end.1156, label %land.lhs.true.1148

land.lhs.true.1148:                               ; preds = %if.end.1146
  %581 = load i32, i32* %bq, align 4
  %tobool1149 = icmp ne i32 %581, 0
  br i1 %tobool1149, label %if.end.1156, label %land.lhs.true.1150

land.lhs.true.1150:                               ; preds = %land.lhs.true.1148
  %582 = load i32, i32* %bb, align 4
  %tobool1151 = icmp ne i32 %582, 0
  br i1 %tobool1151, label %if.end.1156, label %land.lhs.true.1152

land.lhs.true.1152:                               ; preds = %land.lhs.true.1150
  %583 = load i32, i32* %bn, align 4
  %tobool1153 = icmp ne i32 %583, 0
  br i1 %tobool1153, label %if.end.1156, label %if.then.1154

if.then.1154:                                     ; preds = %land.lhs.true.1152
  %584 = load i32, i32* %wpotential, align 4
  %585 = load i32, i32* %score, align 4
  %add1155 = add nsw i32 %585, %584
  store i32 %add1155, i32* %score, align 4
  br label %if.end.1156

if.end.1156:                                      ; preds = %if.then.1154, %land.lhs.true.1152, %land.lhs.true.1150, %land.lhs.true.1148, %if.end.1146
  %586 = load i32, i32* %wp, align 4
  %tobool1157 = icmp ne i32 %586, 0
  br i1 %tobool1157, label %if.else.1260, label %land.lhs.true.1158

land.lhs.true.1158:                               ; preds = %if.end.1156
  %587 = load i32, i32* %bp, align 4
  %tobool1159 = icmp ne i32 %587, 0
  br i1 %tobool1159, label %if.else.1260, label %if.then.1160

if.then.1160:                                     ; preds = %land.lhs.true.1158
  %588 = load i32, i32* %wr, align 4
  %tobool1161 = icmp ne i32 %588, 0
  br i1 %tobool1161, label %if.else.1209, label %land.lhs.true.1162

land.lhs.true.1162:                               ; preds = %if.then.1160
  %589 = load i32, i32* %br, align 4
  %tobool1163 = icmp ne i32 %589, 0
  br i1 %tobool1163, label %if.else.1209, label %land.lhs.true.1164

land.lhs.true.1164:                               ; preds = %land.lhs.true.1162
  %590 = load i32, i32* %wq, align 4
  %tobool1165 = icmp ne i32 %590, 0
  br i1 %tobool1165, label %if.else.1209, label %land.lhs.true.1166

land.lhs.true.1166:                               ; preds = %land.lhs.true.1164
  %591 = load i32, i32* %bq, align 4
  %tobool1167 = icmp ne i32 %591, 0
  br i1 %tobool1167, label %if.else.1209, label %if.then.1168

if.then.1168:                                     ; preds = %land.lhs.true.1166
  %592 = load i32, i32* %bb, align 4
  %tobool1169 = icmp ne i32 %592, 0
  br i1 %tobool1169, label %if.else.1178, label %land.lhs.true.1170

land.lhs.true.1170:                               ; preds = %if.then.1168
  %593 = load i32, i32* %wb, align 4
  %tobool1171 = icmp ne i32 %593, 0
  br i1 %tobool1171, label %if.else.1178, label %if.then.1172

if.then.1172:                                     ; preds = %land.lhs.true.1170
  %594 = load i32, i32* %wn, align 4
  %cmp1173 = icmp slt i32 %594, 3
  br i1 %cmp1173, label %land.lhs.true.1174, label %if.end.1177

land.lhs.true.1174:                               ; preds = %if.then.1172
  %595 = load i32, i32* %bn, align 4
  %cmp1175 = icmp slt i32 %595, 3
  br i1 %cmp1175, label %if.then.1176, label %if.end.1177

if.then.1176:                                     ; preds = %land.lhs.true.1174
  store i32 0, i32* %score, align 4
  br label %if.end.1177

if.end.1177:                                      ; preds = %if.then.1176, %land.lhs.true.1174, %if.then.1172
  br label %if.end.1208

if.else.1178:                                     ; preds = %land.lhs.true.1170, %if.then.1168
  %596 = load i32, i32* %wn, align 4
  %tobool1179 = icmp ne i32 %596, 0
  br i1 %tobool1179, label %if.else.1188, label %land.lhs.true.1180

land.lhs.true.1180:                               ; preds = %if.else.1178
  %597 = load i32, i32* %bn, align 4
  %tobool1181 = icmp ne i32 %597, 0
  br i1 %tobool1181, label %if.else.1188, label %if.then.1182

if.then.1182:                                     ; preds = %land.lhs.true.1180
  %598 = load i32, i32* %wb, align 4
  %599 = load i32, i32* %bb, align 4
  %sub1183 = sub nsw i32 %598, %599
  %call1184 = call i32 @abs(i32 %sub1183) #4
  %cmp1185 = icmp slt i32 %call1184, 2
  br i1 %cmp1185, label %if.then.1186, label %if.end.1187

if.then.1186:                                     ; preds = %if.then.1182
  store i32 0, i32* %score, align 4
  br label %if.end.1187

if.end.1187:                                      ; preds = %if.then.1186, %if.then.1182
  br label %if.end.1207

if.else.1188:                                     ; preds = %land.lhs.true.1180, %if.else.1178
  %600 = load i32, i32* %wn, align 4
  %cmp1189 = icmp slt i32 %600, 3
  br i1 %cmp1189, label %land.lhs.true.1190, label %lor.lhs.false.1192

land.lhs.true.1190:                               ; preds = %if.else.1188
  %601 = load i32, i32* %wb, align 4
  %tobool1191 = icmp ne i32 %601, 0
  br i1 %tobool1191, label %lor.lhs.false.1192, label %if.then.1196

lor.lhs.false.1192:                               ; preds = %land.lhs.true.1190, %if.else.1188
  %602 = load i32, i32* %wb, align 4
  %cmp1193 = icmp eq i32 %602, 1
  br i1 %cmp1193, label %land.lhs.true.1194, label %if.end.1206

land.lhs.true.1194:                               ; preds = %lor.lhs.false.1192
  %603 = load i32, i32* %wn, align 4
  %tobool1195 = icmp ne i32 %603, 0
  br i1 %tobool1195, label %if.end.1206, label %if.then.1196

if.then.1196:                                     ; preds = %land.lhs.true.1194, %land.lhs.true.1190
  %604 = load i32, i32* %bn, align 4
  %cmp1197 = icmp slt i32 %604, 3
  br i1 %cmp1197, label %land.lhs.true.1198, label %lor.lhs.false.1200

land.lhs.true.1198:                               ; preds = %if.then.1196
  %605 = load i32, i32* %bb, align 4
  %tobool1199 = icmp ne i32 %605, 0
  br i1 %tobool1199, label %lor.lhs.false.1200, label %if.then.1204

lor.lhs.false.1200:                               ; preds = %land.lhs.true.1198, %if.then.1196
  %606 = load i32, i32* %bb, align 4
  %cmp1201 = icmp eq i32 %606, 1
  br i1 %cmp1201, label %land.lhs.true.1202, label %if.end.1205

land.lhs.true.1202:                               ; preds = %lor.lhs.false.1200
  %607 = load i32, i32* %bn, align 4
  %tobool1203 = icmp ne i32 %607, 0
  br i1 %tobool1203, label %if.end.1205, label %if.then.1204

if.then.1204:                                     ; preds = %land.lhs.true.1202, %land.lhs.true.1198
  store i32 0, i32* %score, align 4
  br label %if.end.1205

if.end.1205:                                      ; preds = %if.then.1204, %land.lhs.true.1202, %lor.lhs.false.1200
  br label %if.end.1206

if.end.1206:                                      ; preds = %if.end.1205, %land.lhs.true.1194, %lor.lhs.false.1192
  br label %if.end.1207

if.end.1207:                                      ; preds = %if.end.1206, %if.end.1187
  br label %if.end.1208

if.end.1208:                                      ; preds = %if.end.1207, %if.end.1177
  br label %if.end.1259

if.else.1209:                                     ; preds = %land.lhs.true.1166, %land.lhs.true.1164, %land.lhs.true.1162, %if.then.1160
  %608 = load i32, i32* %wq, align 4
  %tobool1210 = icmp ne i32 %608, 0
  br i1 %tobool1210, label %if.end.1258, label %land.lhs.true.1211

land.lhs.true.1211:                               ; preds = %if.else.1209
  %609 = load i32, i32* %bq, align 4
  %tobool1212 = icmp ne i32 %609, 0
  br i1 %tobool1212, label %if.end.1258, label %if.then.1213

if.then.1213:                                     ; preds = %land.lhs.true.1211
  %610 = load i32, i32* %wr, align 4
  %cmp1214 = icmp eq i32 %610, 1
  br i1 %cmp1214, label %land.lhs.true.1215, label %if.else.1225

land.lhs.true.1215:                               ; preds = %if.then.1213
  %611 = load i32, i32* %br, align 4
  %cmp1216 = icmp eq i32 %611, 1
  br i1 %cmp1216, label %if.then.1217, label %if.else.1225

if.then.1217:                                     ; preds = %land.lhs.true.1215
  %612 = load i32, i32* %wn, align 4
  %613 = load i32, i32* %wb, align 4
  %add1218 = add nsw i32 %612, %613
  %cmp1219 = icmp slt i32 %add1218, 2
  br i1 %cmp1219, label %land.lhs.true.1220, label %if.end.1224

land.lhs.true.1220:                               ; preds = %if.then.1217
  %614 = load i32, i32* %bn, align 4
  %615 = load i32, i32* %bb, align 4
  %add1221 = add nsw i32 %614, %615
  %cmp1222 = icmp slt i32 %add1221, 2
  br i1 %cmp1222, label %if.then.1223, label %if.end.1224

if.then.1223:                                     ; preds = %land.lhs.true.1220
  store i32 0, i32* %score, align 4
  br label %if.end.1224

if.end.1224:                                      ; preds = %if.then.1223, %land.lhs.true.1220, %if.then.1217
  br label %if.end.1257

if.else.1225:                                     ; preds = %land.lhs.true.1215, %if.then.1213
  %616 = load i32, i32* %wr, align 4
  %cmp1226 = icmp eq i32 %616, 1
  br i1 %cmp1226, label %land.lhs.true.1227, label %if.else.1240

land.lhs.true.1227:                               ; preds = %if.else.1225
  %617 = load i32, i32* %br, align 4
  %tobool1228 = icmp ne i32 %617, 0
  br i1 %tobool1228, label %if.else.1240, label %if.then.1229

if.then.1229:                                     ; preds = %land.lhs.true.1227
  %618 = load i32, i32* %wn, align 4
  %619 = load i32, i32* %wb, align 4
  %add1230 = add nsw i32 %618, %619
  %cmp1231 = icmp eq i32 %add1230, 0
  br i1 %cmp1231, label %land.lhs.true.1232, label %if.end.1239

land.lhs.true.1232:                               ; preds = %if.then.1229
  %620 = load i32, i32* %bn, align 4
  %621 = load i32, i32* %bb, align 4
  %add1233 = add nsw i32 %620, %621
  %cmp1234 = icmp eq i32 %add1233, 1
  br i1 %cmp1234, label %if.then.1238, label %lor.lhs.false.1235

lor.lhs.false.1235:                               ; preds = %land.lhs.true.1232
  %622 = load i32, i32* %bn, align 4
  %623 = load i32, i32* %bb, align 4
  %add1236 = add nsw i32 %622, %623
  %cmp1237 = icmp eq i32 %add1236, 2
  br i1 %cmp1237, label %if.then.1238, label %if.end.1239

if.then.1238:                                     ; preds = %lor.lhs.false.1235, %land.lhs.true.1232
  store i32 0, i32* %score, align 4
  br label %if.end.1239

if.end.1239:                                      ; preds = %if.then.1238, %lor.lhs.false.1235, %if.then.1229
  br label %if.end.1256

if.else.1240:                                     ; preds = %land.lhs.true.1227, %if.else.1225
  %624 = load i32, i32* %br, align 4
  %cmp1241 = icmp eq i32 %624, 1
  br i1 %cmp1241, label %land.lhs.true.1242, label %if.end.1255

land.lhs.true.1242:                               ; preds = %if.else.1240
  %625 = load i32, i32* %wr, align 4
  %tobool1243 = icmp ne i32 %625, 0
  br i1 %tobool1243, label %if.end.1255, label %if.then.1244

if.then.1244:                                     ; preds = %land.lhs.true.1242
  %626 = load i32, i32* %bn, align 4
  %627 = load i32, i32* %bb, align 4
  %add1245 = add nsw i32 %626, %627
  %cmp1246 = icmp eq i32 %add1245, 0
  br i1 %cmp1246, label %land.lhs.true.1247, label %if.end.1254

land.lhs.true.1247:                               ; preds = %if.then.1244
  %628 = load i32, i32* %wn, align 4
  %629 = load i32, i32* %wb, align 4
  %add1248 = add nsw i32 %628, %629
  %cmp1249 = icmp eq i32 %add1248, 1
  br i1 %cmp1249, label %if.then.1253, label %lor.lhs.false.1250

lor.lhs.false.1250:                               ; preds = %land.lhs.true.1247
  %630 = load i32, i32* %wn, align 4
  %631 = load i32, i32* %wb, align 4
  %add1251 = add nsw i32 %630, %631
  %cmp1252 = icmp eq i32 %add1251, 2
  br i1 %cmp1252, label %if.then.1253, label %if.end.1254

if.then.1253:                                     ; preds = %lor.lhs.false.1250, %land.lhs.true.1247
  store i32 0, i32* %score, align 4
  br label %if.end.1254

if.end.1254:                                      ; preds = %if.then.1253, %lor.lhs.false.1250, %if.then.1244
  br label %if.end.1255

if.end.1255:                                      ; preds = %if.end.1254, %land.lhs.true.1242, %if.else.1240
  br label %if.end.1256

if.end.1256:                                      ; preds = %if.end.1255, %if.end.1239
  br label %if.end.1257

if.end.1257:                                      ; preds = %if.end.1256, %if.end.1224
  br label %if.end.1258

if.end.1258:                                      ; preds = %if.end.1257, %land.lhs.true.1211, %if.else.1209
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.end.1258, %if.end.1208
  br label %if.end.1344

if.else.1260:                                     ; preds = %land.lhs.true.1158, %if.end.1156
  %632 = load i32, i32* %wn, align 4
  %633 = load i32, i32* %wb, align 4
  %add1261 = add nsw i32 %632, %633
  %634 = load i32, i32* %bn, align 4
  %635 = load i32, i32* %bb, align 4
  %add1262 = add nsw i32 %634, %635
  %cmp1263 = icmp ne i32 %add1261, %add1262
  br i1 %cmp1263, label %if.then.1264, label %if.else.1324

if.then.1264:                                     ; preds = %if.else.1260
  %636 = load i32, i32* %wq, align 4
  %637 = load i32, i32* %wr, align 4
  %add1265 = add nsw i32 %636, %637
  %638 = load i32, i32* %bq, align 4
  %639 = load i32, i32* %br, align 4
  %add1266 = add nsw i32 %638, %639
  %cmp1267 = icmp eq i32 %add1265, %add1266
  br i1 %cmp1267, label %if.then.1268, label %if.else.1277

if.then.1268:                                     ; preds = %if.then.1264
  %640 = load i32, i32* %wn, align 4
  %641 = load i32, i32* %wb, align 4
  %add1269 = add nsw i32 %640, %641
  %642 = load i32, i32* %bn, align 4
  %643 = load i32, i32* %bb, align 4
  %add1270 = add nsw i32 %642, %643
  %cmp1271 = icmp sgt i32 %add1269, %add1270
  br i1 %cmp1271, label %if.then.1272, label %if.else.1274

if.then.1272:                                     ; preds = %if.then.1268
  %644 = load i32, i32* %score, align 4
  %add1273 = add nsw i32 %644, 120
  store i32 %add1273, i32* %score, align 4
  br label %if.end.1276

if.else.1274:                                     ; preds = %if.then.1268
  %645 = load i32, i32* %score, align 4
  %sub1275 = sub nsw i32 %645, 120
  store i32 %sub1275, i32* %score, align 4
  br label %if.end.1276

if.end.1276:                                      ; preds = %if.else.1274, %if.then.1272
  br label %if.end.1323

if.else.1277:                                     ; preds = %if.then.1264
  %646 = load i32, i32* %wr, align 4
  %647 = load i32, i32* %wq, align 4
  %add1278 = add nsw i32 %646, %647
  %648 = load i32, i32* %br, align 4
  %649 = load i32, i32* %bq, align 4
  %add1279 = add nsw i32 %648, %649
  %sub1280 = sub nsw i32 %add1278, %add1279
  %call1281 = call i32 @abs(i32 %sub1280) #4
  %cmp1282 = icmp eq i32 %call1281, 1
  br i1 %cmp1282, label %if.then.1283, label %if.else.1299

if.then.1283:                                     ; preds = %if.else.1277
  %650 = load i32, i32* %wb, align 4
  %651 = load i32, i32* %wn, align 4
  %add1284 = add nsw i32 %650, %651
  %652 = load i32, i32* %bb, align 4
  %653 = load i32, i32* %bn, align 4
  %add1285 = add nsw i32 %652, %653
  %add1286 = add nsw i32 %add1285, 1
  %cmp1287 = icmp sgt i32 %add1284, %add1286
  br i1 %cmp1287, label %if.then.1288, label %if.else.1290

if.then.1288:                                     ; preds = %if.then.1283
  %654 = load i32, i32* %score, align 4
  %add1289 = add nsw i32 %654, 120
  store i32 %add1289, i32* %score, align 4
  br label %if.end.1298

if.else.1290:                                     ; preds = %if.then.1283
  %655 = load i32, i32* %bb, align 4
  %656 = load i32, i32* %bn, align 4
  %add1291 = add nsw i32 %655, %656
  %657 = load i32, i32* %wb, align 4
  %658 = load i32, i32* %wn, align 4
  %add1292 = add nsw i32 %657, %658
  %add1293 = add nsw i32 %add1292, 1
  %cmp1294 = icmp sgt i32 %add1291, %add1293
  br i1 %cmp1294, label %if.then.1295, label %if.end.1297

if.then.1295:                                     ; preds = %if.else.1290
  %659 = load i32, i32* %score, align 4
  %sub1296 = sub nsw i32 %659, 120
  store i32 %sub1296, i32* %score, align 4
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.then.1295, %if.else.1290
  br label %if.end.1298

if.end.1298:                                      ; preds = %if.end.1297, %if.then.1288
  br label %if.end.1322

if.else.1299:                                     ; preds = %if.else.1277
  %660 = load i32, i32* %wr, align 4
  %661 = load i32, i32* %wq, align 4
  %add1300 = add nsw i32 %660, %661
  %662 = load i32, i32* %br, align 4
  %663 = load i32, i32* %bq, align 4
  %add1301 = add nsw i32 %662, %663
  %sub1302 = sub nsw i32 %add1300, %add1301
  %call1303 = call i32 @abs(i32 %sub1302) #4
  %cmp1304 = icmp eq i32 %call1303, 2
  br i1 %cmp1304, label %if.then.1305, label %if.end.1321

if.then.1305:                                     ; preds = %if.else.1299
  %664 = load i32, i32* %wb, align 4
  %665 = load i32, i32* %wn, align 4
  %add1306 = add nsw i32 %664, %665
  %666 = load i32, i32* %bb, align 4
  %667 = load i32, i32* %bn, align 4
  %add1307 = add nsw i32 %666, %667
  %add1308 = add nsw i32 %add1307, 2
  %cmp1309 = icmp sgt i32 %add1306, %add1308
  br i1 %cmp1309, label %if.then.1310, label %if.else.1312

if.then.1310:                                     ; preds = %if.then.1305
  %668 = load i32, i32* %score, align 4
  %add1311 = add nsw i32 %668, 120
  store i32 %add1311, i32* %score, align 4
  br label %if.end.1320

if.else.1312:                                     ; preds = %if.then.1305
  %669 = load i32, i32* %bb, align 4
  %670 = load i32, i32* %bn, align 4
  %add1313 = add nsw i32 %669, %670
  %671 = load i32, i32* %wb, align 4
  %672 = load i32, i32* %wn, align 4
  %add1314 = add nsw i32 %671, %672
  %add1315 = add nsw i32 %add1314, 2
  %cmp1316 = icmp sgt i32 %add1313, %add1315
  br i1 %cmp1316, label %if.then.1317, label %if.end.1319

if.then.1317:                                     ; preds = %if.else.1312
  %673 = load i32, i32* %score, align 4
  %sub1318 = sub nsw i32 %673, 120
  store i32 %sub1318, i32* %score, align 4
  br label %if.end.1319

if.end.1319:                                      ; preds = %if.then.1317, %if.else.1312
  br label %if.end.1320

if.end.1320:                                      ; preds = %if.end.1319, %if.then.1310
  br label %if.end.1321

if.end.1321:                                      ; preds = %if.end.1320, %if.else.1299
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.end.1321, %if.end.1298
  br label %if.end.1323

if.end.1323:                                      ; preds = %if.end.1322, %if.end.1276
  br label %if.end.1343

if.else.1324:                                     ; preds = %if.else.1260
  %674 = load i32, i32* %wq, align 4
  %675 = load i32, i32* %wr, align 4
  %add1325 = add nsw i32 %674, %675
  %676 = load i32, i32* %bq, align 4
  %677 = load i32, i32* %br, align 4
  %add1326 = add nsw i32 %676, %677
  %cmp1327 = icmp eq i32 %add1325, %add1326
  br i1 %cmp1327, label %if.then.1328, label %if.end.1342

if.then.1328:                                     ; preds = %if.else.1324
  %678 = load i32, i32* %wq, align 4
  %tobool1329 = icmp ne i32 %678, 0
  br i1 %tobool1329, label %land.lhs.true.1330, label %if.else.1334

land.lhs.true.1330:                               ; preds = %if.then.1328
  %679 = load i32, i32* %bq, align 4
  %tobool1331 = icmp ne i32 %679, 0
  br i1 %tobool1331, label %if.else.1334, label %if.then.1332

if.then.1332:                                     ; preds = %land.lhs.true.1330
  %680 = load i32, i32* %score, align 4
  %add1333 = add nsw i32 %680, 120
  store i32 %add1333, i32* %score, align 4
  br label %if.end.1341

if.else.1334:                                     ; preds = %land.lhs.true.1330, %if.then.1328
  %681 = load i32, i32* %wq, align 4
  %tobool1335 = icmp ne i32 %681, 0
  br i1 %tobool1335, label %if.end.1340, label %land.lhs.true.1336

land.lhs.true.1336:                               ; preds = %if.else.1334
  %682 = load i32, i32* %bq, align 4
  %tobool1337 = icmp ne i32 %682, 0
  br i1 %tobool1337, label %if.then.1338, label %if.end.1340

if.then.1338:                                     ; preds = %land.lhs.true.1336
  %683 = load i32, i32* %score, align 4
  %sub1339 = sub nsw i32 %683, 120
  store i32 %sub1339, i32* %score, align 4
  br label %if.end.1340

if.end.1340:                                      ; preds = %if.then.1338, %land.lhs.true.1336, %if.else.1334
  br label %if.end.1341

if.end.1341:                                      ; preds = %if.end.1340, %if.then.1332
  br label %if.end.1342

if.end.1342:                                      ; preds = %if.end.1341, %if.else.1324
  br label %if.end.1343

if.end.1343:                                      ; preds = %if.end.1342, %if.end.1323
  br label %if.end.1344

if.end.1344:                                      ; preds = %if.end.1343, %if.end.1259
  %684 = load i32, i32* %score, align 4
  call void @storeECache(i32 %684)
  %685 = load i32, i32* @Material, align 4
  %686 = load i32, i32* %score, align 4
  %sub1345 = sub nsw i32 %685, %686
  %call1346 = call i32 @abs(i32 %sub1345) #4
  %687 = load i32, i32* @maxposdiff, align 4
  %cmp1347 = icmp sgt i32 %call1346, %687
  br i1 %cmp1347, label %if.then.1348, label %if.end.1358

if.then.1348:                                     ; preds = %if.end.1344
  %688 = load i32, i32* @Material, align 4
  %689 = load i32, i32* %score, align 4
  %sub1349 = sub nsw i32 %688, %689
  %call1350 = call i32 @abs(i32 %sub1349) #4
  %cmp1351 = icmp slt i32 1000, %call1350
  br i1 %cmp1351, label %cond.true.1352, label %cond.false.1353

cond.true.1352:                                   ; preds = %if.then.1348
  br label %cond.end.1356

cond.false.1353:                                  ; preds = %if.then.1348
  %690 = load i32, i32* @Material, align 4
  %691 = load i32, i32* %score, align 4
  %sub1354 = sub nsw i32 %690, %691
  %call1355 = call i32 @abs(i32 %sub1354) #4
  br label %cond.end.1356

cond.end.1356:                                    ; preds = %cond.false.1353, %cond.true.1352
  %cond1357 = phi i32 [ 1000, %cond.true.1352 ], [ %call1355, %cond.false.1353 ]
  store i32 %cond1357, i32* @maxposdiff, align 4
  br label %if.end.1358

if.end.1358:                                      ; preds = %cond.end.1356, %if.end.1344
  %692 = load i32, i32* @white_to_move, align 4
  %cmp1359 = icmp eq i32 %692, 1
  br i1 %cmp1359, label %if.then.1360, label %if.else.1361

if.then.1360:                                     ; preds = %if.end.1358
  %693 = load i32, i32* %score, align 4
  store i32 %693, i32* %retval
  br label %return

if.else.1361:                                     ; preds = %if.end.1358
  %694 = load i32, i32* %score, align 4
  %sub1362 = sub nsw i32 0, %694
  store i32 %sub1362, i32* %retval
  br label %return

return:                                           ; preds = %if.else.1361, %if.then.1360, %if.end.31, %if.then.30, %cond.end.23, %cond.end.8
  %695 = load i32, i32* %retval
  ret i32 %695
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

declare void @storeECache(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
