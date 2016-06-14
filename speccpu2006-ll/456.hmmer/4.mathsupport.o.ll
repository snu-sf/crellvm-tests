; ModuleID = 'mathsupport.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@ILogsum.firsttime = internal global i32 1, align 4
@ilogsum_lookup = internal global [20000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [46 x i8] c"Invalid argument alpha < 0.0 to SampleGamma()\00", align 1

; Function Attrs: nounwind uwtable
define i32 @Prob2Score(float %p, float %null) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca float, align 4
  %null.addr = alloca float, align 4
  store float %p, float* %p.addr, align 4
  store float %null, float* %null.addr, align 4
  %0 = load float, float* %p.addr, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -987654321, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load float, float* %p.addr, align 4
  %2 = load float, float* %null.addr, align 4
  %div = fdiv float %1, %2
  %cmp2 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %3 = load float, float* %p.addr, align 4
  %4 = load float, float* %null.addr, align 4
  %div4 = fdiv float %3, %4
  %conv5 = fpext float %div4 to double
  %call = call double @log(double %conv5) #4
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul, %cond.true ], [ -9.999000e+03, %cond.false ]
  %mul6 = fmul double 1.000000e+03, %cond
  %add = fadd double 5.000000e-01, %mul6
  %call7 = call double @floor(double %add) #5
  %conv8 = fptosi double %call7 to i32
  store i32 %conv8, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define float @Score2Prob(i32 %sc, float %null) #0 {
entry:
  %retval = alloca float, align 4
  %sc.addr = alloca i32, align 4
  %null.addr = alloca float, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store float %null, float* %null.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %cmp = icmp eq i32 %0, -987654321
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load float, float* %null.addr, align 4
  %conv = fpext float %1 to double
  %2 = load i32, i32* %sc.addr, align 4
  %conv1 = sitofp i32 %2 to float
  %conv2 = fpext float %conv1 to double
  %div = fdiv double %conv2, 1.000000e+03
  %mul = fmul double %div, 0x3FE62E42FEAD449C
  %call = call double @exp(double %mul) #4
  %mul3 = fmul double %conv, %call
  %conv4 = fptrunc double %mul3 to float
  store float %conv4, float* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load float, float* %retval
  ret float %3
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind uwtable
define float @Scorify(i32 %sc) #0 {
entry:
  %sc.addr = alloca i32, align 4
  store i32 %sc, i32* %sc.addr, align 4
  %0 = load i32, i32* %sc.addr, align 4
  %conv = sitofp i32 %0 to float
  %conv1 = fpext float %conv to double
  %div = fdiv double %conv1, 1.000000e+03
  %conv2 = fptrunc double %div to float
  ret float %conv2
}

; Function Attrs: nounwind uwtable
define double @PValue(%struct.plan7_s* %hmm, float %sc) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %sc.addr = alloca float, align 4
  %pval = alloca double, align 8
  %pval2 = alloca double, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store float %sc, float* %sc.addr, align 4
  %0 = load float, float* %sc.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @log(double 0x7FEFFFFFFFFFFFFF) #4
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  %cmp = fcmp oge double %conv, %mul
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %pval, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %1 = load float, float* %sc.addr, align 4
  %conv2 = fpext float %1 to double
  %call3 = call double @log(double 0x7FEFFFFFFFFFFFFF) #4
  %mul4 = fmul double %call3, 0x3FF7154764EE6C2F
  %mul5 = fmul double -1.000000e+00, %mul4
  %cmp6 = fcmp ole double %conv2, %mul5
  br i1 %cmp6, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store double 1.000000e+00, double* %pval, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  %2 = load float, float* %sc.addr, align 4
  %conv10 = fpext float %2 to double
  %mul11 = fmul double %conv10, 0x3FE62E42FEAD449C
  %call12 = call double @exp(double %mul11) #4
  %add = fadd double 1.000000e+00, %call12
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %pval, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %3 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %cmp14 = icmp ne %struct.plan7_s* %3, null
  br i1 %cmp14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.13
  %4 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %flags = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %4, i32 0, i32 47
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %land.lhs.true
  %6 = load float, float* %sc.addr, align 4
  %7 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mu = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %7, i32 0, i32 45
  %8 = load float, float* %mu, align 4
  %9 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %lambda = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %9, i32 0, i32 46
  %10 = load float, float* %lambda, align 4
  %call17 = call double @ExtremeValueP(float %6, float %8, float %10)
  store double %call17, double* %pval2, align 8
  %11 = load double, double* %pval2, align 8
  %12 = load double, double* %pval, align 8
  %cmp18 = fcmp olt double %11, %12
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.16
  %13 = load double, double* %pval2, align 8
  store double %13, double* %pval, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %if.end.13
  %14 = load double, double* %pval, align 8
  ret double %14
}

