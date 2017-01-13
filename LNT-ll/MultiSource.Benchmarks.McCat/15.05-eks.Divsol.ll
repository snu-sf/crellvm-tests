; ModuleID = './MultiSource.Benchmarks.McCat/15.05-eks.Divsol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"m=%i, rowstart=%i, rowend=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @HouseMatrix(double** %H, double* %v, i32 %start, i32 %end) #0 {
entry:
  %H.addr = alloca double**, align 8
  %v.addr = alloca double*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca double, align 8
  store double** %H, double*** %H.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load double*, double** %v.addr, align 8
  %1 = load double*, double** %v.addr, align 8
  %2 = load i32, i32* %start.addr, align 4
  %3 = load i32, i32* %end.addr, align 4
  %call = call double @xty(double* %0, double* %1, i32 %2, i32 %3)
  %div = fdiv double 2.000000e+00, %call
  store double %div, double* %a, align 8
  %4 = load double**, double*** %H.addr, align 8
  call void @MakeID(double** %4)
  %5 = load i32, i32* %start.addr, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %end.addr, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %start.addr, align 4
  store i32 %8, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4
  %10 = load i32, i32* %end.addr, align 4
  %cmp2 = icmp sle i32 %9, %10
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %11 = load double, double* %a, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load double*, double** %v.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %13, i64 %idxprom
  %14 = load double, double* %arrayidx, align 8
  %mul = fmul double %11, %14
  %15 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load double*, double** %v.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %16, i64 %idxprom4
  %17 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %mul, %17
  %18 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load double**, double*** %H.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %20, i64 %idxprom8
  %21 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %21, i64 %idxprom7
  %22 = load double, double* %arrayidx10, align 8
  %sub = fsub double %22, %mul6
  store double %sub, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

declare double @xty(double*, double*, i32, i32) #1

declare void @MakeID(double**) #1

; Function Attrs: nounwind uwtable
define void @ApplyHouse(double** %A, double* %v, i32 %start, i32 %end) #0 {
entry:
  %A.addr = alloca double**, align 8
  %v.addr = alloca double*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %M = alloca double**, align 8
  %H = alloca double**, align 8
  store double** %A, double*** %A.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %call = call double** @newMatrix()
  store double** %call, double*** %M, align 8
  %call1 = call double** @newMatrix()
  store double** %call1, double*** %H, align 8
  %0 = load double**, double*** %H, align 8
  %1 = load double*, double** %v.addr, align 8
  call void @HouseMatrix(double** %0, double* %1, i32 0, i32 50)
  %2 = load double**, double*** %M, align 8
  %3 = load double**, double*** %A.addr, align 8
  %4 = load double**, double*** %H, align 8
  call void @matrixMult(double** %2, double** %3, double** %4)
  %5 = load double**, double*** %A.addr, align 8
  %6 = load double**, double*** %H, align 8
  %7 = load double**, double*** %M, align 8
  call void @matrixMult(double** %5, double** %6, double** %7)
  %8 = load double**, double*** %H, align 8
  call void @freeMatrix(double** %8)
  %9 = load double**, double*** %M, align 8
  call void @freeMatrix(double** %9)
  ret void
}

declare double** @newMatrix() #1

declare void @matrixMult(double**, double**, double**) #1

declare void @freeMatrix(double**) #1

