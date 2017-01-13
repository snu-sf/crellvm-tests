; ModuleID = './SingleSource.UnitTests.Vector/4.build.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %Argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %Argv.addr = alloca i8**, align 8
  %X = alloca float, align 4
  %A = alloca %union.FV, align 16
  %.compoundliteral = alloca <4 x float>, align 16
  %.compoundliteral7 = alloca <4 x float>, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %Argv, i8*** %Argv.addr, align 8
  store float 0x3FF3BE76C0000000, float* %X, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0x40030E9A20000000, float* %X, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load float, float* %X, align 4
  %vecinit = insertelement <4 x float> undef, float %1, i32 0
  %2 = load float, float* %X, align 4
  %vecinit1 = insertelement <4 x float> %vecinit, float %2, i32 1
  %3 = load float, float* %X, align 4
  %vecinit2 = insertelement <4 x float> %vecinit1, float %3, i32 2
  %4 = load float, float* %X, align 4
  %vecinit3 = insertelement <4 x float> %vecinit2, float %4, i32 3
  store <4 x float> %vecinit3, <4 x float>* %.compoundliteral
  %5 = load <4 x float>, <4 x float>* %.compoundliteral
  %V = bitcast %union.FV* %A to <4 x float>*
  store <4 x float> %5, <4 x float>* %V, align 16
  call void @printFV(%union.FV* %A)
  %V4 = bitcast %union.FV* %A to <4 x float>*
  %6 = load <4 x float>, <4 x float>* %V4, align 16
  %V5 = bitcast %union.FV* %A to <4 x float>*
  %7 = load <4 x float>, <4 x float>* %V5, align 16
  %mul = fmul <4 x float> %6, %7
  %V6 = bitcast %union.FV* %A to <4 x float>*
  store <4 x float> %mul, <4 x float>* %V6, align 16
  call void @printFV(%union.FV* %A)
  %8 = load float, float* %X, align 4
  %vecinit8 = insertelement <4 x float> undef, float %8, i32 0
  %9 = load float, float* %X, align 4
  %vecinit9 = insertelement <4 x float> %vecinit8, float %9, i32 1
  %vecinit10 = insertelement <4 x float> %vecinit9, float 0.000000e+00, i32 2
  %vecinit11 = insertelement <4 x float> %vecinit10, float 0.000000e+00, i32 3
  store <4 x float> %vecinit11, <4 x float>* %.compoundliteral7
  %10 = load <4 x float>, <4 x float>* %.compoundliteral7
  %V12 = bitcast %union.FV* %A to <4 x float>*
  store <4 x float> %10, <4 x float>* %V12, align 16
  call void @printFV(%union.FV* %A)
  %V13 = bitcast %union.FV* %A to <4 x float>*
  %11 = load <4 x float>, <4 x float>* %V13, align 16
  %V14 = bitcast %union.FV* %A to <4 x float>*
  %12 = load <4 x float>, <4 x float>* %V14, align 16
  %add = fadd <4 x float> %11, %12
  %V15 = bitcast %union.FV* %A to <4 x float>*
  store <4 x float> %add, <4 x float>* %V15, align 16
  call void @printFV(%union.FV* %A)
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
