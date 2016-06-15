; ModuleID = 'seval.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@white_to_move = external global i32, align 4
@Material = external global i32, align 4
@piece_count = external global i32, align 4
@pieces = external global [62 x i32], align 16
@Xfile = external constant [144 x i32], align 16
@Xrank = external constant [144 x i32], align 16
@board = external global [144 x i32], align 16
@scentral = internal global [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 7, i32 15, i32 25, i32 25, i32 15, i32 7, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 2, i32 15, i32 15, i32 15, i32 15, i32 2, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 3, i32 5, i32 5, i32 3, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = external constant [144 x i32], align 16
@knight_o = internal constant [8 x i32] [i32 10, i32 -10, i32 14, i32 -14, i32 23, i32 -23, i32 25, i32 -25], align 16
@king_o = internal constant [8 x i32] [i32 13, i32 12, i32 11, i32 1, i32 -1, i32 -11, i32 -12, i32 -13], align 16

; Function Attrs: nounwind uwtable
define i32 @suicide_eval() #0 {
entry:
  %call = call i32 @suicide_mid_eval()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @suicide_mid_eval() #0 {
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
  %wb = alloca i32, align 4
  %bb = alloca i32, align 4
  %wbc = alloca i32, align 4
  %bbc = alloca i32, align 4
  %wk = alloca i32, align 4
  %bk = alloca i32, align 4
  %wr = alloca i32, align 4
  %br = alloca i32, align 4
  %wn = alloca i32, align 4
  %bn = alloca i32, align 4
  %wp = alloca i32, align 4
  %bp = alloca i32, align 4
  store i32 0, i32* %score, align 4
  store i32 0, i32* %wb, align 4
  store i32 0, i32* %bb, align 4
  store i32 0, i32* %wbc, align 4
  store i32 0, i32* %bbc, align 4
  store i32 0, i32* %wk, align 4
  store i32 0, i32* %bk, align 4
  store i32 0, i32* %wr, align 4
  store i32 0, i32* %br, align 4
  store i32 0, i32* %wn, align 4
  store i32 0, i32* %bn, align 4
  store i32 0, i32* %wp, align 4
  store i32 0, i32* %bp, align 4
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
  %4 = load i32, i32* @Material, align 4
  store i32 %4, i32* %score, align 4
  %5 = bitcast [2 x [11 x i32]]* %pawns to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 88, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %6 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %6, 11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom
  store i32 7, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom4
  store i32 2, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.52, %for.end
  %10 = load i32, i32* %a, align 4
  %11 = load i32, i32* @piece_count, align 4
  %cmp7 = icmp sle i32 %10, %11
  br i1 %cmp7, label %for.body.8, label %for.end.54

for.body.8:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  store i32 %13, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %for.body.8
  br label %for.inc.52

if.else:                                          ; preds = %for.body.8
  %15 = load i32, i32* %a, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %a, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %pawn_file, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom17
  %19 = load i32, i32* %arrayidx18, align 4
  store i32 %19, i32* %srank, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  %21 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %21, 1
  br i1 %cmp21, label %if.then.22, label %if.else.34

if.then.22:                                       ; preds = %if.end.14
  %22 = load i32, i32* %pawn_file, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx24, i32 0, i64 %idxprom23
  %23 = load i32, i32* %arrayidx25, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, i32* %arrayidx25, align 4
  %24 = load i32, i32* %srank, align 4
  %25 = load i32, i32* %pawn_file, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom27
  %26 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp slt i32 %24, %26
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.then.22
  %27 = load i32, i32* %srank, align 4
  %28 = load i32, i32* %pawn_file, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom31
  store i32 %27, i32* %arrayidx32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.then.22
  br label %if.end.51

if.else.34:                                       ; preds = %if.end.14
  %29 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom35
  %30 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp eq i32 %30, 2
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %if.else.34
  %31 = load i32, i32* %pawn_file, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx41 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx40, i32 0, i64 %idxprom39
  %32 = load i32, i32* %arrayidx41, align 4
  %inc42 = add nsw i32 %32, 1
  store i32 %inc42, i32* %arrayidx41, align 4
  %33 = load i32, i32* %srank, align 4
  %34 = load i32, i32* %pawn_file, align 4
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom43
  %35 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp sgt i32 %33, %35
  br i1 %cmp45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %if.then.38
  %36 = load i32, i32* %srank, align 4
  %37 = load i32, i32* %pawn_file, align 4
  %idxprom47 = sext i32 %37 to i64
  %arrayidx48 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom47
  store i32 %36, i32* %arrayidx48, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %if.then.38
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.else.34
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.33
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.12
  %38 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %j, align 4
  br label %for.cond.6

for.end.54:                                       ; preds = %for.cond.6
  store i32 1, i32* %j, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.380, %for.end.54
  %39 = load i32, i32* %a, align 4
  %40 = load i32, i32* @piece_count, align 4
  %cmp56 = icmp sle i32 %39, %40
  br i1 %cmp56, label %for.body.57, label %for.end.382

for.body.57:                                      ; preds = %for.cond.55
  %41 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [62 x i32], [62 x i32]* @pieces, i32 0, i64 %idxprom58
  %42 = load i32, i32* %arrayidx59, align 4
  store i32 %42, i32* %i, align 4
  %43 = load i32, i32* %i, align 4
  %tobool60 = icmp ne i32 %43, 0
  br i1 %tobool60, label %if.else.62, label %if.then.61

if.then.61:                                       ; preds = %for.body.57
  br label %for.inc.380

if.else.62:                                       ; preds = %for.body.57
  %44 = load i32, i32* %a, align 4
  %inc63 = add nsw i32 %44, 1
  store i32 %inc63, i32* %a, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62
  %45 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %45 to i64
  %arrayidx66 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom65
  %46 = load i32, i32* %arrayidx66, align 4
  %add67 = add nsw i32 %46, 1
  store i32 %add67, i32* %pawn_file, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %47 to i64
  %arrayidx69 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom68
  %48 = load i32, i32* %arrayidx69, align 4
  store i32 %48, i32* %srank, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom70
  %50 = load i32, i32* %arrayidx71, align 4
  switch i32 %50, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.177
    i32 7, label %sw.bb.287
    i32 8, label %sw.bb.294
    i32 11, label %sw.bb.301
    i32 12, label %sw.bb.318
    i32 3, label %sw.bb.335
    i32 4, label %sw.bb.342
    i32 9, label %sw.bb.349
    i32 10, label %sw.bb.357
    i32 5, label %sw.bb.365
    i32 6, label %sw.bb.372
  ]

