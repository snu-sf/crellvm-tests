; ModuleID = 'reunitarize2.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%union.anon = type { double }

@max_deviation = common global double 0.000000e+00, align 8
@av_deviation = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [60 x i8] c"Unitarity problem on node %d, site %d, dir %d tolerance=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SU3 matrix:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"repeat in hex:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"  \0A \0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Unitarity error count exceeded.\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"reunitarize: Node %d unitarity problem, maximum deviation=%e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @check_deviation(double %deviation) #0 {
entry:
  %retval = alloca i32, align 4
  %deviation.addr = alloca double, align 8
  store double %deviation, double* %deviation.addr, align 8
  %0 = load double, double* @max_deviation, align 8
  %1 = load double, double* %deviation.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %deviation.addr, align 8
  store double %2, double* @max_deviation, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load double, double* %deviation.addr, align 8
  %4 = load double, double* %deviation.addr, align 8
  %mul = fmul double %3, %4
  %5 = load double, double* @av_deviation, align 8
  %add = fadd double %5, %mul
  store double %add, double* @av_deviation, align 8
  %6 = load double, double* %deviation.addr, align 8
  %cmp1 = fcmp ogt double %6, 1.000000e-04
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.2
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @reunit_report_problem_matrix(%struct.su3_matrix* %mat, i32 %i, i32 %dir) #0 {
entry:
  %mat.addr = alloca %struct.su3_matrix*, align 8
  %i.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ifval = alloca %union.anon, align 8
  store %struct.su3_matrix* %mat, %struct.su3_matrix** %mat.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  %call = call i32 (...) @mynode()
  %0 = load i32, i32* %i.addr, align 4
  %1 = load i32, i32* %dir.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i32 %call, i32 %0, i32 %1, double 1.000000e-04)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %2 = load i32, i32* %ii, align 4
  %cmp = icmp sle i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %jj, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %jj, align 4
  %cmp4 = icmp sle i32 %3, 2
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %4 = load i32, i32* %jj, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %5 to i64
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom6
  %arrayidx7 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx7, i32 0, i32 0
  %7 = load double, double* %real, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %7)
  %8 = load i32, i32* %jj, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i32, i32* %ii, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e11 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx12, i32 0, i64 %idxprom9
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx13, i32 0, i32 1
  %11 = load double, double* %imag, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %12 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %jj, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %13 = load i32, i32* %ii, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %ii, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %ii, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.46, %for.end.18
  %14 = load i32, i32* %ii, align 4
  %cmp21 = icmp sle i32 %14, 2
  br i1 %cmp21, label %for.body.22, label %for.end.48

for.body.22:                                      ; preds = %for.cond.20
  store i32 0, i32* %jj, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.42, %for.body.22
  %15 = load i32, i32* %jj, align 4
  %cmp24 = icmp sle i32 %15, 2
  br i1 %cmp24, label %for.body.25, label %for.end.44

for.body.25:                                      ; preds = %for.cond.23
  %16 = load i32, i32* %jj, align 4
  %idxprom26 = sext i32 %16 to i64
  %17 = load i32, i32* %ii, align 4
  %idxprom27 = sext i32 %17 to i64
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 %idxprom27
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 %idxprom26
  %real31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 0
  %19 = load double, double* %real31, align 8
  %fval = bitcast %union.anon* %ifval to double*
  store double %19, double* %fval, align 8
  %ival = bitcast %union.anon* %ifval to i32*
  %20 = load i32, i32* %ival, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %20)
  %21 = load i32, i32* %jj, align 4
  %idxprom33 = sext i32 %21 to i64
  %22 = load i32, i32* %ii, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load %struct.su3_matrix*, %struct.su3_matrix** %mat.addr, align 8
  %e35 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %23, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e35, i32 0, i64 %idxprom34
  %arrayidx37 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx36, i32 0, i64 %idxprom33
  %imag38 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx37, i32 0, i32 1
  %24 = load double, double* %imag38, align 8
  %fval39 = bitcast %union.anon* %ifval to double*
  store double %24, double* %fval39, align 8
  %ival40 = bitcast %union.anon* %ifval to i32*
  %25 = load i32, i32* %ival40, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %25)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.25
  %26 = load i32, i32* %jj, align 4
  %inc43 = add nsw i32 %26, 1
  store i32 %inc43, i32* %jj, align 4
  br label %for.cond.23

for.end.44:                                       ; preds = %for.cond.23
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.44
  %27 = load i32, i32* %ii, align 4
  %inc47 = add nsw i32 %27, 1
  store i32 %inc47, i32* %ii, align 4
  br label %for.cond.20

