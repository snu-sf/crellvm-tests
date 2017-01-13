; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/17.AMGmk.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

@testIter = constant i32 2000, align 4
@totalWallTime = global double 0.000000e+00, align 8
@totalCPUTime = global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"//------------ \0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"// \0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"//  Sequoia Benchmark Version 1.0 \0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"//   MATVEC\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"//   Relax\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"//   Axpy\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" \0A Matvec: error: %e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" \0A Relax: error: %e\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c" \0A Axpy: error: %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %del_wtime = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store double 0.000000e+00, double* %del_wtime, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call6 = call i32 @gettimeofday(%struct.timeval* %t0, %struct.timezone* null) #4
  %call7 = call i64 @clock() #4
  store i64 %call7, i64* %t0_cpu, align 8
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Matvec()
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Relax()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Axpy()
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %call26 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* null) #4
  %call27 = call i64 @clock() #4
  store i64 %call27, i64* %t1_cpu, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %tv_sec28 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 0
  %1 = load i64, i64* %tv_sec28, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8
  %tv_usec29 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 1
  %3 = load i64, i64* %tv_usec29, align 8
  %sub30 = sub nsw i64 %2, %3
  %conv31 = sitofp i64 %sub30 to double
  %div = fdiv double %conv31, 1.000000e+06
  %add = fadd double %conv, %div
  store double %add, double* %del_wtime, align 8
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind
declare i64 @clock() #2

; Function Attrs: nounwind uwtable
define void @test_Matvec() #0 {
entry:
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %A = alloca %struct.hypre_CSRMatrix*, align 8
  %x = alloca %struct.hypre_Vector*, align 8
  %y = alloca %struct.hypre_Vector*, align 8
  %sol = alloca %struct.hypre_Vector*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %i = alloca i32, align 4
  %values = alloca double*, align 8
  %y_data = alloca double*, align 8
  %sol_data = alloca double*, align 8
  %error = alloca double, align 8
  %diff = alloca double, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store i32 50, i32* %nx, align 4
  store i32 50, i32* %ny, align 4
  store i32 50, i32* %nz, align 4
  %call = call i8* @hypre_CAlloc(i32 4, i32 8)
  %0 = bitcast i8* %call to double*
  store double* %0, double** %values, align 8
  %1 = load double*, double** %values, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  store double 6.000000e+00, double* %arrayidx, align 8
  %2 = load double*, double** %values, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  store double -1.000000e+00, double* %arrayidx1, align 8
  %3 = load double*, double** %values, align 8
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 2
  store double -1.000000e+00, double* %arrayidx2, align 8
  %4 = load double*, double** %values, align 8
  %arrayidx3 = getelementptr inbounds double, double* %4, i64 3
  store double -1.000000e+00, double* %arrayidx3, align 8
  %5 = load i32, i32* %nx, align 4
  %6 = load i32, i32* %ny, align 4
  %7 = load i32, i32* %nz, align 4
  %8 = load double*, double** %values, align 8
  %call4 = call %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %5, i32 %6, i32 %7, double* %8, %struct.hypre_Vector** %y, %struct.hypre_Vector** %x, %struct.hypre_Vector** %sol)
  store %struct.hypre_CSRMatrix* %call4, %struct.hypre_CSRMatrix** %A, align 8
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call5 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %9, double 1.000000e+00)
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call6 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %10, double 0.000000e+00)
  %call7 = call i32 @gettimeofday(%struct.timeval* %t0, %struct.timezone* null) #4
  %call8 = call i64 @clock() #4
  store i64 %call8, i64* %t0_cpu, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %11, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call9 = call i32 @hypre_CSRMatrixMatvec(double 1.000000e+00, %struct.hypre_CSRMatrix* %12, %struct.hypre_Vector* %13, double 0.000000e+00, %struct.hypre_Vector* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* null) #4
  %call11 = call i64 @clock() #4
  store i64 %call11, i64* %t1_cpu, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 0
  %16 = load i64, i64* %tv_sec, align 8
  %tv_sec12 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 0
  %17 = load i64, i64* %tv_sec12, align 8
  %sub = sub nsw i64 %16, %17
  %conv = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 1
  %18 = load i64, i64* %tv_usec, align 8
  %tv_usec13 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 1
  %19 = load i64, i64* %tv_usec13, align 8
  %sub14 = sub nsw i64 %18, %19
  %conv15 = sitofp i64 %sub14 to double
  %div = fdiv double %conv15, 1.000000e+06
  %add = fadd double %conv, %div
  %20 = load double, double* @totalWallTime, align 8
  %add16 = fadd double %20, %add
  store double %add16, double* @totalWallTime, align 8
  %21 = load i64, i64* %t1_cpu, align 8
  %22 = load i64, i64* %t0_cpu, align 8
  %sub17 = sub nsw i64 %21, %22
  %conv18 = sitofp i64 %sub17 to double
  %div19 = fdiv double %conv18, 1.000000e+06
  %23 = load double, double* @totalCPUTime, align 8
  %add20 = fadd double %23, %div19
  store double %add20, double* @totalCPUTime, align 8
  %24 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %24, i32 0, i32 0
  %25 = load double*, double** %data, align 8
  store double* %25, double** %y_data, align 8
  %26 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %data21 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %26, i32 0, i32 0
  %27 = load double*, double** %data21, align 8
  store double* %27, double** %sol_data, align 8
  store double 0.000000e+00, double* %error, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.34, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %nx, align 4
  %30 = load i32, i32* %ny, align 4
  %mul = mul nsw i32 %29, %30
  %31 = load i32, i32* %nz, align 4
  %mul23 = mul nsw i32 %mul, %31
  %cmp24 = icmp slt i32 %28, %mul23
  br i1 %cmp24, label %for.body.26, label %for.end.36