declare double @ExtremeValueP(float, float, float) #3

; Function Attrs: nounwind uwtable
define float @LogSum(float %p1, float %p2) #0 {
entry:
  %retval = alloca float, align 4
  %p1.addr = alloca float, align 4
  %p2.addr = alloca float, align 4
  store float %p1, float* %p1.addr, align 4
  store float %p2, float* %p2.addr, align 4
  %0 = load float, float* %p1.addr, align 4
  %1 = load float, float* %p2.addr, align 4
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, float* %p1.addr, align 4
  %3 = load float, float* %p2.addr, align 4
  %sub = fsub float %2, %3
  %conv = fpext float %sub to double
  %cmp1 = fcmp ogt double %conv, 5.000000e+01
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load float, float* %p1.addr, align 4
  %conv3 = fpext float %4 to double
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load float, float* %p1.addr, align 4
  %conv4 = fpext float %5 to double
  %6 = load float, float* %p2.addr, align 4
  %7 = load float, float* %p1.addr, align 4
  %sub5 = fsub float %6, %7
  %conv6 = fpext float %sub5 to double
  %call = call double @exp(double %conv6) #4
  %add = fadd double 1.000000e+00, %call
  %call7 = call double @log(double %add) #4
  %add8 = fadd double %conv4, %call7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv3, %cond.true ], [ %add8, %cond.false ]
  %conv9 = fptrunc double %cond to float
  store float %conv9, float* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load float, float* %p2.addr, align 4
  %9 = load float, float* %p1.addr, align 4
  %sub10 = fsub float %8, %9
  %conv11 = fpext float %sub10 to double
  %cmp12 = fcmp ogt double %conv11, 5.000000e+01
  br i1 %cmp12, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %if.else
  %10 = load float, float* %p2.addr, align 4
  %conv15 = fpext float %10 to double
  br label %cond.end.24

cond.false.16:                                    ; preds = %if.else
  %11 = load float, float* %p2.addr, align 4
  %conv17 = fpext float %11 to double
  %12 = load float, float* %p1.addr, align 4
  %13 = load float, float* %p2.addr, align 4
  %sub18 = fsub float %12, %13
  %conv19 = fpext float %sub18 to double
  %call20 = call double @exp(double %conv19) #4
  %add21 = fadd double 1.000000e+00, %call20
  %call22 = call double @log(double %add21) #4
  %add23 = fadd double %conv17, %call22
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.16, %cond.true.14
  %cond25 = phi double [ %conv15, %cond.true.14 ], [ %add23, %cond.false.16 ]
  %conv26 = fptrunc double %cond25 to float
  store float %conv26, float* %retval
  br label %return

return:                                           ; preds = %cond.end.24, %cond.end
  %14 = load float, float* %retval
  ret float %14
}

