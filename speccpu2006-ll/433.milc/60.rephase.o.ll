; ModuleID = 'rephase.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@nt = external global i32, align 4
@phases_in = external global i32, align 4
@this_node = external global i32, align 4
@.str = private unnamed_addr constant [33 x i8] c"DUMMY: you fouled up the phases\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @phaseset() #0 {
entry:
  %sit = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %sit, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.site*, %struct.site** %sit, align 8
  %phase = getelementptr inbounds %struct.site, %struct.site* %3, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %phase, i32 0, i64 3
  store double 1.000000e+00, double* %arrayidx, align 8
  %4 = load %struct.site*, %struct.site** %sit, align 8
  %t = getelementptr inbounds %struct.site, %struct.site* %4, i32 0, i32 3
  %5 = load i16, i16* %t, align 2
  %conv = sext i16 %5 to i32
  %rem = srem i32 %conv, 2
  %cmp1 = icmp eq i32 %rem, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct.site*, %struct.site** %sit, align 8
  %phase3 = getelementptr inbounds %struct.site, %struct.site* %6, i32 0, i32 10
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %phase3, i32 0, i64 0
  store double -1.000000e+00, double* %arrayidx4, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load %struct.site*, %struct.site** %sit, align 8
  %phase5 = getelementptr inbounds %struct.site, %struct.site* %7, i32 0, i32 10
  %arrayidx6 = getelementptr inbounds [4 x double], [4 x double]* %phase5, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.site*, %struct.site** %sit, align 8
  %x = getelementptr inbounds %struct.site, %struct.site* %8, i32 0, i32 0
  %9 = load i16, i16* %x, align 2
  %conv7 = sext i16 %9 to i32
  %rem8 = srem i32 %conv7, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.end
  %10 = load %struct.site*, %struct.site** %sit, align 8
  %phase12 = getelementptr inbounds %struct.site, %struct.site* %10, i32 0, i32 10
  %arrayidx13 = getelementptr inbounds [4 x double], [4 x double]* %phase12, i32 0, i64 0
  %11 = load double, double* %arrayidx13, align 8
  %sub = fsub double -0.000000e+00, %11
  %12 = load %struct.site*, %struct.site** %sit, align 8
  %phase14 = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 10
  %arrayidx15 = getelementptr inbounds [4 x double], [4 x double]* %phase14, i32 0, i64 1
  store double %sub, double* %arrayidx15, align 8
  br label %if.end.21

if.else.16:                                       ; preds = %if.end
  %13 = load %struct.site*, %struct.site** %sit, align 8
  %phase17 = getelementptr inbounds %struct.site, %struct.site* %13, i32 0, i32 10
  %arrayidx18 = getelementptr inbounds [4 x double], [4 x double]* %phase17, i32 0, i64 0
  %14 = load double, double* %arrayidx18, align 8
  %15 = load %struct.site*, %struct.site** %sit, align 8
  %phase19 = getelementptr inbounds %struct.site, %struct.site* %15, i32 0, i32 10
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %phase19, i32 0, i64 1
  store double %14, double* %arrayidx20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.then.11
  %16 = load %struct.site*, %struct.site** %sit, align 8
  %y = getelementptr inbounds %struct.site, %struct.site* %16, i32 0, i32 1
  %17 = load i16, i16* %y, align 2
  %conv22 = sext i16 %17 to i32
  %rem23 = srem i32 %conv22, 2
  %cmp24 = icmp eq i32 %rem23, 1
  br i1 %cmp24, label %if.then.26, label %if.else.32

if.then.26:                                       ; preds = %if.end.21
  %18 = load %struct.site*, %struct.site** %sit, align 8
  %phase27 = getelementptr inbounds %struct.site, %struct.site* %18, i32 0, i32 10
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %phase27, i32 0, i64 1
  %19 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double -0.000000e+00, %19
  %20 = load %struct.site*, %struct.site** %sit, align 8
  %phase30 = getelementptr inbounds %struct.site, %struct.site* %20, i32 0, i32 10
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %phase30, i32 0, i64 2
  store double %sub29, double* %arrayidx31, align 8
  br label %if.end.37

