; ModuleID = './MultiSource.Benchmarks.SciMark2-C/5.kernel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }
%struct.Stopwatch_struct = type { i32, double, double }

; Function Attrs: nounwind uwtable
define double @kernel_measureFFT(i32 %N, double %mintime, %struct.Random_struct* %R) #0 {
entry:
  %N.addr = alloca i32, align 4
  %mintime.addr = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %twoN = alloca i32, align 4
  %x = alloca double*, align 8
  %cycles = alloca i64, align 8
  %Q = alloca %struct.Stopwatch_struct*, align 8
  %i = alloca i32, align 4
  %result = alloca double, align 8
  store i32 %N, i32* %N.addr, align 4
  store double %mintime, double* %mintime.addr, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %mul = mul nsw i32 2, %0
  store i32 %mul, i32* %twoN, align 4
  %1 = load i32, i32* %twoN, align 4
  %2 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call = call double* @RandomVector(i32 %1, %struct.Random_struct* %2)
  store double* %call, double** %x, align 8
  store i64 1, i64* %cycles, align 8
  %call1 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %call1, %struct.Stopwatch_struct** %Q, align 8
  store i32 0, i32* %i, align 4
  store double 0.000000e+00, double* %result, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %cycles, align 8
  %mul2 = mul nsw i64 %5, 8
  %cmp = icmp slt i64 %conv, %mul2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %twoN, align 4
  %7 = load double*, double** %x, align 8
  call void @FFT_transform(i32 %6, double* %7)
  %8 = load i32, i32* %twoN, align 4
  %9 = load double*, double** %x, align 8
  call void @FFT_inverse(i32 %8, double* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %11)
  %12 = load i64, i64* %cycles, align 8
  %cmp4 = icmp sgt i64 %12, 4096
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %while.end

if.end:                                           ; preds = %for.end
  %13 = load i64, i64* %cycles, align 8
  %mul6 = mul nsw i64 %13, 2
  store i64 %mul6, i64* %cycles, align 8
  br label %while.body

while.end:                                        ; preds = %if.then
  %14 = load i32, i32* %N.addr, align 4
  %call7 = call double @FFT_num_flops(i32 %14)
  %15 = load i64, i64* %cycles, align 8
  %conv8 = sitofp i64 %15 to double
  %mul9 = fmul double %call7, %conv8
  %16 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  %call10 = call double @Stopwatch_read(%struct.Stopwatch_struct* %16)
  %div = fdiv double %mul9, %call10
  %mul11 = fmul double %div, 1.000000e-06
  store double %mul11, double* %result, align 8
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %17)
  %18 = load double*, double** %x, align 8
  %19 = bitcast double* %18 to i8*
  call void @free(i8* %19) #4
  %20 = load double, double* %result, align 8
  ret double %20
}

declare double* @RandomVector(i32, %struct.Random_struct*) #1

declare %struct.Stopwatch_struct* @new_Stopwatch() #1

declare void @Stopwatch_start(%struct.Stopwatch_struct*) #1

declare void @FFT_transform(i32, double*) #1

declare void @FFT_inverse(i32, double*) #1

declare void @Stopwatch_stop(%struct.Stopwatch_struct*) #1

declare double @FFT_num_flops(i32) #1

declare double @Stopwatch_read(%struct.Stopwatch_struct*) #1

declare void @Stopwatch_delete(%struct.Stopwatch_struct*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define double @kernel_measureSOR(i32 %N, double %min_time, %struct.Random_struct* %R) #0 {
entry:
  %N.addr = alloca i32, align 4
  %min_time.addr = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %G = alloca double**, align 8
  %result = alloca double, align 8
  %Q = alloca %struct.Stopwatch_struct*, align 8
  %cycles = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double %min_time, double* %min_time.addr, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call = call double** @RandomMatrix(i32 %0, i32 %1, %struct.Random_struct* %2)
  store double** %call, double*** %G, align 8
  store double 0.000000e+00, double* %result, align 8
  %call1 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %call1, %struct.Stopwatch_struct** %Q, align 8
  store i32 1, i32* %cycles, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %3)
  %4 = load i32, i32* %N.addr, align 4
  %5 = load i32, i32* %N.addr, align 4
  %6 = load double**, double*** %G, align 8
  %7 = load i32, i32* %cycles, align 4
  %mul = mul nsw i32 %7, 16
  call void @SOR_execute(i32 %4, i32 %5, double 1.250000e+00, double** %6, i32 %mul)
  %8 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %8)
  %9 = load i32, i32* %cycles, align 4
  %cmp = icmp sgt i32 %9, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load i32, i32* %cycles, align 4
  %mul2 = mul nsw i32 %10, 2
  store i32 %mul2, i32* %cycles, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %11 = load i32, i32* %N.addr, align 4
  %12 = load i32, i32* %N.addr, align 4
  %13 = load i32, i32* %cycles, align 4
  %call3 = call double @SOR_num_flops(i32 %11, i32 %12, i32 %13)
  %14 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  %call4 = call double @Stopwatch_read(%struct.Stopwatch_struct* %14)
  %div = fdiv double %call3, %call4
  %mul5 = fmul double %div, 1.000000e-06
  store double %mul5, double* %result, align 8
  %15 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %15)
  %16 = load i32, i32* %N.addr, align 4
  %17 = load i32, i32* %N.addr, align 4
  %18 = load double**, double*** %G, align 8
  call void @Array2D_double_delete(i32 %16, i32 %17, double** %18)
  %19 = load double, double* %result, align 8
  ret double %19
}

