; ModuleID = 'check_unitarity.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { double }

@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"Unitarity problem on node %d, site %d, dir %d, deviation=%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SU3 matrix:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"repeat in hex:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  \0A \0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"Unitarity problem on node %d, maximum deviation=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define double @check_unitarity() #0 {
entry:
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mat = alloca %struct.su3_matrix*, align 8
  %deviation = alloca double, align 8
  %max_deviation = alloca double, align 8
  %av_deviation = alloca double, align 8
  %ifval = alloca %union.anon, align 8
  store double 0.000000e+00, double* %av_deviation, align 8
  store double 0.000000e+00, double* %max_deviation, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.64, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end.66

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  store %struct.su3_matrix* %arrayidx, %struct.su3_matrix** %mat, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %call = call double @check_su3(%struct.su3_matrix* %6)
  store double %call, double* %deviation, align 8
  %7 = load double, double* %deviation, align 8
  %cmp4 = fcmp ogt double %7, 1.000000e-04
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %call5 = call i32 (...) @mynode()
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %dir, align 4
  %10 = load double, double* %deviation, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i32 %call5, i32 %8, i32 %9, double %10)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.26, %if.then
  %11 = load i32, i32* %ii, align 4
  %cmp9 = icmp sle i32 %11, 2
  br i1 %cmp9, label %for.body.10, label %for.end.28

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %jj, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body.10
  %12 = load i32, i32* %jj, align 4
  %cmp12 = icmp sle i32 %12, 2
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %13 = load i32, i32* %jj, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %ii, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %15, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx16, i32 0, i64 %idxprom14
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx17, i32 0, i32 0
  %16 = load double, double* %real, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %16)
  %17 = load i32, i32* %jj, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32, i32* %ii, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %e21 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %19, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e21, i32 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx22, i32 0, i64 %idxprom19
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx23, i32 0, i32 1
  %20 = load double, double* %imag, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %21 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %jj, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %22 = load i32, i32* %ii, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %ii, align 4
  br label %for.cond.8

for.end.28:                                       ; preds = %for.cond.8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.56, %for.end.28
  %23 = load i32, i32* %ii, align 4
  %cmp31 = icmp sle i32 %23, 2
  br i1 %cmp31, label %for.body.32, label %for.end.58

for.body.32:                                      ; preds = %for.cond.30
  store i32 0, i32* %jj, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.52, %for.body.32
  %24 = load i32, i32* %jj, align 4
  %cmp34 = icmp sle i32 %24, 2
  br i1 %cmp34, label %for.body.35, label %for.end.54

for.body.35:                                      ; preds = %for.cond.33
  %25 = load i32, i32* %jj, align 4
  %idxprom36 = sext i32 %25 to i64
  %26 = load i32, i32* %ii, align 4
  %idxprom37 = sext i32 %26 to i64
  %27 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %27, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 %idxprom37
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 %idxprom36
  %real41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 0
  %28 = load double, double* %real41, align 8
  %fval = bitcast %union.anon* %ifval to double*
  store double %28, double* %fval, align 8
  %ival = bitcast %union.anon* %ifval to i32*
  %29 = load i32, i32* %ival, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %29)
  %30 = load i32, i32* %jj, align 4
  %idxprom43 = sext i32 %30 to i64
  %31 = load i32, i32* %ii, align 4
  %idxprom44 = sext i32 %31 to i64
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %e45 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e45, i32 0, i64 %idxprom44
  %arrayidx47 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx46, i32 0, i64 %idxprom43
  %imag48 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx47, i32 0, i32 1
  %33 = load double, double* %imag48, align 8
  %fval49 = bitcast %union.anon* %ifval to double*
  store double %33, double* %fval49, align 8
  %ival50 = bitcast %union.anon* %ifval to i32*
  %34 = load i32, i32* %ival50, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %34)
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.35
  %35 = load i32, i32* %jj, align 4
  %inc53 = add nsw i32 %35, 1
  store i32 %inc53, i32* %jj, align 4
  br label %for.cond.33

for.end.54:                                       ; preds = %for.cond.33
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.54
  %36 = load i32, i32* %ii, align 4
  %inc57 = add nsw i32 %36, 1
  store i32 %inc57, i32* %ii, align 4
  br label %for.cond.30