sw.bb:                                            ; preds = %if.end.64
  %51 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom72
  %52 = load i32, i32* %arrayidx73, align 4
  %53 = load i32, i32* %score, align 4
  %add74 = add nsw i32 %53, %52
  store i32 %add74, i32* %score, align 4
  %54 = load i32, i32* %i, align 4
  %call = call i32 @s_pawn_mobility(i32 %54)
  %55 = load i32, i32* %score, align 4
  %add75 = add nsw i32 %55, %call
  store i32 %add75, i32* %score, align 4
  %56 = load i32, i32* %i, align 4
  %call76 = call i32 @black_saccers(i32 %56)
  %57 = load i32, i32* %score, align 4
  %sub77 = sub nsw i32 %57, %call76
  store i32 %sub77, i32* %score, align 4
  %58 = load i32, i32* %wp, align 4
  %inc78 = add nsw i32 %58, 1
  store i32 %inc78, i32* %wp, align 4
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %59 = load i32, i32* %pawn_file, align 4
  %add79 = add nsw i32 %59, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom80
  %60 = load i32, i32* %arrayidx81, align 4
  %61 = load i32, i32* %srank, align 4
  %cmp82 = icmp sgt i32 %60, %61
  br i1 %cmp82, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %sw.bb
  %62 = load i32, i32* %pawn_file, align 4
  %sub83 = sub nsw i32 %62, 1
  %idxprom84 = sext i32 %sub83 to i64
  %arrayidx85 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom84
  %63 = load i32, i32* %arrayidx85, align 4
  %64 = load i32, i32* %srank, align 4
  %cmp86 = icmp sgt i32 %63, %64
  br i1 %cmp86, label %if.then.87, label %if.end.103

if.then.87:                                       ; preds = %land.lhs.true
  %65 = load i32, i32* %score, align 4
  %sub88 = sub nsw i32 %65, 8
  store i32 %sub88, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %66 = load i32, i32* %pawn_file, align 4
  %add89 = add nsw i32 %66, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx92 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx91, i32 0, i64 %idxprom90
  %67 = load i32, i32* %arrayidx92, align 4
  %tobool93 = icmp ne i32 %67, 0
  br i1 %tobool93, label %if.end.102, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %if.then.87
  %68 = load i32, i32* %pawn_file, align 4
  %sub95 = sub nsw i32 %68, 1
  %idxprom96 = sext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx98 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx97, i32 0, i64 %idxprom96
  %69 = load i32, i32* %arrayidx98, align 4
  %tobool99 = icmp ne i32 %69, 0
  br i1 %tobool99, label %if.end.102, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.94
  %70 = load i32, i32* %score, align 4
  %sub101 = sub nsw i32 %70, 12
  store i32 %sub101, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %land.lhs.true.94, %if.then.87
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true, %sw.bb
  %71 = load i32, i32* %pawn_file, align 4
  %idxprom104 = sext i32 %71 to i64
  %arrayidx105 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx106 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx105, i32 0, i64 %idxprom104
  %72 = load i32, i32* %arrayidx106, align 4
  %tobool107 = icmp ne i32 %72, 0
  br i1 %tobool107, label %if.end.117, label %if.then.108

if.then.108:                                      ; preds = %if.end.103
  %73 = load i32, i32* %backwards, align 4
  %tobool109 = icmp ne i32 %73, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.then.108
  %74 = load i32, i32* %score, align 4
  %sub111 = sub nsw i32 %74, 5
  store i32 %sub111, i32* %score, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.then.108
  %75 = load i32, i32* %isolated, align 4
  %tobool113 = icmp ne i32 %75, 0
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.112
  %76 = load i32, i32* %score, align 4
  %sub115 = sub nsw i32 %76, 8
  store i32 %sub115, i32* %score, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.112
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.103
  %77 = load i32, i32* %pawn_file, align 4
  %idxprom118 = sext i32 %77 to i64
  %arrayidx119 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx120 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx119, i32 0, i64 %idxprom118
  %78 = load i32, i32* %arrayidx120, align 4
  %cmp121 = icmp sgt i32 %78, 1
  br i1 %cmp121, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.117
  %79 = load i32, i32* %pawn_file, align 4
  %idxprom123 = sext i32 %79 to i64
  %arrayidx124 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx125 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx124, i32 0, i64 %idxprom123
  %80 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %80, 1
  %mul = mul nsw i32 15, %sub126
  %81 = load i32, i32* %score, align 4
  %sub127 = sub nsw i32 %81, %mul
  store i32 %sub127, i32* %score, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.122, %if.end.117
  %82 = load i32, i32* %pawn_file, align 4
  %idxprom129 = sext i32 %82 to i64
  %arrayidx130 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx131 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx130, i32 0, i64 %idxprom129
  %83 = load i32, i32* %arrayidx131, align 4
  %tobool132 = icmp ne i32 %83, 0
  br i1 %tobool132, label %if.end.168, label %land.lhs.true.133

