; ModuleID = './SingleSource.Benchmarks.Stanford/8.Puzzle.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common global i64 0, align 8
@piecemax = common global [13 x i32] zeroinitializer, align 16
@p = common global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = common global [512 x i32] zeroinitializer, align 16
@class = common global [13 x i32] zeroinitializer, align 16
@piececount = common global [4 x i32] zeroinitializer, align 16
@kount = common global i32 0, align 4
@n = common global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = common global float 0.000000e+00, align 4
@fixed = common global float 0.000000e+00, align 4
@floated = common global float 0.000000e+00, align 4
@permarray = common global [11 x i32] zeroinitializer, align 16
@pctr = common global i32 0, align 4
@tree = common global %struct.node* null, align 8
@stack = common global [4 x i32] zeroinitializer, align 16
@cellspace = common global [19 x %struct.element] zeroinitializer, align 16
@freelist = common global i32 0, align 4
@movesdone = common global i32 0, align 4
@ima = common global [41 x [41 x i32]] zeroinitializer, align 16
@imb = common global [41 x [41 x i32]] zeroinitializer, align 16
@imr = common global [41 x [41 x i32]] zeroinitializer, align 16
@rma = common global [41 x [41 x float]] zeroinitializer, align 16
@rmb = common global [41 x [41 x float]] zeroinitializer, align 16
@rmr = common global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = common global [5001 x i32] zeroinitializer, align 16
@biggest = common global i32 0, align 4
@littlest = common global i32 0, align 4
@top = common global i32 0, align 4
@z = common global [257 x %struct.complex] zeroinitializer, align 16
@w = common global [257 x %struct.complex] zeroinitializer, align 16
@e = common global [130 x %struct.complex] zeroinitializer, align 16
@zr = common global float 0.000000e+00, align 4
@zi = common global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define void @Initrand() #0 {
entry:
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Rand() #0 {
entry:
  %0 = load i64, i64* @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @Fit(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @Place(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom5
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i32 0, i64 %idxprom11
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i32 0, i64 %idxprom13
  store i32 %sub, i32* %arrayidx14, align 4
  %14 = load i32, i32* %j.addr, align 4
  store i32 %14, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end
  %15 = load i32, i32* %k, align 4
  %cmp16 = icmp sle i32 %15, 511
  br i1 %cmp16, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %for.body.17
  %18 = load i32, i32* %k, align 4
  store i32 %18, i32* %retval
  br label %return

if.end.22:                                        ; preds = %for.body.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %19 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.25, %if.then.21
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @Remove(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx3, i32 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i32 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %add11 = add nsw i32 %11, 1
  %12 = load i32, i32* %i.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i32 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i32 0, i64 %idxprom14
  store i32 %add11, i32* %arrayidx15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Trial(i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* @kount, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @kount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @class, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j.addr, align 4
  %call = call i32 @Fit(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j.addr, align 4
  %call5 = call i32 @Place(i32 %7, i32 %8)
  store i32 %call5, i32* %k, align 4
  %9 = load i32, i32* %k, align 4
  %call6 = call i32 @Trial(i32 %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.4
  %10 = load i32, i32* %k, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %lor.lhs.false, %if.then.4
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j.addr, align 4
  call void @Remove(i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define void @Puzzle() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %m, align 4
  %cmp = icmp sle i32 %0, 511
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %m, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %m, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.20, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %3, 5
  br i1 %cmp2, label %for.body.3, label %for.end.22

for.body.3:                                       ; preds = %for.cond.1
  store i32 1, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.17, %for.body.3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp sle i32 %4, 5
  br i1 %cmp5, label %for.body.6, label %for.end.19

for.body.6:                                       ; preds = %for.cond.4
  store i32 1, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.14, %for.body.6
  %5 = load i32, i32* %k, align 4
  %cmp8 = icmp sle i32 %5, 5
  br i1 %cmp8, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  %mul = mul nsw i32 8, %8
  %add = add nsw i32 %7, %mul
  %mul10 = mul nsw i32 8, %add
  %add11 = add nsw i32 %6, %mul10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.9
  %9 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond.7

for.end.16:                                       ; preds = %for.cond.7
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %10 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %10, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.4

for.end.19:                                       ; preds = %for.cond.4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %11 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %for.end.22
  %12 = load i32, i32* %i, align 4
  %cmp24 = icmp sle i32 %12, 12
  br i1 %cmp24, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.23
  store i32 0, i32* %m, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.33, %for.body.25
  %13 = load i32, i32* %m, align 4
  %cmp27 = icmp sle i32 %13, 511
  br i1 %cmp27, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.26
  %14 = load i32, i32* %m, align 4
  %idxprom29 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx31, i32 0, i64 %idxprom29
  store i32 0, i32* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %16 = load i32, i32* %m, align 4
  %inc34 = add nsw i32 %16, 1
  store i32 %inc34, i32* %m, align 4
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %17 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %17, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.60, %for.end.38
  %18 = load i32, i32* %i, align 4
  %cmp40 = icmp sle i32 %18, 3
  br i1 %cmp40, label %for.body.41, label %for.end.62

for.body.41:                                      ; preds = %for.cond.39
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.57, %for.body.41
  %19 = load i32, i32* %j, align 4
  %cmp43 = icmp sle i32 %19, 1
  br i1 %cmp43, label %for.body.44, label %for.end.59

for.body.44:                                      ; preds = %for.cond.42
  store i32 0, i32* %k, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.54, %for.body.44
  %20 = load i32, i32* %k, align 4
  %cmp46 = icmp sle i32 %20, 0
  br i1 %cmp46, label %for.body.47, label %for.end.56

for.body.47:                                      ; preds = %for.cond.45
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %k, align 4
  %mul48 = mul nsw i32 8, %23
  %add49 = add nsw i32 %22, %mul48
  %mul50 = mul nsw i32 8, %add49
  %add51 = add nsw i32 %21, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 0), i32 0, i64 %idxprom52
  store i32 1, i32* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.47
  %24 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %24, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond.45

for.end.56:                                       ; preds = %for.cond.45
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %25 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %25, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.42

for.end.59:                                       ; preds = %for.cond.42
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %26 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %26, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.39

for.end.62:                                       ; preds = %for.cond.39
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 0), align 4
  store i32 11, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 0), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.84, %for.end.62
  %27 = load i32, i32* %i, align 4
  %cmp64 = icmp sle i32 %27, 1
  br i1 %cmp64, label %for.body.65, label %for.end.86

for.body.65:                                      ; preds = %for.cond.63
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.81, %for.body.65
  %28 = load i32, i32* %j, align 4
  %cmp67 = icmp sle i32 %28, 0
  br i1 %cmp67, label %for.body.68, label %for.end.83

for.body.68:                                      ; preds = %for.cond.66
  store i32 0, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.78, %for.body.68
  %29 = load i32, i32* %k, align 4
  %cmp70 = icmp sle i32 %29, 3
  br i1 %cmp70, label %for.body.71, label %for.end.80

for.body.71:                                      ; preds = %for.cond.69
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %k, align 4
  %mul72 = mul nsw i32 8, %32
  %add73 = add nsw i32 %31, %mul72
  %mul74 = mul nsw i32 8, %add73
  %add75 = add nsw i32 %30, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 1), i32 0, i64 %idxprom76
  store i32 1, i32* %arrayidx77, align 4
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.71
  %33 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %33, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond.69

for.end.80:                                       ; preds = %for.cond.69
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.end.80
  %34 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %34, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond.66

for.end.83:                                       ; preds = %for.cond.66
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.end.83
  %35 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %35, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond.63

for.end.86:                                       ; preds = %for.cond.63
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 1), align 4
  store i32 193, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.108, %for.end.86
  %36 = load i32, i32* %i, align 4
  %cmp88 = icmp sle i32 %36, 0
  br i1 %cmp88, label %for.body.89, label %for.end.110

for.body.89:                                      ; preds = %for.cond.87
  store i32 0, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.105, %for.body.89
  %37 = load i32, i32* %j, align 4
  %cmp91 = icmp sle i32 %37, 3
  br i1 %cmp91, label %for.body.92, label %for.end.107

for.body.92:                                      ; preds = %for.cond.90
  store i32 0, i32* %k, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.102, %for.body.92
  %38 = load i32, i32* %k, align 4
  %cmp94 = icmp sle i32 %38, 1
  br i1 %cmp94, label %for.body.95, label %for.end.104

for.body.95:                                      ; preds = %for.cond.93
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %k, align 4
  %mul96 = mul nsw i32 8, %41
  %add97 = add nsw i32 %40, %mul96
  %mul98 = mul nsw i32 8, %add97
  %add99 = add nsw i32 %39, %mul98
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 2), i32 0, i64 %idxprom100
  store i32 1, i32* %arrayidx101, align 4
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.95
  %42 = load i32, i32* %k, align 4
  %inc103 = add nsw i32 %42, 1
  store i32 %inc103, i32* %k, align 4
  br label %for.cond.93

for.end.104:                                      ; preds = %for.cond.93
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %43 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %43, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.90

for.end.107:                                      ; preds = %for.cond.90
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.end.107
  %44 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %44, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond.87

for.end.110:                                      ; preds = %for.cond.87
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 2), align 4
  store i32 88, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 2), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.132, %for.end.110
  %45 = load i32, i32* %i, align 4
  %cmp112 = icmp sle i32 %45, 1
  br i1 %cmp112, label %for.body.113, label %for.end.134

