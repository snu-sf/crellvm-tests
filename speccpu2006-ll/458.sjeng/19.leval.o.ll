; ModuleID = 'leval.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@board = external global [144 x i32], align 16
@lcentral = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 30, i32 30, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -15, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Material = external global i32, align 4
@comp_color = external global i32, align 4
@l_knight_mobility.knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@l_king_mobility.king_o = internal constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16

; Function Attrs: nounwind uwtable
define i32 @losers_eval() #0 {
entry:
  %retval = alloca i32, align 4
  %srank = alloca i32, align 4
  %pawn_file = alloca i32, align 4
  %pawns = alloca [2 x [11 x i32]], align 16
  %white_back_pawn = alloca [11 x i32], align 16
  %black_back_pawn = alloca [11 x i32], align 16
  %isolated = alloca i32, align 4
  %backwards = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32, align 4
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  %wp = alloca i32, align 4
  %bp = alloca i32, align 4
  %wks = alloca i32, align 4
  %bks = alloca i32, align 4
  %wpassp = alloca i32, align 4
  %bpassp = alloca i32, align 4
  %wpawns = alloca i32, align 4
  %bpawns = alloca i32, align 4
  store i32 0, i32* %srank, align 4
  store i32 0, i32* %pawn_file, align 4
  store i32 0, i32* %score, align 4
  store i32 0, i32* %wp, align 4
  store i32 0, i32* %bp, align 4
  store i32 0, i32* %wks, align 4
  store i32 0, i32* %bks, align 4
  store i32 0, i32* %wpassp, align 4
  store i32 0, i32* %bpassp, align 4
  store i32 0, i32* %wpawns, align 4
  store i32 0, i32* %bpawns, align 4
  store i32 0, i32* %in_cache, align 4
  call void @checkECache(i32* %score, i32* %in_cache)
  %0 = load i32, i32* %in_cache, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.2

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @white_to_move, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* %score, align 4
  store i32 %2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %score, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %retval
  br label %return

if.end.2:                                         ; preds = %entry
  %4 = bitcast [2 x [11 x i32]]* %pawns to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %5, 11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom
  store i32 7, i32* %arrayidx, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom4
  store i32 2, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.52, %for.end
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* @piece_count, align 4
  %cmp7 = icmp sle i32 %9, %10
  br i1 %cmp7, label %for.body.8, label %for.end.54

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  store i32 %12, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %for.body.8
  br label %for.inc.52

if.else:                                          ; preds = %for.body.8
  %14 = load i32, i32* %a, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %a, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %pawn_file, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  store i32 %18, i32* %srank, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %20, 1
  br i1 %cmp21, label %if.then.22, label %if.else.34

if.then.22:                                       ; preds = %if.end.14
  %21 = load i32, i32* %pawn_file, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx24, i32 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx25, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %arrayidx25, align 4
  %23 = load i32, i32* %srank, align 4
  %24 = load i32, i32* %pawn_file, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom27
  %25 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp slt i32 %23, %25
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.22
  %26 = load i32, i32* %srank, align 4
  %27 = load i32, i32* %pawn_file, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom31
  store i32 %26, i32* %arrayidx32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.22
  br label %if.end.51

if.else.34:                                       ; preds = %if.end.14
  %28 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %29, 2
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %if.else.34
  %30 = load i32, i32* %pawn_file, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx40, i32 0, i64 %idxprom39
  %31 = load i32, i32* %arrayidx41, align 4
  %inc42 = add nsw i32 %31, 1
  store i32 %inc42, i32* %arrayidx41, align 4
  %32 = load i32, i32* %srank, align 4
  %33 = load i32, i32* %pawn_file, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom43
  %34 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp sgt i32 %32, %34
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.then.38
  %35 = load i32, i32* %srank, align 4
  %36 = load i32, i32* %pawn_file, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom47
  store i32 %35, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.else.34
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.33
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.12
  %37 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond.6

for.end.54:                                       ; preds = %for.cond.6
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.389, %for.end.54
  %38 = load i32, i32* %a, align 4
  %39 = load i32, i32* @piece_count, align 4
  %cmp56 = icmp sle i32 %38, %39
  br i1 %cmp56, label %for.body.57, label %for.end.391

for.body.57:                                      ; preds = %for.cond.55
  %40 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom58
  %41 = load i32, i32* %arrayidx59, align 4
  store i32 %41, i32* %i, align 4
  %42 = load i32, i32* %i, align 4
  %tobool60 = icmp ne i32 %42, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %for.body.57
  br label %for.inc.389

if.else.62:                                       ; preds = %for.body.57
  %43 = load i32, i32* %a, align 4
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, i32* %a, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62
  %44 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom65
  %45 = load i32, i32* %arrayidx66, align 4
  switch i32 %45, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.183
    i32 7, label %sw.bb.305
    i32 8, label %sw.bb.313
    i32 11, label %sw.bb.321
    i32 12, label %sw.bb.329
    i32 3, label %sw.bb.337
    i32 4, label %sw.bb.346
    i32 9, label %sw.bb.355
    i32 10, label %sw.bb.366
    i32 5, label %sw.bb.377
    i32 6, label %sw.bb.383
  ]