for.body.26:                                      ; preds = %for.cond.22
  %32 = load i32, i32* %i, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load double*, double** %y_data, align 8
  %arrayidx27 = getelementptr inbounds double, double* %33, i64 %idxprom
  %34 = load double, double* %arrayidx27, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load double*, double** %sol_data, align 8
  %arrayidx29 = getelementptr inbounds double, double* %36, i64 %idxprom28
  %37 = load double, double* %arrayidx29, align 8
  %sub30 = fsub double %34, %37
  %call31 = call double @fabs(double %sub30) #5
  store double %call31, double* %diff, align 8
  %38 = load double, double* %diff, align 8
  %39 = load double, double* %error, align 8
  %cmp32 = fcmp ogt double %38, %39
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.26
  %40 = load double, double* %diff, align 8
  store double %40, double* %error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.26
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %41 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %41, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.22

for.end.36:                                       ; preds = %for.cond.22
  %42 = load double, double* %error, align 8
  %cmp37 = fcmp ogt double %42, 0.000000e+00
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %for.end.36
  %43 = load double, double* %error, align 8
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), double %43)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %for.end.36
  %44 = load double*, double** %values, align 8
  %45 = bitcast double* %44 to i8*
  call void @hypre_Free(i8* %45)
  store double* null, double** %values, align 8
  %46 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %call42 = call i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %46)
  %47 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call43 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %47)
  %48 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call44 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %48)
  %49 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %call45 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %49)
  ret void
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32, i32, i32, double*, %struct.hypre_Vector**, %struct.hypre_Vector**, %struct.hypre_Vector**) #1

declare i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector*, double) #1

declare i32 @hypre_CSRMatrixMatvec(double, %struct.hypre_CSRMatrix*, %struct.hypre_Vector*, double, %struct.hypre_Vector*) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @hypre_Free(i8*) #1

declare i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix*) #1

declare i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector*) #1

