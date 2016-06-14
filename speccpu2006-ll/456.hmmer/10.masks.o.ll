; ModuleID = 'masks.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"masks.c\00", align 1
@xpam120 = internal global [23 x [23 x i32]] [[23 x i32] [i32 3, i32 -3, i32 0, i32 0, i32 -4, i32 1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -2, i32 -1, i32 1, i32 -1, i32 -3, i32 1, i32 1, i32 0, i32 -7, i32 -4, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 9, i32 -7, i32 -7, i32 -6, i32 -4, i32 -4, i32 -3, i32 -7, i32 -7, i32 -6, i32 -5, i32 -4, i32 -7, i32 -4, i32 0, i32 -3, i32 -3, i32 -8, i32 -1, i32 -4, i32 -6, i32 0], [23 x i32] [i32 0, i32 -7, i32 5, i32 3, i32 -7, i32 0, i32 0, i32 -3, i32 -1, i32 -5, i32 -4, i32 2, i32 -3, i32 1, i32 -3, i32 0, i32 -1, i32 -3, i32 -8, i32 -5, i32 5, i32 3, i32 0], [23 x i32] [i32 0, i32 -7, i32 3, i32 5, i32 -7, i32 -1, i32 -1, i32 -3, i32 -1, i32 -4, i32 -3, i32 1, i32 -2, i32 2, i32 -3, i32 -1, i32 -2, i32 -3, i32 -8, i32 -5, i32 3, i32 5, i32 0], [23 x i32] [i32 -4, i32 -6, i32 -7, i32 -7, i32 8, i32 -5, i32 -3, i32 0, i32 -7, i32 0, i32 -1, i32 -4, i32 -5, i32 -6, i32 -5, i32 -3, i32 -4, i32 -3, i32 -1, i32 4, i32 -4, i32 -5, i32 0], [23 x i32] [i32 1, i32 -4, i32 0, i32 -1, i32 -5, i32 5, i32 -4, i32 -4, i32 -3, i32 -5, i32 -4, i32 0, i32 -2, i32 -3, i32 -4, i32 1, i32 -1, i32 -2, i32 -8, i32 -6, i32 1, i32 -1, i32 0], [23 x i32] [i32 -3, i32 -4, i32 0, i32 -1, i32 -3, i32 -4, i32 7, i32 -4, i32 -2, i32 -3, i32 -4, i32 2, i32 -1, i32 3, i32 1, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 2, i32 2, i32 0], [23 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 0, i32 -4, i32 -4, i32 6, i32 -3, i32 1, i32 1, i32 -2, i32 -3, i32 -3, i32 -2, i32 -2, i32 0, i32 3, i32 -6, i32 -2, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -7, i32 -1, i32 -1, i32 -7, i32 -3, i32 -2, i32 -3, i32 5, i32 -4, i32 0, i32 1, i32 -2, i32 0, i32 2, i32 -1, i32 -1, i32 -4, i32 -5, i32 -5, i32 1, i32 0, i32 0], [23 x i32] [i32 -3, i32 -7, i32 -5, i32 -4, i32 0, i32 -5, i32 -3, i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 -3, i32 -2, i32 -4, i32 -4, i32 -3, i32 1, i32 -3, i32 -2, i32 -3, i32 -2, i32 0], [23 x i32] [i32 -2, i32 -6, i32 -4, i32 -3, i32 -1, i32 -4, i32 -4, i32 1, i32 0, i32 3, i32 8, i32 -3, i32 -3, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 -6, i32 -4, i32 -3, i32 -1, i32 0], [23 x i32] [i32 -1, i32 -5, i32 2, i32 1, i32 -4, i32 0, i32 2, i32 -2, i32 1, i32 -4, i32 -3, i32 4, i32 -2, i32 0, i32 -1, i32 1, i32 0, i32 -3, i32 -4, i32 -2, i32 4, i32 1, i32 0], [23 x i32] [i32 1, i32 -4, i32 -3, i32 -2, i32 -5, i32 -2, i32 -1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 6, i32 0, i32 -1, i32 1, i32 -1, i32 -2, i32 -7, i32 -6, i32 -1, i32 0, i32 0], [23 x i32] [i32 -1, i32 -7, i32 1, i32 2, i32 -6, i32 -3, i32 3, i32 -3, i32 0, i32 -2, i32 -1, i32 0, i32 0, i32 6, i32 1, i32 -2, i32 -2, i32 -3, i32 -6, i32 -5, i32 1, i32 5, i32 0], [23 x i32] [i32 -3, i32 -4, i32 -3, i32 -3, i32 -5, i32 -4, i32 1, i32 -2, i32 2, i32 -4, i32 -1, i32 -1, i32 -1, i32 1, i32 6, i32 -1, i32 -2, i32 -3, i32 1, i32 -5, i32 -1, i32 0, i32 0], [23 x i32] [i32 1, i32 0, i32 0, i32 -1, i32 -3, i32 1, i32 -2, i32 -2, i32 -1, i32 -4, i32 -2, i32 1, i32 1, i32 -2, i32 -1, i32 3, i32 2, i32 -2, i32 -2, i32 -3, i32 1, i32 0, i32 0], [23 x i32] [i32 1, i32 -3, i32 -1, i32 -2, i32 -4, i32 -1, i32 -3, i32 0, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -2, i32 2, i32 4, i32 0, i32 -6, i32 -3, i32 1, i32 -1, i32 0], [23 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 3, i32 -4, i32 1, i32 1, i32 -3, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 5, i32 -8, i32 -3, i32 -2, i32 -2, i32 0], [23 x i32] [i32 -7, i32 -8, i32 -8, i32 -8, i32 -1, i32 -8, i32 -3, i32 -6, i32 -5, i32 -3, i32 -6, i32 -4, i32 -7, i32 -6, i32 1, i32 -2, i32 -6, i32 -8, i32 12, i32 -2, i32 -5, i32 -6, i32 0], [23 x i32] [i32 -4, i32 -1, i32 -5, i32 -5, i32 4, i32 -6, i32 -1, i32 -2, i32 -5, i32 -2, i32 -4, i32 -2, i32 -6, i32 -5, i32 -5, i32 -3, i32 -3, i32 -3, i32 -2, i32 8, i32 -2, i32 -4, i32 0], [23 x i32] [i32 1, i32 -4, i32 5, i32 3, i32 -4, i32 1, i32 2, i32 -2, i32 1, i32 -3, i32 -3, i32 4, i32 -1, i32 1, i32 -1, i32 1, i32 1, i32 -2, i32 -5, i32 -2, i32 6, i32 4, i32 0], [23 x i32] [i32 0, i32 -6, i32 3, i32 5, i32 -5, i32 -1, i32 2, i32 -2, i32 0, i32 -2, i32 -1, i32 1, i32 0, i32 5, i32 0, i32 0, i32 -1, i32 -2, i32 -6, i32 -4, i32 4, i32 6, i32 0], [23 x i32] zeroinitializer], align 16
@Alphabet_iupac = external global i32, align 4
@Alphabet_size = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @XNU(i8* %dsq, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %dsq.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %off = alloca i32, align 4
  %sum = alloca i32, align 4
  %beg = alloca i32, align 4
  %end = alloca i32, align 4
  %top = alloca i32, align 4
  %topcut = alloca i32, align 4
  %fallcut = alloca i32, align 4
  %s0 = alloca double, align 8
  %noff = alloca i32, align 4
  %mcut = alloca i32, align 4
  %pcut = alloca double, align 8
  %hit = alloca i32*, align 8
  %lambda = alloca double, align 8
  %K = alloca double, align 8
  %H = alloca double, align 8
  %xnum = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 4, i32* %noff, align 4
  store i32 1, i32* %mcut, align 4
  store double 1.000000e-02, double* %pcut, align 8
  store double 3.465740e-01, double* %lambda, align 8
  store double 2.000000e-01, double* %K, align 8
  store double 6.640000e-01, double* %H, align 8
  store i32 0, i32* %xnum, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %hit, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %hit, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %pcut, align 8
  %9 = load double, double* %H, align 8
  %mul3 = fmul double %8, %9
  %10 = load i32, i32* %noff, align 4
  %conv4 = sitofp i32 %10 to double
  %11 = load double, double* %K, align 8
  %mul5 = fmul double %conv4, %11
  %div = fdiv double %mul3, %mul5
  %call6 = call double @log(double %div) #4
  %sub = fsub double -0.000000e+00, %call6
  %12 = load double, double* %lambda, align 8
  %div7 = fdiv double %sub, %12
  store double %div7, double* %s0, align 8
  %13 = load double, double* %s0, align 8
  %cmp8 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %for.end
  %14 = load double, double* %s0, align 8
  %15 = load double, double* %s0, align 8
  %call11 = call double @log(double %15) #4
  %16 = load double, double* %lambda, align 8
  %div12 = fdiv double %call11, %16
  %add13 = fadd double %14, %div12
  %add14 = fadd double %add13, 5.000000e-01
  %call15 = call double @floor(double %add14) #5
  %conv16 = fptosi double %call15 to i32
  store i32 %conv16, i32* %topcut, align 4
  br label %if.end.17

if.else:                                          ; preds = %for.end
  store i32 0, i32* %topcut, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.10
  %17 = load double, double* %K, align 8
  %div18 = fdiv double %17, 1.000000e-03
  %call19 = call double @log(double %div18) #4
  %conv20 = fptosi double %call19 to i32
  %conv21 = sitofp i32 %conv20 to double
  %18 = load double, double* %lambda, align 8
  %div22 = fdiv double %conv21, %18
  %conv23 = fptosi double %div22 to i32
  store i32 %conv23, i32* %fallcut, align 4
  %19 = load i32, i32* %mcut, align 4
  store i32 %19, i32* %off, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.100, %if.end.17
  %20 = load i32, i32* %off, align 4
  %21 = load i32, i32* %noff, align 4
  %cmp25 = icmp sle i32 %20, %21
  br i1 %cmp25, label %for.body.27, label %for.end.102

for.body.27:                                      ; preds = %for.cond.24
  store i32 0, i32* %top, align 4
  store i32 0, i32* %sum, align 4
  %22 = load i32, i32* %off, align 4
  store i32 %22, i32* %beg, align 4
  store i32 0, i32* %end, align 4
  %23 = load i32, i32* %off, align 4
  %add28 = add nsw i32 %23, 1
  store i32 %add28, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.81, %for.body.27
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %len.addr, align 4
  %cmp30 = icmp sle i32 %24, %25
  br i1 %cmp30, label %for.body.32, label %for.end.83

for.body.32:                                      ; preds = %for.cond.29
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %off, align 4
  %sub33 = sub nsw i32 %26, %27
  %idxprom34 = sext i32 %sub33 to i64
  %28 = load i8*, i8** %dsq.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 %idxprom34
  %29 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %29 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load i8*, i8** %dsq.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  %32 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %32 to i32
  %idxprom41 = sext i32 %conv40 to i64
  %arrayidx42 = getelementptr inbounds [23 x [23 x i32]], [23 x [23 x i32]]* @xpam120, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [23 x i32], [23 x i32]* %arrayidx42, i32 0, i64 %idxprom37
  %33 = load i32, i32* %arrayidx43, align 4
  %34 = load i32, i32* %sum, align 4
  %add44 = add nsw i32 %34, %33
  store i32 %add44, i32* %sum, align 4
  %35 = load i32, i32* %sum, align 4
  %36 = load i32, i32* %top, align 4
  %cmp45 = icmp sgt i32 %35, %36
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.32
  %37 = load i32, i32* %sum, align 4
  store i32 %37, i32* %top, align 4
  %38 = load i32, i32* %i, align 4
  store i32 %38, i32* %end, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.body.32
  %39 = load i32, i32* %top, align 4
  %40 = load i32, i32* %topcut, align 4
  %cmp49 = icmp sge i32 %39, %40
  br i1 %cmp49, label %land.lhs.true, label %if.else.68

land.lhs.true:                                    ; preds = %if.end.48
  %41 = load i32, i32* %top, align 4
  %42 = load i32, i32* %sum, align 4
  %sub51 = sub nsw i32 %41, %42
  %43 = load i32, i32* %fallcut, align 4
  %cmp52 = icmp sgt i32 %sub51, %43
  br i1 %cmp52, label %if.then.54, label %if.else.68

if.then.54:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %beg, align 4
  store i32 %44, i32* %k, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.64, %if.then.54
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %end, align 4
  %cmp56 = icmp sle i32 %45, %46
  br i1 %cmp56, label %for.body.58, label %for.end.66

for.body.58:                                      ; preds = %for.cond.55
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %off, align 4
  %sub59 = sub nsw i32 %47, %48
  %idxprom60 = sext i32 %sub59 to i64
  %49 = load i32*, i32** %hit, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %49, i64 %idxprom60
  store i32 1, i32* %arrayidx61, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %50 to i64
  %51 = load i32*, i32** %hit, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %51, i64 %idxprom62
  store i32 1, i32* %arrayidx63, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.58
  %52 = load i32, i32* %k, align 4
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, i32* %k, align 4
  br label %for.cond.55

for.end.66:                                       ; preds = %for.cond.55
  store i32 0, i32* %top, align 4
  store i32 0, i32* %sum, align 4
  %53 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %53, 1
  store i32 %add67, i32* %end, align 4
  store i32 %add67, i32* %beg, align 4
  br label %if.end.75

if.else.68:                                       ; preds = %land.lhs.true, %if.end.48
  %54 = load i32, i32* %top, align 4
  %55 = load i32, i32* %sum, align 4
  %sub69 = sub nsw i32 %54, %55
  %56 = load i32, i32* %fallcut, align 4
  %cmp70 = icmp sgt i32 %sub69, %56
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else.68
  store i32 0, i32* %top, align 4
  store i32 0, i32* %sum, align 4
  %57 = load i32, i32* %i, align 4
  %add73 = add nsw i32 %57, 1
  store i32 %add73, i32* %end, align 4
  store i32 %add73, i32* %beg, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %for.end.66
  %58 = load i32, i32* %sum, align 4
  %cmp76 = icmp slt i32 %58, 0
  br i1 %cmp76, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.75
  %59 = load i32, i32* %i, align 4
  %add79 = add nsw i32 %59, 1
  store i32 %add79, i32* %end, align 4
  store i32 %add79, i32* %beg, align 4
  store i32 0, i32* %top, align 4
  store i32 0, i32* %sum, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.75
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %60 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %60, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.29

for.end.83:                                       ; preds = %for.cond.29
  %61 = load i32, i32* %top, align 4
  %62 = load i32, i32* %topcut, align 4
  %cmp84 = icmp sge i32 %61, %62
  br i1 %cmp84, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %for.end.83
  %63 = load i32, i32* %beg, align 4
  store i32 %63, i32* %k, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.96, %if.then.86
  %64 = load i32, i32* %k, align 4
  %65 = load i32, i32* %end, align 4
  %cmp88 = icmp sle i32 %64, %65
  br i1 %cmp88, label %for.body.90, label %for.end.98

for.body.90:                                      ; preds = %for.cond.87
  %66 = load i32, i32* %k, align 4
  %67 = load i32, i32* %off, align 4
  %sub91 = sub nsw i32 %66, %67
  %idxprom92 = sext i32 %sub91 to i64
  %68 = load i32*, i32** %hit, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %68, i64 %idxprom92
  store i32 1, i32* %arrayidx93, align 4
  %69 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load i32*, i32** %hit, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %70, i64 %idxprom94
  store i32 1, i32* %arrayidx95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.90
  %71 = load i32, i32* %k, align 4
  %inc97 = add nsw i32 %71, 1
  store i32 %inc97, i32* %k, align 4
  br label %for.cond.87

for.end.98:                                       ; preds = %for.cond.87
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %for.end.83
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %72 = load i32, i32* %off, align 4
  %inc101 = add nsw i32 %72, 1
  store i32 %inc101, i32* %off, align 4
  br label %for.cond.24

for.end.102:                                      ; preds = %for.cond.24
  store i32 1, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.116, %for.end.102
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %len.addr, align 4
  %cmp104 = icmp sle i32 %73, %74
  br i1 %cmp104, label %for.body.106, label %for.end.118

for.body.106:                                     ; preds = %for.cond.103
  %75 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %75 to i64
  %76 = load i32*, i32** %hit, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %76, i64 %idxprom107
  %77 = load i32, i32* %arrayidx108, align 4
  %tobool = icmp ne i32 %77, 0
  br i1 %tobool, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %for.body.106
  %78 = load i32, i32* %xnum, align 4
  %inc110 = add nsw i32 %78, 1
  store i32 %inc110, i32* %xnum, align 4
  %79 = load i32, i32* @Alphabet_iupac, align 4
  %sub111 = sub nsw i32 %79, 1
  %conv112 = trunc i32 %sub111 to i8
  %80 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %80 to i64
  %81 = load i8*, i8** %dsq.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %81, i64 %idxprom113
  store i8 %conv112, i8* %arrayidx114, align 1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.109, %for.body.106
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %82 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %82, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond.103

for.end.118:                                      ; preds = %for.cond.103
  %83 = load i32*, i32** %hit, align 8
  %84 = bitcast i32* %83 to i8*
  call void @free(i8* %84) #4
  %85 = load i32, i32* %xnum, align 4
  store i32 %85, i32* %retval
  br label %return

return:                                           ; preds = %for.end.118, %if.then
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define float @TraceScoreCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %tr, i8* %dsq) #0 {
entry:
  %retval = alloca float, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %p = alloca [20 x float], align 16
  %sc = alloca [24 x i32], align 16
  %x = alloca i32, align 4
  %tpos = alloca i32, align 4
  %score = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %cmp = icmp eq %struct.p7trace_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %1 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %arraydecay, i32 %1, float 0.000000e+00)
  store i32 0, i32* %tpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %tpos, align 4
  %3 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %3, i32 0, i32 0
  %4 = load i32, i32* %tlen, align 4
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %6, i32 0, i32 1
  %7 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %for.body
  %arraydecay5 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %9 = load i32, i32* %tpos, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 2
  %11 = load i32*, i32** %nodeidx, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %mat = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 22
  %14 = load float**, float*** %mat, align 8
  %arrayidx9 = getelementptr inbounds float*, float** %14, i64 %idxprom8
  %15 = load float*, float** %arrayidx9, align 8
  %16 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %arraydecay5, float* %15, i32 %16)
  br label %if.end.24

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %tpos, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 1
  %19 = load i8*, i8** %statetype11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 %idxprom10
  %20 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %20 to i32
  %cmp14 = icmp eq i32 %conv13, 3
  br i1 %cmp14, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.else
  %arraydecay17 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %21 = load i32, i32* %tpos, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %nodeidx19 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %22, i32 0, i32 2
  %23 = load i32*, i32** %nodeidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %24 = load i32, i32* %arrayidx20, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %ins = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %25, i32 0, i32 23
  %26 = load float**, float*** %ins, align 8
  %arrayidx22 = getelementptr inbounds float*, float** %26, i64 %idxprom21
  %27 = load float*, float** %arrayidx22, align 8
  %28 = load i32, i32* @Alphabet_size, align 4
  call void @FAdd(float* %arraydecay17, float* %27, i32 %28)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %29 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %tpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay25 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %30 = load i32, i32* @Alphabet_size, align 4
  call void @FNorm(float* %arraydecay25, i32 %30)
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.36, %for.end
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* @Alphabet_size, align 4
  %cmp27 = icmp slt i32 %31, %32
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %33 = load i32, i32* %x, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i64 %idxprom30
  %34 = load float, float* %arrayidx31, align 4
  %35 = load i32, i32* %x, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %36, i32 0, i32 28
  %arrayidx33 = getelementptr inbounds [20 x float], [20 x float]* %null, i32 0, i64 %idxprom32
  %37 = load float, float* %arrayidx33, align 4
  %call = call i32 @Prob2Score(float %34, float %37)
  %38 = load i32, i32* %x, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds [24 x i32], [24 x i32]* %sc, i32 0, i64 %idxprom34
  store i32 %call, i32* %arrayidx35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %39 = load i32, i32* %x, align 4
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, i32* %x, align 4
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  %40 = load i32, i32* @Alphabet_size, align 4
  store i32 %40, i32* %x, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.49, %for.end.38
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* @Alphabet_iupac, align 4
  %cmp40 = icmp slt i32 %41, %42
  br i1 %cmp40, label %for.body.42, label %for.end.51