sw.bb:                                            ; preds = %if.end.64
  %46 = load i32, i32* %wp, align 4
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, i32* %wp, align 4
  %47 = load i32, i32* %wpawns, align 4
  %inc68 = add nsw i32 %47, 1
  store i32 %inc68, i32* %wpawns, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %48 to i64
  %arrayidx70 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom69
  %49 = load i32, i32* %arrayidx70, align 4
  %50 = load i32, i32* %score, align 4
  %add71 = add nsw i32 %50, %49
  store i32 %add71, i32* %score, align 4
  %51 = load i32, i32* %i, align 4
  %call = call i32 @l_pawn_mobility(i32 %51)
  %shl = shl i32 %call, 2
  %52 = load i32, i32* %score, align 4
  %add72 = add nsw i32 %52, %shl
  store i32 %add72, i32* %score, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %53 to i64
  %arrayidx74 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom73
  %54 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %54, 2
  %mul = mul nsw i32 %sub75, 8
  %55 = load i32, i32* %score, align 4
  %add76 = add nsw i32 %55, %mul
  store i32 %add76, i32* %score, align 4
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %56 = load i32, i32* %pawn_file, align 4
  %add77 = add nsw i32 %56, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom78
  %57 = load i32, i32* %arrayidx79, align 4
  %58 = load i32, i32* %srank, align 4
  %cmp80 = icmp sgt i32 %57, %58
  br i1 %cmp80, label %land.lhs.true, label %if.end.101

land.lhs.true:                                    ; preds = %sw.bb
  %59 = load i32, i32* %pawn_file, align 4
  %sub81 = sub nsw i32 %59, 1
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom82
  %60 = load i32, i32* %arrayidx83, align 4
  %61 = load i32, i32* %srank, align 4
  %cmp84 = icmp sgt i32 %60, %61
  br i1 %cmp84, label %if.then.85, label %if.end.101

if.then.85:                                       ; preds = %land.lhs.true
  %62 = load i32, i32* %score, align 4
  %sub86 = sub nsw i32 %62, 8
  store i32 %sub86, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %63 = load i32, i32* %pawn_file, align 4
  %add87 = add nsw i32 %63, 1
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx89, i32 0, i64 %idxprom88
  %64 = load i32, i32* %arrayidx90, align 4
  %tobool91 = icmp ne i32 %64, 0
  br i1 %tobool91, label %if.end.100, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %if.then.85
  %65 = load i32, i32* %pawn_file, align 4
  %sub93 = sub nsw i32 %65, 1
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx96 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx95, i32 0, i64 %idxprom94
  %66 = load i32, i32* %arrayidx96, align 4
  %tobool97 = icmp ne i32 %66, 0
  br i1 %tobool97, label %if.end.100, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.92
  %67 = load i32, i32* %score, align 4
  %sub99 = sub nsw i32 %67, 12
  store i32 %sub99, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %land.lhs.true.92, %if.then.85
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %land.lhs.true, %sw.bb
  %68 = load i32, i32* %pawn_file, align 4
  %idxprom102 = sext i32 %68 to i64
  %arrayidx103 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx104 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx103, i32 0, i64 %idxprom102
  %69 = load i32, i32* %arrayidx104, align 4
  %tobool105 = icmp ne i32 %69, 0
  br i1 %tobool105, label %if.end.115, label %if.then.106

if.then.106:                                      ; preds = %if.end.101
  %70 = load i32, i32* %backwards, align 4
  %tobool107 = icmp ne i32 %70, 0
  br i1 %tobool107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.then.106
  %71 = load i32, i32* %score, align 4
  %sub109 = sub nsw i32 %71, 5
  store i32 %sub109, i32* %score, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.then.106
  %72 = load i32, i32* %isolated, align 4
  %tobool111 = icmp ne i32 %72, 0
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.110
  %73 = load i32, i32* %score, align 4
  %sub113 = sub nsw i32 %73, 8
  store i32 %sub113, i32* %score, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.110
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.101
  %74 = load i32, i32* %pawn_file, align 4
  %idxprom116 = sext i32 %74 to i64
  %arrayidx117 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx118 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx117, i32 0, i64 %idxprom116
  %75 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp sgt i32 %75, 1
  br i1 %cmp119, label %if.then.120, label %if.end.127

if.then.120:                                      ; preds = %if.end.115
  %76 = load i32, i32* %pawn_file, align 4
  %idxprom121 = sext i32 %76 to i64
  %arrayidx122 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx123 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx122, i32 0, i64 %idxprom121
  %77 = load i32, i32* %arrayidx123, align 4
  %sub124 = sub nsw i32 %77, 1
  %mul125 = mul nsw i32 8, %sub124
  %78 = load i32, i32* %score, align 4
  %sub126 = sub nsw i32 %78, %mul125
  store i32 %sub126, i32* %score, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.120, %if.end.115
  %79 = load i32, i32* %pawn_file, align 4
  %idxprom128 = sext i32 %79 to i64
  %arrayidx129 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx130 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx129, i32 0, i64 %idxprom128
  %80 = load i32, i32* %arrayidx130, align 4
  %tobool131 = icmp ne i32 %80, 0
  br i1 %tobool131, label %if.end.174, label %land.lhs.true.132

land.lhs.true.132:                                ; preds = %if.end.127
  %81 = load i32, i32* %srank, align 4
  %82 = load i32, i32* %pawn_file, align 4
  %sub133 = sub nsw i32 %82, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom134
  %83 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp sge i32 %81, %83
  br i1 %cmp136, label %land.lhs.true.137, label %if.end.174