if.else.32:                                       ; preds = %if.end.21
  %21 = load %struct.site*, %struct.site** %sit, align 8
  %phase33 = getelementptr inbounds %struct.site, %struct.site* %21, i32 0, i32 10
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %phase33, i32 0, i64 1
  %22 = load double, double* %arrayidx34, align 8
  %23 = load %struct.site*, %struct.site** %sit, align 8
  %phase35 = getelementptr inbounds %struct.site, %struct.site* %23, i32 0, i32 10
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %phase35, i32 0, i64 2
  store double %22, double* %arrayidx36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.32, %if.then.26
  %24 = load %struct.site*, %struct.site** %sit, align 8
  %t38 = getelementptr inbounds %struct.site, %struct.site* %24, i32 0, i32 3
  %25 = load i16, i16* %t38, align 2
  %conv39 = sext i16 %25 to i32
  %26 = load i32, i32* @nt, align 4
  %sub40 = sub nsw i32 %26, 1
  %cmp41 = icmp eq i32 %conv39, %sub40
  br i1 %cmp41, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %if.end.37
  %27 = load %struct.site*, %struct.site** %sit, align 8
  %phase44 = getelementptr inbounds %struct.site, %struct.site* %27, i32 0, i32 10
  %arrayidx45 = getelementptr inbounds [4 x double], [4 x double]* %phase44, i32 0, i64 3
  %28 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double -0.000000e+00, %28
  %29 = load %struct.site*, %struct.site** %sit, align 8
  %phase47 = getelementptr inbounds %struct.site, %struct.site* %29, i32 0, i32 10
  %arrayidx48 = getelementptr inbounds [4 x double], [4 x double]* %phase47, i32 0, i64 3
  store double %sub46, double* %arrayidx48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.43, %if.end.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  %31 = load %struct.site*, %struct.site** %sit, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %31, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %sit, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @rephase(i32 %flag) #0 {
entry:
  %flag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dir = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @phases_in, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.end.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %flag.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.then

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* @phases_in, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.end.7, label %if.then

if.then:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  %4 = load i32, i32* @this_node, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  call void @terminate(i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %land.lhs.true.3, %land.lhs.true
  store i32 0, i32* %i, align 4
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %5, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %if.end.7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @sites_on_node, align 4
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.39, %for.body
  %8 = load i32, i32* %dir, align 4
  %cmp10 = icmp sle i32 %8, 3
  br i1 %cmp10, label %for.body.11, label %for.end.41

for.body.11:                                      ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.36, %for.body.11
  %9 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %9, 3
  br i1 %cmp13, label %for.body.14, label %for.end.38

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body.14
  %10 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %10, 3
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %11 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.site*, %struct.site** %s, align 8
  %phase = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 10
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %phase, i32 0, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load i32, i32* %dir, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %17, i32 0, i32 8
  %arrayidx21 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom20
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx21, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom19
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx22, i32 0, i64 %idxprom18
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 0
  %18 = load double, double* %real, align 8
  %mul = fmul double %18, %13
  store double %mul, double* %real, align 8
  %19 = load i32, i32* %dir, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load %struct.site*, %struct.site** %s, align 8
  %phase25 = getelementptr inbounds %struct.site, %struct.site* %20, i32 0, i32 10
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %phase25, i32 0, i64 %idxprom24
  %21 = load double, double* %arrayidx26, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %23 to i64
  %24 = load i32, i32* %dir, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct.site*, %struct.site** %s, align 8
  %link30 = getelementptr inbounds %struct.site, %struct.site* %25, i32 0, i32 8
  %arrayidx31 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link30, i32 0, i64 %idxprom29
  %e32 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e32, i32 0, i64 %idxprom28
  %arrayidx34 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx33, i32 0, i64 %idxprom27
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx34, i32 0, i32 1
  %26 = load double, double* %imag, align 8
  %mul35 = fmul double %26, %21
  store double %mul35, double* %imag, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond.12

for.end.38:                                       ; preds = %for.cond.12
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %29 = load i32, i32* %dir, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, i32* %dir, align 4
  br label %for.cond.9

for.end.41:                                       ; preds = %for.cond.9
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.end.41
  %30 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, i32* %i, align 4
  %31 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %31, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %32 = load i32, i32* %flag.addr, align 4
  store i32 %32, i32* @phases_in, align 4
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @terminate(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
