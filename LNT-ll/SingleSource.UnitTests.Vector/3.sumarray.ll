; ModuleID = './SingleSource.UnitTests.Vector/3.sumarray.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <4 x float>] }
%union.FV = type { <4 x float> }

@TheArray = common global %union.Array zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca <4 x float>, align 16
  %sumFV = alloca %union.FV, align 16
  store i32 0, i32* %retval
  store <4 x float> zeroinitializer, <4 x float>* %sum, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to float
  %mul = fmul float %conv, 0x4028B0A3E0000000
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [400 x float], [400 x float]* bitcast (%union.Array* @TheArray to [400 x float]*), i32 0, i64 %idxprom
  store float %mul, float* %arrayidx, align 4
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
  %arrayidx6 = getelementptr inbounds [100 x <4 x float>], [100 x <4 x float>]* getelementptr inbounds (%union.Array, %union.Array* @TheArray, i32 0, i32 0), i32 0, i64 %idxprom5
  %6 = load <4 x float>, <4 x float>* %arrayidx6, align 16
  %7 = load <4 x float>, <4 x float>* %sum, align 16
  %add = fadd <4 x float> %7, %6
  store <4 x float> %add, <4 x float>* %sum, align 16
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.1

for.end.9:                                        ; preds = %for.cond.1
  %9 = load <4 x float>, <4 x float>* %sum, align 16
  %V = bitcast %union.FV* %sumFV to <4 x float>*
  store <4 x float> %9, <4 x float>* %V, align 16
  call void @printFV(%union.FV* %sumFV)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @printFV(%union.FV* %F) #0 {
entry:
  %F.addr = alloca %union.FV*, align 8
  store %union.FV* %F, %union.FV** %F.addr, align 8
  %0 = load %union.FV*, %union.FV** %F.addr, align 8
  %A = bitcast %union.FV* %0 to [4 x float]*
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %A, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4
  %conv = fpext float %1 to double
  %2 = load %union.FV*, %union.FV** %F.addr, align 8
  %A1 = bitcast %union.FV* %2 to [4 x float]*
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %A1, i32 0, i64 1
  %3 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %3 to double
  %4 = load %union.FV*, %union.FV** %F.addr, align 8
  %A4 = bitcast %union.FV* %4 to [4 x float]*
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %A4, i32 0, i64 2
  %5 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %5 to double
  %6 = load %union.FV*, %union.FV** %F.addr, align 8
  %A7 = bitcast %union.FV* %6 to [4 x float]*
  %arrayidx8 = getelementptr inbounds [4 x float], [4 x float]* %A7, i32 0, i64 3
  %7 = load float, float* %arrayidx8, align 4
  %conv9 = fpext float %7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %conv, double %conv3, double %conv6, double %conv9)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