; Function Attrs: nounwind uwtable
define i32 @ILogsum(i32 %p1, i32 %p2) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  %0 = load i32, i32* @ILogsum.firsttime, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @init_ilogsum()
  store i32 0, i32* @ILogsum.firsttime, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %p1.addr, align 4
  %2 = load i32, i32* %p2.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %diff, align 4
  %3 = load i32, i32* %diff, align 4
  %cmp = icmp sge i32 %3, 20000
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load i32, i32* %p1.addr, align 4
  store i32 %4, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load i32, i32* %diff, align 4
  %cmp2 = icmp sle i32 %5, -20000
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load i32, i32* %p2.addr, align 4
  store i32 %6, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %7 = load i32, i32* %diff, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.4
  %8 = load i32, i32* %p1.addr, align 4
  %9 = load i32, i32* %diff, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %8, %10
  store i32 %add, i32* %retval
  br label %return

if.else.7:                                        ; preds = %if.else.4
  %11 = load i32, i32* %p2.addr, align 4
  %12 = load i32, i32* %diff, align 4
  %sub8 = sub nsw i32 0, %12
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i32 0, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  %add11 = add nsw i32 %11, %13
  store i32 %add11, i32* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then.3, %if.then.1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal void @init_ilogsum() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %sub = sub nsw i32 0, %1
  %conv = sitofp i32 %sub to float
  %conv1 = fpext float %conv to double
  %mul = fmul double 0x3FE62E42FEAD449C, %conv1
  %div = fdiv double %mul, 1.000000e+03
  %call = call double @exp(double %div) #4
  %add = fadd double 1.000000e+00, %call
  %call2 = call double @log(double %add) #4
  %mul3 = fmul double 0x40968AC7B890D5A6, %call2
  %conv4 = fptosi double %mul3 to i32
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], [20000 x i32]* @ilogsum_lookup, i32 0, i64 %idxprom
  store i32 %conv4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @LogNorm(float* %vec, i32 %n) #0 {
entry:
  %vec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %max = alloca float, align 4
  %denom = alloca float, align 4
  store float* %vec, float** %vec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float 0xC6293E5940000000, float* %max, align 4
  store float 0.000000e+00, float* %denom, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %vec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %max, align 4
  %cmp1 = fcmp ogt float %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load float*, float** %vec.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 %idxprom2
  %8 = load float, float* %arrayidx3, align 4
  store float %8, float* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.20, %for.end
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body.6, label %for.end.22

for.body.6:                                       ; preds = %for.cond.4
  %12 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load float*, float** %vec.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %13, i64 %idxprom7
  %14 = load float, float* %arrayidx8, align 4
  %conv = fpext float %14 to double
  %15 = load float, float* %max, align 4
  %conv9 = fpext float %15 to double
  %sub = fsub double %conv9, 5.000000e+01
  %cmp10 = fcmp ogt double %conv, %sub
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %for.body.6
  %16 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load float*, float** %vec.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %17, i64 %idxprom13
  %18 = load float, float* %arrayidx14, align 4
  %19 = load float, float* %max, align 4
  %sub15 = fsub float %18, %19
  %conv16 = fpext float %sub15 to double
  %call = call double @exp(double %conv16) #4
  %20 = load float, float* %denom, align 4
  %conv17 = fpext float %20 to double
  %add = fadd double %conv17, %call
  %conv18 = fptrunc double %add to float
  store float %conv18, float* %denom, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %for.body.6
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %21 = load i32, i32* %x, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %x, align 4
  br label %for.cond.4

for.end.22:                                       ; preds = %for.cond.4
  store i32 0, i32* %x, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.47, %for.end.22
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body.26, label %for.end.49

for.body.26:                                      ; preds = %for.cond.23
  %24 = load i32, i32* %x, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load float*, float** %vec.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %25, i64 %idxprom27
  %26 = load float, float* %arrayidx28, align 4
  %conv29 = fpext float %26 to double
  %27 = load float, float* %max, align 4
  %conv30 = fpext float %27 to double
  %sub31 = fsub double %conv30, 5.000000e+01
  %cmp32 = fcmp ogt double %conv29, %sub31
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body.26
  %28 = load i32, i32* %x, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load float*, float** %vec.addr, align 8
  %arrayidx36 = getelementptr inbounds float, float* %29, i64 %idxprom35
  %30 = load float, float* %arrayidx36, align 4
  %31 = load float, float* %max, align 4
  %sub37 = fsub float %30, %31
  %conv38 = fpext float %sub37 to double
  %call39 = call double @exp(double %conv38) #4
  %32 = load float, float* %denom, align 4
  %conv40 = fpext float %32 to double
  %div = fdiv double %call39, %conv40
  %conv41 = fptrunc double %div to float
  %33 = load i32, i32* %x, align 4
  %idxprom42 = sext i32 %33 to i64
  %34 = load float*, float** %vec.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %34, i64 %idxprom42
  store float %conv41, float* %arrayidx43, align 4
  br label %if.end.46