for.body.113:                                     ; preds = %for.cond.111
  store i32 0, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.129, %for.body.113
  %46 = load i32, i32* %j, align 4
  %cmp115 = icmp sle i32 %46, 3
  br i1 %cmp115, label %for.body.116, label %for.end.131

for.body.116:                                     ; preds = %for.cond.114
  store i32 0, i32* %k, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.126, %for.body.116
  %47 = load i32, i32* %k, align 4
  %cmp118 = icmp sle i32 %47, 0
  br i1 %cmp118, label %for.body.119, label %for.end.128

for.body.119:                                     ; preds = %for.cond.117
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %k, align 4
  %mul120 = mul nsw i32 8, %50
  %add121 = add nsw i32 %49, %mul120
  %mul122 = mul nsw i32 8, %add121
  %add123 = add nsw i32 %48, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 3), i32 0, i64 %idxprom124
  store i32 1, i32* %arrayidx125, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.119
  %51 = load i32, i32* %k, align 4
  %inc127 = add nsw i32 %51, 1
  store i32 %inc127, i32* %k, align 4
  br label %for.cond.117

for.end.128:                                      ; preds = %for.cond.117
  br label %for.inc.129

for.inc.129:                                      ; preds = %for.end.128
  %52 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %52, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond.114

for.end.131:                                      ; preds = %for.cond.114
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.end.131
  %53 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %53, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.111