land.lhs.true.137:                                ; preds = %land.lhs.true.132
  %84 = load i32, i32* %srank, align 4
  %85 = load i32, i32* %pawn_file, align 4
  %add138 = add nsw i32 %85, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom139
  %86 = load i32, i32* %arrayidx140, align 4
  %cmp141 = icmp sge i32 %84, %86
  br i1 %cmp141, label %if.then.142, label %if.end.174

if.then.142:                                      ; preds = %land.lhs.true.137
  %87 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %87 to i64
  %arrayidx144 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom143
  %88 = load i32, i32* %arrayidx144, align 4
  %sub145 = sub nsw i32 %88, 2
  %mul146 = mul nsw i32 10, %sub145
  %add147 = add nsw i32 25, %mul146
  %89 = load i32, i32* %score, align 4
  %add148 = add nsw i32 %89, %add147
  store i32 %add148, i32* %score, align 4
  %90 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %90 to i64
  %arrayidx150 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom149
  %91 = load i32, i32* %arrayidx150, align 4
  %cmp151 = icmp eq i32 %91, 7
  br i1 %cmp151, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %if.then.142
  %92 = load i32, i32* %score, align 4
  %add153 = add nsw i32 %92, 50
  store i32 %add153, i32* %score, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.152, %if.then.142
  %93 = load i32, i32* %wpassp, align 4
  %inc155 = add nsw i32 %93, 1
  store i32 %inc155, i32* %wpassp, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %94 to i64
  %arrayidx157 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom156
  %95 = load i32, i32* %arrayidx157, align 4
  %cmp158 = icmp eq i32 %95, 1
  br i1 %cmp158, label %if.then.162, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.154
  %96 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %96 to i64
  %arrayidx160 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom159
  %97 = load i32, i32* %arrayidx160, align 4
  %cmp161 = icmp eq i32 %97, 8
  br i1 %cmp161, label %if.then.162, label %if.end.169

if.then.162:                                      ; preds = %lor.lhs.false, %if.end.154
  %98 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %98 to i64
  %arrayidx164 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom163
  %99 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %99, 2
  %mul166 = mul nsw i32 2, %sub165
  %add167 = add nsw i32 4, %mul166
  %100 = load i32, i32* %score, align 4
  %add168 = add nsw i32 %100, %add167
  store i32 %add168, i32* %score, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.162, %lor.lhs.false
  %101 = load i32, i32* %isolated, align 4
  %tobool170 = icmp ne i32 %101, 0
  br i1 %tobool170, label %if.end.173, label %if.then.171

if.then.171:                                      ; preds = %if.end.169
  %102 = load i32, i32* %score, align 4
  %add172 = add nsw i32 %102, 24
  store i32 %add172, i32* %score, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.169
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %land.lhs.true.137, %land.lhs.true.132, %if.end.127
  %103 = load i32, i32* %pawn_file, align 4
  %sub175 = sub nsw i32 %103, 1
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx178 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx177, i32 0, i64 %idxprom176
  %104 = load i32, i32* %arrayidx178, align 4
  %tobool179 = icmp ne i32 %104, 0
  br i1 %tobool179, label %if.end.182, label %if.then.180

if.then.180:                                      ; preds = %if.end.174
  %105 = load i32, i32* %score, align 4
  %sub181 = sub nsw i32 %105, 5
  store i32 %sub181, i32* %score, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.180, %if.end.174
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.end.64
  %106 = load i32, i32* %bp, align 4
  %inc184 = add nsw i32 %106, 1
  store i32 %inc184, i32* %bp, align 4
  %107 = load i32, i32* %bpawns, align 4
  %inc185 = add nsw i32 %107, 1
  store i32 %inc185, i32* %bpawns, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %108 to i64
  %arrayidx187 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom186
  %109 = load i32, i32* %arrayidx187, align 4
  %110 = load i32, i32* %score, align 4
  %sub188 = sub nsw i32 %110, %109
  store i32 %sub188, i32* %score, align 4
  %111 = load i32, i32* %i, align 4
  %call189 = call i32 @l_pawn_mobility(i32 %111)
  %shl190 = shl i32 %call189, 2
  %112 = load i32, i32* %score, align 4
  %sub191 = sub nsw i32 %112, %shl190
  store i32 %sub191, i32* %score, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %113 to i64
  %arrayidx193 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom192
  %114 = load i32, i32* %arrayidx193, align 4
  %sub194 = sub nsw i32 7, %114
  %mul195 = mul nsw i32 %sub194, 8
  %115 = load i32, i32* %score, align 4
  %sub196 = sub nsw i32 %115, %mul195
  store i32 %sub196, i32* %score, align 4
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %116 = load i32, i32* %pawn_file, align 4
  %add197 = add nsw i32 %116, 1
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom198
  %117 = load i32, i32* %arrayidx199, align 4
  %118 = load i32, i32* %srank, align 4
  %cmp200 = icmp slt i32 %117, %118
  br i1 %cmp200, label %land.lhs.true.201, label %if.end.222

land.lhs.true.201:                                ; preds = %sw.bb.183
  %119 = load i32, i32* %pawn_file, align 4
  %sub202 = sub nsw i32 %119, 1
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom203
  %120 = load i32, i32* %arrayidx204, align 4
  %121 = load i32, i32* %srank, align 4
  %cmp205 = icmp slt i32 %120, %121
  br i1 %cmp205, label %if.then.206, label %if.end.222

