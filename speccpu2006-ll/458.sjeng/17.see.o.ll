; ModuleID = 'see.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_data = type { i32, i32 }

@setup_attackers.rook_o = internal constant [4 x i32] [i32 12, i32 -12, i32 1, i32 -1], align 16
@setup_attackers.bishop_o = internal constant [4 x i32] [i32 11, i32 -11, i32 13, i32 -13], align 16
@setup_attackers.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@see_num_attackers = common global [2 x i32] zeroinitializer, align 4
@board = external global [144 x i32], align 16
@see_attackers = common global [2 x [16 x %struct.see_data]] zeroinitializer, align 16
@material = external global [14 x i32], align 16

; Function Attrs: nounwind uwtable
define void @setup_attackers(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %a_sq = alloca i32, align 4
  %b_sq = alloca i32, align 4
  %i = alloca i32, align 4
  %numw = alloca i32, align 4
  %numb = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  %0 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 0), align 4
  store i32 %0, i32* %numw, align 4
  %1 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 1), align 4
  store i32 %1, i32* %numb, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %square.addr, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.rook_o, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %a_sq, align 4
  %6 = load i32, i32* %a_sq, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  store i32 %7, i32* %b_sq, align 4
  %8 = load i32, i32* %b_sq, align 4
  %cmp3 = icmp eq i32 %8, 5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %b_sq, align 4
  %10 = load i32, i32* %numw, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom4
  %piece = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx5, i32 0, i32 0
  store i32 %9, i32* %piece, align 4
  %11 = load i32, i32* %a_sq, align 4
  %12 = load i32, i32* %numw, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom6
  %square8 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx7, i32 0, i32 1
  store i32 %11, i32* %square8, align 4
  %13 = load i32, i32* %numw, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %numw, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %b_sq, align 4
  %cmp9 = icmp eq i32 %14, 6
  br i1 %cmp9, label %if.then.10, label %if.else.18

if.then.10:                                       ; preds = %if.else
  %15 = load i32, i32* %b_sq, align 4
  %16 = load i32, i32* %numb, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom11
  %piece13 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx12, i32 0, i32 0
  store i32 %15, i32* %piece13, align 4
  %17 = load i32, i32* %a_sq, align 4
  %18 = load i32, i32* %numb, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom14
  %square16 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx15, i32 0, i32 1
  store i32 %17, i32* %square16, align 4
  %19 = load i32, i32* %numb, align 4
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %numb, align 4
  br label %for.end

if.else.18:                                       ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.else.18
  %20 = load i32, i32* %b_sq, align 4
  %cmp19 = icmp ne i32 %20, 0
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %b_sq, align 4
  %cmp20 = icmp eq i32 %21, 7
  br i1 %cmp20, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %22 = load i32, i32* %b_sq, align 4
  %cmp21 = icmp eq i32 %22, 9
  br i1 %cmp21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %lor.lhs.false, %while.body
  %23 = load i32, i32* %b_sq, align 4
  %24 = load i32, i32* %numw, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom23
  %piece25 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx24, i32 0, i32 0
  store i32 %23, i32* %piece25, align 4
  %25 = load i32, i32* %a_sq, align 4
  %26 = load i32, i32* %numw, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom26
  %square28 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx27, i32 0, i32 1
  store i32 %25, i32* %square28, align 4
  %27 = load i32, i32* %numw, align 4
  %inc29 = add nsw i32 %27, 1
  store i32 %inc29, i32* %numw, align 4
  br label %while.end

if.else.30:                                       ; preds = %lor.lhs.false
  %28 = load i32, i32* %b_sq, align 4
  %cmp31 = icmp eq i32 %28, 8
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.else.30
  %29 = load i32, i32* %b_sq, align 4
  %cmp33 = icmp eq i32 %29, 10
  br i1 %cmp33, label %if.then.34, label %if.else.42

if.then.34:                                       ; preds = %lor.lhs.false.32, %if.else.30
  %30 = load i32, i32* %b_sq, align 4
  %31 = load i32, i32* %numb, align 4
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom35
  %piece37 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx36, i32 0, i32 0
  store i32 %30, i32* %piece37, align 4
  %32 = load i32, i32* %a_sq, align 4
  %33 = load i32, i32* %numb, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom38
  %square40 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx39, i32 0, i32 1
  store i32 %32, i32* %square40, align 4
  %34 = load i32, i32* %numb, align 4
  %inc41 = add nsw i32 %34, 1
  store i32 %inc41, i32* %numb, align 4
  br label %while.end