land.lhs.true.133:                                ; preds = %if.end.128
  %84 = load i32, i32* %srank, align 4
  %85 = load i32, i32* %pawn_file, align 4
  %sub134 = sub nsw i32 %85, 1
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom135
  %86 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp sge i32 %84, %86
  br i1 %cmp137, label %land.lhs.true.138, label %if.end.168

land.lhs.true.138:                                ; preds = %land.lhs.true.133
  %87 = load i32, i32* %srank, align 4
  %88 = load i32, i32* %pawn_file, align 4
  %add139 = add nsw i32 %88, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom140
  %89 = load i32, i32* %arrayidx141, align 4
  %cmp142 = icmp sge i32 %87, %89
  br i1 %cmp142, label %if.then.143, label %if.end.168

if.then.143:                                      ; preds = %land.lhs.true.138
  %90 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %90 to i64
  %arrayidx145 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom144
  %91 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %91, 2
  %mul147 = mul nsw i32 3, %sub146
  %add148 = add nsw i32 30, %mul147
  %92 = load i32, i32* %score, align 4
  %add149 = add nsw i32 %92, %add148
  store i32 %add149, i32* %score, align 4
  %93 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %93 to i64
  %arrayidx151 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom150
  %94 = load i32, i32* %arrayidx151, align 4
  %cmp152 = icmp eq i32 %94, 1
  br i1 %cmp152, label %if.then.156, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.143
  %95 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %95 to i64
  %arrayidx154 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom153
  %96 = load i32, i32* %arrayidx154, align 4
  %cmp155 = icmp eq i32 %96, 8
  br i1 %cmp155, label %if.then.156, label %if.end.163

if.then.156:                                      ; preds = %lor.lhs.false, %if.then.143
  %97 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %97 to i64
  %arrayidx158 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom157
  %98 = load i32, i32* %arrayidx158, align 4
  %sub159 = sub nsw i32 %98, 2
  %mul160 = mul nsw i32 2, %sub159
  %add161 = add nsw i32 4, %mul160
  %99 = load i32, i32* %score, align 4
  %add162 = add nsw i32 %99, %add161
  store i32 %add162, i32* %score, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.156, %lor.lhs.false
  %100 = load i32, i32* %isolated, align 4
  %tobool164 = icmp ne i32 %100, 0
  br i1 %tobool164, label %if.end.167, label %if.then.165

if.then.165:                                      ; preds = %if.end.163
  %101 = load i32, i32* %score, align 4
  %add166 = add nsw i32 %101, 6
  store i32 %add166, i32* %score, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.165, %if.end.163
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %land.lhs.true.138, %land.lhs.true.133, %if.end.128
  %102 = load i32, i32* %pawn_file, align 4
  %sub169 = sub nsw i32 %102, 1
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx172 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx171, i32 0, i64 %idxprom170
  %103 = load i32, i32* %arrayidx172, align 4
  %tobool173 = icmp ne i32 %103, 0
  br i1 %tobool173, label %if.end.176, label %if.then.174

if.then.174:                                      ; preds = %if.end.168
  %104 = load i32, i32* %score, align 4
  %sub175 = sub nsw i32 %104, 20
  store i32 %sub175, i32* %score, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.174, %if.end.168
  br label %sw.epilog

sw.bb.177:                                        ; preds = %if.end.64
  %105 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %105 to i64
  %arrayidx179 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom178
  %106 = load i32, i32* %arrayidx179, align 4
  %107 = load i32, i32* %score, align 4
  %sub180 = sub nsw i32 %107, %106
  store i32 %sub180, i32* %score, align 4
  %108 = load i32, i32* %i, align 4
  %call181 = call i32 @s_pawn_mobility(i32 %108)
  %109 = load i32, i32* %score, align 4
  %sub182 = sub nsw i32 %109, %call181
  store i32 %sub182, i32* %score, align 4
  %110 = load i32, i32* %i, align 4
  %call183 = call i32 @white_saccers(i32 %110)
  %111 = load i32, i32* %score, align 4
  %add184 = add nsw i32 %111, %call183
  store i32 %add184, i32* %score, align 4
  store i32 0, i32* %isolated, align 4
  store i32 0, i32* %backwards, align 4
  %112 = load i32, i32* %bp, align 4
  %inc185 = add nsw i32 %112, 1
  store i32 %inc185, i32* %bp, align 4
  %113 = load i32, i32* %pawn_file, align 4
  %add186 = add nsw i32 %113, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom187
  %114 = load i32, i32* %arrayidx188, align 4
  %115 = load i32, i32* %srank, align 4
  %cmp189 = icmp slt i32 %114, %115
  br i1 %cmp189, label %land.lhs.true.190, label %if.end.211

land.lhs.true.190:                                ; preds = %sw.bb.177
  %116 = load i32, i32* %pawn_file, align 4
  %sub191 = sub nsw i32 %116, 1
  %idxprom192 = sext i32 %sub191 to i64
  %arrayidx193 = getelementptr inbounds [11 x i32], [11 x i32]* %black_back_pawn, i32 0, i64 %idxprom192
  %117 = load i32, i32* %arrayidx193, align 4
  %118 = load i32, i32* %srank, align 4
  %cmp194 = icmp slt i32 %117, %118
  br i1 %cmp194, label %if.then.195, label %if.end.211

if.then.195:                                      ; preds = %land.lhs.true.190
  %119 = load i32, i32* %score, align 4
  %add196 = add nsw i32 %119, 8
  store i32 %add196, i32* %score, align 4
  store i32 1, i32* %backwards, align 4
  %120 = load i32, i32* %pawn_file, align 4
  %add197 = add nsw i32 %120, 1
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx200 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx199, i32 0, i64 %idxprom198
  %121 = load i32, i32* %arrayidx200, align 4
  %tobool201 = icmp ne i32 %121, 0
  br i1 %tobool201, label %if.end.210, label %land.lhs.true.202

