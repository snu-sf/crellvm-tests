; ModuleID = './SingleSource.Benchmarks.Misc/18.himenobmtxpa.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mat = type { float*, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@omega = global float 0x3FE99999A0000000, align 4
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@p = common global %struct.Mat zeroinitializer, align 8
@bnd = common global %struct.Mat zeroinitializer, align 8
@wrk1 = common global %struct.Mat zeroinitializer, align 8
@wrk2 = common global %struct.Mat zeroinitializer, align 8
@a = common global %struct.Mat zeroinitializer, align 8
@b = common global %struct.Mat zeroinitializer, align 8
@c = common global %struct.Mat zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"XS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Invalid input character !!\0A\00", align 1
@second.base_sec = internal global i32 0, align 4
@second.base_usec = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nn = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %mimax = alloca i32, align 4
  %mjmax = alloca i32, align 4
  %mkmax = alloca i32, align 4
  %msize = alloca [3 x i32], align 4
  %gosa = alloca float, align 4
  %cpu0 = alloca double, align 8
  %cpu1 = alloca double, align 8
  %cpu = alloca double, align 8
  %flop = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 0
  store i32 64, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 1
  store i32 64, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 2
  store i32 128, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 0
  %0 = load i32, i32* %arrayidx3, align 4
  store i32 %0, i32* %mimax, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  store i32 %1, i32* %mjmax, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i32 0, i64 2
  %2 = load i32, i32* %arrayidx5, align 4
  store i32 %2, i32* %mkmax, align 4
  %3 = load i32, i32* %mimax, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %imax, align 4
  %4 = load i32, i32* %mjmax, align 4
  %sub6 = sub nsw i32 %4, 1
  store i32 %sub6, i32* %jmax, align 4
  %5 = load i32, i32* %mkmax, align 4
  %sub7 = sub nsw i32 %5, 1
  store i32 %sub7, i32* %kmax, align 4
  %6 = load i32, i32* %mimax, align 4
  %7 = load i32, i32* %mjmax, align 4
  %8 = load i32, i32* %mkmax, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %7, i32 %8)
  %9 = load i32, i32* %imax, align 4
  %10 = load i32, i32* %jmax, align 4
  %11 = load i32, i32* %kmax, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  %12 = load i32, i32* %mimax, align 4
  %13 = load i32, i32* %mjmax, align 4
  %14 = load i32, i32* %mkmax, align 4
  %call9 = call i32 @newMat(%struct.Mat* @p, i32 1, i32 %12, i32 %13, i32 %14)
  %15 = load i32, i32* %mimax, align 4
  %16 = load i32, i32* %mjmax, align 4
  %17 = load i32, i32* %mkmax, align 4
  %call10 = call i32 @newMat(%struct.Mat* @bnd, i32 1, i32 %15, i32 %16, i32 %17)
  %18 = load i32, i32* %mimax, align 4
  %19 = load i32, i32* %mjmax, align 4
  %20 = load i32, i32* %mkmax, align 4
  %call11 = call i32 @newMat(%struct.Mat* @wrk1, i32 1, i32 %18, i32 %19, i32 %20)
  %21 = load i32, i32* %mimax, align 4
  %22 = load i32, i32* %mjmax, align 4
  %23 = load i32, i32* %mkmax, align 4
  %call12 = call i32 @newMat(%struct.Mat* @wrk2, i32 1, i32 %21, i32 %22, i32 %23)
  %24 = load i32, i32* %mimax, align 4
  %25 = load i32, i32* %mjmax, align 4
  %26 = load i32, i32* %mkmax, align 4
  %call13 = call i32 @newMat(%struct.Mat* @a, i32 4, i32 %24, i32 %25, i32 %26)
  %27 = load i32, i32* %mimax, align 4
  %28 = load i32, i32* %mjmax, align 4
  %29 = load i32, i32* %mkmax, align 4
  %call14 = call i32 @newMat(%struct.Mat* @b, i32 3, i32 %27, i32 %28, i32 %29)
  %30 = load i32, i32* %mimax, align 4
  %31 = load i32, i32* %mjmax, align 4
  %32 = load i32, i32* %mkmax, align 4
  %call15 = call i32 @newMat(%struct.Mat* @c, i32 3, i32 %30, i32 %31, i32 %32)
  call void @mat_set_init(%struct.Mat* @p)
  call void @mat_set(%struct.Mat* @bnd, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @wrk1, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @wrk2, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 2, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 3, float 0x3FC5555560000000)
  call void @mat_set(%struct.Mat* @b, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 1, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 2, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 2, float 1.000000e+00)
  store i32 64, i32* %nn, align 4
  %33 = load i32, i32* %nn, align 4
  %call16 = call float @jacobi(i32 %33, %struct.Mat* @a, %struct.Mat* @b, %struct.Mat* @c, %struct.Mat* @p, %struct.Mat* @bnd, %struct.Mat* @wrk1, %struct.Mat* @wrk2)
  store float %call16, float* %gosa, align 4
  %34 = load i32, i32* %nn, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %34)
  %35 = load float, float* %gosa, align 4
  %conv = fpext float %35 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), double %conv)
  call void @clearMat(%struct.Mat* @p)
  call void @clearMat(%struct.Mat* @bnd)
  call void @clearMat(%struct.Mat* @wrk1)
  call void @clearMat(%struct.Mat* @wrk2)
  call void @clearMat(%struct.Mat* @a)
  call void @clearMat(%struct.Mat* @b)
  call void @clearMat(%struct.Mat* @c)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @newMat(%struct.Mat* %Mat, i32 %mnums, i32 %mrows, i32 %mcols, i32 %mdeps) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %mnums.addr = alloca i32, align 4
  %mrows.addr = alloca i32, align 4
  %mcols.addr = alloca i32, align 4
  %mdeps.addr = alloca i32, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 %mnums, i32* %mnums.addr, align 4
  store i32 %mrows, i32* %mrows.addr, align 4
  store i32 %mcols, i32* %mcols.addr, align 4
  store i32 %mdeps, i32* %mdeps.addr, align 4
  %0 = load i32, i32* %mnums.addr, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mnums1 = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 1
  store i32 %0, i32* %mnums1, align 4
  %2 = load i32, i32* %mrows.addr, align 4
  %3 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows2 = getelementptr inbounds %struct.Mat, %struct.Mat* %3, i32 0, i32 2
  store i32 %2, i32* %mrows2, align 4
  %4 = load i32, i32* %mcols.addr, align 4
  %5 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols3 = getelementptr inbounds %struct.Mat, %struct.Mat* %5, i32 0, i32 3
  store i32 %4, i32* %mcols3, align 4
  %6 = load i32, i32* %mdeps.addr, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps4 = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  store i32 %6, i32* %mdeps4, align 4
  %8 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %8, i32 0, i32 0
  store float* null, float** %m, align 8
  %9 = load i32, i32* %mnums.addr, align 4
  %10 = load i32, i32* %mrows.addr, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %mcols.addr, align 4
  %mul5 = mul nsw i32 %mul, %11
  %12 = load i32, i32* %mdeps.addr, align 4
  %mul6 = mul nsw i32 %mul5, %12
  %conv = sext i32 %mul6 to i64
  %mul7 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul7) #5
  %13 = bitcast i8* %call to float*
  %14 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m8 = getelementptr inbounds %struct.Mat, %struct.Mat* %14, i32 0, i32 0
  store float* %13, float** %m8, align 8
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m9 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 0
  %16 = load float*, float** %m9, align 8
  %cmp = icmp ne float* %16, null
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @mat_set_init(%struct.Mat* %Mat) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tt = alloca float, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 2
  %2 = load i32, i32* %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.26, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 3
  %5 = load i32, i32* %mcols, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end.28

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  %8 = load i32, i32* %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, %10
  %conv = sitofp i32 %mul to float
  %11 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows7 = getelementptr inbounds %struct.Mat, %struct.Mat* %11, i32 0, i32 2
  %12 = load i32, i32* %mrows7, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows8 = getelementptr inbounds %struct.Mat, %struct.Mat* %13, i32 0, i32 2
  %14 = load i32, i32* %mrows8, align 4
  %sub9 = sub nsw i32 %14, 1
  %mul10 = mul nsw i32 %sub, %sub9
  %conv11 = sitofp i32 %mul10 to float
  %div = fdiv float %conv, %conv11
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows12 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 2
  %16 = load i32, i32* %mrows12, align 4
  %mul13 = mul nsw i32 0, %16
  %17 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols14 = getelementptr inbounds %struct.Mat, %struct.Mat* %17, i32 0, i32 3
  %18 = load i32, i32* %mcols14, align 4
  %mul15 = mul nsw i32 %mul13, %18
  %19 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds %struct.Mat, %struct.Mat* %19, i32 0, i32 4
  %20 = load i32, i32* %mdeps16, align 4
  %mul17 = mul nsw i32 %mul15, %20
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols18 = getelementptr inbounds %struct.Mat, %struct.Mat* %22, i32 0, i32 3
  %23 = load i32, i32* %mcols18, align 4
  %mul19 = mul nsw i32 %21, %23
  %24 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps20 = getelementptr inbounds %struct.Mat, %struct.Mat* %24, i32 0, i32 4
  %25 = load i32, i32* %mdeps20, align 4
  %mul21 = mul nsw i32 %mul19, %25
  %add = add nsw i32 %mul17, %mul21
  %26 = load i32, i32* %j, align 4
  %27 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps22 = getelementptr inbounds %struct.Mat, %struct.Mat* %27, i32 0, i32 4
  %28 = load i32, i32* %mdeps22, align 4
  %mul23 = mul nsw i32 %26, %28
  %add24 = add nsw i32 %add, %mul23
  %29 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %add24, %29
  %idxprom = sext i32 %add25 to i64
  %30 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %30, i32 0, i32 0
  %31 = load float*, float** %m, align 8
  %arrayidx = getelementptr inbounds float, float* %31, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %32 = load i32, i32* %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %33 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %33, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond.1

for.end.28:                                       ; preds = %for.cond.1
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @mat_set(%struct.Mat* %Mat, i32 %l, float %val) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %l.addr = alloca i32, align 4
  %val.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store float %val, float* %val.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 2
  %2 = load i32, i32* %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.20, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 3
  %5 = load i32, i32* %mcols, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body.3, label %for.end.22

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  %8 = load i32, i32* %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load float, float* %val.addr, align 4
  %10 = load i32, i32* %l.addr, align 4
  %11 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows7 = getelementptr inbounds %struct.Mat, %struct.Mat* %11, i32 0, i32 2
  %12 = load i32, i32* %mrows7, align 4
  %mul = mul nsw i32 %10, %12
  %13 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols8 = getelementptr inbounds %struct.Mat, %struct.Mat* %13, i32 0, i32 3
  %14 = load i32, i32* %mcols8, align 4
  %mul9 = mul nsw i32 %mul, %14
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps10 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 4
  %16 = load i32, i32* %mdeps10, align 4
  %mul11 = mul nsw i32 %mul9, %16
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols12 = getelementptr inbounds %struct.Mat, %struct.Mat* %18, i32 0, i32 3
  %19 = load i32, i32* %mcols12, align 4
  %mul13 = mul nsw i32 %17, %19
  %20 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps14 = getelementptr inbounds %struct.Mat, %struct.Mat* %20, i32 0, i32 4
  %21 = load i32, i32* %mdeps14, align 4
  %mul15 = mul nsw i32 %mul13, %21
  %add = add nsw i32 %mul11, %mul15
  %22 = load i32, i32* %j, align 4
  %23 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds %struct.Mat, %struct.Mat* %23, i32 0, i32 4
  %24 = load i32, i32* %mdeps16, align 4
  %mul17 = mul nsw i32 %22, %24
  %add18 = add nsw i32 %add, %mul17
  %25 = load i32, i32* %k, align 4
  %add19 = add nsw i32 %add18, %25
  %idxprom = sext i32 %add19 to i64
  %26 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %26, i32 0, i32 0
  %27 = load float*, float** %m, align 8
  %arrayidx = getelementptr inbounds float, float* %27, i64 %idxprom
  store float %9, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.1