if.else:                                          ; preds = %for.body.26
  %35 = load i32, i32* %x, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load float*, float** %vec.addr, align 8
  %arrayidx45 = getelementptr inbounds float, float* %36, i64 %idxprom44
  store float 0.000000e+00, float* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.34
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %37 = load i32, i32* %x, align 4
  %inc48 = add nsw i32 %37, 1
  store i32 %inc48, i32* %x, align 4
  br label %for.cond.23

for.end.49:                                       ; preds = %for.cond.23
  ret void
}

; Function Attrs: nounwind uwtable
define float @Logp_cvec(float* %cvec, i32 %n, float* %alpha) #0 {
entry:
  %cvec.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %lnp = alloca float, align 4
  %sum1 = alloca float, align 4
  %sum2 = alloca float, align 4
  %sum3 = alloca float, align 4
  %x = alloca i32, align 4
  store float* %cvec, float** %cvec.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float 0.000000e+00, float* %lnp, align 4
  store float 0.000000e+00, float* %sum3, align 4
  store float 0.000000e+00, float* %sum2, align 4
  store float 0.000000e+00, float* %sum1, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %cvec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %alpha.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %add = fadd float %4, %7
  %8 = load float, float* %sum1, align 4
  %add3 = fadd float %8, %add
  store float %add3, float* %sum1, align 4
  %9 = load i32, i32* %x, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load float*, float** %alpha.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 %idxprom4
  %11 = load float, float* %arrayidx5, align 4
  %12 = load float, float* %sum2, align 4
  %add6 = fadd float %12, %11
  store float %add6, float* %sum2, align 4
  %13 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load float*, float** %cvec.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 %idxprom7
  %15 = load float, float* %arrayidx8, align 4
  %16 = load float, float* %sum3, align 4
  %add9 = fadd float %16, %15
  store float %add9, float* %sum3, align 4
  %17 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load float*, float** %alpha.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  %19 = load float, float* %arrayidx11, align 4
  %20 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %20 to i64
  %21 = load float*, float** %cvec.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %21, i64 %idxprom12
  %22 = load float, float* %arrayidx13, align 4
  %add14 = fadd float %19, %22
  %conv = fpext float %add14 to double
  %call = call double @Gammln(double %conv)
  %23 = load float, float* %lnp, align 4
  %conv15 = fpext float %23 to double
  %add16 = fadd double %conv15, %call
  %conv17 = fptrunc double %add16 to float
  store float %conv17, float* %lnp, align 4
  %24 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load float*, float** %cvec.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %25, i64 %idxprom18
  %26 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %26 to double
  %add21 = fadd double %conv20, 1.000000e+00
  %call22 = call double @Gammln(double %add21)
  %27 = load float, float* %lnp, align 4
  %conv23 = fpext float %27 to double
  %sub = fsub double %conv23, %call22
  %conv24 = fptrunc double %sub to float
  store float %conv24, float* %lnp, align 4
  %28 = load i32, i32* %x, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load float*, float** %alpha.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %29, i64 %idxprom25
  %30 = load float, float* %arrayidx26, align 4
  %conv27 = fpext float %30 to double
  %call28 = call double @Gammln(double %conv27)
  %31 = load float, float* %lnp, align 4
  %conv29 = fpext float %31 to double
  %sub30 = fsub double %conv29, %call28
  %conv31 = fptrunc double %sub30 to float
  store float %conv31, float* %lnp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %x, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load float, float* %sum1, align 4
  %conv32 = fpext float %33 to double
  %call33 = call double @Gammln(double %conv32)
  %34 = load float, float* %lnp, align 4
  %conv34 = fpext float %34 to double
  %sub35 = fsub double %conv34, %call33
  %conv36 = fptrunc double %sub35 to float
  store float %conv36, float* %lnp, align 4
  %35 = load float, float* %sum2, align 4
  %conv37 = fpext float %35 to double
  %call38 = call double @Gammln(double %conv37)
  %36 = load float, float* %lnp, align 4
  %conv39 = fpext float %36 to double
  %add40 = fadd double %conv39, %call38
  %conv41 = fptrunc double %add40 to float
  store float %conv41, float* %lnp, align 4
  %37 = load float, float* %sum3, align 4
  %conv42 = fpext float %37 to double
  %add43 = fadd double %conv42, 1.000000e+00
  %call44 = call double @Gammln(double %add43)
  %38 = load float, float* %lnp, align 4
  %conv45 = fpext float %38 to double
  %add46 = fadd double %conv45, %call44
  %conv47 = fptrunc double %add46 to float
  store float %conv47, float* %lnp, align 4
  %39 = load float, float* %lnp, align 4
  ret float %39
}

