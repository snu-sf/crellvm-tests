; ModuleID = './SingleSource.Benchmarks.Linpack/1.linpack-pc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.aa = internal global [40000 x float] zeroinitializer, align 16
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal global [200 x float] zeroinitializer, align 16
@main.x = internal global [200 x float] zeroinitializer, align 16
@main.ipvt = internal global [200 x i32] zeroinitializer, align 16
@main.n = internal global i32 0, align 4
@main.i = internal global i32 0, align 4
@main.j = internal global i32 0, align 4
@main.ntimes = internal global i32 0, align 4
@main.info = internal global i32 0, align 4
@main.lda = internal global i32 0, align 4
@main.ldaa = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"INSERT COMPILER NAME HERE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"INSERT OPTIMISATION OPTIONS HERE\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Rolled \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Single \00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Precision Linpack Benchmark - PC Version in 'C/C++'\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Compiler     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Optimisation %s\0A\0A\00", align 1
@atime = internal global [9 x [15 x float]] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [39 x i8] c"norm resid      resid           machep\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"         x[0]-1          x[n-1]-1\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%6.1f %17.8e%17.8e%17.8e%17.8e\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Times are reported for matrices of order        %5d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"1 pass times for array with leading dimension of%5d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"      dgefa      dgesl      total     Mflops       unit\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"      ratio\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0ACalculating matgen overhead\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"%10d times %6.2f seconds\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Overhead for 1 matgen %12.5f seconds\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Calculating matgen/dgefa passes for 5 seconds\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Passes used %10d \0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Times for array with leading dimension of%4d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Average                          %11.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\0ACalculating matgen2 overhead\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @second() #0 {
entry:
  %secs = alloca float, align 4
  %Time = alloca i64, align 8
  %call = call i64 @clock() #2
  store i64 %call, i64* %Time, align 8
  %0 = load i64, i64* %Time, align 8
  %conv = sitofp i64 %0 to float
  %div = fdiv float %conv, 1.000000e+06
  store float %div, float* %secs, align 4
  %1 = load float, float* %secs, align 4
  ret float %1
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind uwtable
define void @what_date() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %cray = alloca float, align 4
  %ops = alloca float, align 4
  %total = alloca float, align 4
  %norma = alloca float, align 4
  %normx = alloca float, align 4
  %resid = alloca float, align 4
  %residn = alloca float, align 4
  %eps = alloca float, align 4
  %t1 = alloca float, align 4
  %tm2 = alloca float, align 4
  %epsn = alloca float, align 4
  %x1 = alloca float, align 4
  %x2 = alloca float, align 4
  %mflops = alloca float, align 4
  %pass = alloca i32, align 4
  %loop = alloca i32, align 4
  %overhead1 = alloca float, align 4
  %overhead2 = alloca float, align 4
  %time1 = alloca float, align 4
  %time2 = alloca float, align 4
  %compiler = alloca i8*, align 8
  %options = alloca i8*, align 8
  %general = alloca [9 x [80 x i8]], align 16
  store i32 0, i32* %retval
  %0 = bitcast [9 x [80 x i8]]* %general to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 720, i32 16, i1 false)
  %1 = bitcast i8* %0 to [9 x [80 x i8]]*
  %2 = getelementptr [9 x [80 x i8]], [9 x [80 x i8]]* %1, i32 0, i32 0
  %3 = getelementptr [80 x i8], [80 x i8]* %2, i32 0, i32 0
  store i8 32, i8* %3
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8** %compiler, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8** %options, align 8
  store i32 201, i32* @main.lda, align 4
  store i32 200, i32* @main.ldaa, align 4
  store float 0x3FACAC0840000000, float* %cray, align 4
  store i32 100, i32* @main.n, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i8*, i8** %compiler, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %options, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8* %10)
  %11 = load i32, i32* @main.n, align 4
  %12 = load i32, i32* @main.n, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* @main.n, align 4
  %mul5 = mul nsw i32 %mul, %13
  %conv = sitofp i32 %mul5 to double
  %mul6 = fmul double 2.000000e+00, %conv
  %div = fdiv double %mul6, 3.000000e+00
  %14 = load i32, i32* @main.n, align 4
  %15 = load i32, i32* @main.n, align 4
  %mul7 = mul nsw i32 %14, %15
  %conv8 = sitofp i32 %mul7 to double
  %mul9 = fmul double 2.000000e+00, %conv8
  %add = fadd double %div, %mul9
  %conv10 = fptrunc double %add to float
  store float %conv10, float* %ops, align 4
  %16 = load i32, i32* @main.lda, align 4
  %17 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %16, i32 %17, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  %call11 = call float @second()
  store float %call11, float* %t1, align 4
  %18 = load i32, i32* @main.lda, align 4
  %19 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %18, i32 %19, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), i32* @main.info)
  %call12 = call float @second()
  %20 = load float, float* %t1, align 4
  %sub = fsub float %call12, %20
  store float %sub, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0, i64 0), align 4
  %call13 = call float @second()
  store float %call13, float* %t1, align 4
  %21 = load i32, i32* @main.lda, align 4
  %22 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %21, i32 %22, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), i32 0)
  %call14 = call float @second()
  %23 = load float, float* %t1, align 4
  %sub15 = fsub float %call14, %23
  store float %sub15, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1, i64 0), align 4
  %24 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0, i64 0), align 4
  %25 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1, i64 0), align 4
  %add16 = fadd float %24, %25
  store float %add16, float* %total, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, i32* @main.i, align 4
  %27 = load i32, i32* @main.n, align 4
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* @main.i, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* @main.b, i32 0, i64 %idxprom
  %29 = load float, float* %arrayidx, align 4
  %30 = load i32, i32* @main.i, align 4
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i32 0, i64 %idxprom18
  store float %29, float* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* @main.i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* @main.i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* @main.lda, align 4
  %33 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %32, i32 %33, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  store i32 0, i32* @main.i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.29, %for.end
  %34 = load i32, i32* @main.i, align 4
  %35 = load i32, i32* @main.n, align 4
  %cmp21 = icmp slt i32 %34, %35
  br i1 %cmp21, label %for.body.23, label %for.end.31

for.body.23:                                      ; preds = %for.cond.20
  %36 = load i32, i32* @main.i, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i32 0, i64 %idxprom24
  %37 = load float, float* %arrayidx25, align 4
  %sub26 = fsub float -0.000000e+00, %37
  %38 = load i32, i32* @main.i, align 4
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i32 0, i64 %idxprom27
  store float %sub26, float* %arrayidx28, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.23
  %39 = load i32, i32* @main.i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* @main.i, align 4
  br label %for.cond.20

for.end.31:                                       ; preds = %for.cond.20
  %40 = load i32, i32* @main.n, align 4
  %41 = load i32, i32* @main.n, align 4
  %42 = load i32, i32* @main.lda, align 4
  call void @dmxpy(i32 %40, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), i32 %41, i32 %42, float* getelementptr inbounds ([200 x float], [200 x float]* @main.x, i32 0, i32 0), float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0))
  store float 0.000000e+00, float* %resid, align 4
  store float 0.000000e+00, float* %normx, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.66, %for.end.31
  %43 = load i32, i32* @main.i, align 4
  %44 = load i32, i32* @main.n, align 4
  %cmp33 = icmp slt i32 %43, %44
  br i1 %cmp33, label %for.body.35, label %for.end.68

for.body.35:                                      ; preds = %for.cond.32
  %45 = load float, float* %resid, align 4
  %conv36 = fpext float %45 to double
  %46 = load i32, i32* @main.i, align 4
  %idxprom37 = sext i32 %46 to i64
  %arrayidx38 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i32 0, i64 %idxprom37
  %47 = load float, float* %arrayidx38, align 4
  %conv39 = fpext float %47 to double
  %call40 = call double @fabs(double %conv39) #5
  %cmp41 = fcmp ogt double %conv36, %call40
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.35
  %48 = load float, float* %resid, align 4
  %conv43 = fpext float %48 to double
  br label %cond.end

cond.false:                                       ; preds = %for.body.35
  %49 = load i32, i32* @main.i, align 4
  %idxprom44 = sext i32 %49 to i64
  %arrayidx45 = getelementptr inbounds [200 x float], [200 x float]* @main.b, i32 0, i64 %idxprom44
  %50 = load float, float* %arrayidx45, align 4
  %conv46 = fpext float %50 to double
  %call47 = call double @fabs(double %conv46) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv43, %cond.true ], [ %call47, %cond.false ]
  %conv48 = fptrunc double %cond to float
  store float %conv48, float* %resid, align 4
  %51 = load float, float* %normx, align 4
  %conv49 = fpext float %51 to double
  %52 = load i32, i32* @main.i, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i32 0, i64 %idxprom50
  %53 = load float, float* %arrayidx51, align 4
  %conv52 = fpext float %53 to double
  %call53 = call double @fabs(double %conv52) #5
  %cmp54 = fcmp ogt double %conv49, %call53
  br i1 %cmp54, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.end
  %54 = load float, float* %normx, align 4
  %conv57 = fpext float %54 to double
  br label %cond.end.63

cond.false.58:                                    ; preds = %cond.end
  %55 = load i32, i32* @main.i, align 4
  %idxprom59 = sext i32 %55 to i64
  %arrayidx60 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i32 0, i64 %idxprom59
  %56 = load float, float* %arrayidx60, align 4
  %conv61 = fpext float %56 to double
  %call62 = call double @fabs(double %conv61) #5
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.58, %cond.true.56
  %cond64 = phi double [ %conv57, %cond.true.56 ], [ %call62, %cond.false.58 ]
  %conv65 = fptrunc double %cond64 to float
  store float %conv65, float* %normx, align 4
  br label %for.inc.66

for.inc.66:                                       ; preds = %cond.end.63
  %57 = load i32, i32* @main.i, align 4
  %inc67 = add nsw i32 %57, 1
  store i32 %inc67, i32* @main.i, align 4
  br label %for.cond.32

for.end.68:                                       ; preds = %for.cond.32
  %call69 = call float @epslon(float 1.000000e+00)
  store float %call69, float* %eps, align 4
  %58 = load float, float* %resid, align 4
  %59 = load i32, i32* @main.n, align 4
  %conv70 = sitofp i32 %59 to float
  %60 = load float, float* %norma, align 4
  %mul71 = fmul float %conv70, %60
  %61 = load float, float* %normx, align 4
  %mul72 = fmul float %mul71, %61
  %62 = load float, float* %eps, align 4
  %mul73 = fmul float %mul72, %62
  %div74 = fdiv float %58, %mul73
  store float %div74, float* %residn, align 4
  %63 = load float, float* %eps, align 4
  store float %63, float* %epsn, align 4
  %64 = load float, float* getelementptr inbounds ([200 x float], [200 x float]* @main.x, i32 0, i64 0), align 4
  %sub75 = fsub float %64, 1.000000e+00
  store float %sub75, float* %x1, align 4
  %65 = load i32, i32* @main.n, align 4
  %sub76 = sub nsw i32 %65, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [200 x float], [200 x float]* @main.x, i32 0, i64 %idxprom77
  %66 = load float, float* %arrayidx78, align 4
  %sub79 = fsub float %66, 1.000000e+00
  store float %sub79, float* %x2, align 4
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load float, float* %residn, align 4
  %conv82 = fpext float %70 to double
  %71 = load float, float* %resid, align 4
  %conv83 = fpext float %71 to double
  %72 = load float, float* %epsn, align 4
  %conv84 = fpext float %72 to double
  %73 = load float, float* %x1, align 4
  %conv85 = fpext float %73 to double
  %74 = load float, float* %x2, align 4
  %conv86 = fpext float %74 to double
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0), double %conv82, double %conv83, double %conv84, double %conv85, double %conv86)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = load i32, i32* @main.n, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0), i32 %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i32, i32* @main.lda, align 4
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i32 0, i32 0), i32 %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0))
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %81 = load float, float* %total, align 4
  store float %81, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 2, i64 0), align 4
  %82 = load float, float* %total, align 4
  %conv92 = fpext float %82 to double
  %cmp93 = fcmp ogt double %conv92, 0.000000e+00
  br i1 %cmp93, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.68
  %83 = load float, float* %ops, align 4
  %conv95 = fpext float %83 to double
  %84 = load float, float* %total, align 4
  %conv96 = fpext float %84 to double
  %mul97 = fmul double 1.000000e+06, %conv96
  %div98 = fdiv double %conv95, %mul97
  %conv99 = fptrunc double %div98 to float
  store float %conv99, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 0), align 4
  %85 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 0), align 4
  %conv100 = fpext float %85 to double
  %div101 = fdiv double 2.000000e+00, %conv100
  %conv102 = fptrunc double %div101 to float
  store float %conv102, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 4, i64 0), align 4
  br label %if.end

if.else:                                          ; preds = %for.end.68
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 0), align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 4, i64 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %86 = load float, float* %total, align 4
  %87 = load float, float* %cray, align 4
  %div103 = fdiv float %86, %87
  store float %div103, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 5, i64 0), align 4
  call void @print_time(i32 0)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  store i32 -3, i32* %pass, align 4
  store i32 100, i32* %loop, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call105 = call float @second()
  store float %call105, float* %time1, align 4
  %89 = load i32, i32* %pass, align 4
  %add106 = add nsw i32 %89, 1
  store i32 %add106, i32* %pass, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.111, %do.body
  %90 = load i32, i32* @main.i, align 4
  %91 = load i32, i32* %loop, align 4
  %cmp108 = icmp slt i32 %90, %91
  br i1 %cmp108, label %for.body.110, label %for.end.113

