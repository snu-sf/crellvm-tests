; ModuleID = './MultiSource.Benchmarks.Olden/23.em3d.em3d.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }

@nonlocals = global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @compute_nodes(%struct.node_t* %nodelist) #0 {
entry:
  %nodelist.addr = alloca %struct.node_t*, align 8
  %i = alloca i32, align 4
  %localnode = alloca %struct.node_t*, align 8
  %cur_value = alloca double, align 8
  %from_count = alloca i32, align 4
  %other_value = alloca double*, align 8
  %coeff = alloca double, align 8
  %value = alloca double, align 8
  store %struct.node_t* %nodelist, %struct.node_t** %nodelist.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.36, %entry
  %0 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  %tobool = icmp ne %struct.node_t* %0, null
  br i1 %tobool, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %1 = load %struct.node_t*, %struct.node_t** %nodelist.addr, align 8
  store %struct.node_t* %1, %struct.node_t** %localnode, align 8
  %2 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %value1 = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i32 0, i32 0
  %3 = load double*, double** %value1, align 8
  %4 = load double, double* %3, align 8
  store double %4, double* %cur_value, align 8
  %5 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %from_count2 = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 5
  %6 = load i32, i32* %from_count2, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %from_count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %from_count, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %from_values = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 3
  %11 = load double**, double*** %from_values, align 8
  %arrayidx = getelementptr inbounds double*, double** %11, i64 %idxprom
  %12 = load double*, double** %arrayidx, align 8
  store double* %12, double** %other_value, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %coeffs = getelementptr inbounds %struct.node_t, %struct.node_t* %14, i32 0, i32 4
  %15 = load double*, double** %coeffs, align 8
  %arrayidx6 = getelementptr inbounds double, double* %15, i64 %idxprom5
  %16 = load double, double* %arrayidx6, align 8
  store double %16, double* %coeff, align 8
  %17 = load double*, double** %other_value, align 8
  %tobool7 = icmp ne double* %17, null
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %18 = load double*, double** %other_value, align 8
  %19 = load double, double* %18, align 8
  store double %19, double* %value, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.4
  store double 0.000000e+00, double* %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load double, double* %coeff, align 8
  %21 = load double, double* %value, align 8
  %mul = fmul double %20, %21
  %22 = load double, double* %cur_value, align 8
  %sub8 = fsub double %22, %mul
  store double %sub8, double* %cur_value, align 8
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %idxprom9 = sext i32 %add to i64
  %24 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %from_values10 = getelementptr inbounds %struct.node_t, %struct.node_t* %24, i32 0, i32 3
  %25 = load double**, double*** %from_values10, align 8
  %arrayidx11 = getelementptr inbounds double*, double** %25, i64 %idxprom9
  %26 = load double*, double** %arrayidx11, align 8
  store double* %26, double** %other_value, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %coeffs13 = getelementptr inbounds %struct.node_t, %struct.node_t* %28, i32 0, i32 4
  %29 = load double*, double** %coeffs13, align 8
  %arrayidx14 = getelementptr inbounds double, double* %29, i64 %idxprom12
  %30 = load double, double* %arrayidx14, align 8
  store double %30, double* %coeff, align 8
  %31 = load double*, double** %other_value, align 8
  %tobool15 = icmp ne double* %31, null
  br i1 %tobool15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.end
  %32 = load double*, double** %other_value, align 8
  %33 = load double, double* %32, align 8
  store double %33, double* %value, align 8
  br label %if.end.18

if.else.17:                                       ; preds = %if.end
  store double 0.000000e+00, double* %value, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  %34 = load double, double* %coeff, align 8
  %35 = load double, double* %value, align 8
  %mul19 = fmul double %34, %35
  %36 = load double, double* %cur_value, align 8
  %sub20 = fsub double %36, %mul19
  store double %sub20, double* %cur_value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %37 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %37, 2
  store i32 %add21, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %from_count, align 4
  %cmp22 = icmp eq i32 %38, %39
  br i1 %cmp22, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %40 to i64
  %41 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %from_values25 = getelementptr inbounds %struct.node_t, %struct.node_t* %41, i32 0, i32 3
  %42 = load double**, double*** %from_values25, align 8
  %arrayidx26 = getelementptr inbounds double*, double** %42, i64 %idxprom24
  %43 = load double*, double** %arrayidx26, align 8
  store double* %43, double** %other_value, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %44 to i64
  %45 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %coeffs28 = getelementptr inbounds %struct.node_t, %struct.node_t* %45, i32 0, i32 4
  %46 = load double*, double** %coeffs28, align 8
  %arrayidx29 = getelementptr inbounds double, double* %46, i64 %idxprom27
  %47 = load double, double* %arrayidx29, align 8
  store double %47, double* %coeff, align 8
  %48 = load double*, double** %other_value, align 8
  %tobool30 = icmp ne double* %48, null
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.then.23
  %49 = load double*, double** %other_value, align 8
  %50 = load double, double* %49, align 8
  store double %50, double* %value, align 8
  br label %if.end.33

if.else.32:                                       ; preds = %if.then.23
  store double 0.000000e+00, double* %value, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  %51 = load double, double* %coeff, align 8
  %52 = load double, double* %value, align 8
  %mul34 = fmul double %51, %52
  %53 = load double, double* %cur_value, align 8
  %sub35 = fsub double %53, %mul34
  store double %sub35, double* %cur_value, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.33, %for.end
  %54 = load double, double* %cur_value, align 8
  %55 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %value37 = getelementptr inbounds %struct.node_t, %struct.node_t* %55, i32 0, i32 0
  %56 = load double*, double** %value37, align 8
  store double %54, double* %56, align 8
  %57 = load %struct.node_t*, %struct.node_t** %localnode, align 8
  %next = getelementptr inbounds %struct.node_t, %struct.node_t* %57, i32 0, i32 1
  %58 = load %struct.node_t*, %struct.node_t** %next, align 8
  store %struct.node_t* %58, %struct.node_t** %nodelist.addr, align 8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