; Function Attrs: nounwind uwtable
define void @WeirdHouse(double** %A, double* %v, i32 %row, i32 %sc, i32 %ec) #0 {
entry:
  %A.addr = alloca double**, align 8
  %v.addr = alloca double*, align 8
  %row.addr = alloca i32, align 4
  %sc.addr = alloca i32, align 4
  %ec.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  store double** %A, double*** %A.addr, align 8
  store double* %v, double** %v.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %sc, i32* %sc.addr, align 4
  store i32 %ec, i32* %ec.addr, align 4
  store double 0.000000e+00, double* %a, align 8
  %0 = load i32, i32* %sc.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %ec.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %row.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load double**, double*** %A.addr, align 8
  %arrayidx = getelementptr inbounds double*, double** %5, i64 %idxprom1
  %6 = load double*, double** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx2, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i32, i32* %row.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load double**, double*** %A.addr, align 8
  %arrayidx5 = getelementptr inbounds double*, double** %10, i64 %idxprom4
  %11 = load double*, double** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds double, double* %11, i64 %idxprom3
  %12 = load double, double* %arrayidx6, align 8
  %mul = fmul double %7, %12
  %13 = load double, double* %a, align 8
  %add = fadd double %13, %mul
  store double %add, double* %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %ec.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i32, i32* %row.addr, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load double**, double*** %A.addr, align 8
  %arrayidx9 = getelementptr inbounds double*, double** %17, i64 %idxprom8
  %18 = load double*, double** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom7
  %19 = load double, double* %arrayidx10, align 8
  %20 = load i32, i32* %ec.addr, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load i32, i32* %row.addr, align 4
  %idxprom12 = sext i32 %21 to i64
  %22 = load double**, double*** %A.addr, align 8
  %arrayidx13 = getelementptr inbounds double*, double** %22, i64 %idxprom12
  %23 = load double*, double** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds double, double* %23, i64 %idxprom11
  %24 = load double, double* %arrayidx14, align 8
  %call = call i32 @sign(double %24)
  %conv = sitofp i32 %call to double
  %25 = load double, double* %a, align 8
  %call15 = call double @sqrt(double %25) #3
  %mul16 = fmul double %conv, %call15
  %add17 = fadd double %19, %mul16
  %div = fdiv double 1.000000e+00, %add17
  store double %div, double* %b, align 8
  %26 = load i32, i32* %sc.addr, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %ec.addr, align 4
  %cmp19 = icmp slt i32 %27, %28
  br i1 %cmp19, label %for.body.21, label %for.end.31

for.body.21:                                      ; preds = %for.cond.18
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %30 = load i32, i32* %row.addr, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load double**, double*** %A.addr, align 8
  %arrayidx24 = getelementptr inbounds double*, double** %31, i64 %idxprom23
  %32 = load double*, double** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds double, double* %32, i64 %idxprom22
  %33 = load double, double* %arrayidx25, align 8
  %34 = load double, double* %b, align 8
  %mul26 = fmul double %33, %34
  %35 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %35 to i64
  %36 = load double*, double** %v.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %36, i64 %idxprom27
  store double %mul26, double* %arrayidx28, align 8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.21
  %37 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  %38 = load i32, i32* %ec.addr, align 4
  %idxprom32 = sext i32 %38 to i64
  %39 = load double*, double** %v.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %39, i64 %idxprom32
  store double 1.000000e+00, double* %arrayidx33, align 8
  ret void
}