for.body.110:                                     ; preds = %for.cond.107
  %92 = load i32, i32* @main.lda, align 4
  %93 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %92, i32 %93, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.110
  %94 = load i32, i32* @main.i, align 4
  %inc112 = add nsw i32 %94, 1
  store i32 %inc112, i32* @main.i, align 4
  br label %for.cond.107

for.end.113:                                      ; preds = %for.cond.107
  %call114 = call float @second()
  store float %call114, float* %time2, align 4
  %95 = load float, float* %time2, align 4
  %96 = load float, float* %time1, align 4
  %sub115 = fsub float %95, %96
  store float %sub115, float* %overhead1, align 4
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load i32, i32* %loop, align 4
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i32 %98, double 0.000000e+00)
  %99 = load i32, i32* %pass, align 4
  %cmp117 = icmp slt i32 %99, 0
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %for.end.113
  %100 = load i32, i32* %loop, align 4
  %mul120 = mul nsw i32 %100, 2
  store i32 %mul120, i32* %loop, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %for.end.113
  br label %do.cond

do.cond:                                          ; preds = %if.end.121
  %101 = load i32, i32* %pass, align 4
  %cmp122 = icmp slt i32 %101, 0
  br i1 %cmp122, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %102 = load float, float* %overhead1, align 4
  %conv124 = fpext float %102 to double
  %103 = load i32, i32* %loop, align 4
  %conv125 = sitofp i32 %103 to double
  %div126 = fdiv double %conv124, %conv125
  %conv127 = fptrunc double %div126 to float
  store float %conv127, float* %overhead1, align 4
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i32 0, i32 0))
  store i32 -3, i32* %pass, align 4
  store i32 100, i32* @main.ntimes, align 4
  br label %do.body.130

do.body.130:                                      ; preds = %do.cond.148, %do.end
  %call131 = call float @second()
  store float %call131, float* %time1, align 4
  %106 = load i32, i32* %pass, align 4
  %add132 = add nsw i32 %106, 1
  store i32 %add132, i32* %pass, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.137, %do.body.130
  %107 = load i32, i32* @main.i, align 4
  %108 = load i32, i32* @main.ntimes, align 4
  %cmp134 = icmp slt i32 %107, %108
  br i1 %cmp134, label %for.body.136, label %for.end.139

for.body.136:                                     ; preds = %for.cond.133
  %109 = load i32, i32* @main.lda, align 4
  %110 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %109, i32 %110, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  %111 = load i32, i32* @main.lda, align 4
  %112 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %111, i32 %112, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), i32* @main.info)
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.136
  %113 = load i32, i32* @main.i, align 4
  %inc138 = add nsw i32 %113, 1
  store i32 %inc138, i32* @main.i, align 4
  br label %for.cond.133

for.end.139:                                      ; preds = %for.cond.133
  %call140 = call float @second()
  %114 = load float, float* %time1, align 4
  %sub141 = fsub float %call140, %114
  store float %sub141, float* %time2, align 4
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = load i32, i32* @main.ntimes, align 4
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i32 %116, double 0.000000e+00)
  %117 = load i32, i32* %pass, align 4
  %cmp143 = icmp slt i32 %117, 0
  br i1 %cmp143, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %for.end.139
  %118 = load i32, i32* @main.ntimes, align 4
  %mul146 = mul nsw i32 %118, 2
  store i32 %mul146, i32* @main.ntimes, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %for.end.139
  br label %do.cond.148

do.cond.148:                                      ; preds = %if.end.147
  %119 = load i32, i32* %pass, align 4
  %cmp149 = icmp slt i32 %119, 0
  br i1 %cmp149, label %do.body.130, label %do.end.151

do.end.151:                                       ; preds = %do.cond.148
  store i32 1000, i32* @main.ntimes, align 4
  %120 = load i32, i32* @main.ntimes, align 4
  %cmp152 = icmp eq i32 %120, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %do.end.151
  store i32 1, i32* @main.ntimes, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %do.end.151
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 0)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %123 = load i32, i32* @main.lda, align 4
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %123)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0))
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %126 = load i32, i32* @main.ntimes, align 4
  %conv160 = sitofp i32 %126 to float
  %127 = load float, float* %overhead1, align 4
  %mul161 = fmul float %conv160, %127
  store float %mul161, float* %tm2, align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 6), align 4
  store i32 1, i32* @main.j, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.222, %if.end.155
  %128 = load i32, i32* @main.j, align 4
  %cmp163 = icmp slt i32 %128, 6
  br i1 %cmp163, label %for.body.165, label %for.end.224

for.body.165:                                     ; preds = %for.cond.162
  %call166 = call float @second()
  store float %call166, float* %t1, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.171, %for.body.165
  %129 = load i32, i32* @main.i, align 4
  %130 = load i32, i32* @main.ntimes, align 4
  %cmp168 = icmp slt i32 %129, %130
  br i1 %cmp168, label %for.body.170, label %for.end.173

for.body.170:                                     ; preds = %for.cond.167
  %131 = load i32, i32* @main.lda, align 4
  %132 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %131, i32 %132, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  %133 = load i32, i32* @main.lda, align 4
  %134 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %133, i32 %134, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), i32* @main.info)
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.170
  %135 = load i32, i32* @main.i, align 4
  %inc172 = add nsw i32 %135, 1
  store i32 %inc172, i32* @main.i, align 4
  br label %for.cond.167

for.end.173:                                      ; preds = %for.cond.167
  %call174 = call float @second()
  %136 = load float, float* %t1, align 4
  %sub175 = fsub float %call174, %136
  %137 = load float, float* %tm2, align 4
  %sub176 = fsub float %sub175, %137
  %138 = load i32, i32* @main.ntimes, align 4
  %conv177 = sitofp i32 %138 to float
  %div178 = fdiv float %sub176, %conv177
  %139 = load i32, i32* @main.j, align 4
  %idxprom179 = sext i32 %139 to i64
  %arrayidx180 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0), i32 0, i64 %idxprom179
  store float %div178, float* %arrayidx180, align 4
  %call181 = call float @second()
  store float %call181, float* %t1, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.186, %for.end.173
  %140 = load i32, i32* @main.i, align 4
  %141 = load i32, i32* @main.ntimes, align 4
  %cmp183 = icmp slt i32 %140, %141
  br i1 %cmp183, label %for.body.185, label %for.end.188

for.body.185:                                     ; preds = %for.cond.182
  %142 = load i32, i32* @main.lda, align 4
  %143 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40200 x float], [40200 x float]* @main.a, i32 0, i32 0), i32 %142, i32 %143, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), i32 0)
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.body.185
  %144 = load i32, i32* @main.i, align 4
  %inc187 = add nsw i32 %144, 1
  store i32 %inc187, i32* @main.i, align 4
  br label %for.cond.182

for.end.188:                                      ; preds = %for.cond.182
  %call189 = call float @second()
  %145 = load float, float* %t1, align 4
  %sub190 = fsub float %call189, %145
  %146 = load i32, i32* @main.ntimes, align 4
  %conv191 = sitofp i32 %146 to float
  %div192 = fdiv float %sub190, %conv191
  %147 = load i32, i32* @main.j, align 4
  %idxprom193 = sext i32 %147 to i64
  %arrayidx194 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1), i32 0, i64 %idxprom193
  store float %div192, float* %arrayidx194, align 4
  %148 = load i32, i32* @main.j, align 4
  %idxprom195 = sext i32 %148 to i64
  %arrayidx196 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0), i32 0, i64 %idxprom195
  %149 = load float, float* %arrayidx196, align 4
  %150 = load i32, i32* @main.j, align 4
  %idxprom197 = sext i32 %150 to i64
  %arrayidx198 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1), i32 0, i64 %idxprom197
  %151 = load float, float* %arrayidx198, align 4
  %add199 = fadd float %149, %151
  store float %add199, float* %total, align 4
  %152 = load float, float* %total, align 4
  %153 = load i32, i32* @main.j, align 4
  %idxprom200 = sext i32 %153 to i64
  %arrayidx201 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 2), i32 0, i64 %idxprom200
  store float %152, float* %arrayidx201, align 4
  %154 = load float, float* %ops, align 4
  %conv202 = fpext float %154 to double
  %155 = load float, float* %total, align 4
  %conv203 = fpext float %155 to double
  %mul204 = fmul double 1.000000e+06, %conv203
  %div205 = fdiv double %conv202, %mul204
  %conv206 = fptrunc double %div205 to float
  %156 = load i32, i32* @main.j, align 4
  %idxprom207 = sext i32 %156 to i64
  %arrayidx208 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom207
  store float %conv206, float* %arrayidx208, align 4
  %157 = load i32, i32* @main.j, align 4
  %idxprom209 = sext i32 %157 to i64
  %arrayidx210 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom209
  %158 = load float, float* %arrayidx210, align 4
  %conv211 = fpext float %158 to double
  %div212 = fdiv double 2.000000e+00, %conv211
  %conv213 = fptrunc double %div212 to float
  %159 = load i32, i32* @main.j, align 4
  %idxprom214 = sext i32 %159 to i64
  %arrayidx215 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 4), i32 0, i64 %idxprom214
  store float %conv213, float* %arrayidx215, align 4
  %160 = load float, float* %total, align 4
  %161 = load float, float* %cray, align 4
  %div216 = fdiv float %160, %161
  %162 = load i32, i32* @main.j, align 4
  %idxprom217 = sext i32 %162 to i64
  %arrayidx218 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 5), i32 0, i64 %idxprom217
  store float %div216, float* %arrayidx218, align 4
  %163 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 6), align 4
  %164 = load i32, i32* @main.j, align 4
  %idxprom219 = sext i32 %164 to i64
  %arrayidx220 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom219
  %165 = load float, float* %arrayidx220, align 4
  %add221 = fadd float %163, %165
  store float %add221, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 6), align 4
  %166 = load i32, i32* @main.j, align 4
  call void @print_time(i32 %166)
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.end.188
  %167 = load i32, i32* @main.j, align 4
  %inc223 = add nsw i32 %167, 1
  store i32 %inc223, i32* @main.j, align 4
  br label %for.cond.162

for.end.224:                                      ; preds = %for.cond.162
  %168 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 6), align 4
  %conv225 = fpext float %168 to double
  %div226 = fdiv double %conv225, 5.000000e+00
  %conv227 = fptrunc double %div226 to float
  store float %conv227, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 6), align 4
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), double 0.000000e+00)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0))
  %call230 = call float @second()
  store float %call230, float* %time1, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.235, %for.end.224
  %171 = load i32, i32* @main.i, align 4
  %172 = load i32, i32* %loop, align 4
  %cmp232 = icmp slt i32 %171, %172
  br i1 %cmp232, label %for.body.234, label %for.end.237

for.body.234:                                     ; preds = %for.cond.231
  %173 = load i32, i32* @main.ldaa, align 4
  %174 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i32 0, i32 0), i32 %173, i32 %174, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.234
  %175 = load i32, i32* @main.i, align 4
  %inc236 = add nsw i32 %175, 1
  store i32 %inc236, i32* @main.i, align 4
  br label %for.cond.231

for.end.237:                                      ; preds = %for.cond.231
  %call238 = call float @second()
  store float %call238, float* %time2, align 4
  %176 = load float, float* %time2, align 4
  %177 = load float, float* %time1, align 4
  %sub239 = fsub float %176, %177
  store float %sub239, float* %overhead2, align 4
  %178 = load float, float* %overhead2, align 4
  %conv240 = fpext float %178 to double
  %179 = load i32, i32* %loop, align 4
  %conv241 = sitofp i32 %179 to double
  %div242 = fdiv double %conv240, %conv241
  %conv243 = fptrunc double %div242 to float
  store float %conv243, float* %overhead2, align 4
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), double 0.000000e+00)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %182 = load i32, i32* @main.ldaa, align 4
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i32 0, i32 0), i32 %182)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0))
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  %185 = load i32, i32* @main.ntimes, align 4
  %conv248 = sitofp i32 %185 to float
  %186 = load float, float* %overhead2, align 4
  %mul249 = fmul float %conv248, %186
  store float %mul249, float* %tm2, align 4
  store float 0.000000e+00, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 12), align 4
  store i32 7, i32* @main.j, align 4
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.310, %for.end.237
  %187 = load i32, i32* @main.j, align 4
  %cmp251 = icmp slt i32 %187, 12
  br i1 %cmp251, label %for.body.253, label %for.end.312

for.body.253:                                     ; preds = %for.cond.250
  %call254 = call float @second()
  store float %call254, float* %t1, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.255

for.cond.255:                                     ; preds = %for.inc.259, %for.body.253
  %188 = load i32, i32* @main.i, align 4
  %189 = load i32, i32* @main.ntimes, align 4
  %cmp256 = icmp slt i32 %188, %189
  br i1 %cmp256, label %for.body.258, label %for.end.261

for.body.258:                                     ; preds = %for.cond.255
  %190 = load i32, i32* @main.ldaa, align 4
  %191 = load i32, i32* @main.n, align 4
  call void @matgen(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i32 0, i32 0), i32 %190, i32 %191, float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), float* %norma)
  %192 = load i32, i32* @main.ldaa, align 4
  %193 = load i32, i32* @main.n, align 4
  call void @dgefa(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i32 0, i32 0), i32 %192, i32 %193, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), i32* @main.info)
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.body.258
  %194 = load i32, i32* @main.i, align 4
  %inc260 = add nsw i32 %194, 1
  store i32 %inc260, i32* @main.i, align 4
  br label %for.cond.255