land.lhs.true.202:                                ; preds = %if.then.195
  %122 = load i32, i32* %pawn_file, align 4
  %sub203 = sub nsw i32 %122, 1
  %idxprom204 = sext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx206 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx205, i32 0, i64 %idxprom204
  %123 = load i32, i32* %arrayidx206, align 4
  %tobool207 = icmp ne i32 %123, 0
  br i1 %tobool207, label %if.end.210, label %if.then.208

if.then.208:                                      ; preds = %land.lhs.true.202
  %124 = load i32, i32* %score, align 4
  %add209 = add nsw i32 %124, 12
  store i32 %add209, i32* %score, align 4
  store i32 1, i32* %isolated, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %land.lhs.true.202, %if.then.195
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.190, %sw.bb.177
  %125 = load i32, i32* %pawn_file, align 4
  %idxprom212 = sext i32 %125 to i64
  %arrayidx213 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx214 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx213, i32 0, i64 %idxprom212
  %126 = load i32, i32* %arrayidx214, align 4
  %tobool215 = icmp ne i32 %126, 0
  br i1 %tobool215, label %if.end.225, label %if.then.216

if.then.216:                                      ; preds = %if.end.211
  %127 = load i32, i32* %backwards, align 4
  %tobool217 = icmp ne i32 %127, 0
  br i1 %tobool217, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %if.then.216
  %128 = load i32, i32* %score, align 4
  %add219 = add nsw i32 %128, 5
  store i32 %add219, i32* %score, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %if.then.216
  %129 = load i32, i32* %isolated, align 4
  %tobool221 = icmp ne i32 %129, 0
  br i1 %tobool221, label %if.then.222, label %if.end.224

if.then.222:                                      ; preds = %if.end.220
  %130 = load i32, i32* %score, align 4
  %add223 = add nsw i32 %130, 8
  store i32 %add223, i32* %score, align 4
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.222, %if.end.220
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.end.211
  %131 = load i32, i32* %pawn_file, align 4
  %idxprom226 = sext i32 %131 to i64
  %arrayidx227 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx228 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx227, i32 0, i64 %idxprom226
  %132 = load i32, i32* %arrayidx228, align 4
  %cmp229 = icmp sgt i32 %132, 1
  br i1 %cmp229, label %if.then.230, label %if.end.237

if.then.230:                                      ; preds = %if.end.225
  %133 = load i32, i32* %pawn_file, align 4
  %idxprom231 = sext i32 %133 to i64
  %arrayidx232 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx233 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx232, i32 0, i64 %idxprom231
  %134 = load i32, i32* %arrayidx233, align 4
  %sub234 = sub nsw i32 %134, 1
  %mul235 = mul nsw i32 15, %sub234
  %135 = load i32, i32* %score, align 4
  %add236 = add nsw i32 %135, %mul235
  store i32 %add236, i32* %score, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.230, %if.end.225
  %136 = load i32, i32* %pawn_file, align 4
  %idxprom238 = sext i32 %136 to i64
  %arrayidx239 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 1
  %arrayidx240 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx239, i32 0, i64 %idxprom238
  %137 = load i32, i32* %arrayidx240, align 4
  %tobool241 = icmp ne i32 %137, 0
  br i1 %tobool241, label %if.end.278, label %land.lhs.true.242

land.lhs.true.242:                                ; preds = %if.end.237
  %138 = load i32, i32* %srank, align 4
  %139 = load i32, i32* %pawn_file, align 4
  %sub243 = sub nsw i32 %139, 1
  %idxprom244 = sext i32 %sub243 to i64
  %arrayidx245 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom244
  %140 = load i32, i32* %arrayidx245, align 4
  %cmp246 = icmp sle i32 %138, %140
  br i1 %cmp246, label %land.lhs.true.247, label %if.end.278

land.lhs.true.247:                                ; preds = %land.lhs.true.242
  %141 = load i32, i32* %srank, align 4
  %142 = load i32, i32* %pawn_file, align 4
  %add248 = add nsw i32 %142, 1
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds [11 x i32], [11 x i32]* %white_back_pawn, i32 0, i64 %idxprom249
  %143 = load i32, i32* %arrayidx250, align 4
  %cmp251 = icmp sle i32 %141, %143
  br i1 %cmp251, label %if.then.252, label %if.end.278

if.then.252:                                      ; preds = %land.lhs.true.247
  %144 = load i32, i32* %i, align 4
  %idxprom253 = sext i32 %144 to i64
  %arrayidx254 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom253
  %145 = load i32, i32* %arrayidx254, align 4
  %sub255 = sub nsw i32 7, %145
  %mul256 = mul nsw i32 3, %sub255
  %add257 = add nsw i32 30, %mul256
  %146 = load i32, i32* %score, align 4
  %sub258 = sub nsw i32 %146, %add257
  store i32 %sub258, i32* %score, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %147 to i64
  %arrayidx260 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom259
  %148 = load i32, i32* %arrayidx260, align 4
  %cmp261 = icmp eq i32 %148, 1
  br i1 %cmp261, label %if.then.266, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.then.252
  %149 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %149 to i64
  %arrayidx264 = getelementptr inbounds [144 x i32], [144 x i32]* @Xfile, i32 0, i64 %idxprom263
  %150 = load i32, i32* %arrayidx264, align 4
  %cmp265 = icmp eq i32 %150, 8
  br i1 %cmp265, label %if.then.266, label %if.end.273

