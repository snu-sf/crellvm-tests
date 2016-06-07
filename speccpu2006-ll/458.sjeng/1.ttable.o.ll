; ModuleID = 'ttable.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TType = type { i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.QTType = type { i8, i8, i16, i32, i32, i32 }

@DP_TTable = common global %struct.TType* null, align 8
@TTSize = external global i32, align 4
@AS_TTable = common global %struct.TType* null, align 8
@QS_TTable = common global %struct.QTType* null, align 8
@zobrist = common global [14 x [144 x i32]] zeroinitializer, align 16
@hash = common global i32 0, align 4
@hold_hash = external global i32, align 4
@board = external global [144 x i32], align 16
@TTStores = common global i32 0, align 4
@white_to_move = external global i32, align 4
@is_pondering = external global i32, align 4
@ply = external global i32, align 4
@Variant = external global i32, align 4
@TTProbes = common global i32 0, align 4
@TTHits = common global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Out of memory allocating hashtables.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @clear_tt() #0 {
entry:
  %0 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %1 = bitcast %struct.TType* %0 to i8*
  %2 = load i32, i32* @TTSize, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 20, %conv
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  %3 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %4 = bitcast %struct.TType* %3 to i8*
  %5 = load i32, i32* @TTSize, align 4
  %conv1 = sext i32 %5 to i64
  %mul2 = mul i64 20, %conv1
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul2, i32 4, i1 false)
  %6 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %7 = bitcast %struct.QTType* %6 to i8*
  %8 = load i32, i32* @TTSize, align 4
  %conv3 = sext i32 %8 to i64
  %mul4 = mul i64 16, %conv3
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul4, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @clear_dp_tt() #0 {
entry:
  %0 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %1 = bitcast %struct.TType* %0 to i8*
  %2 = load i32, i32* @TTSize, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 20, %conv
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_zobrist() #0 {
entry:
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  call void @seedMT(i32 31657)
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %p, align 4
  %cmp = icmp slt i32 %0, 14
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %q, align 4
  %cmp2 = icmp slt i32 %1, 144
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call i32 @randomMT()
  %2 = load i32, i32* %q, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %p, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %q, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %q, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %5 = load i32, i32* %p, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %p, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 -559038737, i32* @hash, align 4
  store i32 -1056969216, i32* @hold_hash, align 4
  ret void
}

declare void @seedMT(i32) #2

declare i32 @randomMT() #2

; Function Attrs: nounwind uwtable
define void @initialize_hash() #0 {
entry:
  %p = alloca i32, align 4
  store i32 -559038737, i32* @hash, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %p, align 4
  %cmp = icmp slt i32 %0, 144
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %p, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %2, 13
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %p, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp ne i32 %4, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @hash, align 4
  %6 = load i32, i32* %p, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i32, i32* %p, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [144 x i32], [144 x i32]* @board, i32 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [14 x [144 x i32]], [14 x [144 x i32]]* @zobrist, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [144 x i32], [144 x i32]* %arrayidx9, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx10, align 4
  %xor = xor i32 %5, %9
  store i32 %xor, i32* @hash, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %p, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1056969216, i32* @hold_hash, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @QStoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best) #0 {
entry:
  %score.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %best.addr = alloca i32, align 4
  %ttindex = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 %best, i32* %best.addr, align 4
  %0 = load i32, i32* @TTStores, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTStores, align 4
  %1 = load i32, i32* @hash, align 4
  %2 = load i32, i32* @TTSize, align 4
  %rem = urem i32 %1, %2
  store i32 %rem, i32* %ttindex, align 4
  %3 = load i32, i32* %score.addr, align 4
  %4 = load i32, i32* %alpha.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ttindex, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx = getelementptr inbounds %struct.QTType, %struct.QTType* %6, i64 %idxprom
  %Type = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx, i32 0, i32 1
  store i8 1, i8* %Type, align 1
  br label %if.end.10

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %score.addr, align 4
  %8 = load i32, i32* %beta.addr, align 4
  %cmp1 = icmp sge i32 %7, %8
  br i1 %cmp1, label %if.then.2, label %if.else.6

if.then.2:                                        ; preds = %if.else
  %9 = load i32, i32* %ttindex, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx4 = getelementptr inbounds %struct.QTType, %struct.QTType* %10, i64 %idxprom3
  %Type5 = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx4, i32 0, i32 1
  store i8 2, i8* %Type5, align 1
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %11 = load i32, i32* %ttindex, align 4
  %idxprom7 = zext i32 %11 to i64
  %12 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx8 = getelementptr inbounds %struct.QTType, %struct.QTType* %12, i64 %idxprom7
  %Type9 = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx8, i32 0, i32 1
  store i8 3, i8* %Type9, align 1
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %13 = load i32, i32* @hash, align 4
  %14 = load i32, i32* %ttindex, align 4
  %idxprom11 = zext i32 %14 to i64
  %15 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx12 = getelementptr inbounds %struct.QTType, %struct.QTType* %15, i64 %idxprom11
  %HashKey = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx12, i32 0, i32 3
  store i32 %13, i32* %HashKey, align 4
  %16 = load i32, i32* @hold_hash, align 4
  %17 = load i32, i32* %ttindex, align 4
  %idxprom13 = zext i32 %17 to i64
  %18 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx14 = getelementptr inbounds %struct.QTType, %struct.QTType* %18, i64 %idxprom13
  %Hold_hash = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx14, i32 0, i32 4
  store i32 %16, i32* %Hold_hash, align 4
  %19 = load i32, i32* %best.addr, align 4
  %conv = trunc i32 %19 to i16
  %20 = load i32, i32* %ttindex, align 4
  %idxprom15 = zext i32 %20 to i64
  %21 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx16 = getelementptr inbounds %struct.QTType, %struct.QTType* %21, i64 %idxprom15
  %Bestmove = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx16, i32 0, i32 2
  store i16 %conv, i16* %Bestmove, align 2
  %22 = load i32, i32* %score.addr, align 4
  %23 = load i32, i32* %ttindex, align 4
  %idxprom17 = zext i32 %23 to i64
  %24 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx18 = getelementptr inbounds %struct.QTType, %struct.QTType* %24, i64 %idxprom17
  %Bound = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx18, i32 0, i32 5
  store i32 %22, i32* %Bound, align 4
  %25 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %25, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %conv19 = trunc i32 %cond to i8
  %26 = load i32, i32* %ttindex, align 4
  %idxprom20 = zext i32 %26 to i64
  %27 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx21 = getelementptr inbounds %struct.QTType, %struct.QTType* %27, i64 %idxprom20
  %OnMove = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx21, i32 0, i32 0
  store i8 %conv19, i8* %OnMove, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @StoreTT(i32 %score, i32 %alpha, i32 %beta, i32 %best, i32 %threat, i32 %depth) #0 {
