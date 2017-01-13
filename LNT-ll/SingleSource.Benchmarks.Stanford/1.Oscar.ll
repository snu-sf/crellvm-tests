; ModuleID = './SingleSource.Benchmarks.Stanford/1.Oscar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }
%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }

@seed = common global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = common global [130 x %struct.complex] zeroinitializer, align 16
@zr = common global float 0.000000e+00, align 4
@zi = common global float 0.000000e+00, align 4
@z = common global [257 x %struct.complex] zeroinitializer, align 16
@w = common global [257 x %struct.complex] zeroinitializer, align 16
@value = common global float 0.000000e+00, align 4
@fixed = common global float 0.000000e+00, align 4
@floated = common global float 0.000000e+00, align 4
@permarray = common global [11 x i32] zeroinitializer, align 16
@pctr = common global i32 0, align 4
@tree = common global %struct.node* null, align 8
@stack = common global [4 x i32] zeroinitializer, align 16
@cellspace = common global [19 x %struct.element] zeroinitializer, align 16
@freelist = common global i32 0, align 4
@movesdone = common global i32 0, align 4
@ima = common global [41 x [41 x i32]] zeroinitializer, align 16
@imb = common global [41 x [41 x i32]] zeroinitializer, align 16
@imr = common global [41 x [41 x i32]] zeroinitializer, align 16
@rma = common global [41 x [41 x float]] zeroinitializer, align 16
@rmb = common global [41 x [41 x float]] zeroinitializer, align 16
@rmr = common global [41 x [41 x float]] zeroinitializer, align 16
@piececount = common global [4 x i32] zeroinitializer, align 16
@class = common global [13 x i32] zeroinitializer, align 16
@piecemax = common global [13 x i32] zeroinitializer, align 16
@puzzl = common global [512 x i32] zeroinitializer, align 16
@p = common global [13 x [512 x i32]] zeroinitializer, align 16
@n = common global i32 0, align 4
@kount = common global i32 0, align 4
@sortlist = common global [5001 x i32] zeroinitializer, align 16
@biggest = common global i32 0, align 4
@littlest = common global i32 0, align 4
@top = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @Initrand() #0 {
entry:
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Rand() #0 {
entry:
  %0 = load i64, i64* @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define float @Cos(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  %i = alloca i32, align 4
  %factor = alloca i32, align 4
  %result = alloca float, align 4
  %power = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float 1.000000e+00, float* %result, align 4
  store i32 1, i32* %factor, align 4
  %0 = load float, float* %x.addr, align 4
  store float %0, float* %power, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %factor, align 4
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %factor, align 4
  %4 = load float, float* %power, align 4
  %5 = load float, float* %x.addr, align 4
  %mul1 = fmul float %4, %5
  store float %mul1, float* %power, align 4
  %6 = load i32, i32* %i, align 4
  %and = and i32 %6, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %and3 = and i32 %7, 3
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %8 = load float, float* %result, align 4
  %9 = load float, float* %power, align 4
  %10 = load i32, i32* %factor, align 4
  %conv = sitofp i32 %10 to float
  %div = fdiv float %9, %conv
  %add = fadd float %8, %div
  store float %add, float* %result, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load float, float* %result, align 4
  %12 = load float, float* %power, align 4
  %13 = load i32, i32* %factor, align 4
  %conv6 = sitofp i32 %13 to float
  %div7 = fdiv float %12, %conv6
  %sub = fsub float %11, %div7
  store float %sub, float* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load float, float* %result, align 4
  ret float %15
}

; Function Attrs: nounwind uwtable
define i32 @Min0(i32 %arg1, i32 %arg2) #0 {
entry:
  %retval = alloca i32, align 4
  %arg1.addr = alloca i32, align 4
  %arg2.addr = alloca i32, align 4
  store i32 %arg1, i32* %arg1.addr, align 4
  store i32 %arg2, i32* %arg2.addr, align 4
  %0 = load i32, i32* %arg1.addr, align 4
  %1 = load i32, i32* %arg2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %arg1.addr, align 4
  store i32 %2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %arg2.addr, align 4
  store i32 %3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @Printcomplex(%struct.complex* %zarray, i32 %start, i32 %finish, i32 %increment) #0 {