if.then.266:                                      ; preds = %lor.lhs.false.262, %if.then.252
  %151 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %151 to i64
  %arrayidx268 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom267
  %152 = load i32, i32* %arrayidx268, align 4
  %sub269 = sub nsw i32 7, %152
  %mul270 = mul nsw i32 2, %sub269
  %add271 = add nsw i32 4, %mul270
  %153 = load i32, i32* %score, align 4
  %sub272 = sub nsw i32 %153, %add271
  store i32 %sub272, i32* %score, align 4
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.266, %lor.lhs.false.262
  %154 = load i32, i32* %isolated, align 4
  %tobool274 = icmp ne i32 %154, 0
  br i1 %tobool274, label %if.end.277, label %if.then.275

if.then.275:                                      ; preds = %if.end.273
  %155 = load i32, i32* %score, align 4
  %sub276 = sub nsw i32 %155, 6
  store i32 %sub276, i32* %score, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.275, %if.end.273
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %land.lhs.true.247, %land.lhs.true.242, %if.end.237
  %156 = load i32, i32* %pawn_file, align 4
  %sub279 = sub nsw i32 %156, 1
  %idxprom280 = sext i32 %sub279 to i64
  %arrayidx281 = getelementptr inbounds [2 x [11 x i32]], [2 x [11 x i32]]* %pawns, i32 0, i64 0
  %arrayidx282 = getelementptr inbounds [11 x i32], [11 x i32]* %arrayidx281, i32 0, i64 %idxprom280
  %157 = load i32, i32* %arrayidx282, align 4
  %tobool283 = icmp ne i32 %157, 0
  br i1 %tobool283, label %if.end.286, label %if.then.284

if.then.284:                                      ; preds = %if.end.278
  %158 = load i32, i32* %score, align 4
  %add285 = add nsw i32 %158, 20
  store i32 %add285, i32* %score, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.284, %if.end.278
  br label %sw.epilog

sw.bb.287:                                        ; preds = %if.end.64
  %159 = load i32, i32* %i, align 4
  %idxprom288 = sext i32 %159 to i64
  %arrayidx289 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom288
  %160 = load i32, i32* %arrayidx289, align 4
  %161 = load i32, i32* %score, align 4
  %add290 = add nsw i32 %161, %160
  store i32 %add290, i32* %score, align 4
  %162 = load i32, i32* %i, align 4
  %call291 = call i32 @s_rook_mobility(i32 %162)
  %163 = load i32, i32* %score, align 4
  %add292 = add nsw i32 %163, %call291
  store i32 %add292, i32* %score, align 4
  %164 = load i32, i32* %wr, align 4
  %inc293 = add nsw i32 %164, 1
  store i32 %inc293, i32* %wr, align 4
  br label %sw.epilog

sw.bb.294:                                        ; preds = %if.end.64
  %165 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %165 to i64
  %arrayidx296 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom295
  %166 = load i32, i32* %arrayidx296, align 4
  %167 = load i32, i32* %score, align 4
  %sub297 = sub nsw i32 %167, %166
  store i32 %sub297, i32* %score, align 4
  %168 = load i32, i32* %i, align 4
  %call298 = call i32 @s_rook_mobility(i32 %168)
  %169 = load i32, i32* %score, align 4
  %sub299 = sub nsw i32 %169, %call298
  store i32 %sub299, i32* %score, align 4
  %170 = load i32, i32* %br, align 4
  %inc300 = add nsw i32 %170, 1
  store i32 %inc300, i32* %br, align 4
  br label %sw.epilog

sw.bb.301:                                        ; preds = %if.end.64
  %171 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %171 to i64
  %arrayidx303 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom302
  %172 = load i32, i32* %arrayidx303, align 4
  %173 = load i32, i32* %score, align 4
  %add304 = add nsw i32 %173, %172
  store i32 %add304, i32* %score, align 4
  %174 = load i32, i32* %i, align 4
  %call305 = call i32 @s_bishop_mobility(i32 %174)
  %175 = load i32, i32* %score, align 4
  %add306 = add nsw i32 %175, %call305
  store i32 %add306, i32* %score, align 4
  %176 = load i32, i32* %wb, align 4
  %tobool307 = icmp ne i32 %176, 0
  br i1 %tobool307, label %if.then.308, label %if.end.314

if.then.308:                                      ; preds = %sw.bb.301
  %177 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %177 to i64
  %arrayidx310 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i32 0, i64 %idxprom309
  %178 = load i32, i32* %arrayidx310, align 4
  %179 = load i32, i32* %wbc, align 4
  %cmp311 = icmp ne i32 %178, %179
  br i1 %cmp311, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %if.then.308
  store i32 99, i32* %wb, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %if.then.308
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %sw.bb.301
  %180 = load i32, i32* %wb, align 4
  %inc315 = add nsw i32 %180, 1
  store i32 %inc315, i32* %wb, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %181 to i64
  %arrayidx317 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i32 0, i64 %idxprom316
  %182 = load i32, i32* %arrayidx317, align 4
  store i32 %182, i32* %wbc, align 4
  br label %sw.epilog

sw.bb.318:                                        ; preds = %if.end.64
  %183 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %183 to i64
  %arrayidx320 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom319
  %184 = load i32, i32* %arrayidx320, align 4
  %185 = load i32, i32* %score, align 4
  %sub321 = sub nsw i32 %185, %184
  store i32 %sub321, i32* %score, align 4
  %186 = load i32, i32* %i, align 4
  %call322 = call i32 @s_bishop_mobility(i32 %186)
  %187 = load i32, i32* %score, align 4
  %sub323 = sub nsw i32 %187, %call322
  store i32 %sub323, i32* %score, align 4
  %188 = load i32, i32* %bb, align 4
  %tobool324 = icmp ne i32 %188, 0
  br i1 %tobool324, label %if.then.325, label %if.end.331