for.end.48:                                       ; preds = %for.cond.20
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call50 = call i32 @fflush(%struct._IO_FILE* %28)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @mynode(...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @reunit_su3(%struct.su3_matrix* %c) #0 {
entry:
  %c.addr = alloca %struct.su3_matrix*, align 8
  %bj0r = alloca double, align 8
  %bj0i = alloca double, align 8
  %bj1r = alloca double, align 8
  %bj1i = alloca double, align 8
  %bj2r = alloca double, align 8
  %bj2i = alloca double, align 8
  %c0r = alloca double, align 8
  %c0i = alloca double, align 8
  %c1r = alloca double, align 8
  %c1i = alloca double, align 8
  %c2r = alloca double, align 8
  %c2i = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  %tr = alloca double, align 8
  %ti = alloca double, align 8
  %deviation = alloca double, align 8
  %errors = alloca i32, align 4
  store %struct.su3_matrix* %c, %struct.su3_matrix** %c.addr, align 8
  store i32 0, i32* %errors, align 4
  %0 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 0
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx1, i32 0, i32 0
  %1 = load double, double* %real, align 8
  %2 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e2 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e2, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx3, i32 0, i64 0
  %real5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %3 = load double, double* %real5, align 8
  %mul = fmul double %1, %3
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e6 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %4, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx7, i32 0, i64 0
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 1
  %5 = load double, double* %imag, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e9 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx10, i32 0, i64 0
  %imag12 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx11, i32 0, i32 1
  %7 = load double, double* %imag12, align 8
  %mul13 = fmul double %5, %7
  %add = fadd double %mul, %mul13
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e14 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e14, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx15, i32 0, i64 1
  %real17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  %9 = load double, double* %real17, align 8
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e18 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx19, i32 0, i64 1
  %real21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 0
  %11 = load double, double* %real21, align 8
  %mul22 = fmul double %9, %11
  %add23 = fadd double %add, %mul22
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e24 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e24, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx25, i32 0, i64 1
  %imag27 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx26, i32 0, i32 1
  %13 = load double, double* %imag27, align 8
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e28 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx29, i32 0, i64 1
  %imag31 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx30, i32 0, i32 1
  %15 = load double, double* %imag31, align 8
  %mul32 = fmul double %13, %15
  %add33 = fadd double %add23, %mul32
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e34 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e34, i32 0, i64 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx35, i32 0, i64 2
  %real37 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx36, i32 0, i32 0
  %17 = load double, double* %real37, align 8
  %18 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e38 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %18, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx39, i32 0, i64 2
  %real41 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx40, i32 0, i32 0
  %19 = load double, double* %real41, align 8
  %mul42 = fmul double %17, %19
  %add43 = fadd double %add33, %mul42
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e44 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e44, i32 0, i64 0
  %arrayidx46 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx45, i32 0, i64 2
  %imag47 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx46, i32 0, i32 1
  %21 = load double, double* %imag47, align 8
  %22 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e48 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %22, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx49, i32 0, i64 2
  %imag51 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx50, i32 0, i32 1
  %23 = load double, double* %imag51, align 8
  %mul52 = fmul double %21, %23
  %add53 = fadd double %add43, %mul52
  store double %add53, double* %ar, align 8
  %24 = load double, double* %ar, align 8
  %sub = fsub double %24, 1.000000e+00
  %call = call double @fabs(double %sub) #4
  store double %call, double* %deviation, align 8
  %25 = load double, double* %deviation, align 8
  %call54 = call i32 @check_deviation(double %25)
  %26 = load i32, i32* %errors, align 4
  %add55 = add nsw i32 %26, %call54
  store i32 %add55, i32* %errors, align 4
  %27 = load double, double* %ar, align 8
  %call56 = call double @sqrt(double %27) #5
  %div = fdiv double 1.000000e+00, %call56
  store double %div, double* %ar, align 8
  %28 = load double, double* %ar, align 8
  %29 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e57 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %29, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e57, i32 0, i64 0
  %arrayidx59 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx58, i32 0, i64 0
  %real60 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx59, i32 0, i32 0
  %30 = load double, double* %real60, align 8
  %mul61 = fmul double %30, %28
  store double %mul61, double* %real60, align 8
  %31 = load double, double* %ar, align 8
  %32 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e62 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %32, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e62, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx63, i32 0, i64 0
  %imag65 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx64, i32 0, i32 1
  %33 = load double, double* %imag65, align 8
  %mul66 = fmul double %33, %31
  store double %mul66, double* %imag65, align 8
  %34 = load double, double* %ar, align 8
  %35 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e67 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %35, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e67, i32 0, i64 0
  %arrayidx69 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx68, i32 0, i64 1
  %real70 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx69, i32 0, i32 0
  %36 = load double, double* %real70, align 8
  %mul71 = fmul double %36, %34
  store double %mul71, double* %real70, align 8
  %37 = load double, double* %ar, align 8
  %38 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e72 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %38, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e72, i32 0, i64 0
  %arrayidx74 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx73, i32 0, i64 1
  %imag75 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx74, i32 0, i32 1
  %39 = load double, double* %imag75, align 8
  %mul76 = fmul double %39, %37
  store double %mul76, double* %imag75, align 8
  %40 = load double, double* %ar, align 8
  %41 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e77 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %41, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e77, i32 0, i64 0
  %arrayidx79 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx78, i32 0, i64 2
  %real80 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx79, i32 0, i32 0
  %42 = load double, double* %real80, align 8
  %mul81 = fmul double %42, %40
  store double %mul81, double* %real80, align 8
  %43 = load double, double* %ar, align 8
  %44 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %44, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e82, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx83, i32 0, i64 2
  %imag85 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx84, i32 0, i32 1
  %45 = load double, double* %imag85, align 8
  %mul86 = fmul double %45, %43
  store double %mul86, double* %imag85, align 8
  %46 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e87 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %46, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e87, i32 0, i64 0
  %arrayidx89 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx88, i32 0, i64 0
  %real90 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx89, i32 0, i32 0
  %47 = load double, double* %real90, align 8
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e91 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %48, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e91, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx92, i32 0, i64 0
  %real94 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx93, i32 0, i32 0
  %49 = load double, double* %real94, align 8
  %mul95 = fmul double %47, %49
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e96 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %50, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e96, i32 0, i64 0
  %arrayidx98 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx97, i32 0, i64 0
  %imag99 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx98, i32 0, i32 1
  %51 = load double, double* %imag99, align 8
  %52 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e100 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %52, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e100, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx101, i32 0, i64 0
  %imag103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 1
  %53 = load double, double* %imag103, align 8
  %mul104 = fmul double %51, %53
  %add105 = fadd double %mul95, %mul104
  %54 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e106 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %54, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e106, i32 0, i64 0
  %arrayidx108 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx107, i32 0, i64 1
  %real109 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx108, i32 0, i32 0
  %55 = load double, double* %real109, align 8
  %56 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e110 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %56, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e110, i32 0, i64 1
  %arrayidx112 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx111, i32 0, i64 1
  %real113 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx112, i32 0, i32 0
  %57 = load double, double* %real113, align 8
  %mul114 = fmul double %55, %57
  %add115 = fadd double %add105, %mul114
  %58 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e116 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %58, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e116, i32 0, i64 0
  %arrayidx118 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx117, i32 0, i64 1
  %imag119 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx118, i32 0, i32 1
  %59 = load double, double* %imag119, align 8
  %60 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e120 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %60, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e120, i32 0, i64 1
  %arrayidx122 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx121, i32 0, i64 1
  %imag123 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx122, i32 0, i32 1
  %61 = load double, double* %imag123, align 8
  %mul124 = fmul double %59, %61
  %add125 = fadd double %add115, %mul124
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e126 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %62, i32 0, i32 0
  %arrayidx127 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e126, i32 0, i64 0
  %arrayidx128 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx127, i32 0, i64 2
  %real129 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx128, i32 0, i32 0
  %63 = load double, double* %real129, align 8
  %64 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e130 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %64, i32 0, i32 0
  %arrayidx131 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e130, i32 0, i64 1
  %arrayidx132 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx131, i32 0, i64 2
  %real133 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx132, i32 0, i32 0
  %65 = load double, double* %real133, align 8
  %mul134 = fmul double %63, %65
  %add135 = fadd double %add125, %mul134
  %66 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e136 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %66, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e136, i32 0, i64 0
  %arrayidx138 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx137, i32 0, i64 2
  %imag139 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx138, i32 0, i32 1
  %67 = load double, double* %imag139, align 8
  %68 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e140 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %68, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e140, i32 0, i64 1
  %arrayidx142 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx141, i32 0, i64 2
  %imag143 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx142, i32 0, i32 1
  %69 = load double, double* %imag143, align 8
  %mul144 = fmul double %67, %69
  %add145 = fadd double %add135, %mul144
  store double %add145, double* %ar, align 8
  %70 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e146 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %70, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e146, i32 0, i64 0
  %arrayidx148 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx147, i32 0, i64 0
  %real149 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx148, i32 0, i32 0
  %71 = load double, double* %real149, align 8
  %72 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e150 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %72, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e150, i32 0, i64 1
  %arrayidx152 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx151, i32 0, i64 0
  %imag153 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx152, i32 0, i32 1
  %73 = load double, double* %imag153, align 8
  %mul154 = fmul double %71, %73
  %74 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e155 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %74, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e155, i32 0, i64 0
  %arrayidx157 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx156, i32 0, i64 0
  %imag158 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx157, i32 0, i32 1
  %75 = load double, double* %imag158, align 8
  %76 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e159 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %76, i32 0, i32 0
  %arrayidx160 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e159, i32 0, i64 1
  %arrayidx161 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx160, i32 0, i64 0
  %real162 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx161, i32 0, i32 0
  %77 = load double, double* %real162, align 8
  %mul163 = fmul double %75, %77
  %sub164 = fsub double %mul154, %mul163
  %78 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e165 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %78, i32 0, i32 0
  %arrayidx166 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e165, i32 0, i64 0
  %arrayidx167 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx166, i32 0, i64 1
  %real168 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx167, i32 0, i32 0
  %79 = load double, double* %real168, align 8
  %80 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e169 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %80, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e169, i32 0, i64 1
  %arrayidx171 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx170, i32 0, i64 1
  %imag172 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx171, i32 0, i32 1
  %81 = load double, double* %imag172, align 8
  %mul173 = fmul double %79, %81
  %add174 = fadd double %sub164, %mul173
  %82 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e175 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %82, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e175, i32 0, i64 0
  %arrayidx177 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx176, i32 0, i64 1
  %imag178 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx177, i32 0, i32 1
  %83 = load double, double* %imag178, align 8
  %84 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e179 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %84, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e179, i32 0, i64 1
  %arrayidx181 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx180, i32 0, i64 1
  %real182 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx181, i32 0, i32 0
  %85 = load double, double* %real182, align 8
  %mul183 = fmul double %83, %85
  %sub184 = fsub double %add174, %mul183
  %86 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e185 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %86, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e185, i32 0, i64 0
  %arrayidx187 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx186, i32 0, i64 2
  %real188 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx187, i32 0, i32 0
  %87 = load double, double* %real188, align 8
  %88 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e189 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %88, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e189, i32 0, i64 1
  %arrayidx191 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx190, i32 0, i64 2
  %imag192 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx191, i32 0, i32 1
  %89 = load double, double* %imag192, align 8
  %mul193 = fmul double %87, %89
  %add194 = fadd double %sub184, %mul193
  %90 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e195 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %90, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e195, i32 0, i64 0
  %arrayidx197 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx196, i32 0, i64 2
  %imag198 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx197, i32 0, i32 1
  %91 = load double, double* %imag198, align 8
  %92 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e199 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %92, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e199, i32 0, i64 1
  %arrayidx201 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx200, i32 0, i64 2
  %real202 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx201, i32 0, i32 0
  %93 = load double, double* %real202, align 8
  %mul203 = fmul double %91, %93
  %sub204 = fsub double %add194, %mul203
  store double %sub204, double* %ai, align 8
  %94 = load double, double* %ar, align 8
  %95 = load double, double* %ar, align 8
  %mul205 = fmul double %94, %95
  %96 = load double, double* %ai, align 8
  %97 = load double, double* %ai, align 8
  %mul206 = fmul double %96, %97
  %add207 = fadd double %mul205, %mul206
  store double %add207, double* %deviation, align 8
  %98 = load double, double* %deviation, align 8
  %call208 = call i32 @check_deviation(double %98)
  %99 = load i32, i32* %errors, align 4
  %add209 = add nsw i32 %99, %call208
  store i32 %add209, i32* %errors, align 4
  %100 = load double, double* %ar, align 8
  %101 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e210 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %101, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e210, i32 0, i64 0
  %arrayidx212 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx211, i32 0, i64 0
  %real213 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx212, i32 0, i32 0
  %102 = load double, double* %real213, align 8
  %mul214 = fmul double %100, %102
  %103 = load double, double* %ai, align 8
  %104 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e215 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %104, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e215, i32 0, i64 0
  %arrayidx217 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx216, i32 0, i64 0
  %imag218 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx217, i32 0, i32 1
  %105 = load double, double* %imag218, align 8
  %mul219 = fmul double %103, %105
  %sub220 = fsub double %mul214, %mul219
  %106 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e221 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %106, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e221, i32 0, i64 1
  %arrayidx223 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx222, i32 0, i64 0
  %real224 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx223, i32 0, i32 0
  %107 = load double, double* %real224, align 8
  %sub225 = fsub double %107, %sub220
  store double %sub225, double* %real224, align 8
  %108 = load double, double* %ar, align 8
  %109 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e226 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %109, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e226, i32 0, i64 0
  %arrayidx228 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx227, i32 0, i64 0
  %imag229 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx228, i32 0, i32 1
  %110 = load double, double* %imag229, align 8
  %mul230 = fmul double %108, %110
  %111 = load double, double* %ai, align 8
  %112 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e231 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %112, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e231, i32 0, i64 0
  %arrayidx233 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx232, i32 0, i64 0
  %real234 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx233, i32 0, i32 0
  %113 = load double, double* %real234, align 8
  %mul235 = fmul double %111, %113
  %add236 = fadd double %mul230, %mul235
  %114 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e237 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %114, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e237, i32 0, i64 1
  %arrayidx239 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx238, i32 0, i64 0
  %imag240 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx239, i32 0, i32 1
  %115 = load double, double* %imag240, align 8
  %sub241 = fsub double %115, %add236
  store double %sub241, double* %imag240, align 8
  %116 = load double, double* %ar, align 8
  %117 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e242 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %117, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e242, i32 0, i64 0
  %arrayidx244 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx243, i32 0, i64 1
  %real245 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx244, i32 0, i32 0
  %118 = load double, double* %real245, align 8
  %mul246 = fmul double %116, %118
  %119 = load double, double* %ai, align 8
  %120 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e247 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %120, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e247, i32 0, i64 0
  %arrayidx249 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx248, i32 0, i64 1
  %imag250 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx249, i32 0, i32 1
  %121 = load double, double* %imag250, align 8
  %mul251 = fmul double %119, %121
  %sub252 = fsub double %mul246, %mul251
  %122 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e253 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %122, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e253, i32 0, i64 1
  %arrayidx255 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx254, i32 0, i64 1
  %real256 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx255, i32 0, i32 0
  %123 = load double, double* %real256, align 8
  %sub257 = fsub double %123, %sub252
  store double %sub257, double* %real256, align 8
  %124 = load double, double* %ar, align 8
  %125 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e258 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %125, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e258, i32 0, i64 0
  %arrayidx260 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx259, i32 0, i64 1
  %imag261 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx260, i32 0, i32 1
  %126 = load double, double* %imag261, align 8
  %mul262 = fmul double %124, %126
  %127 = load double, double* %ai, align 8
  %128 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e263 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %128, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e263, i32 0, i64 0
  %arrayidx265 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx264, i32 0, i64 1
  %real266 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx265, i32 0, i32 0
  %129 = load double, double* %real266, align 8
  %mul267 = fmul double %127, %129
  %add268 = fadd double %mul262, %mul267
  %130 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e269 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %130, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e269, i32 0, i64 1
  %arrayidx271 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx270, i32 0, i64 1
  %imag272 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx271, i32 0, i32 1
  %131 = load double, double* %imag272, align 8
  %sub273 = fsub double %131, %add268
  store double %sub273, double* %imag272, align 8
  %132 = load double, double* %ar, align 8
  %133 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e274 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %133, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e274, i32 0, i64 0
  %arrayidx276 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx275, i32 0, i64 2
  %real277 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx276, i32 0, i32 0
  %134 = load double, double* %real277, align 8
  %mul278 = fmul double %132, %134
  %135 = load double, double* %ai, align 8
  %136 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e279 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %136, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e279, i32 0, i64 0
  %arrayidx281 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx280, i32 0, i64 2
  %imag282 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx281, i32 0, i32 1
  %137 = load double, double* %imag282, align 8
  %mul283 = fmul double %135, %137
  %sub284 = fsub double %mul278, %mul283
  %138 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e285 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %138, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e285, i32 0, i64 1
  %arrayidx287 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx286, i32 0, i64 2
  %real288 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx287, i32 0, i32 0
  %139 = load double, double* %real288, align 8
  %sub289 = fsub double %139, %sub284
  store double %sub289, double* %real288, align 8
  %140 = load double, double* %ar, align 8
  %141 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e290 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %141, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e290, i32 0, i64 0
  %arrayidx292 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx291, i32 0, i64 2
  %imag293 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx292, i32 0, i32 1
  %142 = load double, double* %imag293, align 8
  %mul294 = fmul double %140, %142
  %143 = load double, double* %ai, align 8
  %144 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e295 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %144, i32 0, i32 0
  %arrayidx296 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e295, i32 0, i64 0
  %arrayidx297 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx296, i32 0, i64 2
  %real298 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx297, i32 0, i32 0
  %145 = load double, double* %real298, align 8
  %mul299 = fmul double %143, %145
  %add300 = fadd double %mul294, %mul299
  %146 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e301 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %146, i32 0, i32 0
  %arrayidx302 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e301, i32 0, i64 1
  %arrayidx303 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx302, i32 0, i64 2
  %imag304 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx303, i32 0, i32 1
  %147 = load double, double* %imag304, align 8
  %sub305 = fsub double %147, %add300
  store double %sub305, double* %imag304, align 8
  %148 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e306 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %148, i32 0, i32 0
  %arrayidx307 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e306, i32 0, i64 1
  %arrayidx308 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx307, i32 0, i64 0
  %real309 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx308, i32 0, i32 0
  %149 = load double, double* %real309, align 8
  %150 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e310 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %150, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e310, i32 0, i64 1
  %arrayidx312 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx311, i32 0, i64 0
  %real313 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx312, i32 0, i32 0
  %151 = load double, double* %real313, align 8
  %mul314 = fmul double %149, %151
  %152 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e315 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %152, i32 0, i32 0
  %arrayidx316 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e315, i32 0, i64 1
  %arrayidx317 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx316, i32 0, i64 0
  %imag318 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx317, i32 0, i32 1
  %153 = load double, double* %imag318, align 8
  %154 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e319 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %154, i32 0, i32 0
  %arrayidx320 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e319, i32 0, i64 1
  %arrayidx321 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx320, i32 0, i64 0
  %imag322 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx321, i32 0, i32 1
  %155 = load double, double* %imag322, align 8
  %mul323 = fmul double %153, %155
  %add324 = fadd double %mul314, %mul323
  %156 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e325 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %156, i32 0, i32 0
  %arrayidx326 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e325, i32 0, i64 1
  %arrayidx327 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx326, i32 0, i64 1
  %real328 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx327, i32 0, i32 0
  %157 = load double, double* %real328, align 8
  %158 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e329 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %158, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e329, i32 0, i64 1
  %arrayidx331 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx330, i32 0, i64 1
  %real332 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx331, i32 0, i32 0
  %159 = load double, double* %real332, align 8
  %mul333 = fmul double %157, %159
  %add334 = fadd double %add324, %mul333
  %160 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e335 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %160, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e335, i32 0, i64 1
  %arrayidx337 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx336, i32 0, i64 1
  %imag338 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx337, i32 0, i32 1
  %161 = load double, double* %imag338, align 8
  %162 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e339 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %162, i32 0, i32 0
  %arrayidx340 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e339, i32 0, i64 1
  %arrayidx341 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx340, i32 0, i64 1
  %imag342 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx341, i32 0, i32 1
  %163 = load double, double* %imag342, align 8
  %mul343 = fmul double %161, %163
  %add344 = fadd double %add334, %mul343
  %164 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e345 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %164, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e345, i32 0, i64 1
  %arrayidx347 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx346, i32 0, i64 2
  %real348 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx347, i32 0, i32 0
  %165 = load double, double* %real348, align 8
  %166 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e349 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %166, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e349, i32 0, i64 1
  %arrayidx351 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx350, i32 0, i64 2
  %real352 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx351, i32 0, i32 0
  %167 = load double, double* %real352, align 8
  %mul353 = fmul double %165, %167
  %add354 = fadd double %add344, %mul353
  %168 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e355 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %168, i32 0, i32 0
  %arrayidx356 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e355, i32 0, i64 1
  %arrayidx357 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx356, i32 0, i64 2
  %imag358 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx357, i32 0, i32 1
  %169 = load double, double* %imag358, align 8
  %170 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e359 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %170, i32 0, i32 0
  %arrayidx360 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e359, i32 0, i64 1
  %arrayidx361 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx360, i32 0, i64 2
  %imag362 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx361, i32 0, i32 1
  %171 = load double, double* %imag362, align 8
  %mul363 = fmul double %169, %171
  %add364 = fadd double %add354, %mul363
  store double %add364, double* %ar, align 8
  %172 = load double, double* %ar, align 8
  %sub365 = fsub double %172, 1.000000e+00
  %call366 = call double @fabs(double %sub365) #4
  store double %call366, double* %deviation, align 8
  %173 = load double, double* %deviation, align 8
  %call367 = call i32 @check_deviation(double %173)
  %174 = load i32, i32* %errors, align 4
  %add368 = add nsw i32 %174, %call367
  store i32 %add368, i32* %errors, align 4
  %175 = load double, double* %ar, align 8
  %call369 = call double @sqrt(double %175) #5
  %div370 = fdiv double 1.000000e+00, %call369
  store double %div370, double* %ar, align 8
  %176 = load double, double* %ar, align 8
  %177 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e371 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %177, i32 0, i32 0
  %arrayidx372 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e371, i32 0, i64 1
  %arrayidx373 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx372, i32 0, i64 0
  %real374 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx373, i32 0, i32 0
  %178 = load double, double* %real374, align 8
  %mul375 = fmul double %178, %176
  store double %mul375, double* %real374, align 8
  %179 = load double, double* %ar, align 8
  %180 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e376 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %180, i32 0, i32 0
  %arrayidx377 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e376, i32 0, i64 1
  %arrayidx378 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx377, i32 0, i64 0
  %imag379 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx378, i32 0, i32 1
  %181 = load double, double* %imag379, align 8
  %mul380 = fmul double %181, %179
  store double %mul380, double* %imag379, align 8
  %182 = load double, double* %ar, align 8
  %183 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e381 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %183, i32 0, i32 0
  %arrayidx382 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e381, i32 0, i64 1
  %arrayidx383 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx382, i32 0, i64 1
  %real384 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx383, i32 0, i32 0
  %184 = load double, double* %real384, align 8
  %mul385 = fmul double %184, %182
  store double %mul385, double* %real384, align 8
  %185 = load double, double* %ar, align 8
  %186 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e386 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %186, i32 0, i32 0
  %arrayidx387 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e386, i32 0, i64 1
  %arrayidx388 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx387, i32 0, i64 1
  %imag389 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx388, i32 0, i32 1
  %187 = load double, double* %imag389, align 8
  %mul390 = fmul double %187, %185
  store double %mul390, double* %imag389, align 8
  %188 = load double, double* %ar, align 8
  %189 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e391 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %189, i32 0, i32 0
  %arrayidx392 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e391, i32 0, i64 1
  %arrayidx393 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx392, i32 0, i64 2
  %real394 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx393, i32 0, i32 0
  %190 = load double, double* %real394, align 8
  %mul395 = fmul double %190, %188
  store double %mul395, double* %real394, align 8
  %191 = load double, double* %ar, align 8
  %192 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e396 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %192, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e396, i32 0, i64 1
  %arrayidx398 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx397, i32 0, i64 2
  %imag399 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx398, i32 0, i32 1
  %193 = load double, double* %imag399, align 8
  %mul400 = fmul double %193, %191
  store double %mul400, double* %imag399, align 8
  %194 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e401 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %194, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e401, i32 0, i64 2
  %arrayidx403 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx402, i32 0, i64 0
  %real404 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx403, i32 0, i32 0
  %195 = load double, double* %real404, align 8
  store double %195, double* %c0r, align 8
  %196 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e405 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %196, i32 0, i32 0
  %arrayidx406 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e405, i32 0, i64 2
  %arrayidx407 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx406, i32 0, i64 0
  %imag408 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx407, i32 0, i32 1
  %197 = load double, double* %imag408, align 8
  store double %197, double* %c0i, align 8
  %198 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e409 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %198, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e409, i32 0, i64 2
  %arrayidx411 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx410, i32 0, i64 1
  %real412 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx411, i32 0, i32 0
  %199 = load double, double* %real412, align 8
  store double %199, double* %c1r, align 8
  %200 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e413 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %200, i32 0, i32 0
  %arrayidx414 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e413, i32 0, i64 2
  %arrayidx415 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx414, i32 0, i64 1
  %imag416 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx415, i32 0, i32 1
  %201 = load double, double* %imag416, align 8
  store double %201, double* %c1i, align 8
  %202 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e417 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %202, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e417, i32 0, i64 2
  %arrayidx419 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx418, i32 0, i64 2
  %real420 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx419, i32 0, i32 0
  %203 = load double, double* %real420, align 8
  store double %203, double* %c2r, align 8
  %204 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e421 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %204, i32 0, i32 0
  %arrayidx422 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e421, i32 0, i64 2
  %arrayidx423 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx422, i32 0, i64 2
  %imag424 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx423, i32 0, i32 1
  %205 = load double, double* %imag424, align 8
  store double %205, double* %c2i, align 8
  %206 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e425 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %206, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e425, i32 0, i64 0
  %arrayidx427 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx426, i32 0, i64 0
  %real428 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx427, i32 0, i32 0
  %207 = load double, double* %real428, align 8
  store double %207, double* %bj0r, align 8
  %208 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e429 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %208, i32 0, i32 0
  %arrayidx430 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e429, i32 0, i64 0
  %arrayidx431 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx430, i32 0, i64 0
  %imag432 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx431, i32 0, i32 1
  %209 = load double, double* %imag432, align 8
  store double %209, double* %bj0i, align 8
  %210 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e433 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %210, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e433, i32 0, i64 0
  %arrayidx435 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx434, i32 0, i64 1
  %real436 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx435, i32 0, i32 0
  %211 = load double, double* %real436, align 8
  store double %211, double* %bj1r, align 8
  %212 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e437 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %212, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e437, i32 0, i64 0
  %arrayidx439 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx438, i32 0, i64 1
  %imag440 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx439, i32 0, i32 1
  %213 = load double, double* %imag440, align 8
  store double %213, double* %bj1i, align 8
  %214 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e441 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %214, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e441, i32 0, i64 0
  %arrayidx443 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx442, i32 0, i64 2
  %real444 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx443, i32 0, i32 0
  %215 = load double, double* %real444, align 8
  store double %215, double* %bj2r, align 8
  %216 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e445 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %216, i32 0, i32 0
  %arrayidx446 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e445, i32 0, i64 0
  %arrayidx447 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx446, i32 0, i64 2
  %imag448 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx447, i32 0, i32 1
  %217 = load double, double* %imag448, align 8
  store double %217, double* %bj2i, align 8
  %218 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e449 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %218, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e449, i32 0, i64 1
  %arrayidx451 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx450, i32 0, i64 2
  %real452 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx451, i32 0, i32 0
  %219 = load double, double* %real452, align 8
  store double %219, double* %ar, align 8
  %220 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e453 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %220, i32 0, i32 0
  %arrayidx454 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e453, i32 0, i64 1
  %arrayidx455 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx454, i32 0, i64 2
  %imag456 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx455, i32 0, i32 1
  %221 = load double, double* %imag456, align 8
  store double %221, double* %ai, align 8
  %222 = load double, double* %bj1r, align 8
  %223 = load double, double* %ar, align 8
  %mul457 = fmul double %222, %223
  %224 = load double, double* %bj1i, align 8
  %225 = load double, double* %ai, align 8
  %mul458 = fmul double %224, %225
  %sub459 = fsub double %mul457, %mul458
  store double %sub459, double* %tr, align 8
  %226 = load double, double* %bj1r, align 8
  %227 = load double, double* %ai, align 8
  %mul460 = fmul double %226, %227
  %228 = load double, double* %bj1i, align 8
  %229 = load double, double* %ar, align 8
  %mul461 = fmul double %228, %229
  %add462 = fadd double %mul460, %mul461
  store double %add462, double* %ti, align 8
  %230 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e463 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %230, i32 0, i32 0
  %arrayidx464 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e463, i32 0, i64 1
  %arrayidx465 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx464, i32 0, i64 1
  %real466 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx465, i32 0, i32 0
  %231 = load double, double* %real466, align 8
  store double %231, double* %ar, align 8
  %232 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e467 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %232, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e467, i32 0, i64 1
  %arrayidx469 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx468, i32 0, i64 1
  %imag470 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx469, i32 0, i32 1
  %233 = load double, double* %imag470, align 8
  store double %233, double* %ai, align 8
  %234 = load double, double* %tr, align 8
  %235 = load double, double* %bj2r, align 8
  %236 = load double, double* %ar, align 8
  %mul471 = fmul double %235, %236
  %sub472 = fsub double %234, %mul471
  %237 = load double, double* %bj2i, align 8
  %238 = load double, double* %ai, align 8
  %mul473 = fmul double %237, %238
  %add474 = fadd double %sub472, %mul473
  store double %add474, double* %tr, align 8
  %239 = load double, double* %ti, align 8
  %240 = load double, double* %bj2r, align 8
  %241 = load double, double* %ai, align 8
  %mul475 = fmul double %240, %241
  %sub476 = fsub double %239, %mul475
  %242 = load double, double* %bj2i, align 8
  %243 = load double, double* %ar, align 8
  %mul477 = fmul double %242, %243
  %sub478 = fsub double %sub476, %mul477
  store double %sub478, double* %ti, align 8
  %244 = load double, double* %tr, align 8
  %245 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e479 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %245, i32 0, i32 0
  %arrayidx480 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e479, i32 0, i64 2
  %arrayidx481 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx480, i32 0, i64 0
  %real482 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx481, i32 0, i32 0
  store double %244, double* %real482, align 8
  %246 = load double, double* %ti, align 8
  %sub483 = fsub double -0.000000e+00, %246
  %247 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e484 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %247, i32 0, i32 0
  %arrayidx485 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e484, i32 0, i64 2
  %arrayidx486 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx485, i32 0, i64 0
  %imag487 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx486, i32 0, i32 1
  store double %sub483, double* %imag487, align 8
  %248 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e488 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %248, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e488, i32 0, i64 1
  %arrayidx490 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx489, i32 0, i64 0
  %real491 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx490, i32 0, i32 0
  %249 = load double, double* %real491, align 8
  store double %249, double* %ar, align 8
  %250 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e492 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %250, i32 0, i32 0
  %arrayidx493 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e492, i32 0, i64 1
  %arrayidx494 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx493, i32 0, i64 0
  %imag495 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx494, i32 0, i32 1
  %251 = load double, double* %imag495, align 8
  store double %251, double* %ai, align 8
  %252 = load double, double* %bj2r, align 8
  %253 = load double, double* %ar, align 8
  %mul496 = fmul double %252, %253
  %254 = load double, double* %bj2i, align 8
  %255 = load double, double* %ai, align 8
  %mul497 = fmul double %254, %255
  %sub498 = fsub double %mul496, %mul497
  store double %sub498, double* %tr, align 8
  %256 = load double, double* %bj2r, align 8
  %257 = load double, double* %ai, align 8
  %mul499 = fmul double %256, %257
  %258 = load double, double* %bj2i, align 8
  %259 = load double, double* %ar, align 8
  %mul500 = fmul double %258, %259
  %add501 = fadd double %mul499, %mul500
  store double %add501, double* %ti, align 8
  %260 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e502 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %260, i32 0, i32 0
  %arrayidx503 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e502, i32 0, i64 1
  %arrayidx504 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx503, i32 0, i64 2
  %real505 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx504, i32 0, i32 0
  %261 = load double, double* %real505, align 8
  store double %261, double* %ar, align 8
  %262 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e506 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %262, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e506, i32 0, i64 1
  %arrayidx508 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx507, i32 0, i64 2
  %imag509 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx508, i32 0, i32 1
  %263 = load double, double* %imag509, align 8
  store double %263, double* %ai, align 8
  %264 = load double, double* %tr, align 8
  %265 = load double, double* %bj0r, align 8
  %266 = load double, double* %ar, align 8
  %mul510 = fmul double %265, %266
  %sub511 = fsub double %264, %mul510
  %267 = load double, double* %bj0i, align 8
  %268 = load double, double* %ai, align 8
  %mul512 = fmul double %267, %268
  %add513 = fadd double %sub511, %mul512
  store double %add513, double* %tr, align 8
  %269 = load double, double* %ti, align 8
  %270 = load double, double* %bj0r, align 8
  %271 = load double, double* %ai, align 8
  %mul514 = fmul double %270, %271
  %sub515 = fsub double %269, %mul514
  %272 = load double, double* %bj0i, align 8
  %273 = load double, double* %ar, align 8
  %mul516 = fmul double %272, %273
  %sub517 = fsub double %sub515, %mul516
  store double %sub517, double* %ti, align 8
  %274 = load double, double* %tr, align 8
  %275 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e518 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %275, i32 0, i32 0
  %arrayidx519 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e518, i32 0, i64 2
  %arrayidx520 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx519, i32 0, i64 1
  %real521 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx520, i32 0, i32 0
  store double %274, double* %real521, align 8
  %276 = load double, double* %ti, align 8
  %sub522 = fsub double -0.000000e+00, %276
  %277 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e523 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %277, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e523, i32 0, i64 2
  %arrayidx525 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx524, i32 0, i64 1
  %imag526 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx525, i32 0, i32 1
  store double %sub522, double* %imag526, align 8
  %278 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e527 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %278, i32 0, i32 0
  %arrayidx528 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e527, i32 0, i64 1
  %arrayidx529 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx528, i32 0, i64 1
  %real530 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx529, i32 0, i32 0
  %279 = load double, double* %real530, align 8
  store double %279, double* %ar, align 8
  %280 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e531 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %280, i32 0, i32 0
  %arrayidx532 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e531, i32 0, i64 1
  %arrayidx533 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx532, i32 0, i64 1
  %imag534 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx533, i32 0, i32 1
  %281 = load double, double* %imag534, align 8
  store double %281, double* %ai, align 8
  %282 = load double, double* %bj0r, align 8
  %283 = load double, double* %ar, align 8
  %mul535 = fmul double %282, %283
  %284 = load double, double* %bj0i, align 8
  %285 = load double, double* %ai, align 8
  %mul536 = fmul double %284, %285
  %sub537 = fsub double %mul535, %mul536
  store double %sub537, double* %tr, align 8
  %286 = load double, double* %bj0r, align 8
  %287 = load double, double* %ai, align 8
  %mul538 = fmul double %286, %287
  %288 = load double, double* %bj0i, align 8
  %289 = load double, double* %ar, align 8
  %mul539 = fmul double %288, %289
  %add540 = fadd double %mul538, %mul539
  store double %add540, double* %ti, align 8
  %290 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e541 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %290, i32 0, i32 0
  %arrayidx542 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e541, i32 0, i64 1
  %arrayidx543 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx542, i32 0, i64 0
  %real544 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx543, i32 0, i32 0
  %291 = load double, double* %real544, align 8
  store double %291, double* %ar, align 8
  %292 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e545 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %292, i32 0, i32 0
  %arrayidx546 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e545, i32 0, i64 1
  %arrayidx547 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx546, i32 0, i64 0
  %imag548 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx547, i32 0, i32 1
  %293 = load double, double* %imag548, align 8
  store double %293, double* %ai, align 8
  %294 = load double, double* %tr, align 8
  %295 = load double, double* %bj1r, align 8
  %296 = load double, double* %ar, align 8
  %mul549 = fmul double %295, %296
  %sub550 = fsub double %294, %mul549
  %297 = load double, double* %bj1i, align 8
  %298 = load double, double* %ai, align 8
  %mul551 = fmul double %297, %298
  %add552 = fadd double %sub550, %mul551
  store double %add552, double* %tr, align 8
  %299 = load double, double* %ti, align 8
  %300 = load double, double* %bj1r, align 8
  %301 = load double, double* %ai, align 8
  %mul553 = fmul double %300, %301
  %sub554 = fsub double %299, %mul553
  %302 = load double, double* %bj1i, align 8
  %303 = load double, double* %ar, align 8
  %mul555 = fmul double %302, %303
  %sub556 = fsub double %sub554, %mul555
  store double %sub556, double* %ti, align 8
  %304 = load double, double* %tr, align 8
  %305 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e557 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %305, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e557, i32 0, i64 2
  %arrayidx559 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx558, i32 0, i64 2
  %real560 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx559, i32 0, i32 0
  store double %304, double* %real560, align 8
  %306 = load double, double* %ti, align 8
  %sub561 = fsub double -0.000000e+00, %306
  %307 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e562 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %307, i32 0, i32 0
  %arrayidx563 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e562, i32 0, i64 2
  %arrayidx564 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx563, i32 0, i64 2
  %imag565 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx564, i32 0, i32 1
  store double %sub561, double* %imag565, align 8
  %308 = load double, double* %c0r, align 8
  %309 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e566 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %309, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e566, i32 0, i64 2
  %arrayidx568 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx567, i32 0, i64 0
  %real569 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx568, i32 0, i32 0
  %310 = load double, double* %real569, align 8
  %sub570 = fsub double %308, %310
  %311 = load double, double* %c0r, align 8
  %312 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e571 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %312, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e571, i32 0, i64 2
  %arrayidx573 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx572, i32 0, i64 0
  %real574 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx573, i32 0, i32 0
  %313 = load double, double* %real574, align 8
  %sub575 = fsub double %311, %313
  %mul576 = fmul double %sub570, %sub575
  %314 = load double, double* %c0i, align 8
  %315 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e577 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %315, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e577, i32 0, i64 2
  %arrayidx579 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx578, i32 0, i64 0
  %imag580 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx579, i32 0, i32 1
  %316 = load double, double* %imag580, align 8
  %sub581 = fsub double %314, %316
  %317 = load double, double* %c0i, align 8
  %318 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e582 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %318, i32 0, i32 0
  %arrayidx583 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e582, i32 0, i64 2
  %arrayidx584 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx583, i32 0, i64 0
  %imag585 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx584, i32 0, i32 1
  %319 = load double, double* %imag585, align 8
  %sub586 = fsub double %317, %319
  %mul587 = fmul double %sub581, %sub586
  %add588 = fadd double %mul576, %mul587
  %320 = load double, double* %c1r, align 8
  %321 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e589 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %321, i32 0, i32 0
  %arrayidx590 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e589, i32 0, i64 2
  %arrayidx591 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx590, i32 0, i64 1
  %real592 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx591, i32 0, i32 0
  %322 = load double, double* %real592, align 8
  %sub593 = fsub double %320, %322
  %323 = load double, double* %c1r, align 8
  %324 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e594 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %324, i32 0, i32 0
  %arrayidx595 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e594, i32 0, i64 2
  %arrayidx596 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx595, i32 0, i64 1
  %real597 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx596, i32 0, i32 0
  %325 = load double, double* %real597, align 8
  %sub598 = fsub double %323, %325
  %mul599 = fmul double %sub593, %sub598
  %add600 = fadd double %add588, %mul599
  %326 = load double, double* %c1i, align 8
  %327 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e601 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %327, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e601, i32 0, i64 2
  %arrayidx603 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx602, i32 0, i64 1
  %imag604 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx603, i32 0, i32 1
  %328 = load double, double* %imag604, align 8
  %sub605 = fsub double %326, %328
  %329 = load double, double* %c1i, align 8
  %330 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e606 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %330, i32 0, i32 0
  %arrayidx607 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e606, i32 0, i64 2
  %arrayidx608 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx607, i32 0, i64 1
  %imag609 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx608, i32 0, i32 1
  %331 = load double, double* %imag609, align 8
  %sub610 = fsub double %329, %331
  %mul611 = fmul double %sub605, %sub610
  %add612 = fadd double %add600, %mul611
  %332 = load double, double* %c2r, align 8
  %333 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e613 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %333, i32 0, i32 0
  %arrayidx614 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e613, i32 0, i64 2
  %arrayidx615 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx614, i32 0, i64 2
  %real616 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx615, i32 0, i32 0
  %334 = load double, double* %real616, align 8
  %sub617 = fsub double %332, %334
  %335 = load double, double* %c2r, align 8
  %336 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e618 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %336, i32 0, i32 0
  %arrayidx619 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e618, i32 0, i64 2
  %arrayidx620 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx619, i32 0, i64 2
  %real621 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx620, i32 0, i32 0
  %337 = load double, double* %real621, align 8
  %sub622 = fsub double %335, %337
  %mul623 = fmul double %sub617, %sub622
  %add624 = fadd double %add612, %mul623
  %338 = load double, double* %c2i, align 8
  %339 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e625 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %339, i32 0, i32 0
  %arrayidx626 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e625, i32 0, i64 2
  %arrayidx627 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx626, i32 0, i64 2
  %imag628 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx627, i32 0, i32 1
  %340 = load double, double* %imag628, align 8
  %sub629 = fsub double %338, %340
  %341 = load double, double* %c2i, align 8
  %342 = load %struct.su3_matrix*, %struct.su3_matrix** %c.addr, align 8
  %e630 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %342, i32 0, i32 0
  %arrayidx631 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e630, i32 0, i64 2
  %arrayidx632 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx631, i32 0, i64 2
  %imag633 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx632, i32 0, i32 1
  %343 = load double, double* %imag633, align 8
  %sub634 = fsub double %341, %343
  %mul635 = fmul double %sub629, %sub634
  %add636 = fadd double %add624, %mul635
  store double %add636, double* %ar, align 8
  %344 = load double, double* %ar, align 8
  store double %344, double* %deviation, align 8
  %345 = load double, double* %deviation, align 8
  %call637 = call i32 @check_deviation(double %345)
  %346 = load i32, i32* %errors, align 4
  %add638 = add nsw i32 %346, %call637
  store i32 %add638, i32* %errors, align 4
  %347 = load i32, i32* %errors, align 4
  ret i32 %347
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define void @reunitarize() #0 {
entry:
  %mat = alloca %struct.su3_matrix*, align 8
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %errcount = alloca i32, align 4
  %errors = alloca i32, align 4
  store i32 0, i32* %errcount, align 4
  store double 0.000000e+00, double* @max_deviation, align 8
  store double 0.000000e+00, double* @av_deviation, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %0, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %dir, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %dir, align 4
  %cmp2 = icmp sle i32 %3, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  store %struct.su3_matrix* %arrayidx, %struct.su3_matrix** %mat, align 8
  %6 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %call = call i32 @reunit_su3(%struct.su3_matrix* %6)
  store i32 %call, i32* %errors, align 4
  %7 = load i32, i32* %errors, align 4
  %8 = load i32, i32* %errcount, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %errcount, align 4
  %9 = load i32, i32* %errors, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** %mat, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %dir, align 4
  call void @reunit_report_problem_matrix(%struct.su3_matrix* %10, i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %13 = load i32, i32* %errcount, align 4
  %cmp4 = icmp sgt i32 %13, 100
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %14 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %15, 1
  store i32 %inc9, i32* %i, align 4
  %16 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %16, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %17 = load double, double* @max_deviation, align 8
  %cmp11 = fcmp ogt double %17, 1.000000e-04
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %for.end.10
  %call13 = call i32 (...) @mynode()
  %18 = load double, double* @max_deviation, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i32 0, i32 0), i32 %call13, double %18)
  %19 = load i32, i32* %errcount, align 4
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %errcount, align 4
  %20 = load i32, i32* %errcount, align 4
  %cmp16 = icmp sgt i32 %20, 100
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.12
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %for.end.10
  ret void
}

declare void @terminate(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
