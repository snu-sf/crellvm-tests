; ModuleID = './SingleSource.UnitTests.Vector/11.simple.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }
%union.DV = type { <2 x double> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%g %g\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %Argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %Argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %X = alloca float, align 4
  %Y = alloca float, align 4
  %Z = alloca float, align 4
  %U = alloca double, align 8
  %V = alloca double, align 8
  %Af = alloca %union.FV, align 16
  %Bf = alloca %union.FV, align 16
  %Cf = alloca %union.FV, align 16
  %Df = alloca %union.FV, align 16
  %Ad = alloca %union.DV, align 16
  %Bd = alloca %union.DV, align 16
  %.compoundliteral = alloca <4 x float>, align 16
  %.compoundliteral18 = alloca <4 x float>, align 16
  %.compoundliteral27 = alloca <4 x float>, align 16
  %.compoundliteral37 = alloca <4 x float>, align 16
  %.compoundliteral47 = alloca <2 x double>, align 16
  %.compoundliteral55 = alloca <2 x double>, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %Argv, i8*** %Argv.addr, align 8
  store float 0x3FF3BE76C0000000, float* %X, align 4
  store float 0x4023C08320000000, float* %Y, align 4
  store float 0x3FF1C6A7E0000000, float* %Z, align 4
  store double 8.731834e+02, double* %U, align 8
  store double 0x409CCB9C779A6B51, double* %V, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1123
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0x40030E9A20000000, float* %X, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp eq i32 %1, 1432
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store float 0x401EE0B780000000, float* %Y, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %argc.addr, align 4
  %cmp4 = icmp eq i32 %2, 2123
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store double 3.282190e+01, double* %U, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %3 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp eq i32 %3, 5123
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store double 7.779980e+01, double* %V, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %4 = load i32, i32* %i, align 4
  %cmp10 = icmp ult i32 %4, 500000
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float, float* %X, align 4
  %vecinit = insertelement <4 x float> undef, float %5, i32 0
  %6 = load float, float* %X, align 4
  %vecinit11 = insertelement <4 x float> %vecinit, float %6, i32 1
  %7 = load float, float* %X, align 4
  %vecinit12 = insertelement <4 x float> %vecinit11, float %7, i32 2
  %8 = load float, float* %X, align 4
  %vecinit13 = insertelement <4 x float> %vecinit12, float %8, i32 3
  store <4 x float> %vecinit13, <4 x float>* %.compoundliteral
  %9 = load <4 x float>, <4 x float>* %.compoundliteral
  %V14 = bitcast %union.FV* %Af to <4 x float>*
  store <4 x float> %9, <4 x float>* %V14, align 16
  %V15 = bitcast %union.FV* %Af to <4 x float>*
  %10 = load <4 x float>, <4 x float>* %V15, align 16
  %V16 = bitcast %union.FV* %Af to <4 x float>*
  %11 = load <4 x float>, <4 x float>* %V16, align 16
  %mul = fmul <4 x float> %10, %11
  %V17 = bitcast %union.FV* %Af to <4 x float>*
  store <4 x float> %mul, <4 x float>* %V17, align 16
  %12 = load float, float* %X, align 4
  %vecinit19 = insertelement <4 x float> undef, float %12, i32 0
  %13 = load float, float* %X, align 4
  %vecinit20 = insertelement <4 x float> %vecinit19, float %13, i32 1
  %vecinit21 = insertelement <4 x float> %vecinit20, float 0.000000e+00, i32 2
  %vecinit22 = insertelement <4 x float> %vecinit21, float 0.000000e+00, i32 3
  store <4 x float> %vecinit22, <4 x float>* %.compoundliteral18
  %14 = load <4 x float>, <4 x float>* %.compoundliteral18
  %V23 = bitcast %union.FV* %Bf to <4 x float>*
  store <4 x float> %14, <4 x float>* %V23, align 16
  %V24 = bitcast %union.FV* %Bf to <4 x float>*
  %15 = load <4 x float>, <4 x float>* %V24, align 16
  %V25 = bitcast %union.FV* %Bf to <4 x float>*
  %16 = load <4 x float>, <4 x float>* %V25, align 16
  %add = fadd <4 x float> %15, %16
  %V26 = bitcast %union.FV* %Bf to <4 x float>*
  store <4 x float> %add, <4 x float>* %V26, align 16
  %17 = load float, float* %X, align 4
  %vecinit28 = insertelement <4 x float> undef, float %17, i32 0
  %18 = load float, float* %X, align 4
  %vecinit29 = insertelement <4 x float> %vecinit28, float %18, i32 1
  %19 = load float, float* %Y, align 4
  %vecinit30 = insertelement <4 x float> %vecinit29, float %19, i32 2
  %20 = load float, float* %Y, align 4
  %vecinit31 = insertelement <4 x float> %vecinit30, float %20, i32 3
  store <4 x float> %vecinit31, <4 x float>* %.compoundliteral27
  %21 = load <4 x float>, <4 x float>* %.compoundliteral27
  %V32 = bitcast %union.FV* %Cf to <4 x float>*
  store <4 x float> %21, <4 x float>* %V32, align 16
  %V33 = bitcast %union.FV* %Cf to <4 x float>*
  %22 = load <4 x float>, <4 x float>* %V33, align 16
  %V34 = bitcast %union.FV* %Cf to <4 x float>*
  %23 = load <4 x float>, <4 x float>* %V34, align 16
  %add35 = fadd <4 x float> %22, %23
  %V36 = bitcast %union.FV* %Cf to <4 x float>*
  store <4 x float> %add35, <4 x float>* %V36, align 16
  %24 = load float, float* %Y, align 4
  %vecinit38 = insertelement <4 x float> undef, float %24, i32 0
  %25 = load float, float* %Y, align 4
  %vecinit39 = insertelement <4 x float> %vecinit38, float %25, i32 1
  %26 = load float, float* %Z, align 4
  %vecinit40 = insertelement <4 x float> %vecinit39, float %26, i32 2
  %27 = load float, float* %Z, align 4
  %vecinit41 = insertelement <4 x float> %vecinit40, float %27, i32 3
  store <4 x float> %vecinit41, <4 x float>* %.compoundliteral37
  %28 = load <4 x float>, <4 x float>* %.compoundliteral37
  %V42 = bitcast %union.FV* %Df to <4 x float>*
  store <4 x float> %28, <4 x float>* %V42, align 16
  %V43 = bitcast %union.FV* %Df to <4 x float>*
  %29 = load <4 x float>, <4 x float>* %V43, align 16
  %V44 = bitcast %union.FV* %Df to <4 x float>*
  %30 = load <4 x float>, <4 x float>* %V44, align 16
  %add45 = fadd <4 x float> %29, %30
  %V46 = bitcast %union.FV* %Df to <4 x float>*
  store <4 x float> %add45, <4 x float>* %V46, align 16
  %31 = load double, double* %U, align 8
  %vecinit48 = insertelement <2 x double> undef, double %31, i32 0
  %32 = load double, double* %U, align 8
  %vecinit49 = insertelement <2 x double> %vecinit48, double %32, i32 1
  store <2 x double> %vecinit49, <2 x double>* %.compoundliteral47
  %33 = load <2 x double>, <2 x double>* %.compoundliteral47
  %V50 = bitcast %union.DV* %Ad to <2 x double>*
  store <2 x double> %33, <2 x double>* %V50, align 16
  %V51 = bitcast %union.DV* %Ad to <2 x double>*
  %34 = load <2 x double>, <2 x double>* %V51, align 16
  %V52 = bitcast %union.DV* %Ad to <2 x double>*
  %35 = load <2 x double>, <2 x double>* %V52, align 16
  %add53 = fadd <2 x double> %34, %35
  %V54 = bitcast %union.DV* %Ad to <2 x double>*
  store <2 x double> %add53, <2 x double>* %V54, align 16
  %36 = load double, double* %U, align 8
  %vecinit56 = insertelement <2 x double> undef, double %36, i32 0
  %37 = load double, double* %V, align 8
  %vecinit57 = insertelement <2 x double> %vecinit56, double %37, i32 1
  store <2 x double> %vecinit57, <2 x double>* %.compoundliteral55
  %38 = load <2 x double>, <2 x double>* %.compoundliteral55
  %V58 = bitcast %union.DV* %Bd to <2 x double>*
  store <2 x double> %38, <2 x double>* %V58, align 16
  %V59 = bitcast %union.DV* %Bd to <2 x double>*
  %39 = load <2 x double>, <2 x double>* %V59, align 16
  %V60 = bitcast %union.DV* %Bd to <2 x double>*
  %40 = load <2 x double>, <2 x double>* %V60, align 16
  %add61 = fadd <2 x double> %39, %40
  %V62 = bitcast %union.DV* %Bd to <2 x double>*
  store <2 x double> %add61, <2 x double>* %V62, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @printFV(%union.FV* %Af)
  call void @printFV(%union.FV* %Bf)
  call void @printFV(%union.FV* %Cf)
  call void @printFV(%union.FV* %Df)
  call void @printDV(%union.DV* %Ad)
  call void @printDV(%union.DV* %Bd)
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

; Function Attrs: nounwind uwtable
define internal void @printDV(%union.DV* %D) #0 {
entry:
  %D.addr = alloca %union.DV*, align 8
  store %union.DV* %D, %union.DV** %D.addr, align 8
  %0 = load %union.DV*, %union.DV** %D.addr, align 8
  %A = bitcast %union.DV* %0 to [2 x double]*
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %A, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load %union.DV*, %union.DV** %D.addr, align 8
  %A1 = bitcast %union.DV* %2 to [2 x double]*
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %A1, i32 0, i64 1
  %3 = load double, double* %arrayidx2, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double %1, double %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