if.then.206:                                      ; preds = %land.lhs.true.201
  %122 = load i32, i32* %score, align 4
  %add207 = add nsw i32 %122, 8
  store i32 %add207, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %123 = load i32, i32* %pawn_file, align 4
  %add208 = add nsw i32 %123, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx211 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx210, i32 0, i64 %idxprom209
  %124 = load i32, i32* %arrayidx211, align 4
  %tobool212 = icmp ne i32 %124, 0
  br i1 %tobool212, label %if.end.221, label %land.lhs.true.213

land.lhs.true.213:                                ; preds = %if.then.206
  %125 = load i32, i32* %pawn_file, align 4
  %sub214 = sub nsw i32 %125, 1
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx217 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx216, i32 0, i64 %idxprom215
  %126 = load i32, i32* %arrayidx217, align 4
  %tobool218 = icmp ne i32 %126, 0
  br i1 %tobool218, label %if.end.221, label %if.then.219

if.then.219:                                      ; preds = %land.lhs.true.213
  %127 = load i32, i32* %score, align 4
  %add220 = add nsw i32 %127, 12
  store i32 %add220, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.219, %land.lhs.true.213, %if.then.206
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %land.lhs.true.201, %sw.bb.183
  %128 = load i32, i32* %pawn_file, align 4
  %idxprom223 = sext i32 %128 to i64
  %arrayidx224 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx225 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx224, i32 0, i64 %idxprom223
  %129 = load i32, i32* %arrayidx225, align 4
  %tobool226 = icmp ne i32 %129, 0
  br i1 %tobool226, label %if.end.236, label %if.then.227

if.then.227:                                      ; preds = %if.end.222
  %130 = load i32, i32* %backwards, align 4
  %tobool228 = icmp ne i32 %130, 0
  br i1 %tobool228, label %if.then.229, label %if.end.231

if.then.229:                                      ; preds = %if.then.227
  %131 = load i32, i32* %score, align 4
  %add230 = add nsw i32 %131, 5
  store i32 %add230, i32* %score, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.229, %if.then.227
  %132 = load i32, i32* %isolated, align 4
  %tobool232 = icmp ne i32 %132, 0
  br i1 %tobool232, label %if.then.233, label %if.end.235

if.then.233:                                      ; preds = %if.end.231
  %133 = load i32, i32* %score, align 4
  %add234 = add nsw i32 %133, 8
  store i32 %add234, i32* %score, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.233, %if.end.231
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.222
  %134 = load i32, i32* %pawn_file, align 4
  %idxprom237 = sext i32 %134 to i64
  %arrayidx238 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx239 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx238, i32 0, i64 %idxprom237
  %135 = load i32, i32* %arrayidx239, align 4
  %cmp240 = icmp sgt i32 %135, 1
  br i1 %cmp240, label %if.then.241, label %if.end.248

if.then.241:                                      ; preds = %if.end.236
  %136 = load i32, i32* %pawn_file, align 4
  %idxprom242 = sext i32 %136 to i64
  %arrayidx243 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx244 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx243, i32 0, i64 %idxprom242
  %137 = load i32, i32* %arrayidx244, align 4
  %sub245 = sub nsw i32 %137, 1
  %mul246 = mul nsw i32 8, %sub245
  %138 = load i32, i32* %score, align 4
  %add247 = add nsw i32 %138, %mul246
  store i32 %add247, i32* %score, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.241, %if.end.236
  %139 = load i32, i32* %pawn_file, align 4
  %idxprom249 = sext i32 %139 to i64
  %arrayidx250 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx251 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx250, i32 0, i64 %idxprom249
  %140 = load i32, i32* %arrayidx251, align 4
  %tobool252 = icmp ne i32 %140, 0
  br i1 %tobool252, label %if.end.296, label %land.lhs.true.253

land.lhs.true.253:                                ; preds = %if.end.248
  %141 = load i32, i32* %srank, align 4
  %142 = load i32, i32* %pawn_file, align 4
  %sub254 = sub nsw i32 %142, 1
  %idxprom255 = sext i32 %sub254 to i64
  %arrayidx256 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom255
  %143 = load i32, i32* %arrayidx256, align 4
  %cmp257 = icmp sle i32 %141, %143
  br i1 %cmp257, label %land.lhs.true.258, label %if.end.296

land.lhs.true.258:                                ; preds = %land.lhs.true.253
  %144 = load i32, i32* %srank, align 4
  %145 = load i32, i32* %pawn_file, align 4
  %add259 = add nsw i32 %145, 1
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom260
  %146 = load i32, i32* %arrayidx261, align 4
  %cmp262 = icmp sle i32 %144, %146
  br i1 %cmp262, label %if.then.263, label %if.end.296

if.then.263:                                      ; preds = %land.lhs.true.258
  %147 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %147 to i64
  %arrayidx265 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom264
  %148 = load i32, i32* %arrayidx265, align 4
  %sub266 = sub nsw i32 7, %148
  %mul267 = mul nsw i32 10, %sub266
  %add268 = add nsw i32 25, %mul267
  %149 = load i32, i32* %score, align 4
  %sub269 = sub nsw i32 %149, %add268
  store i32 %sub269, i32* %score, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %150 to i64
  %arrayidx271 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom270
  %151 = load i32, i32* %arrayidx271, align 4
  %cmp272 = icmp eq i32 %151, 2
  br i1 %cmp272, label %if.then.273, label %if.end.275