for.end.134:                                      ; preds = %for.cond.111
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 3), align 4
  store i32 25, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 3), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.156, %for.end.134
  %54 = load i32, i32* %i, align 4
  %cmp136 = icmp sle i32 %54, 3
  br i1 %cmp136, label %for.body.137, label %for.end.158

for.body.137:                                     ; preds = %for.cond.135
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.153, %for.body.137
  %55 = load i32, i32* %j, align 4
  %cmp139 = icmp sle i32 %55, 0
  br i1 %cmp139, label %for.body.140, label %for.end.155

for.body.140:                                     ; preds = %for.cond.138
  store i32 0, i32* %k, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.150, %for.body.140
  %56 = load i32, i32* %k, align 4
  %cmp142 = icmp sle i32 %56, 1
  br i1 %cmp142, label %for.body.143, label %for.end.152

for.body.143:                                     ; preds = %for.cond.141
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %k, align 4
  %mul144 = mul nsw i32 8, %59
  %add145 = add nsw i32 %58, %mul144
  %mul146 = mul nsw i32 8, %add145
  %add147 = add nsw i32 %57, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 4), i32 0, i64 %idxprom148
  store i32 1, i32* %arrayidx149, align 4
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.body.143
  %60 = load i32, i32* %k, align 4
  %inc151 = add nsw i32 %60, 1
  store i32 %inc151, i32* %k, align 4
  br label %for.cond.141

for.end.152:                                      ; preds = %for.cond.141
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.end.152
  %61 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %61, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond.138