if.else.42:                                       ; preds = %lor.lhs.false.32
  %35 = load i32, i32* %b_sq, align 4
  %cmp43 = icmp ne i32 %35, 13
  br i1 %cmp43, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %if.else.42
  br label %while.end

if.end:                                           ; preds = %if.else.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  %36 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.rook_o, i32 0, i64 %idxprom47
  %37 = load i32, i32* %arrayidx48, align 4
  %38 = load i32, i32* %a_sq, align 4
  %add49 = add nsw i32 %38, %37
  store i32 %add49, i32* %a_sq, align 4
  %39 = load i32, i32* %a_sq, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom50
  %40 = load i32, i32* %arrayidx51, align 4
  store i32 %40, i32* %b_sq, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then.44, %if.then.34, %if.then.22, %while.cond
  br label %if.end.52

if.end.52:                                        ; preds = %while.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %41 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %41, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %if.then, %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.148, %for.end
  %42 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %42, 4
  br i1 %cmp56, label %for.body.57, label %for.end.150

for.body.57:                                      ; preds = %for.cond.55
  %43 = load i32, i32* %square.addr, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.bishop_o, i32 0, i64 %idxprom58
  %45 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %43, %45
  store i32 %add60, i32* %a_sq, align 4
  %46 = load i32, i32* %a_sq, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom61
  %47 = load i32, i32* %arrayidx62, align 4
  store i32 %47, i32* %b_sq, align 4
  %48 = load i32, i32* %b_sq, align 4
  %cmp63 = icmp eq i32 %48, 1
  br i1 %cmp63, label %land.lhs.true, label %if.else.72

land.lhs.true:                                    ; preds = %for.body.57
  %49 = load i32, i32* %i, align 4
  %rem = srem i32 %49, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then.64, label %if.else.72

if.then.64:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %b_sq, align 4
  %51 = load i32, i32* %numw, align 4
  %idxprom65 = sext i32 %51 to i64
  %arrayidx66 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom65
  %piece67 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx66, i32 0, i32 0
  store i32 %50, i32* %piece67, align 4
  %52 = load i32, i32* %a_sq, align 4
  %53 = load i32, i32* %numw, align 4
  %idxprom68 = sext i32 %53 to i64
  %arrayidx69 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom68
  %square70 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx69, i32 0, i32 1
  store i32 %52, i32* %square70, align 4
  %54 = load i32, i32* %numw, align 4
  %inc71 = add nsw i32 %54, 1
  store i32 %inc71, i32* %numw, align 4
  br label %for.end.150

if.else.72:                                       ; preds = %land.lhs.true, %for.body.57
  %55 = load i32, i32* %b_sq, align 4
  %cmp73 = icmp eq i32 %55, 2
  br i1 %cmp73, label %land.lhs.true.74, label %if.else.85

land.lhs.true.74:                                 ; preds = %if.else.72
  %56 = load i32, i32* %i, align 4
  %rem75 = srem i32 %56, 2
  %tobool76 = icmp ne i32 %rem75, 0
  br i1 %tobool76, label %if.else.85, label %if.then.77

if.then.77:                                       ; preds = %land.lhs.true.74
  %57 = load i32, i32* %b_sq, align 4
  %58 = load i32, i32* %numb, align 4
  %idxprom78 = sext i32 %58 to i64
  %arrayidx79 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom78
  %piece80 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx79, i32 0, i32 0
  store i32 %57, i32* %piece80, align 4
  %59 = load i32, i32* %a_sq, align 4
  %60 = load i32, i32* %numb, align 4
  %idxprom81 = sext i32 %60 to i64
  %arrayidx82 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom81
  %square83 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx82, i32 0, i32 1
  store i32 %59, i32* %square83, align 4
  %61 = load i32, i32* %numb, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %numb, align 4
  br label %for.end.150

if.else.85:                                       ; preds = %land.lhs.true.74, %if.else.72
  %62 = load i32, i32* %b_sq, align 4
  %cmp86 = icmp eq i32 %62, 5
  br i1 %cmp86, label %if.then.87, label %if.else.95