for.end.261:                                      ; preds = %for.cond.255
  %call262 = call float @second()
  %195 = load float, float* %t1, align 4
  %sub263 = fsub float %call262, %195
  %196 = load float, float* %tm2, align 4
  %sub264 = fsub float %sub263, %196
  %197 = load i32, i32* @main.ntimes, align 4
  %conv265 = sitofp i32 %197 to float
  %div266 = fdiv float %sub264, %conv265
  %198 = load i32, i32* @main.j, align 4
  %idxprom267 = sext i32 %198 to i64
  %arrayidx268 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0), i32 0, i64 %idxprom267
  store float %div266, float* %arrayidx268, align 4
  %call269 = call float @second()
  store float %call269, float* %t1, align 4
  store i32 0, i32* @main.i, align 4
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.274, %for.end.261
  %199 = load i32, i32* @main.i, align 4
  %200 = load i32, i32* @main.ntimes, align 4
  %cmp271 = icmp slt i32 %199, %200
  br i1 %cmp271, label %for.body.273, label %for.end.276

for.body.273:                                     ; preds = %for.cond.270
  %201 = load i32, i32* @main.ldaa, align 4
  %202 = load i32, i32* @main.n, align 4
  call void @dgesl(float* getelementptr inbounds ([40000 x float], [40000 x float]* @main.aa, i32 0, i32 0), i32 %201, i32 %202, i32* getelementptr inbounds ([200 x i32], [200 x i32]* @main.ipvt, i32 0, i32 0), float* getelementptr inbounds ([200 x float], [200 x float]* @main.b, i32 0, i32 0), i32 0)
  br label %for.inc.274

for.inc.274:                                      ; preds = %for.body.273
  %203 = load i32, i32* @main.i, align 4
  %inc275 = add nsw i32 %203, 1
  store i32 %inc275, i32* @main.i, align 4
  br label %for.cond.270

for.end.276:                                      ; preds = %for.cond.270
  %call277 = call float @second()
  %204 = load float, float* %t1, align 4
  %sub278 = fsub float %call277, %204
  %205 = load i32, i32* @main.ntimes, align 4
  %conv279 = sitofp i32 %205 to float
  %div280 = fdiv float %sub278, %conv279
  %206 = load i32, i32* @main.j, align 4
  %idxprom281 = sext i32 %206 to i64
  %arrayidx282 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1), i32 0, i64 %idxprom281
  store float %div280, float* %arrayidx282, align 4
  %207 = load i32, i32* @main.j, align 4
  %idxprom283 = sext i32 %207 to i64
  %arrayidx284 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 0), i32 0, i64 %idxprom283
  %208 = load float, float* %arrayidx284, align 4
  %209 = load i32, i32* @main.j, align 4
  %idxprom285 = sext i32 %209 to i64
  %arrayidx286 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 1), i32 0, i64 %idxprom285
  %210 = load float, float* %arrayidx286, align 4
  %add287 = fadd float %208, %210
  store float %add287, float* %total, align 4
  %211 = load float, float* %total, align 4
  %212 = load i32, i32* @main.j, align 4
  %idxprom288 = sext i32 %212 to i64
  %arrayidx289 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 2), i32 0, i64 %idxprom288
  store float %211, float* %arrayidx289, align 4
  %213 = load float, float* %ops, align 4
  %conv290 = fpext float %213 to double
  %214 = load float, float* %total, align 4
  %conv291 = fpext float %214 to double
  %mul292 = fmul double 1.000000e+06, %conv291
  %div293 = fdiv double %conv290, %mul292
  %conv294 = fptrunc double %div293 to float
  %215 = load i32, i32* @main.j, align 4
  %idxprom295 = sext i32 %215 to i64
  %arrayidx296 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom295
  store float %conv294, float* %arrayidx296, align 4
  %216 = load i32, i32* @main.j, align 4
  %idxprom297 = sext i32 %216 to i64
  %arrayidx298 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom297
  %217 = load float, float* %arrayidx298, align 4
  %conv299 = fpext float %217 to double
  %div300 = fdiv double 2.000000e+00, %conv299
  %conv301 = fptrunc double %div300 to float
  %218 = load i32, i32* @main.j, align 4
  %idxprom302 = sext i32 %218 to i64
  %arrayidx303 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 4), i32 0, i64 %idxprom302
  store float %conv301, float* %arrayidx303, align 4
  %219 = load float, float* %total, align 4
  %220 = load float, float* %cray, align 4
  %div304 = fdiv float %219, %220
  %221 = load i32, i32* @main.j, align 4
  %idxprom305 = sext i32 %221 to i64
  %arrayidx306 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 5), i32 0, i64 %idxprom305
  store float %div304, float* %arrayidx306, align 4
  %222 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 12), align 4
  %223 = load i32, i32* @main.j, align 4
  %idxprom307 = sext i32 %223 to i64
  %arrayidx308 = getelementptr inbounds [15 x float], [15 x float]* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3), i32 0, i64 %idxprom307
  %224 = load float, float* %arrayidx308, align 4
  %add309 = fadd float %222, %224
  store float %add309, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 12), align 4
  %225 = load i32, i32* @main.j, align 4
  call void @print_time(i32 %225)
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.end.276
  %226 = load i32, i32* @main.j, align 4
  %inc311 = add nsw i32 %226, 1
  store i32 %inc311, i32* @main.j, align 4
  br label %for.cond.250

for.end.312:                                      ; preds = %for.cond.250
  %227 = load float, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 12), align 4
  %conv313 = fpext float %227 to double
  %div314 = fdiv double %conv313, 5.000000e+00
  %conv315 = fptrunc double %div314 to float
  store float %conv315, float* getelementptr inbounds ([9 x [15 x float]], [9 x [15 x float]]* @atime, i32 0, i64 3, i64 12), align 4
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0), double 0.000000e+00)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @matgen(float* %a, i32 %lda, i32 %n, float* %b, float* %norma) #0 {
entry:
  %a.addr = alloca float*, align 8
  %lda.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %b.addr = alloca float*, align 8
  %norma.addr = alloca float*, align 8
  %init = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %a, float** %a.addr, align 8
  store i32 %lda, i32* %lda.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %b, float** %b.addr, align 8
  store float* %norma, float** %norma.addr, align 8
  store i32 1325, i32* %init, align 4
  %0 = load float*, float** %norma.addr, align 8
  store float 0.000000e+00, float* %0, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %init, align 4
  %mul = mul nsw i32 3125, %5
  %rem = srem i32 %mul, 65536
  store i32 %rem, i32* %init, align 4
  %6 = load i32, i32* %init, align 4
  %conv = sitofp i32 %6 to double
  %sub = fsub double %conv, 3.276800e+04
  %div = fdiv double %sub, 1.638400e+04
  %conv4 = fptrunc double %div to float
  %7 = load i32, i32* %lda.addr, align 4
  %8 = load i32, i32* %j, align 4
  %mul5 = mul nsw i32 %7, %8
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul5, %9
  %idxprom = sext i32 %add to i64
  %10 = load float*, float** %a.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %10, i64 %idxprom
  store float %conv4, float* %arrayidx, align 4
  %11 = load i32, i32* %lda.addr, align 4
  %12 = load i32, i32* %j, align 4
  %mul6 = mul nsw i32 %11, %12
  %13 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %mul6, %13
  %idxprom8 = sext i32 %add7 to i64
  %14 = load float*, float** %a.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx9, align 4
  %16 = load float*, float** %norma.addr, align 8
  %17 = load float, float* %16, align 4
  %cmp10 = fcmp ogt float %15, %17
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.3
  %18 = load i32, i32* %lda.addr, align 4
  %19 = load i32, i32* %j, align 4
  %mul12 = mul nsw i32 %18, %19
  %20 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %mul12, %20
  %idxprom14 = sext i32 %add13 to i64
  %21 = load float*, float** %a.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %21, i64 %idxprom14
  %22 = load float, float* %arrayidx15, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.3
  %23 = load float*, float** %norma.addr, align 8
  %24 = load float, float* %23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %22, %cond.true ], [ %24, %cond.false ]
  %25 = load float*, float** %norma.addr, align 8
  store float %cond, float* %25, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %27 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.25, %for.end.18
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n.addr, align 4
  %cmp20 = icmp slt i32 %28, %29
  br i1 %cmp20, label %for.body.22, label %for.end.27

for.body.22:                                      ; preds = %for.cond.19
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load float*, float** %b.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %31, i64 %idxprom23
  store float 0.000000e+00, float* %arrayidx24, align 4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.22
  %32 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %32, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.19

for.end.27:                                       ; preds = %for.cond.19
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.48, %for.end.27
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %n.addr, align 4
  %cmp29 = icmp slt i32 %33, %34
  br i1 %cmp29, label %for.body.31, label %for.end.50

for.body.31:                                      ; preds = %for.cond.28
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.45, %for.body.31
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %n.addr, align 4
  %cmp33 = icmp slt i32 %35, %36
  br i1 %cmp33, label %for.body.35, label %for.end.47

for.body.35:                                      ; preds = %for.cond.32
  %37 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load float*, float** %b.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %38, i64 %idxprom36
  %39 = load float, float* %arrayidx37, align 4
  %40 = load i32, i32* %lda.addr, align 4
  %41 = load i32, i32* %j, align 4
  %mul38 = mul nsw i32 %40, %41
  %42 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %mul38, %42
  %idxprom40 = sext i32 %add39 to i64
  %43 = load float*, float** %a.addr, align 8
  %arrayidx41 = getelementptr inbounds float, float* %43, i64 %idxprom40
  %44 = load float, float* %arrayidx41, align 4
  %add42 = fadd float %39, %44
  %45 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = load float*, float** %b.addr, align 8
  %arrayidx44 = getelementptr inbounds float, float* %46, i64 %idxprom43
  store float %add42, float* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.35
  %47 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.32

for.end.47:                                       ; preds = %for.cond.32
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %48 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.28

