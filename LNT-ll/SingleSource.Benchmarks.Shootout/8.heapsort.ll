; ModuleID = './SingleSource.Benchmarks.Shootout/8.heapsort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_random.last = internal global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @gen_random(double %max) #0 {
entry:
  %max.addr = alloca double, align 8
  store double %max, double* %max.addr, align 8
  %0 = load double, double* %max.addr, align 8
  %1 = load i64, i64* @gen_random.last, align 8
  %mul = mul nsw i64 %1, 3877
  %add = add nsw i64 %mul, 29573
  %rem = srem i64 %add, 139968
  store i64 %rem, i64* @gen_random.last, align 8
  %conv = sitofp i64 %rem to double
  %mul1 = fmul double %0, %conv
  %div = fdiv double %mul1, 1.399680e+05
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @benchmark_heapsort(i32 %n, double* %ra) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ra.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ir = alloca i32, align 4
  %l = alloca i32, align 4
  %rra = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %ra, double** %ra.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %ir, align 4
  %1 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %1, 1
  %add = add nsw i32 %shr, 1
  store i32 %add, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %2 = load i32, i32* %l, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %3 = load i32, i32* %l, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %l, align 4
  %idxprom = sext i32 %dec to i64
  %4 = load double*, double** %ra.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  store double %5, double* %rra, align 8
  br label %if.end.10

if.else:                                          ; preds = %for.cond
  %6 = load i32, i32* %ir, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load double*, double** %ra.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  %8 = load double, double* %arrayidx2, align 8
  store double %8, double* %rra, align 8
  %9 = load double*, double** %ra.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %9, i64 1
  %10 = load double, double* %arrayidx3, align 8
  %11 = load i32, i32* %ir, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load double*, double** %ra.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %12, i64 %idxprom4
  store double %10, double* %arrayidx5, align 8
  %13 = load i32, i32* %ir, align 4
  %dec6 = add nsw i32 %13, -1
  store i32 %dec6, i32* %ir, align 4
  %cmp7 = icmp eq i32 %dec6, 1
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else
  %14 = load double, double* %rra, align 8
  %15 = load double*, double** %ra.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %15, i64 1
  store double %14, double* %arrayidx9, align 8
  ret void

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %16 = load i32, i32* %l, align 4
  store i32 %16, i32* %i, align 4
  %17 = load i32, i32* %l, align 4
  %shl = shl i32 %17, 1
  store i32 %shl, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.10
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %ir, align 4
  %cmp11 = icmp sle i32 %18, %19
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %ir, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %while.body
  %22 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load double*, double** %ra.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %23, i64 %idxprom13
  %24 = load double, double* %arrayidx14, align 8
  %25 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %25, 1
  %idxprom16 = sext i32 %add15 to i64
  %26 = load double*, double** %ra.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 %idxprom16
  %27 = load double, double* %arrayidx17, align 8
  %cmp18 = fcmp olt double %24, %27
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %land.lhs.true, %while.body
  %29 = load double, double* %rra, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load double*, double** %ra.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %31, i64 %idxprom21
  %32 = load double, double* %arrayidx22, align 8
  %cmp23 = fcmp olt double %29, %32
  br i1 %cmp23, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %if.end.20
  %33 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load double*, double** %ra.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %34, i64 %idxprom25
  %35 = load double, double* %arrayidx26, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load double*, double** %ra.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %37, i64 %idxprom27
  store double %35, double* %arrayidx28, align 8
  %38 = load i32, i32* %j, align 4
  store i32 %38, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  %add29 = add nsw i32 %39, %38
  store i32 %add29, i32* %j, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %if.end.20
  %40 = load i32, i32* %ir, align 4
  %add31 = add nsw i32 %40, 1
  store i32 %add31, i32* %j, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.24
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load double, double* %rra, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %42 to i64
  %43 = load double*, double** %ra.addr, align 8
  %arrayidx34 = getelementptr inbounds double, double* %43, i64 %idxprom33
  store double %41, double* %arrayidx34, align 8
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %N = alloca i32, align 4
  %ary = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 8000000, %cond.false ]
  store i32 %cond, i32* %N, align 4
  %3 = load i32, i32* %N, align 4
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call1 = call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast i8* %call1 to double*
  store double* %4, double** %ary, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %N, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call double @gen_random(double 1.000000e+00)
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** %ary, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 %idxprom
  store double %call4, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %N, align 4
  %11 = load double*, double** %ary, align 8
  call void @benchmark_heapsort(i32 %10, double* %11)
  %12 = load i32, i32* %N, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load double*, double** %ary, align 8
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom6
  %14 = load double, double* %arrayidx7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double %14)
  %15 = load double*, double** %ary, align 8
  %16 = bitcast double* %15 to i8*
  call void @free(i8* %16) #5
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