if.then.87:                                       ; preds = %if.else.85
  %63 = load i32, i32* %b_sq, align 4
  %64 = load i32, i32* %numw, align 4
  %idxprom88 = sext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom88
  %piece90 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx89, i32 0, i32 0
  store i32 %63, i32* %piece90, align 4
  %65 = load i32, i32* %a_sq, align 4
  %66 = load i32, i32* %numw, align 4
  %idxprom91 = sext i32 %66 to i64
  %arrayidx92 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom91
  %square93 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx92, i32 0, i32 1
  store i32 %65, i32* %square93, align 4
  %67 = load i32, i32* %numw, align 4
  %inc94 = add nsw i32 %67, 1
  store i32 %inc94, i32* %numw, align 4
  br label %for.end.150

if.else.95:                                       ; preds = %if.else.85
  %68 = load i32, i32* %b_sq, align 4
  %cmp96 = icmp eq i32 %68, 6
  br i1 %cmp96, label %if.then.97, label %if.else.105

if.then.97:                                       ; preds = %if.else.95
  %69 = load i32, i32* %b_sq, align 4
  %70 = load i32, i32* %numb, align 4
  %idxprom98 = sext i32 %70 to i64
  %arrayidx99 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom98
  %piece100 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx99, i32 0, i32 0
  store i32 %69, i32* %piece100, align 4
  %71 = load i32, i32* %a_sq, align 4
  %72 = load i32, i32* %numb, align 4
  %idxprom101 = sext i32 %72 to i64
  %arrayidx102 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom101
  %square103 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx102, i32 0, i32 1
  store i32 %71, i32* %square103, align 4
  %73 = load i32, i32* %numb, align 4
  %inc104 = add nsw i32 %73, 1
  store i32 %inc104, i32* %numb, align 4
  br label %for.end.150

if.else.105:                                      ; preds = %if.else.95
  br label %while.cond.106

while.cond.106:                                   ; preds = %if.end.137, %if.else.105
  %74 = load i32, i32* %b_sq, align 4
  %cmp107 = icmp ne i32 %74, 0
  br i1 %cmp107, label %while.body.108, label %while.end.143

while.body.108:                                   ; preds = %while.cond.106
  %75 = load i32, i32* %b_sq, align 4
  %cmp109 = icmp eq i32 %75, 11
  br i1 %cmp109, label %if.then.112, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %while.body.108
  %76 = load i32, i32* %b_sq, align 4
  %cmp111 = icmp eq i32 %76, 9
  br i1 %cmp111, label %if.then.112, label %if.else.120

if.then.112:                                      ; preds = %lor.lhs.false.110, %while.body.108
  %77 = load i32, i32* %b_sq, align 4
  %78 = load i32, i32* %numw, align 4
  %idxprom113 = sext i32 %78 to i64
  %arrayidx114 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom113
  %piece115 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx114, i32 0, i32 0
  store i32 %77, i32* %piece115, align 4
  %79 = load i32, i32* %a_sq, align 4
  %80 = load i32, i32* %numw, align 4
  %idxprom116 = sext i32 %80 to i64
  %arrayidx117 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom116
  %square118 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx117, i32 0, i32 1
  store i32 %79, i32* %square118, align 4
  %81 = load i32, i32* %numw, align 4
  %inc119 = add nsw i32 %81, 1
  store i32 %inc119, i32* %numw, align 4
  br label %while.end.143

if.else.120:                                      ; preds = %lor.lhs.false.110
  %82 = load i32, i32* %b_sq, align 4
  %cmp121 = icmp eq i32 %82, 12
  br i1 %cmp121, label %if.then.124, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.else.120
  %83 = load i32, i32* %b_sq, align 4
  %cmp123 = icmp eq i32 %83, 10
  br i1 %cmp123, label %if.then.124, label %if.else.132

if.then.124:                                      ; preds = %lor.lhs.false.122, %if.else.120
  %84 = load i32, i32* %b_sq, align 4
  %85 = load i32, i32* %numb, align 4
  %idxprom125 = sext i32 %85 to i64
  %arrayidx126 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom125
  %piece127 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx126, i32 0, i32 0
  store i32 %84, i32* %piece127, align 4
  %86 = load i32, i32* %a_sq, align 4
  %87 = load i32, i32* %numb, align 4
  %idxprom128 = sext i32 %87 to i64
  %arrayidx129 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom128
  %square130 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx129, i32 0, i32 1
  store i32 %86, i32* %square130, align 4
  %88 = load i32, i32* %numb, align 4
  %inc131 = add nsw i32 %88, 1
  store i32 %inc131, i32* %numb, align 4
  br label %while.end.143