entry:
  %zarray.addr = alloca %struct.complex*, align 8
  %start.addr = alloca i32, align 4
  %finish.addr = alloca i32, align 4
  %increment.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.complex* %zarray, %struct.complex** %zarray.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %finish, i32* %finish.addr, align 4
  store i32 %increment, i32* %increment.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.complex*, %struct.complex** %zarray.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %3 = load float, float* %rp, align 4
  %conv = fpext float %3 to double
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.complex*, %struct.complex** %zarray.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.complex, %struct.complex* %5, i64 %idxprom1
  %ip = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx2, i32 0, i32 1
  %6 = load float, float* %ip, align 4
  %conv3 = fpext float %6 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %conv, double %conv3)
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %increment.addr, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.complex*, %struct.complex** %zarray.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.complex, %struct.complex* %10, i64 %idxprom5
  %rp7 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx6, i32 0, i32 0
  %11 = load float, float* %rp7, align 4
  %conv8 = fpext float %11 to double
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.complex*, %struct.complex** %zarray.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.complex, %struct.complex* %13, i64 %idxprom9
  %ip11 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx10, i32 0, i32 1
  %14 = load float, float* %ip11, align 4
  %conv12 = fpext float %14 to double
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), double %conv8, double %conv12)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %increment.addr, align 4
  %add15 = add nsw i32 %15, %16
  store i32 %add15, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %finish.addr, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @Uniform11(i32* %iy, float* %yfl) #0 {
entry:
  %iy.addr = alloca i32*, align 8
  %yfl.addr = alloca float*, align 8
  store i32* %iy, i32** %iy.addr, align 8
  store float* %yfl, float** %yfl.addr, align 8
  %0 = load i32*, i32** %iy.addr, align 8
  %1 = load i32, i32* %0, align 4
  %mul = mul nsw i32 4855, %1
  %add = add nsw i32 %mul, 1731
  %and = and i32 %add, 8191
  %2 = load i32*, i32** %iy.addr, align 8
  store i32 %and, i32* %2, align 4
  %3 = load i32*, i32** %iy.addr, align 8
  %4 = load i32, i32* %3, align 4
  %conv = sitofp i32 %4 to float
  %div = fdiv float %conv, 8.192000e+03
  %5 = load float*, float** %yfl.addr, align 8
  store float %div, float* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Exptab(i32 %n, %struct.complex* %e) #0 {
entry:
  %n.addr = alloca i32, align 4
  %e.addr = alloca %struct.complex*, align 8
  %theta = alloca float, align 4
  %divisor = alloca float, align 4
  %h = alloca [26 x float], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.complex* %e, %struct.complex** %e.addr, align 8
  store float 0x400921FB60000000, float* %theta, align 4
  store float 4.000000e+00, float* %divisor, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, float* %theta, align 4
  %2 = load float, float* %divisor, align 4
  %div = fdiv float %1, %2
  %call = call float @Cos(float %div)
  %mul = fmul float 2.000000e+00, %call
  %div1 = fdiv float 1.000000e+00, %mul
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [26 x float], [26 x float]* %h, i32 0, i64 %idxprom
  store float %div1, float* %arrayidx, align 4
  %4 = load float, float* %divisor, align 4
  %5 = load float, float* %divisor, align 4
  %add = fadd float %4, %5
  store float %add, float* %divisor, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %n.addr, align 4
  %div2 = sdiv i32 %7, 2
  store i32 %div2, i32* %m, align 4
  %8 = load i32, i32* %m, align 4
  %div3 = sdiv i32 %8, 2
  store i32 %div3, i32* %l, align 4
  store i32 1, i32* %j, align 4
  %9 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.complex, %struct.complex* %9, i64 1
  %rp = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  store float 1.000000e+00, float* %rp, align 4
  %10 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.complex, %struct.complex* %10, i64 1
  %ip = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx5, i32 0, i32 1
  store float 0.000000e+00, float* %ip, align 4
  %11 = load i32, i32* %l, align 4
  %add6 = add nsw i32 %11, 1
  %idxprom7 = sext i32 %add6 to i64
  %12 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.complex, %struct.complex* %12, i64 %idxprom7
  %rp9 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx8, i32 0, i32 0
  store float 0.000000e+00, float* %rp9, align 4
  %13 = load i32, i32* %l, align 4
  %add10 = add nsw i32 %13, 1
  %idxprom11 = sext i32 %add10 to i64
  %14 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.complex, %struct.complex* %14, i64 %idxprom11
  %ip13 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  store float 1.000000e+00, float* %ip13, align 4
  %15 = load i32, i32* %m, align 4
  %add14 = add nsw i32 %15, 1
  %idxprom15 = sext i32 %add14 to i64
  %16 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.complex, %struct.complex* %16, i64 %idxprom15
  %rp17 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx16, i32 0, i32 0
  store float -1.000000e+00, float* %rp17, align 4
  %17 = load i32, i32* %m, align 4
  %add18 = add nsw i32 %17, 1
  %idxprom19 = sext i32 %add18 to i64
  %18 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.complex, %struct.complex* %18, i64 %idxprom19
  %ip21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 1
  store float 0.000000e+00, float* %ip21, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.63, %for.end
  %19 = load i32, i32* %l, align 4
  %div22 = sdiv i32 %19, 2
  store i32 %div22, i32* %i, align 4
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %k, align 4
  br label %do.body.23

