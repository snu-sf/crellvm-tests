; ModuleID = './MultiSource.Benchmarks.Fhourstones-3.1/1.SearchGame.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { i64 }

@nplies = common global i32 0, align 4
@color = common global [2 x i64] zeroinitializer, align 16
@height = common global [7 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = common global [42 x i32] zeroinitializer, align 16
@ht = common global %struct.hashentry* null, align 8
@posed = common global i64 0, align 8
@lock = common global i32 0, align 4
@htindex = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@millisecs.Time = internal global i64 0, align 8
@history = common global [2 x [49 x i32]] zeroinitializer, align 16
@nodes = common global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#-<=>+\00", align 1
@msecs = common global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Fhourstones 3.1 (C)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Boardsize = %dx%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Using %d transposition table entries.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0ASolving %d-ply position after \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @reset() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @nplies, align 4
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i32 0, i64 1), align 8
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i32 0, i64 0), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 7, %1
  %conv = trunc i32 %mul to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @positioncode() #0 {
entry:
  %0 = load i32, i32* @nplies, align 4
  %and = and i32 %0, 1
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i32 0, i64 0), align 8
  %add = add i64 %1, %2
  %3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i32 0, i64 1), align 8
  %add1 = add i64 %add, %3
  %add2 = add i64 %add1, 4432676798593
  ret i64 %add2
}

; Function Attrs: nounwind uwtable
define void @printMoves() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @nplies, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 1, %3
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @islegal(i64 %newboard) #0 {
entry:
  %newboard.addr = alloca i64, align 8
  store i64 %newboard, i64* %newboard.addr, align 8
  %0 = load i64, i64* %newboard.addr, align 8
  %and = and i64 %0, 283691315109952
  %cmp = icmp eq i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @isplayable(i32 %col) #0 {
entry:
  %col.addr = alloca i32, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load i32, i32* @nplies, align 4
  %and = and i32 %0, 1
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %2 = load i32, i32* %col.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %3 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %or = or i64 %1, %shl
  %call = call i32 @islegal(i64 %or)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @haswon(i64 %newboard) #0 {
entry:
  %retval = alloca i32, align 4
  %newboard.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %newboard, i64* %newboard.addr, align 8
  %0 = load i64, i64* %newboard.addr, align 8
  %1 = load i64, i64* %newboard.addr, align 8
  %shr = lshr i64 %1, 6
  %and = and i64 %0, %shr
  store i64 %and, i64* %y, align 8
  %2 = load i64, i64* %y, align 8
  %3 = load i64, i64* %y, align 8
  %shr1 = lshr i64 %3, 12
  %and2 = and i64 %2, %shr1
  %cmp = icmp ne i64 %and2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %newboard.addr, align 8
  %5 = load i64, i64* %newboard.addr, align 8
  %shr3 = lshr i64 %5, 7
  %and4 = and i64 %4, %shr3
  store i64 %and4, i64* %y, align 8
  %6 = load i64, i64* %y, align 8
  %7 = load i64, i64* %y, align 8
  %shr5 = lshr i64 %7, 14
  %and6 = and i64 %6, %shr5
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %8 = load i64, i64* %newboard.addr, align 8
  %9 = load i64, i64* %newboard.addr, align 8
  %shr10 = lshr i64 %9, 8
  %and11 = and i64 %8, %shr10
  store i64 %and11, i64* %y, align 8
  %10 = load i64, i64* %y, align 8
  %11 = load i64, i64* %y, align 8
  %shr12 = lshr i64 %11, 16
  %and13 = and i64 %10, %shr12
  %cmp14 = icmp ne i64 %and13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %12 = load i64, i64* %newboard.addr, align 8
  %13 = load i64, i64* %newboard.addr, align 8
  %shr17 = lshr i64 %13, 1
  %and18 = and i64 %12, %shr17
  store i64 %and18, i64* %y, align 8
  %14 = load i64, i64* %y, align 8
  %15 = load i64, i64* %y, align 8
  %shr19 = lshr i64 %15, 2
  %and20 = and i64 %14, %shr19
  %cmp21 = icmp ne i64 %and20, 0
  %conv = zext i1 %cmp21 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.8, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @islegalhaswon(i64 %newboard) #0 {