if.else.132:                                      ; preds = %lor.lhs.false.122
  %89 = load i32, i32* %b_sq, align 4
  %cmp133 = icmp ne i32 %89, 13
  br i1 %cmp133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.else.132
  br label %while.end.143

if.end.135:                                       ; preds = %if.else.132
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136
  %90 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %90 to i64
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* @setup_attackers.bishop_o, i32 0, i64 %idxprom138
  %91 = load i32, i32* %arrayidx139, align 4
  %92 = load i32, i32* %a_sq, align 4
  %add140 = add nsw i32 %92, %91
  store i32 %add140, i32* %a_sq, align 4
  %93 = load i32, i32* %a_sq, align 4
  %idxprom141 = sext i32 %93 to i64
  %arrayidx142 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom141
  %94 = load i32, i32* %arrayidx142, align 4
  store i32 %94, i32* %b_sq, align 4
  br label %while.cond.106

while.end.143:                                    ; preds = %if.then.134, %if.then.124, %if.then.112, %while.cond.106
  br label %if.end.144

if.end.144:                                       ; preds = %while.end.143
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %95 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %95, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond.55

for.end.150:                                      ; preds = %if.then.97, %if.then.87, %if.then.77, %if.then.64, %for.cond.55
  store i32 0, i32* %i, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.180, %for.end.150
  %96 = load i32, i32* %i, align 4
  %cmp152 = icmp slt i32 %96, 8
  br i1 %cmp152, label %for.body.153, label %for.end.182

for.body.153:                                     ; preds = %for.cond.151
  %97 = load i32, i32* %square.addr, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %98 to i64
  %arrayidx155 = getelementptr inbounds [8 x i32], [8 x i32]* @setup_attackers.knight_o, i32 0, i64 %idxprom154
  %99 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %97, %99
  store i32 %add156, i32* %a_sq, align 4
  %100 = load i32, i32* %a_sq, align 4
  %idxprom157 = sext i32 %100 to i64
  %arrayidx158 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom157
  %101 = load i32, i32* %arrayidx158, align 4
  store i32 %101, i32* %b_sq, align 4
  %102 = load i32, i32* %b_sq, align 4
  %cmp159 = icmp eq i32 %102, 3
  br i1 %cmp159, label %if.then.160, label %if.else.168

if.then.160:                                      ; preds = %for.body.153
  %103 = load i32, i32* %b_sq, align 4
  %104 = load i32, i32* %numw, align 4
  %idxprom161 = sext i32 %104 to i64
  %arrayidx162 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom161
  %piece163 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx162, i32 0, i32 0
  store i32 %103, i32* %piece163, align 4
  %105 = load i32, i32* %a_sq, align 4
  %106 = load i32, i32* %numw, align 4
  %idxprom164 = sext i32 %106 to i64
  %arrayidx165 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 0), i32 0, i64 %idxprom164
  %square166 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx165, i32 0, i32 1
  store i32 %105, i32* %square166, align 4
  %107 = load i32, i32* %numw, align 4
  %inc167 = add nsw i32 %107, 1
  store i32 %inc167, i32* %numw, align 4
  br label %if.end.179

if.else.168:                                      ; preds = %for.body.153
  %108 = load i32, i32* %b_sq, align 4
  %cmp169 = icmp eq i32 %108, 4
  br i1 %cmp169, label %if.then.170, label %if.end.178

if.then.170:                                      ; preds = %if.else.168
  %109 = load i32, i32* %b_sq, align 4
  %110 = load i32, i32* %numb, align 4
  %idxprom171 = sext i32 %110 to i64
  %arrayidx172 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom171
  %piece173 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx172, i32 0, i32 0
  store i32 %109, i32* %piece173, align 4
  %111 = load i32, i32* %a_sq, align 4
  %112 = load i32, i32* %numb, align 4
  %idxprom174 = sext i32 %112 to i64
  %arrayidx175 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* getelementptr inbounds ([2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 1), i32 0, i64 %idxprom174
  %square176 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx175, i32 0, i32 1
  store i32 %111, i32* %square176, align 4
  %113 = load i32, i32* %numb, align 4
  %inc177 = add nsw i32 %113, 1
  store i32 %inc177, i32* %numb, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.170, %if.else.168
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.then.160
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %114 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %114, 1
  store i32 %inc181, i32* %i, align 4
  br label %for.cond.151

for.end.182:                                      ; preds = %for.cond.151
  %115 = load i32, i32* %numw, align 4
  store i32 %115, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 0), align 4
  %116 = load i32, i32* %numb, align 4
  store i32 %116, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 1), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @findlowest(i32 %color, i32 %next) #0 {
