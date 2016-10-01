; ModuleID = './MultiSource.Benchmarks.MallocBench/40.espresso.set.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@bit_count = external global [256 x i32], align 16
@.str = private unnamed_addr constant [26 x i8] c"sf_join: sf_size mismatch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sf_append: sf_size mismatch\00", align 1
@set_family_garbage = internal global %struct.set_family* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"A[%d] = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[%4d] %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Error reading set family\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Error reading set family (at end of line)\00", align 1
@s1 = internal global [120 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @bit_index(i32 %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %a.addr, align 4
  %and = and i32 %1, 1
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %a.addr, align 4
  %shr = lshr i32 %2, 1
  store i32 %shr, i32* %a.addr, align 4
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @set_ord(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 0, i32* %sum, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  store i32 %5, i32* %val, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %val, align 4
  %and3 = and i32 %6, 255
  %idxprom4 = zext i32 %and3 to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load i32, i32* %val, align 4
  %shr = lshr i32 %8, 8
  %and6 = and i32 %shr, 255
  %idxprom7 = zext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %add = add nsw i32 %7, %9
  %10 = load i32, i32* %val, align 4
  %shr9 = lshr i32 %10, 16
  %and10 = and i32 %shr9, 255
  %idxprom11 = zext i32 %and10 to i64
  %arrayidx12 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %add, %11
  %12 = load i32, i32* %val, align 4
  %shr14 = lshr i32 %12, 24
  %and15 = and i32 %shr14, 255
  %idxprom16 = zext i32 %and15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %add13, %13
  %14 = load i32, i32* %sum, align 4
  %add19 = add nsw i32 %14, %add18
  store i32 %add19, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %sum, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @set_dist(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 0, i32* %sum, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load i32*, i32** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %5, %8
  store i32 %and4, i32* %val, align 4
  %cmp5 = icmp ne i32 %and4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %val, align 4
  %and6 = and i32 %9, 255
  %idxprom7 = zext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %11 = load i32, i32* %val, align 4
  %shr = lshr i32 %11, 8
  %and9 = and i32 %shr, 255
  %idxprom10 = zext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %10, %12
  %13 = load i32, i32* %val, align 4
  %shr12 = lshr i32 %13, 16
  %and13 = and i32 %shr12, 255
  %idxprom14 = zext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom14
  %14 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %add, %14
  %15 = load i32, i32* %val, align 4
  %shr17 = lshr i32 %15, 24
  %and18 = and i32 %shr17, 255
  %idxprom19 = zext i32 %and18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], [256 x i32]* @bit_count, i32 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %add21 = add nsw i32 %add16, %16
  %17 = load i32, i32* %sum, align 4
  %add22 = add nsw i32 %17, %add21
  store i32 %add22, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %sum, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32* @set_clear(i32* %r, i32 %size) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sle i32 %0, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %r.addr, align 8
  store i32 %2, i32* %3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  %cmp1 = icmp sgt i32 %dec, 0
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i32*, i32** %r.addr, align 8
  ret i32* %7
}

; Function Attrs: nounwind uwtable
define i32* @set_fill(i32* %r, i32 %size) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sle i32 %0, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %r.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %6, 32
  %7 = load i32, i32* %size.addr, align 4
  %sub1 = sub nsw i32 %mul, %7
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %shr4 = lshr i32 %10, %sub1
  store i32 %shr4, i32* %arrayidx3, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  %cmp5 = icmp sgt i32 %dec, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** %r.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  store i32 -1, i32* %arrayidx7, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32*, i32** %r.addr, align 8
  ret i32* %14
}

; Function Attrs: nounwind uwtable
define i32* @set_copy(i32* %r, i32* %a) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  store i32 %4, i32* %arrayidx3, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32*, i32** %r.addr, align 8
  ret i32* %8
}

; Function Attrs: nounwind uwtable
define i32* @set_and(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %and7, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32*, i32** %r.addr, align 8
  ret i32* %16
}

; Function Attrs: nounwind uwtable
define i32* @set_or(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %or7 = or i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %or7, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32*, i32** %r.addr, align 8
  ret i32* %16
}

; Function Attrs: nounwind uwtable
define i32* @set_diff(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %neg = xor i32 %12, -1
  %and7 = and i32 %9, %neg
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %and7, i32* %arrayidx9, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32*, i32** %r.addr, align 8
  ret i32* %16
}

; Function Attrs: nounwind uwtable
define i32* @set_xor(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %xor = xor i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  store i32 %xor, i32* %arrayidx8, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %16 = load i32*, i32** %r.addr, align 8
  ret i32* %16
}

; Function Attrs: nounwind uwtable
define i32* @set_merge(i32* %r, i32* %a, i32* %b, i32* %mask) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %mask.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %mask, i32** %mask.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %mask.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load i32*, i32** %mask.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %neg = xor i32 %18, -1
  %and12 = and i32 %15, %neg
  %or13 = or i32 %and7, %and12
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32*, i32** %r.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  store i32 %or13, i32* %arrayidx15, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load i32*, i32** %r.addr, align 8
  ret i32* %22
}