for.end.58:                                       ; preds = %for.cond.30
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call60 = call i32 @fflush(%struct._IO_FILE* %37)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %for.end.58, %for.body.3
  %38 = load double, double* %max_deviation, align 8
  %39 = load double, double* %deviation, align 8
  %cmp61 = fcmp olt double %38, %39
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end
  %40 = load double, double* %deviation, align 8
  store double %40, double* %max_deviation, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end
  %41 = load double, double* %deviation, align 8
  %42 = load double, double* %deviation, align 8
  %mul = fmul double %41, %42
  %43 = load double, double* %av_deviation, align 8
  %add = fadd double %43, %mul
  store double %add, double* %av_deviation, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %44 = load i32, i32* %dir, align 4
  %inc65 = add nsw i32 %44, 1
  store i32 %inc65, i32* %dir, align 4
  br label %for.cond.1

for.end.66:                                       ; preds = %for.cond.1
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %45 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %45, 1
  store i32 %inc68, i32* %i, align 4
  %46 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %46, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %47 = load double, double* %av_deviation, align 8
  %48 = load i32, i32* %i, align 4
  %mul70 = mul nsw i32 4, %48
  %conv = sitofp i32 %mul70 to double
  %div = fdiv double %47, %conv
  %call71 = call double @sqrt(double %div) #4
  store double %call71, double* %av_deviation, align 8
  %49 = load double, double* %max_deviation, align 8
  %cmp72 = fcmp ogt double %49, 1.000000e-04
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %for.end.69
  %call75 = call i32 (...) @mynode()
  %50 = load double, double* %max_deviation, align 8
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i32 0, i32 0), i32 %call75, double %50)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %for.end.69
  %51 = load double, double* %max_deviation, align 8
  ret double %51
}