declare double @Gammln(double) #3

; Function Attrs: nounwind uwtable
define void @SampleDirichlet(float* %alpha, i32 %n, float* %p) #0 {
entry:
  %alpha.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %p.addr = alloca float*, align 8
  %x = alloca i32, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float* %p, float** %p.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %alpha.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %call = call float @SampleGamma(float %4)
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  store float %call, float* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %x, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load float*, float** %p.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  call void @FNorm(float* %8, i32 %9)
  ret void
}

; Function Attrs: nounwind uwtable
define float @SampleGamma(float %alpha) #0 {
entry:
  %retval = alloca float, align 4
  %alpha.addr = alloca float, align 4
  %U = alloca float, align 4
  %V = alloca float, align 4
  %X = alloca float, align 4
  %W = alloca float, align 4
  %lambda = alloca float, align 4
  store float %alpha, float* %alpha.addr, align 4
  %0 = load float, float* %alpha.addr, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oge double %conv, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end
  %1 = load float, float* %alpha.addr, align 4
  %conv2 = fpext float %1 to double
  %mul = fmul double 2.000000e+00, %conv2
  %sub = fsub double %mul, 1.000000e+00
  %call = call double @sqrt(double %sub) #4
  %conv3 = fptrunc double %call to float
  store float %conv3, float* %lambda, align 4
  %call4 = call double @sre_random()
  %conv5 = fptrunc double %call4 to float
  store float %conv5, float* %U, align 4
  %2 = load float, float* %U, align 4
  %3 = load float, float* %U, align 4
  %sub6 = fsub float 1.000000e+00, %3
  %div = fdiv float %2, %sub6
  store float %div, float* %V, align 4
  %4 = load float, float* %alpha.addr, align 4
  %conv7 = fpext float %4 to double
  %5 = load float, float* %V, align 4
  %conv8 = fpext float %5 to double
  %6 = load float, float* %lambda, align 4
  %div9 = fdiv float 1.000000e+00, %6
  %conv10 = fpext float %div9 to double
  %call11 = call double @pow(double %conv8, double %conv10) #4
  %mul12 = fmul double %conv7, %call11
  %conv13 = fptrunc double %mul12 to float
  store float %conv13, float* %X, align 4
  %7 = load float, float* %X, align 4
  %sub14 = fsub float -0.000000e+00, %7
  %8 = load float, float* %alpha.addr, align 4
  %add = fadd float %sub14, %8
  %conv15 = fpext float %add to double
  %call16 = call double @exp(double %conv15) #4
  %mul17 = fmul double 2.500000e-01, %call16
  %9 = load float, float* %V, align 4
  %conv18 = fpext float %9 to double
  %10 = load float, float* %alpha.addr, align 4
  %11 = load float, float* %lambda, align 4
  %div19 = fdiv float %10, %11
  %conv20 = fpext float %div19 to double
  %add21 = fadd double 1.000000e+00, %conv20
  %call22 = call double @pow(double %conv18, double %add21) #4
  %mul23 = fmul double %mul17, %call22
  %12 = load float, float* %V, align 4
  %conv24 = fpext float %12 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  %add26 = fadd double 1.000000e+00, %div25
  %call27 = call double @pow(double %add26, double 2.000000e+00) #4
  %mul28 = fmul double %mul23, %call27
  %conv29 = fptrunc double %mul28 to float
  store float %conv29, float* %W, align 4
  %call30 = call double @sre_random()
  %13 = load float, float* %W, align 4
  %conv31 = fpext float %13 to double
  %cmp32 = fcmp ole double %call30, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %while.body
  %14 = load float, float* %X, align 4
  store float %14, float* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.body

