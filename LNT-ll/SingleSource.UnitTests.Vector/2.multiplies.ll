; ModuleID = './SingleSource.UnitTests.Vector/2.multiplies.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IV = type { <4 x i32> }

@TheArray = common global [100000 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%u %u %u %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %Argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %Argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %V = alloca <16 x i8>, align 16
  %.compoundliteral = alloca <4 x i32>, align 16
  %AP = alloca <16 x i8>*, align 8
  %vu = alloca %union.IV, align 16
  %V20 = alloca <8 x i16>, align 16
  %.compoundliteral21 = alloca <4 x i32>, align 16
  %AP22 = alloca <8 x i16>*, align 8
  %vu23 = alloca %union.IV, align 16
  %V43 = alloca <4 x i32>, align 16
  %.compoundliteral44 = alloca <4 x i32>, align 16
  %AP45 = alloca <4 x i32>*, align 8
  %vu46 = alloca %union.IV, align 16
  %V66 = alloca <4 x i32>, align 16
  %.compoundliteral67 = alloca <4 x i32>, align 16
  %AP68 = alloca <4 x i32>*, align 8
  %vu69 = alloca %union.IV, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %Argv, i8*** %Argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = uitofp i32 %1 to double
  %mul = fmul double %conv, 1.234500e+01
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100000 x double], [100000 x double]* @TheArray, i32 0, i64 %idxprom
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store <4 x i32> zeroinitializer, <4 x i32>* %.compoundliteral
  %4 = load <4 x i32>, <4 x i32>* %.compoundliteral
  %5 = bitcast <4 x i32> %4 to <16 x i8>
  store <16 x i8> %5, <16 x i8>* %V, align 16
  store <16 x i8>* bitcast ([100000 x double]* @TheArray to <16 x i8>*), <16 x i8>** %AP, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.16, %for.end
  %6 = load i32, i32* %j, align 4
  %cmp2 = icmp ult i32 %6, 1000
  br i1 %cmp2, label %for.body.4, label %for.end.18

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.13, %for.body.4
  %7 = load i32, i32* %i, align 4
  %conv6 = zext i32 %7 to i64
  %cmp7 = icmp ne i64 %conv6, 50000
  br i1 %cmp7, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %i, align 4
  %idxprom10 = zext i32 %8 to i64
  %9 = load <16 x i8>*, <16 x i8>** %AP, align 8
  %arrayidx11 = getelementptr inbounds <16 x i8>, <16 x i8>* %9, i64 %idxprom10
  %10 = load <16 x i8>, <16 x i8>* %arrayidx11, align 16
  %11 = load <16 x i8>, <16 x i8>* %V, align 16
  %mul12 = mul <16 x i8> %11, %10
  store <16 x i8> %mul12, <16 x i8>* %V, align 16
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %12 = load i32, i32* %i, align 4
  %inc14 = add i32 %12, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.5

for.end.15:                                       ; preds = %for.cond.5
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %13 = load i32, i32* %j, align 4
  %inc17 = add i32 %13, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond.1

for.end.18:                                       ; preds = %for.cond.1
  %14 = load <16 x i8>, <16 x i8>* %V, align 16
  %15 = bitcast <16 x i8> %14 to <4 x i32>
  %V19 = bitcast %union.IV* %vu to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %V19, align 16
  call void @printIV(%union.IV* %vu)
  store <4 x i32> zeroinitializer, <4 x i32>* %.compoundliteral21
  %16 = load <4 x i32>, <4 x i32>* %.compoundliteral21
  %17 = bitcast <4 x i32> %16 to <8 x i16>
  store <8 x i16> %17, <8 x i16>* %V20, align 16
  store <8 x i16>* bitcast ([100000 x double]* @TheArray to <8 x i16>*), <8 x i16>** %AP22, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.39, %for.end.18
  %18 = load i32, i32* %j, align 4
  %cmp25 = icmp ult i32 %18, 1000
  br i1 %cmp25, label %for.body.27, label %for.end.41

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.36, %for.body.27
  %19 = load i32, i32* %i, align 4
  %conv29 = zext i32 %19 to i64
  %cmp30 = icmp ne i64 %conv29, 50000
  br i1 %cmp30, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.28
  %20 = load i32, i32* %i, align 4
  %idxprom33 = zext i32 %20 to i64
  %21 = load <8 x i16>*, <8 x i16>** %AP22, align 8
  %arrayidx34 = getelementptr inbounds <8 x i16>, <8 x i16>* %21, i64 %idxprom33
  %22 = load <8 x i16>, <8 x i16>* %arrayidx34, align 16
  %23 = load <8 x i16>, <8 x i16>* %V20, align 16
  %mul35 = mul <8 x i16> %23, %22
  store <8 x i16> %mul35, <8 x i16>* %V20, align 16
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %24 = load i32, i32* %i, align 4
  %inc37 = add i32 %24, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.28

for.end.38:                                       ; preds = %for.cond.28
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %25 = load i32, i32* %j, align 4
  %inc40 = add i32 %25, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.24

