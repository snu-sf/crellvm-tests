; ModuleID = './SingleSource.Benchmarks.CoyoteBench/2.lpbench.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i64 1325, align 8

; Function Attrs: nounwind uwtable
define void @matgen(double** %a, double* %b) #0 {
entry:
  %a.addr = alloca double**, align 8
  %b.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double** %a, double*** %a.addr, align 8
  store double* %b, double** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call double @random_double()
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load double**, double*** %a.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %4, i64 %idxprom4
  %5 = load double*, double** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds double, double* %5, i64 %idxprom
  store double %call, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.14, %for.end.8
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 2000
  br i1 %cmp10, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.9
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %10 = load double*, double** %b.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %10, i64 %idxprom12
  store double 0.000000e+00, double* %arrayidx13, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %11 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.9

for.end.16:                                       ; preds = %for.cond.9
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.32, %for.end.16
  %12 = load i32, i32* %j, align 4
  %cmp18 = icmp slt i32 %12, 2000
  br i1 %cmp18, label %for.body.19, label %for.end.34

for.body.19:                                      ; preds = %for.cond.17
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.body.19
  %13 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %13, 2000
  br i1 %cmp21, label %for.body.22, label %for.end.31

for.body.22:                                      ; preds = %for.cond.20
  %14 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %15 to i64
  %16 = load double**, double*** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double*, double** %16, i64 %idxprom24
  %17 = load double*, double** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds double, double* %17, i64 %idxprom23
  %18 = load double, double* %arrayidx26, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %20 = load double*, double** %b.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %20, i64 %idxprom27
  %21 = load double, double* %arrayidx28, align 8
  %add = fadd double %21, %18
  store double %add, double* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.22
  %22 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %23 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.17

for.end.34:                                       ; preds = %for.cond.17
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @idamax(i32 %n, double* %dx, i32 %dx_off, i32 %incx) #0 {
entry:
  %n.addr = alloca i32, align 4
  %dx.addr = alloca double*, align 8
  %dx_off.addr = alloca i32, align 4
  %incx.addr = alloca i32, align 4
  %dmax = alloca double, align 8
  %dtemp = alloca double, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %itemp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %dx, double** %dx.addr, align 8
  store i32 %dx_off, i32* %dx_off.addr, align 4
  store i32 %incx, i32* %incx.addr, align 4
  store i32 0, i32* %itemp, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %itemp, align 4
  br label %if.end.33

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* %itemp, align 4
  br label %if.end.32

if.else.3:                                        ; preds = %if.else
  %2 = load i32, i32* %incx.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.else.3
  %3 = load i32, i32* %dx_off.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %dx.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %call = call double @fabs(double %5) #5
  store double %call, double* %dmax, align 8
  %6 = load i32, i32* %incx.addr, align 4
  %add = add nsw i32 1, %6
  store i32 %add, i32* %ix, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ix, align 4
  %10 = load i32, i32* %dx_off.addr, align 4
  %add7 = add nsw i32 %9, %10
  %idxprom8 = sext i32 %add7 to i64
  %11 = load double*, double** %dx.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 %idxprom8
  %12 = load double, double* %arrayidx9, align 8
  %call10 = call double @fabs(double %12) #5
  store double %call10, double* %dtemp, align 8
  %13 = load double, double* %dtemp, align 8
  %14 = load double, double* %dmax, align 8
  %cmp11 = fcmp ogt double %13, %14
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %itemp, align 4
  %16 = load double, double* %dtemp, align 8
  store double %16, double* %dmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body
  %17 = load i32, i32* %incx.addr, align 4
  %18 = load i32, i32* %ix, align 4
  %add13 = add nsw i32 %18, %17
  store i32 %add13, i32* %ix, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.else.14:                                       ; preds = %if.else.3
  store i32 0, i32* %itemp, align 4
  %20 = load i32, i32* %dx_off.addr, align 4
  %idxprom15 = sext i32 %20 to i64
  %21 = load double*, double** %dx.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %21, i64 %idxprom15
  %22 = load double, double* %arrayidx16, align 8
  %call17 = call double @fabs(double %22) #5
  store double %call17, double* %dmax, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.28, %if.else.14
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp19 = icmp slt i32 %23, %24
  br i1 %cmp19, label %for.body.20, label %for.end.30

