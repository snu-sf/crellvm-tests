; ModuleID = './SingleSource.Benchmarks.Stanford/7.Queens.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" Error in Queens.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
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
@piececount = common global [4 x i32] zeroinitializer, align 16
@class = common global [13 x i32] zeroinitializer, align 16
@piecemax = common global [13 x i32] zeroinitializer, align 16
@puzzl = common global [512 x i32] zeroinitializer, align 16
@p = common global [13 x [512 x i32]] zeroinitializer, align 16
@n = common global i32 0, align 4
@kount = common global i32 0, align 4
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
define void @Try(i32 %i, i32* %q, i32* %a, i32* %b, i32* %c, i32* %x) #0 {
entry:
  %i.addr = alloca i32, align 4
  %q.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32* %q, i32** %q.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i32*, i32** %q.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %entry
  %1 = load i32*, i32** %q.addr, align 8
  %2 = load i32, i32* %1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %j, align 4
  %cmp = icmp ne i32 %3, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %j, align 4
  %6 = load i32*, i32** %q.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %b.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32, i32* %i.addr, align 4
  %11 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %10, %11
  %idxprom3 = sext i32 %add2 to i64
  %12 = load i32*, i32** %a.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %13 = load i32, i32* %arrayidx4, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.37

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %14 = load i32, i32* %i.addr, align 4
  %15 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %14, %15
  %add7 = add nsw i32 %sub, 7
  %idxprom8 = sext i32 %add7 to i64
  %16 = load i32*, i32** %c.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %17 = load i32, i32* %arrayidx9, align 4
  %tobool10 = icmp ne i32 %17, 0
  br i1 %tobool10, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.6
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load i32*, i32** %x.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  store i32 %18, i32* %arrayidx12, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %b.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  %23 = load i32, i32* %i.addr, align 4
  %24 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %23, %24
  %idxprom16 = sext i32 %add15 to i64
  %25 = load i32*, i32** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 0, i32* %arrayidx17, align 4
  %26 = load i32, i32* %i.addr, align 4
  %27 = load i32, i32* %j, align 4
  %sub18 = sub nsw i32 %26, %27
  %add19 = add nsw i32 %sub18, 7
  %idxprom20 = sext i32 %add19 to i64
  %28 = load i32*, i32** %c.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  store i32 0, i32* %arrayidx21, align 4
  %29 = load i32, i32* %i.addr, align 4
  %cmp22 = icmp slt i32 %29, 8
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then
  %30 = load i32, i32* %i.addr, align 4
  %add24 = add nsw i32 %30, 1
  %31 = load i32*, i32** %q.addr, align 8
  %32 = load i32*, i32** %a.addr, align 8
  %33 = load i32*, i32** %b.addr, align 8
  %34 = load i32*, i32** %c.addr, align 8
  %35 = load i32*, i32** %x.addr, align 8
  call void @Try(i32 %add24, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35)
  %36 = load i32*, i32** %q.addr, align 8
  %37 = load i32, i32* %36, align 4
  %tobool25 = icmp ne i32 %37, 0
  br i1 %tobool25, label %if.end, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  %38 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load i32*, i32** %b.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  store i32 1, i32* %arrayidx28, align 4
  %40 = load i32, i32* %i.addr, align 4
  %41 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %40, %41
  %idxprom30 = sext i32 %add29 to i64
  %42 = load i32*, i32** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %42, i64 %idxprom30
  store i32 1, i32* %arrayidx31, align 4
  %43 = load i32, i32* %i.addr, align 4
  %44 = load i32, i32* %j, align 4
  %sub32 = sub nsw i32 %43, %44
  %add33 = add nsw i32 %sub32, 7
  %idxprom34 = sext i32 %add33 to i64
  %45 = load i32*, i32** %c.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %45, i64 %idxprom34
  store i32 1, i32* %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then.23
  br label %if.end.36

if.else:                                          ; preds = %if.then
  %46 = load i32*, i32** %q.addr, align 8
  store i32 1, i32* %46, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.6, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @Doit() #0 {
entry:
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca [9 x i32], align 16
  %b = alloca [17 x i32], align 16
  %c = alloca [15 x i32], align 16
  %x = alloca [9 x i32], align 16
  store i32 -7, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %2, 8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %a, i32 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp sge i32 %4, 2
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [17 x i32], [17 x i32]* %b, i32 0, i64 %idxprom5
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp sle i32 %6, 7
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.7
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 7
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [15 x i32], [15 x i32]* %c, i32 0, i64 %idxprom10
  store i32 1, i32* %arrayidx11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.7
  %8 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %8, 1
  store i32 %add13, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [17 x i32], [17 x i32]* %b, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [9 x i32], [9 x i32]* %a, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [15 x i32], [15 x i32]* %c, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [9 x i32], [9 x i32]* %x, i32 0, i32 0
  call void @Try(i32 1, i32* %q, i32* %arraydecay, i32* %arraydecay14, i32* %arraydecay15, i32* %arraydecay16)
  %9 = load i32, i32* %q, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %while.end
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Queens(i32 %run) #0 {
entry:
  %run.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %run, i32* %run.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Doit()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %2 = load i32, i32* %run.addr, align 4
  %add = add nsw i32 %2, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  ret void
}

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
  %1 = load i32, i32* %i, align 4
  call void @Queens(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