entry:
  %newboard.addr = alloca i64, align 8
  store i64 %newboard, i64* %newboard.addr, align 8
  %0 = load i64, i64* %newboard.addr, align 8
  %call = call i32 @islegal(i64 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %newboard.addr, align 8
  %call1 = call i32 @haswon(i64 %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define void @backmove() #0 {
entry:
  %n = alloca i32, align 4
  %0 = load i32, i32* @nplies, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @nplies, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %dec3 = add i8 %3, -1
  store i8 %dec3, i8* %arrayidx2, align 1
  %conv = sext i8 %dec3 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %4 = load i32, i32* @nplies, align 4
  %and = and i32 %4, 1
  %idxprom4 = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom4
  %5 = load i64, i64* %arrayidx5, align 8
  %xor = xor i64 %5, %shl
  store i64 %xor, i64* %arrayidx5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @makemove(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %inc = add i8 %1, 1
  store i8 %inc, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %2 = load i32, i32* @nplies, align 4
  %and = and i32 %2, 1
  %idxprom1 = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom1
  %3 = load i64, i64* %arrayidx2, align 8
  %xor = xor i64 %3, %shl
  store i64 %xor, i64* %arrayidx2, align 8
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* @nplies, align 4
  %inc3 = add nsw i32 %5, 1
  store i32 %inc3, i32* @nplies, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i32 0, i64 %idxprom4
  store i32 %4, i32* %arrayidx5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @trans_init() #0 {
entry:
  %call = call noalias i8* @calloc(i64 8306069, i64 8) #3
  %0 = bitcast i8* %call to %struct.hashentry*
  store %struct.hashentry* %0, %struct.hashentry** @ht, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @emptyTT() #0 {
entry:
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.hashentry, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8306069
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %arrayidx = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 %idxprom
  %3 = bitcast %struct.hashentry* %.compoundliteral to i64*
  %bf.load = load i64, i64* %3, align 4
  %bf.clear = and i64 %bf.load, -67108864
  store i64 %bf.clear, i64* %3, align 4
  %4 = bitcast %struct.hashentry* %.compoundliteral to i64*
  %bf.load1 = load i64, i64* %4, align 4
  %bf.clear2 = and i64 %bf.load1, -4227858433
  store i64 %bf.clear2, i64* %4, align 4
  %5 = bitcast %struct.hashentry* %.compoundliteral to i64*
  %bf.load3 = load i64, i64* %5, align 4
  %bf.clear4 = and i64 %bf.load3, -288230371856744449
  store i64 %bf.clear4, i64* %5, align 4
  %6 = bitcast %struct.hashentry* %.compoundliteral to i64*
  %bf.load5 = load i64, i64* %6, align 4
  %bf.clear6 = and i64 %bf.load5, -2017612633061982209
  store i64 %bf.clear6, i64* %6, align 4
  %7 = bitcast %struct.hashentry* %.compoundliteral to i64*
  %bf.load7 = load i64, i64* %7, align 4
  %bf.clear8 = and i64 %bf.load7, 2305843009213693951
  store i64 %bf.clear8, i64* %7, align 4
  %8 = bitcast %struct.hashentry* %arrayidx to i8*
  %9 = bitcast %struct.hashentry* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 8, i32 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @posed, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @hash() #0 {
entry:
  %htmp = alloca i64, align 8
  %htemp = alloca i64, align 8
  %htemp2 = alloca i64, align 8
  %call = call i64 @positioncode()
  store i64 %call, i64* %htemp, align 8
  %0 = load i32, i32* @nplies, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  store i64 0, i64* %htemp2, align 8
  %1 = load i64, i64* %htemp, align 8
  store i64 %1, i64* %htmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i64, i64* %htmp, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %htemp2, align 8
  %shl = shl i64 %3, 7
  %4 = load i64, i64* %htmp, align 8
  %and = and i64 %4, 127
  %or = or i64 %shl, %and
  store i64 %or, i64* %htemp2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %htmp, align 8
  %shr = lshr i64 %5, 7
  store i64 %shr, i64* %htmp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %htemp2, align 8
  %7 = load i64, i64* %htemp, align 8
  %cmp2 = icmp ult i64 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.end
  %8 = load i64, i64* %htemp2, align 8
  store i64 %8, i64* %htemp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.end
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %9 = load i64, i64* %htemp, align 8
  %shr5 = lshr i64 %9, 23
  %conv = trunc i64 %shr5 to i32
  store i32 %conv, i32* @lock, align 4
  %10 = load i64, i64* %htemp, align 8
  %rem = urem i64 %10, 8306069
  %conv6 = trunc i64 %rem to i32
  store i32 %conv6, i32* @htindex, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @transpose() #0 {
entry:
  %retval = alloca i32, align 4
  %he = alloca %struct.hashentry, align 4
  %biglock = alloca i32, align 4
  %newlock = alloca i32, align 4
  call void @hash()
  %0 = load i32, i32* @htindex, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %arrayidx = getelementptr inbounds %struct.hashentry, %struct.hashentry* %1, i64 %idxprom
  %2 = bitcast %struct.hashentry* %he to i8*
  %3 = bitcast %struct.hashentry* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 4, i1 false)
  %4 = bitcast %struct.hashentry* %he to i64*
  %bf.load = load i64, i64* %4, align 4
  %bf.clear = and i64 %bf.load, 67108863
  %bf.cast = trunc i64 %bf.clear to i32
  %5 = load i32, i32* @lock, align 4
  %cmp = icmp eq i32 %bf.cast, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = bitcast %struct.hashentry* %he to i64*
  %bf.load1 = load i64, i64* %6, align 4
  %bf.lshr = lshr i64 %bf.load1, 61
  %bf.cast2 = trunc i64 %bf.lshr to i32
  store i32 %bf.cast2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = bitcast %struct.hashentry* %he to i64*
  %bf.load3 = load i64, i64* %7, align 4
  %bf.lshr4 = lshr i64 %bf.load3, 32
  %bf.clear5 = and i64 %bf.lshr4, 67108863
  %bf.cast6 = trunc i64 %bf.clear5 to i32
  %8 = load i32, i32* @lock, align 4
  %cmp7 = icmp eq i32 %bf.cast6, %8
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %9 = bitcast %struct.hashentry* %he to i64*
  %bf.load9 = load i64, i64* %9, align 4
  %bf.lshr10 = lshr i64 %bf.load9, 58
  %bf.clear11 = and i64 %bf.lshr10, 7
  %bf.cast12 = trunc i64 %bf.clear11 to i32
  store i32 %bf.cast12, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.8, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @transtore(i32 %x, i32 %lock, i32 %score, i32 %work) #0 {
entry:
  %x.addr = alloca i32, align 4
  %lock.addr = alloca i32, align 4
  %score.addr = alloca i32, align 4
  %work.addr = alloca i32, align 4
  %he = alloca %struct.hashentry, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %lock, i32* %lock.addr, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %work, i32* %work.addr, align 4
  %0 = load i64, i64* @posed, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @posed, align 8
  %1 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %arrayidx = getelementptr inbounds %struct.hashentry, %struct.hashentry* %2, i64 %idxprom
  %3 = bitcast %struct.hashentry* %he to i8*
  %4 = bitcast %struct.hashentry* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 4, i1 false)
  %5 = bitcast %struct.hashentry* %he to i64*
  %bf.load = load i64, i64* %5, align 4
  %bf.clear = and i64 %bf.load, 67108863
  %bf.cast = trunc i64 %bf.clear to i32
  %6 = load i32, i32* %lock.addr, align 4
  %cmp = icmp eq i32 %bf.cast, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %work.addr, align 4
  %8 = bitcast %struct.hashentry* %he to i64*
  %bf.load1 = load i64, i64* %8, align 4
  %bf.lshr = lshr i64 %bf.load1, 26
  %bf.clear2 = and i64 %bf.lshr, 63
  %bf.cast3 = trunc i64 %bf.clear2 to i32
  %cmp4 = icmp sge i32 %7, %bf.cast3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %lock.addr, align 4
  %10 = bitcast %struct.hashentry* %he to i64*
  %11 = zext i32 %9 to i64
  %bf.load5 = load i64, i64* %10, align 4
  %bf.value = and i64 %11, 67108863
  %bf.clear6 = and i64 %bf.load5, -67108864
  %bf.set = or i64 %bf.clear6, %bf.value
  store i64 %bf.set, i64* %10, align 4
  %bf.result.cast = trunc i64 %bf.value to i32
  %12 = load i32, i32* %score.addr, align 4
  %13 = bitcast %struct.hashentry* %he to i64*
  %14 = zext i32 %12 to i64
  %bf.load7 = load i64, i64* %13, align 4
  %bf.value8 = and i64 %14, 7
  %bf.shl = shl i64 %bf.value8, 61
  %bf.clear9 = and i64 %bf.load7, 2305843009213693951
  %bf.set10 = or i64 %bf.clear9, %bf.shl
  store i64 %bf.set10, i64* %13, align 4
  %bf.result.cast11 = trunc i64 %bf.value8 to i32
  %15 = load i32, i32* %work.addr, align 4
  %16 = bitcast %struct.hashentry* %he to i64*
  %17 = zext i32 %15 to i64
  %bf.load12 = load i64, i64* %16, align 4
  %bf.value13 = and i64 %17, 63
  %bf.shl14 = shl i64 %bf.value13, 26
  %bf.clear15 = and i64 %bf.load12, -4227858433
  %bf.set16 = or i64 %bf.clear15, %bf.shl14
  store i64 %bf.set16, i64* %16, align 4
  %bf.result.cast17 = trunc i64 %bf.value13 to i32
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %18 = load i32, i32* %lock.addr, align 4
  %19 = bitcast %struct.hashentry* %he to i64*
  %20 = zext i32 %18 to i64
  %bf.load18 = load i64, i64* %19, align 4
  %bf.value19 = and i64 %20, 67108863
  %bf.shl20 = shl i64 %bf.value19, 32
  %bf.clear21 = and i64 %bf.load18, -288230371856744449
  %bf.set22 = or i64 %bf.clear21, %bf.shl20
  store i64 %bf.set22, i64* %19, align 4
  %bf.result.cast23 = trunc i64 %bf.value19 to i32
  %21 = load i32, i32* %score.addr, align 4
  %22 = bitcast %struct.hashentry* %he to i64*
  %23 = zext i32 %21 to i64
  %bf.load24 = load i64, i64* %22, align 4
  %bf.value25 = and i64 %23, 7
  %bf.shl26 = shl i64 %bf.value25, 58
  %bf.clear27 = and i64 %bf.load24, -2017612633061982209
  %bf.set28 = or i64 %bf.clear27, %bf.shl26
  store i64 %bf.set28, i64* %22, align 4
  %bf.result.cast29 = trunc i64 %bf.value25 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load i32, i32* %x.addr, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %arrayidx31 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %25, i64 %idxprom30
  %26 = bitcast %struct.hashentry* %arrayidx31 to i8*
  %27 = bitcast %struct.hashentry* %he to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 8, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @htstat() #0 {
entry:
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %typecnt = alloca [8 x i32], align 16
  %he = alloca %struct.hashentry, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.26, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 8306069
  br i1 %cmp2, label %for.body.3, label %for.end.28

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %arrayidx5 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 %idxprom4
  %6 = bitcast %struct.hashentry* %he to i8*
  %7 = bitcast %struct.hashentry* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false)
  %8 = bitcast %struct.hashentry* %he to i64*
  %bf.load = load i64, i64* %8, align 4
  %bf.clear = and i64 %bf.load, 67108863
  %bf.cast = trunc i64 %bf.clear to i32
  %cmp6 = icmp ne i32 %bf.cast, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = bitcast %struct.hashentry* %he to i64*
  %bf.load7 = load i64, i64* %9, align 4
  %bf.lshr = lshr i64 %bf.load7, 61
  %bf.cast8 = trunc i64 %bf.lshr to i32
  %idxprom9 = zext i32 %bf.cast8 to i64
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %11 = bitcast %struct.hashentry* %he to i64*
  %bf.load12 = load i64, i64* %11, align 4
  %bf.lshr13 = lshr i64 %bf.load12, 32
  %bf.clear14 = and i64 %bf.lshr13, 67108863
  %bf.cast15 = trunc i64 %bf.clear14 to i32
  %cmp16 = icmp ne i32 %bf.cast15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.25