; Function Attrs: nounwind uwtable
define void @test_Relax() #0 {
entry:
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %A = alloca %struct.hypre_CSRMatrix*, align 8
  %x = alloca %struct.hypre_Vector*, align 8
  %y = alloca %struct.hypre_Vector*, align 8
  %sol = alloca %struct.hypre_Vector*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %i = alloca i32, align 4
  %values = alloca double*, align 8
  %x_data = alloca double*, align 8
  %diff = alloca double, align 8
  %error = alloca double, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store i32 50, i32* %nx, align 4
  store i32 50, i32* %ny, align 4
  store i32 50, i32* %nz, align 4
  %call = call i8* @hypre_CAlloc(i32 4, i32 8)
  %0 = bitcast i8* %call to double*
  store double* %0, double** %values, align 8
  %1 = load double*, double** %values, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  store double 6.000000e+00, double* %arrayidx, align 8
  %2 = load double*, double** %values, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  store double -1.000000e+00, double* %arrayidx1, align 8
  %3 = load double*, double** %values, align 8
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 2
  store double -1.000000e+00, double* %arrayidx2, align 8
  %4 = load double*, double** %values, align 8
  %arrayidx3 = getelementptr inbounds double, double* %4, i64 3
  store double -1.000000e+00, double* %arrayidx3, align 8
  %5 = load i32, i32* %nx, align 4
  %6 = load i32, i32* %ny, align 4
  %7 = load i32, i32* %nz, align 4
  %8 = load double*, double** %values, align 8
  %call4 = call %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %5, i32 %6, i32 %7, double* %8, %struct.hypre_Vector** %y, %struct.hypre_Vector** %x, %struct.hypre_Vector** %sol)
  store %struct.hypre_CSRMatrix* %call4, %struct.hypre_CSRMatrix** %A, align 8
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call5 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %9, double 1.000000e+00)
  %call6 = call i32 @gettimeofday(%struct.timeval* %t0, %struct.timezone* null) #4
  %call7 = call i64 @clock() #4
  store i64 %call7, i64* %t0_cpu, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call8 = call i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* %11, %struct.hypre_Vector* %12, %struct.hypre_Vector* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* null) #4
  %call10 = call i64 @clock() #4
  store i64 %call10, i64* %t1_cpu, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 0
  %15 = load i64, i64* %tv_sec, align 8
  %tv_sec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 0
  %16 = load i64, i64* %tv_sec11, align 8
  %sub = sub nsw i64 %15, %16
  %conv = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 1
  %17 = load i64, i64* %tv_usec, align 8
  %tv_usec12 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 1
  %18 = load i64, i64* %tv_usec12, align 8
  %sub13 = sub nsw i64 %17, %18
  %conv14 = sitofp i64 %sub13 to double
  %div = fdiv double %conv14, 1.000000e+06
  %add = fadd double %conv, %div
  %19 = load double, double* @totalWallTime, align 8
  %add15 = fadd double %19, %add
  store double %add15, double* @totalWallTime, align 8
  %20 = load i64, i64* %t1_cpu, align 8
  %21 = load i64, i64* %t0_cpu, align 8
  %sub16 = sub nsw i64 %20, %21
  %conv17 = sitofp i64 %sub16 to double
  %div18 = fdiv double %conv17, 1.000000e+06
  %22 = load double, double* @totalCPUTime, align 8
  %add19 = fadd double %22, %div18
  store double %add19, double* @totalCPUTime, align 8
  %23 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %23, i32 0, i32 0
  %24 = load double*, double** %data, align 8
  store double* %24, double** %x_data, align 8
  store double 0.000000e+00, double* %error, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.30, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %nx, align 4
  %27 = load i32, i32* %ny, align 4
  %mul = mul nsw i32 %26, %27
  %28 = load i32, i32* %nz, align 4
  %mul21 = mul nsw i32 %mul, %28
  %cmp22 = icmp slt i32 %25, %mul21
  br i1 %cmp22, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.20
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load double*, double** %x_data, align 8
  %arrayidx25 = getelementptr inbounds double, double* %30, i64 %idxprom
  %31 = load double, double* %arrayidx25, align 8
  %sub26 = fsub double %31, 1.000000e+00
  %call27 = call double @fabs(double %sub26) #5
  store double %call27, double* %diff, align 8
  %32 = load double, double* %diff, align 8
  %33 = load double, double* %error, align 8
  %cmp28 = fcmp ogt double %32, %33
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.24
  %34 = load double, double* %diff, align 8
  store double %34, double* %error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %35 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %35, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.20

for.end.32:                                       ; preds = %for.cond.20
  %36 = load double, double* %error, align 8
  %cmp33 = fcmp ogt double %36, 0.000000e+00
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.end.32
  %37 = load double, double* %error, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), double %37)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.end.32
  %38 = load double*, double** %values, align 8
  %39 = bitcast double* %38 to i8*
  call void @hypre_Free(i8* %39)
  store double* null, double** %values, align 8
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %call38 = call i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %40)
  %41 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call39 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %41)
  %42 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call40 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %42)
  %43 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %call41 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %43)
  ret void
}

declare i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix*, %struct.hypre_Vector*, %struct.hypre_Vector*) #1