for.end.155:                                      ; preds = %for.cond.138
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.end.155
  %62 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %62, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.135

for.end.158:                                      ; preds = %for.cond.135
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 4), align 4
  store i32 67, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 4), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.180, %for.end.158
  %63 = load i32, i32* %i, align 4
  %cmp160 = icmp sle i32 %63, 0
  br i1 %cmp160, label %for.body.161, label %for.end.182

for.body.161:                                     ; preds = %for.cond.159
  store i32 0, i32* %j, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.177, %for.body.161
  %64 = load i32, i32* %j, align 4
  %cmp163 = icmp sle i32 %64, 1
  br i1 %cmp163, label %for.body.164, label %for.end.179

for.body.164:                                     ; preds = %for.cond.162
  store i32 0, i32* %k, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.174, %for.body.164
  %65 = load i32, i32* %k, align 4
  %cmp166 = icmp sle i32 %65, 3
  br i1 %cmp166, label %for.body.167, label %for.end.176

for.body.167:                                     ; preds = %for.cond.165
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %k, align 4
  %mul168 = mul nsw i32 8, %68
  %add169 = add nsw i32 %67, %mul168
  %mul170 = mul nsw i32 8, %add169
  %add171 = add nsw i32 %66, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 5), i32 0, i64 %idxprom172
  store i32 1, i32* %arrayidx173, align 4
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.167
  %69 = load i32, i32* %k, align 4
  %inc175 = add nsw i32 %69, 1
  store i32 %inc175, i32* %k, align 4
  br label %for.cond.165

for.end.176:                                      ; preds = %for.cond.165
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %70 = load i32, i32* %j, align 4
  %inc178 = add nsw i32 %70, 1
  store i32 %inc178, i32* %j, align 4
  br label %for.cond.162

for.end.179:                                      ; preds = %for.cond.162
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.end.179
  %71 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %71, 1
  store i32 %inc181, i32* %i, align 4
  br label %for.cond.159

for.end.182:                                      ; preds = %for.cond.159
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 5), align 4
  store i32 200, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 5), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.204, %for.end.182
  %72 = load i32, i32* %i, align 4
  %cmp184 = icmp sle i32 %72, 2
  br i1 %cmp184, label %for.body.185, label %for.end.206

for.body.185:                                     ; preds = %for.cond.183
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.201, %for.body.185
  %73 = load i32, i32* %j, align 4
  %cmp187 = icmp sle i32 %73, 0
  br i1 %cmp187, label %for.body.188, label %for.end.203

for.body.188:                                     ; preds = %for.cond.186
  store i32 0, i32* %k, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.198, %for.body.188
  %74 = load i32, i32* %k, align 4
  %cmp190 = icmp sle i32 %74, 0
  br i1 %cmp190, label %for.body.191, label %for.end.200

for.body.191:                                     ; preds = %for.cond.189
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %k, align 4
  %mul192 = mul nsw i32 8, %77
  %add193 = add nsw i32 %76, %mul192
  %mul194 = mul nsw i32 8, %add193
  %add195 = add nsw i32 %75, %mul194
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 6), i32 0, i64 %idxprom196
  store i32 1, i32* %arrayidx197, align 4
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.191
  %78 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %78, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond.189

for.end.200:                                      ; preds = %for.cond.189
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %79 = load i32, i32* %j, align 4
  %inc202 = add nsw i32 %79, 1
  store i32 %inc202, i32* %j, align 4
  br label %for.cond.186

for.end.203:                                      ; preds = %for.cond.186
  br label %for.inc.204

for.inc.204:                                      ; preds = %for.end.203
  %80 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %80, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond.183

for.end.206:                                      ; preds = %for.cond.183
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 6), align 4
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 6), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.228, %for.end.206
  %81 = load i32, i32* %i, align 4
  %cmp208 = icmp sle i32 %81, 0
  br i1 %cmp208, label %for.body.209, label %for.end.230

for.body.209:                                     ; preds = %for.cond.207
  store i32 0, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.225, %for.body.209
  %82 = load i32, i32* %j, align 4
  %cmp211 = icmp sle i32 %82, 2
  br i1 %cmp211, label %for.body.212, label %for.end.227