do.body.23:                                       ; preds = %do.cond, %do.body
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [26 x float], [26 x float]* %h, i32 0, i64 %idxprom24
  %22 = load float, float* %arrayidx25, align 4
  %23 = load i32, i32* %k, align 4
  %24 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %23, %24
  %add27 = add nsw i32 %add26, 1
  %idxprom28 = sext i32 %add27 to i64
  %25 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.complex, %struct.complex* %25, i64 %idxprom28
  %rp30 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 0
  %26 = load float, float* %rp30, align 4
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %27, %28
  %add31 = add nsw i32 %sub, 1
  %idxprom32 = sext i32 %add31 to i64
  %29 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.complex, %struct.complex* %29, i64 %idxprom32
  %rp34 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx33, i32 0, i32 0
  %30 = load float, float* %rp34, align 4
  %add35 = fadd float %26, %30
  %mul36 = fmul float %22, %add35
  %31 = load i32, i32* %k, align 4
  %add37 = add nsw i32 %31, 1
  %idxprom38 = sext i32 %add37 to i64
  %32 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.complex, %struct.complex* %32, i64 %idxprom38
  %rp40 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx39, i32 0, i32 0
  store float %mul36, float* %rp40, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %33 to i64
  %arrayidx42 = getelementptr inbounds [26 x float], [26 x float]* %h, i32 0, i64 %idxprom41
  %34 = load float, float* %arrayidx42, align 4
  %35 = load i32, i32* %k, align 4
  %36 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %35, %36
  %add44 = add nsw i32 %add43, 1
  %idxprom45 = sext i32 %add44 to i64
  %37 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.complex, %struct.complex* %37, i64 %idxprom45
  %ip47 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx46, i32 0, i32 1
  %38 = load float, float* %ip47, align 4
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %i, align 4
  %sub48 = sub nsw i32 %39, %40
  %add49 = add nsw i32 %sub48, 1
  %idxprom50 = sext i32 %add49 to i64
  %41 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.complex, %struct.complex* %41, i64 %idxprom50
  %ip52 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx51, i32 0, i32 1
  %42 = load float, float* %ip52, align 4
  %add53 = fadd float %38, %42
  %mul54 = fmul float %34, %add53
  %43 = load i32, i32* %k, align 4
  %add55 = add nsw i32 %43, 1
  %idxprom56 = sext i32 %add55 to i64
  %44 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.complex, %struct.complex* %44, i64 %idxprom56
  %ip58 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx57, i32 0, i32 1
  store float %mul54, float* %ip58, align 4
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %l, align 4
  %add59 = add nsw i32 %45, %46
  store i32 %add59, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.23
  %47 = load i32, i32* %k, align 4
  %48 = load i32, i32* %m, align 4
  %cmp60 = icmp sle i32 %47, %48
  br i1 %cmp60, label %do.body.23, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %j, align 4
  %add61 = add nsw i32 %49, 1
  %call62 = call i32 @Min0(i32 %add61, i32 25)
  store i32 %call62, i32* %j, align 4
  %50 = load i32, i32* %i, align 4
  store i32 %50, i32* %l, align 4
  br label %do.cond.63