declare i32 @sign(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define double** @DivideAndSolve(double** %A, i32 %p) #0 {
entry:
  %retval = alloca double**, align 8
  %A.addr = alloca double**, align 8
  %p.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %s = alloca double, align 8
  %c = alloca double, align 8
  %mu = alloca double, align 8
  %i = alloca double, align 8
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %o = alloca i32, align 4
  %rowstartt = alloca i32, align 4
  %colstartt = alloca i32, align 4
  %rowendt = alloca i32, align 4
  %colendt = alloca i32, align 4
  %v = alloca double*, align 8
  %u = alloca double*, align 8
  %x = alloca double*, align 8
  %y = alloca double*, align 8
  %z = alloca double*, align 8
  %B = alloca double**, align 8
  %C = alloca double**, align 8
  %D = alloca double**, align 8
  %E = alloca double**, align 8
  %Q = alloca double**, align 8
  %U = alloca double**, align 8
  %H = alloca double**, align 8
  store double** %A, double*** %A.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  %call = call double** @newIdMatrix()
  store double** %call, double*** %U, align 8
  %call1 = call double** @newMatrix()
  store double** %call1, double*** %H, align 8
  %call2 = call double* @newVector()
  store double* %call2, double** %v, align 8
  %0 = load i32, i32* %p.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sitofp i32 %add to double
  store double %conv, double* %i, align 8
  %1 = load double, double* %i, align 8
  %conv3 = fptosi double %1 to i32
  store i32 %conv3, i32* %rowstartt, align 4
  store i32 0, i32* %colstartt, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load i32, i32* %rowstartt, align 4
  %cmp = icmp slt i32 %2, 51
  br i1 %cmp, label %while.body, label %while.end.113

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %rowstartt, align 4
  %conv5 = sitofp i32 %3 to double
  %4 = load double, double* %i, align 8
  %add6 = fadd double %conv5, %4
  %sub = fsub double %add6, 1.000000e+00
  %cmp7 = fcmp olt double %sub, 5.000000e+01
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %5 = load i32, i32* %rowstartt, align 4
  %conv9 = sitofp i32 %5 to double
  %6 = load double, double* %i, align 8
  %add10 = fadd double %conv9, %6
  %sub11 = fsub double %add10, 1.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub11, %cond.true ], [ 5.000000e+01, %cond.false ]
  %conv12 = fptosi double %cond to i32
  store i32 %conv12, i32* %rowendt, align 4
  %7 = load i32, i32* %rowstartt, align 4
  %conv13 = sitofp i32 %7 to double
  %8 = load double, double* %i, align 8
  %sub14 = fsub double %conv13, %8
  %conv15 = fptosi double %sub14 to i32
  store i32 %conv15, i32* %colstartt, align 4
  %9 = load i32, i32* %colstartt, align 4
  %conv16 = sitofp i32 %9 to double
  %10 = load double, double* %i, align 8
  %add17 = fadd double %conv16, %10
  %sub18 = fsub double %add17, 1.000000e+00
  %conv19 = fptosi double %sub18 to i32
  store i32 %conv19, i32* %colendt, align 4
  %11 = load i32, i32* %colstartt, align 4
  store i32 %11, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %cond.end
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %colendt, align 4
  %cmp20 = icmp sle i32 %12, %13
  br i1 %cmp20, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %14 = load double**, double*** %A.addr, align 8
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %rowstartt, align 4
  %17 = load i32, i32* %rowendt, align 4
  %call22 = call double @norm(double** %14, i32 %15, i32 %16, i32 %17)
  %cmp23 = fcmp une double %call22, 0.000000e+00
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load double**, double*** %A.addr, align 8
  %19 = load double*, double** %v, align 8
  %20 = load i32, i32* %m, align 4
  %21 = load i32, i32* %rowstartt, align 4
  %22 = load i32, i32* %rowendt, align 4
  call void @House(double** %18, double* %19, i32 %20, i32 %21, i32 %22)
  store i32 0, i32* %o, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then
  %23 = load i32, i32* %o, align 4
  %24 = load i32, i32* %rowstartt, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.25
  %25 = load i32, i32* %o, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load double*, double** %v, align 8
  %arrayidx = getelementptr inbounds double, double* %26, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %27 = load i32, i32* %o, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %o, align 4
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %28 = load i32, i32* %rowendt, align 4
  %add29 = add nsw i32 %28, 1
  store i32 %add29, i32* %o, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %for.end
  %29 = load i32, i32* %o, align 4
  %cmp31 = icmp slt i32 %29, 51
  br i1 %cmp31, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.30
  %30 = load i32, i32* %o, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load double*, double** %v, align 8
  %arrayidx35 = getelementptr inbounds double, double* %31, i64 %idxprom34
  store double 0.000000e+00, double* %arrayidx35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %32 = load i32, i32* %o, align 4
  %inc37 = add nsw i32 %32, 1
  store i32 %inc37, i32* %o, align 4
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  %33 = load double**, double*** %A.addr, align 8
  %34 = load double*, double** %v, align 8
  %35 = load i32, i32* %rowstartt, align 4
  %36 = load i32, i32* %rowendt, align 4
  call void @ApplyHouse(double** %33, double* %34, i32 %35, i32 %36)
  br label %if.end