if.then.273:                                      ; preds = %if.then.263
  %152 = load i32, i32* %score, align 4
  %sub274 = sub nsw i32 %152, 50
  store i32 %sub274, i32* %score, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.273, %if.then.263
  %153 = load i32, i32* %bpassp, align 4
  %inc276 = add nsw i32 %153, 1
  store i32 %inc276, i32* %bpassp, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %154 to i64
  %arrayidx278 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom277
  %155 = load i32, i32* %arrayidx278, align 4
  %cmp279 = icmp eq i32 %155, 1
  br i1 %cmp279, label %if.then.284, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %if.end.275
  %156 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %156 to i64
  %arrayidx282 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom281
  %157 = load i32, i32* %arrayidx282, align 4
  %cmp283 = icmp eq i32 %157, 8
  br i1 %cmp283, label %if.then.284, label %if.end.291

if.then.284:                                      ; preds = %lor.lhs.false.280, %if.end.275
  %158 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %158 to i64
  %arrayidx286 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom285
  %159 = load i32, i32* %arrayidx286, align 4
  %sub287 = sub nsw i32 7, %159
  %mul288 = mul nsw i32 2, %sub287
  %add289 = add nsw i32 4, %mul288
  %160 = load i32, i32* %score, align 4
  %sub290 = sub nsw i32 %160, %add289
  store i32 %sub290, i32* %score, align 4
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.284, %lor.lhs.false.280
  %161 = load i32, i32* %isolated, align 4
  %tobool292 = icmp ne i32 %161, 0
  br i1 %tobool292, label %if.end.295, label %if.then.293

if.then.293:                                      ; preds = %if.end.291
  %162 = load i32, i32* %score, align 4
  %sub294 = sub nsw i32 %162, 24
  store i32 %sub294, i32* %score, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.293, %if.end.291
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %land.lhs.true.258, %land.lhs.true.253, %if.end.248
  %163 = load i32, i32* %pawn_file, align 4
  %sub297 = sub nsw i32 %163, 1
  %idxprom298 = sext i32 %sub297 to i64
  %arrayidx299 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx300 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx299, i32 0, i64 %idxprom298
  %164 = load i32, i32* %arrayidx300, align 4
  %tobool301 = icmp ne i32 %164, 0
  br i1 %tobool301, label %if.end.304, label %if.then.302

if.then.302:                                      ; preds = %if.end.296
  %165 = load i32, i32* %score, align 4
  %add303 = add nsw i32 %165, 5
  store i32 %add303, i32* %score, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %if.end.296
  br label %sw.epilog

sw.bb.305:                                        ; preds = %if.end.64
  %166 = load i32, i32* %wp, align 4
  %inc306 = add nsw i32 %166, 1
  store i32 %inc306, i32* %wp, align 4
  %167 = load i32, i32* %i, align 4
  %call307 = call i32 @l_rook_mobility(i32 %167)
  %shl308 = shl i32 %call307, 2
  %168 = load i32, i32* %score, align 4
  %add309 = add nsw i32 %168, %shl308
  store i32 %add309, i32* %score, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %169 to i64
  %arrayidx311 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom310
  %170 = load i32, i32* %arrayidx311, align 4
  %171 = load i32, i32* %score, align 4
  %add312 = add nsw i32 %171, %170
  store i32 %add312, i32* %score, align 4
  br label %sw.epilog

sw.bb.313:                                        ; preds = %if.end.64
  %172 = load i32, i32* %bp, align 4
  %inc314 = add nsw i32 %172, 1
  store i32 %inc314, i32* %bp, align 4
  %173 = load i32, i32* %i, align 4
  %call315 = call i32 @l_rook_mobility(i32 %173)
  %shl316 = shl i32 %call315, 2
  %174 = load i32, i32* %score, align 4
  %sub317 = sub nsw i32 %174, %shl316
  store i32 %sub317, i32* %score, align 4
  %175 = load i32, i32* %i, align 4
  %idxprom318 = sext i32 %175 to i64
  %arrayidx319 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom318
  %176 = load i32, i32* %arrayidx319, align 4
  %177 = load i32, i32* %score, align 4
  %sub320 = sub nsw i32 %177, %176
  store i32 %sub320, i32* %score, align 4
  br label %sw.epilog

sw.bb.321:                                        ; preds = %if.end.64
  %178 = load i32, i32* %wp, align 4
  %inc322 = add nsw i32 %178, 1
  store i32 %inc322, i32* %wp, align 4
  %179 = load i32, i32* %i, align 4
  %call323 = call i32 @l_bishop_mobility(i32 %179)
  %shl324 = shl i32 %call323, 2
  %180 = load i32, i32* %score, align 4
  %add325 = add nsw i32 %180, %shl324
  store i32 %add325, i32* %score, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %181 to i64
  %arrayidx327 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom326
  %182 = load i32, i32* %arrayidx327, align 4
  %183 = load i32, i32* %score, align 4
  %add328 = add nsw i32 %183, %182
  store i32 %add328, i32* %score, align 4
  br label %sw.epilog