for.end.22:                                       ; preds = %for.cond.1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %30 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define float @jacobi(i32 %nn, %struct.Mat* %a, %struct.Mat* %b, %struct.Mat* %c, %struct.Mat* %p, %struct.Mat* %bnd, %struct.Mat* %wrk1, %struct.Mat* %wrk2) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %a.addr = alloca %struct.Mat*, align 8
  %b.addr = alloca %struct.Mat*, align 8
  %c.addr = alloca %struct.Mat*, align 8
  %p.addr = alloca %struct.Mat*, align 8
  %bnd.addr = alloca %struct.Mat*, align 8
  %wrk1.addr = alloca %struct.Mat*, align 8
  %wrk2.addr = alloca %struct.Mat*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %gosa = alloca float, align 4
  %s0 = alloca float, align 4
  %ss = alloca float, align 4
  store i32 %nn, i32* %nn.addr, align 4
  store %struct.Mat* %a, %struct.Mat** %a.addr, align 8
  store %struct.Mat* %b, %struct.Mat** %b.addr, align 8
  store %struct.Mat* %c, %struct.Mat** %c.addr, align 8
  store %struct.Mat* %p, %struct.Mat** %p.addr, align 8
  store %struct.Mat* %bnd, %struct.Mat** %bnd.addr, align 8
  store %struct.Mat* %wrk1, %struct.Mat** %wrk1.addr, align 8
  store %struct.Mat* %wrk2, %struct.Mat** %wrk2.addr, align 8
  %0 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %0, i32 0, i32 2
  %1 = load i32, i32* %mrows, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %imax, align 4
  %2 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %2, i32 0, i32 3
  %3 = load i32, i32* %mcols, align 4
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %jmax, align 4
  %4 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 4
  %5 = load i32, i32* %mdeps, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %kmax, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.725, %entry
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %nn.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.727

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %gosa, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.668, %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %imax, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body.5, label %for.end.670

for.body.5:                                       ; preds = %for.cond.3
  store i32 1, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.665, %for.body.5
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %jmax, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.8, label %for.end.667