declare double** @RandomMatrix(i32, i32, %struct.Random_struct*) #1

declare void @SOR_execute(i32, i32, double, double**, i32) #1

declare double @SOR_num_flops(i32, i32, i32) #1

declare void @Array2D_double_delete(i32, i32, double**) #1

; Function Attrs: nounwind uwtable
define double @kernel_measureMonteCarlo(double %min_time, %struct.Random_struct* %R) #0 {
entry:
  %min_time.addr = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %result = alloca double, align 8
  %Q = alloca %struct.Stopwatch_struct*, align 8
  %cycles = alloca i32, align 4
  store double %min_time, double* %min_time.addr, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  store double 0.000000e+00, double* %result, align 8
  %call = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %call, %struct.Stopwatch_struct** %Q, align 8
  store i32 1, i32* %cycles, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %0)
  %1 = load i32, i32* %cycles, align 4
  %mul = mul nsw i32 %1, 65536
  %call1 = call double @MonteCarlo_integrate(i32 %mul)
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %2)
  %3 = load i32, i32* %cycles, align 4
  %cmp = icmp sgt i32 %3, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* %cycles, align 4
  %mul2 = mul nsw i32 %4, 2
  store i32 %mul2, i32* %cycles, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %5 = load i32, i32* %cycles, align 4
  %call3 = call double @MonteCarlo_num_flops(i32 %5)
  %6 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  %call4 = call double @Stopwatch_read(%struct.Stopwatch_struct* %6)
  %div = fdiv double %call3, %call4
  %mul5 = fmul double %div, 1.000000e-06
  store double %mul5, double* %result, align 8
  %7 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %7)
  %8 = load double, double* %result, align 8
  ret double %8
}

declare double @MonteCarlo_integrate(i32) #1

declare double @MonteCarlo_num_flops(i32) #1

