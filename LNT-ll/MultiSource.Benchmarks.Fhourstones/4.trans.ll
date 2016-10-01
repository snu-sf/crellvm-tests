; ModuleID = './MultiSource.Benchmarks.Fhourstones/4.trans.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ht = common global i32* null, align 8
@he = common global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate %u bytes.\0A\00", align 1
@hits = common global i64 0, align 8
@posed = common global i64 0, align 8
@columns = external global [0 x i32], align 4
@lock = common global i32 0, align 4
@htindex = common global i32 0, align 4
@stride = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"store rate = %.3f\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%7d%c\00", align 1

; Function Attrs: nounwind uwtable
define void @trans_init() #0 {
entry:
  %call = call i32 (...) @play_init()
  %call1 = call noalias i8* @calloc(i64 1050011, i64 4) #4
  %0 = bitcast i8* %call1 to i32*
  store i32* %0, i32** @ht, align 8
  %call2 = call noalias i8* @calloc(i64 1050011, i64 1) #4
  store i8* %call2, i8** @he, align 8
  %1 = load i32*, i32** @ht, align 8
  %cmp = icmp eq i32* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** @he, align 8
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i64 5250055)
  call void @exit(i32 0) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  ret void
}

declare i32 @play_init(...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @emptyTT() #0 {
entry:
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %work = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1050011
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** @he, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %h, align 4
  %and = and i32 %conv, 31
  store i32 %and, i32* %work, align 4
  %cmp1 = icmp slt i32 %and, 31
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %h, align 4
  %5 = load i32, i32* %work, align 4
  %cmp3 = icmp slt i32 %5, 16
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32, i32* %work, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 4, %cond.false ]
  %sub = sub nsw i32 %4, %cond
  %conv5 = trunc i32 %sub to i8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8*, i8** @he, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* @hits, align 8
  store i64 0, i64* @posed, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define double @hitRate() #0 {
entry:
  %0 = load i64, i64* @posed, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* @hits, align 8
  %conv = sitofp i64 %1 to double
  %2 = load i64, i64* @posed, align 8
  %conv1 = sitofp i64 %2 to double
  %div = fdiv double %conv, %conv1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %cond.false ]
  ret double %cond
}

; Function Attrs: nounwind uwtable
define void @hash() #0 {
entry:
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %htemp = alloca i64, align 8
  %0 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 1), align 4
  %shl = shl i32 %0, 7
  %1 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 2), align 4
  %or = or i32 %shl, %1
  %shl1 = shl i32 %or, 7
  %2 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 3), align 4
  %or2 = or i32 %shl1, %2
  store i32 %or2, i32* %t1, align 4
  %3 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 7), align 4
  %shl3 = shl i32 %3, 7
  %4 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 6), align 4
  %or4 = or i32 %shl3, %4
  %shl5 = shl i32 %or4, 7
  %5 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 5), align 4
  %or6 = or i32 %shl5, %5
  store i32 %or6, i32* %t2, align 4
  %6 = load i32, i32* %t1, align 4
  %7 = load i32, i32* %t2, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %t1, align 4
  %shl7 = shl i32 %8, 7
  %9 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 4), align 4
  %or8 = or i32 %shl7, %9
  %conv = zext i32 %or8 to i64
  %shl9 = shl i64 %conv, 21
  %10 = load i32, i32* %t2, align 4
  %conv10 = zext i32 %10 to i64
  %or11 = or i64 %shl9, %conv10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %t2, align 4
  %shl12 = shl i32 %11, 7
  %12 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @columns, i32 0, i64 4), align 4
  %or13 = or i32 %shl12, %12
  %conv14 = zext i32 %or13 to i64
  %shl15 = shl i64 %conv14, 21
  %13 = load i32, i32* %t1, align 4
  %conv16 = zext i32 %13 to i64
  %or17 = or i64 %shl15, %conv16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or11, %cond.true ], [ %or17, %cond.false ]
  store i64 %cond, i64* %htemp, align 8
  %14 = load i64, i64* %htemp, align 8
  %shr = ashr i64 %14, 17
  %conv18 = trunc i64 %shr to i32
  store i32 %conv18, i32* @lock, align 4
  %15 = load i64, i64* %htemp, align 8
  %rem = srem i64 %15, 1050011
  %conv19 = trunc i64 %rem to i32
  store i32 %conv19, i32* @htindex, align 4
  %16 = load i32, i32* @lock, align 4
  %rem20 = urem i32 %16, 179
  %add = add i32 131072, %rem20
  store i32 %add, i32* @stride, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @transpose() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  call void @hash()
  %0 = load i32, i32* @htindex, align 4
  store i32 %0, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @ht, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* @lock, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i8*, i8** @he, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* @stride, align 4
  %10 = load i32, i32* %x, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %x, align 4
  %cmp4 = icmp sge i32 %add, 1050011
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %11, 1050011
  store i32 %sub, i32* %x, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -128, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @transput(i32 %score, i32 %work) #0 {