for.end.50:                                       ; preds = %for.cond.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @dgefa(float* %a, i32 %lda, i32 %n, i32* %ipvt, i32* %info) #0 {
entry:
  %a.addr = alloca float*, align 8
  %lda.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ipvt.addr = alloca i32*, align 8
  %info.addr = alloca i32*, align 8
  %t = alloca float, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kp1 = alloca i32, align 4
  %l = alloca i32, align 4
  %nm1 = alloca i32, align 4
  store float* %a, float** %a.addr, align 8
  store i32 %lda, i32* %lda.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %ipvt, i32** %ipvt.addr, align 8
  store i32* %info, i32** %info.addr, align 8
  %0 = load i32*, i32** %info.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %nm1, align 4
  %2 = load i32, i32* %nm1, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.86

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %if.then
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %nm1, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %kp1, align 4
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %k, align 4
  %sub2 = sub nsw i32 %6, %7
  %8 = load i32, i32* %lda.addr, align 4
  %9 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %k, align 4
  %add3 = add nsw i32 %mul, %10
  %idxprom = sext i32 %add3 to i64
  %11 = load float*, float** %a.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  %call = call i32 @idamax(i32 %sub2, float* %arrayidx, i32 1)
  %12 = load i32, i32* %k, align 4
  %add4 = add nsw i32 %call, %12
  store i32 %add4, i32* %l, align 4
  %13 = load i32, i32* %l, align 4
  %14 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 %idxprom5
  store i32 %13, i32* %arrayidx6, align 4
  %16 = load i32, i32* %lda.addr, align 4
  %17 = load i32, i32* %k, align 4
  %mul7 = mul nsw i32 %16, %17
  %18 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %mul7, %18
  %idxprom9 = sext i32 %add8 to i64
  %19 = load float*, float** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %19, i64 %idxprom9
  %20 = load float, float* %arrayidx10, align 4
  %conv = fpext float %20 to double
  %cmp11 = fcmp une double %conv, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %21 = load i32, i32* %l, align 4
  %22 = load i32, i32* %k, align 4
  %cmp14 = icmp ne i32 %21, %22
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.13
  %23 = load i32, i32* %lda.addr, align 4
  %24 = load i32, i32* %k, align 4
  %mul17 = mul nsw i32 %23, %24
  %25 = load i32, i32* %l, align 4
  %add18 = add nsw i32 %mul17, %25
  %idxprom19 = sext i32 %add18 to i64
  %26 = load float*, float** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %26, i64 %idxprom19
  %27 = load float, float* %arrayidx20, align 4
  store float %27, float* %t, align 4
  %28 = load i32, i32* %lda.addr, align 4
  %29 = load i32, i32* %k, align 4
  %mul21 = mul nsw i32 %28, %29
  %30 = load i32, i32* %k, align 4
  %add22 = add nsw i32 %mul21, %30
  %idxprom23 = sext i32 %add22 to i64
  %31 = load float*, float** %a.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %31, i64 %idxprom23
  %32 = load float, float* %arrayidx24, align 4
  %33 = load i32, i32* %lda.addr, align 4
  %34 = load i32, i32* %k, align 4
  %mul25 = mul nsw i32 %33, %34
  %35 = load i32, i32* %l, align 4
  %add26 = add nsw i32 %mul25, %35
  %idxprom27 = sext i32 %add26 to i64
  %36 = load float*, float** %a.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %36, i64 %idxprom27
  store float %32, float* %arrayidx28, align 4
  %37 = load float, float* %t, align 4
  %38 = load i32, i32* %lda.addr, align 4
  %39 = load i32, i32* %k, align 4
  %mul29 = mul nsw i32 %38, %39
  %40 = load i32, i32* %k, align 4
  %add30 = add nsw i32 %mul29, %40
  %idxprom31 = sext i32 %add30 to i64
  %41 = load float*, float** %a.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %41, i64 %idxprom31
  store float %37, float* %arrayidx32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.13
  %42 = load i32, i32* %lda.addr, align 4
  %43 = load i32, i32* %k, align 4
  %mul33 = mul nsw i32 %42, %43
  %44 = load i32, i32* %k, align 4
  %add34 = add nsw i32 %mul33, %44
  %idxprom35 = sext i32 %add34 to i64
  %45 = load float*, float** %a.addr, align 8
  %arrayidx36 = getelementptr inbounds float, float* %45, i64 %idxprom35
  %46 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %46 to double
  %div = fdiv double -1.000000e+00, %conv37
  %conv38 = fptrunc double %div to float
  store float %conv38, float* %t, align 4
  %47 = load i32, i32* %n.addr, align 4
  %48 = load i32, i32* %k, align 4
  %add39 = add nsw i32 %48, 1
  %sub40 = sub nsw i32 %47, %add39
  %49 = load float, float* %t, align 4
  %50 = load i32, i32* %lda.addr, align 4
  %51 = load i32, i32* %k, align 4
  %mul41 = mul nsw i32 %50, %51
  %52 = load i32, i32* %k, align 4
  %add42 = add nsw i32 %mul41, %52
  %add43 = add nsw i32 %add42, 1
  %idxprom44 = sext i32 %add43 to i64
  %53 = load float*, float** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds float, float* %53, i64 %idxprom44
  call void @dscal(i32 %sub40, float %49, float* %arrayidx45, i32 1)
  %54 = load i32, i32* %kp1, align 4
  store i32 %54, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.end
  %55 = load i32, i32* %j, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %55, %56
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %57 = load i32, i32* %lda.addr, align 4
  %58 = load i32, i32* %j, align 4
  %mul50 = mul nsw i32 %57, %58
  %59 = load i32, i32* %l, align 4
  %add51 = add nsw i32 %mul50, %59
  %idxprom52 = sext i32 %add51 to i64
  %60 = load float*, float** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds float, float* %60, i64 %idxprom52
  %61 = load float, float* %arrayidx53, align 4
  store float %61, float* %t, align 4
  %62 = load i32, i32* %l, align 4
  %63 = load i32, i32* %k, align 4
  %cmp54 = icmp ne i32 %62, %63
  br i1 %cmp54, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %for.body.49
  %64 = load i32, i32* %lda.addr, align 4
  %65 = load i32, i32* %j, align 4
  %mul57 = mul nsw i32 %64, %65
  %66 = load i32, i32* %k, align 4
  %add58 = add nsw i32 %mul57, %66
  %idxprom59 = sext i32 %add58 to i64
  %67 = load float*, float** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds float, float* %67, i64 %idxprom59
  %68 = load float, float* %arrayidx60, align 4
  %69 = load i32, i32* %lda.addr, align 4
  %70 = load i32, i32* %j, align 4
  %mul61 = mul nsw i32 %69, %70
  %71 = load i32, i32* %l, align 4
  %add62 = add nsw i32 %mul61, %71
  %idxprom63 = sext i32 %add62 to i64
  %72 = load float*, float** %a.addr, align 8
  %arrayidx64 = getelementptr inbounds float, float* %72, i64 %idxprom63
  store float %68, float* %arrayidx64, align 4
  %73 = load float, float* %t, align 4
  %74 = load i32, i32* %lda.addr, align 4
  %75 = load i32, i32* %j, align 4
  %mul65 = mul nsw i32 %74, %75
  %76 = load i32, i32* %k, align 4
  %add66 = add nsw i32 %mul65, %76
  %idxprom67 = sext i32 %add66 to i64
  %77 = load float*, float** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds float, float* %77, i64 %idxprom67
  store float %73, float* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.56, %for.body.49
  %78 = load i32, i32* %n.addr, align 4
  %79 = load i32, i32* %k, align 4
  %add70 = add nsw i32 %79, 1
  %sub71 = sub nsw i32 %78, %add70
  %80 = load float, float* %t, align 4
  %81 = load i32, i32* %lda.addr, align 4
  %82 = load i32, i32* %k, align 4
  %mul72 = mul nsw i32 %81, %82
  %83 = load i32, i32* %k, align 4
  %add73 = add nsw i32 %mul72, %83
  %add74 = add nsw i32 %add73, 1
  %idxprom75 = sext i32 %add74 to i64
  %84 = load float*, float** %a.addr, align 8
  %arrayidx76 = getelementptr inbounds float, float* %84, i64 %idxprom75
  %85 = load i32, i32* %lda.addr, align 4
  %86 = load i32, i32* %j, align 4
  %mul77 = mul nsw i32 %85, %86
  %87 = load i32, i32* %k, align 4
  %add78 = add nsw i32 %mul77, %87
  %add79 = add nsw i32 %add78, 1
  %idxprom80 = sext i32 %add79 to i64
  %88 = load float*, float** %a.addr, align 8
  %arrayidx81 = getelementptr inbounds float, float* %88, i64 %idxprom80
  call void @daxpy(i32 %sub71, float %80, float* %arrayidx76, i32 1, float* %arrayidx81, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %89 = load i32, i32* %j, align 4
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  br label %if.end.82

if.else:                                          ; preds = %for.body
  %90 = load i32, i32* %k, align 4
  %91 = load i32*, i32** %info.addr, align 8
  store i32 %90, i32* %91, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %for.end
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %92 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %92, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.85, %entry
  %93 = load i32, i32* %n.addr, align 4
  %sub87 = sub nsw i32 %93, 1
  %94 = load i32, i32* %n.addr, align 4
  %sub88 = sub nsw i32 %94, 1
  %idxprom89 = sext i32 %sub88 to i64
  %95 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %95, i64 %idxprom89
  store i32 %sub87, i32* %arrayidx90, align 4
  %96 = load i32, i32* %lda.addr, align 4
  %97 = load i32, i32* %n.addr, align 4
  %sub91 = sub nsw i32 %97, 1
  %mul92 = mul nsw i32 %96, %sub91
  %98 = load i32, i32* %n.addr, align 4
  %sub93 = sub nsw i32 %98, 1
  %add94 = add nsw i32 %mul92, %sub93
  %idxprom95 = sext i32 %add94 to i64
  %99 = load float*, float** %a.addr, align 8
  %arrayidx96 = getelementptr inbounds float, float* %99, i64 %idxprom95
  %100 = load float, float* %arrayidx96, align 4
  %conv97 = fpext float %100 to double
  %cmp98 = fcmp oeq double %conv97, 0.000000e+00
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.86
  %101 = load i32, i32* %n.addr, align 4
  %sub101 = sub nsw i32 %101, 1
  %102 = load i32*, i32** %info.addr, align 8
  store i32 %sub101, i32* %102, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.86
  ret void
}

; Function Attrs: nounwind uwtable
define void @dgesl(float* %a, i32 %lda, i32 %n, i32* %ipvt, float* %b, i32 %job) #0 {
entry:
  %a.addr = alloca float*, align 8
  %lda.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %ipvt.addr = alloca i32*, align 8
  %b.addr = alloca float*, align 8
  %job.addr = alloca i32, align 4
  %t = alloca float, align 4
  %k = alloca i32, align 4
  %kb = alloca i32, align 4
  %l = alloca i32, align 4
  %nm1 = alloca i32, align 4
  store float* %a, float** %a.addr, align 8
  store i32 %lda, i32* %lda.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %ipvt, i32** %ipvt.addr, align 8
  store float* %b, float** %b.addr, align 8
  store i32 %job, i32* %job.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %nm1, align 4
  %1 = load i32, i32* %job.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %nm1, align 4
  %cmp1 = icmp sge i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.22

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %nm1, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %l, align 4
  %8 = load i32, i32* %l, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load float*, float** %b.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %9, i64 %idxprom4
  %10 = load float, float* %arrayidx5, align 4
  store float %10, float* %t, align 4
  %11 = load i32, i32* %l, align 4
  %12 = load i32, i32* %k, align 4
  %cmp6 = icmp ne i32 %11, %12
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %13 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load float*, float** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %14, i64 %idxprom8
  %15 = load float, float* %arrayidx9, align 4
  %16 = load i32, i32* %l, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load float*, float** %b.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %17, i64 %idxprom10
  store float %15, float* %arrayidx11, align 4
  %18 = load float, float* %t, align 4
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load float*, float** %b.addr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 %idxprom12
  store float %18, float* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  %21 = load i32, i32* %n.addr, align 4
  %22 = load i32, i32* %k, align 4
  %add = add nsw i32 %22, 1
  %sub14 = sub nsw i32 %21, %add
  %23 = load float, float* %t, align 4
  %24 = load i32, i32* %lda.addr, align 4
  %25 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %24, %25
  %26 = load i32, i32* %k, align 4
  %add15 = add nsw i32 %mul, %26
  %add16 = add nsw i32 %add15, 1
  %idxprom17 = sext i32 %add16 to i64
  %27 = load float*, float** %a.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %27, i64 %idxprom17
  %28 = load i32, i32* %k, align 4
  %add19 = add nsw i32 %28, 1
  %idxprom20 = sext i32 %add19 to i64
  %29 = load float*, float** %b.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %29, i64 %idxprom20
  call void @daxpy(i32 %sub14, float %23, float* %arrayidx18, i32 1, float* %arrayidx21, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %k, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then
  store i32 0, i32* %kb, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.44, %if.end.22
  %31 = load i32, i32* %kb, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %for.body.25, label %for.end.46

for.body.25:                                      ; preds = %for.cond.23
  %33 = load i32, i32* %n.addr, align 4
  %34 = load i32, i32* %kb, align 4
  %add26 = add nsw i32 %34, 1
  %sub27 = sub nsw i32 %33, %add26
  store i32 %sub27, i32* %k, align 4
  %35 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %35 to i64
  %36 = load float*, float** %b.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %36, i64 %idxprom28
  %37 = load float, float* %arrayidx29, align 4
  %38 = load i32, i32* %lda.addr, align 4
  %39 = load i32, i32* %k, align 4
  %mul30 = mul nsw i32 %38, %39
  %40 = load i32, i32* %k, align 4
  %add31 = add nsw i32 %mul30, %40
  %idxprom32 = sext i32 %add31 to i64
  %41 = load float*, float** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %41, i64 %idxprom32
  %42 = load float, float* %arrayidx33, align 4
  %div = fdiv float %37, %42
  %43 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %43 to i64
  %44 = load float*, float** %b.addr, align 8
  %arrayidx35 = getelementptr inbounds float, float* %44, i64 %idxprom34
  store float %div, float* %arrayidx35, align 4
  %45 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %45 to i64
  %46 = load float*, float** %b.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %46, i64 %idxprom36
  %47 = load float, float* %arrayidx37, align 4
  %sub38 = fsub float -0.000000e+00, %47
  store float %sub38, float* %t, align 4
  %48 = load i32, i32* %k, align 4
  %49 = load float, float* %t, align 4
  %50 = load i32, i32* %lda.addr, align 4
  %51 = load i32, i32* %k, align 4
  %mul39 = mul nsw i32 %50, %51
  %add40 = add nsw i32 %mul39, 0
  %idxprom41 = sext i32 %add40 to i64
  %52 = load float*, float** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds float, float* %52, i64 %idxprom41
  %53 = load float*, float** %b.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %53, i64 0
  call void @daxpy(i32 %48, float %49, float* %arrayidx42, i32 1, float* %arrayidx43, i32 1)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.25
  %54 = load i32, i32* %kb, align 4
  %inc45 = add nsw i32 %54, 1
  store i32 %inc45, i32* %kb, align 4
  br label %for.cond.23

for.end.46:                                       ; preds = %for.cond.23
  br label %if.end.108

if.else:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.65, %if.else
  %55 = load i32, i32* %k, align 4
  %56 = load i32, i32* %n.addr, align 4
  %cmp48 = icmp slt i32 %55, %56
  br i1 %cmp48, label %for.body.49, label %for.end.67

for.body.49:                                      ; preds = %for.cond.47
  %57 = load i32, i32* %k, align 4
  %58 = load i32, i32* %lda.addr, align 4
  %59 = load i32, i32* %k, align 4
  %mul50 = mul nsw i32 %58, %59
  %add51 = add nsw i32 %mul50, 0
  %idxprom52 = sext i32 %add51 to i64
  %60 = load float*, float** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds float, float* %60, i64 %idxprom52
  %61 = load float*, float** %b.addr, align 8
  %arrayidx54 = getelementptr inbounds float, float* %61, i64 0
  %call = call float @ddot(i32 %57, float* %arrayidx53, i32 1, float* %arrayidx54, i32 1)
  store float %call, float* %t, align 4
  %62 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %62 to i64
  %63 = load float*, float** %b.addr, align 8
  %arrayidx56 = getelementptr inbounds float, float* %63, i64 %idxprom55
  %64 = load float, float* %arrayidx56, align 4
  %65 = load float, float* %t, align 4
  %sub57 = fsub float %64, %65
  %66 = load i32, i32* %lda.addr, align 4
  %67 = load i32, i32* %k, align 4
  %mul58 = mul nsw i32 %66, %67
  %68 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %mul58, %68
  %idxprom60 = sext i32 %add59 to i64
  %69 = load float*, float** %a.addr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %69, i64 %idxprom60
  %70 = load float, float* %arrayidx61, align 4
  %div62 = fdiv float %sub57, %70
  %71 = load i32, i32* %k, align 4
  %idxprom63 = sext i32 %71 to i64
  %72 = load float*, float** %b.addr, align 8
  %arrayidx64 = getelementptr inbounds float, float* %72, i64 %idxprom63
  store float %div62, float* %arrayidx64, align 4
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.49
  %73 = load i32, i32* %k, align 4
  %inc66 = add nsw i32 %73, 1
  store i32 %inc66, i32* %k, align 4
  br label %for.cond.47

for.end.67:                                       ; preds = %for.cond.47
  %74 = load i32, i32* %nm1, align 4
  %cmp68 = icmp sge i32 %74, 1
  br i1 %cmp68, label %if.then.69, label %if.end.107

if.then.69:                                       ; preds = %for.end.67
  store i32 1, i32* %kb, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.104, %if.then.69
  %75 = load i32, i32* %kb, align 4
  %76 = load i32, i32* %nm1, align 4
  %cmp71 = icmp slt i32 %75, %76
  br i1 %cmp71, label %for.body.72, label %for.end.106

for.body.72:                                      ; preds = %for.cond.70
  %77 = load i32, i32* %n.addr, align 4
  %78 = load i32, i32* %kb, align 4
  %add73 = add nsw i32 %78, 1
  %sub74 = sub nsw i32 %77, %add73
  store i32 %sub74, i32* %k, align 4
  %79 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %79 to i64
  %80 = load float*, float** %b.addr, align 8
  %arrayidx76 = getelementptr inbounds float, float* %80, i64 %idxprom75
  %81 = load float, float* %arrayidx76, align 4
  %82 = load i32, i32* %n.addr, align 4
  %83 = load i32, i32* %k, align 4
  %add77 = add nsw i32 %83, 1
  %sub78 = sub nsw i32 %82, %add77
  %84 = load i32, i32* %lda.addr, align 4
  %85 = load i32, i32* %k, align 4
  %mul79 = mul nsw i32 %84, %85
  %86 = load i32, i32* %k, align 4
  %add80 = add nsw i32 %mul79, %86
  %add81 = add nsw i32 %add80, 1
  %idxprom82 = sext i32 %add81 to i64
  %87 = load float*, float** %a.addr, align 8
  %arrayidx83 = getelementptr inbounds float, float* %87, i64 %idxprom82
  %88 = load i32, i32* %k, align 4
  %add84 = add nsw i32 %88, 1
  %idxprom85 = sext i32 %add84 to i64
  %89 = load float*, float** %b.addr, align 8
  %arrayidx86 = getelementptr inbounds float, float* %89, i64 %idxprom85
  %call87 = call float @ddot(i32 %sub78, float* %arrayidx83, i32 1, float* %arrayidx86, i32 1)
  %add88 = fadd float %81, %call87
  %90 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %90 to i64
  %91 = load float*, float** %b.addr, align 8
  %arrayidx90 = getelementptr inbounds float, float* %91, i64 %idxprom89
  store float %add88, float* %arrayidx90, align 4
  %92 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load i32*, i32** %ipvt.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %93, i64 %idxprom91
  %94 = load i32, i32* %arrayidx92, align 4
  store i32 %94, i32* %l, align 4
  %95 = load i32, i32* %l, align 4
  %96 = load i32, i32* %k, align 4
  %cmp93 = icmp ne i32 %95, %96
  br i1 %cmp93, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.72
  %97 = load i32, i32* %l, align 4
  %idxprom95 = sext i32 %97 to i64
  %98 = load float*, float** %b.addr, align 8
  %arrayidx96 = getelementptr inbounds float, float* %98, i64 %idxprom95
  %99 = load float, float* %arrayidx96, align 4
  store float %99, float* %t, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom97 = sext i32 %100 to i64
  %101 = load float*, float** %b.addr, align 8
  %arrayidx98 = getelementptr inbounds float, float* %101, i64 %idxprom97
  %102 = load float, float* %arrayidx98, align 4
  %103 = load i32, i32* %l, align 4
  %idxprom99 = sext i32 %103 to i64
  %104 = load float*, float** %b.addr, align 8
  %arrayidx100 = getelementptr inbounds float, float* %104, i64 %idxprom99
  store float %102, float* %arrayidx100, align 4
  %105 = load float, float* %t, align 4
  %106 = load i32, i32* %k, align 4
  %idxprom101 = sext i32 %106 to i64
  %107 = load float*, float** %b.addr, align 8
  %arrayidx102 = getelementptr inbounds float, float* %107, i64 %idxprom101
  store float %105, float* %arrayidx102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.94, %for.body.72
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %108 = load i32, i32* %kb, align 4
  %inc105 = add nsw i32 %108, 1
  store i32 %inc105, i32* %kb, align 4
  br label %for.cond.70

for.end.106:                                      ; preds = %for.cond.70
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %for.end.67
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.end.46
  ret void
}