for.body.212:                                     ; preds = %for.cond.210
  store i32 0, i32* %k, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.222, %for.body.212
  %83 = load i32, i32* %k, align 4
  %cmp214 = icmp sle i32 %83, 0
  br i1 %cmp214, label %for.body.215, label %for.end.224

for.body.215:                                     ; preds = %for.cond.213
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %k, align 4
  %mul216 = mul nsw i32 8, %86
  %add217 = add nsw i32 %85, %mul216
  %mul218 = mul nsw i32 8, %add217
  %add219 = add nsw i32 %84, %mul218
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 7), i32 0, i64 %idxprom220
  store i32 1, i32* %arrayidx221, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.215
  %87 = load i32, i32* %k, align 4
  %inc223 = add nsw i32 %87, 1
  store i32 %inc223, i32* %k, align 4
  br label %for.cond.213

for.end.224:                                      ; preds = %for.cond.213
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.224
  %88 = load i32, i32* %j, align 4
  %inc226 = add nsw i32 %88, 1
  store i32 %inc226, i32* %j, align 4
  br label %for.cond.210

for.end.227:                                      ; preds = %for.cond.210
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.end.227
  %89 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %89, 1
  store i32 %inc229, i32* %i, align 4
  br label %for.cond.207

for.end.230:                                      ; preds = %for.cond.207
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 7), align 4
  store i32 16, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 7), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.252, %for.end.230
  %90 = load i32, i32* %i, align 4
  %cmp232 = icmp sle i32 %90, 0
  br i1 %cmp232, label %for.body.233, label %for.end.254

for.body.233:                                     ; preds = %for.cond.231
  store i32 0, i32* %j, align 4
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.249, %for.body.233
  %91 = load i32, i32* %j, align 4
  %cmp235 = icmp sle i32 %91, 0
  br i1 %cmp235, label %for.body.236, label %for.end.251

for.body.236:                                     ; preds = %for.cond.234
  store i32 0, i32* %k, align 4
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.246, %for.body.236
  %92 = load i32, i32* %k, align 4
  %cmp238 = icmp sle i32 %92, 2
  br i1 %cmp238, label %for.body.239, label %for.end.248

for.body.239:                                     ; preds = %for.cond.237
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %k, align 4
  %mul240 = mul nsw i32 8, %95
  %add241 = add nsw i32 %94, %mul240
  %mul242 = mul nsw i32 8, %add241
  %add243 = add nsw i32 %93, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 8), i32 0, i64 %idxprom244
  store i32 1, i32* %arrayidx245, align 4
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.239
  %96 = load i32, i32* %k, align 4
  %inc247 = add nsw i32 %96, 1
  store i32 %inc247, i32* %k, align 4
  br label %for.cond.237

for.end.248:                                      ; preds = %for.cond.237
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248
  %97 = load i32, i32* %j, align 4
  %inc250 = add nsw i32 %97, 1
  store i32 %inc250, i32* %j, align 4
  br label %for.cond.234

for.end.251:                                      ; preds = %for.cond.234
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.end.251
  %98 = load i32, i32* %i, align 4
  %inc253 = add nsw i32 %98, 1
  store i32 %inc253, i32* %i, align 4
  br label %for.cond.231

for.end.254:                                      ; preds = %for.cond.231
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 8), align 4
  store i32 128, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 8), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.276, %for.end.254
  %99 = load i32, i32* %i, align 4
  %cmp256 = icmp sle i32 %99, 1
  br i1 %cmp256, label %for.body.257, label %for.end.278

for.body.257:                                     ; preds = %for.cond.255
  store i32 0, i32* %j, align 4
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.273, %for.body.257
  %100 = load i32, i32* %j, align 4
  %cmp259 = icmp sle i32 %100, 1
  br i1 %cmp259, label %for.body.260, label %for.end.275

for.body.260:                                     ; preds = %for.cond.258
  store i32 0, i32* %k, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.270, %for.body.260
  %101 = load i32, i32* %k, align 4
  %cmp262 = icmp sle i32 %101, 0
  br i1 %cmp262, label %for.body.263, label %for.end.272