entry:
  %color.addr = alloca i32, align 4
  %next.addr = alloca i32, align 4
  %lowestp = alloca i32, align 4
  %lowestv = alloca i32, align 4
  %swap = alloca %struct.see_data, align 4
  %i = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %next, i32* %next.addr, align 4
  %0 = load i32, i32* %next.addr, align 4
  store i32 %0, i32* %lowestp, align 4
  %1 = load i32, i32* %next.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32, i32* %color.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx, i32 0, i64 %idxprom
  %piece = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx2, i32 0, i32 0
  %3 = load i32, i32* %piece, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx4, align 4
  %call = call i32 @abs(i32 %4) #3
  store i32 %call, i32* %lowestv, align 4
  %5 = load i32, i32* %next.addr, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %color.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32, i32* %color.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx9, i32 0, i64 %idxprom7
  %piece11 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx10, i32 0, i32 0
  %11 = load i32, i32* %piece11, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 @abs(i32 %12) #3
  %13 = load i32, i32* %lowestv, align 4
  %cmp15 = icmp slt i32 %call14, %13
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %lowestp, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32, i32* %color.addr, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx18, i32 0, i64 %idxprom16
  %piece20 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx19, i32 0, i32 0
  %17 = load i32, i32* %piece20, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %call23 = call i32 @abs(i32 %18) #3
  store i32 %call23, i32* %lowestv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %next.addr, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load i32, i32* %color.addr, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx26, i32 0, i64 %idxprom24
  %22 = bitcast %struct.see_data* %swap to i8*
  %23 = bitcast %struct.see_data* %arrayidx27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 4, i1 false)
  %24 = load i32, i32* %next.addr, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i32, i32* %color.addr, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx30, i32 0, i64 %idxprom28
  %26 = load i32, i32* %lowestp, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load i32, i32* %color.addr, align 4
  %idxprom33 = sext i32 %27 to i64
  %arrayidx34 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx34, i32 0, i64 %idxprom32
  %28 = bitcast %struct.see_data* %arrayidx31 to i8*
  %29 = bitcast %struct.see_data* %arrayidx35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 8, i32 4, i1 false)
  %30 = load i32, i32* %lowestp, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i32, i32* %color.addr, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx38, i32 0, i64 %idxprom36
  %32 = bitcast %struct.see_data* %arrayidx39 to i8*
  %33 = bitcast %struct.see_data* %swap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define i32 @see(i32 %color, i32 %square, i32 %from) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %sside = alloca i32, align 4
  %caps = alloca [2 x i32], align 4
  %value = alloca i32, align 4
  %origpiece = alloca i32, align 4
  %ourbestvalue = alloca i32, align 4
  %hisbestvalue = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 1), align 4
  %0 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %origpiece, align 4
  %2 = load i32, i32* %from.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  store i32 13, i32* %arrayidx2, align 4
  %3 = load i32, i32* %color.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx4, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %arrayidx4, align 4
  %5 = load i32, i32* %origpiece, align 4
  %6 = load i32, i32* %color.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx6, i32 0, i64 0
  %piece = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx7, i32 0, i32 0
  store i32 %5, i32* %piece, align 4
  %7 = load i32, i32* %from.addr, align 4
  %8 = load i32, i32* %color.addr, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx9, i32 0, i64 0
  %square11 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx10, i32 0, i32 1
  store i32 %7, i32* %square11, align 4
  %9 = load i32, i32* %square.addr, align 4
  call void @setup_attackers(i32 %9)
  %10 = load i32, i32* %square.addr, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom12
  %11 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %call = call i32 @abs(i32 %12) #3
  store i32 %call, i32* %value, align 4
  %13 = load i32, i32* %color.addr, align 4
  %tobool = icmp ne i32 %13, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom16 = sext i32 %lnot.ext to i64
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom16
  %14 = load i32, i32* %arrayidx17, align 4
  %tobool18 = icmp ne i32 %14, 0
  br i1 %tobool18, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %origpiece, align 4
  %16 = load i32, i32* %from.addr, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  store i32 %15, i32* %arrayidx20, align 4
  %17 = load i32, i32* %value, align 4
  store i32 %17, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %value, align 4
  store i32 %18, i32* %hisbestvalue, align 4
  store i32 -1000000, i32* %ourbestvalue, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %19 = load i32, i32* %color.addr, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom21
  store i32 1, i32* %arrayidx22, align 4
  %20 = load i32, i32* %color.addr, align 4
  %tobool23 = icmp ne i32 %20, 0
  %lnot24 = xor i1 %tobool23, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %idxprom26 = sext i32 %lnot.ext25 to i64
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom26
  store i32 0, i32* %arrayidx27, align 4
  %21 = load i32, i32* %color.addr, align 4
  %tobool28 = icmp ne i32 %21, 0
  %lnot29 = xor i1 %tobool28, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  store i32 %lnot.ext30, i32* %sside, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.109, %if.end
  %22 = load i32, i32* %sside, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom31
  %23 = load i32, i32* %arrayidx32, align 4
  %24 = load i32, i32* %sside, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom33
  %25 = load i32, i32* %arrayidx34, align 4
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %sside, align 4
  %27 = load i32, i32* %sside, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom35
  %28 = load i32, i32* %arrayidx36, align 4
  call void @findlowest(i32 %26, i32 %28)
  %29 = load i32, i32* %sside, align 4
  %30 = load i32, i32* %color.addr, align 4
  %cmp37 = icmp eq i32 %29, %30
  br i1 %cmp37, label %if.then.38, label %if.else.72