; Function Attrs: nounwind uwtable
define void @test_Axpy() #0 {
entry:
  %t0 = alloca %struct.timeval, align 8
  %t1 = alloca %struct.timeval, align 8
  %t0_cpu = alloca i64, align 8
  %t1_cpu = alloca i64, align 8
  %x = alloca %struct.hypre_Vector*, align 8
  %y = alloca %struct.hypre_Vector*, align 8
  %nx = alloca i32, align 4
  %i = alloca i32, align 4
  %alpha = alloca double, align 8
  %diff = alloca double, align 8
  %error = alloca double, align 8
  %y_data = alloca double*, align 8
  store i64 0, i64* %t0_cpu, align 8
  store i64 0, i64* %t1_cpu, align 8
  store double 5.000000e-01, double* %alpha, align 8
  store i32 125000, i32* %nx, align 4
  %0 = load i32, i32* %nx, align 4
  %call = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %0)
  store %struct.hypre_Vector* %call, %struct.hypre_Vector** %x, align 8
  %1 = load i32, i32* %nx, align 4
  %call1 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %1)
  store %struct.hypre_Vector* %call1, %struct.hypre_Vector** %y, align 8
  %2 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call2 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %2)
  %3 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call3 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %3)
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call4 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %4, double 1.000000e+00)
  %5 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call5 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %5, double 1.000000e+00)
  %call6 = call i32 @gettimeofday(%struct.timeval* %t0, %struct.timezone* null) #4
  %call7 = call i64 @clock() #4
  store i64 %call7, i64* %t0_cpu, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double, double* %alpha, align 8
  %8 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call8 = call i32 @hypre_SeqVectorAxpy(double %7, %struct.hypre_Vector* %8, %struct.hypre_Vector* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 @gettimeofday(%struct.timeval* %t1, %struct.timezone* null) #4
  %call10 = call i64 @clock() #4
  store i64 %call10, i64* %t1_cpu, align 8
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 0
  %12 = load double*, double** %data, align 8
  store double* %12, double** %y_data, align 8
  store double 0.000000e+00, double* %error, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.17, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %nx, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body.13, label %for.end.19

for.body.13:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load double*, double** %y_data, align 8
  %arrayidx = getelementptr inbounds double, double* %16, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  %sub = fsub double %17, 1.000000e+00
  %sub14 = fsub double %sub, 1.000000e+03
  %call15 = call double @fabs(double %sub14) #5
  store double %call15, double* %diff, align 8
  %18 = load double, double* %diff, align 8
  %19 = load double, double* %error, align 8
  %cmp16 = fcmp ogt double %18, %19
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %20 = load double, double* %diff, align 8
  store double %20, double* %error, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.11

for.end.19:                                       ; preds = %for.cond.11
  %22 = load double, double* %error, align 8
  %cmp20 = fcmp ogt double %22, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.end.19
  %23 = load double, double* %error, align 8
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), double %23)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.end.19
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 0
  %24 = load i64, i64* %tv_sec, align 8
  %tv_sec24 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 0
  %25 = load i64, i64* %tv_sec24, align 8
  %sub25 = sub nsw i64 %24, %25
  %conv = sitofp i64 %sub25 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %t1, i32 0, i32 1
  %26 = load i64, i64* %tv_usec, align 8
  %tv_usec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %t0, i32 0, i32 1
  %27 = load i64, i64* %tv_usec26, align 8
  %sub27 = sub nsw i64 %26, %27
  %conv28 = sitofp i64 %sub27 to double
  %div = fdiv double %conv28, 1.000000e+06
  %add = fadd double %conv, %div
  %28 = load double, double* @totalWallTime, align 8
  %add29 = fadd double %28, %add
  store double %add29, double* @totalWallTime, align 8
  %29 = load i64, i64* %t1_cpu, align 8
  %30 = load i64, i64* %t0_cpu, align 8
  %sub30 = sub nsw i64 %29, %30
  %conv31 = sitofp i64 %sub30 to double
  %div32 = fdiv double %conv31, 1.000000e+06
  %31 = load double, double* @totalCPUTime, align 8
  %add33 = fadd double %31, %div32
  store double %add33, double* @totalCPUTime, align 8
  %32 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %call34 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %32)
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %y, align 8
  %call35 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %33)
  ret void
}

declare %struct.hypre_Vector* @hypre_SeqVectorCreate(i32) #1

declare i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector*) #1

declare i32 @hypre_SeqVectorAxpy(double, %struct.hypre_Vector*, %struct.hypre_Vector*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
