; ModuleID = './MultiSource.Benchmarks.SciMark2-C/4.scimark2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

@RESOLUTION_DEFAULT = constant double 2.000000e+00, align 8
@RANDOM_SEED = constant i32 101010, align 4
@FFT_SIZE = constant i32 1024, align 4
@SOR_SIZE = constant i32 100, align 4
@SPARSE_SIZE_M = constant i32 1000, align 4
@SPARSE_SIZE_nz = constant i32 5000, align 4
@LU_SIZE = constant i32 100, align 4
@LG_FFT_SIZE = constant i32 1048576, align 4
@LG_SOR_SIZE = constant i32 1000, align 4
@LG_SPARSE_SIZE_M = constant i32 100000, align 4
@LG_SPARSE_SIZE_nz = constant i32 1000000, align 4
@LG_LU_SIZE = constant i32 1000, align 4
@TINY_FFT_SIZE = constant i32 16, align 4
@TINY_SOR_SIZE = constant i32 10, align 4
@TINY_SPARSE_SIZE_M = constant i32 10, align 4
@TINY_SPARSE_SIZE_N = constant i32 10, align 4
@TINY_SPARSE_SIZE_nz = constant i32 50, align 4
@TINY_LU_SIZE = constant i32 10, align 4
@.str = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Usage: [-large] [minimum_time]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-large\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Using %10.2f seconds min time per kenel.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Composite Score:        %8.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"FFT             Mflops: %8.2f    (N=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"SOR             Mflops: %8.2f    (%d x %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"MonteCarlo:     Mflops: %8.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"LU              Mflops: %8.2f    (M=%d, N=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"**                                                              **\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\0A\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %min_time = alloca double, align 8
  %FFT_size = alloca i32, align 4
  %SOR_size = alloca i32, align 4
  %Sparse_size_M = alloca i32, align 4
  %Sparse_size_nz = alloca i32, align 4
  %LU_size = alloca i32, align 4
  %SCALE = alloca i32, align 4
  %res = alloca [6 x double], align 16
  %R = alloca %struct.Random_struct*, align 8
  %current_arg = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 2.000000e+00, double* %min_time, align 8
  store i32 1024, i32* %FFT_size, align 4
  store i32 100, i32* %SOR_size, align 4
  store i32 1000, i32* %Sparse_size_M, align 4
  store i32 5000, i32* %Sparse_size_nz, align 4
  store i32 100, i32* %LU_size, align 4
  %0 = bitcast [6 x double]* %res to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 48, i32 16, i1 false)
  %call = call %struct.Random_struct* @new_Random_seed(i32 101010)
  store %struct.Random_struct* %call, %struct.Random_struct** %R, align 8
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  store i32 1, i32* %current_arg, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #5
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1048576, i32* %FFT_size, align 4
  store i32 1000, i32* %SOR_size, align 4
  store i32 100000, i32* %Sparse_size_M, align 4
  store i32 1000000, i32* %Sparse_size_nz, align 4
  store i32 1000, i32* %LU_size, align 4
  %9 = load i32, i32* %current_arg, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %current_arg, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %10 = load i32, i32* %current_arg, align 4
  %11 = load i32, i32* %argc.addr, align 4
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %12 = load i32, i32* %current_arg, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %14 = load i8*, i8** %arrayidx15, align 8
  %call16 = call double @atof(i8* %14) #5
  store double %call16, double* %min_time, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  call void @print_banner()
  %15 = load double, double* %min_time, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), double %15)
  %16 = load i32, i32* %FFT_size, align 4
  %17 = load double, double* %min_time, align 8
  %18 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call20 = call double @kernel_measureFFT(i32 %16, double %17, %struct.Random_struct* %18)
  %arrayidx21 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 1
  store double %call20, double* %arrayidx21, align 8
  %19 = load i32, i32* %SOR_size, align 4
  %20 = load double, double* %min_time, align 8
  %21 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call22 = call double @kernel_measureSOR(i32 %19, double %20, %struct.Random_struct* %21)
  %arrayidx23 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 2
  store double %call22, double* %arrayidx23, align 8
  %22 = load double, double* %min_time, align 8
  %23 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call24 = call double @kernel_measureMonteCarlo(double %22, %struct.Random_struct* %23)
  %arrayidx25 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 3
  store double %call24, double* %arrayidx25, align 8
  %24 = load i32, i32* %Sparse_size_M, align 4
  %25 = load i32, i32* %Sparse_size_nz, align 4
  %26 = load double, double* %min_time, align 8
  %27 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call26 = call double @kernel_measureSparseMatMult(i32 %24, i32 %25, double %26, %struct.Random_struct* %27)
  %arrayidx27 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 4
  store double %call26, double* %arrayidx27, align 8
  %28 = load i32, i32* %LU_size, align 4
  %29 = load double, double* %min_time, align 8
  %30 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  %call28 = call double @kernel_measureLU(i32 %28, double %29, %struct.Random_struct* %30)
  %arrayidx29 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 5
  store double %call28, double* %arrayidx29, align 8
  store i32 10000000, i32* %SCALE, align 4
  %arrayidx30 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 1
  %31 = load double, double* %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 2
  %32 = load double, double* %arrayidx31, align 8
  %add = fadd double %31, %32
  %arrayidx32 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 3
  %33 = load double, double* %arrayidx32, align 8
  %add33 = fadd double %add, %33
  %arrayidx34 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 4
  %34 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %add33, %34
  %arrayidx36 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 5
  %35 = load double, double* %arrayidx36, align 8
  %add37 = fadd double %add35, %35
  %div = fdiv double %add37, 5.000000e+00
  %arrayidx38 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 0
  store double %div, double* %arrayidx38, align 8
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0))
  %arrayidx40 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 0
  %36 = load double, double* %arrayidx40, align 8
  %37 = load i32, i32* %SCALE, align 4
  %conv = sitofp i32 %37 to double
  %div41 = fdiv double %36, %conv
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), double %div41)
  %arrayidx43 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 1
  %38 = load double, double* %arrayidx43, align 8
  %39 = load i32, i32* %SCALE, align 4
  %conv44 = sitofp i32 %39 to double
  %div45 = fdiv double %38, %conv44
  %40 = load i32, i32* %FFT_size, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), double %div45, i32 %40)
  %arrayidx47 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 2
  %41 = load double, double* %arrayidx47, align 8
  %42 = load i32, i32* %SCALE, align 4
  %conv48 = sitofp i32 %42 to double
  %div49 = fdiv double %41, %conv48
  %43 = load i32, i32* %SOR_size, align 4
  %44 = load i32, i32* %SOR_size, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0), double %div49, i32 %43, i32 %44)
  %arrayidx51 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 3
  %45 = load double, double* %arrayidx51, align 8
  %46 = load i32, i32* %SCALE, align 4
  %conv52 = sitofp i32 %46 to double
  %div53 = fdiv double %45, %conv52
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), double %div53)
  %arrayidx55 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 4
  %47 = load double, double* %arrayidx55, align 8
  %48 = load i32, i32* %SCALE, align 4
  %conv56 = sitofp i32 %48 to double
  %div57 = fdiv double %47, %conv56
  %49 = load i32, i32* %Sparse_size_M, align 4
  %50 = load i32, i32* %Sparse_size_nz, align 4
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), double %div57, i32 %49, i32 %50)
  %arrayidx59 = getelementptr inbounds [6 x double], [6 x double]* %res, i32 0, i64 5
  %51 = load double, double* %arrayidx59, align 8
  %52 = load i32, i32* %SCALE, align 4
  %conv60 = sitofp i32 %52 to double
  %div61 = fdiv double %51, %conv60
  %53 = load i32, i32* %LU_size, align 4
  %54 = load i32, i32* %LU_size, align 4
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i32 0, i32 0), double %div61, i32 %53, i32 %54)
  %55 = load %struct.Random_struct*, %struct.Random_struct** %R, align 8
  call void @Random_delete(%struct.Random_struct* %55)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.Random_struct* @new_Random_seed(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind uwtable
define void @print_banner() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

declare double @kernel_measureFFT(i32, double, %struct.Random_struct*) #2

declare double @kernel_measureSOR(i32, double, %struct.Random_struct*) #2

declare double @kernel_measureMonteCarlo(double, %struct.Random_struct*) #2

declare double @kernel_measureSparseMatMult(i32, i32, double, %struct.Random_struct*) #2

declare double @kernel_measureLU(i32, double, %struct.Random_struct*) #2

declare void @Random_delete(%struct.Random_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