entry:
  %score.addr = alloca i32, align 4
  %work.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %work, i32* %work.addr, align 4
  %0 = load i32, i32* @htindex, align 4
  store i32 %0, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %work.addr, align 4
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** @he, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 31
  %cmp1 = icmp sgt i32 %2, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, i64* @hits, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* @hits, align 8
  %7 = load i32, i32* @lock, align 4
  %8 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32*, i32** @ht, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  store i32 %7, i32* %arrayidx4, align 4
  %10 = load i32, i32* %score.addr, align 4
  %shl = shl i32 %10, 5
  %11 = load i32, i32* %work.addr, align 4
  %or = or i32 %shl, %11
  %conv5 = trunc i32 %or to i8
  %12 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i8*, i8** @he, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  %14 = load i32, i32* @stride, align 4
  %15 = load i32, i32* %x, align 4
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %x, align 4
  %cmp8 = icmp sge i32 %add, 1050011
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %16 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %16, 1050011
  store i32 %sub, i32* %x, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @transrestore(i32 %score, i32 %work) #0 {
entry:
  %score.addr = alloca i32, align 4
  %work.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %work, i32* %work.addr, align 4
  %0 = load i32, i32* %work.addr, align 4
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 31, i32* %work.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @posed, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* @posed, align 8
  call void @hash()
  %2 = load i32, i32* @htindex, align 4
  store i32 %2, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %3, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @ht, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* @lock, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %for.body
  %8 = load i64, i64* @hits, align 8
  %inc4 = add nsw i64 %8, 1
  store i64 %inc4, i64* @hits, align 8
  %9 = load i32, i32* %score.addr, align 4
  %shl = shl i32 %9, 5
  %10 = load i32, i32* %work.addr, align 4
  %or = or i32 %shl, %10
  %conv = trunc i32 %or to i8
  %11 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i8*, i8** @he, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5
  store i8 %conv, i8* %arrayidx6, align 1
  br label %return

if.end.7:                                         ; preds = %for.body
  %13 = load i32, i32* @stride, align 4
  %14 = load i32, i32* %x, align 4
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %x, align 4
  %cmp8 = icmp sge i32 %add, 1050011
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %15 = load i32, i32* %x, align 4
  %sub = sub nsw i32 %15, 1050011
  store i32 %sub, i32* %x, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %score.addr, align 4
  %18 = load i32, i32* %work.addr, align 4
  call void @transput(i32 %17, i32 %18)
  br label %return