if.then.38:                                       ; preds = %while.body
  %31 = load i32, i32* %sside, align 4
  %tobool39 = icmp ne i32 %31, 0
  %lnot40 = xor i1 %tobool39, true
  %lnot.ext41 = zext i1 %lnot40 to i32
  %idxprom42 = sext i32 %lnot.ext41 to i64
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom42
  %32 = load i32, i32* %arrayidx43, align 4
  %sub = sub nsw i32 %32, 1
  %idxprom44 = sext i32 %sub to i64
  %33 = load i32, i32* %sside, align 4
  %tobool45 = icmp ne i32 %33, 0
  %lnot46 = xor i1 %tobool45, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %idxprom48 = sext i32 %lnot.ext47 to i64
  %arrayidx49 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx49, i32 0, i64 %idxprom44
  %piece51 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx50, i32 0, i32 0
  %34 = load i32, i32* %piece51, align 4
  %idxprom52 = sext i32 %34 to i64
  %arrayidx53 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom52
  %35 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 @abs(i32 %35) #3
  %36 = load i32, i32* %value, align 4
  %add = add nsw i32 %36, %call54
  store i32 %add, i32* %value, align 4
  %37 = load i32, i32* %sside, align 4
  %tobool55 = icmp ne i32 %37, 0
  %lnot56 = xor i1 %tobool55, true
  %lnot.ext57 = zext i1 %lnot56 to i32
  %idxprom58 = sext i32 %lnot.ext57 to i64
  %arrayidx59 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom58
  %38 = load i32, i32* %arrayidx59, align 4
  %39 = load i32, i32* %sside, align 4
  %tobool60 = icmp ne i32 %39, 0
  %lnot61 = xor i1 %tobool60, true
  %lnot.ext62 = zext i1 %lnot61 to i32
  %idxprom63 = sext i32 %lnot.ext62 to i64
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom63
  %40 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp sle i32 %38, %40
  br i1 %cmp65, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.then.38
  %41 = load i32, i32* %value, align 4
  %42 = load i32, i32* %ourbestvalue, align 4
  %cmp66 = icmp sgt i32 %41, %42
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true
  %43 = load i32, i32* %value, align 4
  store i32 %43, i32* %ourbestvalue, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true, %if.then.38
  %44 = load i32, i32* %value, align 4
  %45 = load i32, i32* %hisbestvalue, align 4
  %cmp69 = icmp slt i32 %44, %45
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %46 = load i32, i32* %value, align 4
  store i32 %46, i32* %hisbestvalue, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  br label %if.end.109