if.then.17:                                       ; preds = %if.end
  %12 = bitcast %struct.hashentry* %he to i64*
  %bf.load18 = load i64, i64* %12, align 4
  %bf.lshr19 = lshr i64 %bf.load18, 58
  %bf.clear20 = and i64 %bf.lshr19, 7
  %bf.cast21 = trunc i64 %bf.clear20 to i32
  %idxprom22 = zext i32 %bf.cast21 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom22
  %13 = load i32, i32* %arrayidx23, align 4
  %inc24 = add nsw i32 %13, 1
  store i32 %inc24, i32* %arrayidx23, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.17, %if.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %14 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.1

for.end.28:                                       ; preds = %for.cond.1
  store i32 0, i32* %total, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.34, %for.end.28
  %15 = load i32, i32* %i, align 4
  %cmp30 = icmp sle i32 %15, 5
  br i1 %cmp30, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.29
  %16 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom32
  %17 = load i32, i32* %arrayidx33, align 4
  %18 = load i32, i32* %total, align 4
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %total, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.31
  %19 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %19, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.29

for.end.36:                                       ; preds = %for.cond.29
  %20 = load i32, i32* %total, align 4
  %cmp37 = icmp sgt i32 %20, 0
  br i1 %cmp37, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %for.end.36
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 1
  %21 = load i32, i32* %arrayidx39, align 4
  %conv = sitofp i32 %21 to double
  %22 = load i32, i32* %total, align 4
  %conv40 = sitofp i32 %22 to double
  %div = fdiv double %conv, %conv40
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 2
  %23 = load i32, i32* %arrayidx41, align 4
  %conv42 = sitofp i32 %23 to double
  %24 = load i32, i32* %total, align 4
  %conv43 = sitofp i32 %24 to double
  %div44 = fdiv double %conv42, %conv43
  %arrayidx45 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 3
  %25 = load i32, i32* %arrayidx45, align 4
  %conv46 = sitofp i32 %25 to double
  %26 = load i32, i32* %total, align 4
  %conv47 = sitofp i32 %26 to double
  %div48 = fdiv double %conv46, %conv47
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 4
  %27 = load i32, i32* %arrayidx49, align 4
  %conv50 = sitofp i32 %27 to double
  %28 = load i32, i32* %total, align 4
  %conv51 = sitofp i32 %28 to double
  %div52 = fdiv double %conv50, %conv51
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 5
  %29 = load i32, i32* %arrayidx53, align 4
  %conv54 = sitofp i32 %29 to double
  %30 = load i32, i32* %total, align 4
  %conv55 = sitofp i32 %30 to double
  %div56 = fdiv double %conv54, %conv55
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), double %div, double %div44, double %div48, double %div52, double %div56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.38, %for.end.36
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @millisecs() #0 {
entry:
  %0 = load i64, i64* @millisecs.Time, align 8
  %inc = add nsw i64 %0, 1
  store i64 %inc, i64* @millisecs.Time, align 8
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define i32 @min(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @max(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @inithistory() #0 {
entry:
  %side = alloca i32, align 4
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, i32* %side, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %0 = load i32, i32* %side, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.44, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.46

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %h, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %h, align 4
  %cmp5 = icmp slt i32 %2, 3
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %i, align 4
  %call = call i32 @min(i32 3, i32 %3)
  %add = add nsw i32 4, %call
  %4 = load i32, i32* %h, align 4
  %call7 = call i32 @min(i32 3, i32 %4)
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 3, %5
  %call8 = call i32 @max(i32 0, i32 %sub)
  %sub9 = sub nsw i32 %call7, %call8
  %call10 = call i32 @max(i32 -1, i32 %sub9)
  %add11 = add nsw i32 %add, %call10
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %h, align 4
  %call12 = call i32 @min(i32 %6, i32 %7)
  %call13 = call i32 @min(i32 3, i32 %call12)
  %add14 = add nsw i32 %add11, %call13
  %8 = load i32, i32* %h, align 4
  %call15 = call i32 @min(i32 3, i32 %8)
  %add16 = add nsw i32 %add14, %call15
  %9 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 6, %9
  %mul = mul nsw i32 7, %sub17
  %10 = load i32, i32* %h, align 4
  %add18 = add nsw i32 %mul, %10
  %idxprom = sext i32 %add18 to i64
  %11 = load i32, i32* %side, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom19
  %arrayidx20 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %add16, i32* %arrayidx20, align 4
  %12 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 7, %12
  %add22 = add nsw i32 %mul21, 6
  %sub23 = sub nsw i32 %add22, 1
  %13 = load i32, i32* %h, align 4
  %sub24 = sub nsw i32 %sub23, %13
  %idxprom25 = sext i32 %sub24 to i64
  %14 = load i32, i32* %side, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx27, i32 0, i64 %idxprom25
  store i32 %add16, i32* %arrayidx28, align 4
  %15 = load i32, i32* %i, align 4
  %sub29 = sub nsw i32 6, %15
  %mul30 = mul nsw i32 7, %sub29
  %add31 = add nsw i32 %mul30, 6
  %sub32 = sub nsw i32 %add31, 1
  %16 = load i32, i32* %h, align 4
  %sub33 = sub nsw i32 %sub32, %16
  %idxprom34 = sext i32 %sub33 to i64
  %17 = load i32, i32* %side, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx36, i32 0, i64 %idxprom34
  store i32 %add16, i32* %arrayidx37, align 4
  %18 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 7, %18
  %19 = load i32, i32* %h, align 4
  %add39 = add nsw i32 %mul38, %19
  %idxprom40 = sext i32 %add39 to i64
  %20 = load i32, i32* %side, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx42, i32 0, i64 %idxprom40
  store i32 %add16, i32* %arrayidx43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %21 = load i32, i32* %h, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %h, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %22, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.1

for.end.46:                                       ; preds = %for.cond.1
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %23 = load i32, i32* %side, align 4
  %inc48 = add nsw i32 %23, 1
  store i32 %inc48, i32* %side, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ab(i32 %alpha, i32 %beta) #0 {
entry:
  %retval = alloca i32, align 4
  %alpha.addr = alloca i32, align 4
  %beta.addr = alloca i32, align 4
  %besti = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %v = alloca i32, align 4
  %val = alloca i32, align 4
  %score = alloca i32, align 4
  %ttscore = alloca i32, align 4
  %winontop = alloca i32, align 4
  %work = alloca i32, align 4
  %nav = alloca i32, align 4
  %av = alloca [7 x i32], align 16
  %poscnt = alloca i64, align 8
  %newbrd = alloca i64, align 8
  %other = alloca i64, align 8
  %side = alloca i32, align 4
  %otherside = alloca i32, align 4
  %hashindx = alloca i32, align 4
  %hashlock = alloca i32, align 4
  store i32 %alpha, i32* %alpha.addr, align 4
  store i32 %beta, i32* %beta.addr, align 4
  %0 = load i64, i64* @nodes, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* @nodes, align 8
  %1 = load i32, i32* @nplies, align 4
  %cmp = icmp eq i32 %1, 41
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @nplies, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %side, align 4
  %xor = xor i32 %and, 1
  store i32 %xor, i32* %otherside, align 4
  %3 = load i32, i32* %otherside, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %other, align 8
  store i32 0, i32* %nav, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %5, 7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %other, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %8 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %or = or i64 %6, %shl
  store i64 %or, i64* %newbrd, align 8
  %9 = load i64, i64* %newbrd, align 8
  %call = call i32 @islegal(i64 %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.body
  br label %for.inc

if.end.5:                                         ; preds = %for.body
  %10 = load i64, i64* %other, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %sh_prom9 = zext i32 %conv8 to i64
  %shl10 = shl i64 2, %sh_prom9
  %or11 = or i64 %10, %shl10
  %call12 = call i32 @islegalhaswon(i64 %or11)
  store i32 %call12, i32* %winontop, align 4
  %13 = load i64, i64* %newbrd, align 8
  %call13 = call i32 @haswon(i64 %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.35

if.then.15:                                       ; preds = %if.end.5
  %14 = load i32, i32* %winontop, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.15
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.15
  store i32 0, i32* %nav, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %nav, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %nav, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom20
  store i32 %15, i32* %arrayidx21, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %if.end.18
  %17 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* %i, align 4
  %cmp23 = icmp slt i32 %inc22, 7
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i64, i64* %other, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %sh_prom28 = zext i32 %conv27 to i64
  %shl29 = shl i64 1, %sh_prom28
  %or30 = or i64 %18, %shl29
  %call31 = call i32 @islegalhaswon(i64 %or30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.end

if.end.35:                                        ; preds = %if.end.5
  %21 = load i32, i32* %winontop, align 4
  %tobool36 = icmp ne i32 %21, 0
  br i1 %tobool36, label %if.end.41, label %if.then.37

if.then.37:                                       ; preds = %if.end.35
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %nav, align 4
  %inc38 = add nsw i32 %23, 1
  store i32 %inc38, i32* %nav, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom39
  store i32 %22, i32* %arrayidx40, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.then.4
  %24 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %24, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %while.end, %for.cond
  %25 = load i32, i32* %nav, align 4
  %cmp43 = icmp eq i32 %25, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %for.end
  %26 = load i32, i32* @nplies, align 4
  %cmp47 = icmp eq i32 %26, 40
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  store i32 3, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %27 = load i32, i32* %nav, align 4
  %cmp51 = icmp eq i32 %27, 1
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.end.50
  %arrayidx54 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 0
  %28 = load i32, i32* %arrayidx54, align 4
  call void @makemove(i32 %28)
  %29 = load i32, i32* %beta.addr, align 4
  %sub = sub nsw i32 6, %29
  %30 = load i32, i32* %alpha.addr, align 4
  %sub55 = sub nsw i32 6, %30
  %call56 = call i32 @ab(i32 %sub, i32 %sub55)
  %sub57 = sub nsw i32 6, %call56
  store i32 %sub57, i32* %score, align 4
  call void @backmove()
  %31 = load i32, i32* %score, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end.50
  %call59 = call i32 @transpose()
  store i32 %call59, i32* %ttscore, align 4
  %32 = load i32, i32* %ttscore, align 4
  %cmp60 = icmp ne i32 %32, 0
  br i1 %cmp60, label %if.then.62, label %if.end.80

if.then.62:                                       ; preds = %if.end.58
  %33 = load i32, i32* %ttscore, align 4
  %cmp63 = icmp eq i32 %33, 2
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %if.then.62
  store i32 3, i32* %beta.addr, align 4
  %34 = load i32, i32* %alpha.addr, align 4
  %cmp66 = icmp sle i32 3, %34
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  %35 = load i32, i32* %ttscore, align 4
  store i32 %35, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.65
  br label %if.end.79

if.else:                                          ; preds = %if.then.62
  %36 = load i32, i32* %ttscore, align 4
  %cmp70 = icmp eq i32 %36, 4
  br i1 %cmp70, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.else
  store i32 3, i32* %alpha.addr, align 4
  %37 = load i32, i32* %beta.addr, align 4
  %cmp73 = icmp sge i32 3, %37
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.72
  %38 = load i32, i32* %ttscore, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.then.72
  br label %if.end.78

if.else.77:                                       ; preds = %if.else
  %39 = load i32, i32* %ttscore, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.76
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.69
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.58
  %40 = load i32, i32* @htindex, align 4
  store i32 %40, i32* %hashindx, align 4
  %41 = load i32, i32* @lock, align 4
  store i32 %41, i32* %hashlock, align 4
  %42 = load i64, i64* @posed, align 8
  store i64 %42, i64* %poscnt, align 8
  store i32 0, i32* %besti, align 4
  store i32 1, i32* %score, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.185, %if.end.80
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %nav, align 4
  %cmp82 = icmp slt i32 %43, %44
  br i1 %cmp82, label %for.body.84, label %for.end.187

for.body.84:                                      ; preds = %for.cond.81
  %45 = load i32, i32* %i, align 4
  store i32 %45, i32* %l, align 4
  %idxprom85 = sext i32 %45 to i64
  %arrayidx86 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom85
  %46 = load i32, i32* %arrayidx86, align 4
  %idxprom87 = sext i32 %46 to i64
  %arrayidx88 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom87
  %47 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %47 to i32
  %idxprom90 = sext i32 %conv89 to i64
  %48 = load i32, i32* %side, align 4
  %idxprom91 = sext i32 %48 to i64
  %arrayidx92 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx92, i32 0, i64 %idxprom90
  %49 = load i32, i32* %arrayidx93, align 4
  store i32 %49, i32* %val, align 4
  %50 = load i32, i32* %i, align 4
  %add = add nsw i32 %50, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.111, %for.body.84
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %nav, align 4
  %cmp95 = icmp slt i32 %51, %52
  br i1 %cmp95, label %for.body.97, label %for.end.113

for.body.97:                                      ; preds = %for.cond.94
  %53 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %53 to i64
  %arrayidx99 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom98
  %54 = load i32, i32* %arrayidx99, align 4
  %idxprom100 = sext i32 %54 to i64
  %arrayidx101 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom100
  %55 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %55 to i32
  %idxprom103 = sext i32 %conv102 to i64
  %56 = load i32, i32* %side, align 4
  %idxprom104 = sext i32 %56 to i64
  %arrayidx105 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx105, i32 0, i64 %idxprom103
  %57 = load i32, i32* %arrayidx106, align 4
  store i32 %57, i32* %v, align 4
  %58 = load i32, i32* %v, align 4
  %59 = load i32, i32* %val, align 4
  %cmp107 = icmp sgt i32 %58, %59
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.body.97
  %60 = load i32, i32* %v, align 4
  store i32 %60, i32* %val, align 4
  %61 = load i32, i32* %j, align 4
  store i32 %61, i32* %l, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %for.body.97
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %62 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %62, 1
  store i32 %inc112, i32* %j, align 4
  br label %for.cond.94

for.end.113:                                      ; preds = %for.cond.94
  %63 = load i32, i32* %l, align 4
  %idxprom114 = sext i32 %63 to i64
  %arrayidx115 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom114
  %64 = load i32, i32* %arrayidx115, align 4
  store i32 %64, i32* %j, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.125, %for.end.113
  %65 = load i32, i32* %l, align 4
  %66 = load i32, i32* %i, align 4
  %cmp117 = icmp sgt i32 %65, %66
  br i1 %cmp117, label %for.body.119, label %for.end.126

for.body.119:                                     ; preds = %for.cond.116
  %67 = load i32, i32* %l, align 4
  %sub120 = sub nsw i32 %67, 1
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom121
  %68 = load i32, i32* %arrayidx122, align 4
  %69 = load i32, i32* %l, align 4
  %idxprom123 = sext i32 %69 to i64
  %arrayidx124 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom123
  store i32 %68, i32* %arrayidx124, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.119
  %70 = load i32, i32* %l, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %l, align 4
  br label %for.cond.116

for.end.126:                                      ; preds = %for.cond.116
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %72 to i64
  %arrayidx128 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom127
  store i32 %71, i32* %arrayidx128, align 4
  call void @makemove(i32 %71)
  %73 = load i32, i32* %beta.addr, align 4
  %sub129 = sub nsw i32 6, %73
  %74 = load i32, i32* %alpha.addr, align 4
  %sub130 = sub nsw i32 6, %74
  %call131 = call i32 @ab(i32 %sub129, i32 %sub130)
  %sub132 = sub nsw i32 6, %call131
  store i32 %sub132, i32* %val, align 4
  call void @backmove()
  %75 = load i32, i32* %val, align 4
  %76 = load i32, i32* %score, align 4
  %cmp133 = icmp sgt i32 %75, %76
  br i1 %cmp133, label %if.then.135, label %if.end.184

if.then.135:                                      ; preds = %for.end.126
  %77 = load i32, i32* %i, align 4
  store i32 %77, i32* %besti, align 4
  %78 = load i32, i32* %val, align 4
  store i32 %78, i32* %score, align 4
  %79 = load i32, i32* %alpha.addr, align 4
  %cmp136 = icmp sgt i32 %78, %79
  br i1 %cmp136, label %land.lhs.true, label %if.end.183

land.lhs.true:                                    ; preds = %if.then.135
  %80 = load i32, i32* @nplies, align 4
  %cmp138 = icmp sge i32 %80, 0
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.183

land.lhs.true.140:                                ; preds = %land.lhs.true
  %81 = load i32, i32* %val, align 4
  store i32 %81, i32* %alpha.addr, align 4
  %82 = load i32, i32* %beta.addr, align 4
  %cmp141 = icmp sge i32 %81, %82
  br i1 %cmp141, label %if.then.143, label %if.end.183

if.then.143:                                      ; preds = %land.lhs.true.140
  %83 = load i32, i32* %score, align 4
  %cmp144 = icmp eq i32 %83, 3
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.151

land.lhs.true.146:                                ; preds = %if.then.143
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %nav, align 4
  %sub147 = sub nsw i32 %85, 1
  %cmp148 = icmp slt i32 %84, %sub147
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.146
  store i32 4, i32* %score, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true.146, %if.then.143
  %86 = load i32, i32* %besti, align 4
  %cmp152 = icmp sgt i32 %86, 0
  br i1 %cmp152, label %if.then.154, label %if.end.182

if.then.154:                                      ; preds = %if.end.151
  store i32 0, i32* %i, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.169, %if.then.154
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* %besti, align 4
  %cmp156 = icmp slt i32 %87, %88
  br i1 %cmp156, label %for.body.158, label %for.end.171

for.body.158:                                     ; preds = %for.cond.155
  %89 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %89 to i64
  %arrayidx160 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom159
  %90 = load i32, i32* %arrayidx160, align 4
  %idxprom161 = sext i32 %90 to i64
  %arrayidx162 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom161
  %91 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %91 to i32
  %idxprom164 = sext i32 %conv163 to i64
  %92 = load i32, i32* %side, align 4
  %idxprom165 = sext i32 %92 to i64
  %arrayidx166 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx166, i32 0, i64 %idxprom164
  %93 = load i32, i32* %arrayidx167, align 4
  %dec168 = add nsw i32 %93, -1
  store i32 %dec168, i32* %arrayidx167, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.body.158
  %94 = load i32, i32* %i, align 4
  %inc170 = add nsw i32 %94, 1
  store i32 %inc170, i32* %i, align 4
  br label %for.cond.155

for.end.171:                                      ; preds = %for.cond.155
  %95 = load i32, i32* %besti, align 4
  %96 = load i32, i32* %besti, align 4
  %idxprom172 = sext i32 %96 to i64
  %arrayidx173 = getelementptr inbounds [7 x i32], [7 x i32]* %av, i32 0, i64 %idxprom172
  %97 = load i32, i32* %arrayidx173, align 4
  %idxprom174 = sext i32 %97 to i64
  %arrayidx175 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom174
  %98 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %98 to i32
  %idxprom177 = sext i32 %conv176 to i64
  %99 = load i32, i32* %side, align 4
  %idxprom178 = sext i32 %99 to i64
  %arrayidx179 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i32 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [49 x i32], [49 x i32]* %arrayidx179, i32 0, i64 %idxprom177
  %100 = load i32, i32* %arrayidx180, align 4
  %add181 = add nsw i32 %100, %95
  store i32 %add181, i32* %arrayidx180, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %for.end.171, %if.end.151
  br label %for.end.187

if.end.183:                                       ; preds = %land.lhs.true.140, %land.lhs.true, %if.then.135
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %for.end.126
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %101 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %101, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.81

for.end.187:                                      ; preds = %if.end.182, %for.cond.81
  %102 = load i32, i32* %score, align 4
  %103 = load i32, i32* %ttscore, align 4
  %sub188 = sub nsw i32 6, %103
  %cmp189 = icmp eq i32 %102, %sub188
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %for.end.187
  store i32 3, i32* %score, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %for.end.187
  %104 = load i64, i64* @posed, align 8
  %105 = load i64, i64* %poscnt, align 8
  %sub193 = sub i64 %104, %105
  store i64 %sub193, i64* %poscnt, align 8
  store i32 0, i32* %work, align 4
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.198, %if.end.192
  %106 = load i64, i64* %poscnt, align 8
  %shr = lshr i64 %106, 1
  store i64 %shr, i64* %poscnt, align 8
  %cmp195 = icmp ne i64 %shr, 0
  br i1 %cmp195, label %for.body.197, label %for.end.200

for.body.197:                                     ; preds = %for.cond.194
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.197
  %107 = load i32, i32* %work, align 4
  %inc199 = add nsw i32 %107, 1
  store i32 %inc199, i32* %work, align 4
  br label %for.cond.194

for.end.200:                                      ; preds = %for.cond.194
  %108 = load i32, i32* %hashindx, align 4
  %109 = load i32, i32* %hashlock, align 4
  %110 = load i32, i32* %score, align 4
  %111 = load i32, i32* %work, align 4
  call void @transtore(i32 %108, i32 %109, i32 %110, i32 %111)
  %112 = load i32, i32* @nplies, align 4
  %cmp201 = icmp sle i32 %112, -1
  br i1 %cmp201, label %if.then.203, label %if.end.208

if.then.203:                                      ; preds = %for.end.200
  call void @printMoves()
  %113 = load i32, i32* %score, align 4
  %idxprom204 = sext i32 %113 to i64
  %arrayidx205 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i32 0, i64 %idxprom204
  %114 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %114 to i32
  %115 = load i32, i32* %work, align 4
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 %conv206, i32 %115)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.203, %for.end.200
  %116 = load i32, i32* %score, align 4
  store i32 %116, i32* %retval
  br label %return

return:                                           ; preds = %if.end.208, %if.else.77, %if.then.75, %if.then.68, %if.then.53, %if.then.49, %if.then.45, %if.then.33, %if.then.17, %if.then
  %117 = load i32, i32* %retval
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define i32 @solve() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %side = alloca i32, align 4
  %otherside = alloca i32, align 4
  %score = alloca i32, align 4
  %0 = load i32, i32* @nplies, align 4
  %and = and i32 %0, 1
  store i32 %and, i32* %side, align 4
  %1 = load i32, i32* %side, align 4
  %xor = xor i32 %1, 1
  store i32 %xor, i32* %otherside, align 4
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %2 = load i32, i32* %otherside, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %call = call i32 @haswon(i64 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %side, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i32 0, i64 %idxprom1
  %6 = load i64, i64* %arrayidx2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i32 0, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %8 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %or = or i64 %6, %shl
  %call5 = call i32 @islegalhaswon(i64 %or)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store i32 5, i32* %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @inithistory()
  %call9 = call i64 @millisecs()
  store i64 %call9, i64* @msecs, align 8
  %call10 = call i32 @ab(i32 1, i32 5)
  store i32 %call10, i32* %score, align 4
  %call11 = call i64 @millisecs()
  %add = add i64 1, %call11
  %10 = load i64, i64* @msecs, align 8
  %sub = sub i64 %add, %10
  store i64 %sub, i64* @msecs, align 8
  %11 = load i32, i32* %score, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %result = alloca i32, align 4
  %work = alloca i32, align 4
  %poscnt = alloca i64, align 8
  store i32 0, i32* %retval
  call void @trans_init()
  %call = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 7, i32 6)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0), i32 8306069)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  call void @reset()
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %for.cond
  %call3 = call i32 @getchar()
  store i32 %call3, i32* %c, align 4
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %cmp4 = icmp sge i32 %0, 49
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %1 = load i32, i32* %c, align 4
  %cmp5 = icmp sle i32 %1, 55
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %2, 49
  call void @makemove(i32 %sub)
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %while.body
  %3 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %3, 10
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then.7, %while.cond
  %4 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %4, -1
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %while.end
  br label %for.end.18

if.end.11:                                        ; preds = %while.end
  %5 = load i32, i32* @nplies, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i32 %5)
  call void @printMoves()
  %call13 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  call void @emptyTT()
  %call14 = call i32 @solve()
  store i32 %call14, i32* %result, align 4
  %6 = load i64, i64* @posed, align 8
  store i64 %6, i64* %poscnt, align 8
  store i32 0, i32* %work, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.11
  %7 = load i64, i64* %poscnt, align 8
  %shr = lshr i64 %7, 1
  store i64 %shr, i64* %poscnt, align 8
  %cmp16 = icmp ne i64 %shr, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %work, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %work, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %9 = load i32, i32* %result, align 4
  %10 = load i32, i32* %result, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %12 = load i32, i32* %work, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 %9, i32 %conv, i32 %12)
  call void @htstat()
  br label %for.cond

for.end.18:                                       ; preds = %if.then.10
  ret i32 0
}

declare i32 @puts(i8*) #1

declare i32 @getchar() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
