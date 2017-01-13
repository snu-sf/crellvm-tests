; ModuleID = './MultiSource.Benchmarks.SciMark2-C/9.MonteCarlo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

; Function Attrs: nounwind uwtable
define double @MonteCarlo_num_flops(i32 %Num_samples) #0 {
entry:
  %Num_samples.addr = alloca i32, align 4
  store i32 %Num_samples, i32* %Num_samples.addr, align 4
  %0 = load i32, i32* %Num_samples.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 4.000000e+00
  ret double %mul
}

; Function Attrs: nounwind uwtable
define double @MonteCarlo_integrate(i32 %Num_samples) #0 {
entry:
  %Num_samples.addr = alloca i32, align 4
  %R = alloca %struct.Random_struct*, align 8
  %under_curve = alloca i32, align 4
  %count = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %Num_samples, i32* %Num_samples.addr, align 4
  %call = call %struct.Random_struct* @new_Random_seed(i32 113)
  store %struct.Random_struct* %call, %struct.Random_struct** %R, align 8
  store i32 0, i32* %under_curve, align 4
  store i32 0, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %count, align 4
  %1 = load i32, i32* %Num_samples.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call1 = call double @Random_nextDouble(%struct.Random_struct* %2)
  store double %call1, double* %x, align 8
  %3 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call2 = call double @Random_nextDouble(%struct.Random_struct* %3)
  store double %call2, double* %y, align 8
  %4 = load double, double* %x, align 8
  %5 = load double, double* %x, align 8
  %mul = fmul double %4, %5
  %6 = load double, double* %y, align 8
  %7 = load double, double* %y, align 8
  %mul3 = fmul double %6, %7
  %add = fadd double %mul, %mul3
  %cmp4 = fcmp ole double %add, 1.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %under_curve, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %under_curve, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %count, align 4
  %inc5 = add nsw i32 %9, 1
  store i32 %inc5, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  call void @Random_delete(%struct.Random_struct* %10)
  %11 = load i32, i32* %under_curve, align 4
  %conv = sitofp i32 %11 to double
  %12 = load i32, i32* %Num_samples.addr, align 4
  %conv6 = sitofp i32 %12 to double
  %div = fdiv double %conv, %conv6
  %mul7 = fmul double %div, 4.000000e+00
  ret double %mul7
}

declare %struct.Random_struct* @new_Random_seed(i32) #1

declare double @Random_nextDouble(%struct.Random_struct*) #1

declare void @Random_delete(%struct.Random_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