for.body.8:                                       ; preds = %for.cond.6
  store i32 1, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body.8
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %kmax, align 4
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %14 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows12 = getelementptr inbounds %struct.Mat, %struct.Mat* %14, i32 0, i32 2
  %15 = load i32, i32* %mrows12, align 4
  %mul = mul nsw i32 0, %15
  %16 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols13 = getelementptr inbounds %struct.Mat, %struct.Mat* %16, i32 0, i32 3
  %17 = load i32, i32* %mcols13, align 4
  %mul14 = mul nsw i32 %mul, %17
  %18 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps15 = getelementptr inbounds %struct.Mat, %struct.Mat* %18, i32 0, i32 4
  %19 = load i32, i32* %mdeps15, align 4
  %mul16 = mul nsw i32 %mul14, %19
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols17 = getelementptr inbounds %struct.Mat, %struct.Mat* %21, i32 0, i32 3
  %22 = load i32, i32* %mcols17, align 4
  %mul18 = mul nsw i32 %20, %22
  %23 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps19 = getelementptr inbounds %struct.Mat, %struct.Mat* %23, i32 0, i32 4
  %24 = load i32, i32* %mdeps19, align 4
  %mul20 = mul nsw i32 %mul18, %24
  %add = add nsw i32 %mul16, %mul20
  %25 = load i32, i32* %j, align 4
  %26 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps21 = getelementptr inbounds %struct.Mat, %struct.Mat* %26, i32 0, i32 4
  %27 = load i32, i32* %mdeps21, align 4
  %mul22 = mul nsw i32 %25, %27
  %add23 = add nsw i32 %add, %mul22
  %28 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %add23, %28
  %idxprom = sext i32 %add24 to i64
  %29 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %29, i32 0, i32 0
  %30 = load float*, float** %m, align 8
  %arrayidx = getelementptr inbounds float, float* %30, i64 %idxprom
  %31 = load float, float* %arrayidx, align 4
  %32 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows25 = getelementptr inbounds %struct.Mat, %struct.Mat* %32, i32 0, i32 2
  %33 = load i32, i32* %mrows25, align 4
  %mul26 = mul nsw i32 0, %33
  %34 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols27 = getelementptr inbounds %struct.Mat, %struct.Mat* %34, i32 0, i32 3
  %35 = load i32, i32* %mcols27, align 4
  %mul28 = mul nsw i32 %mul26, %35
  %36 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps29 = getelementptr inbounds %struct.Mat, %struct.Mat* %36, i32 0, i32 4
  %37 = load i32, i32* %mdeps29, align 4
  %mul30 = mul nsw i32 %mul28, %37
  %38 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %38, 1
  %39 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols32 = getelementptr inbounds %struct.Mat, %struct.Mat* %39, i32 0, i32 3
  %40 = load i32, i32* %mcols32, align 4
  %mul33 = mul nsw i32 %add31, %40
  %41 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps34 = getelementptr inbounds %struct.Mat, %struct.Mat* %41, i32 0, i32 4
  %42 = load i32, i32* %mdeps34, align 4
  %mul35 = mul nsw i32 %mul33, %42
  %add36 = add nsw i32 %mul30, %mul35
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps37 = getelementptr inbounds %struct.Mat, %struct.Mat* %44, i32 0, i32 4
  %45 = load i32, i32* %mdeps37, align 4
  %mul38 = mul nsw i32 %43, %45
  %add39 = add nsw i32 %add36, %mul38
  %46 = load i32, i32* %k, align 4
  %add40 = add nsw i32 %add39, %46
  %idxprom41 = sext i32 %add40 to i64
  %47 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m42 = getelementptr inbounds %struct.Mat, %struct.Mat* %47, i32 0, i32 0
  %48 = load float*, float** %m42, align 8
  %arrayidx43 = getelementptr inbounds float, float* %48, i64 %idxprom41
  %49 = load float, float* %arrayidx43, align 4
  %mul44 = fmul float %31, %49
  %50 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows45 = getelementptr inbounds %struct.Mat, %struct.Mat* %50, i32 0, i32 2
  %51 = load i32, i32* %mrows45, align 4
  %mul46 = mul nsw i32 1, %51
  %52 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols47 = getelementptr inbounds %struct.Mat, %struct.Mat* %52, i32 0, i32 3
  %53 = load i32, i32* %mcols47, align 4
  %mul48 = mul nsw i32 %mul46, %53
  %54 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps49 = getelementptr inbounds %struct.Mat, %struct.Mat* %54, i32 0, i32 4
  %55 = load i32, i32* %mdeps49, align 4
  %mul50 = mul nsw i32 %mul48, %55
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols51 = getelementptr inbounds %struct.Mat, %struct.Mat* %57, i32 0, i32 3
  %58 = load i32, i32* %mcols51, align 4
  %mul52 = mul nsw i32 %56, %58
  %59 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps53 = getelementptr inbounds %struct.Mat, %struct.Mat* %59, i32 0, i32 4
  %60 = load i32, i32* %mdeps53, align 4
  %mul54 = mul nsw i32 %mul52, %60
  %add55 = add nsw i32 %mul50, %mul54
  %61 = load i32, i32* %j, align 4
  %62 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps56 = getelementptr inbounds %struct.Mat, %struct.Mat* %62, i32 0, i32 4
  %63 = load i32, i32* %mdeps56, align 4
  %mul57 = mul nsw i32 %61, %63
  %add58 = add nsw i32 %add55, %mul57
  %64 = load i32, i32* %k, align 4
  %add59 = add nsw i32 %add58, %64
  %idxprom60 = sext i32 %add59 to i64
  %65 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m61 = getelementptr inbounds %struct.Mat, %struct.Mat* %65, i32 0, i32 0
  %66 = load float*, float** %m61, align 8
  %arrayidx62 = getelementptr inbounds float, float* %66, i64 %idxprom60
  %67 = load float, float* %arrayidx62, align 4
  %68 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows63 = getelementptr inbounds %struct.Mat, %struct.Mat* %68, i32 0, i32 2
  %69 = load i32, i32* %mrows63, align 4
  %mul64 = mul nsw i32 0, %69
  %70 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols65 = getelementptr inbounds %struct.Mat, %struct.Mat* %70, i32 0, i32 3
  %71 = load i32, i32* %mcols65, align 4
  %mul66 = mul nsw i32 %mul64, %71
  %72 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps67 = getelementptr inbounds %struct.Mat, %struct.Mat* %72, i32 0, i32 4
  %73 = load i32, i32* %mdeps67, align 4
  %mul68 = mul nsw i32 %mul66, %73
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols69 = getelementptr inbounds %struct.Mat, %struct.Mat* %75, i32 0, i32 3
  %76 = load i32, i32* %mcols69, align 4
  %mul70 = mul nsw i32 %74, %76
  %77 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps71 = getelementptr inbounds %struct.Mat, %struct.Mat* %77, i32 0, i32 4
  %78 = load i32, i32* %mdeps71, align 4
  %mul72 = mul nsw i32 %mul70, %78
  %add73 = add nsw i32 %mul68, %mul72
  %79 = load i32, i32* %j, align 4
  %add74 = add nsw i32 %79, 1
  %80 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps75 = getelementptr inbounds %struct.Mat, %struct.Mat* %80, i32 0, i32 4
  %81 = load i32, i32* %mdeps75, align 4
  %mul76 = mul nsw i32 %add74, %81
  %add77 = add nsw i32 %add73, %mul76
  %82 = load i32, i32* %k, align 4
  %add78 = add nsw i32 %add77, %82
  %idxprom79 = sext i32 %add78 to i64
  %83 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m80 = getelementptr inbounds %struct.Mat, %struct.Mat* %83, i32 0, i32 0
  %84 = load float*, float** %m80, align 8
  %arrayidx81 = getelementptr inbounds float, float* %84, i64 %idxprom79
  %85 = load float, float* %arrayidx81, align 4
  %mul82 = fmul float %67, %85
  %add83 = fadd float %mul44, %mul82
  %86 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows84 = getelementptr inbounds %struct.Mat, %struct.Mat* %86, i32 0, i32 2
  %87 = load i32, i32* %mrows84, align 4
  %mul85 = mul nsw i32 2, %87
  %88 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols86 = getelementptr inbounds %struct.Mat, %struct.Mat* %88, i32 0, i32 3
  %89 = load i32, i32* %mcols86, align 4
  %mul87 = mul nsw i32 %mul85, %89
  %90 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps88 = getelementptr inbounds %struct.Mat, %struct.Mat* %90, i32 0, i32 4
  %91 = load i32, i32* %mdeps88, align 4
  %mul89 = mul nsw i32 %mul87, %91
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols90 = getelementptr inbounds %struct.Mat, %struct.Mat* %93, i32 0, i32 3
  %94 = load i32, i32* %mcols90, align 4
  %mul91 = mul nsw i32 %92, %94
  %95 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps92 = getelementptr inbounds %struct.Mat, %struct.Mat* %95, i32 0, i32 4
  %96 = load i32, i32* %mdeps92, align 4
  %mul93 = mul nsw i32 %mul91, %96
  %add94 = add nsw i32 %mul89, %mul93
  %97 = load i32, i32* %j, align 4
  %98 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps95 = getelementptr inbounds %struct.Mat, %struct.Mat* %98, i32 0, i32 4
  %99 = load i32, i32* %mdeps95, align 4
  %mul96 = mul nsw i32 %97, %99
  %add97 = add nsw i32 %add94, %mul96
  %100 = load i32, i32* %k, align 4
  %add98 = add nsw i32 %add97, %100
  %idxprom99 = sext i32 %add98 to i64
  %101 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m100 = getelementptr inbounds %struct.Mat, %struct.Mat* %101, i32 0, i32 0
  %102 = load float*, float** %m100, align 8
  %arrayidx101 = getelementptr inbounds float, float* %102, i64 %idxprom99
  %103 = load float, float* %arrayidx101, align 4
  %104 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows102 = getelementptr inbounds %struct.Mat, %struct.Mat* %104, i32 0, i32 2
  %105 = load i32, i32* %mrows102, align 4
  %mul103 = mul nsw i32 0, %105
  %106 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols104 = getelementptr inbounds %struct.Mat, %struct.Mat* %106, i32 0, i32 3
  %107 = load i32, i32* %mcols104, align 4
  %mul105 = mul nsw i32 %mul103, %107
  %108 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps106 = getelementptr inbounds %struct.Mat, %struct.Mat* %108, i32 0, i32 4
  %109 = load i32, i32* %mdeps106, align 4
  %mul107 = mul nsw i32 %mul105, %109
  %110 = load i32, i32* %i, align 4
  %111 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols108 = getelementptr inbounds %struct.Mat, %struct.Mat* %111, i32 0, i32 3
  %112 = load i32, i32* %mcols108, align 4
  %mul109 = mul nsw i32 %110, %112
  %113 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps110 = getelementptr inbounds %struct.Mat, %struct.Mat* %113, i32 0, i32 4
  %114 = load i32, i32* %mdeps110, align 4
  %mul111 = mul nsw i32 %mul109, %114
  %add112 = add nsw i32 %mul107, %mul111
  %115 = load i32, i32* %j, align 4
  %116 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps113 = getelementptr inbounds %struct.Mat, %struct.Mat* %116, i32 0, i32 4
  %117 = load i32, i32* %mdeps113, align 4
  %mul114 = mul nsw i32 %115, %117
  %add115 = add nsw i32 %add112, %mul114
  %118 = load i32, i32* %k, align 4
  %add116 = add nsw i32 %118, 1
  %add117 = add nsw i32 %add115, %add116
  %idxprom118 = sext i32 %add117 to i64
  %119 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m119 = getelementptr inbounds %struct.Mat, %struct.Mat* %119, i32 0, i32 0
  %120 = load float*, float** %m119, align 8
  %arrayidx120 = getelementptr inbounds float, float* %120, i64 %idxprom118
  %121 = load float, float* %arrayidx120, align 4
  %mul121 = fmul float %103, %121
  %add122 = fadd float %add83, %mul121
  %122 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows123 = getelementptr inbounds %struct.Mat, %struct.Mat* %122, i32 0, i32 2
  %123 = load i32, i32* %mrows123, align 4
  %mul124 = mul nsw i32 0, %123
  %124 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols125 = getelementptr inbounds %struct.Mat, %struct.Mat* %124, i32 0, i32 3
  %125 = load i32, i32* %mcols125, align 4
  %mul126 = mul nsw i32 %mul124, %125
  %126 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps127 = getelementptr inbounds %struct.Mat, %struct.Mat* %126, i32 0, i32 4
  %127 = load i32, i32* %mdeps127, align 4
  %mul128 = mul nsw i32 %mul126, %127
  %128 = load i32, i32* %i, align 4
  %129 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols129 = getelementptr inbounds %struct.Mat, %struct.Mat* %129, i32 0, i32 3
  %130 = load i32, i32* %mcols129, align 4
  %mul130 = mul nsw i32 %128, %130
  %131 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps131 = getelementptr inbounds %struct.Mat, %struct.Mat* %131, i32 0, i32 4
  %132 = load i32, i32* %mdeps131, align 4
  %mul132 = mul nsw i32 %mul130, %132
  %add133 = add nsw i32 %mul128, %mul132
  %133 = load i32, i32* %j, align 4
  %134 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps134 = getelementptr inbounds %struct.Mat, %struct.Mat* %134, i32 0, i32 4
  %135 = load i32, i32* %mdeps134, align 4
  %mul135 = mul nsw i32 %133, %135
  %add136 = add nsw i32 %add133, %mul135
  %136 = load i32, i32* %k, align 4
  %add137 = add nsw i32 %add136, %136
  %idxprom138 = sext i32 %add137 to i64
  %137 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m139 = getelementptr inbounds %struct.Mat, %struct.Mat* %137, i32 0, i32 0
  %138 = load float*, float** %m139, align 8
  %arrayidx140 = getelementptr inbounds float, float* %138, i64 %idxprom138
  %139 = load float, float* %arrayidx140, align 4
  %140 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows141 = getelementptr inbounds %struct.Mat, %struct.Mat* %140, i32 0, i32 2
  %141 = load i32, i32* %mrows141, align 4
  %mul142 = mul nsw i32 0, %141
  %142 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols143 = getelementptr inbounds %struct.Mat, %struct.Mat* %142, i32 0, i32 3
  %143 = load i32, i32* %mcols143, align 4
  %mul144 = mul nsw i32 %mul142, %143
  %144 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps145 = getelementptr inbounds %struct.Mat, %struct.Mat* %144, i32 0, i32 4
  %145 = load i32, i32* %mdeps145, align 4
  %mul146 = mul nsw i32 %mul144, %145
  %146 = load i32, i32* %i, align 4
  %add147 = add nsw i32 %146, 1
  %147 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols148 = getelementptr inbounds %struct.Mat, %struct.Mat* %147, i32 0, i32 3
  %148 = load i32, i32* %mcols148, align 4
  %mul149 = mul nsw i32 %add147, %148
  %149 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps150 = getelementptr inbounds %struct.Mat, %struct.Mat* %149, i32 0, i32 4
  %150 = load i32, i32* %mdeps150, align 4
  %mul151 = mul nsw i32 %mul149, %150
  %add152 = add nsw i32 %mul146, %mul151
  %151 = load i32, i32* %j, align 4
  %add153 = add nsw i32 %151, 1
  %152 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps154 = getelementptr inbounds %struct.Mat, %struct.Mat* %152, i32 0, i32 4
  %153 = load i32, i32* %mdeps154, align 4
  %mul155 = mul nsw i32 %add153, %153
  %add156 = add nsw i32 %add152, %mul155
  %154 = load i32, i32* %k, align 4
  %add157 = add nsw i32 %add156, %154
  %idxprom158 = sext i32 %add157 to i64
  %155 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m159 = getelementptr inbounds %struct.Mat, %struct.Mat* %155, i32 0, i32 0
  %156 = load float*, float** %m159, align 8
  %arrayidx160 = getelementptr inbounds float, float* %156, i64 %idxprom158
  %157 = load float, float* %arrayidx160, align 4
  %158 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows161 = getelementptr inbounds %struct.Mat, %struct.Mat* %158, i32 0, i32 2
  %159 = load i32, i32* %mrows161, align 4
  %mul162 = mul nsw i32 0, %159
  %160 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols163 = getelementptr inbounds %struct.Mat, %struct.Mat* %160, i32 0, i32 3
  %161 = load i32, i32* %mcols163, align 4
  %mul164 = mul nsw i32 %mul162, %161
  %162 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps165 = getelementptr inbounds %struct.Mat, %struct.Mat* %162, i32 0, i32 4
  %163 = load i32, i32* %mdeps165, align 4
  %mul166 = mul nsw i32 %mul164, %163
  %164 = load i32, i32* %i, align 4
  %add167 = add nsw i32 %164, 1
  %165 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols168 = getelementptr inbounds %struct.Mat, %struct.Mat* %165, i32 0, i32 3
  %166 = load i32, i32* %mcols168, align 4
  %mul169 = mul nsw i32 %add167, %166
  %167 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps170 = getelementptr inbounds %struct.Mat, %struct.Mat* %167, i32 0, i32 4
  %168 = load i32, i32* %mdeps170, align 4
  %mul171 = mul nsw i32 %mul169, %168
  %add172 = add nsw i32 %mul166, %mul171
  %169 = load i32, i32* %j, align 4
  %sub173 = sub nsw i32 %169, 1
  %170 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps174 = getelementptr inbounds %struct.Mat, %struct.Mat* %170, i32 0, i32 4
  %171 = load i32, i32* %mdeps174, align 4
  %mul175 = mul nsw i32 %sub173, %171
  %add176 = add nsw i32 %add172, %mul175
  %172 = load i32, i32* %k, align 4
  %add177 = add nsw i32 %add176, %172
  %idxprom178 = sext i32 %add177 to i64
  %173 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m179 = getelementptr inbounds %struct.Mat, %struct.Mat* %173, i32 0, i32 0
  %174 = load float*, float** %m179, align 8
  %arrayidx180 = getelementptr inbounds float, float* %174, i64 %idxprom178
  %175 = load float, float* %arrayidx180, align 4
  %sub181 = fsub float %157, %175
  %176 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows182 = getelementptr inbounds %struct.Mat, %struct.Mat* %176, i32 0, i32 2
  %177 = load i32, i32* %mrows182, align 4
  %mul183 = mul nsw i32 0, %177
  %178 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols184 = getelementptr inbounds %struct.Mat, %struct.Mat* %178, i32 0, i32 3
  %179 = load i32, i32* %mcols184, align 4
  %mul185 = mul nsw i32 %mul183, %179
  %180 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps186 = getelementptr inbounds %struct.Mat, %struct.Mat* %180, i32 0, i32 4
  %181 = load i32, i32* %mdeps186, align 4
  %mul187 = mul nsw i32 %mul185, %181
  %182 = load i32, i32* %i, align 4
  %sub188 = sub nsw i32 %182, 1
  %183 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols189 = getelementptr inbounds %struct.Mat, %struct.Mat* %183, i32 0, i32 3
  %184 = load i32, i32* %mcols189, align 4
  %mul190 = mul nsw i32 %sub188, %184
  %185 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps191 = getelementptr inbounds %struct.Mat, %struct.Mat* %185, i32 0, i32 4
  %186 = load i32, i32* %mdeps191, align 4
  %mul192 = mul nsw i32 %mul190, %186
  %add193 = add nsw i32 %mul187, %mul192
  %187 = load i32, i32* %j, align 4
  %add194 = add nsw i32 %187, 1
  %188 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps195 = getelementptr inbounds %struct.Mat, %struct.Mat* %188, i32 0, i32 4
  %189 = load i32, i32* %mdeps195, align 4
  %mul196 = mul nsw i32 %add194, %189
  %add197 = add nsw i32 %add193, %mul196
  %190 = load i32, i32* %k, align 4
  %add198 = add nsw i32 %add197, %190
  %idxprom199 = sext i32 %add198 to i64
  %191 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m200 = getelementptr inbounds %struct.Mat, %struct.Mat* %191, i32 0, i32 0
  %192 = load float*, float** %m200, align 8
  %arrayidx201 = getelementptr inbounds float, float* %192, i64 %idxprom199
  %193 = load float, float* %arrayidx201, align 4
  %sub202 = fsub float %sub181, %193
  %194 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows203 = getelementptr inbounds %struct.Mat, %struct.Mat* %194, i32 0, i32 2
  %195 = load i32, i32* %mrows203, align 4
  %mul204 = mul nsw i32 0, %195
  %196 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols205 = getelementptr inbounds %struct.Mat, %struct.Mat* %196, i32 0, i32 3
  %197 = load i32, i32* %mcols205, align 4
  %mul206 = mul nsw i32 %mul204, %197
  %198 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps207 = getelementptr inbounds %struct.Mat, %struct.Mat* %198, i32 0, i32 4
  %199 = load i32, i32* %mdeps207, align 4
  %mul208 = mul nsw i32 %mul206, %199
  %200 = load i32, i32* %i, align 4
  %sub209 = sub nsw i32 %200, 1
  %201 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols210 = getelementptr inbounds %struct.Mat, %struct.Mat* %201, i32 0, i32 3
  %202 = load i32, i32* %mcols210, align 4
  %mul211 = mul nsw i32 %sub209, %202
  %203 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps212 = getelementptr inbounds %struct.Mat, %struct.Mat* %203, i32 0, i32 4
  %204 = load i32, i32* %mdeps212, align 4
  %mul213 = mul nsw i32 %mul211, %204
  %add214 = add nsw i32 %mul208, %mul213
  %205 = load i32, i32* %j, align 4
  %sub215 = sub nsw i32 %205, 1
  %206 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps216 = getelementptr inbounds %struct.Mat, %struct.Mat* %206, i32 0, i32 4
  %207 = load i32, i32* %mdeps216, align 4
  %mul217 = mul nsw i32 %sub215, %207
  %add218 = add nsw i32 %add214, %mul217
  %208 = load i32, i32* %k, align 4
  %add219 = add nsw i32 %add218, %208
  %idxprom220 = sext i32 %add219 to i64
  %209 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m221 = getelementptr inbounds %struct.Mat, %struct.Mat* %209, i32 0, i32 0
  %210 = load float*, float** %m221, align 8
  %arrayidx222 = getelementptr inbounds float, float* %210, i64 %idxprom220
  %211 = load float, float* %arrayidx222, align 4
  %add223 = fadd float %sub202, %211
  %mul224 = fmul float %139, %add223
  %add225 = fadd float %add122, %mul224
  %212 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows226 = getelementptr inbounds %struct.Mat, %struct.Mat* %212, i32 0, i32 2
  %213 = load i32, i32* %mrows226, align 4
  %mul227 = mul nsw i32 1, %213
  %214 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols228 = getelementptr inbounds %struct.Mat, %struct.Mat* %214, i32 0, i32 3
  %215 = load i32, i32* %mcols228, align 4
  %mul229 = mul nsw i32 %mul227, %215
  %216 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps230 = getelementptr inbounds %struct.Mat, %struct.Mat* %216, i32 0, i32 4
  %217 = load i32, i32* %mdeps230, align 4
  %mul231 = mul nsw i32 %mul229, %217
  %218 = load i32, i32* %i, align 4
  %219 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols232 = getelementptr inbounds %struct.Mat, %struct.Mat* %219, i32 0, i32 3
  %220 = load i32, i32* %mcols232, align 4
  %mul233 = mul nsw i32 %218, %220
  %221 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps234 = getelementptr inbounds %struct.Mat, %struct.Mat* %221, i32 0, i32 4
  %222 = load i32, i32* %mdeps234, align 4
  %mul235 = mul nsw i32 %mul233, %222
  %add236 = add nsw i32 %mul231, %mul235
  %223 = load i32, i32* %j, align 4
  %224 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps237 = getelementptr inbounds %struct.Mat, %struct.Mat* %224, i32 0, i32 4
  %225 = load i32, i32* %mdeps237, align 4
  %mul238 = mul nsw i32 %223, %225
  %add239 = add nsw i32 %add236, %mul238
  %226 = load i32, i32* %k, align 4
  %add240 = add nsw i32 %add239, %226
  %idxprom241 = sext i32 %add240 to i64
  %227 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m242 = getelementptr inbounds %struct.Mat, %struct.Mat* %227, i32 0, i32 0
  %228 = load float*, float** %m242, align 8
  %arrayidx243 = getelementptr inbounds float, float* %228, i64 %idxprom241
  %229 = load float, float* %arrayidx243, align 4
  %230 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows244 = getelementptr inbounds %struct.Mat, %struct.Mat* %230, i32 0, i32 2
  %231 = load i32, i32* %mrows244, align 4
  %mul245 = mul nsw i32 0, %231
  %232 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols246 = getelementptr inbounds %struct.Mat, %struct.Mat* %232, i32 0, i32 3
  %233 = load i32, i32* %mcols246, align 4
  %mul247 = mul nsw i32 %mul245, %233
  %234 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps248 = getelementptr inbounds %struct.Mat, %struct.Mat* %234, i32 0, i32 4
  %235 = load i32, i32* %mdeps248, align 4
  %mul249 = mul nsw i32 %mul247, %235
  %236 = load i32, i32* %i, align 4
  %237 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols250 = getelementptr inbounds %struct.Mat, %struct.Mat* %237, i32 0, i32 3
  %238 = load i32, i32* %mcols250, align 4
  %mul251 = mul nsw i32 %236, %238
  %239 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps252 = getelementptr inbounds %struct.Mat, %struct.Mat* %239, i32 0, i32 4
  %240 = load i32, i32* %mdeps252, align 4
  %mul253 = mul nsw i32 %mul251, %240
  %add254 = add nsw i32 %mul249, %mul253
  %241 = load i32, i32* %j, align 4
  %add255 = add nsw i32 %241, 1
  %242 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps256 = getelementptr inbounds %struct.Mat, %struct.Mat* %242, i32 0, i32 4
  %243 = load i32, i32* %mdeps256, align 4
  %mul257 = mul nsw i32 %add255, %243
  %add258 = add nsw i32 %add254, %mul257
  %244 = load i32, i32* %k, align 4
  %add259 = add nsw i32 %244, 1
  %add260 = add nsw i32 %add258, %add259
  %idxprom261 = sext i32 %add260 to i64
  %245 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m262 = getelementptr inbounds %struct.Mat, %struct.Mat* %245, i32 0, i32 0
  %246 = load float*, float** %m262, align 8
  %arrayidx263 = getelementptr inbounds float, float* %246, i64 %idxprom261
  %247 = load float, float* %arrayidx263, align 4
  %248 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows264 = getelementptr inbounds %struct.Mat, %struct.Mat* %248, i32 0, i32 2
  %249 = load i32, i32* %mrows264, align 4
  %mul265 = mul nsw i32 0, %249
  %250 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols266 = getelementptr inbounds %struct.Mat, %struct.Mat* %250, i32 0, i32 3
  %251 = load i32, i32* %mcols266, align 4
  %mul267 = mul nsw i32 %mul265, %251
  %252 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps268 = getelementptr inbounds %struct.Mat, %struct.Mat* %252, i32 0, i32 4
  %253 = load i32, i32* %mdeps268, align 4
  %mul269 = mul nsw i32 %mul267, %253
  %254 = load i32, i32* %i, align 4
  %255 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols270 = getelementptr inbounds %struct.Mat, %struct.Mat* %255, i32 0, i32 3
  %256 = load i32, i32* %mcols270, align 4
  %mul271 = mul nsw i32 %254, %256
  %257 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps272 = getelementptr inbounds %struct.Mat, %struct.Mat* %257, i32 0, i32 4
  %258 = load i32, i32* %mdeps272, align 4
  %mul273 = mul nsw i32 %mul271, %258
  %add274 = add nsw i32 %mul269, %mul273
  %259 = load i32, i32* %j, align 4
  %sub275 = sub nsw i32 %259, 1
  %260 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps276 = getelementptr inbounds %struct.Mat, %struct.Mat* %260, i32 0, i32 4
  %261 = load i32, i32* %mdeps276, align 4
  %mul277 = mul nsw i32 %sub275, %261
  %add278 = add nsw i32 %add274, %mul277
  %262 = load i32, i32* %k, align 4
  %add279 = add nsw i32 %262, 1
  %add280 = add nsw i32 %add278, %add279
  %idxprom281 = sext i32 %add280 to i64
  %263 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m282 = getelementptr inbounds %struct.Mat, %struct.Mat* %263, i32 0, i32 0
  %264 = load float*, float** %m282, align 8
  %arrayidx283 = getelementptr inbounds float, float* %264, i64 %idxprom281
  %265 = load float, float* %arrayidx283, align 4
  %sub284 = fsub float %247, %265
  %266 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows285 = getelementptr inbounds %struct.Mat, %struct.Mat* %266, i32 0, i32 2
  %267 = load i32, i32* %mrows285, align 4
  %mul286 = mul nsw i32 0, %267
  %268 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols287 = getelementptr inbounds %struct.Mat, %struct.Mat* %268, i32 0, i32 3
  %269 = load i32, i32* %mcols287, align 4
  %mul288 = mul nsw i32 %mul286, %269
  %270 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps289 = getelementptr inbounds %struct.Mat, %struct.Mat* %270, i32 0, i32 4
  %271 = load i32, i32* %mdeps289, align 4
  %mul290 = mul nsw i32 %mul288, %271
  %272 = load i32, i32* %i, align 4
  %273 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols291 = getelementptr inbounds %struct.Mat, %struct.Mat* %273, i32 0, i32 3
  %274 = load i32, i32* %mcols291, align 4
  %mul292 = mul nsw i32 %272, %274
  %275 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps293 = getelementptr inbounds %struct.Mat, %struct.Mat* %275, i32 0, i32 4
  %276 = load i32, i32* %mdeps293, align 4
  %mul294 = mul nsw i32 %mul292, %276
  %add295 = add nsw i32 %mul290, %mul294
  %277 = load i32, i32* %j, align 4
  %add296 = add nsw i32 %277, 1
  %278 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps297 = getelementptr inbounds %struct.Mat, %struct.Mat* %278, i32 0, i32 4
  %279 = load i32, i32* %mdeps297, align 4
  %mul298 = mul nsw i32 %add296, %279
  %add299 = add nsw i32 %add295, %mul298
  %280 = load i32, i32* %k, align 4
  %sub300 = sub nsw i32 %280, 1
  %add301 = add nsw i32 %add299, %sub300
  %idxprom302 = sext i32 %add301 to i64
  %281 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m303 = getelementptr inbounds %struct.Mat, %struct.Mat* %281, i32 0, i32 0
  %282 = load float*, float** %m303, align 8
  %arrayidx304 = getelementptr inbounds float, float* %282, i64 %idxprom302
  %283 = load float, float* %arrayidx304, align 4
  %sub305 = fsub float %sub284, %283
  %284 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows306 = getelementptr inbounds %struct.Mat, %struct.Mat* %284, i32 0, i32 2
  %285 = load i32, i32* %mrows306, align 4
  %mul307 = mul nsw i32 0, %285
  %286 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols308 = getelementptr inbounds %struct.Mat, %struct.Mat* %286, i32 0, i32 3
  %287 = load i32, i32* %mcols308, align 4
  %mul309 = mul nsw i32 %mul307, %287
  %288 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps310 = getelementptr inbounds %struct.Mat, %struct.Mat* %288, i32 0, i32 4
  %289 = load i32, i32* %mdeps310, align 4
  %mul311 = mul nsw i32 %mul309, %289
  %290 = load i32, i32* %i, align 4
  %291 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols312 = getelementptr inbounds %struct.Mat, %struct.Mat* %291, i32 0, i32 3
  %292 = load i32, i32* %mcols312, align 4
  %mul313 = mul nsw i32 %290, %292
  %293 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps314 = getelementptr inbounds %struct.Mat, %struct.Mat* %293, i32 0, i32 4
  %294 = load i32, i32* %mdeps314, align 4
  %mul315 = mul nsw i32 %mul313, %294
  %add316 = add nsw i32 %mul311, %mul315
  %295 = load i32, i32* %j, align 4
  %sub317 = sub nsw i32 %295, 1
  %296 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps318 = getelementptr inbounds %struct.Mat, %struct.Mat* %296, i32 0, i32 4
  %297 = load i32, i32* %mdeps318, align 4
  %mul319 = mul nsw i32 %sub317, %297
  %add320 = add nsw i32 %add316, %mul319
  %298 = load i32, i32* %k, align 4
  %sub321 = sub nsw i32 %298, 1
  %add322 = add nsw i32 %add320, %sub321
  %idxprom323 = sext i32 %add322 to i64
  %299 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m324 = getelementptr inbounds %struct.Mat, %struct.Mat* %299, i32 0, i32 0
  %300 = load float*, float** %m324, align 8
  %arrayidx325 = getelementptr inbounds float, float* %300, i64 %idxprom323
  %301 = load float, float* %arrayidx325, align 4
  %add326 = fadd float %sub305, %301
  %mul327 = fmul float %229, %add326
  %add328 = fadd float %add225, %mul327
  %302 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows329 = getelementptr inbounds %struct.Mat, %struct.Mat* %302, i32 0, i32 2
  %303 = load i32, i32* %mrows329, align 4
  %mul330 = mul nsw i32 2, %303
  %304 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols331 = getelementptr inbounds %struct.Mat, %struct.Mat* %304, i32 0, i32 3
  %305 = load i32, i32* %mcols331, align 4
  %mul332 = mul nsw i32 %mul330, %305
  %306 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps333 = getelementptr inbounds %struct.Mat, %struct.Mat* %306, i32 0, i32 4
  %307 = load i32, i32* %mdeps333, align 4
  %mul334 = mul nsw i32 %mul332, %307
  %308 = load i32, i32* %i, align 4
  %309 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols335 = getelementptr inbounds %struct.Mat, %struct.Mat* %309, i32 0, i32 3
  %310 = load i32, i32* %mcols335, align 4
  %mul336 = mul nsw i32 %308, %310
  %311 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps337 = getelementptr inbounds %struct.Mat, %struct.Mat* %311, i32 0, i32 4
  %312 = load i32, i32* %mdeps337, align 4
  %mul338 = mul nsw i32 %mul336, %312
  %add339 = add nsw i32 %mul334, %mul338
  %313 = load i32, i32* %j, align 4
  %314 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps340 = getelementptr inbounds %struct.Mat, %struct.Mat* %314, i32 0, i32 4
  %315 = load i32, i32* %mdeps340, align 4
  %mul341 = mul nsw i32 %313, %315
  %add342 = add nsw i32 %add339, %mul341
  %316 = load i32, i32* %k, align 4
  %add343 = add nsw i32 %add342, %316
  %idxprom344 = sext i32 %add343 to i64
  %317 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m345 = getelementptr inbounds %struct.Mat, %struct.Mat* %317, i32 0, i32 0
  %318 = load float*, float** %m345, align 8
  %arrayidx346 = getelementptr inbounds float, float* %318, i64 %idxprom344
  %319 = load float, float* %arrayidx346, align 4
  %320 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows347 = getelementptr inbounds %struct.Mat, %struct.Mat* %320, i32 0, i32 2
  %321 = load i32, i32* %mrows347, align 4
  %mul348 = mul nsw i32 0, %321
  %322 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols349 = getelementptr inbounds %struct.Mat, %struct.Mat* %322, i32 0, i32 3
  %323 = load i32, i32* %mcols349, align 4
  %mul350 = mul nsw i32 %mul348, %323
  %324 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps351 = getelementptr inbounds %struct.Mat, %struct.Mat* %324, i32 0, i32 4
  %325 = load i32, i32* %mdeps351, align 4
  %mul352 = mul nsw i32 %mul350, %325
  %326 = load i32, i32* %i, align 4
  %add353 = add nsw i32 %326, 1
  %327 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols354 = getelementptr inbounds %struct.Mat, %struct.Mat* %327, i32 0, i32 3
  %328 = load i32, i32* %mcols354, align 4
  %mul355 = mul nsw i32 %add353, %328
  %329 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps356 = getelementptr inbounds %struct.Mat, %struct.Mat* %329, i32 0, i32 4
  %330 = load i32, i32* %mdeps356, align 4
  %mul357 = mul nsw i32 %mul355, %330
  %add358 = add nsw i32 %mul352, %mul357
  %331 = load i32, i32* %j, align 4
  %332 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps359 = getelementptr inbounds %struct.Mat, %struct.Mat* %332, i32 0, i32 4
  %333 = load i32, i32* %mdeps359, align 4
  %mul360 = mul nsw i32 %331, %333
  %add361 = add nsw i32 %add358, %mul360
  %334 = load i32, i32* %k, align 4
  %add362 = add nsw i32 %334, 1
  %add363 = add nsw i32 %add361, %add362
  %idxprom364 = sext i32 %add363 to i64
  %335 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m365 = getelementptr inbounds %struct.Mat, %struct.Mat* %335, i32 0, i32 0
  %336 = load float*, float** %m365, align 8
  %arrayidx366 = getelementptr inbounds float, float* %336, i64 %idxprom364
  %337 = load float, float* %arrayidx366, align 4
  %338 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows367 = getelementptr inbounds %struct.Mat, %struct.Mat* %338, i32 0, i32 2
  %339 = load i32, i32* %mrows367, align 4
  %mul368 = mul nsw i32 0, %339
  %340 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols369 = getelementptr inbounds %struct.Mat, %struct.Mat* %340, i32 0, i32 3
  %341 = load i32, i32* %mcols369, align 4
  %mul370 = mul nsw i32 %mul368, %341
  %342 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps371 = getelementptr inbounds %struct.Mat, %struct.Mat* %342, i32 0, i32 4
  %343 = load i32, i32* %mdeps371, align 4
  %mul372 = mul nsw i32 %mul370, %343
  %344 = load i32, i32* %i, align 4
  %sub373 = sub nsw i32 %344, 1
  %345 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols374 = getelementptr inbounds %struct.Mat, %struct.Mat* %345, i32 0, i32 3
  %346 = load i32, i32* %mcols374, align 4
  %mul375 = mul nsw i32 %sub373, %346
  %347 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps376 = getelementptr inbounds %struct.Mat, %struct.Mat* %347, i32 0, i32 4
  %348 = load i32, i32* %mdeps376, align 4
  %mul377 = mul nsw i32 %mul375, %348
  %add378 = add nsw i32 %mul372, %mul377
  %349 = load i32, i32* %j, align 4
  %350 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps379 = getelementptr inbounds %struct.Mat, %struct.Mat* %350, i32 0, i32 4
  %351 = load i32, i32* %mdeps379, align 4
  %mul380 = mul nsw i32 %349, %351
  %add381 = add nsw i32 %add378, %mul380
  %352 = load i32, i32* %k, align 4
  %add382 = add nsw i32 %352, 1
  %add383 = add nsw i32 %add381, %add382
  %idxprom384 = sext i32 %add383 to i64
  %353 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m385 = getelementptr inbounds %struct.Mat, %struct.Mat* %353, i32 0, i32 0
  %354 = load float*, float** %m385, align 8
  %arrayidx386 = getelementptr inbounds float, float* %354, i64 %idxprom384
  %355 = load float, float* %arrayidx386, align 4
  %sub387 = fsub float %337, %355
  %356 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows388 = getelementptr inbounds %struct.Mat, %struct.Mat* %356, i32 0, i32 2
  %357 = load i32, i32* %mrows388, align 4
  %mul389 = mul nsw i32 0, %357
  %358 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols390 = getelementptr inbounds %struct.Mat, %struct.Mat* %358, i32 0, i32 3
  %359 = load i32, i32* %mcols390, align 4
  %mul391 = mul nsw i32 %mul389, %359
  %360 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps392 = getelementptr inbounds %struct.Mat, %struct.Mat* %360, i32 0, i32 4
  %361 = load i32, i32* %mdeps392, align 4
  %mul393 = mul nsw i32 %mul391, %361
  %362 = load i32, i32* %i, align 4
  %add394 = add nsw i32 %362, 1
  %363 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols395 = getelementptr inbounds %struct.Mat, %struct.Mat* %363, i32 0, i32 3
  %364 = load i32, i32* %mcols395, align 4
  %mul396 = mul nsw i32 %add394, %364
  %365 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps397 = getelementptr inbounds %struct.Mat, %struct.Mat* %365, i32 0, i32 4
  %366 = load i32, i32* %mdeps397, align 4
  %mul398 = mul nsw i32 %mul396, %366
  %add399 = add nsw i32 %mul393, %mul398
  %367 = load i32, i32* %j, align 4
  %368 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps400 = getelementptr inbounds %struct.Mat, %struct.Mat* %368, i32 0, i32 4
  %369 = load i32, i32* %mdeps400, align 4
  %mul401 = mul nsw i32 %367, %369
  %add402 = add nsw i32 %add399, %mul401
  %370 = load i32, i32* %k, align 4
  %sub403 = sub nsw i32 %370, 1
  %add404 = add nsw i32 %add402, %sub403
  %idxprom405 = sext i32 %add404 to i64
  %371 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m406 = getelementptr inbounds %struct.Mat, %struct.Mat* %371, i32 0, i32 0
  %372 = load float*, float** %m406, align 8
  %arrayidx407 = getelementptr inbounds float, float* %372, i64 %idxprom405
  %373 = load float, float* %arrayidx407, align 4
  %sub408 = fsub float %sub387, %373
  %374 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows409 = getelementptr inbounds %struct.Mat, %struct.Mat* %374, i32 0, i32 2
  %375 = load i32, i32* %mrows409, align 4
  %mul410 = mul nsw i32 0, %375
  %376 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols411 = getelementptr inbounds %struct.Mat, %struct.Mat* %376, i32 0, i32 3
  %377 = load i32, i32* %mcols411, align 4
  %mul412 = mul nsw i32 %mul410, %377
  %378 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps413 = getelementptr inbounds %struct.Mat, %struct.Mat* %378, i32 0, i32 4
  %379 = load i32, i32* %mdeps413, align 4
  %mul414 = mul nsw i32 %mul412, %379
  %380 = load i32, i32* %i, align 4
  %sub415 = sub nsw i32 %380, 1
  %381 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols416 = getelementptr inbounds %struct.Mat, %struct.Mat* %381, i32 0, i32 3
  %382 = load i32, i32* %mcols416, align 4
  %mul417 = mul nsw i32 %sub415, %382
  %383 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps418 = getelementptr inbounds %struct.Mat, %struct.Mat* %383, i32 0, i32 4
  %384 = load i32, i32* %mdeps418, align 4
  %mul419 = mul nsw i32 %mul417, %384
  %add420 = add nsw i32 %mul414, %mul419
  %385 = load i32, i32* %j, align 4
  %386 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps421 = getelementptr inbounds %struct.Mat, %struct.Mat* %386, i32 0, i32 4
  %387 = load i32, i32* %mdeps421, align 4
  %mul422 = mul nsw i32 %385, %387
  %add423 = add nsw i32 %add420, %mul422
  %388 = load i32, i32* %k, align 4
  %sub424 = sub nsw i32 %388, 1
  %add425 = add nsw i32 %add423, %sub424
  %idxprom426 = sext i32 %add425 to i64
  %389 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m427 = getelementptr inbounds %struct.Mat, %struct.Mat* %389, i32 0, i32 0
  %390 = load float*, float** %m427, align 8
  %arrayidx428 = getelementptr inbounds float, float* %390, i64 %idxprom426
  %391 = load float, float* %arrayidx428, align 4
  %add429 = fadd float %sub408, %391
  %mul430 = fmul float %319, %add429
  %add431 = fadd float %add328, %mul430
  %392 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows432 = getelementptr inbounds %struct.Mat, %struct.Mat* %392, i32 0, i32 2
  %393 = load i32, i32* %mrows432, align 4
  %mul433 = mul nsw i32 0, %393
  %394 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols434 = getelementptr inbounds %struct.Mat, %struct.Mat* %394, i32 0, i32 3
  %395 = load i32, i32* %mcols434, align 4
  %mul435 = mul nsw i32 %mul433, %395
  %396 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps436 = getelementptr inbounds %struct.Mat, %struct.Mat* %396, i32 0, i32 4
  %397 = load i32, i32* %mdeps436, align 4
  %mul437 = mul nsw i32 %mul435, %397
  %398 = load i32, i32* %i, align 4
  %399 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols438 = getelementptr inbounds %struct.Mat, %struct.Mat* %399, i32 0, i32 3
  %400 = load i32, i32* %mcols438, align 4
  %mul439 = mul nsw i32 %398, %400
  %401 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps440 = getelementptr inbounds %struct.Mat, %struct.Mat* %401, i32 0, i32 4
  %402 = load i32, i32* %mdeps440, align 4
  %mul441 = mul nsw i32 %mul439, %402
  %add442 = add nsw i32 %mul437, %mul441
  %403 = load i32, i32* %j, align 4
  %404 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps443 = getelementptr inbounds %struct.Mat, %struct.Mat* %404, i32 0, i32 4
  %405 = load i32, i32* %mdeps443, align 4
  %mul444 = mul nsw i32 %403, %405
  %add445 = add nsw i32 %add442, %mul444
  %406 = load i32, i32* %k, align 4
  %add446 = add nsw i32 %add445, %406
  %idxprom447 = sext i32 %add446 to i64
  %407 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m448 = getelementptr inbounds %struct.Mat, %struct.Mat* %407, i32 0, i32 0
  %408 = load float*, float** %m448, align 8
  %arrayidx449 = getelementptr inbounds float, float* %408, i64 %idxprom447
  %409 = load float, float* %arrayidx449, align 4
  %410 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows450 = getelementptr inbounds %struct.Mat, %struct.Mat* %410, i32 0, i32 2
  %411 = load i32, i32* %mrows450, align 4
  %mul451 = mul nsw i32 0, %411
  %412 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols452 = getelementptr inbounds %struct.Mat, %struct.Mat* %412, i32 0, i32 3
  %413 = load i32, i32* %mcols452, align 4
  %mul453 = mul nsw i32 %mul451, %413
  %414 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps454 = getelementptr inbounds %struct.Mat, %struct.Mat* %414, i32 0, i32 4
  %415 = load i32, i32* %mdeps454, align 4
  %mul455 = mul nsw i32 %mul453, %415
  %416 = load i32, i32* %i, align 4
  %sub456 = sub nsw i32 %416, 1
  %417 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols457 = getelementptr inbounds %struct.Mat, %struct.Mat* %417, i32 0, i32 3
  %418 = load i32, i32* %mcols457, align 4
  %mul458 = mul nsw i32 %sub456, %418
  %419 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps459 = getelementptr inbounds %struct.Mat, %struct.Mat* %419, i32 0, i32 4
  %420 = load i32, i32* %mdeps459, align 4
  %mul460 = mul nsw i32 %mul458, %420
  %add461 = add nsw i32 %mul455, %mul460
  %421 = load i32, i32* %j, align 4
  %422 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps462 = getelementptr inbounds %struct.Mat, %struct.Mat* %422, i32 0, i32 4
  %423 = load i32, i32* %mdeps462, align 4
  %mul463 = mul nsw i32 %421, %423
  %add464 = add nsw i32 %add461, %mul463
  %424 = load i32, i32* %k, align 4
  %add465 = add nsw i32 %add464, %424
  %idxprom466 = sext i32 %add465 to i64
  %425 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m467 = getelementptr inbounds %struct.Mat, %struct.Mat* %425, i32 0, i32 0
  %426 = load float*, float** %m467, align 8
  %arrayidx468 = getelementptr inbounds float, float* %426, i64 %idxprom466
  %427 = load float, float* %arrayidx468, align 4
  %mul469 = fmul float %409, %427
  %add470 = fadd float %add431, %mul469
  %428 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows471 = getelementptr inbounds %struct.Mat, %struct.Mat* %428, i32 0, i32 2
  %429 = load i32, i32* %mrows471, align 4
  %mul472 = mul nsw i32 1, %429
  %430 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols473 = getelementptr inbounds %struct.Mat, %struct.Mat* %430, i32 0, i32 3
  %431 = load i32, i32* %mcols473, align 4
  %mul474 = mul nsw i32 %mul472, %431
  %432 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps475 = getelementptr inbounds %struct.Mat, %struct.Mat* %432, i32 0, i32 4
  %433 = load i32, i32* %mdeps475, align 4
  %mul476 = mul nsw i32 %mul474, %433
  %434 = load i32, i32* %i, align 4
  %435 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols477 = getelementptr inbounds %struct.Mat, %struct.Mat* %435, i32 0, i32 3
  %436 = load i32, i32* %mcols477, align 4
  %mul478 = mul nsw i32 %434, %436
  %437 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps479 = getelementptr inbounds %struct.Mat, %struct.Mat* %437, i32 0, i32 4
  %438 = load i32, i32* %mdeps479, align 4
  %mul480 = mul nsw i32 %mul478, %438
  %add481 = add nsw i32 %mul476, %mul480
  %439 = load i32, i32* %j, align 4
  %440 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps482 = getelementptr inbounds %struct.Mat, %struct.Mat* %440, i32 0, i32 4
  %441 = load i32, i32* %mdeps482, align 4
  %mul483 = mul nsw i32 %439, %441
  %add484 = add nsw i32 %add481, %mul483
  %442 = load i32, i32* %k, align 4
  %add485 = add nsw i32 %add484, %442
  %idxprom486 = sext i32 %add485 to i64
  %443 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m487 = getelementptr inbounds %struct.Mat, %struct.Mat* %443, i32 0, i32 0
  %444 = load float*, float** %m487, align 8
  %arrayidx488 = getelementptr inbounds float, float* %444, i64 %idxprom486
  %445 = load float, float* %arrayidx488, align 4
  %446 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows489 = getelementptr inbounds %struct.Mat, %struct.Mat* %446, i32 0, i32 2
  %447 = load i32, i32* %mrows489, align 4
  %mul490 = mul nsw i32 0, %447
  %448 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols491 = getelementptr inbounds %struct.Mat, %struct.Mat* %448, i32 0, i32 3
  %449 = load i32, i32* %mcols491, align 4
  %mul492 = mul nsw i32 %mul490, %449
  %450 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps493 = getelementptr inbounds %struct.Mat, %struct.Mat* %450, i32 0, i32 4
  %451 = load i32, i32* %mdeps493, align 4
  %mul494 = mul nsw i32 %mul492, %451
  %452 = load i32, i32* %i, align 4
  %453 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols495 = getelementptr inbounds %struct.Mat, %struct.Mat* %453, i32 0, i32 3
  %454 = load i32, i32* %mcols495, align 4
  %mul496 = mul nsw i32 %452, %454
  %455 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps497 = getelementptr inbounds %struct.Mat, %struct.Mat* %455, i32 0, i32 4
  %456 = load i32, i32* %mdeps497, align 4
  %mul498 = mul nsw i32 %mul496, %456
  %add499 = add nsw i32 %mul494, %mul498
  %457 = load i32, i32* %j, align 4
  %sub500 = sub nsw i32 %457, 1
  %458 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps501 = getelementptr inbounds %struct.Mat, %struct.Mat* %458, i32 0, i32 4
  %459 = load i32, i32* %mdeps501, align 4
  %mul502 = mul nsw i32 %sub500, %459
  %add503 = add nsw i32 %add499, %mul502
  %460 = load i32, i32* %k, align 4
  %add504 = add nsw i32 %add503, %460
  %idxprom505 = sext i32 %add504 to i64
  %461 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m506 = getelementptr inbounds %struct.Mat, %struct.Mat* %461, i32 0, i32 0
  %462 = load float*, float** %m506, align 8
  %arrayidx507 = getelementptr inbounds float, float* %462, i64 %idxprom505
  %463 = load float, float* %arrayidx507, align 4
  %mul508 = fmul float %445, %463
  %add509 = fadd float %add470, %mul508
  %464 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows510 = getelementptr inbounds %struct.Mat, %struct.Mat* %464, i32 0, i32 2
  %465 = load i32, i32* %mrows510, align 4
  %mul511 = mul nsw i32 2, %465
  %466 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols512 = getelementptr inbounds %struct.Mat, %struct.Mat* %466, i32 0, i32 3
  %467 = load i32, i32* %mcols512, align 4
  %mul513 = mul nsw i32 %mul511, %467
  %468 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps514 = getelementptr inbounds %struct.Mat, %struct.Mat* %468, i32 0, i32 4
  %469 = load i32, i32* %mdeps514, align 4
  %mul515 = mul nsw i32 %mul513, %469
  %470 = load i32, i32* %i, align 4
  %471 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols516 = getelementptr inbounds %struct.Mat, %struct.Mat* %471, i32 0, i32 3
  %472 = load i32, i32* %mcols516, align 4
  %mul517 = mul nsw i32 %470, %472
  %473 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps518 = getelementptr inbounds %struct.Mat, %struct.Mat* %473, i32 0, i32 4
  %474 = load i32, i32* %mdeps518, align 4
  %mul519 = mul nsw i32 %mul517, %474
  %add520 = add nsw i32 %mul515, %mul519
  %475 = load i32, i32* %j, align 4
  %476 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps521 = getelementptr inbounds %struct.Mat, %struct.Mat* %476, i32 0, i32 4
  %477 = load i32, i32* %mdeps521, align 4
  %mul522 = mul nsw i32 %475, %477
  %add523 = add nsw i32 %add520, %mul522
  %478 = load i32, i32* %k, align 4
  %add524 = add nsw i32 %add523, %478
  %idxprom525 = sext i32 %add524 to i64
  %479 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m526 = getelementptr inbounds %struct.Mat, %struct.Mat* %479, i32 0, i32 0
  %480 = load float*, float** %m526, align 8
  %arrayidx527 = getelementptr inbounds float, float* %480, i64 %idxprom525
  %481 = load float, float* %arrayidx527, align 4
  %482 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows528 = getelementptr inbounds %struct.Mat, %struct.Mat* %482, i32 0, i32 2
  %483 = load i32, i32* %mrows528, align 4
  %mul529 = mul nsw i32 0, %483
  %484 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols530 = getelementptr inbounds %struct.Mat, %struct.Mat* %484, i32 0, i32 3
  %485 = load i32, i32* %mcols530, align 4
  %mul531 = mul nsw i32 %mul529, %485
  %486 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps532 = getelementptr inbounds %struct.Mat, %struct.Mat* %486, i32 0, i32 4
  %487 = load i32, i32* %mdeps532, align 4
  %mul533 = mul nsw i32 %mul531, %487
  %488 = load i32, i32* %i, align 4
  %489 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols534 = getelementptr inbounds %struct.Mat, %struct.Mat* %489, i32 0, i32 3
  %490 = load i32, i32* %mcols534, align 4
  %mul535 = mul nsw i32 %488, %490
  %491 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps536 = getelementptr inbounds %struct.Mat, %struct.Mat* %491, i32 0, i32 4
  %492 = load i32, i32* %mdeps536, align 4
  %mul537 = mul nsw i32 %mul535, %492
  %add538 = add nsw i32 %mul533, %mul537
  %493 = load i32, i32* %j, align 4
  %494 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps539 = getelementptr inbounds %struct.Mat, %struct.Mat* %494, i32 0, i32 4
  %495 = load i32, i32* %mdeps539, align 4
  %mul540 = mul nsw i32 %493, %495
  %add541 = add nsw i32 %add538, %mul540
  %496 = load i32, i32* %k, align 4
  %sub542 = sub nsw i32 %496, 1
  %add543 = add nsw i32 %add541, %sub542
  %idxprom544 = sext i32 %add543 to i64
  %497 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m545 = getelementptr inbounds %struct.Mat, %struct.Mat* %497, i32 0, i32 0
  %498 = load float*, float** %m545, align 8
  %arrayidx546 = getelementptr inbounds float, float* %498, i64 %idxprom544
  %499 = load float, float* %arrayidx546, align 4
  %mul547 = fmul float %481, %499
  %add548 = fadd float %add509, %mul547
  %500 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mrows549 = getelementptr inbounds %struct.Mat, %struct.Mat* %500, i32 0, i32 2
  %501 = load i32, i32* %mrows549, align 4
  %mul550 = mul nsw i32 0, %501
  %502 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mcols551 = getelementptr inbounds %struct.Mat, %struct.Mat* %502, i32 0, i32 3
  %503 = load i32, i32* %mcols551, align 4
  %mul552 = mul nsw i32 %mul550, %503
  %504 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps553 = getelementptr inbounds %struct.Mat, %struct.Mat* %504, i32 0, i32 4
  %505 = load i32, i32* %mdeps553, align 4
  %mul554 = mul nsw i32 %mul552, %505
  %506 = load i32, i32* %i, align 4
  %507 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mcols555 = getelementptr inbounds %struct.Mat, %struct.Mat* %507, i32 0, i32 3
  %508 = load i32, i32* %mcols555, align 4
  %mul556 = mul nsw i32 %506, %508
  %509 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps557 = getelementptr inbounds %struct.Mat, %struct.Mat* %509, i32 0, i32 4
  %510 = load i32, i32* %mdeps557, align 4
  %mul558 = mul nsw i32 %mul556, %510
  %add559 = add nsw i32 %mul554, %mul558
  %511 = load i32, i32* %j, align 4
  %512 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps560 = getelementptr inbounds %struct.Mat, %struct.Mat* %512, i32 0, i32 4
  %513 = load i32, i32* %mdeps560, align 4
  %mul561 = mul nsw i32 %511, %513
  %add562 = add nsw i32 %add559, %mul561
  %514 = load i32, i32* %k, align 4
  %add563 = add nsw i32 %add562, %514
  %idxprom564 = sext i32 %add563 to i64
  %515 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %m565 = getelementptr inbounds %struct.Mat, %struct.Mat* %515, i32 0, i32 0
  %516 = load float*, float** %m565, align 8
  %arrayidx566 = getelementptr inbounds float, float* %516, i64 %idxprom564
  %517 = load float, float* %arrayidx566, align 4
  %add567 = fadd float %add548, %517
  store float %add567, float* %s0, align 4
  %518 = load float, float* %s0, align 4
  %519 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows568 = getelementptr inbounds %struct.Mat, %struct.Mat* %519, i32 0, i32 2
  %520 = load i32, i32* %mrows568, align 4
  %mul569 = mul nsw i32 3, %520
  %521 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols570 = getelementptr inbounds %struct.Mat, %struct.Mat* %521, i32 0, i32 3
  %522 = load i32, i32* %mcols570, align 4
  %mul571 = mul nsw i32 %mul569, %522
  %523 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps572 = getelementptr inbounds %struct.Mat, %struct.Mat* %523, i32 0, i32 4
  %524 = load i32, i32* %mdeps572, align 4
  %mul573 = mul nsw i32 %mul571, %524
  %525 = load i32, i32* %i, align 4
  %526 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols574 = getelementptr inbounds %struct.Mat, %struct.Mat* %526, i32 0, i32 3
  %527 = load i32, i32* %mcols574, align 4
  %mul575 = mul nsw i32 %525, %527
  %528 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps576 = getelementptr inbounds %struct.Mat, %struct.Mat* %528, i32 0, i32 4
  %529 = load i32, i32* %mdeps576, align 4
  %mul577 = mul nsw i32 %mul575, %529
  %add578 = add nsw i32 %mul573, %mul577
  %530 = load i32, i32* %j, align 4
  %531 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps579 = getelementptr inbounds %struct.Mat, %struct.Mat* %531, i32 0, i32 4
  %532 = load i32, i32* %mdeps579, align 4
  %mul580 = mul nsw i32 %530, %532
  %add581 = add nsw i32 %add578, %mul580
  %533 = load i32, i32* %k, align 4
  %add582 = add nsw i32 %add581, %533
  %idxprom583 = sext i32 %add582 to i64
  %534 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m584 = getelementptr inbounds %struct.Mat, %struct.Mat* %534, i32 0, i32 0
  %535 = load float*, float** %m584, align 8
  %arrayidx585 = getelementptr inbounds float, float* %535, i64 %idxprom583
  %536 = load float, float* %arrayidx585, align 4
  %mul586 = fmul float %518, %536
  %537 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows587 = getelementptr inbounds %struct.Mat, %struct.Mat* %537, i32 0, i32 2
  %538 = load i32, i32* %mrows587, align 4
  %mul588 = mul nsw i32 0, %538
  %539 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols589 = getelementptr inbounds %struct.Mat, %struct.Mat* %539, i32 0, i32 3
  %540 = load i32, i32* %mcols589, align 4
  %mul590 = mul nsw i32 %mul588, %540
  %541 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps591 = getelementptr inbounds %struct.Mat, %struct.Mat* %541, i32 0, i32 4
  %542 = load i32, i32* %mdeps591, align 4
  %mul592 = mul nsw i32 %mul590, %542
  %543 = load i32, i32* %i, align 4
  %544 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols593 = getelementptr inbounds %struct.Mat, %struct.Mat* %544, i32 0, i32 3
  %545 = load i32, i32* %mcols593, align 4
  %mul594 = mul nsw i32 %543, %545
  %546 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps595 = getelementptr inbounds %struct.Mat, %struct.Mat* %546, i32 0, i32 4
  %547 = load i32, i32* %mdeps595, align 4
  %mul596 = mul nsw i32 %mul594, %547
  %add597 = add nsw i32 %mul592, %mul596
  %548 = load i32, i32* %j, align 4
  %549 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps598 = getelementptr inbounds %struct.Mat, %struct.Mat* %549, i32 0, i32 4
  %550 = load i32, i32* %mdeps598, align 4
  %mul599 = mul nsw i32 %548, %550
  %add600 = add nsw i32 %add597, %mul599
  %551 = load i32, i32* %k, align 4
  %add601 = add nsw i32 %add600, %551
  %idxprom602 = sext i32 %add601 to i64
  %552 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m603 = getelementptr inbounds %struct.Mat, %struct.Mat* %552, i32 0, i32 0
  %553 = load float*, float** %m603, align 8
  %arrayidx604 = getelementptr inbounds float, float* %553, i64 %idxprom602
  %554 = load float, float* %arrayidx604, align 4
  %sub605 = fsub float %mul586, %554
  %555 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mrows606 = getelementptr inbounds %struct.Mat, %struct.Mat* %555, i32 0, i32 2
  %556 = load i32, i32* %mrows606, align 4
  %mul607 = mul nsw i32 0, %556
  %557 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mcols608 = getelementptr inbounds %struct.Mat, %struct.Mat* %557, i32 0, i32 3
  %558 = load i32, i32* %mcols608, align 4
  %mul609 = mul nsw i32 %mul607, %558
  %559 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps610 = getelementptr inbounds %struct.Mat, %struct.Mat* %559, i32 0, i32 4
  %560 = load i32, i32* %mdeps610, align 4
  %mul611 = mul nsw i32 %mul609, %560
  %561 = load i32, i32* %i, align 4
  %562 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mcols612 = getelementptr inbounds %struct.Mat, %struct.Mat* %562, i32 0, i32 3
  %563 = load i32, i32* %mcols612, align 4
  %mul613 = mul nsw i32 %561, %563
  %564 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps614 = getelementptr inbounds %struct.Mat, %struct.Mat* %564, i32 0, i32 4
  %565 = load i32, i32* %mdeps614, align 4
  %mul615 = mul nsw i32 %mul613, %565
  %add616 = add nsw i32 %mul611, %mul615
  %566 = load i32, i32* %j, align 4
  %567 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps617 = getelementptr inbounds %struct.Mat, %struct.Mat* %567, i32 0, i32 4
  %568 = load i32, i32* %mdeps617, align 4
  %mul618 = mul nsw i32 %566, %568
  %add619 = add nsw i32 %add616, %mul618
  %569 = load i32, i32* %k, align 4
  %add620 = add nsw i32 %add619, %569
  %idxprom621 = sext i32 %add620 to i64
  %570 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %m622 = getelementptr inbounds %struct.Mat, %struct.Mat* %570, i32 0, i32 0
  %571 = load float*, float** %m622, align 8
  %arrayidx623 = getelementptr inbounds float, float* %571, i64 %idxprom621
  %572 = load float, float* %arrayidx623, align 4
  %mul624 = fmul float %sub605, %572
  store float %mul624, float* %ss, align 4
  %573 = load float, float* %ss, align 4
  %574 = load float, float* %ss, align 4
  %mul625 = fmul float %573, %574
  %575 = load float, float* %gosa, align 4
  %add626 = fadd float %575, %mul625
  store float %add626, float* %gosa, align 4
  %576 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows627 = getelementptr inbounds %struct.Mat, %struct.Mat* %576, i32 0, i32 2
  %577 = load i32, i32* %mrows627, align 4
  %mul628 = mul nsw i32 0, %577
  %578 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols629 = getelementptr inbounds %struct.Mat, %struct.Mat* %578, i32 0, i32 3
  %579 = load i32, i32* %mcols629, align 4
  %mul630 = mul nsw i32 %mul628, %579
  %580 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps631 = getelementptr inbounds %struct.Mat, %struct.Mat* %580, i32 0, i32 4
  %581 = load i32, i32* %mdeps631, align 4
  %mul632 = mul nsw i32 %mul630, %581
  %582 = load i32, i32* %i, align 4
  %583 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols633 = getelementptr inbounds %struct.Mat, %struct.Mat* %583, i32 0, i32 3
  %584 = load i32, i32* %mcols633, align 4
  %mul634 = mul nsw i32 %582, %584
  %585 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps635 = getelementptr inbounds %struct.Mat, %struct.Mat* %585, i32 0, i32 4
  %586 = load i32, i32* %mdeps635, align 4
  %mul636 = mul nsw i32 %mul634, %586
  %add637 = add nsw i32 %mul632, %mul636
  %587 = load i32, i32* %j, align 4
  %588 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps638 = getelementptr inbounds %struct.Mat, %struct.Mat* %588, i32 0, i32 4
  %589 = load i32, i32* %mdeps638, align 4
  %mul639 = mul nsw i32 %587, %589
  %add640 = add nsw i32 %add637, %mul639
  %590 = load i32, i32* %k, align 4
  %add641 = add nsw i32 %add640, %590
  %idxprom642 = sext i32 %add641 to i64
  %591 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m643 = getelementptr inbounds %struct.Mat, %struct.Mat* %591, i32 0, i32 0
  %592 = load float*, float** %m643, align 8
  %arrayidx644 = getelementptr inbounds float, float* %592, i64 %idxprom642
  %593 = load float, float* %arrayidx644, align 4
  %594 = load float, float* @omega, align 4
  %595 = load float, float* %ss, align 4
  %mul645 = fmul float %594, %595
  %add646 = fadd float %593, %mul645
  %596 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mrows647 = getelementptr inbounds %struct.Mat, %struct.Mat* %596, i32 0, i32 2
  %597 = load i32, i32* %mrows647, align 4
  %mul648 = mul nsw i32 0, %597
  %598 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols649 = getelementptr inbounds %struct.Mat, %struct.Mat* %598, i32 0, i32 3
  %599 = load i32, i32* %mcols649, align 4
  %mul650 = mul nsw i32 %mul648, %599
  %600 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps651 = getelementptr inbounds %struct.Mat, %struct.Mat* %600, i32 0, i32 4
  %601 = load i32, i32* %mdeps651, align 4
  %mul652 = mul nsw i32 %mul650, %601
  %602 = load i32, i32* %i, align 4
  %603 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols653 = getelementptr inbounds %struct.Mat, %struct.Mat* %603, i32 0, i32 3
  %604 = load i32, i32* %mcols653, align 4
  %mul654 = mul nsw i32 %602, %604
  %605 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps655 = getelementptr inbounds %struct.Mat, %struct.Mat* %605, i32 0, i32 4
  %606 = load i32, i32* %mdeps655, align 4
  %mul656 = mul nsw i32 %mul654, %606
  %add657 = add nsw i32 %mul652, %mul656
  %607 = load i32, i32* %j, align 4
  %608 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps658 = getelementptr inbounds %struct.Mat, %struct.Mat* %608, i32 0, i32 4
  %609 = load i32, i32* %mdeps658, align 4
  %mul659 = mul nsw i32 %607, %609
  %add660 = add nsw i32 %add657, %mul659
  %610 = load i32, i32* %k, align 4
  %add661 = add nsw i32 %add660, %610
  %idxprom662 = sext i32 %add661 to i64
  %611 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %m663 = getelementptr inbounds %struct.Mat, %struct.Mat* %611, i32 0, i32 0
  %612 = load float*, float** %m663, align 8
  %arrayidx664 = getelementptr inbounds float, float* %612, i64 %idxprom662
  store float %add646, float* %arrayidx664, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %613 = load i32, i32* %k, align 4
  %inc = add nsw i32 %613, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.665