; Function Attrs: nounwind uwtable
define double @kernel_measureSparseMatMult(i32 %N, i32 %nz, double %min_time, %struct.Random_struct* %R) #0 {
entry:
  %N.addr = alloca i32, align 4
  %nz.addr = alloca i32, align 4
  %min_time.addr = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %x = alloca double*, align 8
  %y = alloca double*, align 8
  %result = alloca double, align 8
  %nr = alloca i32, align 4
  %anz = alloca i32, align 4
  %val = alloca double*, align 8
  %col = alloca i32*, align 8
  %row = alloca i32*, align 8
  %r = alloca i32, align 4
  %cycles = alloca i32, align 4
  %Q = alloca %struct.Stopwatch_struct*, align 8
  %rowr = alloca i32, align 4
  %step = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %nz, i32* %nz.addr, align 4
  store double %min_time, double* %min_time.addr, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call = call double* @RandomVector(i32 %0, %struct.Random_struct* %1)
  store double* %call, double** %x, align 8
  %2 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %call1 = call noalias i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call1 to double*
  store double* %3, double** %y, align 8
  store double 0.000000e+00, double* %result, align 8
  %4 = load i32, i32* %nz.addr, align 4
  %5 = load i32, i32* %N.addr, align 4
  %div = sdiv i32 %4, %5
  store i32 %div, i32* %nr, align 4
  %6 = load i32, i32* %nr, align 4
  %7 = load i32, i32* %N.addr, align 4
  %mul2 = mul nsw i32 %6, %7
  store i32 %mul2, i32* %anz, align 4
  %8 = load i32, i32* %anz, align 4
  %9 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call3 = call double* @RandomVector(i32 %8, %struct.Random_struct* %9)
  store double* %call3, double** %val, align 8
  %10 = load i32, i32* %nz.addr, align 4
  %conv4 = sext i32 %10 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call noalias i8* @malloc(i64 %mul5) #4
  %11 = bitcast i8* %call6 to i32*
  store i32* %11, i32** %col, align 8
  %12 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %12, 1
  %conv7 = sext i32 %add to i64
  %mul8 = mul i64 4, %conv7
  %call9 = call noalias i8* @malloc(i64 %mul8) #4
  %13 = bitcast i8* %call9 to i32*
  store i32* %13, i32** %row, align 8
  store i32 0, i32* %r, align 4
  store i32 1, i32* %cycles, align 4
  %call10 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %call10, %struct.Stopwatch_struct** %Q, align 8
  %14 = load i32*, i32** %row, align 8
  %arrayidx = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %15 = load i32, i32* %r, align 4
  %16 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %r, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32*, i32** %row, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx12, align 4
  store i32 %19, i32* %rowr, align 4
  %20 = load i32, i32* %r, align 4
  %21 = load i32, i32* %nr, align 4
  %div13 = sdiv i32 %20, %21
  store i32 %div13, i32* %step, align 4
  store i32 0, i32* %i, align 4
  %22 = load i32, i32* %rowr, align 4
  %23 = load i32, i32* %nr, align 4
  %add14 = add nsw i32 %22, %23
  %24 = load i32, i32* %r, align 4
  %add15 = add nsw i32 %24, 1
  %idxprom16 = sext i32 %add15 to i64
  %25 = load i32*, i32** %row, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  store i32 %add14, i32* %arrayidx17, align 4
  %26 = load i32, i32* %step, align 4
  %cmp18 = icmp slt i32 %26, 1
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %step, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %nr, align 4
  %cmp21 = icmp slt i32 %27, %28
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %step, align 4
  %mul24 = mul nsw i32 %29, %30
  %31 = load i32, i32* %rowr, align 4
  %32 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %31, %32
  %idxprom26 = sext i32 %add25 to i64
  %33 = load i32*, i32** %col, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %33, i64 %idxprom26
  store i32 %mul24, i32* %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %35 = load i32, i32* %r, align 4
  %inc29 = add nsw i32 %35, 1
  store i32 %inc29, i32* %r, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.end.30, %if.end.35
  %36 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %36)
  %37 = load i32, i32* %N.addr, align 4
  %38 = load double*, double** %y, align 8
  %39 = load double*, double** %val, align 8
  %40 = load i32*, i32** %row, align 8
  %41 = load i32*, i32** %col, align 8
  %42 = load double*, double** %x, align 8
  %43 = load i32, i32* %cycles, align 4
  %mul31 = mul nsw i32 %43, 64
  call void @SparseCompRow_matmult(i32 %37, double* %38, double* %39, i32* %40, i32* %41, double* %42, i32 %mul31)
  %44 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %44)
  %45 = load i32, i32* %cycles, align 4
  %cmp32 = icmp sgt i32 %45, 4096
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %while.body
  br label %while.end

if.end.35:                                        ; preds = %while.body
  %46 = load i32, i32* %cycles, align 4
  %mul36 = mul nsw i32 %46, 2
  store i32 %mul36, i32* %cycles, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.34
  %47 = load i32, i32* %N.addr, align 4
  %48 = load i32, i32* %nz.addr, align 4
  %49 = load i32, i32* %cycles, align 4
  %call37 = call double @SparseCompRow_num_flops(i32 %47, i32 %48, i32 %49)
  %50 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  %call38 = call double @Stopwatch_read(%struct.Stopwatch_struct* %50)
  %div39 = fdiv double %call37, %call38
  %mul40 = fmul double %div39, 1.000000e-06
  store double %mul40, double* %result, align 8
  %51 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %51)
  %52 = load i32*, i32** %row, align 8
  %53 = bitcast i32* %52 to i8*
  call void @free(i8* %53) #4
  %54 = load i32*, i32** %col, align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* %55) #4
  %56 = load double*, double** %val, align 8
  %57 = bitcast double* %56 to i8*
  call void @free(i8* %57) #4
  %58 = load double*, double** %y, align 8
  %59 = bitcast double* %58 to i8*
  call void @free(i8* %59) #4
  %60 = load double*, double** %x, align 8
  %61 = bitcast double* %60 to i8*
  call void @free(i8* %61) #4
  %62 = load double, double* %result, align 8
  ret double %62
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare void @SparseCompRow_matmult(i32, double*, double*, i32*, i32*, double*, i32) #1