if.else:                                          ; preds = %entry
  %15 = load float, float* %alpha.addr, align 4
  %conv35 = fpext float %15 to double
  %cmp36 = fcmp ogt double %conv35, 0.000000e+00
  br i1 %cmp36, label %if.then.38, label %if.end.88

if.then.38:                                       ; preds = %if.else
  br label %while.body.39

while.body.39:                                    ; preds = %if.then.38, %if.end.87
  %call40 = call double @sre_random()
  %conv41 = fptrunc double %call40 to float
  store float %conv41, float* %U, align 4
  %16 = load float, float* %U, align 4
  %conv42 = fpext float %16 to double
  %17 = load float, float* %alpha.addr, align 4
  %conv43 = fpext float %17 to double
  %call44 = call double @exp(double 1.000000e+00) #4
  %div45 = fdiv double %conv43, %call44
  %add46 = fadd double 1.000000e+00, %div45
  %mul47 = fmul double %conv42, %add46
  %conv48 = fptrunc double %mul47 to float
  store float %conv48, float* %V, align 4
  %18 = load float, float* %V, align 4
  %conv49 = fpext float %18 to double
  %cmp50 = fcmp ogt double %conv49, 1.000000e+00
  br i1 %cmp50, label %if.then.52, label %if.else.73

if.then.52:                                       ; preds = %while.body.39
  %19 = load float, float* %V, align 4
  %sub53 = fsub float 1.000000e+00, %19
  %conv54 = fpext float %sub53 to double
  %20 = load float, float* %alpha.addr, align 4
  %conv55 = fpext float %20 to double
  %call56 = call double @exp(double 1.000000e+00) #4
  %div57 = fdiv double %conv55, %call56
  %add58 = fadd double %conv54, %div57
  %21 = load float, float* %alpha.addr, align 4
  %conv59 = fpext float %21 to double
  %div60 = fdiv double %add58, %conv59
  %call61 = call double @log(double %div60) #4
  %sub62 = fsub double -0.000000e+00, %call61
  %conv63 = fptrunc double %sub62 to float
  store float %conv63, float* %X, align 4
  %call64 = call double @sre_random()
  %22 = load float, float* %X, align 4
  %conv65 = fpext float %22 to double
  %23 = load float, float* %alpha.addr, align 4
  %conv66 = fpext float %23 to double
  %sub67 = fsub double %conv66, 1.000000e+00
  %call68 = call double @pow(double %conv65, double %sub67) #4
  %cmp69 = fcmp ole double %call64, %call68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.52
  %24 = load float, float* %X, align 4
  store float %24, float* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.52
  br label %if.end.87

