; ModuleID = './MultiSource.Benchmarks.McCat/20.04-bisect.dbisect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"bisect: Couldn't allocate memory for wu\00", align 1
@stderr = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @sturm(i32 %n, double* %c, double* %b, double* %beta, double %x) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %x.addr = alloca double, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %q = alloca double, align 8
  %iq = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %c, double** %c.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store double %x, double* %x.addr, align 8
  store i32 0, i32* %a, align 4
  store double 1.000000e+00, double* %q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %q, align 8
  %cmp1 = fcmp une double %2, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %c.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load double, double* %x.addr, align 8
  %sub = fsub double %5, %6
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load double*, double** %beta.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 %idxprom2
  %9 = load double, double* %arrayidx3, align 8
  %10 = load double, double* %q, align 8
  %div = fdiv double %9, %10
  %sub4 = fsub double %sub, %div
  store double %sub4, double* %q, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load double*, double** %c.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %12, i64 %idxprom5
  %13 = load double, double* %arrayidx6, align 8
  %14 = load double, double* %x.addr, align 8
  %sub7 = fsub double %13, %14
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load double*, double** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8
  %call = call double @fabs(double %17) #5
  %div10 = fdiv double %call, 0x3CB0000000000000
  %sub11 = fsub double %sub7, %div10
  store double %sub11, double* %q, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load double, double* %q, align 8
  %cmp12 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  %19 = load i32, i32* %a, align 4
  %add = add nsw i32 %19, 1
  store i32 %add, i32* %a, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %a, align 4
  ret i32 %21
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define void @dbisect(double* %c, double* %b, double* %beta, i32 %n, i32 %m1, i32 %m2, double %eps1, double* %eps2, i32* %z, double* %x) #0 {
entry:
  %c.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %m1.addr = alloca i32, align 4
  %m2.addr = alloca i32, align 4
  %eps1.addr = alloca double, align 8
  %eps2.addr = alloca double*, align 8
  %z.addr = alloca i32*, align 8
  %x.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %h = alloca double, align 8
  %xmin = alloca double, align 8
  %xmax = alloca double, align 8
  %a = alloca i32, align 4
  %k = alloca i32, align 4
  %x1 = alloca double, align 8
  %xu = alloca double, align 8
  %x0 = alloca double, align 8
  %wu = alloca double*, align 8
  store double* %c, double** %c.addr, align 8
  store double* %b, double** %b.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %m1, i32* %m1.addr, align 4
  store i32 %m2, i32* %m2.addr, align 4
  store double %eps1, double* %eps1.addr, align 8
  store double* %eps2, double** %eps2.addr, align 8
  store i32* %z, i32** %z.addr, align 8
  store double* %x, double** %x.addr, align 8
  %0 = load double*, double** %b.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  store double 0.000000e+00, double* %arrayidx, align 8
  %1 = load double*, double** %beta.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %1, i64 0
  store double 0.000000e+00, double* %arrayidx1, align 8
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load double*, double** %c.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 %idxprom
  %4 = load double, double* %arrayidx2, align 8
  %5 = load i32, i32* %n.addr, align 4
  %sub3 = sub nsw i32 %5, 1
  %idxprom4 = sext i32 %sub3 to i64
  %6 = load double*, double** %b.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %6, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %call = call double @fabs(double %7) #5
  %mul = fmul double 1.010000e+00, %call
  %sub6 = fsub double %4, %mul
  store double %sub6, double* %xmin, align 8
  %8 = load i32, i32* %n.addr, align 4
  %sub7 = sub nsw i32 %8, 1
  %idxprom8 = sext i32 %sub7 to i64
  %9 = load double*, double** %c.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %9, i64 %idxprom8
  %10 = load double, double* %arrayidx9, align 8
  %11 = load i32, i32* %n.addr, align 4
  %sub10 = sub nsw i32 %11, 1
  %idxprom11 = sext i32 %sub10 to i64
  %12 = load double*, double** %b.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %12, i64 %idxprom11
  %13 = load double, double* %arrayidx12, align 8
  %call13 = call double @fabs(double %13) #5
  %mul14 = fmul double 1.010000e+00, %call13
  %add = fadd double %10, %mul14
  store double %add, double* %xmax, align 8
  %14 = load i32, i32* %n.addr, align 4
  %sub15 = sub nsw i32 %14, 2
  store i32 %sub15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load double*, double** %b.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %17, i64 %idxprom16
  %18 = load double, double* %arrayidx17, align 8
  %call18 = call double @fabs(double %18) #5
  %19 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %19, 1
  %idxprom20 = sext i32 %add19 to i64
  %20 = load double*, double** %b.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %20, i64 %idxprom20
  %21 = load double, double* %arrayidx21, align 8
  %call22 = call double @fabs(double %21) #5
  %add23 = fadd double %call18, %call22
  %mul24 = fmul double 1.010000e+00, %add23
  store double %mul24, double* %h, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load double*, double** %c.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %23, i64 %idxprom25
  %24 = load double, double* %arrayidx26, align 8
  %25 = load double, double* %h, align 8
  %add27 = fadd double %24, %25
  %26 = load double, double* %xmax, align 8
  %cmp28 = fcmp ogt double %add27, %26
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load double*, double** %c.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %28, i64 %idxprom29
  %29 = load double, double* %arrayidx30, align 8
  %30 = load double, double* %h, align 8
  %add31 = fadd double %29, %30
  store double %add31, double* %xmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load double*, double** %c.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %32, i64 %idxprom32
  %33 = load double, double* %arrayidx33, align 8
  %34 = load double, double* %h, align 8
  %sub34 = fsub double %33, %34
  %35 = load double, double* %xmin, align 8
  %cmp35 = fcmp olt double %sub34, %35
  br i1 %cmp35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %36 to i64
  %37 = load double*, double** %c.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %37, i64 %idxprom37
  %38 = load double, double* %arrayidx38, align 8
  %39 = load double, double* %h, align 8
  %sub39 = fsub double %38, %39
  store double %sub39, double* %xmin, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load double, double* %xmin, align 8
  %42 = load double, double* %xmax, align 8
  %add41 = fadd double %41, %42
  %cmp42 = fcmp ogt double %add41, 0.000000e+00
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %43 = load double, double* %xmax, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %44 = load double, double* %xmin, align 8
  %sub43 = fsub double -0.000000e+00, %44
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %43, %cond.true ], [ %sub43, %cond.false ]
  %mul44 = fmul double 0x3CB0000000000000, %cond
  %45 = load double*, double** %eps2.addr, align 8
  store double %mul44, double* %45, align 8
  %46 = load double, double* %eps1.addr, align 8
  %cmp45 = fcmp ole double %46, 0.000000e+00
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end
  %47 = load double*, double** %eps2.addr, align 8
  %48 = load double, double* %47, align 8
  store double %48, double* %eps1.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %cond.end
  %49 = load double, double* %eps1.addr, align 8
  %mul48 = fmul double 5.000000e-01, %49
  %50 = load double*, double** %eps2.addr, align 8
  %51 = load double, double* %50, align 8
  %mul49 = fmul double 7.000000e+00, %51
  %add50 = fadd double %mul48, %mul49
  %52 = load double*, double** %eps2.addr, align 8
  store double %add50, double* %52, align 8
  %53 = load i32, i32* %n.addr, align 4
  %add51 = add nsw i32 %53, 1
  %conv = sext i32 %add51 to i64
  %call52 = call noalias i8* @calloc(i64 %conv, i64 8) #6
  %54 = bitcast i8* %call52 to double*
  store double* %54, double** %wu, align 8
  %cmp53 = icmp eq double* %54, null
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.47
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call56 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %55)
  call void @exit(i32 1) #7
  unreachable