entry:
  %score.addr = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %best.addr = alloca i32, align 4
  %threat.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %ttindex = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  store i32 %best, i32* %best.addr, align 4
  store i32 %threat, i32* %threat.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load i32, i32* @TTStores, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTStores, align 4
  %1 = load i32, i32* @hash, align 4
  %2 = load i32, i32* @TTSize, align 4
  %rem = urem i32 %1, %2
  store i32 %rem, i32* %ttindex, align 4
  %3 = load i32, i32* %ttindex, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx = getelementptr inbounds %struct.TType, %struct.TType* %4, i64 %idxprom
  %Depth = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx, i32 0, i32 0
  %5 = load i8, i8* %Depth, align 1
  %conv = sext i8 %5 to i32
  %6 = load i32, i32* %depth.addr, align 4
  %cmp = icmp slt i32 %conv, %6
  br i1 %cmp, label %land.lhs.true.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %ttindex, align 4
  %idxprom2 = zext i32 %7 to i64
  %8 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx3 = getelementptr inbounds %struct.TType, %struct.TType* %8, i64 %idxprom2
  %Depth4 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx3, i32 0, i32 0
  %9 = load i8, i8* %Depth4, align 1
  %conv5 = sext i8 %9 to i32
  %10 = load i32, i32* %depth.addr, align 4
  %cmp6 = icmp eq i32 %conv5, %10
  br i1 %cmp6, label %land.lhs.true, label %if.else.77

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, i32* %ttindex, align 4
  %idxprom8 = zext i32 %11 to i64
  %12 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx9 = getelementptr inbounds %struct.TType, %struct.TType* %12, i64 %idxprom8
  %Type = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx9, i32 0, i32 3
  %13 = load i8, i8* %Type, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 1
  br i1 %cmp11, label %land.lhs.true.13, label %lor.lhs.false.16

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* %score.addr, align 4
  %15 = load i32, i32* %alpha.addr, align 4
  %cmp14 = icmp sgt i32 %14, %15
  br i1 %cmp14, label %land.lhs.true.22, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.13, %land.lhs.true
  %16 = load i32, i32* %score.addr, align 4
  %17 = load i32, i32* %alpha.addr, align 4
  %cmp17 = icmp sgt i32 %16, %17
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.77

land.lhs.true.19:                                 ; preds = %lor.lhs.false.16
  %18 = load i32, i32* %score.addr, align 4
  %19 = load i32, i32* %beta.addr, align 4
  %cmp20 = icmp slt i32 %18, %19
  br i1 %cmp20, label %land.lhs.true.22, label %if.else.77

land.lhs.true.22:                                 ; preds = %land.lhs.true.19, %land.lhs.true.13, %entry
  %20 = load i32, i32* @is_pondering, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.else.77, label %if.then

if.then:                                          ; preds = %land.lhs.true.22
  %21 = load i32, i32* %score.addr, align 4
  %22 = load i32, i32* %alpha.addr, align 4
  %cmp23 = icmp sle i32 %21, %22
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then
  %23 = load i32, i32* %ttindex, align 4
  %idxprom26 = zext i32 %23 to i64
  %24 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx27 = getelementptr inbounds %struct.TType, %struct.TType* %24, i64 %idxprom26
  %Type28 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx27, i32 0, i32 3
  store i8 1, i8* %Type28, align 1
  %25 = load i32, i32* %score.addr, align 4
  %cmp29 = icmp slt i32 %25, -999500
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.then.25
  store i32 -999500, i32* %score.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %if.then.25
  br label %if.end.56

if.else:                                          ; preds = %if.then
  %26 = load i32, i32* %score.addr, align 4
  %27 = load i32, i32* %beta.addr, align 4
  %cmp32 = icmp sge i32 %26, %27
  br i1 %cmp32, label %if.then.34, label %if.else.42

if.then.34:                                       ; preds = %if.else
  %28 = load i32, i32* %ttindex, align 4
  %idxprom35 = zext i32 %28 to i64
  %29 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx36 = getelementptr inbounds %struct.TType, %struct.TType* %29, i64 %idxprom35
  %Type37 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx36, i32 0, i32 3
  store i8 2, i8* %Type37, align 1
  %30 = load i32, i32* %score.addr, align 4
  %cmp38 = icmp sgt i32 %30, 999500
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.34
  store i32 999500, i32* %score.addr, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.34
  br label %if.end.55

if.else.42:                                       ; preds = %if.else
  %31 = load i32, i32* %ttindex, align 4
  %idxprom43 = zext i32 %31 to i64
  %32 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx44 = getelementptr inbounds %struct.TType, %struct.TType* %32, i64 %idxprom43
  %Type45 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx44, i32 0, i32 3
  store i8 3, i8* %Type45, align 1
  %33 = load i32, i32* %score.addr, align 4
  %cmp46 = icmp sgt i32 %33, 999500
  br i1 %cmp46, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %if.else.42
  %34 = load i32, i32* @ply, align 4
  %35 = load i32, i32* %score.addr, align 4
  %add = add nsw i32 %35, %34
  store i32 %add, i32* %score.addr, align 4
  br label %if.end.54