; Function Attrs: nounwind uwtable
define void @dmxpy(i32 %n1, float* %y, i32 %n2, i32 %ldm, float* %x, float* %m) #0 {
entry:
  %n1.addr = alloca i32, align 4
  %y.addr = alloca float*, align 8
  %n2.addr = alloca i32, align 4
  %ldm.addr = alloca i32, align 4
  %x.addr = alloca float*, align 8
  %m.addr = alloca float*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %jmin = alloca i32, align 4
  store i32 %n1, i32* %n1.addr, align 4
  store float* %y, float** %y.addr, align 8
  store i32 %n2, i32* %n2.addr, align 4
  store i32 %ldm, i32* %ldm.addr, align 4
  store float* %x, float** %x.addr, align 8
  store float* %m, float** %m.addr, align 8
  %0 = load i32, i32* %n2.addr, align 4
  %rem = srem i32 %0, 2
  store i32 %rem, i32* %j, align 4
  %1 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n1.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load float*, float** %y.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  %7 = load float, float* %arrayidx, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load float*, float** %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %9, i64 %idxprom2
  %10 = load float, float* %arrayidx3, align 4
  %11 = load i32, i32* %ldm.addr, align 4
  %12 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %13
  %idxprom4 = sext i32 %add to i64
  %14 = load float*, float** %m.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %14, i64 %idxprom4
  %15 = load float, float* %arrayidx5, align 4
  %mul6 = fmul float %10, %15
  %add7 = fadd float %7, %mul6
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load float*, float** %y.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %17, i64 %idxprom8
  store float %add7, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %19 = load i32, i32* %n2.addr, align 4
  %rem10 = srem i32 %19, 4
  store i32 %rem10, i32* %j, align 4
  %20 = load i32, i32* %j, align 4
  %cmp11 = icmp sge i32 %20, 2
  br i1 %cmp11, label %if.then.12, label %if.end.42

if.then.12:                                       ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %sub13 = sub nsw i32 %21, 1
  store i32 %sub13, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.39, %if.then.12
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n1.addr, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body.16, label %for.end.41

for.body.16:                                      ; preds = %for.cond.14
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load float*, float** %y.addr, align 8
  %arrayidx18 = getelementptr inbounds float, float* %25, i64 %idxprom17
  %26 = load float, float* %arrayidx18, align 4
  %27 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %27, 1
  %idxprom20 = sext i32 %sub19 to i64
  %28 = load float*, float** %x.addr, align 8
  %arrayidx21 = getelementptr inbounds float, float* %28, i64 %idxprom20
  %29 = load float, float* %arrayidx21, align 4
  %30 = load i32, i32* %ldm.addr, align 4
  %31 = load i32, i32* %j, align 4
  %sub22 = sub nsw i32 %31, 1
  %mul23 = mul nsw i32 %30, %sub22
  %32 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %mul23, %32
  %idxprom25 = sext i32 %add24 to i64
  %33 = load float*, float** %m.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %33, i64 %idxprom25
  %34 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %29, %34
  %add28 = fadd float %26, %mul27
  %35 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %35 to i64
  %36 = load float*, float** %x.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %36, i64 %idxprom29
  %37 = load float, float* %arrayidx30, align 4
  %38 = load i32, i32* %ldm.addr, align 4
  %39 = load i32, i32* %j, align 4
  %mul31 = mul nsw i32 %38, %39
  %40 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %mul31, %40
  %idxprom33 = sext i32 %add32 to i64
  %41 = load float*, float** %m.addr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %41, i64 %idxprom33
  %42 = load float, float* %arrayidx34, align 4
  %mul35 = fmul float %37, %42
  %add36 = fadd float %add28, %mul35
  %43 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load float*, float** %y.addr, align 8
  %arrayidx38 = getelementptr inbounds float, float* %44, i64 %idxprom37
  store float %add36, float* %arrayidx38, align 4
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.16
  %45 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.14

for.end.41:                                       ; preds = %for.cond.14
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %if.end
  %46 = load i32, i32* %n2.addr, align 4
  %rem43 = srem i32 %46, 8
  store i32 %rem43, i32* %j, align 4
  %47 = load i32, i32* %j, align 4
  %cmp44 = icmp sge i32 %47, 4
  br i1 %cmp44, label %if.then.45, label %if.end.95

if.then.45:                                       ; preds = %if.end.42
  %48 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %48, 1
  store i32 %sub46, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.92, %if.then.45
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %n1.addr, align 4
  %cmp48 = icmp slt i32 %49, %50
  br i1 %cmp48, label %for.body.49, label %for.end.94

for.body.49:                                      ; preds = %for.cond.47
  %51 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %51 to i64
  %52 = load float*, float** %y.addr, align 8
  %arrayidx51 = getelementptr inbounds float, float* %52, i64 %idxprom50
  %53 = load float, float* %arrayidx51, align 4
  %54 = load i32, i32* %j, align 4
  %sub52 = sub nsw i32 %54, 3
  %idxprom53 = sext i32 %sub52 to i64
  %55 = load float*, float** %x.addr, align 8
  %arrayidx54 = getelementptr inbounds float, float* %55, i64 %idxprom53
  %56 = load float, float* %arrayidx54, align 4
  %57 = load i32, i32* %ldm.addr, align 4
  %58 = load i32, i32* %j, align 4
  %sub55 = sub nsw i32 %58, 3
  %mul56 = mul nsw i32 %57, %sub55
  %59 = load i32, i32* %i, align 4
  %add57 = add nsw i32 %mul56, %59
  %idxprom58 = sext i32 %add57 to i64
  %60 = load float*, float** %m.addr, align 8
  %arrayidx59 = getelementptr inbounds float, float* %60, i64 %idxprom58
  %61 = load float, float* %arrayidx59, align 4
  %mul60 = fmul float %56, %61
  %add61 = fadd float %53, %mul60
  %62 = load i32, i32* %j, align 4
  %sub62 = sub nsw i32 %62, 2
  %idxprom63 = sext i32 %sub62 to i64
  %63 = load float*, float** %x.addr, align 8
  %arrayidx64 = getelementptr inbounds float, float* %63, i64 %idxprom63
  %64 = load float, float* %arrayidx64, align 4
  %65 = load i32, i32* %ldm.addr, align 4
  %66 = load i32, i32* %j, align 4
  %sub65 = sub nsw i32 %66, 2
  %mul66 = mul nsw i32 %65, %sub65
  %67 = load i32, i32* %i, align 4
  %add67 = add nsw i32 %mul66, %67
  %idxprom68 = sext i32 %add67 to i64
  %68 = load float*, float** %m.addr, align 8
  %arrayidx69 = getelementptr inbounds float, float* %68, i64 %idxprom68
  %69 = load float, float* %arrayidx69, align 4
  %mul70 = fmul float %64, %69
  %add71 = fadd float %add61, %mul70
  %70 = load i32, i32* %j, align 4
  %sub72 = sub nsw i32 %70, 1
  %idxprom73 = sext i32 %sub72 to i64
  %71 = load float*, float** %x.addr, align 8
  %arrayidx74 = getelementptr inbounds float, float* %71, i64 %idxprom73
  %72 = load float, float* %arrayidx74, align 4
  %73 = load i32, i32* %ldm.addr, align 4
  %74 = load i32, i32* %j, align 4
  %sub75 = sub nsw i32 %74, 1
  %mul76 = mul nsw i32 %73, %sub75
  %75 = load i32, i32* %i, align 4
  %add77 = add nsw i32 %mul76, %75
  %idxprom78 = sext i32 %add77 to i64
  %76 = load float*, float** %m.addr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %76, i64 %idxprom78
  %77 = load float, float* %arrayidx79, align 4
  %mul80 = fmul float %72, %77
  %add81 = fadd float %add71, %mul80
  %78 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %78 to i64
  %79 = load float*, float** %x.addr, align 8
  %arrayidx83 = getelementptr inbounds float, float* %79, i64 %idxprom82
  %80 = load float, float* %arrayidx83, align 4
  %81 = load i32, i32* %ldm.addr, align 4
  %82 = load i32, i32* %j, align 4
  %mul84 = mul nsw i32 %81, %82
  %83 = load i32, i32* %i, align 4
  %add85 = add nsw i32 %mul84, %83
  %idxprom86 = sext i32 %add85 to i64
  %84 = load float*, float** %m.addr, align 8
  %arrayidx87 = getelementptr inbounds float, float* %84, i64 %idxprom86
  %85 = load float, float* %arrayidx87, align 4
  %mul88 = fmul float %80, %85
  %add89 = fadd float %add81, %mul88
  %86 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %86 to i64
  %87 = load float*, float** %y.addr, align 8
  %arrayidx91 = getelementptr inbounds float, float* %87, i64 %idxprom90
  store float %add89, float* %arrayidx91, align 4
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.49
  %88 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %88, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.47