if.end.57:                                        ; preds = %if.end.47
  %56 = load double, double* %xmax, align 8
  store double %56, double* %x0, align 8
  %57 = load i32, i32* %m2.addr, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.66, %if.end.57
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %m1.addr, align 4
  %cmp59 = icmp sge i32 %58, %59
  br i1 %cmp59, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.58
  %60 = load double, double* %xmax, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %61 to i64
  %62 = load double*, double** %x.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %62, i64 %idxprom62
  store double %60, double* %arrayidx63, align 8
  %63 = load double, double* %xmin, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %64 to i64
  %65 = load double*, double** %wu, align 8
  %arrayidx65 = getelementptr inbounds double, double* %65, i64 %idxprom64
  store double %63, double* %arrayidx65, align 8
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.61
  %66 = load i32, i32* %i, align 4
  %dec67 = add nsw i32 %66, -1
  store i32 %dec67, i32* %i, align 4
  br label %for.cond.58

for.end.68:                                       ; preds = %for.cond.58
  %67 = load i32*, i32** %z.addr, align 8
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %m2.addr, align 4
  store i32 %68, i32* %k, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.135, %for.end.68
  %69 = load i32, i32* %k, align 4
  %70 = load i32, i32* %m1.addr, align 4
  %cmp70 = icmp sge i32 %69, %70
  br i1 %cmp70, label %for.body.72, label %for.end.137

