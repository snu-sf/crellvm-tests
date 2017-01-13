; ModuleID = './MultiSource.Benchmarks.VersaBench/49.bmm.bmm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [1024 x [1024 x float]] zeroinitializer, align 16
@a = common global [1024 x [1024 x float]] zeroinitializer, align 16
@b = common global [1024 x [1024 x float]] zeroinitializer, align 16
@BLOCK = common global i32 0, align 4
@NUM = common global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: bmm <size> <block>\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"size must be in [0, 1024]; block must be <= than size\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"final sum = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @my_rand_r(i32* %seedp) #0 {
entry:
  %seedp.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  store i32* %seedp, i32** %seedp.addr, align 8
  %0 = load i32*, i32** %seedp.addr, align 8
  %1 = load i32, i32* %0, align 4
  %mul = mul i32 %1, 1664525
  %add = add i32 %mul, 1013904223
  store i32 %add, i32* %x, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32*, i32** %seedp.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %x, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 32767
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define void @init() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %random_seed = alloca i32, align 4
  store i32 1, i32* %random_seed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 1024
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call i32 @my_rand_r(i32* %random_seed)
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, %3
  %and = and i32 %sub, 31
  %shr = lshr i32 %call, %and
  %and4 = and i32 %shr, 15
  %conv = uitofp i32 %and4 to float
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx, i32 0, i64 %idxprom
  store float %conv, float* %arrayidx6, align 4
  %call7 = call i32 @my_rand_r(i32* %random_seed)
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %6, %7
  %and8 = and i32 %add, 31
  %shl = shl i32 %call7, %and8
  %and9 = and i32 %shl, 15
  %conv10 = uitofp i32 %and9 to float
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx13, i32 0, i64 %idxprom11
  store float %conv10, float* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mm_inner(i32 %I, i32 %J, i32 %K) #0 {
entry:
  %I.addr = alloca i32, align 4
  %J.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %I, i32* %I.addr, align 4
  store i32 %J, i32* %J.addr, align 4
  store i32 %K, i32* %K.addr, align 4
  %0 = load i32, i32* %I.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %I.addr, align 4
  %3 = load i32, i32* @BLOCK, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp slt i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %J.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.20, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %J.addr, align 4
  %7 = load i32, i32* @BLOCK, align 4
  %add2 = add nsw i32 %6, %7
  %cmp3 = icmp slt i32 %5, %add2
  br i1 %cmp3, label %for.body.4, label %for.end.22

for.body.4:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %K.addr, align 4
  store i32 %8, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %K.addr, align 4
  %11 = load i32, i32* @BLOCK, align 4
  %add6 = add nsw i32 %10, %11
  %cmp7 = icmp slt i32 %9, %add6
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %12 = load i32, i32* %k, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx, i32 0, i64 %idxprom
  %14 = load float, float* %arrayidx10, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx13, i32 0, i64 %idxprom11
  %17 = load float, float* %arrayidx14, align 4
  %mul = fmul float %14, %17
  %18 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx17, i32 0, i64 %idxprom15
  %20 = load float, float* %arrayidx18, align 4
  %add19 = fadd float %20, %mul
  store float %add19, float* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %23 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @matmult() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s1 = alloca float, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.7, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @NUM, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.9

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* @NUM, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  call void @mm_inner(i32 %6, i32 %7, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %9 = load i32, i32* @BLOCK, align 4
  %10 = load i32, i32* %k, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %11 = load i32, i32* @BLOCK, align 4
  %12 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %12, %11
  store i32 %add8, i32* %j, align 4
  br label %for.cond.1

for.end.9:                                        ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end.9
  %13 = load i32, i32* @BLOCK, align 4
  %14 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %14, %13
  store i32 %add11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @mm_sum(i32 %I, i32 %J) #0 {
entry:
  %I.addr = alloca i32, align 4
  %J.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca float, align 4
  store i32 %I, i32* %I.addr, align 4
  store i32 %J, i32* %J.addr, align 4
  store float 0.000000e+00, float* %s, align 4
  %0 = load i32, i32* %I.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %I.addr, align 4
  %3 = load i32, i32* @BLOCK, align 4
  %add = add nsw i32 %2, %3
  %cmp = icmp slt i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %J.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %J.addr, align 4
  %7 = load i32, i32* @BLOCK, align 4
  %add2 = add nsw i32 %6, %7
  %cmp3 = icmp slt i32 %5, %add2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [1024 x float], [1024 x float]* %arrayidx, i32 0, i64 %idxprom
  %10 = load float, float* %arrayidx6, align 4
  %11 = load float, float* %s, align 4
  %add7 = fadd float %11, %10
  store float %add7, float* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %14 = load float, float* %s, align 4
  ret float %14
}

; Function Attrs: nounwind uwtable
define float @sumup() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca float, align 4
  store float 0.000000e+00, float* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @NUM, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @NUM, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %call = call float @mm_sum(i32 %4, i32 %5)
  %6 = load float, float* %s, align 4
  %add = fadd float %6, %call
  store float %add, float* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* @BLOCK, align 4
  %8 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %8, %7
  store i32 %add4, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %9 = load i32, i32* @BLOCK, align 4
  %10 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %10, %9
  store i32 %add6, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  %11 = load float, float* %s, align 4
  ret float %11
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca float, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #5
  store i32 %call1, i32* @NUM, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 @atoi(i8* %4) #5
  store i32 %call3, i32* @BLOCK, align 4
  %5 = load i32, i32* @NUM, align 4
  %cmp4 = icmp ugt i32 %5, 1024
  %conv = zext i1 %cmp4 to i32
  %6 = load i32, i32* @BLOCK, align 4
  %7 = load i32, i32* @NUM, align 4
  %cmp5 = icmp ugt i32 %6, %7
  %conv6 = zext i1 %cmp5 to i32
  %or = or i32 %conv, %conv6
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end.9:                                         ; preds = %if.end
  call void @init()
  call void @matmult()
  %call10 = call float @sumup()
  store float %call10, float* %s, align 4
  %8 = load float, float* %s, align 4
  %conv11 = fpext float %8 to double
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), double %conv11)
  call void @exit(i32 0) #4
  unreachable

return:                                           ; No predecessors!
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