for.body.20:                                      ; preds = %for.cond.18
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %dx_off.addr, align 4
  %add21 = add nsw i32 %25, %26
  %idxprom22 = sext i32 %add21 to i64
  %27 = load double*, double** %dx.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %27, i64 %idxprom22
  %28 = load double, double* %arrayidx23, align 8
  %call24 = call double @fabs(double %28) #5
  store double %call24, double* %dtemp, align 8
  %29 = load double, double* %dtemp, align 8
  %30 = load double, double* %dmax, align 8
  %cmp25 = fcmp ogt double %29, %30
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.20
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %itemp, align 4
  %32 = load double, double* %dtemp, align 8
  store double %32, double* %dmax, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %for.body.20
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %33 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.18

for.end.30:                                       ; preds = %for.cond.18
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %for.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.2
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %34 = load i32, i32* %itemp, align 4
  ret i32 %34
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #1

; Function Attrs: nounwind uwtable
define void @dscal(i32 %n, double %da, double* %dx, i32 %dx_off, i32 %incx) #0 {
entry:
  %n.addr = alloca i32, align 4
  %da.addr = alloca double, align 8
  %dx.addr = alloca double*, align 8
  %dx_off.addr = alloca i32, align 4
  %incx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nincx = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %da, double* %da.addr, align 8
  store double* %dx, double** %dx.addr, align 8
  store i32 %dx_off, i32* %dx_off.addr, align 4
  store i32 %incx, i32* %incx.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %nincx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %nincx, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load double, double* %da.addr, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %dx_off.addr, align 4
  %add = add nsw i32 %7, %8
  %idxprom = sext i32 %add to i64
  %9 = load double*, double** %dx.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8
  %mul4 = fmul double %10, %6
  store double %mul4, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %incx.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %12, %11
  store i32 %add5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %if.else
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.6
  %15 = load double, double* %da.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %dx_off.addr, align 4
  %add9 = add nsw i32 %16, %17
  %idxprom10 = sext i32 %add9 to i64
  %18 = load double*, double** %dx.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  %19 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %19, %15
  store double %mul12, double* %arrayidx11, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.8
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.14, %for.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @daxpy(i32 %n, double %da, double* %dx, i32 %dx_off, i32 %incx, double* %dy, i32 %dy_off, i32 %incy) #0 {
entry:
  %n.addr = alloca i32, align 4
  %da.addr = alloca double, align 8
  %dx.addr = alloca double*, align 8
  %dx_off.addr = alloca i32, align 4
  %incx.addr = alloca i32, align 4
  %dy.addr = alloca double*, align 8
  %dy_off.addr = alloca i32, align 4
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %da, double* %da.addr, align 8
  store double* %dx, double** %dx.addr, align 8
  store i32 %dx_off, i32* %dx_off.addr, align 4
  store i32 %incx, i32* %incx.addr, align 4
  store double* %dy, double** %dy.addr, align 8
  store i32 %dy_off, i32* %dy_off.addr, align 4
  store i32 %incy, i32* %incy.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %entry
  %1 = load double, double* %da.addr, align 8
  %cmp1 = fcmp une double %1, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end.35

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %incx.addr, align 4
  %cmp2 = icmp ne i32 %2, 1
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %incy.addr, align 4
  %cmp3 = icmp ne i32 %3, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %ix, align 4
  store i32 0, i32* %iy, align 4
  %4 = load i32, i32* %incx.addr, align 4
  %cmp5 = icmp slt i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.4
  %5 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 1, %5
  %6 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %sub, %6
  store i32 %mul, i32* %ix, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then.4
  %7 = load i32, i32* %incy.addr, align 4
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %8 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 1, %8
  %9 = load i32, i32* %incy.addr, align 4
  %mul10 = mul nsw i32 %sub9, %9
  store i32 %mul10, i32* %iy, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load double, double* %da.addr, align 8
  %13 = load i32, i32* %ix, align 4
  %14 = load i32, i32* %dx_off.addr, align 4
  %add = add nsw i32 %13, %14
  %idxprom = sext i32 %add to i64
  %15 = load double*, double** %dx.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %15, i64 %idxprom
  %16 = load double, double* %arrayidx, align 8
  %mul13 = fmul double %12, %16
  %17 = load i32, i32* %iy, align 4
  %18 = load i32, i32* %dy_off.addr, align 4
  %add14 = add nsw i32 %17, %18
  %idxprom15 = sext i32 %add14 to i64
  %19 = load double*, double** %dy.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 %idxprom15
  %20 = load double, double* %arrayidx16, align 8
  %add17 = fadd double %20, %mul13
  store double %add17, double* %arrayidx16, align 8
  %21 = load i32, i32* %incx.addr, align 4
  %22 = load i32, i32* %ix, align 4
  %add18 = add nsw i32 %22, %21
  store i32 %add18, i32* %ix, align 4
  %23 = load i32, i32* %incy.addr, align 4
  %24 = load i32, i32* %iy, align 4
  %add19 = add nsw i32 %24, %23
  store i32 %add19, i32* %iy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.35

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.31, %if.else
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %26, %27
  br i1 %cmp21, label %for.body.22, label %for.end.33