if.then.325:                                      ; preds = %sw.bb.318
  %189 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %189 to i64
  %arrayidx327 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i32 0, i64 %idxprom326
  %190 = load i32, i32* %arrayidx327, align 4
  %191 = load i32, i32* %bbc, align 4
  %cmp328 = icmp ne i32 %190, %191
  br i1 %cmp328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.then.325
  store i32 99, i32* %bb, align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %if.then.325
  br label %if.end.331

if.end.331:                                       ; preds = %if.end.330, %sw.bb.318
  %192 = load i32, i32* %bb, align 4
  %inc332 = add nsw i32 %192, 1
  store i32 %inc332, i32* %bb, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %193 to i64
  %arrayidx334 = getelementptr inbounds [144 x i32], [144 x i32]* @sqcolor, i32 0, i64 %idxprom333
  %194 = load i32, i32* %arrayidx334, align 4
  store i32 %194, i32* %bbc, align 4
  br label %sw.epilog

sw.bb.335:                                        ; preds = %if.end.64
  %195 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %195 to i64
  %arrayidx337 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom336
  %196 = load i32, i32* %arrayidx337, align 4
  %197 = load i32, i32* %score, align 4
  %add338 = add nsw i32 %197, %196
  store i32 %add338, i32* %score, align 4
  %198 = load i32, i32* %i, align 4
  %call339 = call i32 @s_knight_mobility(i32 %198)
  %199 = load i32, i32* %score, align 4
  %add340 = add nsw i32 %199, %call339
  store i32 %add340, i32* %score, align 4
  %200 = load i32, i32* %wn, align 4
  %inc341 = add nsw i32 %200, 1
  store i32 %inc341, i32* %wn, align 4
  br label %sw.epilog

sw.bb.342:                                        ; preds = %if.end.64
  %201 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %201 to i64
  %arrayidx344 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom343
  %202 = load i32, i32* %arrayidx344, align 4
  %203 = load i32, i32* %score, align 4
  %sub345 = sub nsw i32 %203, %202
  store i32 %sub345, i32* %score, align 4
  %204 = load i32, i32* %i, align 4
  %call346 = call i32 @s_knight_mobility(i32 %204)
  %205 = load i32, i32* %score, align 4
  %sub347 = sub nsw i32 %205, %call346
  store i32 %sub347, i32* %score, align 4
  %206 = load i32, i32* %bn, align 4
  %inc348 = add nsw i32 %206, 1
  store i32 %inc348, i32* %bn, align 4
  br label %sw.epilog

sw.bb.349:                                        ; preds = %if.end.64
  %207 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %207 to i64
  %arrayidx351 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom350
  %208 = load i32, i32* %arrayidx351, align 4
  %209 = load i32, i32* %score, align 4
  %add352 = add nsw i32 %209, %208
  store i32 %add352, i32* %score, align 4
  %210 = load i32, i32* %i, align 4
  %call353 = call i32 @s_rook_mobility(i32 %210)
  %211 = load i32, i32* %score, align 4
  %add354 = add nsw i32 %211, %call353
  store i32 %add354, i32* %score, align 4
  %212 = load i32, i32* %i, align 4
  %call355 = call i32 @s_bishop_mobility(i32 %212)
  %213 = load i32, i32* %score, align 4
  %add356 = add nsw i32 %213, %call355
  store i32 %add356, i32* %score, align 4
  br label %sw.epilog

sw.bb.357:                                        ; preds = %if.end.64
  %214 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %214 to i64
  %arrayidx359 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom358
  %215 = load i32, i32* %arrayidx359, align 4
  %216 = load i32, i32* %score, align 4
  %sub360 = sub nsw i32 %216, %215
  store i32 %sub360, i32* %score, align 4
  %217 = load i32, i32* %i, align 4
  %call361 = call i32 @s_rook_mobility(i32 %217)
  %218 = load i32, i32* %score, align 4
  %sub362 = sub nsw i32 %218, %call361
  store i32 %sub362, i32* %score, align 4
  %219 = load i32, i32* %i, align 4
  %call363 = call i32 @s_bishop_mobility(i32 %219)
  %220 = load i32, i32* %score, align 4
  %sub364 = sub nsw i32 %220, %call363
  store i32 %sub364, i32* %score, align 4
  br label %sw.epilog

sw.bb.365:                                        ; preds = %if.end.64
  %221 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %221 to i64
  %arrayidx367 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom366
  %222 = load i32, i32* %arrayidx367, align 4
  %shr = ashr i32 %222, 1
  %223 = load i32, i32* %score, align 4
  %add368 = add nsw i32 %223, %shr
  store i32 %add368, i32* %score, align 4
  %224 = load i32, i32* %i, align 4
  %call369 = call i32 @s_king_mobility(i32 %224)
  %225 = load i32, i32* %score, align 4
  %add370 = add nsw i32 %225, %call369
  store i32 %add370, i32* %score, align 4
  %226 = load i32, i32* %wk, align 4
  %inc371 = add nsw i32 %226, 1
  store i32 %inc371, i32* %wk, align 4
  br label %sw.epilog

sw.bb.372:                                        ; preds = %if.end.64
  %227 = load i32, i32* %i, align 4
  %idxprom373 = sext i32 %227 to i64
  %arrayidx374 = getelementptr inbounds [144 x i32], [144 x i32]* @scentral, i32 0, i64 %idxprom373
  %228 = load i32, i32* %arrayidx374, align 4
  %shr375 = ashr i32 %228, 1
  %229 = load i32, i32* %score, align 4
  %sub376 = sub nsw i32 %229, %shr375
  store i32 %sub376, i32* %score, align 4
  %230 = load i32, i32* %i, align 4
  %call377 = call i32 @s_king_mobility(i32 %230)
  %231 = load i32, i32* %score, align 4
  %sub378 = sub nsw i32 %231, %call377
  store i32 %sub378, i32* %score, align 4
  %232 = load i32, i32* %bk, align 4
  %inc379 = add nsw i32 %232, 1
  store i32 %inc379, i32* %bk, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.64, %sw.bb.372, %sw.bb.365, %sw.bb.357, %sw.bb.349, %sw.bb.342, %sw.bb.335, %if.end.331, %if.end.314, %sw.bb.294, %sw.bb.287, %if.end.286, %if.end.176
  br label %for.inc.380