for.body.42:                                      ; preds = %for.cond.39
  %arraydecay43 = getelementptr inbounds [20 x float], [20 x float]* %p, i32 0, i32 0
  %43 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %null44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %43, i32 0, i32 28
  %arraydecay45 = getelementptr inbounds [20 x float], [20 x float]* %null44, i32 0, i32 0
  %44 = load i32, i32* %x, align 4
  %call46 = call i32 @DegenerateSymbolScore(float* %arraydecay43, float* %arraydecay45, i32 %44)
  %45 = load i32, i32* %x, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [24 x i32], [24 x i32]* %sc, i32 0, i64 %idxprom47
  store i32 %call46, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.42
  %46 = load i32, i32* %x, align 4
  %inc50 = add nsw i32 %46, 1
  store i32 %inc50, i32* %x, align 4
  br label %for.cond.39

for.end.51:                                       ; preds = %for.cond.39
  store i32 0, i32* %score, align 4
  store i32 0, i32* %tpos, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.78, %for.end.51
  %47 = load i32, i32* %tpos, align 4
  %48 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %tlen53 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %48, i32 0, i32 0
  %49 = load i32, i32* %tlen53, align 4
  %cmp54 = icmp slt i32 %47, %49
  br i1 %cmp54, label %for.body.56, label %for.end.80

