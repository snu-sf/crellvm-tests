; ModuleID = './MultiSource.Benchmarks.SciMark2-C/2.Random.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

@dm1 = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define %struct.Random_struct* @new_Random_seed(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %R = alloca %struct.Random_struct*, align 8
  store i32 %seed, i32* %seed.addr, align 4
  %call = call noalias i8* @malloc(i64 112) #2
  %0 = bitcast i8* %call to %struct.Random_struct*
  store %struct.Random_struct* %0, %struct.Random_struct** %R, align 8
  %1 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %2 = load i32, i32* %seed.addr, align 4
  call void @initialize(%struct.Random_struct* %1, i32 %2)
  %3 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %left = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %3, i32 0, i32 5
  store double 0.000000e+00, double* %left, align 8
  %4 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %right = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %4, i32 0, i32 6
  store double 1.000000e+00, double* %right, align 8
  %5 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %width = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %5, i32 0, i32 7
  store double 1.000000e+00, double* %width, align 8
  %6 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %haveRange = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %6, i32 0, i32 4
  store i32 0, i32* %haveRange, align 4
  %7 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  ret %struct.Random_struct* %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @initialize(%struct.Random_struct* %R, i32 %seed) #0 {
entry:
  %R.addr = alloca %struct.Random_struct*, align 8
  %seed.addr = alloca i32, align 4
  %jseed = alloca i32, align 4
  %k0 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %iloop = alloca i32, align 4
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  store i32 %seed, i32* %seed.addr, align 4
  store double 0x3E00000000200000, double* @dm1, align 8
  %0 = load i32, i32* %seed.addr, align 4
  %1 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %seed1 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %1, i32 0, i32 1
  store i32 %0, i32* %seed1, align 4
  %2 = load i32, i32* %seed.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %seed.addr, align 4
  %sub = sub nsw i32 0, %3
  store i32 %sub, i32* %seed.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %seed.addr, align 4
  %cmp2 = icmp slt i32 %4, 2147483647
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %seed.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 2147483647, %cond.false ]
  store i32 %cond, i32* %jseed, align 4
  %6 = load i32, i32* %jseed, align 4
  %rem = srem i32 %6, 2
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  %7 = load i32, i32* %jseed, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %jseed, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %cond.end
  store i32 9069, i32* %k0, align 4
  store i32 0, i32* %k1, align 4
  %8 = load i32, i32* %jseed, align 4
  %rem6 = srem i32 %8, 65536
  store i32 %rem6, i32* %j0, align 4
  %9 = load i32, i32* %jseed, align 4
  %div = sdiv i32 %9, 65536
  store i32 %div, i32* %j1, align 4
  store i32 0, i32* %iloop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %iloop, align 4
  %cmp7 = icmp slt i32 %10, 17
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %j0, align 4
  %12 = load i32, i32* %k0, align 4
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %jseed, align 4
  %13 = load i32, i32* %jseed, align 4
  %div8 = sdiv i32 %13, 65536
  %14 = load i32, i32* %j0, align 4
  %15 = load i32, i32* %k1, align 4
  %mul9 = mul nsw i32 %14, %15
  %add = add nsw i32 %div8, %mul9
  %16 = load i32, i32* %j1, align 4
  %17 = load i32, i32* %k0, align 4
  %mul10 = mul nsw i32 %16, %17
  %add11 = add nsw i32 %add, %mul10
  %rem12 = srem i32 %add11, 32768
  store i32 %rem12, i32* %j1, align 4
  %18 = load i32, i32* %jseed, align 4
  %rem13 = srem i32 %18, 65536
  store i32 %rem13, i32* %j0, align 4
  %19 = load i32, i32* %j0, align 4
  %20 = load i32, i32* %j1, align 4
  %mul14 = mul nsw i32 65536, %20
  %add15 = add nsw i32 %19, %mul14
  %21 = load i32, i32* %iloop, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %m = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %22, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i32], [17 x i32]* %m, i32 0, i64 %idxprom
  store i32 %add15, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %iloop, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %iloop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %i = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %24, i32 0, i32 2
  store i32 4, i32* %i, align 4
  %25 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %j = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %25, i32 0, i32 3
  store i32 16, i32* %j, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Random_struct* @new_Random(i32 %seed, double %left, double %right) #0 {
entry:
  %seed.addr = alloca i32, align 4
  %left.addr = alloca double, align 8
  %right.addr = alloca double, align 8
  %R = alloca %struct.Random_struct*, align 8
  store i32 %seed, i32* %seed.addr, align 4
  store double %left, double* %left.addr, align 8
  store double %right, double* %right.addr, align 8
  %call = call noalias i8* @malloc(i64 112) #2
  %0 = bitcast i8* %call to %struct.Random_struct*
  store %struct.Random_struct* %0, %struct.Random_struct** %R, align 8
  %1 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %2 = load i32, i32* %seed.addr, align 4
  call void @initialize(%struct.Random_struct* %1, i32 %2)
  %3 = load double, double* %left.addr, align 8
  %4 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %left1 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %4, i32 0, i32 5
  store double %3, double* %left1, align 8
  %5 = load double, double* %right.addr, align 8
  %6 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %right2 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %6, i32 0, i32 6
  store double %5, double* %right2, align 8
  %7 = load double, double* %right.addr, align 8
  %8 = load double, double* %left.addr, align 8
  %sub = fsub double %7, %8
  %9 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %width = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %9, i32 0, i32 7
  store double %sub, double* %width, align 8
  %10 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %haveRange = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %10, i32 0, i32 4
  store i32 1, i32* %haveRange, align 4
  %11 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  ret %struct.Random_struct* %11
}