for.body.72:                                      ; preds = %for.cond.69
  %71 = load double, double* %xmin, align 8
  store double %71, double* %xu, align 8
  %72 = load i32, i32* %k, align 4
  store i32 %72, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.85, %for.body.72
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %m1.addr, align 4
  %cmp74 = icmp sge i32 %73, %74
  br i1 %cmp74, label %for.body.76, label %for.end.87

for.body.76:                                      ; preds = %for.cond.73
  %75 = load double, double* %xu, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %76 to i64
  %77 = load double*, double** %wu, align 8
  %arrayidx78 = getelementptr inbounds double, double* %77, i64 %idxprom77
  %78 = load double, double* %arrayidx78, align 8
  %cmp79 = fcmp olt double %75, %78
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %for.body.76
  %79 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %79 to i64
  %80 = load double*, double** %wu, align 8
  %arrayidx83 = getelementptr inbounds double, double* %80, i64 %idxprom82
  %81 = load double, double* %arrayidx83, align 8
  store double %81, double* %xu, align 8
  br label %for.end.87

if.end.84:                                        ; preds = %for.body.76
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %82 = load i32, i32* %i, align 4
  %dec86 = add nsw i32 %82, -1
  store i32 %dec86, i32* %i, align 4
  br label %for.cond.73

for.end.87:                                       ; preds = %if.then.81, %for.cond.73
  %83 = load double, double* %x0, align 8
  %84 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %84 to i64
  %85 = load double*, double** %x.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %85, i64 %idxprom88
  %86 = load double, double* %arrayidx89, align 8
  %cmp90 = fcmp ogt double %83, %86
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %for.end.87
  %87 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %87 to i64
  %88 = load double*, double** %x.addr, align 8
  %arrayidx94 = getelementptr inbounds double, double* %88, i64 %idxprom93
  %89 = load double, double* %arrayidx94, align 8
  store double %89, double* %x0, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %for.end.87
  %90 = load double, double* %xu, align 8
  %91 = load double, double* %x0, align 8
  %add96 = fadd double %90, %91
  %div = fdiv double %add96, 2.000000e+00
  store double %div, double* %x1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.128, %if.end.95
  %92 = load double, double* %x0, align 8
  %93 = load double, double* %xu, align 8
  %sub97 = fsub double %92, %93
  %94 = load double, double* %xu, align 8
  %call98 = call double @fabs(double %94) #5
  %95 = load double, double* %x0, align 8
  %call99 = call double @fabs(double %95) #5
  %add100 = fadd double %call98, %call99
  %mul101 = fmul double 0x3CC0000000000000, %add100
  %96 = load double, double* %eps1.addr, align 8
  %add102 = fadd double %mul101, %96
  %cmp103 = fcmp ogt double %sub97, %add102
  br i1 %cmp103, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %97 = load i32*, i32** %z.addr, align 8
  %98 = load i32, i32* %97, align 4
  %add105 = add nsw i32 %98, 1
  %99 = load i32*, i32** %z.addr, align 8
  store i32 %add105, i32* %99, align 4
  %100 = load i32, i32* %n.addr, align 4
  %101 = load double*, double** %c.addr, align 8
  %102 = load double*, double** %b.addr, align 8
  %103 = load double*, double** %beta.addr, align 8
  %104 = load double, double* %x1, align 8
  %call106 = call i32 @sturm(i32 %100, double* %101, double* %102, double* %103, double %104)
  store i32 %call106, i32* %a, align 4
  %105 = load i32, i32* %a, align 4
  %106 = load i32, i32* %k, align 4
  %cmp107 = icmp slt i32 %105, %106
  br i1 %cmp107, label %if.then.109, label %if.else.127