sw.bb.329:                                        ; preds = %if.end.64
  %184 = load i32, i32* %bp, align 4
  %inc330 = add nsw i32 %184, 1
  store i32 %inc330, i32* %bp, align 4
  %185 = load i32, i32* %i, align 4
  %call331 = call i32 @l_bishop_mobility(i32 %185)
  %shl332 = shl i32 %call331, 2
  %186 = load i32, i32* %score, align 4
  %sub333 = sub nsw i32 %186, %shl332
  store i32 %sub333, i32* %score, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom334 = sext i32 %187 to i64
  %arrayidx335 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom334
  %188 = load i32, i32* %arrayidx335, align 4
  %189 = load i32, i32* %score, align 4
  %sub336 = sub nsw i32 %189, %188
  store i32 %sub336, i32* %score, align 4
  br label %sw.epilog

sw.bb.337:                                        ; preds = %if.end.64
  %190 = load i32, i32* %wp, align 4
  %inc338 = add nsw i32 %190, 1
  store i32 %inc338, i32* %wp, align 4
  %191 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %191 to i64
  %arrayidx340 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom339
  %192 = load i32, i32* %arrayidx340, align 4
  %shl341 = shl i32 %192, 1
  %193 = load i32, i32* %score, align 4
  %add342 = add nsw i32 %193, %shl341
  store i32 %add342, i32* %score, align 4
  %194 = load i32, i32* %i, align 4
  %call343 = call i32 @l_knight_mobility(i32 %194)
  %shl344 = shl i32 %call343, 2
  %195 = load i32, i32* %score, align 4
  %add345 = add nsw i32 %195, %shl344
  store i32 %add345, i32* %score, align 4
  br label %sw.epilog

sw.bb.346:                                        ; preds = %if.end.64
  %196 = load i32, i32* %bp, align 4
  %inc347 = add nsw i32 %196, 1
  store i32 %inc347, i32* %bp, align 4
  %197 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %197 to i64
  %arrayidx349 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom348
  %198 = load i32, i32* %arrayidx349, align 4
  %shl350 = shl i32 %198, 1
  %199 = load i32, i32* %score, align 4
  %sub351 = sub nsw i32 %199, %shl350
  store i32 %sub351, i32* %score, align 4
  %200 = load i32, i32* %i, align 4
  %call352 = call i32 @l_knight_mobility(i32 %200)
  %shl353 = shl i32 %call352, 2
  %201 = load i32, i32* %score, align 4
  %sub354 = sub nsw i32 %201, %shl353
  store i32 %sub354, i32* %score, align 4
  br label %sw.epilog

sw.bb.355:                                        ; preds = %if.end.64
  %202 = load i32, i32* %wp, align 4
  %inc356 = add nsw i32 %202, 1
  store i32 %inc356, i32* %wp, align 4
  %203 = load i32, i32* %i, align 4
  %call357 = call i32 @l_bishop_mobility(i32 %203)
  %shl358 = shl i32 %call357, 1
  %204 = load i32, i32* %score, align 4
  %add359 = add nsw i32 %204, %shl358
  store i32 %add359, i32* %score, align 4
  %205 = load i32, i32* %i, align 4
  %call360 = call i32 @l_rook_mobility(i32 %205)
  %shl361 = shl i32 %call360, 1
  %206 = load i32, i32* %score, align 4
  %add362 = add nsw i32 %206, %shl361
  store i32 %add362, i32* %score, align 4
  %207 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %207 to i64
  %arrayidx364 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom363
  %208 = load i32, i32* %arrayidx364, align 4
  %209 = load i32, i32* %score, align 4
  %add365 = add nsw i32 %209, %208
  store i32 %add365, i32* %score, align 4
  br label %sw.epilog

sw.bb.366:                                        ; preds = %if.end.64
  %210 = load i32, i32* %bp, align 4
  %inc367 = add nsw i32 %210, 1
  store i32 %inc367, i32* %bp, align 4
  %211 = load i32, i32* %i, align 4
  %call368 = call i32 @l_bishop_mobility(i32 %211)
  %shl369 = shl i32 %call368, 1
  %212 = load i32, i32* %score, align 4
  %sub370 = sub nsw i32 %212, %shl369
  store i32 %sub370, i32* %score, align 4
  %213 = load i32, i32* %i, align 4
  %call371 = call i32 @l_rook_mobility(i32 %213)
  %shl372 = shl i32 %call371, 1
  %214 = load i32, i32* %score, align 4
  %sub373 = sub nsw i32 %214, %shl372
  store i32 %sub373, i32* %score, align 4
  %215 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %215 to i64
  %arrayidx375 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom374
  %216 = load i32, i32* %arrayidx375, align 4
  %217 = load i32, i32* %score, align 4
  %sub376 = sub nsw i32 %217, %216
  store i32 %sub376, i32* %score, align 4
  br label %sw.epilog

sw.bb.377:                                        ; preds = %if.end.64
  %218 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %218 to i64
  %arrayidx379 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom378
  %219 = load i32, i32* %arrayidx379, align 4
  %shl380 = shl i32 %219, 1
  store i32 %shl380, i32* %wks, align 4
  %220 = load i32, i32* %i, align 4
  %call381 = call i32 @l_king_mobility(i32 %220)
  %221 = load i32, i32* %score, align 4
  %add382 = add nsw i32 %221, %call381
  store i32 %add382, i32* %score, align 4
  br label %sw.epilog