; Function Attrs: nounwind uwtable
define void @Random_delete(%struct.Random_struct* %R) #0 {
entry:
  %R.addr = alloca %struct.Random_struct*, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %1 = bitcast %struct.Random_struct* %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define double @Random_nextDouble(%struct.Random_struct* %R) #0 {
entry:
  %retval = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %k = alloca i32, align 4
  %I = alloca i32, align 4
  %J = alloca i32, align 4
  %m = alloca i32*, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %i = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %I, align 4
  %2 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %j = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %j, align 4
  store i32 %3, i32* %J, align 4
  %4 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %m1 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %4, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i32], [17 x i32]* %m1, i32 0, i32 0
  store i32* %arraydecay, i32** %m, align 8
  %5 = load i32, i32* %I, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %m, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %J, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %m, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %7, %10
  store i32 %sub, i32* %k, align 4
  %11 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %k, align 4
  %add = add nsw i32 %12, 2147483647
  store i32 %add, i32* %k, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %J, align 4
  %idxprom4 = sext i32 %14 to i64
  %15 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %m5 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %15, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [17 x i32], [17 x i32]* %m5, i32 0, i64 %idxprom4
  store i32 %13, i32* %arrayidx6, align 4
  %16 = load i32, i32* %I, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  store i32 16, i32* %I, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %I, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %I, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %18 = load i32, i32* %I, align 4
  %19 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %i10 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %19, i32 0, i32 2
  store i32 %18, i32* %i10, align 4
  %20 = load i32, i32* %J, align 4
  %cmp11 = icmp eq i32 %20, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.end.9
  store i32 16, i32* %J, align 4
  br label %if.end.15

if.else.13:                                       ; preds = %if.end.9
  %21 = load i32, i32* %J, align 4
  %dec14 = add nsw i32 %21, -1
  store i32 %dec14, i32* %J, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  %22 = load i32, i32* %J, align 4
  %23 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %j16 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %23, i32 0, i32 3
  store i32 %22, i32* %j16, align 4
  %24 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %haveRange = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %24, i32 0, i32 4
  %25 = load i32, i32* %haveRange, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %if.end.15
  %26 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %left = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %26, i32 0, i32 5
  %27 = load double, double* %left, align 8
  %28 = load double, double* @dm1, align 8
  %29 = load i32, i32* %k, align 4
  %conv = sitofp i32 %29 to double
  %mul = fmul double %28, %conv
  %30 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %width = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %30, i32 0, i32 7
  %31 = load double, double* %width, align 8
  %mul18 = fmul double %mul, %31
  %add19 = fadd double %27, %mul18
  store double %add19, double* %retval
  br label %return

if.else.20:                                       ; preds = %if.end.15
  %32 = load double, double* @dm1, align 8
  %33 = load i32, i32* %k, align 4
  %conv21 = sitofp i32 %33 to double
  %mul22 = fmul double %32, %conv21
  store double %mul22, double* %retval
  br label %return

return:                                           ; preds = %if.else.20, %if.then.17
  %34 = load double, double* %retval
  ret double %34
}

; Function Attrs: nounwind uwtable
define double* @RandomVector(i32 %N, %struct.Random_struct* %R) #0 {
entry:
  %N.addr = alloca i32, align 4
  %R.addr = alloca %struct.Random_struct*, align 8
  %i = alloca i32, align 4
  %x = alloca double*, align 8
  store i32 %N, i32* %N.addr, align 4
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call to double*
  store double* %1, double** %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call2 = call double @Random_nextDouble(%struct.Random_struct* %4)
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** %x, align 8
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double %call2, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double*, double** %x, align 8
  ret double* %8
}

; Function Attrs: nounwind uwtable
define double** @RandomMatrix(i32 %M, i32 %N, %struct.Random_struct* %R) #0 {
entry:
  %retval = alloca double**, align 8
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %R.addr = alloca %struct.Random_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %A = alloca double**, align 8
  store i32 %M, i32* %M.addr, align 4
  store i32 %N, i32* %N.addr, align 4
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load i32, i32* %M.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call to double**
  store double** %1, double*** %A, align 8
  %2 = load double**, double*** %A, align 8
  %cmp = icmp eq double** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double** null, double*** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %M.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %N.addr, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 8, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #2
  %6 = bitcast i8* %call6 to double*
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double**, double*** %A, align 8
  %arrayidx = getelementptr inbounds double*, double** %8, i64 %idxprom
  store double* %6, double** %arrayidx, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load double**, double*** %A, align 8
  %arrayidx8 = getelementptr inbounds double*, double** %10, i64 %idxprom7
  %11 = load double*, double** %arrayidx8, align 8
  %cmp9 = icmp eq double* %11, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  %12 = load double**, double*** %A, align 8
  %13 = bitcast double** %12 to i8*
  call void @free(i8* %13) #2
  store double** null, double*** %retval
  br label %return

if.end.12:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.12
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %N.addr, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %16 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call17 = call double @Random_nextDouble(%struct.Random_struct* %16)
  %17 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load double**, double*** %A, align 8
  %arrayidx20 = getelementptr inbounds double*, double** %19, i64 %idxprom19
  %20 = load double*, double** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds double, double* %20, i64 %idxprom18
  store double %call17, double* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.16
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %23 = load double**, double*** %A, align 8
  store double** %23, double*** %retval
  br label %return

return:                                           ; preds = %for.end.24, %if.then.11, %if.then
  %24 = load double**, double*** %retval
  ret double** %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