for.body.263:                                     ; preds = %for.cond.261
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %k, align 4
  %mul264 = mul nsw i32 8, %104
  %add265 = add nsw i32 %103, %mul264
  %mul266 = mul nsw i32 8, %add265
  %add267 = add nsw i32 %102, %mul266
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 9), i32 0, i64 %idxprom268
  store i32 1, i32* %arrayidx269, align 4
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.263
  %105 = load i32, i32* %k, align 4
  %inc271 = add nsw i32 %105, 1
  store i32 %inc271, i32* %k, align 4
  br label %for.cond.261

for.end.272:                                      ; preds = %for.cond.261
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.end.272
  %106 = load i32, i32* %j, align 4
  %inc274 = add nsw i32 %106, 1
  store i32 %inc274, i32* %j, align 4
  br label %for.cond.258

for.end.275:                                      ; preds = %for.cond.258
  br label %for.inc.276

for.inc.276:                                      ; preds = %for.end.275
  %107 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %107, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond.255

for.end.278:                                      ; preds = %for.cond.255
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 9), align 4
  store i32 9, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 9), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.300, %for.end.278
  %108 = load i32, i32* %i, align 4
  %cmp280 = icmp sle i32 %108, 1
  br i1 %cmp280, label %for.body.281, label %for.end.302

for.body.281:                                     ; preds = %for.cond.279
  store i32 0, i32* %j, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.297, %for.body.281
  %109 = load i32, i32* %j, align 4
  %cmp283 = icmp sle i32 %109, 0
  br i1 %cmp283, label %for.body.284, label %for.end.299

for.body.284:                                     ; preds = %for.cond.282
  store i32 0, i32* %k, align 4
  br label %for.cond.285

for.cond.285:                                     ; preds = %for.inc.294, %for.body.284
  %110 = load i32, i32* %k, align 4
  %cmp286 = icmp sle i32 %110, 1
  br i1 %cmp286, label %for.body.287, label %for.end.296

for.body.287:                                     ; preds = %for.cond.285
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %j, align 4
  %113 = load i32, i32* %k, align 4
  %mul288 = mul nsw i32 8, %113
  %add289 = add nsw i32 %112, %mul288
  %mul290 = mul nsw i32 8, %add289
  %add291 = add nsw i32 %111, %mul290
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 10), i32 0, i64 %idxprom292
  store i32 1, i32* %arrayidx293, align 4
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.body.287
  %114 = load i32, i32* %k, align 4
  %inc295 = add nsw i32 %114, 1
  store i32 %inc295, i32* %k, align 4
  br label %for.cond.285

for.end.296:                                      ; preds = %for.cond.285
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.end.296
  %115 = load i32, i32* %j, align 4
  %inc298 = add nsw i32 %115, 1
  store i32 %inc298, i32* %j, align 4
  br label %for.cond.282

for.end.299:                                      ; preds = %for.cond.282
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.end.299
  %116 = load i32, i32* %i, align 4
  %inc301 = add nsw i32 %116, 1
  store i32 %inc301, i32* %i, align 4
  br label %for.cond.279

for.end.302:                                      ; preds = %for.cond.279
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 10), align 4
  store i32 65, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 10), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.324, %for.end.302
  %117 = load i32, i32* %i, align 4
  %cmp304 = icmp sle i32 %117, 0
  br i1 %cmp304, label %for.body.305, label %for.end.326

for.body.305:                                     ; preds = %for.cond.303
  store i32 0, i32* %j, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.321, %for.body.305
  %118 = load i32, i32* %j, align 4
  %cmp307 = icmp sle i32 %118, 1
  br i1 %cmp307, label %for.body.308, label %for.end.323

for.body.308:                                     ; preds = %for.cond.306
  store i32 0, i32* %k, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.318, %for.body.308
  %119 = load i32, i32* %k, align 4
  %cmp310 = icmp sle i32 %119, 1
  br i1 %cmp310, label %for.body.311, label %for.end.320

for.body.311:                                     ; preds = %for.cond.309
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %k, align 4
  %mul312 = mul nsw i32 8, %122
  %add313 = add nsw i32 %121, %mul312
  %mul314 = mul nsw i32 8, %add313
  %add315 = add nsw i32 %120, %mul314
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 11), i32 0, i64 %idxprom316
  store i32 1, i32* %arrayidx317, align 4
  br label %for.inc.318