if.else.49:                                       ; preds = %if.else.42
  %36 = load i32, i32* %score.addr, align 4
  %cmp50 = icmp slt i32 %36, -999500
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else.49
  %37 = load i32, i32* @ply, align 4
  %38 = load i32, i32* %score.addr, align 4
  %sub = sub nsw i32 %38, %37
  store i32 %sub, i32* %score.addr, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end
  %39 = load i32, i32* @hash, align 4
  %40 = load i32, i32* %ttindex, align 4
  %idxprom57 = zext i32 %40 to i64
  %41 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx58 = getelementptr inbounds %struct.TType, %struct.TType* %41, i64 %idxprom57
  %HashKey = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx58, i32 0, i32 5
  store i32 %39, i32* %HashKey, align 4
  %42 = load i32, i32* @hold_hash, align 4
  %43 = load i32, i32* %ttindex, align 4
  %idxprom59 = zext i32 %43 to i64
  %44 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx60 = getelementptr inbounds %struct.TType, %struct.TType* %44, i64 %idxprom59
  %Hold_hash = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx60, i32 0, i32 6
  store i32 %42, i32* %Hold_hash, align 4
  %45 = load i32, i32* %depth.addr, align 4
  %conv61 = trunc i32 %45 to i8
  %46 = load i32, i32* %ttindex, align 4
  %idxprom62 = zext i32 %46 to i64
  %47 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx63 = getelementptr inbounds %struct.TType, %struct.TType* %47, i64 %idxprom62
  %Depth64 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx63, i32 0, i32 0
  store i8 %conv61, i8* %Depth64, align 1
  %48 = load i32, i32* %best.addr, align 4
  %conv65 = trunc i32 %48 to i16
  %49 = load i32, i32* %ttindex, align 4
  %idxprom66 = zext i32 %49 to i64
  %50 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx67 = getelementptr inbounds %struct.TType, %struct.TType* %50, i64 %idxprom66
  %Bestmove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx67, i32 0, i32 4
  store i16 %conv65, i16* %Bestmove, align 2
  %51 = load i32, i32* %score.addr, align 4
  %52 = load i32, i32* %ttindex, align 4
  %idxprom68 = zext i32 %52 to i64
  %53 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx69 = getelementptr inbounds %struct.TType, %struct.TType* %53, i64 %idxprom68
  %Bound = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx69, i32 0, i32 7
  store i32 %51, i32* %Bound, align 4
  %54 = load i32, i32* @white_to_move, align 4
  %tobool70 = icmp ne i32 %54, 0
  %cond = select i1 %tobool70, i32 0, i32 1
  %conv71 = trunc i32 %cond to i8
  %55 = load i32, i32* %ttindex, align 4
  %idxprom72 = zext i32 %55 to i64
  %56 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx73 = getelementptr inbounds %struct.TType, %struct.TType* %56, i64 %idxprom72
  %OnMove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx73, i32 0, i32 1
  store i8 %conv71, i8* %OnMove, align 1
  %57 = load i32, i32* %threat.addr, align 4
  %conv74 = trunc i32 %57 to i8
  %58 = load i32, i32* %ttindex, align 4
  %idxprom75 = zext i32 %58 to i64
  %59 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx76 = getelementptr inbounds %struct.TType, %struct.TType* %59, i64 %idxprom75
  %Threat = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx76, i32 0, i32 2
  store i8 %conv74, i8* %Threat, align 1
  br label %if.end.143

if.else.77:                                       ; preds = %land.lhs.true.22, %land.lhs.true.19, %lor.lhs.false.16, %lor.lhs.false
  %60 = load i32, i32* %score.addr, align 4
  %61 = load i32, i32* %alpha.addr, align 4
  %cmp78 = icmp sle i32 %60, %61
  br i1 %cmp78, label %if.then.80, label %if.else.88

if.then.80:                                       ; preds = %if.else.77
  %62 = load i32, i32* %ttindex, align 4
  %idxprom81 = zext i32 %62 to i64
  %63 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx82 = getelementptr inbounds %struct.TType, %struct.TType* %63, i64 %idxprom81
  %Type83 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx82, i32 0, i32 3
  store i8 1, i8* %Type83, align 1
  %64 = load i32, i32* %score.addr, align 4
  %cmp84 = icmp slt i32 %64, -999500
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.80
  store i32 -999500, i32* %score.addr, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.then.80
  br label %if.end.115

if.else.88:                                       ; preds = %if.else.77
  %65 = load i32, i32* %score.addr, align 4
  %66 = load i32, i32* %beta.addr, align 4
  %cmp89 = icmp sge i32 %65, %66
  br i1 %cmp89, label %if.then.91, label %if.else.99

if.then.91:                                       ; preds = %if.else.88
  %67 = load i32, i32* %ttindex, align 4
  %idxprom92 = zext i32 %67 to i64
  %68 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx93 = getelementptr inbounds %struct.TType, %struct.TType* %68, i64 %idxprom92
  %Type94 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx93, i32 0, i32 3
  store i8 2, i8* %Type94, align 1
  %69 = load i32, i32* %score.addr, align 4
  %cmp95 = icmp sgt i32 %69, 999500
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.91
  store i32 999500, i32* %score.addr, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.91
  br label %if.end.114

if.else.99:                                       ; preds = %if.else.88
  %70 = load i32, i32* %ttindex, align 4
  %idxprom100 = zext i32 %70 to i64
  %71 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx101 = getelementptr inbounds %struct.TType, %struct.TType* %71, i64 %idxprom100
  %Type102 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx101, i32 0, i32 3
  store i8 3, i8* %Type102, align 1
  %72 = load i32, i32* %score.addr, align 4
  %cmp103 = icmp sgt i32 %72, 999500
  br i1 %cmp103, label %if.then.105, label %if.else.107

if.then.105:                                      ; preds = %if.else.99
  %73 = load i32, i32* @ply, align 4
  %74 = load i32, i32* %score.addr, align 4
  %add106 = add nsw i32 %74, %73
  store i32 %add106, i32* %score.addr, align 4
  br label %if.end.113