for.end.41:                                       ; preds = %for.cond.24
  %26 = load <8 x i16>, <8 x i16>* %V20, align 16
  %27 = bitcast <8 x i16> %26 to <4 x i32>
  %V42 = bitcast %union.IV* %vu23 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %V42, align 16
  call void @printIV(%union.IV* %vu23)
  store <4 x i32> zeroinitializer, <4 x i32>* %.compoundliteral44
  %28 = load <4 x i32>, <4 x i32>* %.compoundliteral44
  store <4 x i32> %28, <4 x i32>* %V43, align 16
  store <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), <4 x i32>** %AP45, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.62, %for.end.41
  %29 = load i32, i32* %j, align 4
  %cmp48 = icmp ult i32 %29, 1000
  br i1 %cmp48, label %for.body.50, label %for.end.64

for.body.50:                                      ; preds = %for.cond.47
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.59, %for.body.50
  %30 = load i32, i32* %i, align 4
  %conv52 = zext i32 %30 to i64
  %cmp53 = icmp ne i64 %conv52, 50000
  br i1 %cmp53, label %for.body.55, label %for.end.61

for.body.55:                                      ; preds = %for.cond.51
  %31 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %31 to i64
  %32 = load <4 x i32>*, <4 x i32>** %AP45, align 8
  %arrayidx57 = getelementptr inbounds <4 x i32>, <4 x i32>* %32, i64 %idxprom56
  %33 = load <4 x i32>, <4 x i32>* %arrayidx57, align 16
  %34 = load <4 x i32>, <4 x i32>* %V43, align 16
  %mul58 = mul <4 x i32> %34, %33
  store <4 x i32> %mul58, <4 x i32>* %V43, align 16
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.55
  %35 = load i32, i32* %i, align 4
  %inc60 = add i32 %35, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.51

for.end.61:                                       ; preds = %for.cond.51
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %36 = load i32, i32* %j, align 4
  %inc63 = add i32 %36, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.47

for.end.64:                                       ; preds = %for.cond.47
  %37 = load <4 x i32>, <4 x i32>* %V43, align 16
  %V65 = bitcast %union.IV* %vu46 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %V65, align 16
  call void @printIV(%union.IV* %vu46)
  store <4 x i32> zeroinitializer, <4 x i32>* %.compoundliteral67
  %38 = load <4 x i32>, <4 x i32>* %.compoundliteral67
  store <4 x i32> %38, <4 x i32>* %V66, align 16
  store <4 x i32>* bitcast ([100000 x double]* @TheArray to <4 x i32>*), <4 x i32>** %AP68, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.85, %for.end.64
  %39 = load i32, i32* %j, align 4
  %cmp71 = icmp ult i32 %39, 1000
  br i1 %cmp71, label %for.body.73, label %for.end.87

for.body.73:                                      ; preds = %for.cond.70
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.82, %for.body.73
  %40 = load i32, i32* %i, align 4
  %conv75 = zext i32 %40 to i64
  %cmp76 = icmp ne i64 %conv75, 50000
  br i1 %cmp76, label %for.body.78, label %for.end.84

for.body.78:                                      ; preds = %for.cond.74
  %41 = load i32, i32* %i, align 4
  %idxprom79 = zext i32 %41 to i64
  %42 = load <4 x i32>*, <4 x i32>** %AP68, align 8
  %arrayidx80 = getelementptr inbounds <4 x i32>, <4 x i32>* %42, i64 %idxprom79
  %43 = load <4 x i32>, <4 x i32>* %arrayidx80, align 16
  %44 = load <4 x i32>, <4 x i32>* %V66, align 16
  %mul81 = mul <4 x i32> %44, %43
  store <4 x i32> %mul81, <4 x i32>* %V66, align 16
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.78
  %45 = load i32, i32* %i, align 4
  %inc83 = add i32 %45, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.74

for.end.84:                                       ; preds = %for.cond.74
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %46 = load i32, i32* %j, align 4
  %inc86 = add i32 %46, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.70

for.end.87:                                       ; preds = %for.cond.70
  %47 = load <4 x i32>, <4 x i32>* %V66, align 16
  %V88 = bitcast %union.IV* %vu69 to <4 x i32>*
  store <4 x i32> %47, <4 x i32>* %V88, align 16
  call void @printIV(%union.IV* %vu69)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @printIV(%union.IV* %F) #0 {
entry:
  %F.addr = alloca %union.IV*, align 8
  store %union.IV* %F, %union.IV** %F.addr, align 8
  %0 = load %union.IV*, %union.IV** %F.addr, align 8
  %A = bitcast %union.IV* %0 to [4 x i32]*
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %A, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %union.IV*, %union.IV** %F.addr, align 8
  %A1 = bitcast %union.IV* %2 to [4 x i32]*
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %A1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load %union.IV*, %union.IV** %F.addr, align 8
  %A3 = bitcast %union.IV* %4 to [4 x i32]*
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %A3, i32 0, i64 2
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %union.IV*, %union.IV** %F.addr, align 8
  %A5 = bitcast %union.IV* %6 to [4 x i32]*
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %A5, i32 0, i64 3
  %7 = load i32, i32* %arrayidx6, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %1, i32 %3, i32 %5, i32 %7)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