do.cond.63:                                       ; preds = %do.end
  %51 = load i32, i32* %l, align 4
  %cmp64 = icmp sgt i32 %51, 1
  br i1 %cmp64, label %do.body, label %do.end.65

do.end.65:                                        ; preds = %do.cond.63
  ret void
}

; Function Attrs: nounwind uwtable
define void @Fft(i32 %n, %struct.complex* %z, %struct.complex* %w, %struct.complex* %e, float %sqrinv) #0 {
entry:
  %n.addr = alloca i32, align 4
  %z.addr = alloca %struct.complex*, align 8
  %w.addr = alloca %struct.complex*, align 8
  %e.addr = alloca %struct.complex*, align 8
  %sqrinv.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.complex* %z, %struct.complex** %z.addr, align 8
  store %struct.complex* %w, %struct.complex** %w.addr, align 8
  store %struct.complex* %e, %struct.complex** %e.addr, align 8
  store float %sqrinv, float* %sqrinv.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %m, align 4
  store i32 1, i32* %l, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.97, %entry
  store i32 0, i32* %k, align 4
  %1 = load i32, i32* %l, align 4
  store i32 %1, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %do.body.1

do.body.1:                                        ; preds = %do.cond.84, %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.cond, %do.body.1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx = getelementptr inbounds %struct.complex, %struct.complex* %3, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  %4 = load float, float* %rp, align 4
  %5 = load i32, i32* %m, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, %6
  %idxprom3 = sext i32 %add to i64
  %7 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.complex, %struct.complex* %7, i64 %idxprom3
  %rp5 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx4, i32 0, i32 0
  %8 = load float, float* %rp5, align 4
  %add6 = fadd float %4, %8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %k, align 4
  %add7 = add nsw i32 %9, %10
  %idxprom8 = sext i32 %add7 to i64
  %11 = load %struct.complex*, %struct.complex** %w.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.complex, %struct.complex* %11, i64 %idxprom8
  %rp10 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx9, i32 0, i32 0
  store float %add6, float* %rp10, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.complex, %struct.complex* %13, i64 %idxprom11
  %ip = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  %14 = load float, float* %ip, align 4
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %15, %16
  %idxprom14 = sext i32 %add13 to i64
  %17 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.complex, %struct.complex* %17, i64 %idxprom14
  %ip16 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx15, i32 0, i32 1
  %18 = load float, float* %ip16, align 4
  %add17 = fadd float %14, %18
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %19, %20
  %idxprom19 = sext i32 %add18 to i64
  %21 = load %struct.complex*, %struct.complex** %w.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.complex, %struct.complex* %21, i64 %idxprom19
  %ip21 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx20, i32 0, i32 1
  store float %add17, float* %ip21, align 4
  %22 = load i32, i32* %k, align 4
  %add22 = add nsw i32 %22, 1
  %idxprom23 = sext i32 %add22 to i64
  %23 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.complex, %struct.complex* %23, i64 %idxprom23
  %rp25 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx24, i32 0, i32 0
  %24 = load float, float* %rp25, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.complex, %struct.complex* %26, i64 %idxprom26
  %rp28 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx27, i32 0, i32 0
  %27 = load float, float* %rp28, align 4
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %m, align 4
  %add29 = add nsw i32 %28, %29
  %idxprom30 = sext i32 %add29 to i64
  %30 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.complex, %struct.complex* %30, i64 %idxprom30
  %rp32 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx31, i32 0, i32 0
  %31 = load float, float* %rp32, align 4
  %sub = fsub float %27, %31
  %mul = fmul float %24, %sub
  %32 = load i32, i32* %k, align 4
  %add33 = add nsw i32 %32, 1
  %idxprom34 = sext i32 %add33 to i64
  %33 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.complex, %struct.complex* %33, i64 %idxprom34
  %ip36 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx35, i32 0, i32 1
  %34 = load float, float* %ip36, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %35 to i64
  %36 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.complex, %struct.complex* %36, i64 %idxprom37
  %ip39 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx38, i32 0, i32 1
  %37 = load float, float* %ip39, align 4
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %m, align 4
  %add40 = add nsw i32 %38, %39
  %idxprom41 = sext i32 %add40 to i64
  %40 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.complex, %struct.complex* %40, i64 %idxprom41
  %ip43 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx42, i32 0, i32 1
  %41 = load float, float* %ip43, align 4
  %sub44 = fsub float %37, %41
  %mul45 = fmul float %34, %sub44
  %sub46 = fsub float %mul, %mul45
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %j, align 4
  %add47 = add nsw i32 %42, %43
  %idxprom48 = sext i32 %add47 to i64
  %44 = load %struct.complex*, %struct.complex** %w.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.complex, %struct.complex* %44, i64 %idxprom48
  %rp50 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx49, i32 0, i32 0
  store float %sub46, float* %rp50, align 4
  %45 = load i32, i32* %k, align 4
  %add51 = add nsw i32 %45, 1
  %idxprom52 = sext i32 %add51 to i64
  %46 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.complex, %struct.complex* %46, i64 %idxprom52
  %rp54 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx53, i32 0, i32 0
  %47 = load float, float* %rp54, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %48 to i64
  %49 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.complex, %struct.complex* %49, i64 %idxprom55
  %ip57 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx56, i32 0, i32 1
  %50 = load float, float* %ip57, align 4
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %m, align 4
  %add58 = add nsw i32 %51, %52
  %idxprom59 = sext i32 %add58 to i64
  %53 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.complex, %struct.complex* %53, i64 %idxprom59
  %ip61 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx60, i32 0, i32 1
  %54 = load float, float* %ip61, align 4
  %sub62 = fsub float %50, %54
  %mul63 = fmul float %47, %sub62
  %55 = load i32, i32* %k, align 4
  %add64 = add nsw i32 %55, 1
  %idxprom65 = sext i32 %add64 to i64
  %56 = load %struct.complex*, %struct.complex** %e.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.complex, %struct.complex* %56, i64 %idxprom65
  %ip67 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx66, i32 0, i32 1
  %57 = load float, float* %ip67, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %58 to i64
  %59 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.complex, %struct.complex* %59, i64 %idxprom68
  %rp70 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx69, i32 0, i32 0
  %60 = load float, float* %rp70, align 4
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %m, align 4
  %add71 = add nsw i32 %61, %62
  %idxprom72 = sext i32 %add71 to i64
  %63 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.complex, %struct.complex* %63, i64 %idxprom72
  %rp74 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx73, i32 0, i32 0
  %64 = load float, float* %rp74, align 4
  %sub75 = fsub float %60, %64
  %mul76 = fmul float %57, %sub75
  %add77 = fadd float %mul63, %mul76
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %j, align 4
  %add78 = add nsw i32 %65, %66
  %idxprom79 = sext i32 %add78 to i64
  %67 = load %struct.complex*, %struct.complex** %w.addr, align 8
  %arrayidx80 = getelementptr inbounds %struct.complex, %struct.complex* %67, i64 %idxprom79
  %ip81 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx80, i32 0, i32 1
  store float %add77, float* %ip81, align 4
  %68 = load i32, i32* %i, align 4
  %add82 = add nsw i32 %68, 1
  store i32 %add82, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %j, align 4
  %cmp = icmp sle i32 %69, %70
  br i1 %cmp, label %do.body.2, label %do.end