return:                                           ; preds = %for.end, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @transtore(i32 %score, i32 %work) #0 {
entry:
  %score.addr = alloca i32, align 4
  %work.addr = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  store i32 %work, i32* %work.addr, align 4
  %0 = load i32, i32* %work.addr, align 4
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 31, i32* %work.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @posed, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* @posed, align 8
  call void @hash()
  %2 = load i32, i32* %score.addr, align 4
  %3 = load i32, i32* %work.addr, align 4
  call void @transput(i32 %2, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @htstat() #0 {
entry:
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  %works = alloca [32 x i32], align 16
  %typecnt = alloca [8 x i32], align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %works, i32 0, i64 %idxprom
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

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 8
  br i1 %cmp2, label %for.body.3, label %for.end.8

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %5 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.29, %for.end.8
  %6 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %6, 1050011
  br i1 %cmp10, label %for.body.11, label %for.end.31

for.body.11:                                      ; preds = %for.cond.9
  %7 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %8 = load i8*, i8** @he, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 %idxprom12
  %9 = load i8, i8* %arrayidx13, align 1
  %conv = sext i8 %9 to i32
  %and = and i32 %conv, 31
  %idxprom14 = sext i32 %and to i64
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %works, i32 0, i64 %idxprom14
  %10 = load i32, i32* %arrayidx15, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, i32* %arrayidx15, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %12 = load i8*, i8** @he, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 %idxprom17
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %and20 = and i32 %conv19, 31
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  %14 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %15 = load i8*, i8** @he, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %15, i64 %idxprom23
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %16 to i32
  %shr = ashr i32 %conv25, 5
  %add = add nsw i32 4, %shr
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom26
  %17 = load i32, i32* %arrayidx27, align 4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, i32* %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.11
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %18, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.9

for.end.31:                                       ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  store i32 0, i32* %total, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.39, %for.end.31
  %19 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %19, 8
  br i1 %cmp33, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.32
  %20 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 %idxprom36
  %21 = load i32, i32* %arrayidx37, align 4
  %22 = load i32, i32* %total, align 4
  %add38 = add nsw i32 %22, %21
  store i32 %add38, i32* %total, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.35
  %23 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %23, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.32

for.end.41:                                       ; preds = %for.cond.32
  %24 = load i32, i32* %total, align 4
  %cmp42 = icmp sgt i32 %24, 0
  br i1 %cmp42, label %if.then.44, label %if.end.66

if.then.44:                                       ; preds = %for.end.41
  %call = call double @hitRate()
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), double %call)
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 2
  %25 = load i32, i32* %arrayidx46, align 4
  %conv47 = sitofp i32 %25 to double
  %26 = load i32, i32* %total, align 4
  %conv48 = sitofp i32 %26 to double
  %div = fdiv double %conv47, %conv48
  %arrayidx49 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 3
  %27 = load i32, i32* %arrayidx49, align 4
  %conv50 = sitofp i32 %27 to double
  %28 = load i32, i32* %total, align 4
  %conv51 = sitofp i32 %28 to double
  %div52 = fdiv double %conv50, %conv51
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 4
  %29 = load i32, i32* %arrayidx53, align 4
  %conv54 = sitofp i32 %29 to double
  %30 = load i32, i32* %total, align 4
  %conv55 = sitofp i32 %30 to double
  %div56 = fdiv double %conv54, %conv55
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 5
  %31 = load i32, i32* %arrayidx57, align 4
  %conv58 = sitofp i32 %31 to double
  %32 = load i32, i32* %total, align 4
  %conv59 = sitofp i32 %32 to double
  %div60 = fdiv double %conv58, %conv59
  %arrayidx61 = getelementptr inbounds [8 x i32], [8 x i32]* %typecnt, i32 0, i64 6
  %33 = load i32, i32* %arrayidx61, align 4
  %conv62 = sitofp i32 %33 to double
  %34 = load i32, i32* %total, align 4
  %conv63 = sitofp i32 %34 to double
  %div64 = fdiv double %conv62, %conv63
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0), double %div, double %div52, double %div56, double %div60, double %div64)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.44, %for.end.41
  store i32 0, i32* %i, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.77, %if.end.66
  %35 = load i32, i32* %i, align 4
  %cmp68 = icmp slt i32 %35, 32
  br i1 %cmp68, label %for.body.70, label %for.end.79

for.body.70:                                      ; preds = %for.cond.67
  %36 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %36 to i64
  %arrayidx72 = getelementptr inbounds [32 x i32], [32 x i32]* %works, i32 0, i64 %idxprom71
  %37 = load i32, i32* %arrayidx72, align 4
  %38 = load i32, i32* %i, align 4
  %and73 = and i32 %38, 7
  %cmp74 = icmp eq i32 %and73, 7
  %cond = select i1 %cmp74, i32 10, i32 9
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 %37, i32 %cond)
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.70
  %39 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %39, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.67

for.end.79:                                       ; preds = %for.cond.67
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