for.inc.665:                                      ; preds = %for.end
  %614 = load i32, i32* %j, align 4
  %inc666 = add nsw i32 %614, 1
  store i32 %inc666, i32* %j, align 4
  br label %for.cond.6

for.end.667:                                      ; preds = %for.cond.6
  br label %for.inc.668

for.inc.668:                                      ; preds = %for.end.667
  %615 = load i32, i32* %i, align 4
  %inc669 = add nsw i32 %615, 1
  store i32 %inc669, i32* %i, align 4
  br label %for.cond.3

for.end.670:                                      ; preds = %for.cond.3
  store i32 1, i32* %i, align 4
  br label %for.cond.671

for.cond.671:                                     ; preds = %for.inc.722, %for.end.670
  %616 = load i32, i32* %i, align 4
  %617 = load i32, i32* %imax, align 4
  %cmp672 = icmp slt i32 %616, %617
  br i1 %cmp672, label %for.body.673, label %for.end.724

for.body.673:                                     ; preds = %for.cond.671
  store i32 1, i32* %j, align 4
  br label %for.cond.674

for.cond.674:                                     ; preds = %for.inc.719, %for.body.673
  %618 = load i32, i32* %j, align 4
  %619 = load i32, i32* %jmax, align 4
  %cmp675 = icmp slt i32 %618, %619
  br i1 %cmp675, label %for.body.676, label %for.end.721