for.end.94:                                       ; preds = %for.cond.47
  br label %if.end.95

if.end.95:                                        ; preds = %for.end.94, %if.end.42
  %89 = load i32, i32* %n2.addr, align 4
  %rem96 = srem i32 %89, 16
  store i32 %rem96, i32* %j, align 4
  %90 = load i32, i32* %j, align 4
  %cmp97 = icmp sge i32 %90, 8
  br i1 %cmp97, label %if.then.98, label %if.end.188

if.then.98:                                       ; preds = %if.end.95
  %91 = load i32, i32* %j, align 4
  %sub99 = sub nsw i32 %91, 1
  store i32 %sub99, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.185, %if.then.98
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %n1.addr, align 4
  %cmp101 = icmp slt i32 %92, %93
  br i1 %cmp101, label %for.body.102, label %for.end.187

for.body.102:                                     ; preds = %for.cond.100
  %94 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %94 to i64
  %95 = load float*, float** %y.addr, align 8
  %arrayidx104 = getelementptr inbounds float, float* %95, i64 %idxprom103
  %96 = load float, float* %arrayidx104, align 4
  %97 = load i32, i32* %j, align 4
  %sub105 = sub nsw i32 %97, 7
  %idxprom106 = sext i32 %sub105 to i64
  %98 = load float*, float** %x.addr, align 8
  %arrayidx107 = getelementptr inbounds float, float* %98, i64 %idxprom106
  %99 = load float, float* %arrayidx107, align 4
  %100 = load i32, i32* %ldm.addr, align 4
  %101 = load i32, i32* %j, align 4
  %sub108 = sub nsw i32 %101, 7
  %mul109 = mul nsw i32 %100, %sub108
  %102 = load i32, i32* %i, align 4
  %add110 = add nsw i32 %mul109, %102
  %idxprom111 = sext i32 %add110 to i64
  %103 = load float*, float** %m.addr, align 8
  %arrayidx112 = getelementptr inbounds float, float* %103, i64 %idxprom111
  %104 = load float, float* %arrayidx112, align 4
  %mul113 = fmul float %99, %104
  %add114 = fadd float %96, %mul113
  %105 = load i32, i32* %j, align 4
  %sub115 = sub nsw i32 %105, 6
  %idxprom116 = sext i32 %sub115 to i64
  %106 = load float*, float** %x.addr, align 8
  %arrayidx117 = getelementptr inbounds float, float* %106, i64 %idxprom116
  %107 = load float, float* %arrayidx117, align 4
  %108 = load i32, i32* %ldm.addr, align 4
  %109 = load i32, i32* %j, align 4
  %sub118 = sub nsw i32 %109, 6
  %mul119 = mul nsw i32 %108, %sub118
  %110 = load i32, i32* %i, align 4
  %add120 = add nsw i32 %mul119, %110
  %idxprom121 = sext i32 %add120 to i64
  %111 = load float*, float** %m.addr, align 8
  %arrayidx122 = getelementptr inbounds float, float* %111, i64 %idxprom121
  %112 = load float, float* %arrayidx122, align 4
  %mul123 = fmul float %107, %112
  %add124 = fadd float %add114, %mul123
  %113 = load i32, i32* %j, align 4
  %sub125 = sub nsw i32 %113, 5
  %idxprom126 = sext i32 %sub125 to i64
  %114 = load float*, float** %x.addr, align 8
  %arrayidx127 = getelementptr inbounds float, float* %114, i64 %idxprom126
  %115 = load float, float* %arrayidx127, align 4
  %116 = load i32, i32* %ldm.addr, align 4
  %117 = load i32, i32* %j, align 4
  %sub128 = sub nsw i32 %117, 5
  %mul129 = mul nsw i32 %116, %sub128
  %118 = load i32, i32* %i, align 4
  %add130 = add nsw i32 %mul129, %118
  %idxprom131 = sext i32 %add130 to i64
  %119 = load float*, float** %m.addr, align 8
  %arrayidx132 = getelementptr inbounds float, float* %119, i64 %idxprom131
  %120 = load float, float* %arrayidx132, align 4
  %mul133 = fmul float %115, %120
  %add134 = fadd float %add124, %mul133
  %121 = load i32, i32* %j, align 4
  %sub135 = sub nsw i32 %121, 4
  %idxprom136 = sext i32 %sub135 to i64
  %122 = load float*, float** %x.addr, align 8
  %arrayidx137 = getelementptr inbounds float, float* %122, i64 %idxprom136
  %123 = load float, float* %arrayidx137, align 4
  %124 = load i32, i32* %ldm.addr, align 4
  %125 = load i32, i32* %j, align 4
  %sub138 = sub nsw i32 %125, 4
  %mul139 = mul nsw i32 %124, %sub138
  %126 = load i32, i32* %i, align 4
  %add140 = add nsw i32 %mul139, %126
  %idxprom141 = sext i32 %add140 to i64
  %127 = load float*, float** %m.addr, align 8
  %arrayidx142 = getelementptr inbounds float, float* %127, i64 %idxprom141
  %128 = load float, float* %arrayidx142, align 4
  %mul143 = fmul float %123, %128
  %add144 = fadd float %add134, %mul143
  %129 = load i32, i32* %j, align 4
  %sub145 = sub nsw i32 %129, 3
  %idxprom146 = sext i32 %sub145 to i64
  %130 = load float*, float** %x.addr, align 8
  %arrayidx147 = getelementptr inbounds float, float* %130, i64 %idxprom146
  %131 = load float, float* %arrayidx147, align 4
  %132 = load i32, i32* %ldm.addr, align 4
  %133 = load i32, i32* %j, align 4
  %sub148 = sub nsw i32 %133, 3
  %mul149 = mul nsw i32 %132, %sub148
  %134 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %mul149, %134
  %idxprom151 = sext i32 %add150 to i64
  %135 = load float*, float** %m.addr, align 8
  %arrayidx152 = getelementptr inbounds float, float* %135, i64 %idxprom151
  %136 = load float, float* %arrayidx152, align 4
  %mul153 = fmul float %131, %136
  %add154 = fadd float %add144, %mul153
  %137 = load i32, i32* %j, align 4
  %sub155 = sub nsw i32 %137, 2
  %idxprom156 = sext i32 %sub155 to i64
  %138 = load float*, float** %x.addr, align 8
  %arrayidx157 = getelementptr inbounds float, float* %138, i64 %idxprom156
  %139 = load float, float* %arrayidx157, align 4
  %140 = load i32, i32* %ldm.addr, align 4
  %141 = load i32, i32* %j, align 4
  %sub158 = sub nsw i32 %141, 2
  %mul159 = mul nsw i32 %140, %sub158
  %142 = load i32, i32* %i, align 4
  %add160 = add nsw i32 %mul159, %142
  %idxprom161 = sext i32 %add160 to i64
  %143 = load float*, float** %m.addr, align 8
  %arrayidx162 = getelementptr inbounds float, float* %143, i64 %idxprom161
  %144 = load float, float* %arrayidx162, align 4
  %mul163 = fmul float %139, %144
  %add164 = fadd float %add154, %mul163
  %145 = load i32, i32* %j, align 4
  %sub165 = sub nsw i32 %145, 1
  %idxprom166 = sext i32 %sub165 to i64
  %146 = load float*, float** %x.addr, align 8
  %arrayidx167 = getelementptr inbounds float, float* %146, i64 %idxprom166
  %147 = load float, float* %arrayidx167, align 4
  %148 = load i32, i32* %ldm.addr, align 4
  %149 = load i32, i32* %j, align 4
  %sub168 = sub nsw i32 %149, 1
  %mul169 = mul nsw i32 %148, %sub168
  %150 = load i32, i32* %i, align 4
  %add170 = add nsw i32 %mul169, %150
  %idxprom171 = sext i32 %add170 to i64
  %151 = load float*, float** %m.addr, align 8
  %arrayidx172 = getelementptr inbounds float, float* %151, i64 %idxprom171
  %152 = load float, float* %arrayidx172, align 4
  %mul173 = fmul float %147, %152
  %add174 = fadd float %add164, %mul173
  %153 = load i32, i32* %j, align 4
  %idxprom175 = sext i32 %153 to i64
  %154 = load float*, float** %x.addr, align 8
  %arrayidx176 = getelementptr inbounds float, float* %154, i64 %idxprom175
  %155 = load float, float* %arrayidx176, align 4
  %156 = load i32, i32* %ldm.addr, align 4
  %157 = load i32, i32* %j, align 4
  %mul177 = mul nsw i32 %156, %157
  %158 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %mul177, %158
  %idxprom179 = sext i32 %add178 to i64
  %159 = load float*, float** %m.addr, align 8
  %arrayidx180 = getelementptr inbounds float, float* %159, i64 %idxprom179
  %160 = load float, float* %arrayidx180, align 4
  %mul181 = fmul float %155, %160
  %add182 = fadd float %add174, %mul181
  %161 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %161 to i64
  %162 = load float*, float** %y.addr, align 8
  %arrayidx184 = getelementptr inbounds float, float* %162, i64 %idxprom183
  store float %add182, float* %arrayidx184, align 4
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.102
  %163 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %163, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.100

for.end.187:                                      ; preds = %for.cond.100
  br label %if.end.188

if.end.188:                                       ; preds = %for.end.187, %if.end.95
  %164 = load i32, i32* %n2.addr, align 4
  %rem189 = srem i32 %164, 16
  %add190 = add nsw i32 %rem189, 16
  store i32 %add190, i32* %jmin, align 4
  %165 = load i32, i32* %jmin, align 4
  %sub191 = sub nsw i32 %165, 1
  store i32 %sub191, i32* %j, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.363, %if.end.188
  %166 = load i32, i32* %j, align 4
  %167 = load i32, i32* %n2.addr, align 4
  %cmp193 = icmp slt i32 %166, %167
  br i1 %cmp193, label %for.body.194, label %for.end.365

for.body.194:                                     ; preds = %for.cond.192
  store i32 0, i32* %i, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.360, %for.body.194
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %n1.addr, align 4
  %cmp196 = icmp slt i32 %168, %169
  br i1 %cmp196, label %for.body.197, label %for.end.362