; Function Attrs: nounwind uwtable
define double @check_su3(%struct.su3_matrix* %c) #0 {
entry:
  %c.addr = alloca %struct.su3_matrix*, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %ari = alloca double, align 8
  %max = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %i, align 4
  store double 0.000000e+00, double* %max, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %3 = load double, double* %real, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e3 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx4, i32 0, i64 0
  %real6 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 0
  %6 = load double, double* %real6, align 8
  %mul = fmul double %3, %6
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e8 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e8, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx9, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 1
  %9 = load double, double* %imag, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e12 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e12, i32 0, i64 %idxprom11
  %arrayidx14 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx13, i32 0, i64 0
  %imag15 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx14, i32 0, i32 1
  %12 = load double, double* %imag15, align 8
  %mul16 = fmul double %9, %12
  %add = fadd double %mul, %mul16
  %13 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e18 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e18, i32 0, i64 %idxprom17
  %arrayidx20 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx19, i32 0, i64 1
  %real21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 0
  %15 = load double, double* %real21, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e23 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e23, i32 0, i64 %idxprom22
  %arrayidx25 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx24, i32 0, i64 1
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx25, i32 0, i32 0
  %18 = load double, double* %real26, align 8
  %mul27 = fmul double %15, %18
  %add28 = fadd double %add, %mul27
  %19 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e30 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx31, i32 0, i64 1
  %imag33 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx32, i32 0, i32 1
  %21 = load double, double* %imag33, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e35 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %23, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e35, i32 0, i64 %idxprom34
  %arrayidx37 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx36, i32 0, i64 1
  %imag38 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx37, i32 0, i32 1
  %24 = load double, double* %imag38, align 8
  %mul39 = fmul double %21, %24
  %add40 = fadd double %add28, %mul39
  %25 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %25 to i64
  %26 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e42 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %26, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e42, i32 0, i64 %idxprom41
  %arrayidx44 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx43, i32 0, i64 2
  %real45 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx44, i32 0, i32 0
  %27 = load double, double* %real45, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %28 to i64
  %29 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e47 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %29, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e47, i32 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx48, i32 0, i64 2
  %real50 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx49, i32 0, i32 0
  %30 = load double, double* %real50, align 8
  %mul51 = fmul double %27, %30
  %add52 = fadd double %add40, %mul51
  %31 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %31 to i64
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e54 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e54, i32 0, i64 %idxprom53
  %arrayidx56 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx55, i32 0, i64 2
  %imag57 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx56, i32 0, i32 1
  %33 = load double, double* %imag57, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %34 to i64
  %35 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e59 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %35, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e59, i32 0, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx60, i32 0, i64 2
  %imag62 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx61, i32 0, i32 1
  %36 = load double, double* %imag62, align 8
  %mul63 = fmul double %33, %36
  %add64 = fadd double %add52, %mul63
  store double %add64, double* %ar, align 8
  %37 = load double, double* %ar, align 8
  %call = call double @sqrt(double %37) #4
  %sub = fsub double %call, 1.000000e+00
  %call65 = call double @fabs(double %sub) #5
  store double %call65, double* %ar, align 8
  %38 = load double, double* %max, align 8
  %39 = load double, double* %ar, align 8
  %cmp66 = fcmp olt double %38, %39
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %40 = load double, double* %ar, align 8
  store double %40, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e67 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %42, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e67, i32 0, i64 0
  %arrayidx69 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx68, i32 0, i64 0
  %real70 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx69, i32 0, i32 0
  %43 = load double, double* %real70, align 8
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e71 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e71, i32 0, i64 1
  %arrayidx73 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx72, i32 0, i64 0
  %real74 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx73, i32 0, i32 0
  %45 = load double, double* %real74, align 8
  %mul75 = fmul double %43, %45
  %46 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e76 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %46, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e76, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx77, i32 0, i64 0
  %imag79 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx78, i32 0, i32 1
  %47 = load double, double* %imag79, align 8
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e80 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %48, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e80, i32 0, i64 1
  %arrayidx82 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx81, i32 0, i64 0
  %imag83 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx82, i32 0, i32 1
  %49 = load double, double* %imag83, align 8
  %mul84 = fmul double %47, %49
  %add85 = fadd double %mul75, %mul84
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e86 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e86, i32 0, i64 0
  %arrayidx88 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx87, i32 0, i64 1
  %real89 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx88, i32 0, i32 0
  %51 = load double, double* %real89, align 8
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e90 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %52, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e90, i32 0, i64 1
  %arrayidx92 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx91, i32 0, i64 1
  %real93 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx92, i32 0, i32 0
  %53 = load double, double* %real93, align 8
  %mul94 = fmul double %51, %53
  %add95 = fadd double %add85, %mul94
  %54 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e96 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %54, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx97, i32 0, i64 1
  %imag99 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx98, i32 0, i32 1
  %55 = load double, double* %imag99, align 8
  %56 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e100 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %56, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx101, i32 0, i64 1
  %imag103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 1
  %57 = load double, double* %imag103, align 8
  %mul104 = fmul double %55, %57
  %add105 = fadd double %add95, %mul104
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e106 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e106, i32 0, i64 0
  %arrayidx108 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx107, i32 0, i64 2
  %real109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 0
  %59 = load double, double* %real109, align 8
  %60 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e110 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %60, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e110, i32 0, i64 1
  %arrayidx112 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx111, i32 0, i64 2
  %real113 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx112, i32 0, i32 0
  %61 = load double, double* %real113, align 8
  %mul114 = fmul double %59, %61
  %add115 = fadd double %add105, %mul114
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e116 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %62, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e116, i32 0, i64 0
  %arrayidx118 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx117, i32 0, i64 2
  %imag119 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx118, i32 0, i32 1
  %63 = load double, double* %imag119, align 8
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e120 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e120, i32 0, i64 1
  %arrayidx122 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx121, i32 0, i64 2
  %imag123 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx122, i32 0, i32 1
  %65 = load double, double* %imag123, align 8
  %mul124 = fmul double %63, %65
  %add125 = fadd double %add115, %mul124
  store double %add125, double* %ar, align 8
  %66 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e126 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %66, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e126, i32 0, i64 0
  %arrayidx128 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx127, i32 0, i64 0
  %real129 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx128, i32 0, i32 0
  %67 = load double, double* %real129, align 8
  %68 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e130 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %68, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e130, i32 0, i64 1
  %arrayidx132 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx131, i32 0, i64 0
  %imag133 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx132, i32 0, i32 1
  %69 = load double, double* %imag133, align 8
  %mul134 = fmul double %67, %69
  %70 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e135 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %70, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e135, i32 0, i64 0
  %arrayidx137 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx136, i32 0, i64 0
  %imag138 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx137, i32 0, i32 1
  %71 = load double, double* %imag138, align 8
  %72 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e139 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %72, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e139, i32 0, i64 1
  %arrayidx141 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx140, i32 0, i64 0
  %real142 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx141, i32 0, i32 0
  %73 = load double, double* %real142, align 8
  %mul143 = fmul double %71, %73
  %sub144 = fsub double %mul134, %mul143
  %74 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e145 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %74, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e145, i32 0, i64 0
  %arrayidx147 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx146, i32 0, i64 1
  %real148 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx147, i32 0, i32 0
  %75 = load double, double* %real148, align 8
  %76 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e149 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %76, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e149, i32 0, i64 1
  %arrayidx151 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx150, i32 0, i64 1
  %imag152 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx151, i32 0, i32 1
  %77 = load double, double* %imag152, align 8
  %mul153 = fmul double %75, %77
  %add154 = fadd double %sub144, %mul153
  %78 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e155 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %78, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e155, i32 0, i64 0
  %arrayidx157 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx156, i32 0, i64 1
  %imag158 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx157, i32 0, i32 1
  %79 = load double, double* %imag158, align 8
  %80 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e159 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %80, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e159, i32 0, i64 1
  %arrayidx161 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx160, i32 0, i64 1
  %real162 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx161, i32 0, i32 0
  %81 = load double, double* %real162, align 8
  %mul163 = fmul double %79, %81
  %sub164 = fsub double %add154, %mul163
  %82 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e165 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %82, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e165, i32 0, i64 0
  %arrayidx167 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx166, i32 0, i64 2
  %real168 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx167, i32 0, i32 0
  %83 = load double, double* %real168, align 8
  %84 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e169 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %84, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e169, i32 0, i64 1
  %arrayidx171 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx170, i32 0, i64 2
  %imag172 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx171, i32 0, i32 1
  %85 = load double, double* %imag172, align 8
  %mul173 = fmul double %83, %85
  %add174 = fadd double %sub164, %mul173
  %86 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e175 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %86, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e175, i32 0, i64 0
  %arrayidx177 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx176, i32 0, i64 2
  %imag178 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx177, i32 0, i32 1
  %87 = load double, double* %imag178, align 8
  %88 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e179 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %88, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e179, i32 0, i64 1
  %arrayidx181 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx180, i32 0, i64 2
  %real182 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx181, i32 0, i32 0
  %89 = load double, double* %real182, align 8
  %mul183 = fmul double %87, %89
  %sub184 = fsub double %add174, %mul183
  store double %sub184, double* %ai, align 8
  %90 = load double, double* %ar, align 8
  %91 = load double, double* %ar, align 8
  %mul185 = fmul double %90, %91
  %92 = load double, double* %ai, align 8
  %93 = load double, double* %ai, align 8
  %mul186 = fmul double %92, %93
  %add187 = fadd double %mul185, %mul186
  %call188 = call double @sqrt(double %add187) #4
  store double %call188, double* %ari, align 8
  %94 = load double, double* %max, align 8
  %95 = load double, double* %ari, align 8
  %cmp189 = fcmp olt double %94, %95
  br i1 %cmp189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %for.end
  %96 = load double, double* %ari, align 8
  store double %96, double* %max, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %for.end
  %97 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e192 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %97, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e192, i32 0, i64 0
  %arrayidx194 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx193, i32 0, i64 0
  %real195 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx194, i32 0, i32 0
  %98 = load double, double* %real195, align 8
  %99 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e196 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %99, i32 0, i32 0
  %arrayidx197 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e196, i32 0, i64 2
  %arrayidx198 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx197, i32 0, i64 0
  %real199 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx198, i32 0, i32 0
  %100 = load double, double* %real199, align 8
  %mul200 = fmul double %98, %100
  %101 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e201 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %101, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e201, i32 0, i64 0
  %arrayidx203 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx202, i32 0, i64 0
  %imag204 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx203, i32 0, i32 1
  %102 = load double, double* %imag204, align 8
  %103 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e205 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %103, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e205, i32 0, i64 2
  %arrayidx207 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx206, i32 0, i64 0
  %imag208 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx207, i32 0, i32 1
  %104 = load double, double* %imag208, align 8
  %mul209 = fmul double %102, %104
  %add210 = fadd double %mul200, %mul209
  %105 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e211 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %105, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e211, i32 0, i64 0
  %arrayidx213 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx212, i32 0, i64 1
  %real214 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx213, i32 0, i32 0
  %106 = load double, double* %real214, align 8
  %107 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e215 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %107, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e215, i32 0, i64 2
  %arrayidx217 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx216, i32 0, i64 1
  %real218 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx217, i32 0, i32 0
  %108 = load double, double* %real218, align 8
  %mul219 = fmul double %106, %108
  %add220 = fadd double %add210, %mul219
  %109 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e221 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %109, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e221, i32 0, i64 0
  %arrayidx223 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx222, i32 0, i64 1
  %imag224 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx223, i32 0, i32 1
  %110 = load double, double* %imag224, align 8
  %111 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e225 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %111, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e225, i32 0, i64 2
  %arrayidx227 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx226, i32 0, i64 1
  %imag228 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx227, i32 0, i32 1
  %112 = load double, double* %imag228, align 8
  %mul229 = fmul double %110, %112
  %add230 = fadd double %add220, %mul229
  %113 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e231 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %113, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e231, i32 0, i64 0
  %arrayidx233 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx232, i32 0, i64 2
  %real234 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx233, i32 0, i32 0
  %114 = load double, double* %real234, align 8
  %115 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e235 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %115, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e235, i32 0, i64 2
  %arrayidx237 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx236, i32 0, i64 2
  %real238 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx237, i32 0, i32 0
  %116 = load double, double* %real238, align 8
  %mul239 = fmul double %114, %116
  %add240 = fadd double %add230, %mul239
  %117 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e241 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %117, i32 0, i32 0
  %arrayidx242 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e241, i32 0, i64 0
  %arrayidx243 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx242, i32 0, i64 2
  %imag244 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx243, i32 0, i32 1
  %118 = load double, double* %imag244, align 8
  %119 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e245 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %119, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e245, i32 0, i64 2
  %arrayidx247 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx246, i32 0, i64 2
  %imag248 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx247, i32 0, i32 1
  %120 = load double, double* %imag248, align 8
  %mul249 = fmul double %118, %120
  %add250 = fadd double %add240, %mul249
  store double %add250, double* %ar, align 8
  %121 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e251 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %121, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e251, i32 0, i64 0
  %arrayidx253 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx252, i32 0, i64 0
  %real254 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx253, i32 0, i32 0
  %122 = load double, double* %real254, align 8
  %123 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e255 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %123, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e255, i32 0, i64 2
  %arrayidx257 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx256, i32 0, i64 0
  %imag258 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx257, i32 0, i32 1
  %124 = load double, double* %imag258, align 8
  %mul259 = fmul double %122, %124
  %125 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e260 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %125, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e260, i32 0, i64 0
  %arrayidx262 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx261, i32 0, i64 0
  %imag263 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx262, i32 0, i32 1
  %126 = load double, double* %imag263, align 8
  %127 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e264 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %127, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e264, i32 0, i64 2
  %arrayidx266 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx265, i32 0, i64 0
  %real267 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx266, i32 0, i32 0
  %128 = load double, double* %real267, align 8
  %mul268 = fmul double %126, %128
  %sub269 = fsub double %mul259, %mul268
  %129 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e270 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %129, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e270, i32 0, i64 0
  %arrayidx272 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx271, i32 0, i64 1
  %real273 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx272, i32 0, i32 0
  %130 = load double, double* %real273, align 8
  %131 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e274 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %131, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e274, i32 0, i64 2
  %arrayidx276 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx275, i32 0, i64 1
  %imag277 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx276, i32 0, i32 1
  %132 = load double, double* %imag277, align 8
  %mul278 = fmul double %130, %132
  %add279 = fadd double %sub269, %mul278
  %133 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e280 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %133, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e280, i32 0, i64 0
  %arrayidx282 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx281, i32 0, i64 1
  %imag283 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx282, i32 0, i32 1
  %134 = load double, double* %imag283, align 8
  %135 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e284 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %135, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e284, i32 0, i64 2
  %arrayidx286 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx285, i32 0, i64 1
  %real287 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx286, i32 0, i32 0
  %136 = load double, double* %real287, align 8
  %mul288 = fmul double %134, %136
  %sub289 = fsub double %add279, %mul288
  %137 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e290 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %137, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e290, i32 0, i64 0
  %arrayidx292 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx291, i32 0, i64 2
  %real293 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx292, i32 0, i32 0
  %138 = load double, double* %real293, align 8
  %139 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e294 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %139, i32 0, i32 0
  %arrayidx295 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e294, i32 0, i64 2
  %arrayidx296 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx295, i32 0, i64 2
  %imag297 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx296, i32 0, i32 1
  %140 = load double, double* %imag297, align 8
  %mul298 = fmul double %138, %140
  %add299 = fadd double %sub289, %mul298
  %141 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e300 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %141, i32 0, i32 0
  %arrayidx301 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e300, i32 0, i64 0
  %arrayidx302 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx301, i32 0, i64 2
  %imag303 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx302, i32 0, i32 1
  %142 = load double, double* %imag303, align 8
  %143 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e304 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %143, i32 0, i32 0
  %arrayidx305 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e304, i32 0, i64 2
  %arrayidx306 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx305, i32 0, i64 2
  %real307 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx306, i32 0, i32 0
  %144 = load double, double* %real307, align 8
  %mul308 = fmul double %142, %144
  %sub309 = fsub double %add299, %mul308
  store double %sub309, double* %ai, align 8
  %145 = load double, double* %ar, align 8
  %146 = load double, double* %ar, align 8
  %mul310 = fmul double %145, %146
  %147 = load double, double* %ai, align 8
  %148 = load double, double* %ai, align 8
  %mul311 = fmul double %147, %148
  %add312 = fadd double %mul310, %mul311
  %call313 = call double @sqrt(double %add312) #4
  store double %call313, double* %ari, align 8
  %149 = load double, double* %max, align 8
  %150 = load double, double* %ari, align 8
  %cmp314 = fcmp olt double %149, %150
  br i1 %cmp314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %if.end.191
  %151 = load double, double* %ari, align 8
  store double %151, double* %max, align 8
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.315, %if.end.191
  %152 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e317 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %152, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e317, i32 0, i64 1
  %arrayidx319 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx318, i32 0, i64 0
  %real320 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx319, i32 0, i32 0
  %153 = load double, double* %real320, align 8
  %154 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e321 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %154, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e321, i32 0, i64 2
  %arrayidx323 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx322, i32 0, i64 0
  %real324 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx323, i32 0, i32 0
  %155 = load double, double* %real324, align 8
  %mul325 = fmul double %153, %155
  %156 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e326 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %156, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e326, i32 0, i64 1
  %arrayidx328 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx327, i32 0, i64 0
  %imag329 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx328, i32 0, i32 1
  %157 = load double, double* %imag329, align 8
  %158 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e330 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %158, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e330, i32 0, i64 2
  %arrayidx332 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx331, i32 0, i64 0
  %imag333 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx332, i32 0, i32 1
  %159 = load double, double* %imag333, align 8
  %mul334 = fmul double %157, %159
  %add335 = fadd double %mul325, %mul334
  %160 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e336 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %160, i32 0, i32 0
  %arrayidx337 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e336, i32 0, i64 1
  %arrayidx338 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx337, i32 0, i64 1
  %real339 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx338, i32 0, i32 0
  %161 = load double, double* %real339, align 8
  %162 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e340 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %162, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e340, i32 0, i64 2
  %arrayidx342 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx341, i32 0, i64 1
  %real343 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx342, i32 0, i32 0
  %163 = load double, double* %real343, align 8
  %mul344 = fmul double %161, %163
  %add345 = fadd double %add335, %mul344
  %164 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e346 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %164, i32 0, i32 0
  %arrayidx347 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e346, i32 0, i64 1
  %arrayidx348 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx347, i32 0, i64 1
  %imag349 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx348, i32 0, i32 1
  %165 = load double, double* %imag349, align 8
  %166 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e350 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %166, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e350, i32 0, i64 2
  %arrayidx352 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx351, i32 0, i64 1
  %imag353 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx352, i32 0, i32 1
  %167 = load double, double* %imag353, align 8
  %mul354 = fmul double %165, %167
  %add355 = fadd double %add345, %mul354
  %168 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e356 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %168, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e356, i32 0, i64 1
  %arrayidx358 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx357, i32 0, i64 2
  %real359 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx358, i32 0, i32 0
  %169 = load double, double* %real359, align 8
  %170 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e360 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %170, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e360, i32 0, i64 2
  %arrayidx362 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx361, i32 0, i64 2
  %real363 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx362, i32 0, i32 0
  %171 = load double, double* %real363, align 8
  %mul364 = fmul double %169, %171
  %add365 = fadd double %add355, %mul364
  %172 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e366 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %172, i32 0, i32 0
  %arrayidx367 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e366, i32 0, i64 1
  %arrayidx368 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx367, i32 0, i64 2
  %imag369 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx368, i32 0, i32 1
  %173 = load double, double* %imag369, align 8
  %174 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e370 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %174, i32 0, i32 0
  %arrayidx371 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e370, i32 0, i64 2
  %arrayidx372 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx371, i32 0, i64 2
  %imag373 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx372, i32 0, i32 1
  %175 = load double, double* %imag373, align 8
  %mul374 = fmul double %173, %175
  %add375 = fadd double %add365, %mul374
  store double %add375, double* %ar, align 8
  %176 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e376 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %176, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e376, i32 0, i64 1
  %arrayidx378 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx377, i32 0, i64 0
  %real379 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx378, i32 0, i32 0
  %177 = load double, double* %real379, align 8
  %178 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e380 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %178, i32 0, i32 0
  %arrayidx381 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e380, i32 0, i64 2
  %arrayidx382 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx381, i32 0, i64 0
  %imag383 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx382, i32 0, i32 1
  %179 = load double, double* %imag383, align 8
  %mul384 = fmul double %177, %179
  %180 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e385 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %180, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e385, i32 0, i64 1
  %arrayidx387 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx386, i32 0, i64 0
  %imag388 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx387, i32 0, i32 1
  %181 = load double, double* %imag388, align 8
  %182 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e389 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %182, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e389, i32 0, i64 2
  %arrayidx391 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx390, i32 0, i64 0
  %real392 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx391, i32 0, i32 0
  %183 = load double, double* %real392, align 8
  %mul393 = fmul double %181, %183
  %sub394 = fsub double %mul384, %mul393
  %184 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e395 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %184, i32 0, i32 0
  %arrayidx396 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e395, i32 0, i64 1
  %arrayidx397 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx396, i32 0, i64 1
  %real398 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx397, i32 0, i32 0
  %185 = load double, double* %real398, align 8
  %186 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e399 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %186, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e399, i32 0, i64 2
  %arrayidx401 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx400, i32 0, i64 1
  %imag402 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx401, i32 0, i32 1
  %187 = load double, double* %imag402, align 8
  %mul403 = fmul double %185, %187
  %add404 = fadd double %sub394, %mul403
  %188 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e405 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %188, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e405, i32 0, i64 1
  %arrayidx407 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx406, i32 0, i64 1
  %imag408 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx407, i32 0, i32 1
  %189 = load double, double* %imag408, align 8
  %190 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e409 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %190, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e409, i32 0, i64 2
  %arrayidx411 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx410, i32 0, i64 1
  %real412 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx411, i32 0, i32 0
  %191 = load double, double* %real412, align 8
  %mul413 = fmul double %189, %191
  %sub414 = fsub double %add404, %mul413
  %192 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e415 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %192, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e415, i32 0, i64 1
  %arrayidx417 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx416, i32 0, i64 2
  %real418 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx417, i32 0, i32 0
  %193 = load double, double* %real418, align 8
  %194 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e419 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %194, i32 0, i32 0
  %arrayidx420 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e419, i32 0, i64 2
  %arrayidx421 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx420, i32 0, i64 2
  %imag422 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx421, i32 0, i32 1
  %195 = load double, double* %imag422, align 8
  %mul423 = fmul double %193, %195
  %add424 = fadd double %sub414, %mul423
  %196 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e425 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %196, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e425, i32 0, i64 1
  %arrayidx427 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx426, i32 0, i64 2
  %imag428 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx427, i32 0, i32 1
  %197 = load double, double* %imag428, align 8
  %198 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e429 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %198, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e429, i32 0, i64 2
  %arrayidx431 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx430, i32 0, i64 2
  %real432 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx431, i32 0, i32 0
  %199 = load double, double* %real432, align 8
  %mul433 = fmul double %197, %199
  %sub434 = fsub double %add424, %mul433
  store double %sub434, double* %ai, align 8
  %200 = load double, double* %ar, align 8
  %201 = load double, double* %ar, align 8
  %mul435 = fmul double %200, %201
  %202 = load double, double* %ai, align 8
  %203 = load double, double* %ai, align 8
  %mul436 = fmul double %202, %203
  %add437 = fadd double %mul435, %mul436
  %call438 = call double @sqrt(double %add437) #4
  store double %call438, double* %ari, align 8
  %204 = load double, double* %max, align 8
  %205 = load double, double* %ari, align 8
  %cmp439 = fcmp olt double %204, %205
  br i1 %cmp439, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %if.end.316
  %206 = load double, double* %ari, align 8
  store double %206, double* %max, align 8
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.440, %if.end.316
  %207 = load double, double* %max, align 8
  ret double %207
}

declare i32 @printf(i8*, ...) #1

declare i32 @mynode(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @terminate(i32) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