for.body.676:                                     ; preds = %for.cond.674
  store i32 1, i32* %k, align 4
  br label %for.cond.677

for.cond.677:                                     ; preds = %for.inc.716, %for.body.676
  %620 = load i32, i32* %k, align 4
  %621 = load i32, i32* %kmax, align 4
  %cmp678 = icmp slt i32 %620, %621
  br i1 %cmp678, label %for.body.679, label %for.end.718

for.body.679:                                     ; preds = %for.cond.677
  %622 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mrows680 = getelementptr inbounds %struct.Mat, %struct.Mat* %622, i32 0, i32 2
  %623 = load i32, i32* %mrows680, align 4
  %mul681 = mul nsw i32 0, %623
  %624 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols682 = getelementptr inbounds %struct.Mat, %struct.Mat* %624, i32 0, i32 3
  %625 = load i32, i32* %mcols682, align 4
  %mul683 = mul nsw i32 %mul681, %625
  %626 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps684 = getelementptr inbounds %struct.Mat, %struct.Mat* %626, i32 0, i32 4
  %627 = load i32, i32* %mdeps684, align 4
  %mul685 = mul nsw i32 %mul683, %627
  %628 = load i32, i32* %i, align 4
  %629 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols686 = getelementptr inbounds %struct.Mat, %struct.Mat* %629, i32 0, i32 3
  %630 = load i32, i32* %mcols686, align 4
  %mul687 = mul nsw i32 %628, %630
  %631 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps688 = getelementptr inbounds %struct.Mat, %struct.Mat* %631, i32 0, i32 4
  %632 = load i32, i32* %mdeps688, align 4
  %mul689 = mul nsw i32 %mul687, %632
  %add690 = add nsw i32 %mul685, %mul689
  %633 = load i32, i32* %j, align 4
  %634 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps691 = getelementptr inbounds %struct.Mat, %struct.Mat* %634, i32 0, i32 4
  %635 = load i32, i32* %mdeps691, align 4
  %mul692 = mul nsw i32 %633, %635
  %add693 = add nsw i32 %add690, %mul692
  %636 = load i32, i32* %k, align 4
  %add694 = add nsw i32 %add693, %636
  %idxprom695 = sext i32 %add694 to i64
  %637 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %m696 = getelementptr inbounds %struct.Mat, %struct.Mat* %637, i32 0, i32 0
  %638 = load float*, float** %m696, align 8
  %arrayidx697 = getelementptr inbounds float, float* %638, i64 %idxprom695
  %639 = load float, float* %arrayidx697, align 4
  %640 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows698 = getelementptr inbounds %struct.Mat, %struct.Mat* %640, i32 0, i32 2
  %641 = load i32, i32* %mrows698, align 4
  %mul699 = mul nsw i32 0, %641
  %642 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols700 = getelementptr inbounds %struct.Mat, %struct.Mat* %642, i32 0, i32 3
  %643 = load i32, i32* %mcols700, align 4
  %mul701 = mul nsw i32 %mul699, %643
  %644 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps702 = getelementptr inbounds %struct.Mat, %struct.Mat* %644, i32 0, i32 4
  %645 = load i32, i32* %mdeps702, align 4
  %mul703 = mul nsw i32 %mul701, %645
  %646 = load i32, i32* %i, align 4
  %647 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols704 = getelementptr inbounds %struct.Mat, %struct.Mat* %647, i32 0, i32 3
  %648 = load i32, i32* %mcols704, align 4
  %mul705 = mul nsw i32 %646, %648
  %649 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps706 = getelementptr inbounds %struct.Mat, %struct.Mat* %649, i32 0, i32 4
  %650 = load i32, i32* %mdeps706, align 4
  %mul707 = mul nsw i32 %mul705, %650
  %add708 = add nsw i32 %mul703, %mul707
  %651 = load i32, i32* %j, align 4
  %652 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps709 = getelementptr inbounds %struct.Mat, %struct.Mat* %652, i32 0, i32 4
  %653 = load i32, i32* %mdeps709, align 4
  %mul710 = mul nsw i32 %651, %653
  %add711 = add nsw i32 %add708, %mul710
  %654 = load i32, i32* %k, align 4
  %add712 = add nsw i32 %add711, %654
  %idxprom713 = sext i32 %add712 to i64
  %655 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m714 = getelementptr inbounds %struct.Mat, %struct.Mat* %655, i32 0, i32 0
  %656 = load float*, float** %m714, align 8
  %arrayidx715 = getelementptr inbounds float, float* %656, i64 %idxprom713
  store float %639, float* %arrayidx715, align 4
  br label %for.inc.716