for.body.197:                                     ; preds = %for.cond.195
  %170 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %170 to i64
  %171 = load float*, float** %y.addr, align 8
  %arrayidx199 = getelementptr inbounds float, float* %171, i64 %idxprom198
  %172 = load float, float* %arrayidx199, align 4
  %173 = load i32, i32* %j, align 4
  %sub200 = sub nsw i32 %173, 15
  %idxprom201 = sext i32 %sub200 to i64
  %174 = load float*, float** %x.addr, align 8
  %arrayidx202 = getelementptr inbounds float, float* %174, i64 %idxprom201
  %175 = load float, float* %arrayidx202, align 4
  %176 = load i32, i32* %ldm.addr, align 4
  %177 = load i32, i32* %j, align 4
  %sub203 = sub nsw i32 %177, 15
  %mul204 = mul nsw i32 %176, %sub203
  %178 = load i32, i32* %i, align 4
  %add205 = add nsw i32 %mul204, %178
  %idxprom206 = sext i32 %add205 to i64
  %179 = load float*, float** %m.addr, align 8
  %arrayidx207 = getelementptr inbounds float, float* %179, i64 %idxprom206
  %180 = load float, float* %arrayidx207, align 4
  %mul208 = fmul float %175, %180
  %add209 = fadd float %172, %mul208
  %181 = load i32, i32* %j, align 4
  %sub210 = sub nsw i32 %181, 14
  %idxprom211 = sext i32 %sub210 to i64
  %182 = load float*, float** %x.addr, align 8
  %arrayidx212 = getelementptr inbounds float, float* %182, i64 %idxprom211
  %183 = load float, float* %arrayidx212, align 4
  %184 = load i32, i32* %ldm.addr, align 4
  %185 = load i32, i32* %j, align 4
  %sub213 = sub nsw i32 %185, 14
  %mul214 = mul nsw i32 %184, %sub213
  %186 = load i32, i32* %i, align 4
  %add215 = add nsw i32 %mul214, %186
  %idxprom216 = sext i32 %add215 to i64
  %187 = load float*, float** %m.addr, align 8
  %arrayidx217 = getelementptr inbounds float, float* %187, i64 %idxprom216
  %188 = load float, float* %arrayidx217, align 4
  %mul218 = fmul float %183, %188
  %add219 = fadd float %add209, %mul218
  %189 = load i32, i32* %j, align 4
  %sub220 = sub nsw i32 %189, 13
  %idxprom221 = sext i32 %sub220 to i64
  %190 = load float*, float** %x.addr, align 8
  %arrayidx222 = getelementptr inbounds float, float* %190, i64 %idxprom221
  %191 = load float, float* %arrayidx222, align 4
  %192 = load i32, i32* %ldm.addr, align 4
  %193 = load i32, i32* %j, align 4
  %sub223 = sub nsw i32 %193, 13
  %mul224 = mul nsw i32 %192, %sub223
  %194 = load i32, i32* %i, align 4
  %add225 = add nsw i32 %mul224, %194
  %idxprom226 = sext i32 %add225 to i64
  %195 = load float*, float** %m.addr, align 8
  %arrayidx227 = getelementptr inbounds float, float* %195, i64 %idxprom226
  %196 = load float, float* %arrayidx227, align 4
  %mul228 = fmul float %191, %196
  %add229 = fadd float %add219, %mul228
  %197 = load i32, i32* %j, align 4
  %sub230 = sub nsw i32 %197, 12
  %idxprom231 = sext i32 %sub230 to i64
  %198 = load float*, float** %x.addr, align 8
  %arrayidx232 = getelementptr inbounds float, float* %198, i64 %idxprom231
  %199 = load float, float* %arrayidx232, align 4
  %200 = load i32, i32* %ldm.addr, align 4
  %201 = load i32, i32* %j, align 4
  %sub233 = sub nsw i32 %201, 12
  %mul234 = mul nsw i32 %200, %sub233
  %202 = load i32, i32* %i, align 4
  %add235 = add nsw i32 %mul234, %202
  %idxprom236 = sext i32 %add235 to i64
  %203 = load float*, float** %m.addr, align 8
  %arrayidx237 = getelementptr inbounds float, float* %203, i64 %idxprom236
  %204 = load float, float* %arrayidx237, align 4
  %mul238 = fmul float %199, %204
  %add239 = fadd float %add229, %mul238
  %205 = load i32, i32* %j, align 4
  %sub240 = sub nsw i32 %205, 11
  %idxprom241 = sext i32 %sub240 to i64
  %206 = load float*, float** %x.addr, align 8
  %arrayidx242 = getelementptr inbounds float, float* %206, i64 %idxprom241
  %207 = load float, float* %arrayidx242, align 4
  %208 = load i32, i32* %ldm.addr, align 4
  %209 = load i32, i32* %j, align 4
  %sub243 = sub nsw i32 %209, 11
  %mul244 = mul nsw i32 %208, %sub243
  %210 = load i32, i32* %i, align 4
  %add245 = add nsw i32 %mul244, %210
  %idxprom246 = sext i32 %add245 to i64
  %211 = load float*, float** %m.addr, align 8
  %arrayidx247 = getelementptr inbounds float, float* %211, i64 %idxprom246
  %212 = load float, float* %arrayidx247, align 4
  %mul248 = fmul float %207, %212
  %add249 = fadd float %add239, %mul248
  %213 = load i32, i32* %j, align 4
  %sub250 = sub nsw i32 %213, 10
  %idxprom251 = sext i32 %sub250 to i64
  %214 = load float*, float** %x.addr, align 8
  %arrayidx252 = getelementptr inbounds float, float* %214, i64 %idxprom251
  %215 = load float, float* %arrayidx252, align 4
  %216 = load i32, i32* %ldm.addr, align 4
  %217 = load i32, i32* %j, align 4
  %sub253 = sub nsw i32 %217, 10
  %mul254 = mul nsw i32 %216, %sub253
  %218 = load i32, i32* %i, align 4
  %add255 = add nsw i32 %mul254, %218
  %idxprom256 = sext i32 %add255 to i64
  %219 = load float*, float** %m.addr, align 8
  %arrayidx257 = getelementptr inbounds float, float* %219, i64 %idxprom256
  %220 = load float, float* %arrayidx257, align 4
  %mul258 = fmul float %215, %220
  %add259 = fadd float %add249, %mul258
  %221 = load i32, i32* %j, align 4
  %sub260 = sub nsw i32 %221, 9
  %idxprom261 = sext i32 %sub260 to i64
  %222 = load float*, float** %x.addr, align 8
  %arrayidx262 = getelementptr inbounds float, float* %222, i64 %idxprom261
  %223 = load float, float* %arrayidx262, align 4
  %224 = load i32, i32* %ldm.addr, align 4
  %225 = load i32, i32* %j, align 4
  %sub263 = sub nsw i32 %225, 9
  %mul264 = mul nsw i32 %224, %sub263
  %226 = load i32, i32* %i, align 4
  %add265 = add nsw i32 %mul264, %226
  %idxprom266 = sext i32 %add265 to i64
  %227 = load float*, float** %m.addr, align 8
  %arrayidx267 = getelementptr inbounds float, float* %227, i64 %idxprom266
  %228 = load float, float* %arrayidx267, align 4
  %mul268 = fmul float %223, %228
  %add269 = fadd float %add259, %mul268
  %229 = load i32, i32* %j, align 4
  %sub270 = sub nsw i32 %229, 8
  %idxprom271 = sext i32 %sub270 to i64
  %230 = load float*, float** %x.addr, align 8
  %arrayidx272 = getelementptr inbounds float, float* %230, i64 %idxprom271
  %231 = load float, float* %arrayidx272, align 4
  %232 = load i32, i32* %ldm.addr, align 4
  %233 = load i32, i32* %j, align 4
  %sub273 = sub nsw i32 %233, 8
  %mul274 = mul nsw i32 %232, %sub273
  %234 = load i32, i32* %i, align 4
  %add275 = add nsw i32 %mul274, %234
  %idxprom276 = sext i32 %add275 to i64
  %235 = load float*, float** %m.addr, align 8
  %arrayidx277 = getelementptr inbounds float, float* %235, i64 %idxprom276
  %236 = load float, float* %arrayidx277, align 4
  %mul278 = fmul float %231, %236
  %add279 = fadd float %add269, %mul278
  %237 = load i32, i32* %j, align 4
  %sub280 = sub nsw i32 %237, 7
  %idxprom281 = sext i32 %sub280 to i64
  %238 = load float*, float** %x.addr, align 8
  %arrayidx282 = getelementptr inbounds float, float* %238, i64 %idxprom281
  %239 = load float, float* %arrayidx282, align 4
  %240 = load i32, i32* %ldm.addr, align 4
  %241 = load i32, i32* %j, align 4
  %sub283 = sub nsw i32 %241, 7
  %mul284 = mul nsw i32 %240, %sub283
  %242 = load i32, i32* %i, align 4
  %add285 = add nsw i32 %mul284, %242
  %idxprom286 = sext i32 %add285 to i64
  %243 = load float*, float** %m.addr, align 8
  %arrayidx287 = getelementptr inbounds float, float* %243, i64 %idxprom286
  %244 = load float, float* %arrayidx287, align 4
  %mul288 = fmul float %239, %244
  %add289 = fadd float %add279, %mul288
  %245 = load i32, i32* %j, align 4
  %sub290 = sub nsw i32 %245, 6
  %idxprom291 = sext i32 %sub290 to i64
  %246 = load float*, float** %x.addr, align 8
  %arrayidx292 = getelementptr inbounds float, float* %246, i64 %idxprom291
  %247 = load float, float* %arrayidx292, align 4
  %248 = load i32, i32* %ldm.addr, align 4
  %249 = load i32, i32* %j, align 4
  %sub293 = sub nsw i32 %249, 6
  %mul294 = mul nsw i32 %248, %sub293
  %250 = load i32, i32* %i, align 4
  %add295 = add nsw i32 %mul294, %250
  %idxprom296 = sext i32 %add295 to i64
  %251 = load float*, float** %m.addr, align 8
  %arrayidx297 = getelementptr inbounds float, float* %251, i64 %idxprom296
  %252 = load float, float* %arrayidx297, align 4
  %mul298 = fmul float %247, %252
  %add299 = fadd float %add289, %mul298
  %253 = load i32, i32* %j, align 4
  %sub300 = sub nsw i32 %253, 5
  %idxprom301 = sext i32 %sub300 to i64
  %254 = load float*, float** %x.addr, align 8
  %arrayidx302 = getelementptr inbounds float, float* %254, i64 %idxprom301
  %255 = load float, float* %arrayidx302, align 4
  %256 = load i32, i32* %ldm.addr, align 4
  %257 = load i32, i32* %j, align 4
  %sub303 = sub nsw i32 %257, 5
  %mul304 = mul nsw i32 %256, %sub303
  %258 = load i32, i32* %i, align 4
  %add305 = add nsw i32 %mul304, %258
  %idxprom306 = sext i32 %add305 to i64
  %259 = load float*, float** %m.addr, align 8
  %arrayidx307 = getelementptr inbounds float, float* %259, i64 %idxprom306
  %260 = load float, float* %arrayidx307, align 4
  %mul308 = fmul float %255, %260
  %add309 = fadd float %add299, %mul308
  %261 = load i32, i32* %j, align 4
  %sub310 = sub nsw i32 %261, 4
  %idxprom311 = sext i32 %sub310 to i64
  %262 = load float*, float** %x.addr, align 8
  %arrayidx312 = getelementptr inbounds float, float* %262, i64 %idxprom311
  %263 = load float, float* %arrayidx312, align 4
  %264 = load i32, i32* %ldm.addr, align 4
  %265 = load i32, i32* %j, align 4
  %sub313 = sub nsw i32 %265, 4
  %mul314 = mul nsw i32 %264, %sub313
  %266 = load i32, i32* %i, align 4
  %add315 = add nsw i32 %mul314, %266
  %idxprom316 = sext i32 %add315 to i64
  %267 = load float*, float** %m.addr, align 8
  %arrayidx317 = getelementptr inbounds float, float* %267, i64 %idxprom316
  %268 = load float, float* %arrayidx317, align 4
  %mul318 = fmul float %263, %268
  %add319 = fadd float %add309, %mul318
  %269 = load i32, i32* %j, align 4
  %sub320 = sub nsw i32 %269, 3
  %idxprom321 = sext i32 %sub320 to i64
  %270 = load float*, float** %x.addr, align 8
  %arrayidx322 = getelementptr inbounds float, float* %270, i64 %idxprom321
  %271 = load float, float* %arrayidx322, align 4
  %272 = load i32, i32* %ldm.addr, align 4
  %273 = load i32, i32* %j, align 4
  %sub323 = sub nsw i32 %273, 3
  %mul324 = mul nsw i32 %272, %sub323
  %274 = load i32, i32* %i, align 4
  %add325 = add nsw i32 %mul324, %274
  %idxprom326 = sext i32 %add325 to i64
  %275 = load float*, float** %m.addr, align 8
  %arrayidx327 = getelementptr inbounds float, float* %275, i64 %idxprom326
  %276 = load float, float* %arrayidx327, align 4
  %mul328 = fmul float %271, %276
  %add329 = fadd float %add319, %mul328
  %277 = load i32, i32* %j, align 4
  %sub330 = sub nsw i32 %277, 2
  %idxprom331 = sext i32 %sub330 to i64
  %278 = load float*, float** %x.addr, align 8
  %arrayidx332 = getelementptr inbounds float, float* %278, i64 %idxprom331
  %279 = load float, float* %arrayidx332, align 4
  %280 = load i32, i32* %ldm.addr, align 4
  %281 = load i32, i32* %j, align 4
  %sub333 = sub nsw i32 %281, 2
  %mul334 = mul nsw i32 %280, %sub333
  %282 = load i32, i32* %i, align 4
  %add335 = add nsw i32 %mul334, %282
  %idxprom336 = sext i32 %add335 to i64
  %283 = load float*, float** %m.addr, align 8
  %arrayidx337 = getelementptr inbounds float, float* %283, i64 %idxprom336
  %284 = load float, float* %arrayidx337, align 4
  %mul338 = fmul float %279, %284
  %add339 = fadd float %add329, %mul338
  %285 = load i32, i32* %j, align 4
  %sub340 = sub nsw i32 %285, 1
  %idxprom341 = sext i32 %sub340 to i64
  %286 = load float*, float** %x.addr, align 8
  %arrayidx342 = getelementptr inbounds float, float* %286, i64 %idxprom341
  %287 = load float, float* %arrayidx342, align 4
  %288 = load i32, i32* %ldm.addr, align 4
  %289 = load i32, i32* %j, align 4
  %sub343 = sub nsw i32 %289, 1
  %mul344 = mul nsw i32 %288, %sub343
  %290 = load i32, i32* %i, align 4
  %add345 = add nsw i32 %mul344, %290
  %idxprom346 = sext i32 %add345 to i64
  %291 = load float*, float** %m.addr, align 8
  %arrayidx347 = getelementptr inbounds float, float* %291, i64 %idxprom346
  %292 = load float, float* %arrayidx347, align 4
  %mul348 = fmul float %287, %292
  %add349 = fadd float %add339, %mul348
  %293 = load i32, i32* %j, align 4
  %idxprom350 = sext i32 %293 to i64
  %294 = load float*, float** %x.addr, align 8
  %arrayidx351 = getelementptr inbounds float, float* %294, i64 %idxprom350
  %295 = load float, float* %arrayidx351, align 4
  %296 = load i32, i32* %ldm.addr, align 4
  %297 = load i32, i32* %j, align 4
  %mul352 = mul nsw i32 %296, %297
  %298 = load i32, i32* %i, align 4
  %add353 = add nsw i32 %mul352, %298
  %idxprom354 = sext i32 %add353 to i64
  %299 = load float*, float** %m.addr, align 8
  %arrayidx355 = getelementptr inbounds float, float* %299, i64 %idxprom354
  %300 = load float, float* %arrayidx355, align 4
  %mul356 = fmul float %295, %300
  %add357 = fadd float %add349, %mul356
  %301 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %301 to i64
  %302 = load float*, float** %y.addr, align 8
  %arrayidx359 = getelementptr inbounds float, float* %302, i64 %idxprom358
  store float %add357, float* %arrayidx359, align 4
  br label %for.inc.360