do.end:                                           ; preds = %do.cond
  %71 = load i32, i32* %j, align 4
  store i32 %71, i32* %k, align 4
  %72 = load i32, i32* %k, align 4
  %73 = load i32, i32* %l, align 4
  %add83 = add nsw i32 %72, %73
  store i32 %add83, i32* %j, align 4
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.end
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %m, align 4
  %cmp85 = icmp sle i32 %74, %75
  br i1 %cmp85, label %do.body.1, label %do.end.86

do.end.86:                                        ; preds = %do.cond.84
  store i32 1, i32* %index, align 4
  br label %do.body.87

do.body.87:                                       ; preds = %do.cond.93, %do.end.86
  %76 = load i32, i32* %index, align 4
  %idxprom88 = sext i32 %76 to i64
  %77 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.complex, %struct.complex* %77, i64 %idxprom88
  %78 = load i32, i32* %index, align 4
  %idxprom90 = sext i32 %78 to i64
  %79 = load %struct.complex*, %struct.complex** %w.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.complex, %struct.complex* %79, i64 %idxprom90
  %80 = bitcast %struct.complex* %arrayidx89 to i8*
  %81 = bitcast %struct.complex* %arrayidx91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 8, i32 4, i1 false)
  %82 = load i32, i32* %index, align 4
  %add92 = add nsw i32 %82, 1
  store i32 %add92, i32* %index, align 4
  br label %do.cond.93