for.inc.716:                                      ; preds = %for.body.679
  %657 = load i32, i32* %k, align 4
  %inc717 = add nsw i32 %657, 1
  store i32 %inc717, i32* %k, align 4
  br label %for.cond.677

for.end.718:                                      ; preds = %for.cond.677
  br label %for.inc.719

for.inc.719:                                      ; preds = %for.end.718
  %658 = load i32, i32* %j, align 4
  %inc720 = add nsw i32 %658, 1
  store i32 %inc720, i32* %j, align 4
  br label %for.cond.674

for.end.721:                                      ; preds = %for.cond.674
  br label %for.inc.722

for.inc.722:                                      ; preds = %for.end.721
  %659 = load i32, i32* %i, align 4
  %inc723 = add nsw i32 %659, 1
  store i32 %inc723, i32* %i, align 4
  br label %for.cond.671

for.end.724:                                      ; preds = %for.cond.671
  br label %for.inc.725

for.inc.725:                                      ; preds = %for.end.724
  %660 = load i32, i32* %n, align 4
  %inc726 = add nsw i32 %660, 1
  store i32 %inc726, i32* %n, align 4
  br label %for.cond

for.end.727:                                      ; preds = %for.cond
  %661 = load float, float* %gosa, align 4
  ret float %661
}