if.end:                                           ; preds = %for.end.38, %for.body
  %37 = load i32, i32* %m, align 4
  %38 = load i32, i32* %rowstartt, align 4
  %39 = load i32, i32* %rowendt, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %37, i32 %38, i32 %39)
  %40 = load double*, double** %v, align 8
  call void @printVector(double* %40)
  %41 = load double**, double*** %A.addr, align 8
  call void @printMatrix(double** %41)
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end
  %42 = load i32, i32* %m, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* %m, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %43 = load double**, double*** %A.addr, align 8
  %44 = load double*, double** %v, align 8
  %45 = load i32, i32* %rowstartt, align 4
  %46 = load i32, i32* %colstartt, align 4
  %47 = load i32, i32* %colendt, align 4
  call void @WeirdHouse(double** %43, double* %44, i32 %45, i32 %46, i32 %47)
  %48 = load double**, double*** %A.addr, align 8
  %49 = load double*, double** %v, align 8
  %50 = load i32, i32* %colstartt, align 4
  %51 = load i32, i32* %colendt, align 4
  call void @ApplyHouse(double** %48, double* %49, i32 %50, i32 %51)
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.61, %for.end.42
  %52 = load i32, i32* %colendt, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load i32, i32* %rowstartt, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load double**, double*** %A.addr, align 8
  %arrayidx46 = getelementptr inbounds double*, double** %54, i64 %idxprom45
  %55 = load double*, double** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds double, double* %55, i64 %idxprom44
  %56 = load double, double* %arrayidx47, align 8
  %57 = load i32, i32* %colendt, align 4
  %idxprom48 = sext i32 %57 to i64
  %58 = load i32, i32* %rowstartt, align 4
  %sub49 = sub nsw i32 %58, 1
  %idxprom50 = sext i32 %sub49 to i64
  %59 = load double**, double*** %A.addr, align 8
  %arrayidx51 = getelementptr inbounds double*, double** %59, i64 %idxprom50
  %60 = load double*, double** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds double, double* %60, i64 %idxprom48
  %61 = load double, double* %arrayidx52, align 8
  %62 = load i32, i32* %colendt, align 4
  %add53 = add nsw i32 %62, 1
  %idxprom54 = sext i32 %add53 to i64
  %63 = load i32, i32* %rowstartt, align 4
  %idxprom55 = sext i32 %63 to i64
  %64 = load double**, double*** %A.addr, align 8
  %arrayidx56 = getelementptr inbounds double*, double** %64, i64 %idxprom55
  %65 = load double*, double** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds double, double* %65, i64 %idxprom54
  %66 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double %61, %66
  %mul = fmul double %sub58, 1.000000e-10
  %cmp59 = fcmp ogt double %56, %mul
  br i1 %cmp59, label %while.body.61, label %while.end