for.inc.360:                                      ; preds = %for.body.197
  %303 = load i32, i32* %i, align 4
  %inc361 = add nsw i32 %303, 1
  store i32 %inc361, i32* %i, align 4
  br label %for.cond.195

for.end.362:                                      ; preds = %for.cond.195
  br label %for.inc.363

for.inc.363:                                      ; preds = %for.end.362
  %304 = load i32, i32* %j, align 4
  %add364 = add nsw i32 %304, 16
  store i32 %add364, i32* %j, align 4
  br label %for.cond.192

for.end.365:                                      ; preds = %for.cond.192
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define float @epslon(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %eps = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float 0x3FF5555560000000, float* %a, align 4
  store float 0.000000e+00, float* %eps, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, float* %eps, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %a, align 4
  %conv2 = fpext float %1 to double
  %sub = fsub double %conv2, 1.000000e+00
  %conv3 = fptrunc double %sub to float
  store float %conv3, float* %b, align 4
  %2 = load float, float* %b, align 4
  %3 = load float, float* %b, align 4
  %add = fadd float %2, %3
  %4 = load float, float* %b, align 4
  %add4 = fadd float %add, %4
  store float %add4, float* %c, align 4
  %5 = load float, float* %c, align 4
  %conv5 = fpext float %5 to double
  %sub6 = fsub double %conv5, 1.000000e+00
  %call = call double @fabs(double %sub6) #5
  %conv7 = fptrunc double %call to float
  store float %conv7, float* %eps, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load float, float* %eps, align 4
  %conv8 = fpext float %6 to double
  %7 = load float, float* %x.addr, align 4
  %conv9 = fpext float %7 to double
  %call10 = call double @fabs(double %conv9) #5
  %mul = fmul double %conv8, %call10
  %conv11 = fptrunc double %mul to float
  ret float %conv11
}

; Function Attrs: nounwind uwtable
define void @print_time(i32 %row) #0 {
entry:
  %row.addr = alloca i32, align 4
  store i32 %row, i32* %row.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @idamax(i32 %n, float* %dx, i32 %incx) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %dx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %dmax = alloca float, align 4
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %itemp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %dx, float** %dx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %incx.addr, align 4
  %cmp4 = icmp ne i32 %2, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  store i32 1, i32* %ix, align 4
  %3 = load float*, float** %dx.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 0
  %4 = load float, float* %arrayidx, align 4
  %conv = fpext float %4 to double
  %call = call double @fabs(double %conv) #5
  %conv6 = fptrunc double %call to float
  store float %conv6, float* %dmax, align 4
  %5 = load i32, i32* %ix, align 4
  %6 = load i32, i32* %incx.addr, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %ix, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load float*, float** %dx.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %10, i64 %idxprom
  %11 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %11 to double
  %call11 = call double @fabs(double %conv10) #5
  %12 = load float, float* %dmax, align 4
  %conv12 = fpext float %12 to double
  %cmp13 = fcmp ogt double %call11, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %itemp, align 4
  %14 = load i32, i32* %ix, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load float*, float** %dx.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %15, i64 %idxprom16
  %16 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %16 to double
  %call19 = call double @fabs(double %conv18) #5
  %conv20 = fptrunc double %call19 to float
  store float %conv20, float* %dmax, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %for.body
  %17 = load i32, i32* %ix, align 4
  %18 = load i32, i32* %incx.addr, align 4
  %add22 = add nsw i32 %17, %18
  store i32 %add22, i32* %ix, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.48

if.else:                                          ; preds = %if.end.3
  store i32 0, i32* %itemp, align 4
  %20 = load float*, float** %dx.addr, align 8
  %arrayidx23 = getelementptr inbounds float, float* %20, i64 0
  %21 = load float, float* %arrayidx23, align 4
  %conv24 = fpext float %21 to double
  %call25 = call double @fabs(double %conv24) #5
  %conv26 = fptrunc double %call25 to float
  store float %conv26, float* %dmax, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.45, %if.else
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %n.addr, align 4
  %cmp28 = icmp slt i32 %22, %23
  br i1 %cmp28, label %for.body.30, label %for.end.47

for.body.30:                                      ; preds = %for.cond.27
  %24 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load float*, float** %dx.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %25, i64 %idxprom31
  %26 = load float, float* %arrayidx32, align 4
  %conv33 = fpext float %26 to double
  %call34 = call double @fabs(double %conv33) #5
  %27 = load float, float* %dmax, align 4
  %conv35 = fpext float %27 to double
  %cmp36 = fcmp ogt double %call34, %conv35
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %for.body.30
  %28 = load i32, i32* %i, align 4
  store i32 %28, i32* %itemp, align 4
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %30 = load float*, float** %dx.addr, align 8
  %arrayidx40 = getelementptr inbounds float, float* %30, i64 %idxprom39
  %31 = load float, float* %arrayidx40, align 4
  %conv41 = fpext float %31 to double
  %call42 = call double @fabs(double %conv41) #5
  %conv43 = fptrunc double %call42 to float
  store float %conv43, float* %dmax, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %for.body.30
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %32 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond.27

for.end.47:                                       ; preds = %for.cond.27
  br label %if.end.48

if.end.48:                                        ; preds = %for.end.47, %for.end
  %33 = load i32, i32* %itemp, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then.2, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @dscal(i32 %n, float %da, float* %dx, i32 %incx) #0 {
entry:
  %n.addr = alloca i32, align 4
  %da.addr = alloca float, align 4
  %dx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %mp1 = alloca i32, align 4
  %nincx = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %da, float* %da.addr, align 4
  store float* %dx, float** %dx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store i32 0, i32* %mp1, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.17

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
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
  %6 = load float, float* %da.addr, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %dx.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  %9 = load float, float* %arrayidx, align 4
  %mul4 = fmul float %6, %9
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load float*, float** %dx.addr, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 %idxprom5
  store float %mul4, float* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %incx.addr, align 4
  %add = add nsw i32 %12, %13
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.17

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.16, %if.end.7
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body.10, label %for.end.17

for.body.10:                                      ; preds = %for.cond.8
  %16 = load float, float* %da.addr, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load float*, float** %dx.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %18, i64 %idxprom11
  %19 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %16, %19
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load float*, float** %dx.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %21, i64 %idxprom14
  store float %mul13, float* %arrayidx15, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.10
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.8

for.end.17:                                       ; preds = %if.then, %for.end, %for.cond.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @daxpy(i32 %n, float %da, float* %dx, i32 %incx, float* %dy, i32 %incy) #0 {
entry:
  %n.addr = alloca i32, align 4
  %da.addr = alloca float, align 4
  %dx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %dy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %m = alloca i32, align 4
  %mp1 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float %da, float* %da.addr, align 4
  store float* %dx, float** %dx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %dy, float** %dy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  store i32 0, i32* %mp1, align 4
  store i32 0, i32* %m, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load float, float* %da.addr, align 4
  %conv = fpext float %1 to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* %incx.addr, align 4
  %cmp5 = icmp ne i32 %2, 1
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %3 = load i32, i32* %incy.addr, align 4
  %cmp7 = icmp ne i32 %3, 1
  br i1 %cmp7, label %if.then.9, label %if.end.31

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 0, i32* %ix, align 4
  store i32 0, i32* %iy, align 4
  %4 = load i32, i32* %incx.addr, align 4
  %cmp10 = icmp slt i32 %4, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %5 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %5
  %add = add nsw i32 %sub, 1
  %6 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %add, %6
  store i32 %mul, i32* %ix, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  %7 = load i32, i32* %incy.addr, align 4
  %cmp14 = icmp slt i32 %7, 0
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.13
  %8 = load i32, i32* %n.addr, align 4
  %sub17 = sub nsw i32 0, %8
  %add18 = add nsw i32 %sub17, 1
  %9 = load i32, i32* %incy.addr, align 4
  %mul19 = mul nsw i32 %add18, %9
  store i32 %mul19, i32* %iy, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %10, %11
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %iy, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load float*, float** %dy.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %13, i64 %idxprom
  %14 = load float, float* %arrayidx, align 4
  %15 = load float, float* %da.addr, align 4
  %16 = load i32, i32* %ix, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load float*, float** %dx.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %17, i64 %idxprom23
  %18 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %15, %18
  %add26 = fadd float %14, %mul25
  %19 = load i32, i32* %iy, align 4
  %idxprom27 = sext i32 %19 to i64
  %20 = load float*, float** %dy.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %20, i64 %idxprom27
  store float %add26, float* %arrayidx28, align 4
  %21 = load i32, i32* %ix, align 4
  %22 = load i32, i32* %incx.addr, align 4
  %add29 = add nsw i32 %21, %22
  store i32 %add29, i32* %ix, align 4
  %23 = load i32, i32* %iy, align 4
  %24 = load i32, i32* %incy.addr, align 4
  %add30 = add nsw i32 %23, %24
  store i32 %add30, i32* %iy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.44, %if.end.31
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %n.addr, align 4
  %cmp33 = icmp slt i32 %26, %27
  br i1 %cmp33, label %for.body.35, label %for.end.46

for.body.35:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %28 to i64
  %29 = load float*, float** %dy.addr, align 8
  %arrayidx37 = getelementptr inbounds float, float* %29, i64 %idxprom36
  %30 = load float, float* %arrayidx37, align 4
  %31 = load float, float* %da.addr, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %32 to i64
  %33 = load float*, float** %dx.addr, align 8
  %arrayidx39 = getelementptr inbounds float, float* %33, i64 %idxprom38
  %34 = load float, float* %arrayidx39, align 4
  %mul40 = fmul float %31, %34
  %add41 = fadd float %30, %mul40
  %35 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %35 to i64
  %36 = load float*, float** %dy.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %36, i64 %idxprom42
  store float %add41, float* %arrayidx43, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.35
  %37 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %37, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.32

for.end.46:                                       ; preds = %for.cond.32
  br label %return

return:                                           ; preds = %for.end.46, %for.end, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define float @ddot(i32 %n, float* %dx, i32 %incx, float* %dy, i32 %incy) #0 {
entry:
  %retval = alloca float, align 4
  %n.addr = alloca i32, align 4
  %dx.addr = alloca float*, align 8
  %incx.addr = alloca i32, align 4
  %dy.addr = alloca float*, align 8
  %incy.addr = alloca i32, align 4
  %dtemp = alloca float, align 4
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %m = alloca i32, align 4
  %mp1 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store float* %dx, float** %dx.addr, align 8
  store i32 %incx, i32* %incx.addr, align 4
  store float* %dy, float** %dy.addr, align 8
  store i32 %incy, i32* %incy.addr, align 4
  store i32 0, i32* %mp1, align 4
  store i32 0, i32* %m, align 4
  store float 0.000000e+00, float* %dtemp, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %incx.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %incy.addr, align 4
  %cmp2 = icmp ne i32 %2, 1
  br i1 %cmp2, label %if.then.3, label %if.end.20

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %ix, align 4
  store i32 0, i32* %iy, align 4
  %3 = load i32, i32* %incx.addr, align 4
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %4
  %add = add nsw i32 %sub, 1
  %5 = load i32, i32* %incx.addr, align 4
  %mul = mul nsw i32 %add, %5
  store i32 %mul, i32* %ix, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %6 = load i32, i32* %incy.addr, align 4
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.6
  %7 = load i32, i32* %n.addr, align 4
  %sub9 = sub nsw i32 0, %7
  %add10 = add nsw i32 %sub9, 1
  %8 = load i32, i32* %incy.addr, align 4
  %mul11 = mul nsw i32 %add10, %8
  store i32 %mul11, i32* %iy, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.6
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n.addr, align 4
  %cmp13 = icmp slt i32 %9, %10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load float, float* %dtemp, align 4
  %12 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load float*, float** %dx.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %13, i64 %idxprom
  %14 = load float, float* %arrayidx, align 4
  %15 = load i32, i32* %iy, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load float*, float** %dy.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %16, i64 %idxprom14
  %17 = load float, float* %arrayidx15, align 4
  %mul16 = fmul float %14, %17
  %add17 = fadd float %11, %mul16
  store float %add17, float* %dtemp, align 4
  %18 = load i32, i32* %ix, align 4
  %19 = load i32, i32* %incx.addr, align 4
  %add18 = add nsw i32 %18, %19
  store i32 %add18, i32* %ix, align 4
  %20 = load i32, i32* %iy, align 4
  %21 = load i32, i32* %incy.addr, align 4
  %add19 = add nsw i32 %20, %21
  store i32 %add19, i32* %iy, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load float, float* %dtemp, align 4
  store float %23, float* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.30, %if.end.20
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %n.addr, align 4
  %cmp22 = icmp slt i32 %24, %25
  br i1 %cmp22, label %for.body.23, label %for.end.32

for.body.23:                                      ; preds = %for.cond.21
  %26 = load float, float* %dtemp, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load float*, float** %dx.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %28, i64 %idxprom24
  %29 = load float, float* %arrayidx25, align 4
  %30 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load float*, float** %dy.addr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %31, i64 %idxprom26
  %32 = load float, float* %arrayidx27, align 4
  %mul28 = fmul float %29, %32
  %add29 = fadd float %26, %mul28
  store float %add29, float* %dtemp, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.23
  %33 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %33, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.21

for.end.32:                                       ; preds = %for.cond.21
  %34 = load float, float* %dtemp, align 4
  store float %34, float* %retval
  br label %return

return:                                           ; preds = %for.end.32, %for.end, %if.then
  %35 = load float, float* %retval
  ret float %35
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}