; Function Attrs: nounwind uwtable
define void @clearMat(%struct.Mat* %Mat) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  %0 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %0, i32 0, i32 0
  %1 = load float*, float** %m, align 8
  %tobool = icmp ne float* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m1 = getelementptr inbounds %struct.Mat, %struct.Mat* %2, i32 0, i32 0
  %3 = load float*, float** %m1, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m2 = getelementptr inbounds %struct.Mat, %struct.Mat* %5, i32 0, i32 0
  store float* null, float** %m2, align 8
  %6 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mnums = getelementptr inbounds %struct.Mat, %struct.Mat* %6, i32 0, i32 1
  store i32 0, i32* %mnums, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 3
  store i32 0, i32* %mcols, align 4
  %8 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %8, i32 0, i32 2
  store i32 0, i32* %mrows, align 4
  %9 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %9, i32 0, i32 4
  store i32 0, i32* %mdeps, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define double @fflop(i32 %mx, i32 %my, i32 %mz) #0 {
entry:
  %mx.addr = alloca i32, align 4
  %my.addr = alloca i32, align 4
  %mz.addr = alloca i32, align 4
  store i32 %mx, i32* %mx.addr, align 4
  store i32 %my, i32* %my.addr, align 4
  store i32 %mz, i32* %mz.addr, align 4
  %0 = load i32, i32* %mz.addr, align 4
  %sub = sub nsw i32 %0, 2
  %conv = sitofp i32 %sub to double
  %1 = load i32, i32* %my.addr, align 4
  %sub1 = sub nsw i32 %1, 2
  %conv2 = sitofp i32 %sub1 to double
  %mul = fmul double %conv, %conv2
  %2 = load i32, i32* %mx.addr, align 4
  %sub3 = sub nsw i32 %2, 2
  %conv4 = sitofp i32 %sub3 to double
  %mul5 = fmul double %mul, %conv4
  %mul6 = fmul double %mul5, 3.400000e+01
  ret double %mul6
}