for.inc.380:                                      ; preds = %sw.epilog, %if.then.61
  %233 = load i32, i32* %j, align 4
  %inc381 = add nsw i32 %233, 1
  store i32 %inc381, i32* %j, align 4
  br label %for.cond.55

for.end.382:                                      ; preds = %for.cond.55
  %234 = load i32, i32* %wb, align 4
  %cmp383 = icmp slt i32 %234, 99
  br i1 %cmp383, label %land.lhs.true.384, label %if.end.396

land.lhs.true.384:                                ; preds = %for.end.382
  %235 = load i32, i32* %bb, align 4
  %cmp385 = icmp slt i32 %235, 99
  br i1 %cmp385, label %land.lhs.true.386, label %if.end.396

land.lhs.true.386:                                ; preds = %land.lhs.true.384
  %236 = load i32, i32* %wbc, align 4
  %237 = load i32, i32* %bbc, align 4
  %cmp387 = icmp ne i32 %236, %237
  br i1 %cmp387, label %land.lhs.true.388, label %if.end.396

land.lhs.true.388:                                ; preds = %land.lhs.true.386
  %238 = load i32, i32* @piece_count, align 4
  %cmp389 = icmp slt i32 %238, 32
  br i1 %cmp389, label %if.then.390, label %if.end.396

if.then.390:                                      ; preds = %land.lhs.true.388
  %239 = load i32, i32* %score, align 4
  %conv = sitofp i32 %239 to float
  %240 = load i32, i32* @piece_count, align 4
  %conv391 = sitofp i32 %240 to float
  %conv392 = fpext float %conv391 to double
  %div = fdiv double %conv392, 3.200000e+01
  %conv393 = fptrunc double %div to float
  %mul394 = fmul float %conv, %conv393
  %conv395 = fptosi float %mul394 to i32
  store i32 %conv395, i32* %score, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.390, %land.lhs.true.388, %land.lhs.true.386, %land.lhs.true.384, %for.end.382
  %241 = load i32, i32* %score, align 4
  call void @storeECache(i32 %241)
  %242 = load i32, i32* @white_to_move, align 4
  %cmp397 = icmp eq i32 %242, 1
  br i1 %cmp397, label %if.then.399, label %if.else.400

if.then.399:                                      ; preds = %if.end.396
  %243 = load i32, i32* %score, align 4
  store i32 %243, i32* %retval
  br label %return

if.else.400:                                      ; preds = %if.end.396
  %244 = load i32, i32* %score, align 4
  %sub401 = sub nsw i32 0, %244
  store i32 %sub401, i32* %retval
  br label %return

return:                                           ; preds = %if.else.400, %if.then.399, %if.end, %if.then.1
  %245 = load i32, i32* %retval
  ret i32 %245
}

