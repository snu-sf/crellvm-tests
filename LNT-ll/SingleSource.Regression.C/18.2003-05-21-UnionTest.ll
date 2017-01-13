; ModuleID = './SingleSource.Regression.C/18.2003-05-21-UnionTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @__signbit(double %__x) #0 {
entry:
  %__x.addr = alloca double, align 8
  %__u = alloca %union.anon, align 8
  store double %__x, double* %__x.addr, align 8
  %__d = bitcast %union.anon* %__u to double*
  %0 = load double, double* %__x.addr, align 8
  store double %0, double* %__d, align 8
  %__i = bitcast %union.anon* %__u to [3 x i32]*
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %__i, i32 0, i64 1
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @__signbit(double -1.000000e+00)
  %call1 = call i32 @__signbit(double 2.000000e+00)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %call, i32 %call1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