declare double @SparseCompRow_num_flops(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define double @kernel_measureLU(i32 %N, double %min_time, %struct.Random_struct* %R) #0 {
entry:
  %N.addr = alloca i32, align 4
  %min_time.addr = alloca double, align 8
  %R.addr = alloca %struct.Random_struct*, align 8
  %A = alloca double**, align 8
  %lu = alloca double**, align 8
  %pivot = alloca i32*, align 8
  %Q = alloca %struct.Stopwatch_struct*, align 8
  %result = alloca double, align 8
  %i = alloca i32, align 4
  %cycles = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store double %min_time, double* %min_time.addr, align 8
  store %struct.Random_struct* %R, %struct.Random_struct** %R.addr, align 8
  store double** null, double*** %A, align 8
  store double** null, double*** %lu, align 8
  store i32* null, i32** %pivot, align 8
  %call = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %call, %struct.Stopwatch_struct** %Q, align 8
  store double 0.000000e+00, double* %result, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %cycles, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load %struct.Random_struct*, %struct.Random_struct** %R.addr, align 8
  %call1 = call double** @RandomMatrix(i32 %0, i32 %1, %struct.Random_struct* %2)
  store double** %call1, double*** %A, align 8
  %cmp = icmp eq double** %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %N.addr, align 4
  %4 = load i32, i32* %N.addr, align 4
  %call2 = call double** @new_Array2D_double(i32 %3, i32 %4)
  store double** %call2, double*** %lu, align 8
  %cmp3 = icmp eq double** %call2, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @exit(i32 1) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  %5 = load i32, i32* %N.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call6 = call noalias i8* @malloc(i64 %mul) #4
  %6 = bitcast i8* %call6 to i32*
  store i32* %6, i32** %pivot, align 8
  %cmp7 = icmp eq i32* %6, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  call void @exit(i32 1) #5
  unreachable

if.end.10:                                        ; preds = %if.end.5
  br label %while.body

while.body:                                       ; preds = %if.end.10, %if.end.17
  %7 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %cycles, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %N.addr, align 4
  %11 = load i32, i32* %N.addr, align 4
  %12 = load double**, double*** %lu, align 8
  %13 = load double**, double*** %A, align 8
  call void @Array2D_double_copy(i32 %10, i32 %11, double** %12, double** %13)
  %14 = load i32, i32* %N.addr, align 4
  %15 = load i32, i32* %N.addr, align 4
  %16 = load double**, double*** %lu, align 8
  %17 = load i32*, i32** %pivot, align 8
  %call13 = call i32 @LU_factor(i32 %14, i32 %15, double** %16, i32* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %19)
  %20 = load i32, i32* %cycles, align 4
  %cmp14 = icmp sgt i32 %20, 4096
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  br label %while.end

if.end.17:                                        ; preds = %for.end
  %21 = load i32, i32* %cycles, align 4
  %mul18 = mul nsw i32 %21, 2
  store i32 %mul18, i32* %cycles, align 4
  br label %while.body

while.end:                                        ; preds = %if.then.16
  %22 = load i32, i32* %N.addr, align 4
  %call19 = call double @LU_num_flops(i32 %22)
  %23 = load i32, i32* %cycles, align 4
  %conv20 = sitofp i32 %23 to double
  %mul21 = fmul double %call19, %conv20
  %24 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  %call22 = call double @Stopwatch_read(%struct.Stopwatch_struct* %24)
  %div = fdiv double %mul21, %call22
  %mul23 = fmul double %div, 1.000000e-06
  store double %mul23, double* %result, align 8
  %25 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %25)
  %26 = load i32*, i32** %pivot, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27) #4
  %28 = load i32, i32* %N.addr, align 4
  %29 = load i32, i32* %N.addr, align 4
  %30 = load double**, double*** %lu, align 8
  call void @Array2D_double_delete(i32 %28, i32 %29, double** %30)
  %31 = load i32, i32* %N.addr, align 4
  %32 = load i32, i32* %N.addr, align 4
  %33 = load double**, double*** %A, align 8
  call void @Array2D_double_delete(i32 %31, i32 %32, double** %33)
  %34 = load double, double* %result, align 8
  ret double %34
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare double** @new_Array2D_double(i32, i32) #1

declare void @Array2D_double_copy(i32, i32, double**, double**) #1

declare i32 @LU_factor(i32, i32, double**, i32*) #1

declare double @LU_num_flops(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