declare void @checkECache(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @s_pawn_mobility(i32 %square) #0 {
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
  %shl = shl i32 %8, 3
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define internal i32 @black_saccers(i32 %square) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %f, align 4
  %0 = load i32, i32* %square.addr, align 4
  %add = add nsw i32 %0, 24
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %square.addr, align 4
  %add1 = add nsw i32 %2, 22
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %3 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %square.addr, align 4
  %add6 = add nsw i32 %4, 26
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom7
  %5 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %5, 2
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %6 = load i32, i32* %square.addr, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom10
  %7 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %7, 6
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %square.addr, align 4
  %add13 = add nsw i32 %8, 25
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom14
  %9 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true
  %10 = load i32, i32* %square.addr, align 4
  %add18 = add nsw i32 %10, 23
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  %11 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %11, 2
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.17, %land.lhs.true
  store i32 1, i32* %f, align 4
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false.17, %if.end
  %12 = load i32, i32* %square.addr, align 4
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom23
  %13 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %13, 4
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.37

land.lhs.true.26:                                 ; preds = %if.else
  %14 = load i32, i32* %square.addr, align 4
  %add27 = add nsw i32 %14, 35
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom28
  %15 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %15, 2
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.26
  %16 = load i32, i32* %square.addr, align 4
  %add32 = add nsw i32 %16, 37
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom33
  %17 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %17, 2
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.26
  store i32 1, i32* %f, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %lor.lhs.false.31, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  %18 = load i32, i32* %f, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.38
  %19 = load i32, i32* %square.addr, align 4
  %add40 = add nsw i32 %19, 11
  %call = call i32 @is_attacked(i32 %add40, i32 0)
  %tobool41 = icmp ne i32 %call, 0
  %cond = select i1 %tobool41, i32 1, i32 0
  store i32 %cond, i32* %f, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.38
  %20 = load i32, i32* %f, align 4
  %tobool43 = icmp ne i32 %20, 0
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %21 = load i32, i32* %square.addr, align 4
  %add45 = add nsw i32 %21, 13
  %call46 = call i32 @is_attacked(i32 %add45, i32 0)
  %tobool47 = icmp ne i32 %call46, 0
  %cond48 = select i1 %tobool47, i32 2, i32 0
  store i32 %cond48, i32* %f, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.42
  %22 = load i32, i32* %f, align 4
  %tobool50 = icmp ne i32 %22, 0
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

if.else.52:                                       ; preds = %if.end.49
  %23 = load i32, i32* %f, align 4
  %cmp53 = icmp eq i32 %23, 1
  br i1 %cmp53, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %if.else.52
  %24 = load i32, i32* %square.addr, align 4
  %add55 = add nsw i32 %24, 11
  %call56 = call i32 @calc_attackers(i32 %add55, i32 0)
  %cmp57 = icmp sgt i32 %call56, 1
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.54
  store i32 0, i32* %retval
  br label %return

if.else.59:                                       ; preds = %if.then.54
  store i32 30, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.52
  %25 = load i32, i32* %square.addr, align 4
  %add61 = add nsw i32 %25, 13
  %call62 = call i32 @calc_attackers(i32 %add61, i32 0)
  %cmp63 = icmp sgt i32 %call62, 1
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  store i32 0, i32* %retval
  br label %return

if.else.65:                                       ; preds = %if.else.60
  store i32 30, i32* %retval
  br label %return

return:                                           ; preds = %if.else.65, %if.then.64, %if.else.59, %if.then.58, %if.then.51, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @white_saccers(i32 %square) #0 {
entry:
  %retval = alloca i32, align 4
  %square.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %square, i32* %square.addr, align 4
  store i32 0, i32* %f, align 4
  %0 = load i32, i32* %square.addr, align 4
  %sub = sub nsw i32 %0, 24
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %square.addr, align 4
  %sub1 = sub nsw i32 %2, 22
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %3 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %square.addr, align 4
  %sub6 = sub nsw i32 %4, 26
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom7
  %5 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %5, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %6 = load i32, i32* %square.addr, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom10
  %7 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %7, 3
  br i1 %cmp12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %square.addr, align 4
  %sub13 = sub nsw i32 %8, 25
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom14
  %9 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %9, 1
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true
  %10 = load i32, i32* %square.addr, align 4
  %sub18 = sub nsw i32 %10, 23
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom19
  %11 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %11, 1
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.17, %land.lhs.true
  store i32 1, i32* %f, align 4
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false.17, %if.end
  %12 = load i32, i32* %square.addr, align 4
  %idxprom23 = sext i32 %12 to i64
  %arrayidx24 = getelementptr inbounds [144 x i32], [144 x i32]* @Xrank, i32 0, i64 %idxprom23
  %13 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %13, 5
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.37

land.lhs.true.26:                                 ; preds = %if.else
  %14 = load i32, i32* %square.addr, align 4
  %sub27 = sub nsw i32 %14, 35
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom28
  %15 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %15, 1
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.26
  %16 = load i32, i32* %square.addr, align 4
  %sub32 = sub nsw i32 %16, 37
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom33
  %17 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %17, 1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %land.lhs.true.26
  store i32 1, i32* %f, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %lor.lhs.false.31, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.22
  %18 = load i32, i32* %f, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.42, label %if.then.39

if.then.39:                                       ; preds = %if.end.38
  %19 = load i32, i32* %square.addr, align 4
  %sub40 = sub nsw i32 %19, 11
  %call = call i32 @is_attacked(i32 %sub40, i32 1)
  %tobool41 = icmp ne i32 %call, 0
  %cond = select i1 %tobool41, i32 1, i32 0
  store i32 %cond, i32* %f, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.end.38
  %20 = load i32, i32* %f, align 4
  %tobool43 = icmp ne i32 %20, 0
  br i1 %tobool43, label %if.end.49, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %21 = load i32, i32* %square.addr, align 4
  %sub45 = sub nsw i32 %21, 13
  %call46 = call i32 @is_attacked(i32 %sub45, i32 1)
  %tobool47 = icmp ne i32 %call46, 0
  %cond48 = select i1 %tobool47, i32 2, i32 0
  store i32 %cond48, i32* %f, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.44, %if.end.42
  %22 = load i32, i32* %f, align 4
  %tobool50 = icmp ne i32 %22, 0
  br i1 %tobool50, label %if.else.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

if.else.52:                                       ; preds = %if.end.49
  %23 = load i32, i32* %f, align 4
  %cmp53 = icmp eq i32 %23, 1
  br i1 %cmp53, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %if.else.52
  %24 = load i32, i32* %square.addr, align 4
  %sub55 = sub nsw i32 %24, 11
  %call56 = call i32 @calc_attackers(i32 %sub55, i32 1)
  %cmp57 = icmp sgt i32 %call56, 1
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.then.54
  store i32 0, i32* %retval
  br label %return

if.else.59:                                       ; preds = %if.then.54
  store i32 30, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.52
  %25 = load i32, i32* %square.addr, align 4
  %sub61 = sub nsw i32 %25, 13
  %call62 = call i32 @calc_attackers(i32 %sub61, i32 1)
  %cmp63 = icmp sgt i32 %call62, 1
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  store i32 0, i32* %retval
  br label %return

if.else.65:                                       ; preds = %if.else.60
  store i32 30, i32* %retval
  br label %return

return:                                           ; preds = %if.else.65, %if.then.64, %if.else.59, %if.then.58, %if.then.51, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @s_rook_mobility(i32 %square) #0 {
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
  %shl = shl i32 %20, 2
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define internal i32 @s_bishop_mobility(i32 %square) #0 {
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
  %shl = shl i32 %20, 2
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define internal i32 @s_knight_mobility(i32 %square) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @knight_o, i32 0, i64 %idxprom
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
  %shl = shl i32 %7, 2
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define internal i32 @s_king_mobility(i32 %square) #0 {
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
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @king_o, i32 0, i64 %idxprom
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
  %shl = shl i32 %7, 2
  ret i32 %shl
}

declare void @storeECache(i32) #1

declare i32 @is_attacked(i32, i32) #1

declare i32 @calc_attackers(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