if.then.109:                                      ; preds = %while.body
  %107 = load i32, i32* %a, align 4
  %108 = load i32, i32* %m1.addr, align 4
  %cmp110 = icmp slt i32 %107, %108
  br i1 %cmp110, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %if.then.109
  %109 = load double, double* %x1, align 8
  %110 = load i32, i32* %m1.addr, align 4
  %idxprom113 = sext i32 %110 to i64
  %111 = load double*, double** %wu, align 8
  %arrayidx114 = getelementptr inbounds double, double* %111, i64 %idxprom113
  store double %109, double* %arrayidx114, align 8
  store double %109, double* %xu, align 8
  br label %if.end.126

if.else:                                          ; preds = %if.then.109
  %112 = load double, double* %x1, align 8
  %113 = load i32, i32* %a, align 4
  %add115 = add nsw i32 %113, 1
  %idxprom116 = sext i32 %add115 to i64
  %114 = load double*, double** %wu, align 8
  %arrayidx117 = getelementptr inbounds double, double* %114, i64 %idxprom116
  store double %112, double* %arrayidx117, align 8
  store double %112, double* %xu, align 8
  %115 = load i32, i32* %a, align 4
  %idxprom118 = sext i32 %115 to i64
  %116 = load double*, double** %x.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %116, i64 %idxprom118
  %117 = load double, double* %arrayidx119, align 8
  %118 = load double, double* %x1, align 8
  %cmp120 = fcmp ogt double %117, %118
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %if.else
  %119 = load double, double* %x1, align 8
  %120 = load i32, i32* %a, align 4
  %idxprom123 = sext i32 %120 to i64
  %121 = load double*, double** %x.addr, align 8
  %arrayidx124 = getelementptr inbounds double, double* %121, i64 %idxprom123
  store double %119, double* %arrayidx124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.122, %if.else
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.112
  br label %if.end.128

if.else.127:                                      ; preds = %while.body
  %122 = load double, double* %x1, align 8
  store double %122, double* %x0, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.end.126
  %123 = load double, double* %xu, align 8
  %124 = load double, double* %x0, align 8
  %add129 = fadd double %123, %124
  %div130 = fdiv double %add129, 2.000000e+00
  store double %div130, double* %x1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %125 = load double, double* %xu, align 8
  %126 = load double, double* %x0, align 8
  %add131 = fadd double %125, %126
  %div132 = fdiv double %add131, 2.000000e+00
  %127 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %127 to i64
  %128 = load double*, double** %x.addr, align 8
  %arrayidx134 = getelementptr inbounds double, double* %128, i64 %idxprom133
  store double %div132, double* %arrayidx134, align 8
  br label %for.inc.135

for.inc.135:                                      ; preds = %while.end
  %129 = load i32, i32* %k, align 4
  %dec136 = add nsw i32 %129, -1
  store i32 %dec136, i32* %k, align 4
  br label %for.cond.69

for.end.137:                                      ; preds = %for.cond.69
  %130 = load double*, double** %wu, align 8
  %131 = bitcast double* %130 to i8*
  call void @free(i8* %131) #6
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