sw.bb.383:                                        ; preds = %if.end.64
  %222 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %222 to i64
  %arrayidx385 = getelementptr inbounds [144 x i32], [144 x i32]* @lcentral, i32 0, i64 %idxprom384
  %223 = load i32, i32* %arrayidx385, align 4
  %shl386 = shl i32 %223, 1
  store i32 %shl386, i32* %bks, align 4
  %224 = load i32, i32* %i, align 4
  %call387 = call i32 @l_king_mobility(i32 %224)
  %225 = load i32, i32* %score, align 4
  %sub388 = sub nsw i32 %225, %call387
  store i32 %sub388, i32* %score, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.64, %sw.bb.383, %sw.bb.377, %sw.bb.366, %sw.bb.355, %sw.bb.346, %sw.bb.337, %sw.bb.329, %sw.bb.321, %sw.bb.313, %sw.bb.305, %if.end.304, %if.end.182
  br label %for.inc.389

for.inc.389:                                      ; preds = %sw.epilog, %if.then.61
  %226 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %226, 1
  store i32 %inc390, i32* %j, align 4
  br label %for.cond.55

for.end.391:                                      ; preds = %for.cond.55
  %227 = load i32, i32* %wp, align 4
  %228 = load i32, i32* %bp, align 4
  %add392 = add nsw i32 %227, %228
  %cmp393 = icmp sgt i32 %add392, 10
  br i1 %cmp393, label %if.then.394, label %if.end.397

if.then.394:                                      ; preds = %for.end.391
  %229 = load i32, i32* %wks, align 4
  %230 = load i32, i32* %bks, align 4
  %sub395 = sub nsw i32 %229, %230
  %231 = load i32, i32* %score, align 4
  %sub396 = sub nsw i32 %231, %sub395
  store i32 %sub396, i32* %score, align 4
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.394, %for.end.391
  %232 = load i32, i32* @Material, align 4
  %call398 = call i32 @abs(i32 %232) #4
  %cmp399 = icmp sle i32 %call398, 900
  br i1 %cmp399, label %if.then.400, label %if.else.402

if.then.400:                                      ; preds = %if.end.397
  %233 = load i32, i32* @Material, align 4
  %234 = load i32, i32* %score, align 4
  %add401 = add nsw i32 %234, %233
  store i32 %add401, i32* %score, align 4
  br label %if.end.425

if.else.402:                                      ; preds = %if.end.397
  %235 = load i32, i32* @Material, align 4
  %cmp403 = icmp sgt i32 %235, 0
  br i1 %cmp403, label %land.lhs.true.404, label %if.else.411

land.lhs.true.404:                                ; preds = %if.else.402
  %236 = load i32, i32* @comp_color, align 4
  %cmp405 = icmp eq i32 %236, 1
  br i1 %cmp405, label %land.lhs.true.406, label %if.else.411

land.lhs.true.406:                                ; preds = %land.lhs.true.404
  %237 = load i32, i32* %wpassp, align 4
  %tobool407 = icmp ne i32 %237, 0
  br i1 %tobool407, label %if.else.411, label %if.then.408

if.then.408:                                      ; preds = %land.lhs.true.406
  %238 = load i32, i32* @Material, align 4
  %sub409 = sub nsw i32 1800, %238
  %239 = load i32, i32* %score, align 4
  %add410 = add nsw i32 %239, %sub409
  store i32 %add410, i32* %score, align 4
  br label %if.end.424

if.else.411:                                      ; preds = %land.lhs.true.406, %land.lhs.true.404, %if.else.402
  %240 = load i32, i32* @Material, align 4
  %cmp412 = icmp slt i32 %240, 0
  br i1 %cmp412, label %land.lhs.true.413, label %if.else.421

land.lhs.true.413:                                ; preds = %if.else.411
  %241 = load i32, i32* @comp_color, align 4
  %cmp414 = icmp eq i32 %241, 0
  br i1 %cmp414, label %land.lhs.true.415, label %if.else.421

land.lhs.true.415:                                ; preds = %land.lhs.true.413
  %242 = load i32, i32* %bpassp, align 4
  %tobool416 = icmp ne i32 %242, 0
  br i1 %tobool416, label %if.else.421, label %if.then.417

if.then.417:                                      ; preds = %land.lhs.true.415
  %243 = load i32, i32* @Material, align 4
  %add418 = add nsw i32 1800, %243
  %sub419 = sub nsw i32 0, %add418
  %244 = load i32, i32* %score, align 4
  %add420 = add nsw i32 %244, %sub419
  store i32 %add420, i32* %score, align 4
  br label %if.end.423

if.else.421:                                      ; preds = %land.lhs.true.415, %land.lhs.true.413, %if.else.411
  %245 = load i32, i32* @Material, align 4
  %246 = load i32, i32* %score, align 4
  %add422 = add nsw i32 %246, %245
  store i32 %add422, i32* %score, align 4
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.421, %if.then.417
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.then.408
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.then.400
  %247 = load i32, i32* %wpawns, align 4
  %tobool426 = icmp ne i32 %247, 0
  br i1 %tobool426, label %if.else.429, label %if.then.427

if.then.427:                                      ; preds = %if.end.425
  %248 = load i32, i32* %score, align 4
  %add428 = add nsw i32 %248, 200
  store i32 %add428, i32* %score, align 4
  br label %if.end.434

if.else.429:                                      ; preds = %if.end.425
  %249 = load i32, i32* %bpawns, align 4
  %tobool430 = icmp ne i32 %249, 0
  br i1 %tobool430, label %if.end.433, label %if.then.431