while.body.61:                                    ; preds = %while.cond.43
  %67 = load double**, double*** %A.addr, align 8
  call void @printMatrix(double** %67)
  %68 = load i32, i32* %colendt, align 4
  %idxprom62 = sext i32 %68 to i64
  %69 = load i32, i32* %rowstartt, align 4
  %sub63 = sub nsw i32 %69, 1
  %idxprom64 = sext i32 %sub63 to i64
  %70 = load double**, double*** %A.addr, align 8
  %arrayidx65 = getelementptr inbounds double*, double** %70, i64 %idxprom64
  %71 = load double*, double** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds double, double* %71, i64 %idxprom62
  %72 = load double, double* %arrayidx66, align 8
  %73 = load i32, i32* %colendt, align 4
  %add67 = add nsw i32 %73, 1
  %idxprom68 = sext i32 %add67 to i64
  %74 = load i32, i32* %rowstartt, align 4
  %idxprom69 = sext i32 %74 to i64
  %75 = load double**, double*** %A.addr, align 8
  %arrayidx70 = getelementptr inbounds double*, double** %75, i64 %idxprom69
  %76 = load double*, double** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds double, double* %76, i64 %idxprom68
  %77 = load double, double* %arrayidx71, align 8
  %sub72 = fsub double %72, %77
  %div = fdiv double %sub72, 2.000000e+00
  store double %div, double* %d, align 8
  %78 = load i32, i32* %colendt, align 4
  %idxprom73 = sext i32 %78 to i64
  %79 = load i32, i32* %rowstartt, align 4
  %idxprom74 = sext i32 %79 to i64
  %80 = load double**, double*** %A.addr, align 8
  %arrayidx75 = getelementptr inbounds double*, double** %80, i64 %idxprom74
  %81 = load double*, double** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds double, double* %81, i64 %idxprom73
  %82 = load double, double* %arrayidx76, align 8
  store double %82, double* %b, align 8
  %83 = load i32, i32* %colendt, align 4
  %add77 = add nsw i32 %83, 1
  %idxprom78 = sext i32 %add77 to i64
  %84 = load i32, i32* %rowstartt, align 4
  %idxprom79 = sext i32 %84 to i64
  %85 = load double**, double*** %A.addr, align 8
  %arrayidx80 = getelementptr inbounds double*, double** %85, i64 %idxprom79
  %86 = load double*, double** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds double, double* %86, i64 %idxprom78
  %87 = load double, double* %arrayidx81, align 8
  %88 = load double, double* %d, align 8
  %add82 = fadd double %87, %88
  %89 = load double, double* %d, align 8
  %call83 = call i32 @sign(double %89)
  %conv84 = sitofp i32 %call83 to double
  %90 = load double, double* %d, align 8
  %91 = load double, double* %d, align 8
  %mul85 = fmul double %90, %91
  %92 = load double, double* %b, align 8
  %93 = load double, double* %b, align 8
  %mul86 = fmul double %92, %93
  %add87 = fadd double %mul85, %mul86
  %call88 = call double @sqrt(double %add87) #3
  %mul89 = fmul double %conv84, %call88
  %sub90 = fsub double %add82, %mul89
  store double %sub90, double* %mu, align 8
  %94 = load i32, i32* %colendt, align 4
  %idxprom91 = sext i32 %94 to i64
  %95 = load i32, i32* %rowstartt, align 4
  %sub92 = sub nsw i32 %95, 1
  %idxprom93 = sext i32 %sub92 to i64
  %96 = load double**, double*** %A.addr, align 8
  %arrayidx94 = getelementptr inbounds double*, double** %96, i64 %idxprom93
  %97 = load double*, double** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds double, double* %97, i64 %idxprom91
  %98 = load double, double* %arrayidx95, align 8
  %99 = load double, double* %mu, align 8
  %sub96 = fsub double %98, %99
  %100 = load i32, i32* %colendt, align 4
  %idxprom97 = sext i32 %100 to i64
  %101 = load i32, i32* %rowstartt, align 4
  %idxprom98 = sext i32 %101 to i64
  %102 = load double**, double*** %A.addr, align 8
  %arrayidx99 = getelementptr inbounds double*, double** %102, i64 %idxprom98
  %103 = load double*, double** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds double, double* %103, i64 %idxprom97
  %104 = load double, double* %arrayidx100, align 8
  call void @Givens(double %sub96, double %104, double* %s, double* %c)
  %105 = load double**, double*** %A.addr, align 8
  %106 = load double, double* %s, align 8
  %107 = load double, double* %c, align 8
  %108 = load i32, i32* %rowstartt, align 4
  %sub101 = sub nsw i32 %108, 1
  %109 = load i32, i32* %rowstartt, align 4
  call void @ApplyGivens(double** %105, double %106, double %107, i32 %sub101, i32 %109, i32 0, i32 50)
  %110 = load i32, i32* %colendt, align 4
  %idxprom102 = sext i32 %110 to i64
  %111 = load i32, i32* %colstartt, align 4
  %idxprom103 = sext i32 %111 to i64
  %112 = load double**, double*** %A.addr, align 8
  %arrayidx104 = getelementptr inbounds double*, double** %112, i64 %idxprom103
  %113 = load double*, double** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds double, double* %113, i64 %idxprom102
  %114 = load double, double* %arrayidx105, align 8
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double %114)
  br label %while.cond.43

while.end:                                        ; preds = %while.cond.43
  %115 = load double, double* %i, align 8
  %116 = load i32, i32* %rowstartt, align 4
  %conv107 = sitofp i32 %116 to double
  %add108 = fadd double %conv107, %115
  %conv109 = fptosi double %add108 to i32
  store i32 %conv109, i32* %rowstartt, align 4
  %117 = load double, double* %i, align 8
  %118 = load i32, i32* %colstartt, align 4
  %conv110 = sitofp i32 %118 to double
  %add111 = fadd double %conv110, %117
  %conv112 = fptosi double %add111 to i32
  store i32 %conv112, i32* %colstartt, align 4
  br label %while.cond

while.end.113:                                    ; preds = %while.cond
  %119 = load double**, double*** %retval
  ret double** %119
}

declare double** @newIdMatrix() #1

declare double* @newVector() #1

declare double @norm(double**, i32, i32, i32) #1

declare void @House(double**, double*, i32, i32, i32) #1

declare i32 @printf(i8*, ...) #1

declare void @printVector(double*) #1

declare void @printMatrix(double**) #1

declare void @Givens(double, double, double*, double*) #1

declare void @ApplyGivens(double**, double, double, i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