for.body.22:                                      ; preds = %for.cond.20
  %28 = load double, double* %da.addr, align 8
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %dx_off.addr, align 4
  %add23 = add nsw i32 %29, %30
  %idxprom24 = sext i32 %add23 to i64
  %31 = load double*, double** %dx.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %31, i64 %idxprom24
  %32 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %28, %32
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %dy_off.addr, align 4
  %add27 = add nsw i32 %33, %34
  %idxprom28 = sext i32 %add27 to i64
  %35 = load double*, double** %dy.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %35, i64 %idxprom28
  %36 = load double, double* %arrayidx29, align 8
  %add30 = fadd double %36, %mul26
  store double %add30, double* %arrayidx29, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.22
  %37 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.20

for.end.33:                                       ; preds = %for.cond.20
  br label %if.end.34

if.end.34:                                        ; preds = %for.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.end.34, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @dgefa(double** %a, i32* %ipvt) #0 {
entry:
  %a.addr = alloca double**, align 8
  %ipvt.addr = alloca i32*, align 8
  %temp = alloca double, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %col_k = alloca double*, align 8
  %kp1 = alloca i32, align 4
  %l = alloca i32, align 4
  %col_j = alloca double*, align 8
  store double** %a, double*** %a.addr, align 8
  store i32* %ipvt, i32** %ipvt.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1999
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double**, double*** %a.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %2, i64 %idxprom
  %3 = load double*, double** %arrayidx, align 8
  store double* %3, double** %col_k, align 8
  %4 = load i32, i32* %k, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %kp1, align 4
  %5 = load i32, i32* %k, align 4
  %sub = sub nsw i32 2000, %5
  %6 = load double*, double** %col_k, align 8
  %7 = load i32, i32* %k, align 4
  %call = call i32 @idamax(i32 %sub, double* %6, i32 %7, i32 1)
  %8 = load i32, i32* %k, align 4
  %add1 = add nsw i32 %call, %8
  store i32 %add1, i32* %l, align 4
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %11, i64 %idxprom2
  store i32 %9, i32* %arrayidx3, align 4
  %12 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load double*, double** %col_k, align 8
  %arrayidx5 = getelementptr inbounds double, double* %13, i64 %idxprom4
  %14 = load double, double* %arrayidx5, align 8
  %cmp6 = fcmp une double %14, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end.37

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %k, align 4
  %cmp7 = icmp ne i32 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %17 = load i32, i32* %l, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load double*, double** %col_k, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom9
  %19 = load double, double* %arrayidx10, align 8
  store double %19, double* %temp, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load double*, double** %col_k, align 8
  %arrayidx12 = getelementptr inbounds double, double* %21, i64 %idxprom11
  %22 = load double, double* %arrayidx12, align 8
  %23 = load i32, i32* %l, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load double*, double** %col_k, align 8
  %arrayidx14 = getelementptr inbounds double, double* %24, i64 %idxprom13
  store double %22, double* %arrayidx14, align 8
  %25 = load double, double* %temp, align 8
  %26 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %26 to i64
  %27 = load double*, double** %col_k, align 8
  %arrayidx16 = getelementptr inbounds double, double* %27, i64 %idxprom15
  store double %25, double* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %28 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %28 to i64
  %29 = load double*, double** %col_k, align 8
  %arrayidx18 = getelementptr inbounds double, double* %29, i64 %idxprom17
  %30 = load double, double* %arrayidx18, align 8
  %div = fdiv double -1.000000e+00, %30
  store double %div, double* %temp, align 8
  %31 = load i32, i32* %kp1, align 4
  %sub19 = sub nsw i32 2000, %31
  %32 = load double, double* %temp, align 8
  %33 = load double*, double** %col_k, align 8
  %34 = load i32, i32* %kp1, align 4
  call void @dscal(i32 %sub19, double %32, double* %33, i32 %34, i32 1)
  %35 = load i32, i32* %kp1, align 4
  store i32 %35, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end
  %36 = load i32, i32* %j, align 4
  %cmp21 = icmp slt i32 %36, 2000
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %37 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load double**, double*** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds double*, double** %38, i64 %idxprom23
  %39 = load double*, double** %arrayidx24, align 8
  store double* %39, double** %col_j, align 8
  %40 = load i32, i32* %l, align 4
  %idxprom25 = sext i32 %40 to i64
  %41 = load double*, double** %col_j, align 8
  %arrayidx26 = getelementptr inbounds double, double* %41, i64 %idxprom25
  %42 = load double, double* %arrayidx26, align 8
  store double %42, double* %temp, align 8
  %43 = load i32, i32* %l, align 4
  %44 = load i32, i32* %k, align 4
  %cmp27 = icmp ne i32 %43, %44
  br i1 %cmp27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %for.body.22
  %45 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %45 to i64
  %46 = load double*, double** %col_j, align 8
  %arrayidx30 = getelementptr inbounds double, double* %46, i64 %idxprom29
  %47 = load double, double* %arrayidx30, align 8
  %48 = load i32, i32* %l, align 4
  %idxprom31 = sext i32 %48 to i64
  %49 = load double*, double** %col_j, align 8
  %arrayidx32 = getelementptr inbounds double, double* %49, i64 %idxprom31
  store double %47, double* %arrayidx32, align 8
  %50 = load double, double* %temp, align 8
  %51 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %51 to i64
  %52 = load double*, double** %col_j, align 8
  %arrayidx34 = getelementptr inbounds double, double* %52, i64 %idxprom33
  store double %50, double* %arrayidx34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %for.body.22
  %53 = load i32, i32* %kp1, align 4
  %sub36 = sub nsw i32 2000, %53
  %54 = load double, double* %temp, align 8
  %55 = load double*, double** %col_k, align 8
  %56 = load i32, i32* %kp1, align 4
  %57 = load double*, double** %col_j, align 8
  %58 = load i32, i32* %kp1, align 4
  call void @daxpy(i32 %sub36, double %54, double* %55, i32 %56, i32 1, double* %57, i32 %58, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %59 = load i32, i32* %j, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %60 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %60, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %61 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %61, i64 1999
  store i32 1999, i32* %arrayidx41, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @dgesl(double** %a, i32* %ipvt, double* %b) #0 {
entry:
  %a.addr = alloca double**, align 8
  %ipvt.addr = alloca i32*, align 8
  %b.addr = alloca double*, align 8
  %t = alloca double, align 8
  %k = alloca i32, align 4
  %kb = alloca i32, align 4
  %l = alloca i32, align 4
  %kp1 = alloca i32, align 4
  store double** %a, double*** %a.addr, align 8
  store i32* %ipvt, i32** %ipvt.addr, align 8
  store double* %b, double** %b.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1999
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %l, align 4
  %4 = load i32, i32* %l, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double*, double** %b.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  %6 = load double, double* %arrayidx2, align 8
  store double %6, double* %t, align 8
  %7 = load i32, i32* %l, align 4
  %8 = load i32, i32* %k, align 4
  %cmp3 = icmp ne i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load double*, double** %b.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8
  %12 = load i32, i32* %l, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load double*, double** %b.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %13, i64 %idxprom6
  store double %11, double* %arrayidx7, align 8
  %14 = load double, double* %t, align 8
  %15 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load double*, double** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 %idxprom8
  store double %14, double* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %k, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %kp1, align 4
  %18 = load i32, i32* %kp1, align 4
  %sub = sub nsw i32 2000, %18
  %19 = load double, double* %t, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load double**, double*** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double*, double** %21, i64 %idxprom10
  %22 = load double*, double** %arrayidx11, align 8
  %23 = load i32, i32* %kp1, align 4
  %24 = load double*, double** %b.addr, align 8
  %25 = load i32, i32* %kp1, align 4
  call void @daxpy(i32 %sub, double %19, double* %22, i32 %23, i32 1, double* %24, i32 %25, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %kb, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.28, %for.end
  %27 = load i32, i32* %kb, align 4
  %cmp13 = icmp slt i32 %27, 2000
  br i1 %cmp13, label %for.body.14, label %for.end.30

for.body.14:                                      ; preds = %for.cond.12
  %28 = load i32, i32* %kb, align 4
  %add15 = add nsw i32 %28, 1
  %sub16 = sub nsw i32 2000, %add15
  store i32 %sub16, i32* %k, align 4
  %29 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load double**, double*** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double*, double** %31, i64 %idxprom18
  %32 = load double*, double** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds double, double* %32, i64 %idxprom17
  %33 = load double, double* %arrayidx20, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %34 to i64
  %35 = load double*, double** %b.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %35, i64 %idxprom21
  %36 = load double, double* %arrayidx22, align 8
  %div = fdiv double %36, %33
  store double %div, double* %arrayidx22, align 8
  %37 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load double*, double** %b.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %38, i64 %idxprom23
  %39 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double -0.000000e+00, %39
  store double %sub25, double* %t, align 8
  %40 = load i32, i32* %k, align 4
  %41 = load double, double* %t, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %42 to i64
  %43 = load double**, double*** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double*, double** %43, i64 %idxprom26
  %44 = load double*, double** %arrayidx27, align 8
  %45 = load double*, double** %b.addr, align 8
  call void @daxpy(i32 %40, double %41, double* %44, i32 0, i32 1, double* %45, i32 0, i32 1)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.14
  %46 = load i32, i32* %kb, align 4
  %inc29 = add nsw i32 %46, 1
  store i32 %inc29, i32* %kb, align 4
  br label %for.cond.12

for.end.30:                                       ; preds = %for.cond.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ga_testing = alloca i8, align 1
  %a = alloca double**, align 8
  %b = alloca double*, align 8
  %x = alloca double*, align 8
  %ipvt = alloca i32*, align 8
  %ops = alloca double, align 8
  %run_time = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %ga_testing, align 1
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %for.body
  store i8 1, i8* %ga_testing, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.2, %for.cond
  br label %if.end.3

if.end.3:                                         ; preds = %for.end, %entry
  %call4 = call noalias i8* @malloc(i64 16000) #7
  %6 = bitcast i8* %call4 to double**
  store double** %6, double*** %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.10, %if.end.3
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %7, 2000
  br i1 %cmp6, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.5
  %call8 = call noalias i8* @malloc(i64 16008) #7
  %8 = bitcast i8* %call8 to double*
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load double**, double*** %a, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %10, i64 %idxprom
  store double* %8, double** %arrayidx9, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  %call13 = call noalias i8* @malloc(i64 16000) #7
  %12 = bitcast i8* %call13 to double*
  store double* %12, double** %b, align 8
  %call14 = call noalias i8* @malloc(i64 16000) #7
  %13 = bitcast i8* %call14 to double*
  store double* %13, double** %x, align 8
  %call15 = call noalias i8* @malloc(i64 8000) #7
  %14 = bitcast i8* %call15 to i32*
  store i32* %14, i32** %ipvt, align 8
  store double 0x41F3E5E475555555, double* %ops, align 8
  %15 = load double**, double*** %a, align 8
  %16 = load double*, double** %b, align 8
  call void @matgen(double** %15, double* %16)
  %17 = load double**, double*** %a, align 8
  %18 = load i32*, i32** %ipvt, align 8
  call void @dgefa(double** %17, i32* %18)
  %19 = load double**, double*** %a, align 8
  %20 = load i32*, i32** %ipvt, align 8
  %21 = load double*, double** %b, align 8
  call void @dgesl(double** %19, i32* %20, double* %21)
  store double 0.000000e+00, double* %run_time, align 8
  %22 = load i32*, i32** %ipvt, align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23) #7
  %24 = load double*, double** %x, align 8
  %25 = bitcast double* %24 to i8*
  call void @free(i8* %25) #7
  %26 = load double*, double** %b, align 8
  %27 = bitcast double* %26 to i8*
  call void @free(i8* %27) #7
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.21, %for.end.12
  %28 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %28, 2000
  br i1 %cmp17, label %for.body.18, label %for.end.23

for.body.18:                                      ; preds = %for.cond.16
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load double**, double*** %a, align 8
  %arrayidx20 = getelementptr inbounds double*, double** %30, i64 %idxprom19
  %31 = load double*, double** %arrayidx20, align 8
  %32 = bitcast double* %31 to i8*
  call void @free(i8* %32) #7
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %33 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %33, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.16

for.end.23:                                       ; preds = %for.cond.16
  %34 = load double**, double*** %a, align 8
  %35 = bitcast double** %34 to i8*
  call void @free(i8* %35) #7
  %36 = load i8, i8* %ga_testing, align 1
  %tobool24 = trunc i8 %36 to i1
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.end.23
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = load double, double* %run_time, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), double %38)
  br label %if.end.28