if.then.431:                                      ; preds = %if.else.429
  %250 = load i32, i32* %score, align 4
  %sub432 = sub nsw i32 %250, 200
  store i32 %sub432, i32* %score, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %if.else.429
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %if.then.427
  %251 = load i32, i32* %wp, align 4
  %tobool435 = icmp ne i32 %251, 0
  br i1 %tobool435, label %if.else.437, label %if.then.436

if.then.436:                                      ; preds = %if.end.434
  store i32 1000000, i32* %score, align 4
  br label %if.end.441

if.else.437:                                      ; preds = %if.end.434
  %252 = load i32, i32* %bp, align 4
  %tobool438 = icmp ne i32 %252, 0
  br i1 %tobool438, label %if.end.440, label %if.then.439

if.then.439:                                      ; preds = %if.else.437
  store i32 -1000000, i32* %score, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.439, %if.else.437
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.then.436
  %253 = load i32, i32* %score, align 4
  call void @storeECache(i32 %253)
  %254 = load i32, i32* @white_to_move, align 4
  %cmp442 = icmp eq i32 %254, 1
  br i1 %cmp442, label %if.then.443, label %if.else.444

if.then.443:                                      ; preds = %if.end.441
  %255 = load i32, i32* %score, align 4
  store i32 %255, i32* %retval
  br label %return

if.else.444:                                      ; preds = %if.end.441
  %256 = load i32, i32* %score, align 4
  %sub445 = sub nsw i32 0, %256
  store i32 %sub445, i32* %retval
  br label %return

return:                                           ; preds = %if.else.444, %if.then.443, %if.end, %if.then.1
  %257 = load i32, i32* %retval
  ret i32 %257
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @l_pawn_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %square.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %square.addr, align 4
  %add = add nsw i32 %2, 12
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %3, 13
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load i32, i32* %m, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %square.addr, align 4
  %sub = sub nsw i32 %5, 12
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %6, 13
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %7 = load i32, i32* %m, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %m, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %8 = load i32, i32* %m, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @l_rook_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %square.addr, align 4
  %sub = sub nsw i32 %0, 12
  store i32 %sub, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %l, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %m, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %m, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %l, align 4
  %sub1 = sub nsw i32 %4, 12
  store i32 %sub1, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %square.addr, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %l, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %6 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %7, 13
  br i1 %cmp6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %m, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %m, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.7
  %9 = load i32, i32* %l, align 4
  %sub10 = sub nsw i32 %9, 1
  store i32 %sub10, i32* %l, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %square.addr, align 4
  %add = add nsw i32 %10, 1
  store i32 %add, i32* %l, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.11
  %11 = load i32, i32* %l, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %12, 13
  br i1 %cmp15, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.12
  %13 = load i32, i32* %m, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %m, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.16
  %14 = load i32, i32* %l, align 4
  %add19 = add nsw i32 %14, 1
  store i32 %add19, i32* %l, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  %15 = load i32, i32* %square.addr, align 4
  %add21 = add nsw i32 %15, 12
  store i32 %add21, i32* %l, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %for.end.20
  %16 = load i32, i32* %l, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %17, 13
  br i1 %cmp25, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.22
  %18 = load i32, i32* %m, align 4
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, i32* %m, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %19 = load i32, i32* %l, align 4
  %add29 = add nsw i32 %19, 12
  store i32 %add29, i32* %l, align 4
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  %20 = load i32, i32* %m, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @l_bishop_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %square.addr, align 4
  %sub = sub nsw i32 %0, 13
  store i32 %sub, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %l, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %m, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %m, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %l, align 4
  %sub1 = sub nsw i32 %4, 13
  store i32 %sub1, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %square.addr, align 4
  %sub2 = sub nsw i32 %5, 11
  store i32 %sub2, i32* %l, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %6 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %7, 13
  br i1 %cmp6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.3
  %8 = load i32, i32* %m, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %m, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.7
  %9 = load i32, i32* %l, align 4
  %sub10 = sub nsw i32 %9, 11
  store i32 %sub10, i32* %l, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %10 = load i32, i32* %square.addr, align 4
  %add = add nsw i32 %10, 11
  store i32 %add, i32* %l, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %for.end.11
  %11 = load i32, i32* %l, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %12, 13
  br i1 %cmp15, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.12
  %13 = load i32, i32* %m, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %m, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.16
  %14 = load i32, i32* %l, align 4
  %add19 = add nsw i32 %14, 11
  store i32 %add19, i32* %l, align 4
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  %15 = load i32, i32* %square.addr, align 4
  %add21 = add nsw i32 %15, 13
  store i32 %add21, i32* %l, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %for.end.20
  %16 = load i32, i32* %l, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %17, 13
  br i1 %cmp25, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.22
  %18 = load i32, i32* %m, align 4
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, i32* %m, align 4
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %19 = load i32, i32* %l, align 4
  %add29 = add nsw i32 %19, 13
  store i32 %add29, i32* %l, align 4
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  %20 = load i32, i32* %m, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @l_knight_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %square.addr, align 4
  %2 = load i32, i32* %d, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @l_knight_mobility.knight_o, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %4, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %m, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %d, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %m, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @l_king_mobility(i32 %square) #0 {
entry:
  %square.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %m, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %square.addr, align 4
  %2 = load i32, i32* %d, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @l_king_mobility.king_o, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %1, %3
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %4, 13
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %m, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %d, align 4
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, i32* %d, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %m, align 4
  ret i32 %7
}

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