; Function Attrs: nounwind uwtable
define i32 @set_andp(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  store i32 0, i32* %x, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %and7 = and i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %and7, i32* %arrayidx9, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32*, i32** %r.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32, i32* %x, align 4
  %or12 = or i32 %18, %17
  store i32 %or12, i32* %x, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %x, align 4
  %cmp13 = icmp ne i32 %20, 0
  %conv = zext i1 %cmp13 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @set_orp(i32* %r, i32* %a, i32* %b) #0 {
entry:
  %r.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  store i32 0, i32* %x, align 4
  %2 = load i32*, i32** %r.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %and2 = and i32 %3, -1024
  store i32 %and2, i32* %arrayidx1, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %r.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %or = or i32 %6, %4
  store i32 %or, i32* %arrayidx3, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i32*, i32** %b.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %or7 = or i32 %9, %12
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load i32*, i32** %r.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %or7, i32* %arrayidx9, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i32*, i32** %r.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32, i32* %x, align 4
  %or12 = or i32 %18, %17
  store i32 %or12, i32* %x, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %x, align 4
  %cmp13 = icmp ne i32 %20, 0
  %conv = zext i1 %cmp13 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @setp_empty(i32* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @setp_full(i32* %a, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %test = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  store i32 -1, i32* %test, align 4
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 32
  %3 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %mul, %3
  %4 = load i32, i32* %test, align 4
  %shr = lshr i32 %4, %sub
  store i32 %shr, i32* %test, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx1, align 4
  %8 = load i32, i32* %test, align 4
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp ne i32 %12, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.6, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @setp_equal(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %cmp = icmp ne i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %cmp4 = icmp sgt i32 %dec, 0
  br i1 %cmp4, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @setp_disjoint(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %and4 = and i32 %4, %7
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @setp_implies(i32* %a, i32* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i32*, i32** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %neg = xor i32 %7, -1
  %and4 = and i32 %4, %neg
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32* @sf_or(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %or = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size1, align 4
  %sub = sub nsw i32 %3, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size3 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size3, align 4
  %call4 = call i32* @set_clear(i32* %4, i32 %6)
  store i32* %call4, i32** %or, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  store i32* %8, i32** %p, align 8
  %9 = load i32*, i32** %p, align 8
  %10 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count, align 4
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 0
  %13 = load i32, i32* %wsize, align 4
  %mul5 = mul nsw i32 %11, %13
  %idx.ext = sext i32 %mul5 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32*, i32** %p, align 8
  %15 = load i32*, i32** %last, align 8
  %cmp6 = icmp ult i32* %14, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32*, i32** %or, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 0
  %17 = load i32, i32* %arrayidx, align 4
  %and = and i32 %17, 1023
  store i32 %and, i32* %i_, align 4
  %18 = load i32*, i32** %or, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx8, align 4
  %and9 = and i32 %19, -1024
  store i32 %and9, i32* %arrayidx8, align 4
  %20 = load i32, i32* %i_, align 4
  %21 = load i32*, i32** %or, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx10, align 4
  %or11 = or i32 %22, %20
  store i32 %or11, i32* %arrayidx10, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %23 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load i32*, i32** %or, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %24, i64 %idxprom
  %25 = load i32, i32* %arrayidx12, align 4
  %26 = load i32, i32* %i_, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load i32*, i32** %p, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  %or15 = or i32 %25, %28
  %29 = load i32, i32* %i_, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load i32*, i32** %or, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %30, i64 %idxprom16
  store i32 %or15, i32* %arrayidx17, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %31 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i_, align 4
  %cmp18 = icmp sgt i32 %dec, 0
  br i1 %cmp18, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %32 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize20 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize20, align 4
  %34 = load i32*, i32** %p, align 8
  %idx.ext21 = sext i32 %33 to i64
  %add.ptr22 = getelementptr inbounds i32, i32* %34, i64 %idx.ext21
  store i32* %add.ptr22, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32*, i32** %or, align 8
  ret i32* %35
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32* @sf_and(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %and = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size1, align 4
  %sub = sub nsw i32 %3, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size3 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size3, align 4
  %call4 = call i32* @set_clear(i32* %4, i32 %6)
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size5 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 1
  %8 = load i32, i32* %sf_size5, align 4
  %call6 = call i32* @set_fill(i32* %call4, i32 %8)
  store i32* %call6, i32** %and, align 8
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count, align 4
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize, align 4
  %mul7 = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul7 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %last, align 8
  %cmp8 = icmp ult i32* %16, %17
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32*, i32** %and, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %and10 = and i32 %19, 1023
  store i32 %and10, i32* %i_, align 4
  %20 = load i32*, i32** %and, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx11, align 4
  %and12 = and i32 %21, -1024
  store i32 %and12, i32* %arrayidx11, align 4
  %22 = load i32, i32* %i_, align 4
  %23 = load i32*, i32** %and, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 0
  %24 = load i32, i32* %arrayidx13, align 4
  %or = or i32 %24, %22
  store i32 %or, i32* %arrayidx13, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %25 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32*, i32** %and, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %26, i64 %idxprom
  %27 = load i32, i32* %arrayidx14, align 4
  %28 = load i32, i32* %i_, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load i32*, i32** %p, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %29, i64 %idxprom15
  %30 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 %27, %30
  %31 = load i32, i32* %i_, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load i32*, i32** %and, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %32, i64 %idxprom18
  store i32 %and17, i32* %arrayidx19, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %33 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i_, align 4
  %cmp20 = icmp sgt i32 %dec, 0
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize22 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %35 = load i32, i32* %wsize22, align 4
  %36 = load i32*, i32** %p, align 8
  %idx.ext23 = sext i32 %35 to i64
  %add.ptr24 = getelementptr inbounds i32, i32* %36, i64 %idx.ext23
  store i32* %add.ptr24, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32*, i32** %and, align 8
  ret i32* %37
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_active(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  %2 = load i32*, i32** %p, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %4, %6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %2, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32*, i32** %p, align 8
  %8 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx, align 4
  %or = or i32 %10, 8192
  store i32 %or, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize1 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize1, align 4
  %13 = load i32*, i32** %p, align 8
  %idx.ext2 = sext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %13, i64 %idx.ext2
  store i32* %add.ptr3, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count4, align 4
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 4
  store i32 %15, i32* %active_count, align 4
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %17
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_inactive(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %pdest, align 8
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 5
  %3 = load i32*, i32** %data1, align 8
  store i32* %3, i32** %p, align 8
  %4 = load i32*, i32** %p, align 8
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %6 = load i32, i32* %count, align 4
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %6, %8
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32*, i32** %p, align 8
  %10 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32, i32* %arrayidx, align 4
  %and = and i32 %12, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load i32*, i32** %pdest, align 8
  %14 = load i32*, i32** %p, align 8
  %cmp2 = icmp ne i32* %13, %14
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %15 = load i32*, i32** %p, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 %16, 1023
  store i32 %and5, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.3
  %17 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %p, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx6, align 4
  %20 = load i32, i32* %i_, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load i32*, i32** %pdest, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %21, i64 %idxprom7
  store i32 %19, i32* %arrayidx8, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %22 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i_, align 4
  %cmp9 = icmp sge i32 %dec, 0
  br i1 %cmp9, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %23 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize10 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %24 = load i32, i32* %wsize10, align 4
  %25 = load i32*, i32** %pdest, align 8
  %idx.ext11 = sext i32 %24 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %25, i64 %idx.ext11
  store i32* %add.ptr12, i32** %pdest, align 8
  br label %if.end.15

if.else:                                          ; preds = %for.body
  %26 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count13 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 3
  %27 = load i32, i32* %count13, align 4
  %dec14 = add nsw i32 %27, -1
  store i32 %dec14, i32* %count13, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %28 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize16 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 0
  %29 = load i32, i32* %wsize16, align 4
  %30 = load i32*, i32** %p, align 8
  %idx.ext17 = sext i32 %29 to i64
  %add.ptr18 = getelementptr inbounds i32, i32* %30, i64 %idx.ext17
  store i32* %add.ptr18, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %31
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_copy(%struct.set_family* %R, %struct.set_family* %A) #0 {
entry:
  %R.addr = alloca %struct.set_family*, align 8
  %A.addr = alloca %struct.set_family*, align 8
  store %struct.set_family* %R, %struct.set_family** %R.addr, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %2 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  store i32 %1, i32* %sf_size1, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 0
  %4 = load i32, i32* %wsize, align 4
  %5 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  store i32 %4, i32* %wsize2, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count, align 4
  %8 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  store i32 %7, i32* %count3, align 4
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 4
  %10 = load i32, i32* %active_count, align 4
  %11 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %active_count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 4
  store i32 %10, i32* %active_count4, align 4
  %12 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 5
  %13 = load i32*, i32** %data, align 8
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data5 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %15 = load i32*, i32** %data5, align 8
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize6, align 4
  %conv = sext i32 %17 to i64
  %18 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count7, align 4
  %conv8 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv, %conv8
  %call = call i32 @intcpy(i32* %13, i32* %15, i64 %mul)
  %20 = load %struct.set_family*, %struct.set_family** %R.addr, align 8
  ret %struct.set_family* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @intcpy(i32* %d, i32* %s, i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca i32*, align 8
  %s.addr = alloca i32*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i32* %d, i32** %d.addr, align 8
  store i32* %s, i32** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %s.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %d.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr2, i32** %d.addr, align 8
  store i32 %3, i32* %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_join(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %R = alloca %struct.set_family*, align 8
  %asize = alloca i64, align 8
  %bsize = alloca i64, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 0
  %3 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %asize, align 8
  %4 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count1, align 4
  %6 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize2, align 4
  %mul3 = mul nsw i32 %5, %7
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, i64* %bsize, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 1
  %9 = load i32, i32* %sf_size, align 4
  %10 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %sf_size5 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 1
  %11 = load i32, i32* %sf_size5, align 4
  %cmp = icmp ne i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count7, align 4
  %14 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count8, align 4
  %add = add nsw i32 %13, %15
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size9 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 1
  %17 = load i32, i32* %sf_size9, align 4
  %call = call %struct.set_family* @sf_new(i32 %add, i32 %17)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %18 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count10, align 4
  %20 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count11 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 3
  %21 = load i32, i32* %count11, align 4
  %add12 = add nsw i32 %19, %21
  %22 = load %struct.set_family*, %struct.set_family** %R, align 8
  %count13 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  store i32 %add12, i32* %count13, align 4
  %23 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 4
  %24 = load i32, i32* %active_count, align 4
  %25 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %active_count14 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 4
  %26 = load i32, i32* %active_count14, align 4
  %add15 = add nsw i32 %24, %26
  %27 = load %struct.set_family*, %struct.set_family** %R, align 8
  %active_count16 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 4
  store i32 %add15, i32* %active_count16, align 4
  %28 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data, align 8
  %30 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data17 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 5
  %31 = load i32*, i32** %data17, align 8
  %32 = load i64, i64* %asize, align 8
  %call18 = call i32 @intcpy(i32* %29, i32* %31, i64 %32)
  %33 = load %struct.set_family*, %struct.set_family** %R, align 8
  %data19 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 5
  %34 = load i32*, i32** %data19, align 8
  %35 = load i64, i64* %asize, align 8
  %add.ptr = getelementptr inbounds i32, i32* %34, i64 %35
  %36 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data20 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 5
  %37 = load i32*, i32** %data20, align 8
  %38 = load i64, i64* %bsize, align 8
  %call21 = call i32 @intcpy(i32* %add.ptr, i32* %37, i64 %38)
  %39 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %39
}

declare void @fatal(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_append(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %asize = alloca i64, align 8
  %bsize = alloca i64, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 0
  %3 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %1, %3
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %asize, align 8
  %4 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count1, align 4
  %6 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize2, align 4
  %mul3 = mul nsw i32 %5, %7
  %conv4 = sext i32 %mul3 to i64
  store i64 %conv4, i64* %bsize, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 1
  %9 = load i32, i32* %sf_size, align 4
  %10 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %sf_size5 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 1
  %11 = load i32, i32* %sf_size5, align 4
  %cmp = icmp ne i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count7, align 4
  %14 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count8 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %15 = load i32, i32* %count8, align 4
  %add = add nsw i32 %13, %15
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 2
  store i32 %add, i32* %capacity, align 4
  %17 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 5
  %18 = load i32*, i32** %data, align 8
  %tobool = icmp ne i32* %18, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data9 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 5
  %20 = load i32*, i32** %data9, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity10 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 2
  %23 = load i32, i32* %capacity10, align 4
  %conv11 = sext i32 %23 to i64
  %24 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %25 = load i32, i32* %wsize12, align 4
  %conv13 = sext i32 %25 to i64
  %mul14 = mul nsw i64 %conv11, %conv13
  %mul15 = mul i64 4, %mul14
  %call = call i8* @realloc(i8* %21, i64 %mul15)
  %26 = bitcast i8* %call to i32*
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %27 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity16 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 2
  %28 = load i32, i32* %capacity16, align 4
  %conv17 = sext i32 %28 to i64
  %29 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 0
  %30 = load i32, i32* %wsize18, align 4
  %conv19 = sext i32 %30 to i64
  %mul20 = mul nsw i64 %conv17, %conv19
  %mul21 = mul i64 4, %mul20
  %call22 = call i8* @malloc(i64 %mul21)
  %31 = bitcast i8* %call22 to i32*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %26, %cond.true ], [ %31, %cond.false ]
  %32 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data23 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 5
  store i32* %cond, i32** %data23, align 8
  %33 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data24 = getelementptr inbounds %struct.set_family, %struct.set_family* %33, i32 0, i32 5
  %34 = load i32*, i32** %data24, align 8
  %35 = load i64, i64* %asize, align 8
  %add.ptr = getelementptr inbounds i32, i32* %34, i64 %35
  %36 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data25 = getelementptr inbounds %struct.set_family, %struct.set_family* %36, i32 0, i32 5
  %37 = load i32*, i32** %data25, align 8
  %38 = load i64, i64* %bsize, align 8
  %call26 = call i32 @intcpy(i32* %add.ptr, i32* %37, i64 %38)
  %39 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count27 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 3
  %40 = load i32, i32* %count27, align 4
  %41 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count28 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 3
  %42 = load i32, i32* %count28, align 4
  %add29 = add nsw i32 %42, %40
  store i32 %add29, i32* %count28, align 4
  %43 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 4
  %44 = load i32, i32* %active_count, align 4
  %45 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %active_count30 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 4
  %46 = load i32, i32* %active_count30, align 4
  %add31 = add nsw i32 %46, %44
  store i32 %add31, i32* %active_count30, align 4
  %47 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  call void @sf_free(%struct.set_family* %47)
  %48 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %48
}

declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_new(i32 %num, i32 %size) #0 {
entry:
  %num.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %A = alloca %struct.set_family*, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** @set_family_garbage, align 8
  %cmp = icmp eq %struct.set_family* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @malloc(i64 40)
  %1 = bitcast i8* %call to %struct.set_family*
  store %struct.set_family* %1, %struct.set_family** %A, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** @set_family_garbage, align 8
  store %struct.set_family* %2, %struct.set_family** %A, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A, align 8
  %next = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 6
  %4 = load %struct.set_family*, %struct.set_family** %next, align 8
  store %struct.set_family* %4, %struct.set_family** @set_family_garbage, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %size.addr, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 1
  store i32 %5, i32* %sf_size, align 4
  %7 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp sle i32 %7, 32
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %8, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %9 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  store i32 %cond, i32* %wsize, align 4
  %10 = load i32, i32* %num.addr, align 4
  %11 = load %struct.set_family*, %struct.set_family** %A, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 2
  store i32 %10, i32* %capacity, align 4
  %12 = load %struct.set_family*, %struct.set_family** %A, align 8
  %capacity3 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 2
  %13 = load i32, i32* %capacity3, align 4
  %conv = sext i32 %13 to i64
  %14 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize4, align 4
  %conv5 = sext i32 %15 to i64
  %mul = mul nsw i64 %conv, %conv5
  %mul6 = mul i64 4, %mul
  %call7 = call i8* @malloc(i64 %mul6)
  %16 = bitcast i8* %call7 to i32*
  %17 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 5
  store i32* %16, i32** %data, align 8
  %18 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  store i32 0, i32* %count, align 4
  %19 = load %struct.set_family*, %struct.set_family** %A, align 8
  %active_count = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 4
  store i32 0, i32* %active_count, align 4
  %20 = load %struct.set_family*, %struct.set_family** %A, align 8
  ret %struct.set_family* %20
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_save(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size, align 4
  %call = call %struct.set_family* @sf_new(i32 %1, i32 %3)
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %call1 = call %struct.set_family* @sf_copy(%struct.set_family* %call, %struct.set_family* %4)
  ret %struct.set_family* %call1
}

; Function Attrs: nounwind uwtable
define void @sf_free(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 5
  %3 = load i32*, i32** %data1, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4)
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data2 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  store i32* null, i32** %data2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.set_family*, %struct.set_family** @set_family_garbage, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %next = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 6
  store %struct.set_family* %6, %struct.set_family** %next, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %8, %struct.set_family** @set_family_garbage, align 8
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @sf_cleanup() #0 {
entry:
  %p = alloca %struct.set_family*, align 8
  %pnext = alloca %struct.set_family*, align 8
  %0 = load %struct.set_family*, %struct.set_family** @set_family_garbage, align 8
  store %struct.set_family* %0, %struct.set_family** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.set_family*, %struct.set_family** %p, align 8
  %cmp = icmp ne %struct.set_family* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.set_family*, %struct.set_family** %p, align 8
  %next = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 6
  %3 = load %struct.set_family*, %struct.set_family** %next, align 8
  store %struct.set_family* %3, %struct.set_family** %pnext, align 8
  %4 = load %struct.set_family*, %struct.set_family** %p, align 8
  %tobool = icmp ne %struct.set_family* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.set_family*, %struct.set_family** %p, align 8
  %6 = bitcast %struct.set_family* %5 to i8*
  call void @free(i8* %6)
  store %struct.set_family* null, %struct.set_family** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load %struct.set_family*, %struct.set_family** %pnext, align 8
  store %struct.set_family* %7, %struct.set_family** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.set_family* null, %struct.set_family** @set_family_garbage, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_addset(%struct.set_family* %A, i32* %s) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %s.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %s, i32** %s.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 2
  %3 = load i32, i32* %capacity, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 2
  %5 = load i32, i32* %capacity1, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity2 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 2
  %7 = load i32, i32* %capacity2, align 4
  %div = sdiv i32 %7, 2
  %add = add nsw i32 %5, %div
  %add3 = add nsw i32 %add, 1
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity4 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 2
  store i32 %add3, i32* %capacity4, align 4
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  %tobool = icmp ne i32* %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data5 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 5
  %12 = load i32*, i32** %data5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity6 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 2
  %15 = load i32, i32* %capacity6, align 4
  %conv = sext i32 %15 to i64
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize, align 4
  %conv7 = sext i32 %17 to i64
  %mul = mul nsw i64 %conv, %conv7
  %mul8 = mul i64 4, %mul
  %call = call i8* @realloc(i8* %13, i64 %mul8)
  %18 = bitcast i8* %call to i32*
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %capacity9 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 2
  %20 = load i32, i32* %capacity9, align 4
  %conv10 = sext i32 %20 to i64
  %21 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize11 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize11, align 4
  %conv12 = sext i32 %22 to i64
  %mul13 = mul nsw i64 %conv10, %conv12
  %mul14 = mul i64 4, %mul13
  %call15 = call i8* @malloc(i64 %mul14)
  %23 = bitcast i8* %call15 to i32*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %18, %cond.true ], [ %23, %cond.false ]
  %24 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data16 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 5
  store i32* %cond, i32** %data16, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data17 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data17, align 8
  %27 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize18 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize18, align 4
  %29 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count19 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 3
  %30 = load i32, i32* %count19, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count19, align 4
  %mul20 = mul nsw i32 %28, %30
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i32, i32* %26, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %31 = load i32*, i32** %s.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx, align 4
  %and = and i32 %32, 1023
  store i32 %and, i32* %i_, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %33 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %33 to i64
  %34 = load i32*, i32** %s.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %34, i64 %idxprom
  %35 = load i32, i32* %arrayidx21, align 4
  %36 = load i32, i32* %i_, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load i32*, i32** %p, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %37, i64 %idxprom22
  store i32 %35, i32* %arrayidx23, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %38 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i_, align 4
  %cmp24 = icmp sge i32 %dec, 0
  br i1 %cmp24, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  ret %struct.set_family* %39
}

; Function Attrs: nounwind uwtable
define void @sf_delset(%struct.set_family* %A, i32 %i) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %i.addr = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 0
  %3 = load i32, i32* %wsize, align 4
  %4 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %3, %4
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.ext
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data1, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize2, align 4
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %count, align 4
  %mul3 = mul nsw i32 %8, %dec
  %idx.ext4 = sext i32 %mul3 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %6, i64 %idx.ext4
  %call = call i32* @set_copy(i32* %add.ptr, i32* %add.ptr5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sf_print(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32*, i32** %p, align 8
  %call = call i8* @ps1(i32* %6)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 %5, i8* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %9 = load i32*, i32** %p, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @sf_bm_print(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 5
  %1 = load i32*, i32** %data, align 8
  store i32* %1, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32*, i32** %p, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 1
  %8 = load i32, i32* %sf_size, align 4
  %call = call i8* @pbv1(i32* %6, i32 %8)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 %5, i8* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %11 = load i32*, i32** %p, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @sf_write(%struct._IO_FILE* %fp, %struct.set_family* %A) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %2, i32 %4)
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count1, align 4
  %10 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32*, i32** %p, align 8
  call void @set_write(%struct._IO_FILE* %14, i32* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize2 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize2, align 4
  %18 = load i32*, i32** %p, align 8
  %idx.ext3 = sext i32 %17 to i64
  %add.ptr4 = getelementptr inbounds i32, i32* %18, i64 %idx.ext3
  store i32* %add.ptr4, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %19)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_read(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32* %i, i32* %j)
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %call1 = call %struct.set_family* @sf_new(i32 %1, i32 %2)
  store %struct.set_family* %call1, %struct.set_family** %A, align 8
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  store i32 %3, i32* %count, align 4
  %5 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count2, align 4
  %10 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %12, %13
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %15 = load i32*, i32** %p, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* %15)
  store i32 1, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %j, align 4
  %17 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 0
  %18 = load i32, i32* %arrayidx, align 4
  %and = and i32 %18, 1023
  %cmp5 = icmp ule i32 %16, %and
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load i32*, i32** %p, align 8
  %21 = load i32, i32* %j, align 4
  %idx.ext7 = sext i32 %21 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %20, i64 %idx.ext7
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32* %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %23 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize11 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %24 = load i32, i32* %wsize11, align 4
  %25 = load i32*, i32** %p, align 8
  %idx.ext12 = sext i32 %24 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %25, i64 %idx.ext12
  store i32* %add.ptr13, i32** %p, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %26 = load %struct.set_family*, %struct.set_family** %A, align 8
  ret %struct.set_family* %26
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @set_write(%struct._IO_FILE* %fp, i32* %a) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %a.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx1, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %7)
  %8 = load i32, i32* %j, align 4
  %add = add nsw i32 %8, 1
  %rem = srem i32 %add, 8
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %n, align 4
  %cmp3 = icmp ne i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_bm_read(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %pdest = alloca i32*, align 8
  %A = alloca %struct.set_family*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32* %rows, i32* %cols)
  %1 = load i32, i32* %rows, align 4
  %2 = load i32, i32* %cols, align 4
  %call1 = call %struct.set_family* @sf_new(i32 %1, i32 %2)
  store %struct.set_family* %call1, %struct.set_family** %A, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %rows, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %5 = load %struct.set_family*, %struct.set_family** %A, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  %7 = load %struct.set_family*, %struct.set_family** %A, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 0
  %8 = load i32, i32* %wsize, align 4
  %9 = load %struct.set_family*, %struct.set_family** %A, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  %mul = mul nsw i32 %8, %10
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %6, i64 %idx.ext
  store i32* %add.ptr, i32** %pdest, align 8
  %11 = load i32*, i32** %pdest, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 1
  %13 = load i32, i32* %sf_size, align 4
  %call2 = call i32* @set_clear(i32* %11, i32 %13)
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %cols, align 4
  %cmp4 = icmp slt i32 %14, %15
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  switch i32 %call6, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %for.body.5
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body.5
  %17 = load i32, i32* %j, align 4
  %and = and i32 %17, 31
  %shl = shl i32 1, %and
  %18 = load i32, i32* %j, align 4
  %shr = ashr i32 %18, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %19 = load i32*, i32** %pdest, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  %or = or i32 %20, %shl
  store i32 %or, i32* %arrayidx, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.5
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %21 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %21, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %22)
  %cmp10 = icmp ne i32 %call9, 10
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %24 = load %struct.set_family*, %struct.set_family** %A, align 8
  ret %struct.set_family* %24
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i8* @ps1(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %l = alloca i32, align 4
  %len = alloca i32, align 4
  %n = alloca i32, align 4
  %temp = alloca [20 x i8], align 16
  %first = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  %mul = mul i32 32, %and
  store i32 %mul, i32* %n, align 4
  store i32 1, i32* %first, align 4
  %2 = load i32, i32* %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %len, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom
  store i8 91, i8* %arrayidx1, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %shr = ashr i32 %5, 5
  %add = add nsw i32 %shr, 1
  %idxprom2 = sext i32 %add to i64
  %6 = load i32*, i32** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %8 = load i32, i32* %i, align 4
  %and4 = and i32 %8, 31
  %shl = shl i32 1, %and4
  %and5 = and i32 %7, %shl
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %first, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %10 = load i32, i32* %len, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, i32* %len, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom9
  store i8 44, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  store i32 0, i32* %first, align 4
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %num, align 4
  store i32 0, i32* %l, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %12 = load i32, i32* %num, align 4
  %rem = srem i32 %12, 10
  %add11 = add nsw i32 %rem, 48
  %conv = trunc i32 %add11 to i8
  %13 = load i32, i32* %l, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %l, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [20 x i8], [20 x i8]* %temp, i32 0, i64 %idxprom13
  store i8 %conv, i8* %arrayidx14, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, i32* %num, align 4
  %div = sdiv i32 %14, 10
  store i32 %div, i32* %num, align 4
  %cmp15 = icmp sgt i32 %div, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.17

do.body.17:                                       ; preds = %do.cond.23, %do.end
  %15 = load i32, i32* %l, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %l, align 4
  %idxprom18 = sext i32 %dec to i64
  %arrayidx19 = getelementptr inbounds [20 x i8], [20 x i8]* %temp, i32 0, i64 %idxprom18
  %16 = load i8, i8* %arrayidx19, align 1
  %17 = load i32, i32* %len, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %len, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom21
  store i8 %16, i8* %arrayidx22, align 1
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.17
  %18 = load i32, i32* %l, align 4
  %cmp24 = icmp sgt i32 %18, 0
  br i1 %cmp24, label %do.body.17, label %do.end.26

do.end.26:                                        ; preds = %do.cond.23
  %19 = load i32, i32* %len, align 4
  %cmp27 = icmp sgt i32 %19, 105
  br i1 %cmp27, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %do.end.26
  %20 = load i32, i32* %len, align 4
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, i32* %len, align 4
  %idxprom31 = sext i32 %20 to i64
  %arrayidx32 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom31
  store i8 46, i8* %arrayidx32, align 1
  %21 = load i32, i32* %len, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, i32* %len, align 4
  %idxprom34 = sext i32 %21 to i64
  %arrayidx35 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom34
  store i8 46, i8* %arrayidx35, align 1
  %22 = load i32, i32* %len, align 4
  %inc36 = add nsw i32 %22, 1
  store i32 %inc36, i32* %len, align 4
  %idxprom37 = sext i32 %22 to i64
  %arrayidx38 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom37
  store i8 46, i8* %arrayidx38, align 1
  br label %for.end

if.end.39:                                        ; preds = %do.end.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %23 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %23, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.29, %for.cond
  %24 = load i32, i32* %len, align 4
  %inc42 = add nsw i32 %24, 1
  store i32 %inc42, i32* %len, align 4
  %idxprom43 = sext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom43
  store i8 93, i8* %arrayidx44, align 1
  %25 = load i32, i32* %len, align 4
  %inc45 = add nsw i32 %25, 1
  store i32 %inc45, i32* %len, align 4
  %idxprom46 = sext i32 %25 to i64
  %arrayidx47 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  ret i8* getelementptr inbounds ([120 x i8], [120 x i8]* @s1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i8* @pbv1(i32* %s, i32 %n) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %shr = ashr i32 %2, 5
  %add = add nsw i32 %shr, 1
  %idxprom = sext i32 %add to i64
  %3 = load i32*, i32** %s.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %and = and i32 %5, 31
  %shl = shl i32 1, %and
  %and1 = and i32 %4, %shl
  %tobool = icmp ne i32 %and1, 0
  %cond = select i1 %tobool, i32 49, i32 48
  %conv = trunc i32 %cond to i8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom2
  store i8 %conv, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [120 x i8], [120 x i8]* @s1, i32 0, i64 %idxprom4
  store i8 0, i8* %arrayidx5, align 1
  ret i8* getelementptr inbounds ([120 x i8], [120 x i8]* @s1, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define void @set_adjcnt(i32* %a, i32* %count, i32 %weight) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %count.addr = alloca i32*, align 8
  %weight.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %val = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  store i32 %weight, i32* %weight.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %and = and i32 %1, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  store i32 %5, i32* %val, align 4
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  %shl = shl i32 %dec, 5
  store i32 %shl, i32* %base, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %val, align 4
  %cmp3 = icmp ne i32 %7, 0
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %val, align 4
  %and5 = and i32 %8, 1
  %tobool = icmp ne i32 %and5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %9 = load i32, i32* %weight.addr, align 4
  %10 = load i32, i32* %base, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %count.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %add = add nsw i32 %12, %9
  store i32 %add, i32* %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %base, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %base, align 4
  %14 = load i32, i32* %val, align 4
  %shr = lshr i32 %14, 1
  store i32 %shr, i32* %val, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @sf_count(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %count = alloca i32*, align 8
  %val = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %count, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size1, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %count, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count3, align 4
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize, align 4
  %mul4 = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.28, %for.end
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %last, align 8
  %cmp6 = icmp ult i32* %16, %17
  br i1 %cmp6, label %for.body.8, label %for.end.32

for.body.8:                                       ; preds = %for.cond.5
  %18 = load i32*, i32** %p, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx9, align 4
  %and = and i32 %19, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.end.26, %for.body.8
  %20 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %20, 0
  br i1 %cmp11, label %for.body.13, label %for.end.27

for.body.13:                                      ; preds = %for.cond.10
  %21 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %21 to i64
  %22 = load i32*, i32** %p, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %22, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  store i32 %23, i32* %val, align 4
  %24 = load i32, i32* %i, align 4
  %dec16 = add nsw i32 %24, -1
  store i32 %dec16, i32* %i, align 4
  %shl = shl i32 %dec16, 5
  store i32 %shl, i32* %base, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %for.body.13
  %25 = load i32, i32* %val, align 4
  %cmp18 = icmp ne i32 %25, 0
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %26 = load i32, i32* %val, align 4
  %and21 = and i32 %26, 1
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.20
  %27 = load i32, i32* %base, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load i32*, i32** %count, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i64 %idxprom22
  %29 = load i32, i32* %arrayidx23, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.20
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %30 = load i32, i32* %base, align 4
  %inc25 = add nsw i32 %30, 1
  store i32 %inc25, i32* %base, align 4
  %31 = load i32, i32* %val, align 4
  %shr = lshr i32 %31, 1
  store i32 %shr, i32* %val, align 4
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  br label %for.cond.10

for.end.27:                                       ; preds = %for.cond.10
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %32 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize29 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize29, align 4
  %34 = load i32*, i32** %p, align 8
  %idx.ext30 = sext i32 %33 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %34, i64 %idx.ext30
  store i32* %add.ptr31, i32** %p, align 8
  br label %for.cond.5

for.end.32:                                       ; preds = %for.cond.5
  %35 = load i32*, i32** %count, align 8
  ret i32* %35
}

; Function Attrs: nounwind uwtable
define i32* @sf_count_restricted(%struct.set_family* %A, i32* %r) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %r.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %count = alloca i32*, align 8
  %val = alloca i32, align 4
  %weight = alloca i32, align 4
  %last = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %r, i32** %r.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %count, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size1, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %count, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %10 = load i32*, i32** %data, align 8
  store i32* %10, i32** %p, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 3
  %13 = load i32, i32* %count3, align 4
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize, align 4
  %mul4 = mul nsw i32 %13, %15
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.32, %for.end
  %16 = load i32*, i32** %p, align 8
  %17 = load i32*, i32** %last, align 8
  %cmp6 = icmp ult i32* %16, %17
  br i1 %cmp6, label %for.body.8, label %for.end.36

for.body.8:                                       ; preds = %for.cond.5
  %18 = load i32*, i32** %p, align 8
  %call9 = call i32 @set_ord(i32* %18)
  %sub10 = sub nsw i32 %call9, 1
  %div = sdiv i32 1024, %sub10
  store i32 %div, i32* %weight, align 4
  %19 = load i32*, i32** %p, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 0
  %20 = load i32, i32* %arrayidx11, align 4
  %and = and i32 %20, 1023
  store i32 %and, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.end.30, %for.body.8
  %21 = load i32, i32* %i, align 4
  %cmp13 = icmp sgt i32 %21, 0
  br i1 %cmp13, label %for.body.15, label %for.end.31

for.body.15:                                      ; preds = %for.cond.12
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load i32*, i32** %p, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load i32*, i32** %r.addr, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  %27 = load i32, i32* %arrayidx19, align 4
  %and20 = and i32 %24, %27
  store i32 %and20, i32* %val, align 4
  %28 = load i32, i32* %i, align 4
  %dec21 = add nsw i32 %28, -1
  store i32 %dec21, i32* %i, align 4
  %shl = shl i32 %dec21, 5
  store i32 %shl, i32* %base, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.29, %for.body.15
  %29 = load i32, i32* %val, align 4
  %cmp23 = icmp ne i32 %29, 0
  br i1 %cmp23, label %for.body.25, label %for.end.30

for.body.25:                                      ; preds = %for.cond.22
  %30 = load i32, i32* %val, align 4
  %and26 = and i32 %30, 1
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.25
  %31 = load i32, i32* %weight, align 4
  %32 = load i32, i32* %base, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load i32*, i32** %count, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 %idxprom27
  %34 = load i32, i32* %arrayidx28, align 4
  %add = add nsw i32 %34, %31
  store i32 %add, i32* %arrayidx28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.25
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %35 = load i32, i32* %base, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %base, align 4
  %36 = load i32, i32* %val, align 4
  %shr = lshr i32 %36, 1
  store i32 %shr, i32* %val, align 4
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  br label %for.cond.12

for.end.31:                                       ; preds = %for.cond.12
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize33 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %38 = load i32, i32* %wsize33, align 4
  %39 = load i32*, i32** %p, align 8
  %idx.ext34 = sext i32 %38 to i64
  %add.ptr35 = getelementptr inbounds i32, i32* %39, i64 %idx.ext34
  store i32* %add.ptr35, i32** %p, align 8
  br label %for.cond.5

for.end.36:                                       ; preds = %for.cond.5
  %40 = load i32*, i32** %count, align 8
  ret i32* %40
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_delc(%struct.set_family* %A, i32 %first, i32 %last) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %1 = load i32, i32* %first.addr, align 4
  %2 = load i32, i32* %last.addr, align 4
  %3 = load i32, i32* %first.addr, align 4
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %call = call %struct.set_family* @sf_delcol(%struct.set_family* %0, i32 %1, i32 %add)
  ret %struct.set_family* %call
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_addcol(%struct.set_family* %A, i32 %firstcol, i32 %n) #0 {
entry:
  %retval = alloca %struct.set_family*, align 8
  %A.addr = alloca %struct.set_family*, align 8
  %firstcol.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %maxsize = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %firstcol, i32* %firstcol.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %firstcol.addr, align 4
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 1
  %2 = load i32, i32* %sf_size, align 4
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 1
  %4 = load i32, i32* %sf_size1, align 4
  %cmp2 = icmp sle i32 %4, 32
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size3 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 1
  %6 = load i32, i32* %sf_size3, align 4
  %sub = sub nsw i32 %6, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  %mul = mul nsw i32 32, %cond
  store i32 %mul, i32* %maxsize, align 4
  %7 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size4 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 1
  %8 = load i32, i32* %sf_size4, align 4
  %9 = load i32, i32* %n.addr, align 4
  %add5 = add nsw i32 %8, %9
  %10 = load i32, i32* %maxsize, align 4
  %cmp6 = icmp sle i32 %add5, %10
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %cond.end
  %11 = load i32, i32* %n.addr, align 4
  %12 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size8 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 1
  %13 = load i32, i32* %sf_size8, align 4
  %add9 = add nsw i32 %13, %11
  store i32 %add9, i32* %sf_size8, align 4
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %14, %struct.set_family** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %15 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %16 = load i32, i32* %firstcol.addr, align 4
  %17 = load i32, i32* %n.addr, align 4
  %sub11 = sub nsw i32 0, %17
  %call = call %struct.set_family* @sf_delcol(%struct.set_family* %15, i32 %16, i32 %sub11)
  store %struct.set_family* %call, %struct.set_family** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.7
  %18 = load %struct.set_family*, %struct.set_family** %retval
  ret %struct.set_family* %18
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_delcol(%struct.set_family* %A, i32 %firstcol, i32 %n) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %firstcol.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %i = alloca i32, align 4
  %B = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32 %firstcol, i32* %firstcol.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 1
  %3 = load i32, i32* %sf_size, align 4
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, %4
  %call = call %struct.set_family* @sf_new(i32 %1, i32 %sub)
  store %struct.set_family* %call, %struct.set_family** %B, align 8
  %5 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 5
  %6 = load i32*, i32** %data, align 8
  store i32* %6, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %9 = load i32, i32* %count1, align 4
  %10 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 0
  %11 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %12 = load i32*, i32** %p, align 8
  %13 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %12, %13
  br i1 %cmp, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond
  %14 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data2 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %15 = load i32*, i32** %data2, align 8
  %16 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize3 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %17 = load i32, i32* %wsize3, align 4
  %18 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %19 = load i32, i32* %count4, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count4, align 4
  %mul5 = mul nsw i32 %17, %19
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %15, i64 %idx.ext6
  store i32* %add.ptr7, i32** %pdest, align 8
  %20 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size8 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 1
  %21 = load i32, i32* %sf_size8, align 4
  %cmp9 = icmp sle i32 %21, 32
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size10 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 1
  %23 = load i32, i32* %sf_size10, align 4
  %sub11 = sub nsw i32 %23, 1
  %shr = ashr i32 %sub11, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %24 = load i32, i32* %i_, align 4
  %25 = load i32*, i32** %pdest, align 8
  store i32 %24, i32* %25, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %26 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load i32*, i32** %pdest, align 8
  %arrayidx = getelementptr inbounds i32, i32* %27, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i_, align 4
  %cmp12 = icmp sgt i32 %dec, 0
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %do.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %firstcol.addr, align 4
  %cmp14 = icmp slt i32 %29, %30
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %31 = load i32, i32* %i, align 4
  %shr16 = ashr i32 %31, 5
  %add17 = add nsw i32 %shr16, 1
  %idxprom18 = sext i32 %add17 to i64
  %32 = load i32*, i32** %p, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %32, i64 %idxprom18
  %33 = load i32, i32* %arrayidx19, align 4
  %34 = load i32, i32* %i, align 4
  %and = and i32 %34, 31
  %shl = shl i32 1, %and
  %and20 = and i32 %33, %shl
  %tobool = icmp ne i32 %and20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.15
  %35 = load i32, i32* %i, align 4
  %and21 = and i32 %35, 31
  %shl22 = shl i32 1, %and21
  %36 = load i32, i32* %i, align 4
  %shr23 = ashr i32 %36, 5
  %add24 = add nsw i32 %shr23, 1
  %idxprom25 = sext i32 %add24 to i64
  %37 = load i32*, i32** %pdest, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom25
  %38 = load i32, i32* %arrayidx26, align 4
  %or = or i32 %38, %shl22
  store i32 %or, i32* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %39, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %40 = load i32, i32* %n.addr, align 4
  %cmp28 = icmp sgt i32 %40, 0
  br i1 %cmp28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %for.end
  %41 = load i32, i32* %firstcol.addr, align 4
  %42 = load i32, i32* %n.addr, align 4
  %add30 = add nsw i32 %41, %42
  br label %cond.end.32

cond.false.31:                                    ; preds = %for.end
  %43 = load i32, i32* %firstcol.addr, align 4
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.29
  %cond33 = phi i32 [ %add30, %cond.true.29 ], [ %43, %cond.false.31 ]
  store i32 %cond33, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.57, %cond.end.32
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size35 = getelementptr inbounds %struct.set_family, %struct.set_family* %45, i32 0, i32 1
  %46 = load i32, i32* %sf_size35, align 4
  %cmp36 = icmp slt i32 %44, %46
  br i1 %cmp36, label %for.body.37, label %for.end.59

for.body.37:                                      ; preds = %for.cond.34
  %47 = load i32, i32* %i, align 4
  %shr38 = ashr i32 %47, 5
  %add39 = add nsw i32 %shr38, 1
  %idxprom40 = sext i32 %add39 to i64
  %48 = load i32*, i32** %p, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %48, i64 %idxprom40
  %49 = load i32, i32* %arrayidx41, align 4
  %50 = load i32, i32* %i, align 4
  %and42 = and i32 %50, 31
  %shl43 = shl i32 1, %and42
  %and44 = and i32 %49, %shl43
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.56

if.then.46:                                       ; preds = %for.body.37
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %n.addr, align 4
  %sub47 = sub nsw i32 %51, %52
  %and48 = and i32 %sub47, 31
  %shl49 = shl i32 1, %and48
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %n.addr, align 4
  %sub50 = sub nsw i32 %53, %54
  %shr51 = ashr i32 %sub50, 5
  %add52 = add nsw i32 %shr51, 1
  %idxprom53 = sext i32 %add52 to i64
  %55 = load i32*, i32** %pdest, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %55, i64 %idxprom53
  %56 = load i32, i32* %arrayidx54, align 4
  %or55 = or i32 %56, %shl49
  store i32 %or55, i32* %arrayidx54, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.46, %for.body.37
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %57 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %57, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.34

for.end.59:                                       ; preds = %for.cond.34
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end.59
  %58 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize61 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 0
  %59 = load i32, i32* %wsize61, align 4
  %60 = load i32*, i32** %p, align 8
  %idx.ext62 = sext i32 %59 to i64
  %add.ptr63 = getelementptr inbounds i32, i32* %60, i64 %idx.ext62
  store i32* %add.ptr63, i32** %p, align 8
  br label %for.cond

for.end.64:                                       ; preds = %for.cond
  %61 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void @sf_free(%struct.set_family* %61)
  %62 = load %struct.set_family*, %struct.set_family** %B, align 8
  ret %struct.set_family* %62
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_copy_col(%struct.set_family* %dst, i32 %dstcol, %struct.set_family* %src, i32 %srccol) #0 {
entry:
  %dst.addr = alloca %struct.set_family*, align 8
  %dstcol.addr = alloca i32, align 4
  %src.addr = alloca %struct.set_family*, align 8
  %srccol.addr = alloca i32, align 4
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %word_test = alloca i32, align 4
  %word_set = alloca i32, align 4
  %bit_set = alloca i32, align 4
  %bit_test = alloca i32, align 4
  store %struct.set_family* %dst, %struct.set_family** %dst.addr, align 8
  store i32 %dstcol, i32* %dstcol.addr, align 4
  store %struct.set_family* %src, %struct.set_family** %src.addr, align 8
  store i32 %srccol, i32* %srccol.addr, align 4
  %0 = load i32, i32* %srccol.addr, align 4
  %shr = ashr i32 %0, 5
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %word_test, align 4
  %1 = load i32, i32* %srccol.addr, align 4
  %and = and i32 %1, 31
  %shl = shl i32 1, %and
  store i32 %shl, i32* %bit_test, align 4
  %2 = load i32, i32* %dstcol.addr, align 4
  %shr1 = ashr i32 %2, 5
  %add2 = add nsw i32 %shr1, 1
  store i32 %add2, i32* %word_set, align 4
  %3 = load i32, i32* %dstcol.addr, align 4
  %and3 = and i32 %3, 31
  %shl4 = shl i32 1, %and3
  store i32 %shl4, i32* %bit_set, align 4
  %4 = load %struct.set_family*, %struct.set_family** %dst.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 5
  %5 = load i32*, i32** %data, align 8
  store i32* %5, i32** %pdest, align 8
  %6 = load %struct.set_family*, %struct.set_family** %src.addr, align 8
  %data5 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data5, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %src.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %11 = load %struct.set_family*, %struct.set_family** %src.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %word_test, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %18 = load i32, i32* %bit_test, align 4
  %and6 = and i32 %17, %18
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %bit_set, align 4
  %20 = load i32, i32* %word_set, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load i32*, i32** %pdest, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %21, i64 %idxprom8
  %22 = load i32, i32* %arrayidx9, align 4
  %or = or i32 %22, %19
  store i32 %or, i32* %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %23 = load %struct.set_family*, %struct.set_family** %dst.addr, align 8
  %wsize10 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %24 = load i32, i32* %wsize10, align 4
  %25 = load i32*, i32** %pdest, align 8
  %idx.ext11 = sext i32 %24 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %25, i64 %idx.ext11
  store i32* %add.ptr12, i32** %pdest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.set_family*, %struct.set_family** %src.addr, align 8
  %wsize13 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 0
  %27 = load i32, i32* %wsize13, align 4
  %28 = load i32*, i32** %p, align 8
  %idx.ext14 = sext i32 %27 to i64
  %add.ptr15 = getelementptr inbounds i32, i32* %28, i64 %idx.ext14
  store i32* %add.ptr15, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.set_family*, %struct.set_family** %dst.addr, align 8
  ret %struct.set_family* %29
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_compress(%struct.set_family* %A, i32* %c) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %c.addr = alloca i32*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %bcol = alloca i32, align 4
  %B = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load i32*, i32** %c.addr, align 8
  %call = call i32 @set_ord(i32* %2)
  %call1 = call %struct.set_family* @sf_new(i32 %1, i32 %call)
  store %struct.set_family* %call1, %struct.set_family** %B, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  %8 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %10 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count3, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count3, align 4
  %mul = mul nsw i32 %9, %11
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %7, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 1
  %13 = load i32, i32* %sf_size, align 4
  %cmp4 = icmp sle i32 %13, 32
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size5 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %15 = load i32, i32* %sf_size5, align 4
  %sub = sub nsw i32 %15, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %16 = load i32, i32* %i_, align 4
  %17 = load i32*, i32** %p, align 8
  store i32 %16, i32* %17, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %18 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i_, align 4
  %cmp6 = icmp sgt i32 %dec, 0
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %21 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %21, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %bcol, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.19, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size9 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 1
  %24 = load i32, i32* %sf_size9, align 4
  %cmp10 = icmp slt i32 %22, %24
  br i1 %cmp10, label %for.body.11, label %for.end.21

for.body.11:                                      ; preds = %for.cond.8
  %25 = load i32, i32* %i, align 4
  %shr12 = ashr i32 %25, 5
  %add13 = add nsw i32 %shr12, 1
  %idxprom14 = sext i32 %add13 to i64
  %26 = load i32*, i32** %c.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %26, i64 %idxprom14
  %27 = load i32, i32* %arrayidx15, align 4
  %28 = load i32, i32* %i, align 4
  %and = and i32 %28, 31
  %shl = shl i32 1, %and
  %and16 = and i32 %27, %shl
  %tobool = icmp ne i32 %and16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  %29 = load %struct.set_family*, %struct.set_family** %B, align 8
  %30 = load i32, i32* %bcol, align 4
  %inc17 = add nsw i32 %30, 1
  store i32 %inc17, i32* %bcol, align 4
  %31 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %32 = load i32, i32* %i, align 4
  %call18 = call %struct.set_family* @sf_copy_col(%struct.set_family* %29, i32 %30, %struct.set_family* %31, i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.11
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %33, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.8

for.end.21:                                       ; preds = %for.cond.8
  %34 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void @sf_free(%struct.set_family* %34)
  %35 = load %struct.set_family*, %struct.set_family** %B, align 8
  ret %struct.set_family* %35
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_transpose(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 1
  %1 = load i32, i32* %sf_size, align 4
  %2 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  %call = call %struct.set_family* @sf_new(i32 %1, i32 %3)
  store %struct.set_family* %call, %struct.set_family** %B, align 8
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size1 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 1
  %5 = load i32, i32* %sf_size1, align 4
  %6 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  store i32 %5, i32* %count2, align 4
  %7 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  store i32* %8, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 3
  %11 = load i32, i32* %count3, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size4 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 1
  %13 = load i32, i32* %sf_size4, align 4
  %cmp5 = icmp sle i32 %13, 32
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %B, align 8
  %sf_size6 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %15 = load i32, i32* %sf_size6, align 4
  %sub = sub nsw i32 %15, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %16 = load i32, i32* %i_, align 4
  %17 = load i32*, i32** %p, align 8
  store i32 %16, i32* %17, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %18 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i_, align 4
  %cmp7 = icmp sgt i32 %dec, 0
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %21 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %22 = load i32, i32* %wsize, align 4
  %23 = load i32*, i32** %p, align 8
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i32, i32* %23, i64 %idx.ext
  store i32* %add.ptr, i32** %p, align 8
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data8 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data8, align 8
  store i32* %26, i32** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.35, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 3
  %29 = load i32, i32* %count10, align 4
  %cmp11 = icmp slt i32 %27, %29
  br i1 %cmp11, label %for.body.12, label %for.end.40

for.body.12:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.32, %for.body.12
  %30 = load i32, i32* %j, align 4
  %31 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %sf_size14 = getelementptr inbounds %struct.set_family, %struct.set_family* %31, i32 0, i32 1
  %32 = load i32, i32* %sf_size14, align 4
  %cmp15 = icmp slt i32 %30, %32
  br i1 %cmp15, label %for.body.16, label %for.end.34

for.body.16:                                      ; preds = %for.cond.13
  %33 = load i32, i32* %j, align 4
  %shr17 = ashr i32 %33, 5
  %add18 = add nsw i32 %shr17, 1
  %idxprom19 = sext i32 %add18 to i64
  %34 = load i32*, i32** %p, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %34, i64 %idxprom19
  %35 = load i32, i32* %arrayidx20, align 4
  %36 = load i32, i32* %j, align 4
  %and = and i32 %36, 31
  %shl = shl i32 1, %and
  %and21 = and i32 %35, %shl
  %tobool = icmp ne i32 %and21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  %37 = load i32, i32* %i, align 4
  %and22 = and i32 %37, 31
  %shl23 = shl i32 1, %and22
  %38 = load i32, i32* %i, align 4
  %shr24 = ashr i32 %38, 5
  %add25 = add nsw i32 %shr24, 1
  %idxprom26 = sext i32 %add25 to i64
  %39 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data27 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 5
  %40 = load i32*, i32** %data27, align 8
  %41 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize28 = getelementptr inbounds %struct.set_family, %struct.set_family* %41, i32 0, i32 0
  %42 = load i32, i32* %wsize28, align 4
  %43 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %42, %43
  %idx.ext29 = sext i32 %mul to i64
  %add.ptr30 = getelementptr inbounds i32, i32* %40, i64 %idx.ext29
  %arrayidx31 = getelementptr inbounds i32, i32* %add.ptr30, i64 %idxprom26
  %44 = load i32, i32* %arrayidx31, align 4
  %or = or i32 %44, %shl23
  store i32 %or, i32* %arrayidx31, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.16
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end
  %45 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.13

for.end.34:                                       ; preds = %for.cond.13
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %46 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize36 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 0
  %47 = load i32, i32* %wsize36, align 4
  %48 = load i32*, i32** %p, align 8
  %idx.ext37 = sext i32 %47 to i64
  %add.ptr38 = getelementptr inbounds i32, i32* %48, i64 %idx.ext37
  store i32* %add.ptr38, i32** %p, align 8
  %49 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %49, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond.9

for.end.40:                                       ; preds = %for.cond.9
  %50 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void @sf_free(%struct.set_family* %50)
  %51 = load %struct.set_family*, %struct.set_family** %B, align 8
  ret %struct.set_family* %51
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @sf_permute(%struct.set_family* %A, i32* %permute, i32 %npermute) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %permute.addr = alloca i32*, align 8
  %npermute.addr = alloca i32, align 4
  %B = alloca %struct.set_family*, align 8
  %p = alloca i32*, align 8
  %last = alloca i32*, align 8
  %pdest = alloca i32*, align 8
  %j = alloca i32, align 4
  %i_ = alloca i32, align 4
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store i32* %permute, i32** %permute.addr, align 8
  store i32 %npermute, i32* %npermute.addr, align 4
  %0 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* %npermute.addr, align 4
  %call = call %struct.set_family* @sf_new(i32 %1, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %B, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 3
  %4 = load i32, i32* %count1, align 4
  %5 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  store i32 %4, i32* %count2, align 4
  %6 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 5
  %7 = load i32*, i32** %data, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %p, align 8
  %9 = load %struct.set_family*, %struct.set_family** %B, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %10 = load i32, i32* %count3, align 4
  %11 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 0
  %12 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %npermute.addr, align 4
  %cmp4 = icmp sle i32 %15, 32
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %16 = load i32, i32* %npermute.addr, align 4
  %sub = sub nsw i32 %16, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %i_, align 4
  %17 = load i32, i32* %i_, align 4
  %18 = load i32*, i32** %p, align 8
  store i32 %17, i32* %18, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %19 = load i32, i32* %i_, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %21 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i_, align 4
  %cmp5 = icmp sgt i32 %dec, 0
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %22 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize6 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 0
  %23 = load i32, i32* %wsize6, align 4
  %24 = load i32*, i32** %p, align 8
  %idx.ext7 = sext i32 %23 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %24, i64 %idx.ext7
  store i32* %add.ptr8, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.set_family*, %struct.set_family** %B, align 8
  %data9 = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data9, align 8
  store i32* %26, i32** %pdest, align 8
  %27 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data10 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 5
  %28 = load i32*, i32** %data10, align 8
  store i32* %28, i32** %p, align 8
  %29 = load i32*, i32** %p, align 8
  %30 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count11 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 3
  %31 = load i32, i32* %count11, align 4
  %32 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize12 = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 0
  %33 = load i32, i32* %wsize12, align 4
  %mul13 = mul nsw i32 %31, %33
  %idx.ext14 = sext i32 %mul13 to i64
  %add.ptr15 = getelementptr inbounds i32, i32* %29, i64 %idx.ext14
  store i32* %add.ptr15, i32** %last, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.42, %for.end
  %34 = load i32*, i32** %p, align 8
  %35 = load i32*, i32** %last, align 8
  %cmp17 = icmp ult i32* %34, %35
  br i1 %cmp17, label %for.body.18, label %for.end.46

for.body.18:                                      ; preds = %for.cond.16
  store i32 0, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.37, %for.body.18
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %npermute.addr, align 4
  %cmp20 = icmp slt i32 %36, %37
  br i1 %cmp20, label %for.body.21, label %for.end.38

for.body.21:                                      ; preds = %for.cond.19
  %38 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %38 to i64
  %39 = load i32*, i32** %permute.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %39, i64 %idxprom22
  %40 = load i32, i32* %arrayidx23, align 4
  %shr24 = ashr i32 %40, 5
  %add25 = add nsw i32 %shr24, 1
  %idxprom26 = sext i32 %add25 to i64
  %41 = load i32*, i32** %p, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %41, i64 %idxprom26
  %42 = load i32, i32* %arrayidx27, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %43 to i64
  %44 = load i32*, i32** %permute.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %44, i64 %idxprom28
  %45 = load i32, i32* %arrayidx29, align 4
  %and = and i32 %45, 31
  %shl = shl i32 1, %and
  %and30 = and i32 %42, %shl
  %tobool = icmp ne i32 %and30, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  %46 = load i32, i32* %j, align 4
  %and31 = and i32 %46, 31
  %shl32 = shl i32 1, %and31
  %47 = load i32, i32* %j, align 4
  %shr33 = ashr i32 %47, 5
  %add34 = add nsw i32 %shr33, 1
  %idxprom35 = sext i32 %add34 to i64
  %48 = load i32*, i32** %pdest, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %48, i64 %idxprom35
  %49 = load i32, i32* %arrayidx36, align 4
  %or = or i32 %49, %shl32
  store i32 %or, i32* %arrayidx36, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.21
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end
  %50 = load i32, i32* %j, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.19

for.end.38:                                       ; preds = %for.cond.19
  %51 = load %struct.set_family*, %struct.set_family** %B, align 8
  %wsize39 = getelementptr inbounds %struct.set_family, %struct.set_family* %51, i32 0, i32 0
  %52 = load i32, i32* %wsize39, align 4
  %53 = load i32*, i32** %pdest, align 8
  %idx.ext40 = sext i32 %52 to i64
  %add.ptr41 = getelementptr inbounds i32, i32* %53, i64 %idx.ext40
  store i32* %add.ptr41, i32** %pdest, align 8
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.38
  %54 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize43 = getelementptr inbounds %struct.set_family, %struct.set_family* %54, i32 0, i32 0
  %55 = load i32, i32* %wsize43, align 4
  %56 = load i32*, i32** %p, align 8
  %idx.ext44 = sext i32 %55 to i64
  %add.ptr45 = getelementptr inbounds i32, i32* %56, i64 %idx.ext44
  store i32* %add.ptr45, i32** %p, align 8
  br label %for.cond.16

for.end.46:                                       ; preds = %for.cond.16
  %57 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  call void @sf_free(%struct.set_family* %57)
  %58 = load %struct.set_family*, %struct.set_family** %B, align 8
  ret %struct.set_family* %58
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