for.body.56:                                      ; preds = %for.cond.52
  %50 = load i32, i32* %tpos, align 4
  %idxprom57 = sext i32 %50 to i64
  %51 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype58 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %51, i32 0, i32 1
  %52 = load i8*, i8** %statetype58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %52, i64 %idxprom57
  %53 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %53 to i32
  %cmp61 = icmp eq i32 %conv60, 1
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.56
  %54 = load i32, i32* %tpos, align 4
  %idxprom63 = sext i32 %54 to i64
  %55 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %statetype64 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %55, i32 0, i32 1
  %56 = load i8*, i8** %statetype64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %56, i64 %idxprom63
  %57 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %57 to i32
  %cmp67 = icmp eq i32 %conv66, 3
  br i1 %cmp67, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %lor.lhs.false, %for.body.56
  %58 = load i32, i32* %tpos, align 4
  %idxprom70 = sext i32 %58 to i64
  %59 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %59, i32 0, i32 3
  %60 = load i32*, i32** %pos, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %60, i64 %idxprom70
  %61 = load i32, i32* %arrayidx71, align 4
  %idxprom72 = sext i32 %61 to i64
  %62 = load i8*, i8** %dsq.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %62, i64 %idxprom72
  %63 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %63 to i32
  %idxprom75 = sext i32 %conv74 to i64
  %arrayidx76 = getelementptr inbounds [24 x i32], [24 x i32]* %sc, i32 0, i64 %idxprom75
  %64 = load i32, i32* %arrayidx76, align 4
  %65 = load i32, i32* %score, align 4
  %add = add nsw i32 %65, %64
  store i32 %add, i32* %score, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.69, %lor.lhs.false
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %66 = load i32, i32* %tpos, align 4
  %inc79 = add nsw i32 %66, 1
  store i32 %inc79, i32* %tpos, align 4
  br label %for.cond.52

for.end.80:                                       ; preds = %for.cond.52
  %67 = load i32, i32* %score, align 4
  %conv81 = sitofp i32 %67 to double
  %sub = fsub double %conv81, 8.000000e+03
  %conv82 = fptosi double %sub to i32
  store i32 %conv82, i32* %score, align 4
  %68 = load i32, i32* %score, align 4
  %call83 = call i32 @ILogsum(i32 0, i32 %68)
  %call84 = call float @Scorify(i32 %call83)
  store float %call84, float* %retval
  br label %return

return:                                           ; preds = %for.end.80, %if.then
  %69 = load float, float* %retval
  ret float %69
}

declare void @FSet(float*, i32, float) #1

declare void @FAdd(float*, float*, i32) #1

declare void @FNorm(float*, i32) #1

declare i32 @Prob2Score(float, float) #1

declare i32 @DegenerateSymbolScore(float*, float*, i32) #1

declare float @Scorify(i32) #1

declare i32 @ILogsum(i32, i32) #1

; Function Attrs: nounwind uwtable
define float @SantaCruzCorrection(%struct.plan7_s* %hmm, %struct.p7trace_s* %tr, i8* %dsq) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %dsq.addr = alloca i8*, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  ret float 0.000000e+00
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