do.cond.93:                                       ; preds = %do.body.87
  %83 = load i32, i32* %index, align 4
  %84 = load i32, i32* %n.addr, align 4
  %cmp94 = icmp sle i32 %83, %84
  br i1 %cmp94, label %do.body.87, label %do.end.95

do.end.95:                                        ; preds = %do.cond.93
  %85 = load i32, i32* %l, align 4
  %86 = load i32, i32* %l, align 4
  %add96 = add nsw i32 %85, %86
  store i32 %add96, i32* %l, align 4
  br label %do.cond.97

do.cond.97:                                       ; preds = %do.end.95
  %87 = load i32, i32* %l, align 4
  %88 = load i32, i32* %m, align 4
  %cmp98 = icmp sle i32 %87, %88
  br i1 %cmp98, label %do.body, label %do.end.99

do.end.99:                                        ; preds = %do.cond.97
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.99
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %n.addr, align 4
  %cmp100 = icmp sle i32 %89, %90
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %91 = load float, float* %sqrinv.addr, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %92 to i64
  %93 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.complex, %struct.complex* %93, i64 %idxprom101
  %rp103 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx102, i32 0, i32 0
  %94 = load float, float* %rp103, align 4
  %mul104 = fmul float %91, %94
  %95 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %95 to i64
  %96 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.complex, %struct.complex* %96, i64 %idxprom105
  %rp107 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx106, i32 0, i32 0
  store float %mul104, float* %rp107, align 4
  %97 = load float, float* %sqrinv.addr, align 4
  %sub108 = fsub float -0.000000e+00, %97
  %98 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %98 to i64
  %99 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.complex, %struct.complex* %99, i64 %idxprom109
  %ip111 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx110, i32 0, i32 1
  %100 = load float, float* %ip111, align 4
  %mul112 = fmul float %sub108, %100
  %101 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %101 to i64
  %102 = load %struct.complex*, %struct.complex** %z.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.complex, %struct.complex* %102, i64 %idxprom113
  %ip115 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx114, i32 0, i32 1
  store float %mul112, float* %ip115, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %103 = load i32, i32* %i, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @Oscar() #0 {
entry:
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  call void @Exptab(i32 256, %struct.complex* getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i32 0, i32 0))
  store i64 5767, i64* @seed, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* @seed, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %s, align 4
  call void @Uniform11(i32* %s, float* @zr)
  %2 = load i32, i32* %s, align 4
  %conv1 = sext i32 %2 to i64
  store i64 %conv1, i64* @seed, align 8
  call void @Uniform11(i32* %s, float* @zi)
  %3 = load i32, i32* %s, align 4
  %conv2 = sext i32 %3 to i64
  store i64 %conv2, i64* @seed, align 8
  %4 = load float, float* @zr, align 4
  %mul = fmul float 2.000000e+01, %4
  %sub = fsub float %mul, 1.000000e+01
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i32 0, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx, i32 0, i32 0
  store float %sub, float* %rp, align 4
  %6 = load float, float* @zi, align 4
  %mul3 = fmul float 2.000000e+01, %6
  %sub4 = fsub float %mul3, 1.000000e+01
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i32 0, i64 %idxprom5
  %ip = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx6, i32 0, i32 1
  store float %sub4, float* %ip, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.11, %for.end
  %9 = load i32, i32* %i, align 4
  %cmp8 = icmp sle i32 %9, 20
  br i1 %cmp8, label %for.body.10, label %for.end.13

for.body.10:                                      ; preds = %for.cond.7
  call void @Fft(i32 256, %struct.complex* getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i32 0, i32 0), %struct.complex* getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @w, i32 0, i32 0), %struct.complex* getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i32 0, i32 0), float 6.250000e-02)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.10
  %10 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.7

for.end.13:                                       ; preds = %for.cond.7
  call void @Printcomplex(%struct.complex* getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i32 0, i32 0), i32 1, i32 256, i32 17)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Oscar()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