if.else.73:                                       ; preds = %while.body.39
  %25 = load float, float* %V, align 4
  %conv74 = fpext float %25 to double
  %26 = load float, float* %alpha.addr, align 4
  %conv75 = fpext float %26 to double
  %div76 = fdiv double 1.000000e+00, %conv75
  %call77 = call double @pow(double %conv74, double %div76) #4
  %conv78 = fptrunc double %call77 to float
  store float %conv78, float* %X, align 4
  %call79 = call double @sre_random()
  %27 = load float, float* %X, align 4
  %sub80 = fsub float -0.000000e+00, %27
  %conv81 = fpext float %sub80 to double
  %call82 = call double @exp(double %conv81) #4
  %cmp83 = fcmp ole double %call79, %call82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.else.73
  %28 = load float, float* %X, align 4
  store float %28, float* %retval
  br label %return

if.end.86:                                        ; preds = %if.else.73
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.end.72
  br label %while.body.39

if.end.88:                                        ; preds = %if.else
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0))
  store float 0.000000e+00, float* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.85, %if.then.71, %if.then.34
  %29 = load float, float* %retval
  ret float %29
}

declare void @FNorm(float*, i32) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare double @sre_random() #3

; Function Attrs: nounwind
declare double @pow(double, double) #2

declare void @Die(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @SampleCountvector(float* %p, i32 %n, i32 %c, float* %cvec) #0 {
entry:
  %p.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %cvec.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store float* %p, float** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store float* %cvec, float** %cvec.addr, align 8
  %0 = load float*, float** %cvec.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  call void @FSet(float* %0, i32 %1, float 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load float*, float** %p.addr, align 8
  %5 = load i32, i32* %n.addr, align 4
  %call = call i32 @FChoose(float* %4, i32 %5)
  %idxprom = sext i32 %call to i64
  %6 = load float*, float** %cvec.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %conv = fpext float %7 to double
  %add = fadd double %conv, 1.000000e+00
  %conv1 = fptrunc double %add to float
  store float %conv1, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @FSet(float*, i32, float) #3

declare i32 @FChoose(float*, i32) #3

; Function Attrs: nounwind uwtable
define float @P_PvecGivenDirichlet(float* %p, i32 %n, float* %alpha) #0 {
entry:
  %p.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca float*, align 8
  %sum = alloca float, align 4
  %logp = alloca float, align 4
  %x = alloca i32, align 4
  store float* %p, float** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store float* %alpha, float** %alpha.addr, align 8
  store float 0.000000e+00, float* %logp, align 4
  store float 0.000000e+00, float* %sum, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %p.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %cmp1 = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load float*, float** %alpha.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  %7 = load float, float* %arrayidx4, align 4
  %conv5 = fpext float %7 to double
  %sub = fsub double %conv5, 1.000000e+00
  %8 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load float*, float** %p.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %10 to double
  %call = call double @log(double %conv8) #4
  %mul = fmul double %sub, %call
  %11 = load float, float* %logp, align 4
  %conv9 = fpext float %11 to double
  %add = fadd double %conv9, %mul
  %conv10 = fptrunc double %add to float
  store float %conv10, float* %logp, align 4
  %12 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load float*, float** %alpha.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %13, i64 %idxprom11
  %14 = load float, float* %arrayidx12, align 4
  %conv13 = fpext float %14 to double
  %call14 = call double @Gammln(double %conv13)
  %15 = load float, float* %logp, align 4
  %conv15 = fpext float %15 to double
  %sub16 = fsub double %conv15, %call14
  %conv17 = fptrunc double %sub16 to float
  store float %conv17, float* %logp, align 4
  %16 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load float*, float** %alpha.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %17, i64 %idxprom18
  %18 = load float, float* %arrayidx19, align 4
  %19 = load float, float* %sum, align 4
  %add20 = fadd float %19, %18
  store float %add20, float* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %x, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load float, float* %sum, align 4
  %conv21 = fpext float %21 to double
  %call22 = call double @Gammln(double %conv21)
  %22 = load float, float* %logp, align 4
  %conv23 = fpext float %22 to double
  %add24 = fadd double %conv23, %call22
  %conv25 = fptrunc double %add24 to float
  store float %conv25, float* %logp, align 4
  %23 = load float, float* %logp, align 4
  ret float %23
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