if.else.72:                                       ; preds = %while.body
  %47 = load i32, i32* %sside, align 4
  %tobool73 = icmp ne i32 %47, 0
  %lnot74 = xor i1 %tobool73, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %idxprom76 = sext i32 %lnot.ext75 to i64
  %arrayidx77 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom76
  %48 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %48, 1
  %idxprom79 = sext i32 %sub78 to i64
  %49 = load i32, i32* %sside, align 4
  %tobool80 = icmp ne i32 %49, 0
  %lnot81 = xor i1 %tobool80, true
  %lnot.ext82 = zext i1 %lnot81 to i32
  %idxprom83 = sext i32 %lnot.ext82 to i64
  %arrayidx84 = getelementptr inbounds [2 x [16 x %struct.see_data]], [2 x [16 x %struct.see_data]]* @see_attackers, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [16 x %struct.see_data], [16 x %struct.see_data]* %arrayidx84, i32 0, i64 %idxprom79
  %piece86 = getelementptr inbounds %struct.see_data, %struct.see_data* %arrayidx85, i32 0, i32 0
  %50 = load i32, i32* %piece86, align 4
  %idxprom87 = sext i32 %50 to i64
  %arrayidx88 = getelementptr inbounds [14 x i32], [14 x i32]* @material, i32 0, i64 %idxprom87
  %51 = load i32, i32* %arrayidx88, align 4
  %call89 = call i32 @abs(i32 %51) #3
  %52 = load i32, i32* %value, align 4
  %sub90 = sub nsw i32 %52, %call89
  store i32 %sub90, i32* %value, align 4
  %53 = load i32, i32* %value, align 4
  %54 = load i32, i32* %ourbestvalue, align 4
  %cmp91 = icmp sgt i32 %53, %54
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.else.72
  %55 = load i32, i32* %value, align 4
  store i32 %55, i32* %ourbestvalue, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.else.72
  %56 = load i32, i32* %sside, align 4
  %tobool94 = icmp ne i32 %56, 0
  %lnot95 = xor i1 %tobool94, true
  %lnot.ext96 = zext i1 %lnot95 to i32
  %idxprom97 = sext i32 %lnot.ext96 to i64
  %arrayidx98 = getelementptr inbounds [2 x i32], [2 x i32]* @see_num_attackers, i32 0, i64 %idxprom97
  %57 = load i32, i32* %arrayidx98, align 4
  %58 = load i32, i32* %sside, align 4
  %tobool99 = icmp ne i32 %58, 0
  %lnot100 = xor i1 %tobool99, true
  %lnot.ext101 = zext i1 %lnot100 to i32
  %idxprom102 = sext i32 %lnot.ext101 to i64
  %arrayidx103 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom102
  %59 = load i32, i32* %arrayidx103, align 4
  %cmp104 = icmp sle i32 %57, %59
  br i1 %cmp104, label %land.lhs.true.105, label %if.end.108

land.lhs.true.105:                                ; preds = %if.end.93
  %60 = load i32, i32* %value, align 4
  %61 = load i32, i32* %hisbestvalue, align 4
  %cmp106 = icmp slt i32 %60, %61
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.105
  %62 = load i32, i32* %value, align 4
  store i32 %62, i32* %hisbestvalue, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.105, %if.end.93
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.71
  %63 = load i32, i32* %sside, align 4
  %idxprom110 = sext i32 %63 to i64
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %caps, i32 0, i64 %idxprom110
  %64 = load i32, i32* %arrayidx111, align 4
  %inc112 = add nsw i32 %64, 1
  store i32 %inc112, i32* %arrayidx111, align 4
  %65 = load i32, i32* %sside, align 4
  %xor = xor i32 %65, 1
  store i32 %xor, i32* %sside, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %66 = load i32, i32* %origpiece, align 4
  %67 = load i32, i32* %from.addr, align 4
  %idxprom113 = sext i32 %67 to i64
  %arrayidx114 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom113
  store i32 %66, i32* %arrayidx114, align 4
  %68 = load i32, i32* %ourbestvalue, align 4
  %69 = load i32, i32* %hisbestvalue, align 4
  %cmp115 = icmp sgt i32 %68, %69
  br i1 %cmp115, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %70 = load i32, i32* %hisbestvalue, align 4
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %71 = load i32, i32* %ourbestvalue, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ %71, %cond.false ]
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