if.else.107:                                      ; preds = %if.else.99
  %75 = load i32, i32* %score.addr, align 4
  %cmp108 = icmp slt i32 %75, -999500
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.else.107
  %76 = load i32, i32* @ply, align 4
  %77 = load i32, i32* %score.addr, align 4
  %sub111 = sub nsw i32 %77, %76
  store i32 %sub111, i32* %score.addr, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.else.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.105
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.98
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.87
  %78 = load i32, i32* @hash, align 4
  %79 = load i32, i32* %ttindex, align 4
  %idxprom116 = zext i32 %79 to i64
  %80 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx117 = getelementptr inbounds %struct.TType, %struct.TType* %80, i64 %idxprom116
  %HashKey118 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx117, i32 0, i32 5
  store i32 %78, i32* %HashKey118, align 4
  %81 = load i32, i32* @hold_hash, align 4
  %82 = load i32, i32* %ttindex, align 4
  %idxprom119 = zext i32 %82 to i64
  %83 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx120 = getelementptr inbounds %struct.TType, %struct.TType* %83, i64 %idxprom119
  %Hold_hash121 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx120, i32 0, i32 6
  store i32 %81, i32* %Hold_hash121, align 4
  %84 = load i32, i32* %depth.addr, align 4
  %conv122 = trunc i32 %84 to i8
  %85 = load i32, i32* %ttindex, align 4
  %idxprom123 = zext i32 %85 to i64
  %86 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx124 = getelementptr inbounds %struct.TType, %struct.TType* %86, i64 %idxprom123
  %Depth125 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx124, i32 0, i32 0
  store i8 %conv122, i8* %Depth125, align 1
  %87 = load i32, i32* %best.addr, align 4
  %conv126 = trunc i32 %87 to i16
  %88 = load i32, i32* %ttindex, align 4
  %idxprom127 = zext i32 %88 to i64
  %89 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx128 = getelementptr inbounds %struct.TType, %struct.TType* %89, i64 %idxprom127
  %Bestmove129 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx128, i32 0, i32 4
  store i16 %conv126, i16* %Bestmove129, align 2
  %90 = load i32, i32* %score.addr, align 4
  %91 = load i32, i32* %ttindex, align 4
  %idxprom130 = zext i32 %91 to i64
  %92 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx131 = getelementptr inbounds %struct.TType, %struct.TType* %92, i64 %idxprom130
  %Bound132 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx131, i32 0, i32 7
  store i32 %90, i32* %Bound132, align 4
  %93 = load i32, i32* @white_to_move, align 4
  %tobool133 = icmp ne i32 %93, 0
  %cond134 = select i1 %tobool133, i32 0, i32 1
  %conv135 = trunc i32 %cond134 to i8
  %94 = load i32, i32* %ttindex, align 4
  %idxprom136 = zext i32 %94 to i64
  %95 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx137 = getelementptr inbounds %struct.TType, %struct.TType* %95, i64 %idxprom136
  %OnMove138 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx137, i32 0, i32 1
  store i8 %conv135, i8* %OnMove138, align 1
  %96 = load i32, i32* %threat.addr, align 4
  %conv139 = trunc i32 %96 to i8
  %97 = load i32, i32* %ttindex, align 4
  %idxprom140 = zext i32 %97 to i64
  %98 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx141 = getelementptr inbounds %struct.TType, %struct.TType* %98, i64 %idxprom140
  %Threat142 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx141, i32 0, i32 2
  store i8 %conv139, i8* %Threat142, align 1
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.115, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define void @LearnStoreTT(i32 %score, i32 %nhash, i32 %hhash, i32 %tomove, i32 %best, i32 %depth) #0 {
entry:
  %score.addr = alloca i32, align 4
  %nhash.addr = alloca i32, align 4
  %hhash.addr = alloca i32, align 4
  %tomove.addr = alloca i32, align 4
  %best.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %ttindex = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %nhash, i32* %nhash.addr, align 4
  store i32 %hhash, i32* %hhash.addr, align 4
  store i32 %tomove, i32* %tomove.addr, align 4
  store i32 %best, i32* %best.addr, align 4
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load i32, i32* %nhash.addr, align 4
  %1 = load i32, i32* @TTSize, align 4
  %rem = urem i32 %0, %1
  store i32 %rem, i32* %ttindex, align 4
  %2 = load i32, i32* %depth.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i32, i32* %ttindex, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx = getelementptr inbounds %struct.TType, %struct.TType* %4, i64 %idxprom
  %Depth = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx, i32 0, i32 0
  store i8 %conv, i8* %Depth, align 1
  %5 = load i32, i32* @Variant, align 4
  %cmp = icmp ne i32 %5, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* @Variant, align 4
  %cmp2 = icmp ne i32 %6, 4
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %ttindex, align 4
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx5 = getelementptr inbounds %struct.TType, %struct.TType* %8, i64 %idxprom4
  %Type = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx5, i32 0, i32 3
  store i8 3, i8* %Type, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %ttindex, align 4
  %idxprom6 = zext i32 %9 to i64
  %10 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx7 = getelementptr inbounds %struct.TType, %struct.TType* %10, i64 %idxprom6
  %Type8 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx7, i32 0, i32 3
  store i8 1, i8* %Type8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %nhash.addr, align 4
  %12 = load i32, i32* %ttindex, align 4
  %idxprom9 = zext i32 %12 to i64
  %13 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx10 = getelementptr inbounds %struct.TType, %struct.TType* %13, i64 %idxprom9
  %HashKey = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx10, i32 0, i32 5
  store i32 %11, i32* %HashKey, align 4
  %14 = load i32, i32* %hhash.addr, align 4
  %15 = load i32, i32* %ttindex, align 4
  %idxprom11 = zext i32 %15 to i64
  %16 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx12 = getelementptr inbounds %struct.TType, %struct.TType* %16, i64 %idxprom11
  %Hold_hash = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx12, i32 0, i32 6
  store i32 %14, i32* %Hold_hash, align 4
  %17 = load i32, i32* %best.addr, align 4
  %conv13 = trunc i32 %17 to i16
  %18 = load i32, i32* %ttindex, align 4
  %idxprom14 = zext i32 %18 to i64
  %19 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx15 = getelementptr inbounds %struct.TType, %struct.TType* %19, i64 %idxprom14
  %Bestmove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx15, i32 0, i32 4
  store i16 %conv13, i16* %Bestmove, align 2
  %20 = load i32, i32* %score.addr, align 4
  %21 = load i32, i32* %ttindex, align 4
  %idxprom16 = zext i32 %21 to i64
  %22 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx17 = getelementptr inbounds %struct.TType, %struct.TType* %22, i64 %idxprom16
  %Bound = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx17, i32 0, i32 7
  store i32 %20, i32* %Bound, align 4
  %23 = load i32, i32* %tomove.addr, align 4
  %conv18 = trunc i32 %23 to i8
  %24 = load i32, i32* %ttindex, align 4
  %idxprom19 = zext i32 %24 to i64
  %25 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx20 = getelementptr inbounds %struct.TType, %struct.TType* %25, i64 %idxprom19
  %OnMove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx20, i32 0, i32 1
  store i8 %conv18, i8* %OnMove, align 1
  %26 = load i32, i32* %ttindex, align 4
  %idxprom21 = zext i32 %26 to i64
  %27 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx22 = getelementptr inbounds %struct.TType, %struct.TType* %27, i64 %idxprom21
  %Threat = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx22, i32 0, i32 2
  store i8 0, i8* %Threat, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ProbeTT(i32* %score, i32 %beta, i32* %best, i32* %threat, i32* %donull, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %score.addr = alloca i32*, align 8
  %beta.addr = alloca i32, align 4
  %best.addr = alloca i32*, align 8
  %threat.addr = alloca i32*, align 8
  %donull.addr = alloca i32*, align 8
  %depth.addr = alloca i32, align 4
  %ttindex = alloca i32, align 4
  store i32* %score, i32** %score.addr, align 8
  store i32 %beta, i32* %beta.addr, align 4
  store i32* %best, i32** %best.addr, align 8
  store i32* %threat, i32** %threat.addr, align 8
  store i32* %donull, i32** %donull.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  %0 = load i32*, i32** %donull.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load i32, i32* @TTProbes, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @TTProbes, align 4
  %2 = load i32, i32* @hash, align 4
  %3 = load i32, i32* @TTSize, align 4
  %rem = urem i32 %2, %3
  store i32 %rem, i32* %ttindex, align 4
  %4 = load i32, i32* %ttindex, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx = getelementptr inbounds %struct.TType, %struct.TType* %5, i64 %idxprom
  %HashKey = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx, i32 0, i32 5
  %6 = load i32, i32* %HashKey, align 4
  %7 = load i32, i32* @hash, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %ttindex, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx2 = getelementptr inbounds %struct.TType, %struct.TType* %9, i64 %idxprom1
  %Hold_hash = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx2, i32 0, i32 6
  %10 = load i32, i32* %Hold_hash, align 4
  %11 = load i32, i32* @hold_hash, align 4
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.75

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load i32, i32* %ttindex, align 4
  %idxprom5 = zext i32 %12 to i64
  %13 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx6 = getelementptr inbounds %struct.TType, %struct.TType* %13, i64 %idxprom5
  %OnMove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx6, i32 0, i32 1
  %14 = load i8, i8* %OnMove, align 1
  %conv = sext i8 %14 to i32
  %15 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %conv7 = trunc i32 %cond to i8
  %conv8 = sext i8 %conv7 to i32
  %cmp9 = icmp eq i32 %conv, %conv8
  br i1 %cmp9, label %if.then, label %if.else.75

if.then:                                          ; preds = %land.lhs.true.4
  %16 = load i32, i32* @TTHits, align 4
  %inc11 = add i32 %16, 1
  store i32 %inc11, i32* @TTHits, align 4
  %17 = load i32, i32* %ttindex, align 4
  %idxprom12 = zext i32 %17 to i64
  %18 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx13 = getelementptr inbounds %struct.TType, %struct.TType* %18, i64 %idxprom12
  %Type = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx13, i32 0, i32 3
  %19 = load i8, i8* %Type, align 1
  %conv14 = sext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %if.then
  %20 = load i32, i32* %depth.addr, align 4
  %sub = sub nsw i32 %20, 2
  %sub18 = sub nsw i32 %sub, 1
  %21 = load i32, i32* %ttindex, align 4
  %idxprom19 = zext i32 %21 to i64
  %22 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx20 = getelementptr inbounds %struct.TType, %struct.TType* %22, i64 %idxprom19
  %Depth = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx20, i32 0, i32 0
  %23 = load i8, i8* %Depth, align 1
  %conv21 = sext i8 %23 to i32
  %cmp22 = icmp sle i32 %sub18, %conv21
  br i1 %cmp22, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.17
  %24 = load i32, i32* %ttindex, align 4
  %idxprom25 = zext i32 %24 to i64
  %25 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx26 = getelementptr inbounds %struct.TType, %struct.TType* %25, i64 %idxprom25
  %Bound = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx26, i32 0, i32 7
  %26 = load i32, i32* %Bound, align 4
  %27 = load i32, i32* %beta.addr, align 4
  %cmp27 = icmp slt i32 %26, %27
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true.24
  %28 = load i32*, i32** %donull.addr, align 8
  store i32 0, i32* %28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.29, %land.lhs.true.24, %land.lhs.true.17, %if.then
  %29 = load i32, i32* %ttindex, align 4
  %idxprom30 = zext i32 %29 to i64
  %30 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx31 = getelementptr inbounds %struct.TType, %struct.TType* %30, i64 %idxprom30
  %Threat = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx31, i32 0, i32 2
  %31 = load i8, i8* %Threat, align 1
  %tobool32 = icmp ne i8 %31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end
  %32 = load i32, i32* %depth.addr, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %depth.addr, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end
  %33 = load i32, i32* %ttindex, align 4
  %idxprom36 = zext i32 %33 to i64
  %34 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx37 = getelementptr inbounds %struct.TType, %struct.TType* %34, i64 %idxprom36
  %Depth38 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx37, i32 0, i32 0
  %35 = load i8, i8* %Depth38, align 1
  %conv39 = sext i8 %35 to i32
  %36 = load i32, i32* %depth.addr, align 4
  %cmp40 = icmp sge i32 %conv39, %36
  br i1 %cmp40, label %if.then.42, label %if.else.66

if.then.42:                                       ; preds = %if.end.35
  %37 = load i32, i32* %ttindex, align 4
  %idxprom43 = zext i32 %37 to i64
  %38 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx44 = getelementptr inbounds %struct.TType, %struct.TType* %38, i64 %idxprom43
  %Bound45 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx44, i32 0, i32 7
  %39 = load i32, i32* %Bound45, align 4
  %40 = load i32*, i32** %score.addr, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %score.addr, align 8
  %42 = load i32, i32* %41, align 4
  %cmp46 = icmp sgt i32 %42, 999500
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.then.42
  %43 = load i32, i32* @ply, align 4
  %44 = load i32*, i32** %score.addr, align 8
  %45 = load i32, i32* %44, align 4
  %sub49 = sub nsw i32 %45, %43
  store i32 %sub49, i32* %44, align 4
  br label %if.end.54

if.else:                                          ; preds = %if.then.42
  %46 = load i32*, i32** %score.addr, align 8
  %47 = load i32, i32* %46, align 4
  %cmp50 = icmp slt i32 %47, -999500
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.else
  %48 = load i32, i32* @ply, align 4
  %49 = load i32*, i32** %score.addr, align 8
  %50 = load i32, i32* %49, align 4
  %add = add nsw i32 %50, %48
  store i32 %add, i32* %49, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.48
  %51 = load i32, i32* %ttindex, align 4
  %idxprom55 = zext i32 %51 to i64
  %52 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx56 = getelementptr inbounds %struct.TType, %struct.TType* %52, i64 %idxprom55
  %Bestmove = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx56, i32 0, i32 4
  %53 = load i16, i16* %Bestmove, align 2
  %conv57 = zext i16 %53 to i32
  %54 = load i32*, i32** %best.addr, align 8
  store i32 %conv57, i32* %54, align 4
  %55 = load i32, i32* %ttindex, align 4
  %idxprom58 = zext i32 %55 to i64
  %56 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx59 = getelementptr inbounds %struct.TType, %struct.TType* %56, i64 %idxprom58
  %Threat60 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx59, i32 0, i32 2
  %57 = load i8, i8* %Threat60, align 1
  %conv61 = sext i8 %57 to i32
  %58 = load i32*, i32** %threat.addr, align 8
  store i32 %conv61, i32* %58, align 4
  %59 = load i32, i32* %ttindex, align 4
  %idxprom62 = zext i32 %59 to i64
  %60 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx63 = getelementptr inbounds %struct.TType, %struct.TType* %60, i64 %idxprom62
  %Type64 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx63, i32 0, i32 3
  %61 = load i8, i8* %Type64, align 1
  %conv65 = sext i8 %61 to i32
  store i32 %conv65, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.end.35
  %62 = load i32, i32* %ttindex, align 4
  %idxprom67 = zext i32 %62 to i64
  %63 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx68 = getelementptr inbounds %struct.TType, %struct.TType* %63, i64 %idxprom67
  %Bestmove69 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx68, i32 0, i32 4
  %64 = load i16, i16* %Bestmove69, align 2
  %conv70 = zext i16 %64 to i32
  %65 = load i32*, i32** %best.addr, align 8
  store i32 %conv70, i32* %65, align 4
  %66 = load i32, i32* %ttindex, align 4
  %idxprom71 = zext i32 %66 to i64
  %67 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %arrayidx72 = getelementptr inbounds %struct.TType, %struct.TType* %67, i64 %idxprom71
  %Threat73 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx72, i32 0, i32 2
  %68 = load i8, i8* %Threat73, align 1
  %conv74 = sext i8 %68 to i32
  %69 = load i32*, i32** %threat.addr, align 8
  store i32 %conv74, i32* %69, align 4
  store i32 0, i32* %retval
  br label %return

if.else.75:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %70 = load i32, i32* %ttindex, align 4
  %idxprom76 = zext i32 %70 to i64
  %71 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx77 = getelementptr inbounds %struct.TType, %struct.TType* %71, i64 %idxprom76
  %HashKey78 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx77, i32 0, i32 5
  %72 = load i32, i32* %HashKey78, align 4
  %73 = load i32, i32* @hash, align 4
  %cmp79 = icmp eq i32 %72, %73
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.172

land.lhs.true.81:                                 ; preds = %if.else.75
  %74 = load i32, i32* %ttindex, align 4
  %idxprom82 = zext i32 %74 to i64
  %75 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx83 = getelementptr inbounds %struct.TType, %struct.TType* %75, i64 %idxprom82
  %Hold_hash84 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx83, i32 0, i32 6
  %76 = load i32, i32* %Hold_hash84, align 4
  %77 = load i32, i32* @hold_hash, align 4
  %cmp85 = icmp eq i32 %76, %77
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.172

land.lhs.true.87:                                 ; preds = %land.lhs.true.81
  %78 = load i32, i32* %ttindex, align 4
  %idxprom88 = zext i32 %78 to i64
  %79 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx89 = getelementptr inbounds %struct.TType, %struct.TType* %79, i64 %idxprom88
  %OnMove90 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx89, i32 0, i32 1
  %80 = load i8, i8* %OnMove90, align 1
  %conv91 = sext i8 %80 to i32
  %81 = load i32, i32* @white_to_move, align 4
  %tobool92 = icmp ne i32 %81, 0
  %cond93 = select i1 %tobool92, i32 0, i32 1
  %conv94 = trunc i32 %cond93 to i8
  %conv95 = sext i8 %conv94 to i32
  %cmp96 = icmp eq i32 %conv91, %conv95
  br i1 %cmp96, label %if.then.98, label %if.else.172

if.then.98:                                       ; preds = %land.lhs.true.87
  %82 = load i32, i32* @TTHits, align 4
  %inc99 = add i32 %82, 1
  store i32 %inc99, i32* @TTHits, align 4
  %83 = load i32, i32* %ttindex, align 4
  %idxprom100 = zext i32 %83 to i64
  %84 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx101 = getelementptr inbounds %struct.TType, %struct.TType* %84, i64 %idxprom100
  %Type102 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx101, i32 0, i32 3
  %85 = load i8, i8* %Type102, align 1
  %conv103 = sext i8 %85 to i32
  %cmp104 = icmp eq i32 %conv103, 1
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.122

land.lhs.true.106:                                ; preds = %if.then.98
  %86 = load i32, i32* %depth.addr, align 4
  %sub107 = sub nsw i32 %86, 2
  %sub108 = sub nsw i32 %sub107, 1
  %87 = load i32, i32* %ttindex, align 4
  %idxprom109 = zext i32 %87 to i64
  %88 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx110 = getelementptr inbounds %struct.TType, %struct.TType* %88, i64 %idxprom109
  %Depth111 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx110, i32 0, i32 0
  %89 = load i8, i8* %Depth111, align 1
  %conv112 = sext i8 %89 to i32
  %cmp113 = icmp sle i32 %sub108, %conv112
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.122

land.lhs.true.115:                                ; preds = %land.lhs.true.106
  %90 = load i32, i32* %ttindex, align 4
  %idxprom116 = zext i32 %90 to i64
  %91 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx117 = getelementptr inbounds %struct.TType, %struct.TType* %91, i64 %idxprom116
  %Bound118 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx117, i32 0, i32 7
  %92 = load i32, i32* %Bound118, align 4
  %93 = load i32, i32* %beta.addr, align 4
  %cmp119 = icmp slt i32 %92, %93
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true.115
  %94 = load i32*, i32** %donull.addr, align 8
  store i32 0, i32* %94, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %land.lhs.true.115, %land.lhs.true.106, %if.then.98
  %95 = load i32, i32* %ttindex, align 4
  %idxprom123 = zext i32 %95 to i64
  %96 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx124 = getelementptr inbounds %struct.TType, %struct.TType* %96, i64 %idxprom123
  %Threat125 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx124, i32 0, i32 2
  %97 = load i8, i8* %Threat125, align 1
  %tobool126 = icmp ne i8 %97, 0
  br i1 %tobool126, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.end.122
  %98 = load i32, i32* %depth.addr, align 4
  %inc128 = add nsw i32 %98, 1
  store i32 %inc128, i32* %depth.addr, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.end.122
  %99 = load i32, i32* %ttindex, align 4
  %idxprom130 = zext i32 %99 to i64
  %100 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx131 = getelementptr inbounds %struct.TType, %struct.TType* %100, i64 %idxprom130
  %Depth132 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx131, i32 0, i32 0
  %101 = load i8, i8* %Depth132, align 1
  %conv133 = sext i8 %101 to i32
  %102 = load i32, i32* %depth.addr, align 4
  %cmp134 = icmp sge i32 %conv133, %102
  br i1 %cmp134, label %if.then.136, label %if.else.163

if.then.136:                                      ; preds = %if.end.129
  %103 = load i32, i32* %ttindex, align 4
  %idxprom137 = zext i32 %103 to i64
  %104 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx138 = getelementptr inbounds %struct.TType, %struct.TType* %104, i64 %idxprom137
  %Bound139 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx138, i32 0, i32 7
  %105 = load i32, i32* %Bound139, align 4
  %106 = load i32*, i32** %score.addr, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %score.addr, align 8
  %108 = load i32, i32* %107, align 4
  %cmp140 = icmp sgt i32 %108, 999500
  br i1 %cmp140, label %if.then.142, label %if.else.144

if.then.142:                                      ; preds = %if.then.136
  %109 = load i32, i32* @ply, align 4
  %110 = load i32*, i32** %score.addr, align 8
  %111 = load i32, i32* %110, align 4
  %sub143 = sub nsw i32 %111, %109
  store i32 %sub143, i32* %110, align 4
  br label %if.end.150

if.else.144:                                      ; preds = %if.then.136
  %112 = load i32*, i32** %score.addr, align 8
  %113 = load i32, i32* %112, align 4
  %cmp145 = icmp slt i32 %113, -999500
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.else.144
  %114 = load i32, i32* @ply, align 4
  %115 = load i32*, i32** %score.addr, align 8
  %116 = load i32, i32* %115, align 4
  %add148 = add nsw i32 %116, %114
  store i32 %add148, i32* %115, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.else.144
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.142
  %117 = load i32, i32* %ttindex, align 4
  %idxprom151 = zext i32 %117 to i64
  %118 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx152 = getelementptr inbounds %struct.TType, %struct.TType* %118, i64 %idxprom151
  %Bestmove153 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx152, i32 0, i32 4
  %119 = load i16, i16* %Bestmove153, align 2
  %conv154 = zext i16 %119 to i32
  %120 = load i32*, i32** %best.addr, align 8
  store i32 %conv154, i32* %120, align 4
  %121 = load i32, i32* %ttindex, align 4
  %idxprom155 = zext i32 %121 to i64
  %122 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx156 = getelementptr inbounds %struct.TType, %struct.TType* %122, i64 %idxprom155
  %Threat157 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx156, i32 0, i32 2
  %123 = load i8, i8* %Threat157, align 1
  %conv158 = sext i8 %123 to i32
  %124 = load i32*, i32** %threat.addr, align 8
  store i32 %conv158, i32* %124, align 4
  %125 = load i32, i32* %ttindex, align 4
  %idxprom159 = zext i32 %125 to i64
  %126 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx160 = getelementptr inbounds %struct.TType, %struct.TType* %126, i64 %idxprom159
  %Type161 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx160, i32 0, i32 3
  %127 = load i8, i8* %Type161, align 1
  %conv162 = sext i8 %127 to i32
  store i32 %conv162, i32* %retval
  br label %return

if.else.163:                                      ; preds = %if.end.129
  %128 = load i32, i32* %ttindex, align 4
  %idxprom164 = zext i32 %128 to i64
  %129 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx165 = getelementptr inbounds %struct.TType, %struct.TType* %129, i64 %idxprom164
  %Bestmove166 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx165, i32 0, i32 4
  %130 = load i16, i16* %Bestmove166, align 2
  %conv167 = zext i16 %130 to i32
  %131 = load i32*, i32** %best.addr, align 8
  store i32 %conv167, i32* %131, align 4
  %132 = load i32, i32* %ttindex, align 4
  %idxprom168 = zext i32 %132 to i64
  %133 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %arrayidx169 = getelementptr inbounds %struct.TType, %struct.TType* %133, i64 %idxprom168
  %Threat170 = getelementptr inbounds %struct.TType, %struct.TType* %arrayidx169, i32 0, i32 2
  %134 = load i8, i8* %Threat170, align 1
  %conv171 = sext i8 %134 to i32
  %135 = load i32*, i32** %threat.addr, align 8
  store i32 %conv171, i32* %135, align 4
  store i32 0, i32* %retval
  br label %return

if.else.172:                                      ; preds = %land.lhs.true.87, %land.lhs.true.81, %if.else.75
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.else.172, %if.else.163, %if.end.150, %if.else.66, %if.end.54
  %136 = load i32, i32* %retval
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define i32 @QProbeTT(i32* %score, i32* %best) #0 {
entry:
  %retval = alloca i32, align 4
  %score.addr = alloca i32*, align 8
  %best.addr = alloca i32*, align 8
  %ttindex = alloca i32, align 4
  store i32* %score, i32** %score.addr, align 8
  store i32* %best, i32** %best.addr, align 8
  %0 = load i32, i32* @TTProbes, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @TTProbes, align 4
  %1 = load i32, i32* @hash, align 4
  %2 = load i32, i32* @TTSize, align 4
  %rem = urem i32 %1, %2
  store i32 %rem, i32* %ttindex, align 4
  %3 = load i32, i32* %ttindex, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx = getelementptr inbounds %struct.QTType, %struct.QTType* %4, i64 %idxprom
  %HashKey = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx, i32 0, i32 3
  %5 = load i32, i32* %HashKey, align 4
  %6 = load i32, i32* @hash, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %ttindex, align 4
  %idxprom1 = zext i32 %7 to i64
  %8 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx2 = getelementptr inbounds %struct.QTType, %struct.QTType* %8, i64 %idxprom1
  %Hold_hash = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx2, i32 0, i32 4
  %9 = load i32, i32* %Hold_hash, align 4
  %10 = load i32, i32* @hold_hash, align 4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %11 = load i32, i32* %ttindex, align 4
  %idxprom5 = zext i32 %11 to i64
  %12 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx6 = getelementptr inbounds %struct.QTType, %struct.QTType* %12, i64 %idxprom5
  %OnMove = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx6, i32 0, i32 0
  %13 = load i8, i8* %OnMove, align 1
  %conv = sext i8 %13 to i32
  %14 = load i32, i32* @white_to_move, align 4
  %tobool = icmp ne i32 %14, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %conv7 = trunc i32 %cond to i8
  %conv8 = sext i8 %conv7 to i32
  %cmp9 = icmp eq i32 %conv, %conv8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %15 = load i32, i32* @TTHits, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, i32* @TTHits, align 4
  %16 = load i32, i32* %ttindex, align 4
  %idxprom12 = zext i32 %16 to i64
  %17 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx13 = getelementptr inbounds %struct.QTType, %struct.QTType* %17, i64 %idxprom12
  %Bound = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx13, i32 0, i32 5
  %18 = load i32, i32* %Bound, align 4
  %19 = load i32*, i32** %score.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %ttindex, align 4
  %idxprom14 = zext i32 %20 to i64
  %21 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx15 = getelementptr inbounds %struct.QTType, %struct.QTType* %21, i64 %idxprom14
  %Bestmove = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx15, i32 0, i32 2
  %22 = load i16, i16* %Bestmove, align 2
  %conv16 = zext i16 %22 to i32
  %23 = load i32*, i32** %best.addr, align 8
  store i32 %conv16, i32* %23, align 4
  %24 = load i32, i32* %ttindex, align 4
  %idxprom17 = zext i32 %24 to i64
  %25 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %arrayidx18 = getelementptr inbounds %struct.QTType, %struct.QTType* %25, i64 %idxprom17
  %Type = getelementptr inbounds %struct.QTType, %struct.QTType* %arrayidx18, i32 0, i32 1
  %26 = load i8, i8* %Type, align 1
  %conv19 = sext i8 %26 to i32
  store i32 %conv19, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define void @alloc_hash() #0 {
entry:
  %0 = load i32, i32* @TTSize, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 20, %conv
  %call = call noalias i8* @malloc(i64 %mul) #1
  %1 = bitcast i8* %call to %struct.TType*
  store %struct.TType* %1, %struct.TType** @AS_TTable, align 8
  %2 = load i32, i32* @TTSize, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 20, %conv1
  %call3 = call noalias i8* @malloc(i64 %mul2) #1
  %3 = bitcast i8* %call3 to %struct.TType*
  store %struct.TType* %3, %struct.TType** @DP_TTable, align 8
  %4 = load i32, i32* @TTSize, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 16, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #1
  %5 = bitcast i8* %call6 to %struct.QTType*
  store %struct.QTType* %5, %struct.QTType** @QS_TTable, align 8
  %6 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %cmp = icmp eq %struct.TType* %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %cmp8 = icmp eq %struct.TType* %7, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %8 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %cmp11 = icmp eq %struct.QTType* %8, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.10, %lor.lhs.false, %entry
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false.10
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @free_hash() #0 {
entry:
  %0 = load %struct.TType*, %struct.TType** @AS_TTable, align 8
  %1 = bitcast %struct.TType* %0 to i8*
  call void @free(i8* %1) #1
  %2 = load %struct.TType*, %struct.TType** @DP_TTable, align 8
  %3 = bitcast %struct.TType* %2 to i8*
  call void @free(i8* %3) #1
  %4 = load %struct.QTType*, %struct.QTType** @QS_TTable, align 8
  %5 = bitcast %struct.QTType* %4 to i8*
  call void @free(i8* %5) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