for.inc.318:                                      ; preds = %for.body.311
  %123 = load i32, i32* %k, align 4
  %inc319 = add nsw i32 %123, 1
  store i32 %inc319, i32* %k, align 4
  br label %for.cond.309

for.end.320:                                      ; preds = %for.cond.309
  br label %for.inc.321

for.inc.321:                                      ; preds = %for.end.320
  %124 = load i32, i32* %j, align 4
  %inc322 = add nsw i32 %124, 1
  store i32 %inc322, i32* %j, align 4
  br label %for.cond.306

for.end.323:                                      ; preds = %for.cond.306
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.end.323
  %125 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %125, 1
  store i32 %inc325, i32* %i, align 4
  br label %for.cond.303

for.end.326:                                      ; preds = %for.cond.303
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 11), align 4
  store i32 72, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 11), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.348, %for.end.326
  %126 = load i32, i32* %i, align 4
  %cmp328 = icmp sle i32 %126, 1
  br i1 %cmp328, label %for.body.329, label %for.end.350

for.body.329:                                     ; preds = %for.cond.327
  store i32 0, i32* %j, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.345, %for.body.329
  %127 = load i32, i32* %j, align 4
  %cmp331 = icmp sle i32 %127, 1
  br i1 %cmp331, label %for.body.332, label %for.end.347

for.body.332:                                     ; preds = %for.cond.330
  store i32 0, i32* %k, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.342, %for.body.332
  %128 = load i32, i32* %k, align 4
  %cmp334 = icmp sle i32 %128, 1
  br i1 %cmp334, label %for.body.335, label %for.end.344

for.body.335:                                     ; preds = %for.cond.333
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %j, align 4
  %131 = load i32, i32* %k, align 4
  %mul336 = mul nsw i32 8, %131
  %add337 = add nsw i32 %130, %mul336
  %mul338 = mul nsw i32 8, %add337
  %add339 = add nsw i32 %129, %mul338
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i32 0, i64 12), i32 0, i64 %idxprom340
  store i32 1, i32* %arrayidx341, align 4
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.335
  %132 = load i32, i32* %k, align 4
  %inc343 = add nsw i32 %132, 1
  store i32 %inc343, i32* %k, align 4
  br label %for.cond.333

for.end.344:                                      ; preds = %for.cond.333
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.end.344
  %133 = load i32, i32* %j, align 4
  %inc346 = add nsw i32 %133, 1
  store i32 %inc346, i32* %j, align 4
  br label %for.cond.330

for.end.347:                                      ; preds = %for.cond.330
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.end.347
  %134 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %134, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond.327

for.end.350:                                      ; preds = %for.cond.327
  store i32 3, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i32 0, i64 12), align 4
  store i32 73, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i32 0, i64 12), align 4
  store i32 13, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i32 0, i64 0), align 4
  store i32 3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i32 0, i64 1), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i32 0, i64 2), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i32 0, i64 3), align 4
  store i32 73, i32* %m, align 4
  store i32 0, i32* @kount, align 4
  %135 = load i32, i32* %m, align 4
  %call = call i32 @Fit(i32 0, i32 %135)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.350
  %136 = load i32, i32* %m, align 4
  %call351 = call i32 @Place(i32 0, i32 %136)
  store i32 %call351, i32* @n, align 4
  br label %if.end

if.else:                                          ; preds = %for.end.350
  %call352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %137 = load i32, i32* @n, align 4
  %call353 = call i32 @Trial(i32 %137)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.else.357, label %if.then.355

if.then.355:                                      ; preds = %if.end
  %call356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.362

if.else.357:                                      ; preds = %if.end
  %138 = load i32, i32* @kount, align 4
  %cmp358 = icmp ne i32 %138, 2005
  br i1 %cmp358, label %if.then.359, label %if.end.361

if.then.359:                                      ; preds = %if.else.357
  %call360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.359, %if.else.357
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.then.355
  %139 = load i32, i32* @n, align 4
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* @kount, align 4
  %call364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %140)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Puzzle()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