; Function Attrs: nounwind uwtable
define double @mflops(i32 %nn, double %cpu, double %flop) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %cpu.addr = alloca double, align 8
  %flop.addr = alloca double, align 8
  store i32 %nn, i32* %nn.addr, align 4
  store double %cpu, double* %cpu.addr, align 8
  store double %flop, double* %flop.addr, align 8
  %0 = load double, double* %flop.addr, align 8
  %1 = load double, double* %cpu.addr, align 8
  %div = fdiv double %0, %1
  %mul = fmul double %div, 1.000000e-06
  %2 = load i32, i32* %nn.addr, align 4
  %conv = sitofp i32 %2 to double
  %mul1 = fmul double %mul, %conv
  ret double %mul1
}

; Function Attrs: nounwind uwtable
define void @set_param(i32* %is, i8* %size) #0 {
entry:
  %is.addr = alloca i32*, align 8
  %size.addr = alloca i8*, align 8
  store i32* %is, i32** %is.addr, align 8
  store i8* %size, i8** %size.addr, align 8
  %0 = load i8*, i8** %size.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %size.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %is.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %is.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 32, i32* %arrayidx3, align 4
  %4 = load i32*, i32** %is.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 64, i32* %arrayidx4, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %size.addr, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false.7, label %if.then.10

lor.lhs.false.7:                                  ; preds = %if.end
  %6 = load i8*, i8** %size.addr, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.14, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false.7, %if.end
  %7 = load i32*, i32** %is.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 64, i32* %arrayidx11, align 4
  %8 = load i32*, i32** %is.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 64, i32* %arrayidx12, align 4
  %9 = load i32*, i32** %is.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 128, i32* %arrayidx13, align 4
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false.7
  %10 = load i8*, i8** %size.addr, align 8
  %call15 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.20

lor.lhs.false.17:                                 ; preds = %if.end.14
  %11 = load i8*, i8** %size.addr, align 8
  %call18 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  %12 = load i32*, i32** %is.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 128, i32* %arrayidx21, align 4
  %13 = load i32*, i32** %is.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 128, i32* %arrayidx22, align 4
  %14 = load i32*, i32** %is.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 256, i32* %arrayidx23, align 4
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false.17
  %15 = load i8*, i8** %size.addr, align 8
  %call25 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false.27, label %if.then.30

lor.lhs.false.27:                                 ; preds = %if.end.24
  %16 = load i8*, i8** %size.addr, align 8
  %call28 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.34, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false.27, %if.end.24
  %17 = load i32*, i32** %is.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 256, i32* %arrayidx31, align 4
  %18 = load i32*, i32** %is.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 256, i32* %arrayidx32, align 4
  %19 = load i32*, i32** %is.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 512, i32* %arrayidx33, align 4
  br label %return

if.end.34:                                        ; preds = %lor.lhs.false.27
  %20 = load i8*, i8** %size.addr, align 8
  %call35 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %if.end.34
  %21 = load i8*, i8** %size.addr, align 8
  %call38 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.34
  %22 = load i32*, i32** %is.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 512, i32* %arrayidx41, align 4
  %23 = load i32*, i32** %is.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 512, i32* %arrayidx42, align 4
  %24 = load i32*, i32** %is.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 1024, i32* %arrayidx43, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false.37
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  call void @exit(i32 6) #7
  unreachable

return:                                           ; preds = %if.then.40, %if.then.30, %if.then.20, %if.then.10, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define double @second() #0 {
entry:
  %tm = alloca %struct.timeval, align 8
  %t = alloca double, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tm, %struct.timezone* null) #5
  %0 = load i32, i32* @second.base_sec, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @second.base_usec, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* @second.base_sec, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %conv2 = trunc i64 %3 to i32
  store i32 %conv2, i32* @second.base_usec, align 4
  store double 0.000000e+00, double* %t, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %tv_sec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 0
  %4 = load i64, i64* %tv_sec3, align 8
  %5 = load i32, i32* @second.base_sec, align 4
  %conv4 = sext i32 %5 to i64
  %sub = sub nsw i64 %4, %conv4
  %conv5 = sitofp i64 %sub to double
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 1
  %6 = load i64, i64* %tv_usec6, align 8
  %7 = load i32, i32* @second.base_usec, align 4
  %conv7 = sext i32 %7 to i64
  %sub8 = sub nsw i64 %6, %conv7
  %conv9 = sitofp i64 %sub8 to double
  %div = fdiv double %conv9, 1.000000e+06
  %add = fadd double %conv5, %div
  store double %add, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %t, align 8
  ret double %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
