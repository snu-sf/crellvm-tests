; ModuleID = './SingleSource.UnitTests.Vector/1.sumarray-dbl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <8 x double>] }
%union.D8V = type { <8 x double> }

@TheArray = common global %union.Array zeroinitializer, align 64
@.str = private unnamed_addr constant [25 x i8] c"%g %g %g %g %g %g %g %g\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca <8 x double>, align 64
  %sumV = alloca %union.D8V, align 64
  store i32 0, i32* %retval
  store <8 x double> zeroinitializer, <8 x double>* %sum, align 64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 800
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 1.234500e+01
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [800 x double], [800 x double]* bitcast (%union.Array* @TheArray to [800 x double]*), i32 0, i64 %idxprom
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.7, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 100
  br i1 %cmp2, label %for.body.4, label %for.end.9

for.body.4:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [100 x <8 x double>], [100 x <8 x double>]* getelementptr inbounds (%union.Array, %union.Array* @TheArray, i32 0, i32 0), i32 0, i64 %idxprom5
  %6 = load <8 x double>, <8 x double>* %arrayidx6, align 64
  %7 = load <8 x double>, <8 x double>* %sum, align 64
  %add = fadd <8 x double> %7, %6
  store <8 x double> %add, <8 x double>* %sum, align 64
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.1

for.end.9:                                        ; preds = %for.cond.1
  %9 = load <8 x double>, <8 x double>* %sum, align 64
  %V = bitcast %union.D8V* %sumV to <8 x double>*
  store <8 x double> %9, <8 x double>* %V, align 64
  call void @printD8V(%union.D8V* %sumV)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @printD8V(%union.D8V* %D) #0 {
entry:
  %D.addr = alloca %union.D8V*, align 8
  store %union.D8V* %D, %union.D8V** %D.addr, align 8
  %0 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A = bitcast %union.D8V* %0 to [8 x double]*
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %A, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A1 = bitcast %union.D8V* %2 to [8 x double]*
  %arrayidx2 = getelementptr inbounds [8 x double], [8 x double]* %A1, i32 0, i64 1
  %3 = load double, double* %arrayidx2, align 8
  %4 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A3 = bitcast %union.D8V* %4 to [8 x double]*
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %A3, i32 0, i64 2
  %5 = load double, double* %arrayidx4, align 8
  %6 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A5 = bitcast %union.D8V* %6 to [8 x double]*
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %A5, i32 0, i64 3
  %7 = load double, double* %arrayidx6, align 8
  %8 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A7 = bitcast %union.D8V* %8 to [8 x double]*
  %arrayidx8 = getelementptr inbounds [8 x double], [8 x double]* %A7, i32 0, i64 4
  %9 = load double, double* %arrayidx8, align 8
  %10 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A9 = bitcast %union.D8V* %10 to [8 x double]*
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %A9, i32 0, i64 5
  %11 = load double, double* %arrayidx10, align 8
  %12 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A11 = bitcast %union.D8V* %12 to [8 x double]*
  %arrayidx12 = getelementptr inbounds [8 x double], [8 x double]* %A11, i32 0, i64 6
  %13 = load double, double* %arrayidx12, align 8
  %14 = load %union.D8V*, %union.D8V** %D.addr, align 8
  %A13 = bitcast %union.D8V* %14 to [8 x double]*
  %arrayidx14 = getelementptr inbounds [8 x double], [8 x double]* %A13, i32 0, i64 7
  %15 = load double, double* %arrayidx14, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), double %1, double %3, double %5, double %7, double %9, double %11, double %13, double %15)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