if.else:                                          ; preds = %for.end.23
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load double, double* %run_time, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), double %40)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.25
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fflush(%struct._IO_FILE* %41)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal double @random_double() #0 {
entry:
  %k = alloca i64, align 8
  %result = alloca double, align 8
  %0 = load i64, i64* @seed, align 8
  %xor = xor i64 %0, 123459876
  store i64 %xor, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %div = sdiv i64 %1, 127773
  store i64 %div, i64* %k, align 8
  %2 = load i64, i64* @seed, align 8
  %3 = load i64, i64* %k, align 8
  %mul = mul nsw i64 %3, 127773
  %sub = sub nsw i64 %2, %mul
  %mul1 = mul nsw i64 16807, %sub
  %4 = load i64, i64* %k, align 8
  %mul2 = mul nsw i64 2836, %4
  %sub3 = sub nsw i64 %mul1, %mul2
  store i64 %sub3, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @seed, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* @seed, align 8
  %conv = sitofp i64 %7 to double
  %mul4 = fmul double 0x3E00000000200FE1, %conv
  store double %mul4, double* %result, align 8
  %8 = load i64, i64* @seed, align 8
  %xor5 = xor i64 %8, 123459876
  store i64 %xor5, i64* @seed, align 8
  %9 = load double, double* %result, align 8
  ret double %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
