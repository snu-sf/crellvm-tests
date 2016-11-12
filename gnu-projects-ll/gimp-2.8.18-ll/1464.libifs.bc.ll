; ModuleID = './plug-ins/flame/libifs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_point = type { [6 x %struct.xform], [256 x [3 x double]], double, i32, double, double, double, i32, i32, i32, [2 x double], double, double, double, double, i32, i32, i32, [2 x [2 x double]], [2 x [2 x double]] }
%struct.xform = type { [29 x double], [3 x [2 x double]], double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@g_ascii_table = external constant i16*, align 8
@.str = private unnamed_addr constant [6 x i8] c"xform\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"image_size\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"wiggle\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pixels_per_unit\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"spatial_filter_radius\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"sample_density\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"nbatches\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"white_level\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"spatial_oversample\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"cmap\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"density\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"coefs\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"cmap_inter\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"%stime %g\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"%scmap %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"%simage_size %d %d center %g %g pixels_per_unit %g\0A\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"%sspatial_oversample %d spatial_filter_radius %g\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c" sample_density %g\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"%snbatches %d white_level %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"%sbrightness %g gamma %g cmap_inter %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"%sxform %d density %g color %g\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%svar\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"\0A%scoefs\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c" %g %g\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@random_gaussian.iset = internal global i32 0, align 4
@random_gaussian.gset = internal global double 0.000000e+00, align 8
@random_control_point.xform_distrib = internal global [9 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 5], align 16
@random_control_point.var_distrib = internal global [18 x i32] [i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5], align 16
@random_control_point.mixed_var_distrib = internal global [15 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5], align 16
@interpolate_angle.lastx = internal global double 0.000000e+00, align 8
@interpolate_angle.lasty = internal global double 0.000000e+00, align 8
@flam3_random_bit.n = internal global i32 0, align 4
@flam3_random_bit.l = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @iterate(%struct.control_point* %cp, i32 %n, i32 %fuse, [3 x double]* %points) #0 {
entry:
  %cp.addr = alloca %struct.control_point*, align 8
  %n.addr = alloca i32, align 4
  %fuse.addr = alloca i32, align 4
  %points.addr = alloca [3 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count_large = alloca i32, align 4
  %count_nan = alloca i32, align 4
  %xform_distrib = alloca [100 x i32], align 16
  %p = alloca [3 x double], align 16
  %t = alloca double, align 8
  %r = alloca double, align 8
  %dr = alloca double, align 8
  %fn = alloca i32, align 4
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %v = alloca double, align 8
  %nx = alloca double, align 8
  %ny = alloca double, align 8
  %nx126 = alloca double, align 8
  %ny127 = alloca double, align 8
  %nx144 = alloca double, align 8
  %ny145 = alloca double, align 8
  %r2 = alloca double, align 8
  %r2166 = alloca double, align 8
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %nx172 = alloca double, align 8
  %ny176 = alloca double, align 8
  %a = alloca double, align 8
  %c1194 = alloca double, align 8
  %c2195 = alloca double, align 8
  %nx196 = alloca double, align 8
  %ny197 = alloca double, align 8
  %nx230 = alloca double, align 8
  %ny231 = alloca double, align 8
  %nx263 = alloca double, align 8
  %ny264 = alloca double, align 8
  %theta = alloca double, align 8
  %r2287 = alloca double, align 8
  %nx288 = alloca double, align 8
  %ny289 = alloca double, align 8
  %theta325 = alloca double, align 8
  %r2326 = alloca double, align 8
  %nx327 = alloca double, align 8
  %ny328 = alloca double, align 8
  %theta364 = alloca double, align 8
  %r2365 = alloca double, align 8
  %nx366 = alloca double, align 8
  %ny367 = alloca double, align 8
  %theta405 = alloca double, align 8
  %r2406 = alloca double, align 8
  %theta445 = alloca double, align 8
  %r2446 = alloca double, align 8
  %theta481 = alloca double, align 8
  %r2482 = alloca double, align 8
  %theta518 = alloca double, align 8
  %r2519 = alloca double, align 8
  %n0 = alloca double, align 8
  %n1 = alloca double, align 8
  %m0 = alloca double, align 8
  %m1 = alloca double, align 8
  %theta561 = alloca double, align 8
  %r2562 = alloca double, align 8
  %nx563 = alloca double, align 8
  %ny564 = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %nx602 = alloca double, align 8
  %ny603 = alloca double, align 8
  %theta654 = alloca double, align 8
  %r2655 = alloca double, align 8
  %nx656 = alloca double, align 8
  %ny657 = alloca double, align 8
  %dx694 = alloca double, align 8
  %dy695 = alloca double, align 8
  %nx696 = alloca double, align 8
  %ny697 = alloca double, align 8
  %dx734 = alloca double, align 8
  %dy735 = alloca double, align 8
  %nx736 = alloca double, align 8
  %ny737 = alloca double, align 8
  %theta759 = alloca double, align 8
  %r2760 = alloca double, align 8
  %tsin = alloca double, align 8
  %tcos = alloca double, align 8
  %nx761 = alloca double, align 8
  %ny762 = alloca double, align 8
  %nx797 = alloca double, align 8
  %ny798 = alloca double, align 8
  %theta822 = alloca double, align 8
  %r2823 = alloca double, align 8
  %dx824 = alloca double, align 8
  %nx825 = alloca double, align 8
  %ny826 = alloca double, align 8
  %theta875 = alloca double, align 8
  %r2876 = alloca double, align 8
  %dx877 = alloca double, align 8
  %dy878 = alloca double, align 8
  %dx2 = alloca double, align 8
  %nx879 = alloca double, align 8
  %ny880 = alloca double, align 8
  %r2935 = alloca double, align 8
  %r2957 = alloca double, align 8
  %nx978 = alloca double, align 8
  %rx = alloca double, align 8
  %sinr = alloca double, align 8
  %cosr = alloca double, align 8
  %nois = alloca double, align 8
  %rx1018 = alloca double, align 8
  %sinr1019 = alloca double, align 8
  %cosr1020 = alloca double, align 8
  %nois1021 = alloca double, align 8
  %ang = alloca double, align 8
  %sina = alloca double, align 8
  %cosa = alloca double, align 8
  %r21044 = alloca double, align 8
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %fuse, i32* %fuse.addr, align 4
  store [3 x double]* %points, [3 x double]** %points.addr, align 8
  store i32 0, i32* %count_large, align 4
  store i32 0, i32* %count_nan, align 4
  %0 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  store double %1, double* %arrayidx2, align 8
  %2 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  store double %3, double* %arrayidx5, align 8
  %4 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 2
  %5 = load double, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  store double %5, double* %arrayidx8, align 8
  store double 0.000000e+00, double* %dr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom
  %density = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx9, i32 0, i32 2
  %9 = load double, double* %density, align 8
  %10 = load double, double* %dr, align 8
  %add = fadd double %10, %9
  store double %add, double* %dr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load double, double* %dr, align 8
  %div = fdiv double %12, 1.000000e+02
  store double %div, double* %dr, align 8
  store i32 0, i32* %j, align 4
  %13 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform10 = getelementptr inbounds %struct.control_point, %struct.control_point* %13, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform10, i32 0, i64 0
  %density12 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx11, i32 0, i32 2
  %14 = load double, double* %density12, align 8
  store double %14, double* %t, align 8
  store double 0.000000e+00, double* %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.26, %for.end
  %15 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %15, 100
  br i1 %cmp14, label %for.body.15, label %for.end.28

for.body.15:                                      ; preds = %for.cond.13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.15
  %16 = load double, double* %r, align 8
  %17 = load double, double* %t, align 8
  %cmp16 = fcmp oge double %16, %17
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %j, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %20 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform19 = getelementptr inbounds %struct.control_point, %struct.control_point* %20, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform19, i32 0, i64 %idxprom18
  %density21 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx20, i32 0, i32 2
  %21 = load double, double* %density21, align 8
  %22 = load double, double* %t, align 8
  %add22 = fadd double %22, %21
  store double %add22, double* %t, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], [100 x i32]* %xform_distrib, i32 0, i64 %idxprom23
  store i32 %23, i32* %arrayidx24, align 4
  %25 = load double, double* %dr, align 8
  %26 = load double, double* %r, align 8
  %add25 = fadd double %26, %25
  store double %add25, double* %r, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %while.end
  %27 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %27, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.13

for.end.28:                                       ; preds = %for.cond.13
  %28 = load i32, i32* %fuse.addr, align 4
  %sub = sub nsw i32 0, %28
  store i32 %sub, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.1081, %for.end.28
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %n.addr, align 4
  %cmp30 = icmp slt i32 %29, %30
  br i1 %cmp30, label %for.body.31, label %for.end.1083

for.body.31:                                      ; preds = %for.cond.29
  %call = call i32 @g_random_int_range(i32 0, i32 100)
  %idxprom32 = sext i32 %call to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* %xform_distrib, i32 0, i64 %idxprom32
  %31 = load i32, i32* %arrayidx33, align 4
  store i32 %31, i32* %fn, align 4
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %32 = load double, double* %arrayidx34, align 8
  %cmp35 = fcmp ogt double %32, 1.000000e+02
  br i1 %cmp35, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.31
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %33 = load double, double* %arrayidx36, align 8
  %cmp37 = fcmp olt double %33, -1.000000e+02
  br i1 %cmp37, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %34 = load double, double* %arrayidx39, align 8
  %cmp40 = fcmp ogt double %34, 1.000000e+02
  br i1 %cmp40, label %if.then, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.38
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %35 = load double, double* %arrayidx42, align 8
  %cmp43 = fcmp olt double %35, -1.000000e+02
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.41, %lor.lhs.false.38, %lor.lhs.false, %for.body.31
  %36 = load i32, i32* %count_large, align 4
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, i32* %count_large, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.41
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %37 = load double, double* %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %38 = load double, double* %arrayidx46, align 8
  %cmp47 = fcmp une double %37, %38
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end
  %39 = load i32, i32* %count_nan, align 4
  %inc49 = add nsw i32 %39, 1
  store i32 %inc49, i32* %count_nan, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  %40 = load double, double* %arrayidx51, align 8
  %41 = load i32, i32* %fn, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform53 = getelementptr inbounds %struct.control_point, %struct.control_point* %42, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform53, i32 0, i64 %idxprom52
  %color = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx54, i32 0, i32 3
  %43 = load double, double* %color, align 8
  %add55 = fadd double %40, %43
  %div56 = fdiv double %add55, 2.000000e+00
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  store double %div56, double* %arrayidx57, align 8
  %44 = load i32, i32* %fn, align 4
  %idxprom58 = sext i32 %44 to i64
  %45 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform59 = getelementptr inbounds %struct.control_point, %struct.control_point* %45, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform59, i32 0, i64 %idxprom58
  %c = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx60, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 0
  %arrayidx62 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx61, i32 0, i64 0
  %46 = load double, double* %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %47 = load double, double* %arrayidx63, align 8
  %mul = fmul double %46, %47
  %48 = load i32, i32* %fn, align 4
  %idxprom64 = sext i32 %48 to i64
  %49 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform65 = getelementptr inbounds %struct.control_point, %struct.control_point* %49, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform65, i32 0, i64 %idxprom64
  %c67 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx66, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c67, i32 0, i64 1
  %arrayidx69 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx68, i32 0, i64 0
  %50 = load double, double* %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %51 = load double, double* %arrayidx70, align 8
  %mul71 = fmul double %50, %51
  %add72 = fadd double %mul, %mul71
  %52 = load i32, i32* %fn, align 4
  %idxprom73 = sext i32 %52 to i64
  %53 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform74 = getelementptr inbounds %struct.control_point, %struct.control_point* %53, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform74, i32 0, i64 %idxprom73
  %c76 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx75, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c76, i32 0, i64 2
  %arrayidx78 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx77, i32 0, i64 0
  %54 = load double, double* %arrayidx78, align 8
  %add79 = fadd double %add72, %54
  store double %add79, double* %tx, align 8
  %55 = load i32, i32* %fn, align 4
  %idxprom80 = sext i32 %55 to i64
  %56 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform81 = getelementptr inbounds %struct.control_point, %struct.control_point* %56, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform81, i32 0, i64 %idxprom80
  %c83 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx82, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c83, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx84, i32 0, i64 1
  %57 = load double, double* %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %58 = load double, double* %arrayidx86, align 8
  %mul87 = fmul double %57, %58
  %59 = load i32, i32* %fn, align 4
  %idxprom88 = sext i32 %59 to i64
  %60 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform89 = getelementptr inbounds %struct.control_point, %struct.control_point* %60, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform89, i32 0, i64 %idxprom88
  %c91 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx90, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c91, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx92, i32 0, i64 1
  %61 = load double, double* %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %62 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double %61, %62
  %add96 = fadd double %mul87, %mul95
  %63 = load i32, i32* %fn, align 4
  %idxprom97 = sext i32 %63 to i64
  %64 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform98 = getelementptr inbounds %struct.control_point, %struct.control_point* %64, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform98, i32 0, i64 %idxprom97
  %c100 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx99, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c100, i32 0, i64 2
  %arrayidx102 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx101, i32 0, i64 1
  %65 = load double, double* %arrayidx102, align 8
  %add103 = fadd double %add96, %65
  store double %add103, double* %ty, align 8
  %arrayidx104 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx105, align 8
  %66 = load i32, i32* %fn, align 4
  %idxprom106 = sext i32 %66 to i64
  %67 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform107 = getelementptr inbounds %struct.control_point, %struct.control_point* %67, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform107, i32 0, i64 %idxprom106
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx108, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 0
  %68 = load double, double* %arrayidx109, align 8
  store double %68, double* %v, align 8
  %69 = load double, double* %v, align 8
  %cmp110 = fcmp ogt double %69, 0.000000e+00
  br i1 %cmp110, label %if.then.111, label %if.end.118

if.then.111:                                      ; preds = %if.end.50
  %70 = load double, double* %tx, align 8
  store double %70, double* %nx, align 8
  %71 = load double, double* %ty, align 8
  store double %71, double* %ny, align 8
  %72 = load double, double* %v, align 8
  %73 = load double, double* %nx, align 8
  %mul112 = fmul double %72, %73
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %74 = load double, double* %arrayidx113, align 8
  %add114 = fadd double %74, %mul112
  store double %add114, double* %arrayidx113, align 8
  %75 = load double, double* %v, align 8
  %76 = load double, double* %ny, align 8
  %mul115 = fmul double %75, %76
  %arrayidx116 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %77 = load double, double* %arrayidx116, align 8
  %add117 = fadd double %77, %mul115
  store double %add117, double* %arrayidx116, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.111, %if.end.50
  %78 = load i32, i32* %fn, align 4
  %idxprom119 = sext i32 %78 to i64
  %79 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform120 = getelementptr inbounds %struct.control_point, %struct.control_point* %79, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform120, i32 0, i64 %idxprom119
  %var122 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [29 x double], [29 x double]* %var122, i32 0, i64 1
  %80 = load double, double* %arrayidx123, align 8
  store double %80, double* %v, align 8
  %81 = load double, double* %v, align 8
  %cmp124 = fcmp ogt double %81, 0.000000e+00
  br i1 %cmp124, label %if.then.125, label %if.end.136

if.then.125:                                      ; preds = %if.end.118
  %82 = load double, double* %tx, align 8
  %call128 = call double @sin(double %82) #3
  store double %call128, double* %nx126, align 8
  %83 = load double, double* %ty, align 8
  %call129 = call double @sin(double %83) #3
  store double %call129, double* %ny127, align 8
  %84 = load double, double* %v, align 8
  %85 = load double, double* %nx126, align 8
  %mul130 = fmul double %84, %85
  %arrayidx131 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %86 = load double, double* %arrayidx131, align 8
  %add132 = fadd double %86, %mul130
  store double %add132, double* %arrayidx131, align 8
  %87 = load double, double* %v, align 8
  %88 = load double, double* %ny127, align 8
  %mul133 = fmul double %87, %88
  %arrayidx134 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %89 = load double, double* %arrayidx134, align 8
  %add135 = fadd double %89, %mul133
  store double %add135, double* %arrayidx134, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.125, %if.end.118
  %90 = load i32, i32* %fn, align 4
  %idxprom137 = sext i32 %90 to i64
  %91 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform138 = getelementptr inbounds %struct.control_point, %struct.control_point* %91, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform138, i32 0, i64 %idxprom137
  %var140 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [29 x double], [29 x double]* %var140, i32 0, i64 2
  %92 = load double, double* %arrayidx141, align 8
  store double %92, double* %v, align 8
  %93 = load double, double* %v, align 8
  %cmp142 = fcmp ogt double %93, 0.000000e+00
  br i1 %cmp142, label %if.then.143, label %if.end.158

if.then.143:                                      ; preds = %if.end.136
  %94 = load double, double* %tx, align 8
  %95 = load double, double* %tx, align 8
  %mul146 = fmul double %94, %95
  %96 = load double, double* %ty, align 8
  %97 = load double, double* %ty, align 8
  %mul147 = fmul double %96, %97
  %add148 = fadd double %mul146, %mul147
  %add149 = fadd double %add148, 1.000000e-06
  store double %add149, double* %r2, align 8
  %98 = load double, double* %tx, align 8
  %99 = load double, double* %r2, align 8
  %div150 = fdiv double %98, %99
  store double %div150, double* %nx144, align 8
  %100 = load double, double* %ty, align 8
  %101 = load double, double* %r2, align 8
  %div151 = fdiv double %100, %101
  store double %div151, double* %ny145, align 8
  %102 = load double, double* %v, align 8
  %103 = load double, double* %nx144, align 8
  %mul152 = fmul double %102, %103
  %arrayidx153 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %104 = load double, double* %arrayidx153, align 8
  %add154 = fadd double %104, %mul152
  store double %add154, double* %arrayidx153, align 8
  %105 = load double, double* %v, align 8
  %106 = load double, double* %ny145, align 8
  %mul155 = fmul double %105, %106
  %arrayidx156 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %107 = load double, double* %arrayidx156, align 8
  %add157 = fadd double %107, %mul155
  store double %add157, double* %arrayidx156, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.143, %if.end.136
  %108 = load i32, i32* %fn, align 4
  %idxprom159 = sext i32 %108 to i64
  %109 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform160 = getelementptr inbounds %struct.control_point, %struct.control_point* %109, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform160, i32 0, i64 %idxprom159
  %var162 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [29 x double], [29 x double]* %var162, i32 0, i64 3
  %110 = load double, double* %arrayidx163, align 8
  store double %110, double* %v, align 8
  %111 = load double, double* %v, align 8
  %cmp164 = fcmp ogt double %111, 0.000000e+00
  br i1 %cmp164, label %if.then.165, label %if.end.186

if.then.165:                                      ; preds = %if.end.158
  %112 = load double, double* %tx, align 8
  %113 = load double, double* %tx, align 8
  %mul167 = fmul double %112, %113
  %114 = load double, double* %ty, align 8
  %115 = load double, double* %ty, align 8
  %mul168 = fmul double %114, %115
  %add169 = fadd double %mul167, %mul168
  store double %add169, double* %r2166, align 8
  %116 = load double, double* %r2166, align 8
  %call170 = call double @sin(double %116) #3
  store double %call170, double* %c1, align 8
  %117 = load double, double* %r2166, align 8
  %call171 = call double @cos(double %117) #3
  store double %call171, double* %c2, align 8
  %118 = load double, double* %c1, align 8
  %119 = load double, double* %tx, align 8
  %mul173 = fmul double %118, %119
  %120 = load double, double* %c2, align 8
  %121 = load double, double* %ty, align 8
  %mul174 = fmul double %120, %121
  %sub175 = fsub double %mul173, %mul174
  store double %sub175, double* %nx172, align 8
  %122 = load double, double* %c2, align 8
  %123 = load double, double* %tx, align 8
  %mul177 = fmul double %122, %123
  %124 = load double, double* %c1, align 8
  %125 = load double, double* %ty, align 8
  %mul178 = fmul double %124, %125
  %add179 = fadd double %mul177, %mul178
  store double %add179, double* %ny176, align 8
  %126 = load double, double* %v, align 8
  %127 = load double, double* %nx172, align 8
  %mul180 = fmul double %126, %127
  %arrayidx181 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %128 = load double, double* %arrayidx181, align 8
  %add182 = fadd double %128, %mul180
  store double %add182, double* %arrayidx181, align 8
  %129 = load double, double* %v, align 8
  %130 = load double, double* %ny176, align 8
  %mul183 = fmul double %129, %130
  %arrayidx184 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %131 = load double, double* %arrayidx184, align 8
  %add185 = fadd double %131, %mul183
  store double %add185, double* %arrayidx184, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.165, %if.end.158
  %132 = load i32, i32* %fn, align 4
  %idxprom187 = sext i32 %132 to i64
  %133 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform188 = getelementptr inbounds %struct.control_point, %struct.control_point* %133, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform188, i32 0, i64 %idxprom187
  %var190 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx189, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [29 x double], [29 x double]* %var190, i32 0, i64 4
  %134 = load double, double* %arrayidx191, align 8
  store double %134, double* %v, align 8
  %135 = load double, double* %v, align 8
  %cmp192 = fcmp ogt double %135, 0.000000e+00
  br i1 %cmp192, label %if.then.193, label %if.end.222

if.then.193:                                      ; preds = %if.end.186
  %136 = load double, double* %tx, align 8
  %cmp198 = fcmp olt double %136, -1.000000e-10
  br i1 %cmp198, label %if.then.205, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %if.then.193
  %137 = load double, double* %tx, align 8
  %cmp200 = fcmp ogt double %137, 1.000000e-10
  br i1 %cmp200, label %if.then.205, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %lor.lhs.false.199
  %138 = load double, double* %ty, align 8
  %cmp202 = fcmp olt double %138, -1.000000e-10
  br i1 %cmp202, label %if.then.205, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.201
  %139 = load double, double* %ty, align 8
  %cmp204 = fcmp ogt double %139, 1.000000e-10
  br i1 %cmp204, label %if.then.205, label %if.else

if.then.205:                                      ; preds = %lor.lhs.false.203, %lor.lhs.false.201, %lor.lhs.false.199, %if.then.193
  %140 = load double, double* %tx, align 8
  %141 = load double, double* %ty, align 8
  %call206 = call double @atan2(double %140, double %141) #3
  store double %call206, double* %a, align 8
  br label %if.end.207

if.else:                                          ; preds = %lor.lhs.false.203
  store double 0.000000e+00, double* %a, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.else, %if.then.205
  %142 = load double, double* %a, align 8
  %call208 = call double @sin(double %142) #3
  store double %call208, double* %c1194, align 8
  %143 = load double, double* %a, align 8
  %call209 = call double @cos(double %143) #3
  store double %call209, double* %c2195, align 8
  %144 = load double, double* %c1194, align 8
  %145 = load double, double* %tx, align 8
  %mul210 = fmul double %144, %145
  %146 = load double, double* %c2195, align 8
  %147 = load double, double* %ty, align 8
  %mul211 = fmul double %146, %147
  %sub212 = fsub double %mul210, %mul211
  store double %sub212, double* %nx196, align 8
  %148 = load double, double* %c2195, align 8
  %149 = load double, double* %tx, align 8
  %mul213 = fmul double %148, %149
  %150 = load double, double* %c1194, align 8
  %151 = load double, double* %ty, align 8
  %mul214 = fmul double %150, %151
  %add215 = fadd double %mul213, %mul214
  store double %add215, double* %ny197, align 8
  %152 = load double, double* %v, align 8
  %153 = load double, double* %nx196, align 8
  %mul216 = fmul double %152, %153
  %arrayidx217 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %154 = load double, double* %arrayidx217, align 8
  %add218 = fadd double %154, %mul216
  store double %add218, double* %arrayidx217, align 8
  %155 = load double, double* %v, align 8
  %156 = load double, double* %ny197, align 8
  %mul219 = fmul double %155, %156
  %arrayidx220 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %157 = load double, double* %arrayidx220, align 8
  %add221 = fadd double %157, %mul219
  store double %add221, double* %arrayidx220, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.207, %if.end.186
  %158 = load i32, i32* %fn, align 4
  %idxprom223 = sext i32 %158 to i64
  %159 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform224 = getelementptr inbounds %struct.control_point, %struct.control_point* %159, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform224, i32 0, i64 %idxprom223
  %var226 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [29 x double], [29 x double]* %var226, i32 0, i64 5
  %160 = load double, double* %arrayidx227, align 8
  store double %160, double* %v, align 8
  %161 = load double, double* %v, align 8
  %cmp228 = fcmp ogt double %161, 0.000000e+00
  br i1 %cmp228, label %if.then.229, label %if.end.255

if.then.229:                                      ; preds = %if.end.222
  %162 = load double, double* %tx, align 8
  %cmp232 = fcmp olt double %162, -1.000000e-10
  br i1 %cmp232, label %if.then.239, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.then.229
  %163 = load double, double* %tx, align 8
  %cmp234 = fcmp ogt double %163, 1.000000e-10
  br i1 %cmp234, label %if.then.239, label %lor.lhs.false.235

lor.lhs.false.235:                                ; preds = %lor.lhs.false.233
  %164 = load double, double* %ty, align 8
  %cmp236 = fcmp olt double %164, -1.000000e-10
  br i1 %cmp236, label %if.then.239, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %lor.lhs.false.235
  %165 = load double, double* %ty, align 8
  %cmp238 = fcmp ogt double %165, 1.000000e-10
  br i1 %cmp238, label %if.then.239, label %if.else.242

if.then.239:                                      ; preds = %lor.lhs.false.237, %lor.lhs.false.235, %lor.lhs.false.233, %if.then.229
  %166 = load double, double* %tx, align 8
  %167 = load double, double* %ty, align 8
  %call240 = call double @atan2(double %166, double %167) #3
  %div241 = fdiv double %call240, 0x400921FB54442D18
  store double %div241, double* %nx230, align 8
  br label %if.end.243

if.else.242:                                      ; preds = %lor.lhs.false.237
  store double 0.000000e+00, double* %nx230, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.242, %if.then.239
  %168 = load double, double* %tx, align 8
  %169 = load double, double* %tx, align 8
  %mul244 = fmul double %168, %169
  %170 = load double, double* %ty, align 8
  %171 = load double, double* %ty, align 8
  %mul245 = fmul double %170, %171
  %add246 = fadd double %mul244, %mul245
  %call247 = call double @sqrt(double %add246) #3
  %sub248 = fsub double %call247, 1.000000e+00
  store double %sub248, double* %ny231, align 8
  %172 = load double, double* %v, align 8
  %173 = load double, double* %nx230, align 8
  %mul249 = fmul double %172, %173
  %arrayidx250 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %174 = load double, double* %arrayidx250, align 8
  %add251 = fadd double %174, %mul249
  store double %add251, double* %arrayidx250, align 8
  %175 = load double, double* %v, align 8
  %176 = load double, double* %ny231, align 8
  %mul252 = fmul double %175, %176
  %arrayidx253 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %177 = load double, double* %arrayidx253, align 8
  %add254 = fadd double %177, %mul252
  store double %add254, double* %arrayidx253, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.243, %if.end.222
  %178 = load i32, i32* %fn, align 4
  %idxprom256 = sext i32 %178 to i64
  %179 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform257 = getelementptr inbounds %struct.control_point, %struct.control_point* %179, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform257, i32 0, i64 %idxprom256
  %var259 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [29 x double], [29 x double]* %var259, i32 0, i64 6
  %180 = load double, double* %arrayidx260, align 8
  store double %180, double* %v, align 8
  %181 = load double, double* %v, align 8
  %cmp261 = fcmp ogt double %181, 0.000000e+00
  br i1 %cmp261, label %if.then.262, label %if.end.279

if.then.262:                                      ; preds = %if.end.255
  %182 = load double, double* %tx, align 8
  store double %182, double* %nx263, align 8
  %183 = load double, double* %ty, align 8
  store double %183, double* %ny264, align 8
  %184 = load double, double* %nx263, align 8
  %cmp265 = fcmp olt double %184, 0.000000e+00
  br i1 %cmp265, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %if.then.262
  %185 = load double, double* %nx263, align 8
  %mul267 = fmul double %185, 2.000000e+00
  store double %mul267, double* %nx263, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %if.then.262
  %186 = load double, double* %ny264, align 8
  %cmp269 = fcmp olt double %186, 0.000000e+00
  br i1 %cmp269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %if.end.268
  %187 = load double, double* %ny264, align 8
  %div271 = fdiv double %187, 2.000000e+00
  store double %div271, double* %ny264, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %if.end.268
  %188 = load double, double* %v, align 8
  %189 = load double, double* %nx263, align 8
  %mul273 = fmul double %188, %189
  %arrayidx274 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %190 = load double, double* %arrayidx274, align 8
  %add275 = fadd double %190, %mul273
  store double %add275, double* %arrayidx274, align 8
  %191 = load double, double* %v, align 8
  %192 = load double, double* %ny264, align 8
  %mul276 = fmul double %191, %192
  %arrayidx277 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %193 = load double, double* %arrayidx277, align 8
  %add278 = fadd double %193, %mul276
  store double %add278, double* %arrayidx277, align 8
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.272, %if.end.255
  %194 = load i32, i32* %fn, align 4
  %idxprom280 = sext i32 %194 to i64
  %195 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform281 = getelementptr inbounds %struct.control_point, %struct.control_point* %195, i32 0, i32 0
  %arrayidx282 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform281, i32 0, i64 %idxprom280
  %var283 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx282, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [29 x double], [29 x double]* %var283, i32 0, i64 7
  %196 = load double, double* %arrayidx284, align 8
  store double %196, double* %v, align 8
  %197 = load double, double* %v, align 8
  %cmp285 = fcmp ogt double %197, 0.000000e+00
  br i1 %cmp285, label %if.then.286, label %if.end.317

if.then.286:                                      ; preds = %if.end.279
  %198 = load double, double* %tx, align 8
  %cmp290 = fcmp olt double %198, -1.000000e-10
  br i1 %cmp290, label %if.then.297, label %lor.lhs.false.291

lor.lhs.false.291:                                ; preds = %if.then.286
  %199 = load double, double* %tx, align 8
  %cmp292 = fcmp ogt double %199, 1.000000e-10
  br i1 %cmp292, label %if.then.297, label %lor.lhs.false.293

lor.lhs.false.293:                                ; preds = %lor.lhs.false.291
  %200 = load double, double* %ty, align 8
  %cmp294 = fcmp olt double %200, -1.000000e-10
  br i1 %cmp294, label %if.then.297, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %lor.lhs.false.293
  %201 = load double, double* %ty, align 8
  %cmp296 = fcmp ogt double %201, 1.000000e-10
  br i1 %cmp296, label %if.then.297, label %if.else.299

if.then.297:                                      ; preds = %lor.lhs.false.295, %lor.lhs.false.293, %lor.lhs.false.291, %if.then.286
  %202 = load double, double* %tx, align 8
  %203 = load double, double* %ty, align 8
  %call298 = call double @atan2(double %202, double %203) #3
  store double %call298, double* %theta, align 8
  br label %if.end.300

if.else.299:                                      ; preds = %lor.lhs.false.295
  store double 0.000000e+00, double* %theta, align 8
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.299, %if.then.297
  %204 = load double, double* %tx, align 8
  %205 = load double, double* %tx, align 8
  %mul301 = fmul double %204, %205
  %206 = load double, double* %ty, align 8
  %207 = load double, double* %ty, align 8
  %mul302 = fmul double %206, %207
  %add303 = fadd double %mul301, %mul302
  %call304 = call double @sqrt(double %add303) #3
  store double %call304, double* %r2287, align 8
  %208 = load double, double* %theta, align 8
  %209 = load double, double* %r2287, align 8
  %add305 = fadd double %208, %209
  %call306 = call double @sin(double %add305) #3
  %210 = load double, double* %r2287, align 8
  %mul307 = fmul double %call306, %210
  store double %mul307, double* %nx288, align 8
  %211 = load double, double* %theta, align 8
  %212 = load double, double* %r2287, align 8
  %sub308 = fsub double %211, %212
  %call309 = call double @cos(double %sub308) #3
  %213 = load double, double* %r2287, align 8
  %mul310 = fmul double %call309, %213
  store double %mul310, double* %ny289, align 8
  %214 = load double, double* %v, align 8
  %215 = load double, double* %nx288, align 8
  %mul311 = fmul double %214, %215
  %arrayidx312 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %216 = load double, double* %arrayidx312, align 8
  %add313 = fadd double %216, %mul311
  store double %add313, double* %arrayidx312, align 8
  %217 = load double, double* %v, align 8
  %218 = load double, double* %ny289, align 8
  %mul314 = fmul double %217, %218
  %arrayidx315 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %219 = load double, double* %arrayidx315, align 8
  %add316 = fadd double %219, %mul314
  store double %add316, double* %arrayidx315, align 8
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.300, %if.end.279
  %220 = load i32, i32* %fn, align 4
  %idxprom318 = sext i32 %220 to i64
  %221 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform319 = getelementptr inbounds %struct.control_point, %struct.control_point* %221, i32 0, i32 0
  %arrayidx320 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform319, i32 0, i64 %idxprom318
  %var321 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx320, i32 0, i32 0
  %arrayidx322 = getelementptr inbounds [29 x double], [29 x double]* %var321, i32 0, i64 8
  %222 = load double, double* %arrayidx322, align 8
  store double %222, double* %v, align 8
  %223 = load double, double* %v, align 8
  %cmp323 = fcmp ogt double %223, 0.000000e+00
  br i1 %cmp323, label %if.then.324, label %if.end.356

if.then.324:                                      ; preds = %if.end.317
  %224 = load double, double* %tx, align 8
  %cmp329 = fcmp olt double %224, -1.000000e-10
  br i1 %cmp329, label %if.then.336, label %lor.lhs.false.330

lor.lhs.false.330:                                ; preds = %if.then.324
  %225 = load double, double* %tx, align 8
  %cmp331 = fcmp ogt double %225, 1.000000e-10
  br i1 %cmp331, label %if.then.336, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %lor.lhs.false.330
  %226 = load double, double* %ty, align 8
  %cmp333 = fcmp olt double %226, -1.000000e-10
  br i1 %cmp333, label %if.then.336, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %lor.lhs.false.332
  %227 = load double, double* %ty, align 8
  %cmp335 = fcmp ogt double %227, 1.000000e-10
  br i1 %cmp335, label %if.then.336, label %if.else.338

if.then.336:                                      ; preds = %lor.lhs.false.334, %lor.lhs.false.332, %lor.lhs.false.330, %if.then.324
  %228 = load double, double* %tx, align 8
  %229 = load double, double* %ty, align 8
  %call337 = call double @atan2(double %228, double %229) #3
  store double %call337, double* %theta325, align 8
  br label %if.end.339

if.else.338:                                      ; preds = %lor.lhs.false.334
  store double 0.000000e+00, double* %theta325, align 8
  br label %if.end.339

if.end.339:                                       ; preds = %if.else.338, %if.then.336
  %230 = load double, double* %tx, align 8
  %231 = load double, double* %tx, align 8
  %mul340 = fmul double %230, %231
  %232 = load double, double* %ty, align 8
  %233 = load double, double* %ty, align 8
  %mul341 = fmul double %232, %233
  %add342 = fadd double %mul340, %mul341
  %call343 = call double @sqrt(double %add342) #3
  store double %call343, double* %r2326, align 8
  %234 = load double, double* %r2326, align 8
  %235 = load double, double* %theta325, align 8
  %mul344 = fmul double %235, %234
  store double %mul344, double* %theta325, align 8
  %236 = load double, double* %theta325, align 8
  %call345 = call double @sin(double %236) #3
  %237 = load double, double* %r2326, align 8
  %mul346 = fmul double %call345, %237
  store double %mul346, double* %nx327, align 8
  %238 = load double, double* %theta325, align 8
  %call347 = call double @cos(double %238) #3
  %239 = load double, double* %r2326, align 8
  %sub348 = fsub double -0.000000e+00, %239
  %mul349 = fmul double %call347, %sub348
  store double %mul349, double* %ny328, align 8
  %240 = load double, double* %v, align 8
  %241 = load double, double* %nx327, align 8
  %mul350 = fmul double %240, %241
  %arrayidx351 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %242 = load double, double* %arrayidx351, align 8
  %add352 = fadd double %242, %mul350
  store double %add352, double* %arrayidx351, align 8
  %243 = load double, double* %v, align 8
  %244 = load double, double* %ny328, align 8
  %mul353 = fmul double %243, %244
  %arrayidx354 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %245 = load double, double* %arrayidx354, align 8
  %add355 = fadd double %245, %mul353
  store double %add355, double* %arrayidx354, align 8
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.339, %if.end.317
  %246 = load i32, i32* %fn, align 4
  %idxprom357 = sext i32 %246 to i64
  %247 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform358 = getelementptr inbounds %struct.control_point, %struct.control_point* %247, i32 0, i32 0
  %arrayidx359 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform358, i32 0, i64 %idxprom357
  %var360 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx359, i32 0, i32 0
  %arrayidx361 = getelementptr inbounds [29 x double], [29 x double]* %var360, i32 0, i64 9
  %248 = load double, double* %arrayidx361, align 8
  store double %248, double* %v, align 8
  %249 = load double, double* %v, align 8
  %cmp362 = fcmp ogt double %249, 0.000000e+00
  br i1 %cmp362, label %if.then.363, label %if.end.397

if.then.363:                                      ; preds = %if.end.356
  %250 = load double, double* %tx, align 8
  %cmp368 = fcmp olt double %250, -1.000000e-10
  br i1 %cmp368, label %if.then.375, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %if.then.363
  %251 = load double, double* %tx, align 8
  %cmp370 = fcmp ogt double %251, 1.000000e-10
  br i1 %cmp370, label %if.then.375, label %lor.lhs.false.371

lor.lhs.false.371:                                ; preds = %lor.lhs.false.369
  %252 = load double, double* %ty, align 8
  %cmp372 = fcmp olt double %252, -1.000000e-10
  br i1 %cmp372, label %if.then.375, label %lor.lhs.false.373

lor.lhs.false.373:                                ; preds = %lor.lhs.false.371
  %253 = load double, double* %ty, align 8
  %cmp374 = fcmp ogt double %253, 1.000000e-10
  br i1 %cmp374, label %if.then.375, label %if.else.377

if.then.375:                                      ; preds = %lor.lhs.false.373, %lor.lhs.false.371, %lor.lhs.false.369, %if.then.363
  %254 = load double, double* %tx, align 8
  %255 = load double, double* %ty, align 8
  %call376 = call double @atan2(double %254, double %255) #3
  store double %call376, double* %theta364, align 8
  br label %if.end.378

if.else.377:                                      ; preds = %lor.lhs.false.373
  store double 0.000000e+00, double* %theta364, align 8
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.377, %if.then.375
  %256 = load double, double* %tx, align 8
  %mul379 = fmul double %256, 0x400921FB54442D18
  store double %mul379, double* %nx366, align 8
  %257 = load double, double* %ty, align 8
  %mul380 = fmul double %257, 0x400921FB54442D18
  store double %mul380, double* %ny367, align 8
  %258 = load double, double* %nx366, align 8
  %259 = load double, double* %nx366, align 8
  %mul381 = fmul double %258, %259
  %260 = load double, double* %ny367, align 8
  %mul382 = fmul double %mul381, %260
  %261 = load double, double* %ny367, align 8
  %mul383 = fmul double %mul382, %261
  %call384 = call double @sqrt(double %mul383) #3
  store double %call384, double* %r2365, align 8
  %262 = load double, double* %v, align 8
  %263 = load double, double* %r2365, align 8
  %call385 = call double @sin(double %263) #3
  %mul386 = fmul double %262, %call385
  %264 = load double, double* %theta364, align 8
  %mul387 = fmul double %mul386, %264
  %div388 = fdiv double %mul387, 0x400921FB54442D18
  %arrayidx389 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %265 = load double, double* %arrayidx389, align 8
  %add390 = fadd double %265, %div388
  store double %add390, double* %arrayidx389, align 8
  %266 = load double, double* %v, align 8
  %267 = load double, double* %r2365, align 8
  %call391 = call double @cos(double %267) #3
  %mul392 = fmul double %266, %call391
  %268 = load double, double* %theta364, align 8
  %mul393 = fmul double %mul392, %268
  %div394 = fdiv double %mul393, 0x400921FB54442D18
  %arrayidx395 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %269 = load double, double* %arrayidx395, align 8
  %add396 = fadd double %269, %div394
  store double %add396, double* %arrayidx395, align 8
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.378, %if.end.356
  %270 = load i32, i32* %fn, align 4
  %idxprom398 = sext i32 %270 to i64
  %271 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform399 = getelementptr inbounds %struct.control_point, %struct.control_point* %271, i32 0, i32 0
  %arrayidx400 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform399, i32 0, i64 %idxprom398
  %var401 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx400, i32 0, i32 0
  %arrayidx402 = getelementptr inbounds [29 x double], [29 x double]* %var401, i32 0, i64 10
  %272 = load double, double* %arrayidx402, align 8
  store double %272, double* %v, align 8
  %273 = load double, double* %v, align 8
  %cmp403 = fcmp ogt double %273, 0.000000e+00
  br i1 %cmp403, label %if.then.404, label %if.end.437

if.then.404:                                      ; preds = %if.end.397
  %274 = load double, double* %tx, align 8
  %cmp407 = fcmp olt double %274, -1.000000e-10
  br i1 %cmp407, label %if.then.414, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %if.then.404
  %275 = load double, double* %tx, align 8
  %cmp409 = fcmp ogt double %275, 1.000000e-10
  br i1 %cmp409, label %if.then.414, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %lor.lhs.false.408
  %276 = load double, double* %ty, align 8
  %cmp411 = fcmp olt double %276, -1.000000e-10
  br i1 %cmp411, label %if.then.414, label %lor.lhs.false.412

lor.lhs.false.412:                                ; preds = %lor.lhs.false.410
  %277 = load double, double* %ty, align 8
  %cmp413 = fcmp ogt double %277, 1.000000e-10
  br i1 %cmp413, label %if.then.414, label %if.else.416

if.then.414:                                      ; preds = %lor.lhs.false.412, %lor.lhs.false.410, %lor.lhs.false.408, %if.then.404
  %278 = load double, double* %tx, align 8
  %279 = load double, double* %ty, align 8
  %call415 = call double @atan2(double %278, double %279) #3
  store double %call415, double* %theta405, align 8
  br label %if.end.417

if.else.416:                                      ; preds = %lor.lhs.false.412
  store double 0.000000e+00, double* %theta405, align 8
  br label %if.end.417

if.end.417:                                       ; preds = %if.else.416, %if.then.414
  %280 = load double, double* %tx, align 8
  %281 = load double, double* %tx, align 8
  %mul418 = fmul double %280, %281
  %282 = load double, double* %ty, align 8
  %283 = load double, double* %ty, align 8
  %mul419 = fmul double %282, %283
  %add420 = fadd double %mul418, %mul419
  %call421 = call double @sqrt(double %add420) #3
  %add422 = fadd double %call421, 1.000000e-06
  store double %add422, double* %r2406, align 8
  %284 = load double, double* %v, align 8
  %285 = load double, double* %theta405, align 8
  %call423 = call double @cos(double %285) #3
  %286 = load double, double* %r2406, align 8
  %call424 = call double @sin(double %286) #3
  %add425 = fadd double %call423, %call424
  %mul426 = fmul double %284, %add425
  %287 = load double, double* %r2406, align 8
  %div427 = fdiv double %mul426, %287
  %arrayidx428 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %288 = load double, double* %arrayidx428, align 8
  %add429 = fadd double %288, %div427
  store double %add429, double* %arrayidx428, align 8
  %289 = load double, double* %v, align 8
  %290 = load double, double* %theta405, align 8
  %call430 = call double @cos(double %290) #3
  %291 = load double, double* %r2406, align 8
  %call431 = call double @cos(double %291) #3
  %add432 = fadd double %call430, %call431
  %mul433 = fmul double %289, %add432
  %292 = load double, double* %r2406, align 8
  %div434 = fdiv double %mul433, %292
  %arrayidx435 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %293 = load double, double* %arrayidx435, align 8
  %add436 = fadd double %293, %div434
  store double %add436, double* %arrayidx435, align 8
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.417, %if.end.397
  %294 = load i32, i32* %fn, align 4
  %idxprom438 = sext i32 %294 to i64
  %295 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform439 = getelementptr inbounds %struct.control_point, %struct.control_point* %295, i32 0, i32 0
  %arrayidx440 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform439, i32 0, i64 %idxprom438
  %var441 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx440, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [29 x double], [29 x double]* %var441, i32 0, i64 11
  %296 = load double, double* %arrayidx442, align 8
  store double %296, double* %v, align 8
  %297 = load double, double* %v, align 8
  %cmp443 = fcmp ogt double %297, 0.000000e+00
  br i1 %cmp443, label %if.then.444, label %if.end.473

if.then.444:                                      ; preds = %if.end.437
  %298 = load double, double* %tx, align 8
  %cmp447 = fcmp olt double %298, -1.000000e-10
  br i1 %cmp447, label %if.then.454, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %if.then.444
  %299 = load double, double* %tx, align 8
  %cmp449 = fcmp ogt double %299, 1.000000e-10
  br i1 %cmp449, label %if.then.454, label %lor.lhs.false.450

lor.lhs.false.450:                                ; preds = %lor.lhs.false.448
  %300 = load double, double* %ty, align 8
  %cmp451 = fcmp olt double %300, -1.000000e-10
  br i1 %cmp451, label %if.then.454, label %lor.lhs.false.452

lor.lhs.false.452:                                ; preds = %lor.lhs.false.450
  %301 = load double, double* %ty, align 8
  %cmp453 = fcmp ogt double %301, 1.000000e-10
  br i1 %cmp453, label %if.then.454, label %if.else.456

if.then.454:                                      ; preds = %lor.lhs.false.452, %lor.lhs.false.450, %lor.lhs.false.448, %if.then.444
  %302 = load double, double* %tx, align 8
  %303 = load double, double* %ty, align 8
  %call455 = call double @atan2(double %302, double %303) #3
  store double %call455, double* %theta445, align 8
  br label %if.end.457

if.else.456:                                      ; preds = %lor.lhs.false.452
  store double 0.000000e+00, double* %theta445, align 8
  br label %if.end.457

if.end.457:                                       ; preds = %if.else.456, %if.then.454
  %304 = load double, double* %tx, align 8
  %305 = load double, double* %tx, align 8
  %mul458 = fmul double %304, %305
  %306 = load double, double* %ty, align 8
  %307 = load double, double* %ty, align 8
  %mul459 = fmul double %306, %307
  %add460 = fadd double %mul458, %mul459
  %call461 = call double @sqrt(double %add460) #3
  %add462 = fadd double %call461, 1.000000e-06
  store double %add462, double* %r2446, align 8
  %308 = load double, double* %v, align 8
  %309 = load double, double* %theta445, align 8
  %call463 = call double @sin(double %309) #3
  %mul464 = fmul double %308, %call463
  %310 = load double, double* %r2446, align 8
  %div465 = fdiv double %mul464, %310
  %arrayidx466 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %311 = load double, double* %arrayidx466, align 8
  %add467 = fadd double %311, %div465
  store double %add467, double* %arrayidx466, align 8
  %312 = load double, double* %v, align 8
  %313 = load double, double* %theta445, align 8
  %call468 = call double @cos(double %313) #3
  %mul469 = fmul double %312, %call468
  %314 = load double, double* %r2446, align 8
  %mul470 = fmul double %mul469, %314
  %arrayidx471 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %315 = load double, double* %arrayidx471, align 8
  %add472 = fadd double %315, %mul470
  store double %add472, double* %arrayidx471, align 8
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.457, %if.end.437
  %316 = load i32, i32* %fn, align 4
  %idxprom474 = sext i32 %316 to i64
  %317 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform475 = getelementptr inbounds %struct.control_point, %struct.control_point* %317, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform475, i32 0, i64 %idxprom474
  %var477 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx476, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [29 x double], [29 x double]* %var477, i32 0, i64 12
  %318 = load double, double* %arrayidx478, align 8
  store double %318, double* %v, align 8
  %319 = load double, double* %v, align 8
  %cmp479 = fcmp ogt double %319, 0.000000e+00
  br i1 %cmp479, label %if.then.480, label %if.end.510

if.then.480:                                      ; preds = %if.end.473
  %320 = load double, double* %tx, align 8
  %cmp483 = fcmp olt double %320, -1.000000e-10
  br i1 %cmp483, label %if.then.490, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %if.then.480
  %321 = load double, double* %tx, align 8
  %cmp485 = fcmp ogt double %321, 1.000000e-10
  br i1 %cmp485, label %if.then.490, label %lor.lhs.false.486

lor.lhs.false.486:                                ; preds = %lor.lhs.false.484
  %322 = load double, double* %ty, align 8
  %cmp487 = fcmp olt double %322, -1.000000e-10
  br i1 %cmp487, label %if.then.490, label %lor.lhs.false.488

lor.lhs.false.488:                                ; preds = %lor.lhs.false.486
  %323 = load double, double* %ty, align 8
  %cmp489 = fcmp ogt double %323, 1.000000e-10
  br i1 %cmp489, label %if.then.490, label %if.else.492

if.then.490:                                      ; preds = %lor.lhs.false.488, %lor.lhs.false.486, %lor.lhs.false.484, %if.then.480
  %324 = load double, double* %tx, align 8
  %325 = load double, double* %ty, align 8
  %call491 = call double @atan2(double %324, double %325) #3
  store double %call491, double* %theta481, align 8
  br label %if.end.493

if.else.492:                                      ; preds = %lor.lhs.false.488
  store double 0.000000e+00, double* %theta481, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.else.492, %if.then.490
  %326 = load double, double* %tx, align 8
  %327 = load double, double* %tx, align 8
  %mul494 = fmul double %326, %327
  %328 = load double, double* %ty, align 8
  %329 = load double, double* %ty, align 8
  %mul495 = fmul double %328, %329
  %add496 = fadd double %mul494, %mul495
  %call497 = call double @sqrt(double %add496) #3
  store double %call497, double* %r2482, align 8
  %330 = load double, double* %v, align 8
  %331 = load double, double* %theta481, align 8
  %call498 = call double @sin(double %331) #3
  %mul499 = fmul double %330, %call498
  %332 = load double, double* %r2482, align 8
  %call500 = call double @cos(double %332) #3
  %mul501 = fmul double %mul499, %call500
  %arrayidx502 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %333 = load double, double* %arrayidx502, align 8
  %add503 = fadd double %333, %mul501
  store double %add503, double* %arrayidx502, align 8
  %334 = load double, double* %v, align 8
  %335 = load double, double* %theta481, align 8
  %call504 = call double @cos(double %335) #3
  %mul505 = fmul double %334, %call504
  %336 = load double, double* %r2482, align 8
  %call506 = call double @sin(double %336) #3
  %mul507 = fmul double %mul505, %call506
  %arrayidx508 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %337 = load double, double* %arrayidx508, align 8
  %add509 = fadd double %337, %mul507
  store double %add509, double* %arrayidx508, align 8
  br label %if.end.510

if.end.510:                                       ; preds = %if.end.493, %if.end.473
  %338 = load i32, i32* %fn, align 4
  %idxprom511 = sext i32 %338 to i64
  %339 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform512 = getelementptr inbounds %struct.control_point, %struct.control_point* %339, i32 0, i32 0
  %arrayidx513 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform512, i32 0, i64 %idxprom511
  %var514 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx513, i32 0, i32 0
  %arrayidx515 = getelementptr inbounds [29 x double], [29 x double]* %var514, i32 0, i64 13
  %340 = load double, double* %arrayidx515, align 8
  store double %340, double* %v, align 8
  %341 = load double, double* %v, align 8
  %cmp516 = fcmp ogt double %341, 0.000000e+00
  br i1 %cmp516, label %if.then.517, label %if.end.553

if.then.517:                                      ; preds = %if.end.510
  %342 = load double, double* %tx, align 8
  %cmp520 = fcmp olt double %342, -1.000000e-10
  br i1 %cmp520, label %if.then.527, label %lor.lhs.false.521

lor.lhs.false.521:                                ; preds = %if.then.517
  %343 = load double, double* %tx, align 8
  %cmp522 = fcmp ogt double %343, 1.000000e-10
  br i1 %cmp522, label %if.then.527, label %lor.lhs.false.523

lor.lhs.false.523:                                ; preds = %lor.lhs.false.521
  %344 = load double, double* %ty, align 8
  %cmp524 = fcmp olt double %344, -1.000000e-10
  br i1 %cmp524, label %if.then.527, label %lor.lhs.false.525

lor.lhs.false.525:                                ; preds = %lor.lhs.false.523
  %345 = load double, double* %ty, align 8
  %cmp526 = fcmp ogt double %345, 1.000000e-10
  br i1 %cmp526, label %if.then.527, label %if.else.529

if.then.527:                                      ; preds = %lor.lhs.false.525, %lor.lhs.false.523, %lor.lhs.false.521, %if.then.517
  %346 = load double, double* %tx, align 8
  %347 = load double, double* %ty, align 8
  %call528 = call double @atan2(double %346, double %347) #3
  store double %call528, double* %theta518, align 8
  br label %if.end.530

if.else.529:                                      ; preds = %lor.lhs.false.525
  store double 0.000000e+00, double* %theta518, align 8
  br label %if.end.530

if.end.530:                                       ; preds = %if.else.529, %if.then.527
  %348 = load double, double* %tx, align 8
  %349 = load double, double* %tx, align 8
  %mul531 = fmul double %348, %349
  %350 = load double, double* %ty, align 8
  %351 = load double, double* %ty, align 8
  %mul532 = fmul double %350, %351
  %add533 = fadd double %mul531, %mul532
  %call534 = call double @sqrt(double %add533) #3
  store double %call534, double* %r2519, align 8
  %352 = load double, double* %theta518, align 8
  %353 = load double, double* %r2519, align 8
  %add535 = fadd double %352, %353
  %call536 = call double @sin(double %add535) #3
  store double %call536, double* %n0, align 8
  %354 = load double, double* %theta518, align 8
  %355 = load double, double* %r2519, align 8
  %sub537 = fsub double %354, %355
  %call538 = call double @cos(double %sub537) #3
  store double %call538, double* %n1, align 8
  %356 = load double, double* %n0, align 8
  %357 = load double, double* %n0, align 8
  %mul539 = fmul double %356, %357
  %358 = load double, double* %n0, align 8
  %mul540 = fmul double %mul539, %358
  %359 = load double, double* %r2519, align 8
  %mul541 = fmul double %mul540, %359
  store double %mul541, double* %m0, align 8
  %360 = load double, double* %n1, align 8
  %361 = load double, double* %n1, align 8
  %mul542 = fmul double %360, %361
  %362 = load double, double* %n1, align 8
  %mul543 = fmul double %mul542, %362
  %363 = load double, double* %r2519, align 8
  %mul544 = fmul double %mul543, %363
  store double %mul544, double* %m1, align 8
  %364 = load double, double* %v, align 8
  %365 = load double, double* %m0, align 8
  %366 = load double, double* %m1, align 8
  %add545 = fadd double %365, %366
  %mul546 = fmul double %364, %add545
  %arrayidx547 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %367 = load double, double* %arrayidx547, align 8
  %add548 = fadd double %367, %mul546
  store double %add548, double* %arrayidx547, align 8
  %368 = load double, double* %v, align 8
  %369 = load double, double* %m0, align 8
  %370 = load double, double* %m1, align 8
  %sub549 = fsub double %369, %370
  %mul550 = fmul double %368, %sub549
  %arrayidx551 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %371 = load double, double* %arrayidx551, align 8
  %add552 = fadd double %371, %mul550
  store double %add552, double* %arrayidx551, align 8
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.530, %if.end.510
  %372 = load i32, i32* %fn, align 4
  %idxprom554 = sext i32 %372 to i64
  %373 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform555 = getelementptr inbounds %struct.control_point, %struct.control_point* %373, i32 0, i32 0
  %arrayidx556 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform555, i32 0, i64 %idxprom554
  %var557 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx556, i32 0, i32 0
  %arrayidx558 = getelementptr inbounds [29 x double], [29 x double]* %var557, i32 0, i64 14
  %374 = load double, double* %arrayidx558, align 8
  store double %374, double* %v, align 8
  %375 = load double, double* %v, align 8
  %cmp559 = fcmp ogt double %375, 0.000000e+00
  br i1 %cmp559, label %if.then.560, label %if.end.594

if.then.560:                                      ; preds = %if.end.553
  %376 = load double, double* %tx, align 8
  %cmp565 = fcmp olt double %376, -1.000000e-10
  br i1 %cmp565, label %if.then.572, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %if.then.560
  %377 = load double, double* %tx, align 8
  %cmp567 = fcmp ogt double %377, 1.000000e-10
  br i1 %cmp567, label %if.then.572, label %lor.lhs.false.568

lor.lhs.false.568:                                ; preds = %lor.lhs.false.566
  %378 = load double, double* %ty, align 8
  %cmp569 = fcmp olt double %378, -1.000000e-10
  br i1 %cmp569, label %if.then.572, label %lor.lhs.false.570

lor.lhs.false.570:                                ; preds = %lor.lhs.false.568
  %379 = load double, double* %ty, align 8
  %cmp571 = fcmp ogt double %379, 1.000000e-10
  br i1 %cmp571, label %if.then.572, label %if.else.574

if.then.572:                                      ; preds = %lor.lhs.false.570, %lor.lhs.false.568, %lor.lhs.false.566, %if.then.560
  %380 = load double, double* %tx, align 8
  %381 = load double, double* %ty, align 8
  %call573 = call double @atan2(double %380, double %381) #3
  store double %call573, double* %theta561, align 8
  br label %if.end.575

if.else.574:                                      ; preds = %lor.lhs.false.570
  store double 0.000000e+00, double* %theta561, align 8
  br label %if.end.575

if.end.575:                                       ; preds = %if.else.574, %if.then.572
  %call576 = call i32 @flam3_random_bit()
  %tobool = icmp ne i32 %call576, 0
  br i1 %tobool, label %if.then.577, label %if.end.579

if.then.577:                                      ; preds = %if.end.575
  %382 = load double, double* %theta561, align 8
  %add578 = fadd double %382, 0x400921FB54442D18
  store double %add578, double* %theta561, align 8
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.577, %if.end.575
  %383 = load double, double* %tx, align 8
  %384 = load double, double* %tx, align 8
  %mul580 = fmul double %383, %384
  %385 = load double, double* %ty, align 8
  %386 = load double, double* %ty, align 8
  %mul581 = fmul double %385, %386
  %add582 = fadd double %mul580, %mul581
  %call583 = call double @pow(double %add582, double 2.500000e-01) #3
  store double %call583, double* %r2562, align 8
  %387 = load double, double* %r2562, align 8
  %388 = load double, double* %theta561, align 8
  %call584 = call double @cos(double %388) #3
  %mul585 = fmul double %387, %call584
  store double %mul585, double* %nx563, align 8
  %389 = load double, double* %r2562, align 8
  %390 = load double, double* %theta561, align 8
  %call586 = call double @sin(double %390) #3
  %mul587 = fmul double %389, %call586
  store double %mul587, double* %ny564, align 8
  %391 = load double, double* %v, align 8
  %392 = load double, double* %nx563, align 8
  %mul588 = fmul double %391, %392
  %arrayidx589 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %393 = load double, double* %arrayidx589, align 8
  %add590 = fadd double %393, %mul588
  store double %add590, double* %arrayidx589, align 8
  %394 = load double, double* %v, align 8
  %395 = load double, double* %ny564, align 8
  %mul591 = fmul double %394, %395
  %arrayidx592 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %396 = load double, double* %arrayidx592, align 8
  %add593 = fadd double %396, %mul591
  store double %add593, double* %arrayidx592, align 8
  br label %if.end.594

if.end.594:                                       ; preds = %if.end.579, %if.end.553
  %397 = load i32, i32* %fn, align 4
  %idxprom595 = sext i32 %397 to i64
  %398 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform596 = getelementptr inbounds %struct.control_point, %struct.control_point* %398, i32 0, i32 0
  %arrayidx597 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform596, i32 0, i64 %idxprom595
  %var598 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx597, i32 0, i32 0
  %arrayidx599 = getelementptr inbounds [29 x double], [29 x double]* %var598, i32 0, i64 15
  %399 = load double, double* %arrayidx599, align 8
  store double %399, double* %v, align 8
  %400 = load double, double* %v, align 8
  %cmp600 = fcmp ogt double %400, 0.000000e+00
  br i1 %cmp600, label %if.then.601, label %if.end.646

if.then.601:                                      ; preds = %if.end.594
  %401 = load i32, i32* %fn, align 4
  %idxprom604 = sext i32 %401 to i64
  %402 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform605 = getelementptr inbounds %struct.control_point, %struct.control_point* %402, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform605, i32 0, i64 %idxprom604
  %c607 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx606, i32 0, i32 1
  %arrayidx608 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c607, i32 0, i64 2
  %arrayidx609 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx608, i32 0, i64 0
  %403 = load double, double* %arrayidx609, align 8
  store double %403, double* %dx, align 8
  %404 = load i32, i32* %fn, align 4
  %idxprom610 = sext i32 %404 to i64
  %405 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform611 = getelementptr inbounds %struct.control_point, %struct.control_point* %405, i32 0, i32 0
  %arrayidx612 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform611, i32 0, i64 %idxprom610
  %c613 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx612, i32 0, i32 1
  %arrayidx614 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c613, i32 0, i64 2
  %arrayidx615 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx614, i32 0, i64 1
  %406 = load double, double* %arrayidx615, align 8
  store double %406, double* %dy, align 8
  %407 = load double, double* %tx, align 8
  %408 = load i32, i32* %fn, align 4
  %idxprom616 = sext i32 %408 to i64
  %409 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform617 = getelementptr inbounds %struct.control_point, %struct.control_point* %409, i32 0, i32 0
  %arrayidx618 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform617, i32 0, i64 %idxprom616
  %c619 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx618, i32 0, i32 1
  %arrayidx620 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c619, i32 0, i64 1
  %arrayidx621 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx620, i32 0, i64 0
  %410 = load double, double* %arrayidx621, align 8
  %411 = load double, double* %ty, align 8
  %412 = load double, double* %dx, align 8
  %413 = load double, double* %dx, align 8
  %mul622 = fmul double %412, %413
  %add623 = fadd double %mul622, 1.000000e-10
  %div624 = fdiv double %411, %add623
  %call625 = call double @sin(double %div624) #3
  %mul626 = fmul double %410, %call625
  %add627 = fadd double %407, %mul626
  store double %add627, double* %nx602, align 8
  %414 = load double, double* %ty, align 8
  %415 = load i32, i32* %fn, align 4
  %idxprom628 = sext i32 %415 to i64
  %416 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform629 = getelementptr inbounds %struct.control_point, %struct.control_point* %416, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform629, i32 0, i64 %idxprom628
  %c631 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx630, i32 0, i32 1
  %arrayidx632 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c631, i32 0, i64 1
  %arrayidx633 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx632, i32 0, i64 1
  %417 = load double, double* %arrayidx633, align 8
  %418 = load double, double* %tx, align 8
  %419 = load double, double* %dy, align 8
  %420 = load double, double* %dy, align 8
  %mul634 = fmul double %419, %420
  %add635 = fadd double %mul634, 1.000000e-10
  %div636 = fdiv double %418, %add635
  %call637 = call double @sin(double %div636) #3
  %mul638 = fmul double %417, %call637
  %add639 = fadd double %414, %mul638
  store double %add639, double* %ny603, align 8
  %421 = load double, double* %v, align 8
  %422 = load double, double* %nx602, align 8
  %mul640 = fmul double %421, %422
  %arrayidx641 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %423 = load double, double* %arrayidx641, align 8
  %add642 = fadd double %423, %mul640
  store double %add642, double* %arrayidx641, align 8
  %424 = load double, double* %v, align 8
  %425 = load double, double* %ny603, align 8
  %mul643 = fmul double %424, %425
  %arrayidx644 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %426 = load double, double* %arrayidx644, align 8
  %add645 = fadd double %426, %mul643
  store double %add645, double* %arrayidx644, align 8
  br label %if.end.646

if.end.646:                                       ; preds = %if.then.601, %if.end.594
  %427 = load i32, i32* %fn, align 4
  %idxprom647 = sext i32 %427 to i64
  %428 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform648 = getelementptr inbounds %struct.control_point, %struct.control_point* %428, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform648, i32 0, i64 %idxprom647
  %var650 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx649, i32 0, i32 0
  %arrayidx651 = getelementptr inbounds [29 x double], [29 x double]* %var650, i32 0, i64 16
  %429 = load double, double* %arrayidx651, align 8
  store double %429, double* %v, align 8
  %430 = load double, double* %v, align 8
  %cmp652 = fcmp ogt double %430, 0.000000e+00
  br i1 %cmp652, label %if.then.653, label %if.end.686

if.then.653:                                      ; preds = %if.end.646
  %431 = load double, double* %tx, align 8
  %cmp658 = fcmp olt double %431, -1.000000e-10
  br i1 %cmp658, label %if.then.665, label %lor.lhs.false.659

lor.lhs.false.659:                                ; preds = %if.then.653
  %432 = load double, double* %tx, align 8
  %cmp660 = fcmp ogt double %432, 1.000000e-10
  br i1 %cmp660, label %if.then.665, label %lor.lhs.false.661

lor.lhs.false.661:                                ; preds = %lor.lhs.false.659
  %433 = load double, double* %ty, align 8
  %cmp662 = fcmp olt double %433, -1.000000e-10
  br i1 %cmp662, label %if.then.665, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %lor.lhs.false.661
  %434 = load double, double* %ty, align 8
  %cmp664 = fcmp ogt double %434, 1.000000e-10
  br i1 %cmp664, label %if.then.665, label %if.else.667

if.then.665:                                      ; preds = %lor.lhs.false.663, %lor.lhs.false.661, %lor.lhs.false.659, %if.then.653
  %435 = load double, double* %tx, align 8
  %436 = load double, double* %ty, align 8
  %call666 = call double @atan2(double %435, double %436) #3
  store double %call666, double* %theta654, align 8
  br label %if.end.668

if.else.667:                                      ; preds = %lor.lhs.false.663
  store double 0.000000e+00, double* %theta654, align 8
  br label %if.end.668

if.end.668:                                       ; preds = %if.else.667, %if.then.665
  %437 = load double, double* %tx, align 8
  %438 = load double, double* %tx, align 8
  %mul669 = fmul double %437, %438
  %439 = load double, double* %ty, align 8
  %440 = load double, double* %ty, align 8
  %mul670 = fmul double %439, %440
  %add671 = fadd double %mul669, %mul670
  %call672 = call double @sqrt(double %add671) #3
  store double %call672, double* %r2655, align 8
  %441 = load double, double* %r2655, align 8
  %mul673 = fmul double 2.000000e+00, %441
  %442 = load double, double* %r2655, align 8
  %add674 = fadd double %442, 1.000000e+00
  %div675 = fdiv double %mul673, %add674
  store double %div675, double* %r2655, align 8
  %443 = load double, double* %r2655, align 8
  %444 = load double, double* %theta654, align 8
  %call676 = call double @cos(double %444) #3
  %mul677 = fmul double %443, %call676
  store double %mul677, double* %nx656, align 8
  %445 = load double, double* %r2655, align 8
  %446 = load double, double* %theta654, align 8
  %call678 = call double @sin(double %446) #3
  %mul679 = fmul double %445, %call678
  store double %mul679, double* %ny657, align 8
  %447 = load double, double* %v, align 8
  %448 = load double, double* %nx656, align 8
  %mul680 = fmul double %447, %448
  %arrayidx681 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %449 = load double, double* %arrayidx681, align 8
  %add682 = fadd double %449, %mul680
  store double %add682, double* %arrayidx681, align 8
  %450 = load double, double* %v, align 8
  %451 = load double, double* %ny657, align 8
  %mul683 = fmul double %450, %451
  %arrayidx684 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %452 = load double, double* %arrayidx684, align 8
  %add685 = fadd double %452, %mul683
  store double %add685, double* %arrayidx684, align 8
  br label %if.end.686

if.end.686:                                       ; preds = %if.end.668, %if.end.646
  %453 = load i32, i32* %fn, align 4
  %idxprom687 = sext i32 %453 to i64
  %454 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform688 = getelementptr inbounds %struct.control_point, %struct.control_point* %454, i32 0, i32 0
  %arrayidx689 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform688, i32 0, i64 %idxprom687
  %var690 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx689, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [29 x double], [29 x double]* %var690, i32 0, i64 17
  %455 = load double, double* %arrayidx691, align 8
  store double %455, double* %v, align 8
  %456 = load double, double* %v, align 8
  %cmp692 = fcmp ogt double %456, 0.000000e+00
  br i1 %cmp692, label %if.then.693, label %if.end.726

if.then.693:                                      ; preds = %if.end.686
  %457 = load double, double* %ty, align 8
  %mul698 = fmul double 3.000000e+00, %457
  %call699 = call double @tan(double %mul698) #3
  store double %call699, double* %dx694, align 8
  %458 = load double, double* %tx, align 8
  %mul700 = fmul double 3.000000e+00, %458
  %call701 = call double @tan(double %mul700) #3
  store double %call701, double* %dy695, align 8
  %459 = load double, double* %tx, align 8
  %460 = load i32, i32* %fn, align 4
  %idxprom702 = sext i32 %460 to i64
  %461 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform703 = getelementptr inbounds %struct.control_point, %struct.control_point* %461, i32 0, i32 0
  %arrayidx704 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform703, i32 0, i64 %idxprom702
  %c705 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx704, i32 0, i32 1
  %arrayidx706 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c705, i32 0, i64 2
  %arrayidx707 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx706, i32 0, i64 0
  %462 = load double, double* %arrayidx707, align 8
  %463 = load double, double* %dx694, align 8
  %call708 = call double @sin(double %463) #3
  %mul709 = fmul double %462, %call708
  %add710 = fadd double %459, %mul709
  store double %add710, double* %nx696, align 8
  %464 = load double, double* %ty, align 8
  %465 = load i32, i32* %fn, align 4
  %idxprom711 = sext i32 %465 to i64
  %466 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform712 = getelementptr inbounds %struct.control_point, %struct.control_point* %466, i32 0, i32 0
  %arrayidx713 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform712, i32 0, i64 %idxprom711
  %c714 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx713, i32 0, i32 1
  %arrayidx715 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c714, i32 0, i64 2
  %arrayidx716 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx715, i32 0, i64 1
  %467 = load double, double* %arrayidx716, align 8
  %468 = load double, double* %dy695, align 8
  %call717 = call double @sin(double %468) #3
  %mul718 = fmul double %467, %call717
  %add719 = fadd double %464, %mul718
  store double %add719, double* %ny697, align 8
  %469 = load double, double* %v, align 8
  %470 = load double, double* %nx696, align 8
  %mul720 = fmul double %469, %470
  %arrayidx721 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %471 = load double, double* %arrayidx721, align 8
  %add722 = fadd double %471, %mul720
  store double %add722, double* %arrayidx721, align 8
  %472 = load double, double* %v, align 8
  %473 = load double, double* %ny697, align 8
  %mul723 = fmul double %472, %473
  %arrayidx724 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %474 = load double, double* %arrayidx724, align 8
  %add725 = fadd double %474, %mul723
  store double %add725, double* %arrayidx724, align 8
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.693, %if.end.686
  %475 = load i32, i32* %fn, align 4
  %idxprom727 = sext i32 %475 to i64
  %476 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform728 = getelementptr inbounds %struct.control_point, %struct.control_point* %476, i32 0, i32 0
  %arrayidx729 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform728, i32 0, i64 %idxprom727
  %var730 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx729, i32 0, i32 0
  %arrayidx731 = getelementptr inbounds [29 x double], [29 x double]* %var730, i32 0, i64 18
  %477 = load double, double* %arrayidx731, align 8
  store double %477, double* %v, align 8
  %478 = load double, double* %v, align 8
  %cmp732 = fcmp ogt double %478, 0.000000e+00
  br i1 %cmp732, label %if.then.733, label %if.end.751

if.then.733:                                      ; preds = %if.end.726
  %479 = load double, double* %tx, align 8
  %sub738 = fsub double %479, 1.000000e+00
  %call739 = call double @exp(double %sub738) #3
  store double %call739, double* %dx734, align 8
  %480 = load double, double* %ty, align 8
  %mul740 = fmul double 0x400921FB54442D18, %480
  store double %mul740, double* %dy735, align 8
  %481 = load double, double* %dy735, align 8
  %call741 = call double @cos(double %481) #3
  %482 = load double, double* %dx734, align 8
  %mul742 = fmul double %call741, %482
  store double %mul742, double* %nx736, align 8
  %483 = load double, double* %dy735, align 8
  %call743 = call double @sin(double %483) #3
  %484 = load double, double* %dx734, align 8
  %mul744 = fmul double %call743, %484
  store double %mul744, double* %ny737, align 8
  %485 = load double, double* %v, align 8
  %486 = load double, double* %nx736, align 8
  %mul745 = fmul double %485, %486
  %arrayidx746 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %487 = load double, double* %arrayidx746, align 8
  %add747 = fadd double %487, %mul745
  store double %add747, double* %arrayidx746, align 8
  %488 = load double, double* %v, align 8
  %489 = load double, double* %ny737, align 8
  %mul748 = fmul double %488, %489
  %arrayidx749 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %490 = load double, double* %arrayidx749, align 8
  %add750 = fadd double %490, %mul748
  store double %add750, double* %arrayidx749, align 8
  br label %if.end.751

if.end.751:                                       ; preds = %if.then.733, %if.end.726
  %491 = load i32, i32* %fn, align 4
  %idxprom752 = sext i32 %491 to i64
  %492 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform753 = getelementptr inbounds %struct.control_point, %struct.control_point* %492, i32 0, i32 0
  %arrayidx754 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform753, i32 0, i64 %idxprom752
  %var755 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx754, i32 0, i32 0
  %arrayidx756 = getelementptr inbounds [29 x double], [29 x double]* %var755, i32 0, i64 19
  %493 = load double, double* %arrayidx756, align 8
  store double %493, double* %v, align 8
  %494 = load double, double* %v, align 8
  %cmp757 = fcmp ogt double %494, 0.000000e+00
  br i1 %cmp757, label %if.then.758, label %if.end.789

if.then.758:                                      ; preds = %if.end.751
  %495 = load double, double* %tx, align 8
  %cmp763 = fcmp olt double %495, -1.000000e-10
  br i1 %cmp763, label %if.then.770, label %lor.lhs.false.764

lor.lhs.false.764:                                ; preds = %if.then.758
  %496 = load double, double* %tx, align 8
  %cmp765 = fcmp ogt double %496, 1.000000e-10
  br i1 %cmp765, label %if.then.770, label %lor.lhs.false.766

lor.lhs.false.766:                                ; preds = %lor.lhs.false.764
  %497 = load double, double* %ty, align 8
  %cmp767 = fcmp olt double %497, -1.000000e-10
  br i1 %cmp767, label %if.then.770, label %lor.lhs.false.768

lor.lhs.false.768:                                ; preds = %lor.lhs.false.766
  %498 = load double, double* %ty, align 8
  %cmp769 = fcmp ogt double %498, 1.000000e-10
  br i1 %cmp769, label %if.then.770, label %if.else.772

if.then.770:                                      ; preds = %lor.lhs.false.768, %lor.lhs.false.766, %lor.lhs.false.764, %if.then.758
  %499 = load double, double* %tx, align 8
  %500 = load double, double* %ty, align 8
  %call771 = call double @atan2(double %499, double %500) #3
  store double %call771, double* %theta759, align 8
  br label %if.end.773

if.else.772:                                      ; preds = %lor.lhs.false.768
  store double 0.000000e+00, double* %theta759, align 8
  br label %if.end.773

if.end.773:                                       ; preds = %if.else.772, %if.then.770
  %501 = load double, double* %theta759, align 8
  %call774 = call double @sin(double %501) #3
  store double %call774, double* %tsin, align 8
  %502 = load double, double* %theta759, align 8
  %call775 = call double @cos(double %502) #3
  store double %call775, double* %tcos, align 8
  %503 = load double, double* %tx, align 8
  %504 = load double, double* %tx, align 8
  %mul776 = fmul double %503, %504
  %505 = load double, double* %ty, align 8
  %506 = load double, double* %ty, align 8
  %mul777 = fmul double %505, %506
  %add778 = fadd double %mul776, %mul777
  %call779 = call double @sqrt(double %add778) #3
  store double %call779, double* %r2760, align 8
  %507 = load double, double* %r2760, align 8
  %508 = load double, double* %tsin, align 8
  %call780 = call double @pow(double %507, double %508) #3
  store double %call780, double* %r2760, align 8
  %509 = load double, double* %r2760, align 8
  %510 = load double, double* %tcos, align 8
  %mul781 = fmul double %509, %510
  store double %mul781, double* %nx761, align 8
  %511 = load double, double* %r2760, align 8
  %512 = load double, double* %tsin, align 8
  %mul782 = fmul double %511, %512
  store double %mul782, double* %ny762, align 8
  %513 = load double, double* %v, align 8
  %514 = load double, double* %nx761, align 8
  %mul783 = fmul double %513, %514
  %arrayidx784 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %515 = load double, double* %arrayidx784, align 8
  %add785 = fadd double %515, %mul783
  store double %add785, double* %arrayidx784, align 8
  %516 = load double, double* %v, align 8
  %517 = load double, double* %ny762, align 8
  %mul786 = fmul double %516, %517
  %arrayidx787 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %518 = load double, double* %arrayidx787, align 8
  %add788 = fadd double %518, %mul786
  store double %add788, double* %arrayidx787, align 8
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.773, %if.end.751
  %519 = load i32, i32* %fn, align 4
  %idxprom790 = sext i32 %519 to i64
  %520 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform791 = getelementptr inbounds %struct.control_point, %struct.control_point* %520, i32 0, i32 0
  %arrayidx792 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform791, i32 0, i64 %idxprom790
  %var793 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx792, i32 0, i32 0
  %arrayidx794 = getelementptr inbounds [29 x double], [29 x double]* %var793, i32 0, i64 20
  %521 = load double, double* %arrayidx794, align 8
  store double %521, double* %v, align 8
  %522 = load double, double* %v, align 8
  %cmp795 = fcmp ogt double %522, 0.000000e+00
  br i1 %cmp795, label %if.then.796, label %if.end.814

if.then.796:                                      ; preds = %if.end.789
  %523 = load double, double* %tx, align 8
  %mul799 = fmul double %523, 0x400921FB54442D18
  %call800 = call double @cos(double %mul799) #3
  %524 = load double, double* %ty, align 8
  %call801 = call double @cosh(double %524) #3
  %mul802 = fmul double %call800, %call801
  store double %mul802, double* %nx797, align 8
  %525 = load double, double* %tx, align 8
  %mul803 = fmul double %525, 0x400921FB54442D18
  %call804 = call double @sin(double %mul803) #3
  %sub805 = fsub double -0.000000e+00, %call804
  %526 = load double, double* %ty, align 8
  %call806 = call double @sinh(double %526) #3
  %mul807 = fmul double %sub805, %call806
  store double %mul807, double* %ny798, align 8
  %527 = load double, double* %v, align 8
  %528 = load double, double* %nx797, align 8
  %mul808 = fmul double %527, %528
  %arrayidx809 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %529 = load double, double* %arrayidx809, align 8
  %add810 = fadd double %529, %mul808
  store double %add810, double* %arrayidx809, align 8
  %530 = load double, double* %v, align 8
  %531 = load double, double* %ny798, align 8
  %mul811 = fmul double %530, %531
  %arrayidx812 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %532 = load double, double* %arrayidx812, align 8
  %add813 = fadd double %532, %mul811
  store double %add813, double* %arrayidx812, align 8
  br label %if.end.814

if.end.814:                                       ; preds = %if.then.796, %if.end.789
  %533 = load i32, i32* %fn, align 4
  %idxprom815 = sext i32 %533 to i64
  %534 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform816 = getelementptr inbounds %struct.control_point, %struct.control_point* %534, i32 0, i32 0
  %arrayidx817 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform816, i32 0, i64 %idxprom815
  %var818 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx817, i32 0, i32 0
  %arrayidx819 = getelementptr inbounds [29 x double], [29 x double]* %var818, i32 0, i64 21
  %535 = load double, double* %arrayidx819, align 8
  store double %535, double* %v, align 8
  %536 = load double, double* %v, align 8
  %cmp820 = fcmp ogt double %536, 0.000000e+00
  br i1 %cmp820, label %if.then.821, label %if.end.867

if.then.821:                                      ; preds = %if.end.814
  %537 = load double, double* %tx, align 8
  %cmp827 = fcmp olt double %537, -1.000000e-10
  br i1 %cmp827, label %if.then.834, label %lor.lhs.false.828

lor.lhs.false.828:                                ; preds = %if.then.821
  %538 = load double, double* %tx, align 8
  %cmp829 = fcmp ogt double %538, 1.000000e-10
  br i1 %cmp829, label %if.then.834, label %lor.lhs.false.830

lor.lhs.false.830:                                ; preds = %lor.lhs.false.828
  %539 = load double, double* %ty, align 8
  %cmp831 = fcmp olt double %539, -1.000000e-10
  br i1 %cmp831, label %if.then.834, label %lor.lhs.false.832

lor.lhs.false.832:                                ; preds = %lor.lhs.false.830
  %540 = load double, double* %ty, align 8
  %cmp833 = fcmp ogt double %540, 1.000000e-10
  br i1 %cmp833, label %if.then.834, label %if.else.836

if.then.834:                                      ; preds = %lor.lhs.false.832, %lor.lhs.false.830, %lor.lhs.false.828, %if.then.821
  %541 = load double, double* %tx, align 8
  %542 = load double, double* %ty, align 8
  %call835 = call double @atan2(double %541, double %542) #3
  store double %call835, double* %theta822, align 8
  br label %if.end.837

if.else.836:                                      ; preds = %lor.lhs.false.832
  store double 0.000000e+00, double* %theta822, align 8
  br label %if.end.837

if.end.837:                                       ; preds = %if.else.836, %if.then.834
  %543 = load i32, i32* %fn, align 4
  %idxprom838 = sext i32 %543 to i64
  %544 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform839 = getelementptr inbounds %struct.control_point, %struct.control_point* %544, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform839, i32 0, i64 %idxprom838
  %c841 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx840, i32 0, i32 1
  %arrayidx842 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c841, i32 0, i64 2
  %arrayidx843 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx842, i32 0, i64 0
  %545 = load double, double* %arrayidx843, align 8
  store double %545, double* %dx824, align 8
  %546 = load double, double* %dx824, align 8
  %547 = load double, double* %dx824, align 8
  %mul844 = fmul double %546, %547
  %add845 = fadd double %mul844, 1.000000e-10
  store double %add845, double* %dx824, align 8
  %548 = load double, double* %tx, align 8
  %549 = load double, double* %tx, align 8
  %mul846 = fmul double %548, %549
  %550 = load double, double* %ty, align 8
  %551 = load double, double* %ty, align 8
  %mul847 = fmul double %550, %551
  %add848 = fadd double %mul846, %mul847
  %call849 = call double @sqrt(double %add848) #3
  store double %call849, double* %r2823, align 8
  %552 = load double, double* %r2823, align 8
  %553 = load double, double* %dx824, align 8
  %add850 = fadd double %552, %553
  %554 = load double, double* %dx824, align 8
  %mul851 = fmul double 2.000000e+00, %554
  %call852 = call double @fmod(double %add850, double %mul851) #3
  %555 = load double, double* %dx824, align 8
  %sub853 = fsub double %call852, %555
  %556 = load double, double* %r2823, align 8
  %557 = load double, double* %dx824, align 8
  %sub854 = fsub double 1.000000e+00, %557
  %mul855 = fmul double %556, %sub854
  %add856 = fadd double %sub853, %mul855
  store double %add856, double* %r2823, align 8
  %558 = load double, double* %theta822, align 8
  %call857 = call double @cos(double %558) #3
  %559 = load double, double* %r2823, align 8
  %mul858 = fmul double %call857, %559
  store double %mul858, double* %nx825, align 8
  %560 = load double, double* %theta822, align 8
  %call859 = call double @sin(double %560) #3
  %561 = load double, double* %r2823, align 8
  %mul860 = fmul double %call859, %561
  store double %mul860, double* %ny826, align 8
  %562 = load double, double* %v, align 8
  %563 = load double, double* %nx825, align 8
  %mul861 = fmul double %562, %563
  %arrayidx862 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %564 = load double, double* %arrayidx862, align 8
  %add863 = fadd double %564, %mul861
  store double %add863, double* %arrayidx862, align 8
  %565 = load double, double* %v, align 8
  %566 = load double, double* %ny826, align 8
  %mul864 = fmul double %565, %566
  %arrayidx865 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %567 = load double, double* %arrayidx865, align 8
  %add866 = fadd double %567, %mul864
  store double %add866, double* %arrayidx865, align 8
  br label %if.end.867

if.end.867:                                       ; preds = %if.end.837, %if.end.814
  %568 = load i32, i32* %fn, align 4
  %idxprom868 = sext i32 %568 to i64
  %569 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform869 = getelementptr inbounds %struct.control_point, %struct.control_point* %569, i32 0, i32 0
  %arrayidx870 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform869, i32 0, i64 %idxprom868
  %var871 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx870, i32 0, i32 0
  %arrayidx872 = getelementptr inbounds [29 x double], [29 x double]* %var871, i32 0, i64 22
  %570 = load double, double* %arrayidx872, align 8
  store double %570, double* %v, align 8
  %571 = load double, double* %v, align 8
  %cmp873 = fcmp ogt double %571, 0.000000e+00
  br i1 %cmp873, label %if.then.874, label %if.end.927

if.then.874:                                      ; preds = %if.end.867
  %572 = load double, double* %tx, align 8
  %cmp881 = fcmp olt double %572, -1.000000e-10
  br i1 %cmp881, label %if.then.888, label %lor.lhs.false.882

lor.lhs.false.882:                                ; preds = %if.then.874
  %573 = load double, double* %tx, align 8
  %cmp883 = fcmp ogt double %573, 1.000000e-10
  br i1 %cmp883, label %if.then.888, label %lor.lhs.false.884

lor.lhs.false.884:                                ; preds = %lor.lhs.false.882
  %574 = load double, double* %ty, align 8
  %cmp885 = fcmp olt double %574, -1.000000e-10
  br i1 %cmp885, label %if.then.888, label %lor.lhs.false.886

lor.lhs.false.886:                                ; preds = %lor.lhs.false.884
  %575 = load double, double* %ty, align 8
  %cmp887 = fcmp ogt double %575, 1.000000e-10
  br i1 %cmp887, label %if.then.888, label %if.else.890

if.then.888:                                      ; preds = %lor.lhs.false.886, %lor.lhs.false.884, %lor.lhs.false.882, %if.then.874
  %576 = load double, double* %tx, align 8
  %577 = load double, double* %ty, align 8
  %call889 = call double @atan2(double %576, double %577) #3
  store double %call889, double* %theta875, align 8
  br label %if.end.891

if.else.890:                                      ; preds = %lor.lhs.false.886
  store double 0.000000e+00, double* %theta875, align 8
  br label %if.end.891

if.end.891:                                       ; preds = %if.else.890, %if.then.888
  %578 = load i32, i32* %fn, align 4
  %idxprom892 = sext i32 %578 to i64
  %579 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform893 = getelementptr inbounds %struct.control_point, %struct.control_point* %579, i32 0, i32 0
  %arrayidx894 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform893, i32 0, i64 %idxprom892
  %c895 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx894, i32 0, i32 1
  %arrayidx896 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c895, i32 0, i64 2
  %arrayidx897 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx896, i32 0, i64 0
  %580 = load double, double* %arrayidx897, align 8
  store double %580, double* %dx877, align 8
  %581 = load i32, i32* %fn, align 4
  %idxprom898 = sext i32 %581 to i64
  %582 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform899 = getelementptr inbounds %struct.control_point, %struct.control_point* %582, i32 0, i32 0
  %arrayidx900 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform899, i32 0, i64 %idxprom898
  %c901 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx900, i32 0, i32 1
  %arrayidx902 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c901, i32 0, i64 2
  %arrayidx903 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx902, i32 0, i64 1
  %583 = load double, double* %arrayidx903, align 8
  store double %583, double* %dy878, align 8
  %584 = load double, double* %dx877, align 8
  %585 = load double, double* %dx877, align 8
  %mul904 = fmul double %584, %585
  %add905 = fadd double %mul904, 1.000000e-10
  %mul906 = fmul double 0x400921FB54442D18, %add905
  store double %mul906, double* %dx877, align 8
  %586 = load double, double* %dx877, align 8
  %div907 = fdiv double %586, 2.000000e+00
  store double %div907, double* %dx2, align 8
  %587 = load double, double* %tx, align 8
  %588 = load double, double* %tx, align 8
  %mul908 = fmul double %587, %588
  %589 = load double, double* %ty, align 8
  %590 = load double, double* %ty, align 8
  %mul909 = fmul double %589, %590
  %add910 = fadd double %mul908, %mul909
  %call911 = call double @sqrt(double %add910) #3
  store double %call911, double* %r2876, align 8
  %591 = load double, double* %theta875, align 8
  %592 = load double, double* %dy878, align 8
  %add912 = fadd double %591, %592
  %593 = load double, double* %dx877, align 8
  %call913 = call double @fmod(double %add912, double %593) #3
  %594 = load double, double* %dx2, align 8
  %cmp914 = fcmp ogt double %call913, %594
  br i1 %cmp914, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.891
  %595 = load double, double* %dx2, align 8
  %sub915 = fsub double -0.000000e+00, %595
  br label %cond.end

cond.false:                                       ; preds = %if.end.891
  %596 = load double, double* %dx2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub915, %cond.true ], [ %596, %cond.false ]
  %597 = load double, double* %theta875, align 8
  %add916 = fadd double %597, %cond
  store double %add916, double* %theta875, align 8
  %598 = load double, double* %theta875, align 8
  %call917 = call double @cos(double %598) #3
  %599 = load double, double* %r2876, align 8
  %mul918 = fmul double %call917, %599
  store double %mul918, double* %nx879, align 8
  %600 = load double, double* %theta875, align 8
  %call919 = call double @sin(double %600) #3
  %601 = load double, double* %r2876, align 8
  %mul920 = fmul double %call919, %601
  store double %mul920, double* %ny880, align 8
  %602 = load double, double* %v, align 8
  %603 = load double, double* %nx879, align 8
  %mul921 = fmul double %602, %603
  %arrayidx922 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %604 = load double, double* %arrayidx922, align 8
  %add923 = fadd double %604, %mul921
  store double %add923, double* %arrayidx922, align 8
  %605 = load double, double* %v, align 8
  %606 = load double, double* %ny880, align 8
  %mul924 = fmul double %605, %606
  %arrayidx925 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %607 = load double, double* %arrayidx925, align 8
  %add926 = fadd double %607, %mul924
  store double %add926, double* %arrayidx925, align 8
  br label %if.end.927

if.end.927:                                       ; preds = %cond.end, %if.end.867
  %608 = load i32, i32* %fn, align 4
  %idxprom928 = sext i32 %608 to i64
  %609 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform929 = getelementptr inbounds %struct.control_point, %struct.control_point* %609, i32 0, i32 0
  %arrayidx930 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform929, i32 0, i64 %idxprom928
  %var931 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx930, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [29 x double], [29 x double]* %var931, i32 0, i64 23
  %610 = load double, double* %arrayidx932, align 8
  store double %610, double* %v, align 8
  %611 = load double, double* %v, align 8
  %cmp933 = fcmp ogt double %611, 0.000000e+00
  br i1 %cmp933, label %if.then.934, label %if.end.949

if.then.934:                                      ; preds = %if.end.927
  %612 = load double, double* %v, align 8
  %mul936 = fmul double 2.000000e+00, %612
  %613 = load double, double* %tx, align 8
  %614 = load double, double* %tx, align 8
  %mul937 = fmul double %613, %614
  %615 = load double, double* %ty, align 8
  %616 = load double, double* %ty, align 8
  %mul938 = fmul double %615, %616
  %add939 = fadd double %mul937, %mul938
  %call940 = call double @sqrt(double %add939) #3
  %add941 = fadd double %call940, 1.000000e+00
  %div942 = fdiv double %mul936, %add941
  store double %div942, double* %r2935, align 8
  %617 = load double, double* %r2935, align 8
  %618 = load double, double* %tx, align 8
  %mul943 = fmul double %617, %618
  %arrayidx944 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %619 = load double, double* %arrayidx944, align 8
  %add945 = fadd double %619, %mul943
  store double %add945, double* %arrayidx944, align 8
  %620 = load double, double* %r2935, align 8
  %621 = load double, double* %ty, align 8
  %mul946 = fmul double %620, %621
  %arrayidx947 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %622 = load double, double* %arrayidx947, align 8
  %add948 = fadd double %622, %mul946
  store double %add948, double* %arrayidx947, align 8
  br label %if.end.949

if.end.949:                                       ; preds = %if.then.934, %if.end.927
  %623 = load i32, i32* %fn, align 4
  %idxprom950 = sext i32 %623 to i64
  %624 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform951 = getelementptr inbounds %struct.control_point, %struct.control_point* %624, i32 0, i32 0
  %arrayidx952 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform951, i32 0, i64 %idxprom950
  %var953 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx952, i32 0, i32 0
  %arrayidx954 = getelementptr inbounds [29 x double], [29 x double]* %var953, i32 0, i64 24
  %625 = load double, double* %arrayidx954, align 8
  store double %625, double* %v, align 8
  %626 = load double, double* %v, align 8
  %cmp955 = fcmp ogt double %626, 0.000000e+00
  br i1 %cmp955, label %if.then.956, label %if.end.970

if.then.956:                                      ; preds = %if.end.949
  %627 = load double, double* %v, align 8
  %628 = load double, double* %tx, align 8
  %629 = load double, double* %tx, align 8
  %mul958 = fmul double %628, %629
  %630 = load double, double* %ty, align 8
  %631 = load double, double* %ty, align 8
  %mul959 = fmul double %630, %631
  %add960 = fadd double %mul958, %mul959
  %div961 = fdiv double %add960, 4.000000e+00
  %add962 = fadd double %div961, 1.000000e+00
  %div963 = fdiv double %627, %add962
  store double %div963, double* %r2957, align 8
  %632 = load double, double* %r2957, align 8
  %633 = load double, double* %tx, align 8
  %mul964 = fmul double %632, %633
  %arrayidx965 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %634 = load double, double* %arrayidx965, align 8
  %add966 = fadd double %634, %mul964
  store double %add966, double* %arrayidx965, align 8
  %635 = load double, double* %r2957, align 8
  %636 = load double, double* %ty, align 8
  %mul967 = fmul double %635, %636
  %arrayidx968 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %637 = load double, double* %arrayidx968, align 8
  %add969 = fadd double %637, %mul967
  store double %add969, double* %arrayidx968, align 8
  br label %if.end.970

if.end.970:                                       ; preds = %if.then.956, %if.end.949
  %638 = load i32, i32* %fn, align 4
  %idxprom971 = sext i32 %638 to i64
  %639 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform972 = getelementptr inbounds %struct.control_point, %struct.control_point* %639, i32 0, i32 0
  %arrayidx973 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform972, i32 0, i64 %idxprom971
  %var974 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx973, i32 0, i32 0
  %arrayidx975 = getelementptr inbounds [29 x double], [29 x double]* %var974, i32 0, i64 25
  %640 = load double, double* %arrayidx975, align 8
  store double %640, double* %v, align 8
  %641 = load double, double* %v, align 8
  %cmp976 = fcmp ogt double %641, 0.000000e+00
  br i1 %cmp976, label %if.then.977, label %if.end.986

if.then.977:                                      ; preds = %if.end.970
  %642 = load double, double* %tx, align 8
  %call979 = call double @sin(double %642) #3
  store double %call979, double* %nx978, align 8
  %643 = load double, double* %v, align 8
  %644 = load double, double* %nx978, align 8
  %mul980 = fmul double %643, %644
  %arrayidx981 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %645 = load double, double* %arrayidx981, align 8
  %add982 = fadd double %645, %mul980
  store double %add982, double* %arrayidx981, align 8
  %646 = load double, double* %v, align 8
  %647 = load double, double* %ty, align 8
  %mul983 = fmul double %646, %647
  %arrayidx984 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %648 = load double, double* %arrayidx984, align 8
  %add985 = fadd double %648, %mul983
  store double %add985, double* %arrayidx984, align 8
  br label %if.end.986

if.end.986:                                       ; preds = %if.then.977, %if.end.970
  %649 = load i32, i32* %fn, align 4
  %idxprom987 = sext i32 %649 to i64
  %650 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform988 = getelementptr inbounds %struct.control_point, %struct.control_point* %650, i32 0, i32 0
  %arrayidx989 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform988, i32 0, i64 %idxprom987
  %var990 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx989, i32 0, i32 0
  %arrayidx991 = getelementptr inbounds [29 x double], [29 x double]* %var990, i32 0, i64 26
  %651 = load double, double* %arrayidx991, align 8
  store double %651, double* %v, align 8
  %652 = load double, double* %v, align 8
  %cmp992 = fcmp ogt double %652, 0.000000e+00
  br i1 %cmp992, label %if.then.993, label %if.end.1010

if.then.993:                                      ; preds = %if.end.986
  %call994 = call double @flam3_random01()
  %mul995 = fmul double %call994, 2.000000e+00
  %mul996 = fmul double %mul995, 0x400921FB54442D18
  store double %mul996, double* %rx, align 8
  %653 = load double, double* %rx, align 8
  %call997 = call double @sin(double %653) #3
  store double %call997, double* %sinr, align 8
  %654 = load double, double* %rx, align 8
  %call998 = call double @cos(double %654) #3
  store double %call998, double* %cosr, align 8
  %call999 = call double @flam3_random01()
  store double %call999, double* %nois, align 8
  %655 = load double, double* %v, align 8
  %656 = load double, double* %nois, align 8
  %mul1000 = fmul double %655, %656
  %657 = load double, double* %tx, align 8
  %mul1001 = fmul double %mul1000, %657
  %658 = load double, double* %cosr, align 8
  %mul1002 = fmul double %mul1001, %658
  %arrayidx1003 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %659 = load double, double* %arrayidx1003, align 8
  %add1004 = fadd double %659, %mul1002
  store double %add1004, double* %arrayidx1003, align 8
  %660 = load double, double* %v, align 8
  %661 = load double, double* %nois, align 8
  %mul1005 = fmul double %660, %661
  %662 = load double, double* %ty, align 8
  %mul1006 = fmul double %mul1005, %662
  %663 = load double, double* %sinr, align 8
  %mul1007 = fmul double %mul1006, %663
  %arrayidx1008 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %664 = load double, double* %arrayidx1008, align 8
  %add1009 = fadd double %664, %mul1007
  store double %add1009, double* %arrayidx1008, align 8
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.then.993, %if.end.986
  %665 = load i32, i32* %fn, align 4
  %idxprom1011 = sext i32 %665 to i64
  %666 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform1012 = getelementptr inbounds %struct.control_point, %struct.control_point* %666, i32 0, i32 0
  %arrayidx1013 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform1012, i32 0, i64 %idxprom1011
  %var1014 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx1013, i32 0, i32 0
  %arrayidx1015 = getelementptr inbounds [29 x double], [29 x double]* %var1014, i32 0, i64 27
  %667 = load double, double* %arrayidx1015, align 8
  store double %667, double* %v, align 8
  %668 = load double, double* %v, align 8
  %cmp1016 = fcmp ogt double %668, 0.000000e+00
  br i1 %cmp1016, label %if.then.1017, label %if.end.1036

if.then.1017:                                     ; preds = %if.end.1010
  %call1022 = call double @flam3_random01()
  %mul1023 = fmul double %call1022, 2.000000e+00
  %mul1024 = fmul double %mul1023, 0x400921FB54442D18
  store double %mul1024, double* %rx1018, align 8
  %669 = load double, double* %rx1018, align 8
  %call1025 = call double @sin(double %669) #3
  store double %call1025, double* %sinr1019, align 8
  %670 = load double, double* %rx1018, align 8
  %call1026 = call double @cos(double %670) #3
  store double %call1026, double* %cosr1020, align 8
  %call1027 = call double @flam3_random01()
  store double %call1027, double* %nois1021, align 8
  %671 = load double, double* %v, align 8
  %672 = load double, double* %nois1021, align 8
  %mul1028 = fmul double %671, %672
  %673 = load double, double* %cosr1020, align 8
  %mul1029 = fmul double %mul1028, %673
  %arrayidx1030 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %674 = load double, double* %arrayidx1030, align 8
  %add1031 = fadd double %674, %mul1029
  store double %add1031, double* %arrayidx1030, align 8
  %675 = load double, double* %v, align 8
  %676 = load double, double* %nois1021, align 8
  %mul1032 = fmul double %675, %676
  %677 = load double, double* %sinr1019, align 8
  %mul1033 = fmul double %mul1032, %677
  %arrayidx1034 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %678 = load double, double* %arrayidx1034, align 8
  %add1035 = fadd double %678, %mul1033
  store double %add1035, double* %arrayidx1034, align 8
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.then.1017, %if.end.1010
  %679 = load i32, i32* %fn, align 4
  %idxprom1037 = sext i32 %679 to i64
  %680 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform1038 = getelementptr inbounds %struct.control_point, %struct.control_point* %680, i32 0, i32 0
  %arrayidx1039 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform1038, i32 0, i64 %idxprom1037
  %var1040 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx1039, i32 0, i32 0
  %arrayidx1041 = getelementptr inbounds [29 x double], [29 x double]* %var1040, i32 0, i64 28
  %681 = load double, double* %arrayidx1041, align 8
  store double %681, double* %v, align 8
  %682 = load double, double* %v, align 8
  %cmp1042 = fcmp ogt double %682, 0.000000e+00
  br i1 %cmp1042, label %if.then.1043, label %if.end.1065

if.then.1043:                                     ; preds = %if.end.1036
  %call1045 = call double @flam3_random01()
  %mul1046 = fmul double %call1045, 2.000000e+00
  %mul1047 = fmul double %mul1046, 0x400921FB54442D18
  store double %mul1047, double* %ang, align 8
  %683 = load double, double* %ang, align 8
  %call1048 = call double @sin(double %683) #3
  store double %call1048, double* %sina, align 8
  %684 = load double, double* %ang, align 8
  %call1049 = call double @cos(double %684) #3
  store double %call1049, double* %cosa, align 8
  %685 = load double, double* %v, align 8
  %call1050 = call double @flam3_random01()
  %call1051 = call double @flam3_random01()
  %add1052 = fadd double %call1050, %call1051
  %call1053 = call double @flam3_random01()
  %add1054 = fadd double %add1052, %call1053
  %call1055 = call double @flam3_random01()
  %add1056 = fadd double %add1054, %call1055
  %sub1057 = fsub double %add1056, 2.000000e+00
  %mul1058 = fmul double %685, %sub1057
  store double %mul1058, double* %r21044, align 8
  %686 = load double, double* %r21044, align 8
  %687 = load double, double* %cosa, align 8
  %mul1059 = fmul double %686, %687
  %arrayidx1060 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %688 = load double, double* %arrayidx1060, align 8
  %add1061 = fadd double %688, %mul1059
  store double %add1061, double* %arrayidx1060, align 8
  %689 = load double, double* %r21044, align 8
  %690 = load double, double* %sina, align 8
  %mul1062 = fmul double %689, %690
  %arrayidx1063 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %691 = load double, double* %arrayidx1063, align 8
  %add1064 = fadd double %691, %mul1062
  store double %add1064, double* %arrayidx1063, align 8
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1043, %if.end.1036
  %692 = load i32, i32* %i, align 4
  %cmp1066 = icmp sge i32 %692, 0
  br i1 %cmp1066, label %if.then.1067, label %if.end.1080

if.then.1067:                                     ; preds = %if.end.1065
  %arrayidx1068 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 0
  %693 = load double, double* %arrayidx1068, align 8
  %694 = load i32, i32* %i, align 4
  %idxprom1069 = sext i32 %694 to i64
  %695 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx1070 = getelementptr inbounds [3 x double], [3 x double]* %695, i64 %idxprom1069
  %arrayidx1071 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1070, i32 0, i64 0
  store double %693, double* %arrayidx1071, align 8
  %arrayidx1072 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 1
  %696 = load double, double* %arrayidx1072, align 8
  %697 = load i32, i32* %i, align 4
  %idxprom1073 = sext i32 %697 to i64
  %698 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx1074 = getelementptr inbounds [3 x double], [3 x double]* %698, i64 %idxprom1073
  %arrayidx1075 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1074, i32 0, i64 1
  store double %696, double* %arrayidx1075, align 8
  %arrayidx1076 = getelementptr inbounds [3 x double], [3 x double]* %p, i32 0, i64 2
  %699 = load double, double* %arrayidx1076, align 8
  %700 = load i32, i32* %i, align 4
  %idxprom1077 = sext i32 %700 to i64
  %701 = load [3 x double]*, [3 x double]** %points.addr, align 8
  %arrayidx1078 = getelementptr inbounds [3 x double], [3 x double]* %701, i64 %idxprom1077
  %arrayidx1079 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx1078, i32 0, i64 2
  store double %699, double* %arrayidx1079, align 8
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.then.1067, %if.end.1065
  br label %for.inc.1081

for.inc.1081:                                     ; preds = %if.end.1080
  %702 = load i32, i32* %i, align 4
  %inc1082 = add nsw i32 %702, 1
  store i32 %inc1082, i32* %i, align 4
  br label %for.cond.29

for.end.1083:                                     ; preds = %for.cond.29
  ret void
}

declare i32 @g_random_int_range(i32, i32) #1

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @flam3_random_bit() #0 {
entry:
  %0 = load i32, i32* @flam3_random_bit.n, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @g_random_int()
  store i32 %call, i32* @flam3_random_bit.l, align 4
  store i32 20, i32* @flam3_random_bit.n, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @flam3_random_bit.l, align 4
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* @flam3_random_bit.l, align 4
  %2 = load i32, i32* @flam3_random_bit.n, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @flam3_random_bit.n, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @flam3_random_bit.l, align 4
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @cosh(double) #2

; Function Attrs: nounwind
declare double @sinh(double) #2

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind uwtable
define internal double @flam3_random01() #0 {
entry:
  %call = call i32 @g_random_int()
  %and = and i32 %call, 268435455
  %conv = uitofp i32 %and to double
  %div = fdiv double %conv, 0x41AFFFFFFE000000
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @mult_matrix([2 x double]* %s1, [2 x double]* %s2, [2 x double]* %d) #0 {
entry:
  %s1.addr = alloca [2 x double]*, align 8
  %s2.addr = alloca [2 x double]*, align 8
  %d.addr = alloca [2 x double]*, align 8
  store [2 x double]* %s1, [2 x double]** %s1.addr, align 8
  store [2 x double]* %s2, [2 x double]** %s2.addr, align 8
  store [2 x double]* %d, [2 x double]** %d.addr, align 8
  %0 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 0
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx2, i32 0, i64 0
  %3 = load double, double* %arrayidx3, align 8
  %mul = fmul double %1, %3
  %4 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 1
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx4, i32 0, i64 0
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx6, i32 0, i64 1
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %add = fadd double %mul, %mul8
  %8 = load [2 x double]*, [2 x double]** %d.addr, align 8
  %arrayidx9 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx9, i32 0, i64 0
  store double %add, double* %arrayidx10, align 8
  %9 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx11, i32 0, i64 0
  %10 = load double, double* %arrayidx12, align 8
  %11 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 1
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx13, i32 0, i64 0
  %12 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %10, %12
  %13 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %13, i64 1
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx16, i32 0, i64 0
  %14 = load double, double* %arrayidx17, align 8
  %15 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 1
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx18, i32 0, i64 1
  %16 = load double, double* %arrayidx19, align 8
  %mul20 = fmul double %14, %16
  %add21 = fadd double %mul15, %mul20
  %17 = load [2 x double]*, [2 x double]** %d.addr, align 8
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 1
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 0
  store double %add21, double* %arrayidx23, align 8
  %18 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %18, i64 0
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx24, i32 0, i64 1
  %19 = load double, double* %arrayidx25, align 8
  %20 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx26 = getelementptr inbounds [2 x double], [2 x double]* %20, i64 0
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 0
  %21 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %19, %21
  %22 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %22, i64 1
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx29, i32 0, i64 1
  %23 = load double, double* %arrayidx30, align 8
  %24 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 0
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx31, i32 0, i64 1
  %25 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %23, %25
  %add34 = fadd double %mul28, %mul33
  %26 = load [2 x double]*, [2 x double]** %d.addr, align 8
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %26, i64 0
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 1
  store double %add34, double* %arrayidx36, align 8
  %27 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %27, i64 0
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx37, i32 0, i64 1
  %28 = load double, double* %arrayidx38, align 8
  %29 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx39 = getelementptr inbounds [2 x double], [2 x double]* %29, i64 1
  %arrayidx40 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx39, i32 0, i64 0
  %30 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %28, %30
  %31 = load [2 x double]*, [2 x double]** %s1.addr, align 8
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %31, i64 1
  %arrayidx43 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx42, i32 0, i64 1
  %32 = load double, double* %arrayidx43, align 8
  %33 = load [2 x double]*, [2 x double]** %s2.addr, align 8
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %33, i64 1
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx44, i32 0, i64 1
  %34 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %32, %34
  %add47 = fadd double %mul41, %mul46
  %35 = load [2 x double]*, [2 x double]** %d.addr, align 8
  %arrayidx48 = getelementptr inbounds [2 x double], [2 x double]* %35, i64 1
  %arrayidx49 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx48, i32 0, i64 1
  store double %add47, double* %arrayidx49, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @interpolate(%struct.control_point* %cps, i32 %ncps, double %time, %struct.control_point* %result) #0 {
entry:
  %cps.addr = alloca %struct.control_point*, align 8
  %ncps.addr = alloca i32, align 4
  %time.addr = alloca double, align 8
  %result.addr = alloca %struct.control_point*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %c0 = alloca double, align 8
  %c1 = alloca double, align 8
  %t = alloca double, align 8
  %spread = alloca double, align 8
  %d0 = alloca double, align 8
  %d1 = alloca double, align 8
  %e0 = alloca double, align 8
  %e1 = alloca double, align 8
  %c = alloca double, align 8
  %t124 = alloca [3 x double], align 16
  %s = alloca [3 x double], align 16
  %r = alloca double, align 8
  %rh_time = alloca double, align 8
  %tt = alloca double, align 8
  %m = alloca double, align 8
  store %struct.control_point* %cps, %struct.control_point** %cps.addr, align 8
  store i32 %ncps, i32* %ncps.addr, align 4
  store double %time, double* %time.addr, align 8
  store %struct.control_point* %result, %struct.control_point** %result.addr, align 8
  %0 = load i32, i32* %ncps.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %2 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx = getelementptr inbounds %struct.control_point, %struct.control_point* %2, i64 0
  %3 = bitcast %struct.control_point* %1 to i8*
  %4 = bitcast %struct.control_point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8104, i32 8, i1 false)
  br label %for.end.597

if.end:                                           ; preds = %entry
  %5 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.control_point, %struct.control_point* %5, i64 0
  %time2 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx1, i32 0, i32 2
  %6 = load double, double* %time2, align 8
  %7 = load double, double* %time.addr, align 8
  %cmp3 = fcmp oge double %6, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i1, align 4
  store i32 1, i32* %i2, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %ncps.addr, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %9 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.control_point, %struct.control_point* %9, i64 %idxprom
  %time6 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx5, i32 0, i32 2
  %10 = load double, double* %time6, align 8
  %11 = load double, double* %time.addr, align 8
  %cmp7 = fcmp ole double %10, %11
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %12 = load i32, i32* %ncps.addr, align 4
  %sub9 = sub nsw i32 %12, 2
  store i32 %sub9, i32* %i1, align 4
  %13 = load i32, i32* %ncps.addr, align 4
  %sub10 = sub nsw i32 %13, 1
  store i32 %sub10, i32* %i2, align 4
  br label %if.end.30

if.else.11:                                       ; preds = %if.else
  store i32 0, i32* %i1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.11
  %14 = load i32, i32* %i1, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.control_point, %struct.control_point* %15, i64 %idxprom12
  %time14 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx13, i32 0, i32 2
  %16 = load double, double* %time14, align 8
  %17 = load double, double* %time.addr, align 8
  %cmp15 = fcmp olt double %16, %17
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %i1, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i1, align 4
  %20 = load i32, i32* %i1, align 4
  %add = add nsw i32 %20, 1
  store i32 %add, i32* %i2, align 4
  %21 = load double, double* %time.addr, align 8
  %22 = load i32, i32* %i1, align 4
  %idxprom16 = sext i32 %22 to i64
  %23 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.control_point, %struct.control_point* %23, i64 %idxprom16
  %time18 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx17, i32 0, i32 2
  %24 = load double, double* %time18, align 8
  %sub19 = fsub double %21, %24
  %cmp20 = fcmp ogt double %sub19, -1.000000e-07
  br i1 %cmp20, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %while.end
  %25 = load double, double* %time.addr, align 8
  %26 = load i32, i32* %i1, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.control_point, %struct.control_point* %27, i64 %idxprom21
  %time23 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx22, i32 0, i32 2
  %28 = load double, double* %time23, align 8
  %sub24 = fsub double %25, %28
  %cmp25 = fcmp olt double %sub24, 1.000000e-07
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %land.lhs.true
  %29 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %30 = load i32, i32* %i1, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.control_point, %struct.control_point* %31, i64 %idxprom27
  %32 = bitcast %struct.control_point* %29 to i8*
  %33 = bitcast %struct.control_point* %arrayidx28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 8104, i32 8, i1 false)
  br label %for.end.597

if.end.29:                                        ; preds = %land.lhs.true, %while.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.4
  %34 = load i32, i32* %i2, align 4
  %idxprom32 = sext i32 %34 to i64
  %35 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.control_point, %struct.control_point* %35, i64 %idxprom32
  %time34 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx33, i32 0, i32 2
  %36 = load double, double* %time34, align 8
  %37 = load double, double* %time.addr, align 8
  %sub35 = fsub double %36, %37
  %38 = load i32, i32* %i2, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.control_point, %struct.control_point* %39, i64 %idxprom36
  %time38 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx37, i32 0, i32 2
  %40 = load double, double* %time38, align 8
  %41 = load i32, i32* %i1, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.control_point, %struct.control_point* %42, i64 %idxprom39
  %time41 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx40, i32 0, i32 2
  %43 = load double, double* %time41, align 8
  %sub42 = fsub double %40, %43
  %div = fdiv double %sub35, %sub42
  store double %div, double* %c0, align 8
  %44 = load double, double* %c0, align 8
  %sub43 = fsub double 1.000000e+00, %44
  store double %sub43, double* %c1, align 8
  %45 = load double, double* %time.addr, align 8
  %46 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %time44 = getelementptr inbounds %struct.control_point, %struct.control_point* %46, i32 0, i32 2
  store double %45, double* %time44, align 8
  %47 = load i32, i32* %i1, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.control_point, %struct.control_point* %48, i64 %idxprom45
  %cmap_inter = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx46, i32 0, i32 17
  %49 = load i32, i32* %cmap_inter, align 4
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.47, label %if.else.119

if.then.47:                                       ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.116, %if.then.47
  %50 = load i32, i32* %i, align 4
  %cmp48 = icmp slt i32 %50, 256
  br i1 %cmp48, label %for.body, label %for.end.118

for.body:                                         ; preds = %for.cond
  store double 1.500000e-01, double* %spread, align 8
  %51 = load i32, i32* %i, align 4
  %conv = sitofp i32 %51 to double
  %mul = fmul double 0x401921FB54442D18, %conv
  %div49 = fdiv double %mul, 2.560000e+02
  store double %div49, double* %c, align 8
  %52 = load double, double* %c, align 8
  %53 = load i32, i32* %i1, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.control_point, %struct.control_point* %54, i64 %idxprom50
  %cmap_inter52 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx51, i32 0, i32 17
  %55 = load i32, i32* %cmap_inter52, align 4
  %conv53 = sitofp i32 %55 to double
  %mul54 = fmul double %52, %conv53
  %call = call double @cos(double %mul54) #3
  %56 = load double, double* %c1, align 8
  %mul55 = fmul double 4.000000e+00, %56
  %add56 = fadd double %call, %mul55
  %sub57 = fsub double %add56, 2.000000e+00
  store double %sub57, double* %c, align 8
  %57 = load double, double* %c, align 8
  %58 = load double, double* %spread, align 8
  %cmp58 = fcmp ogt double %57, %58
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body
  %59 = load double, double* %spread, align 8
  store double %59, double* %c, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body
  %60 = load double, double* %c, align 8
  %61 = load double, double* %spread, align 8
  %sub62 = fsub double -0.000000e+00, %61
  %cmp63 = fcmp olt double %60, %sub62
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.61
  %62 = load double, double* %spread, align 8
  %sub66 = fsub double -0.000000e+00, %62
  store double %sub66, double* %c, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.61
  %63 = load double, double* %c, align 8
  %64 = load double, double* %spread, align 8
  %add68 = fadd double %63, %64
  %mul69 = fmul double %add68, 5.000000e-01
  %65 = load double, double* %spread, align 8
  %div70 = fdiv double %mul69, %65
  store double %div70, double* %d1, align 8
  %66 = load double, double* %d1, align 8
  %sub71 = fsub double 1.000000e+00, %66
  store double %sub71, double* %d0, align 8
  %67 = load double, double* %d0, align 8
  %cmp72 = fcmp olt double %67, 5.000000e-01
  br i1 %cmp72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.67
  %68 = load double, double* %d0, align 8
  %mul74 = fmul double %68, 2.000000e+00
  br label %cond.end

cond.false:                                       ; preds = %if.end.67
  %69 = load double, double* %d1, align 8
  %mul75 = fmul double %69, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul74, %cond.true ], [ %mul75, %cond.false ]
  store double %cond, double* %e0, align 8
  %70 = load double, double* %e0, align 8
  %sub76 = fsub double 1.000000e+00, %70
  store double %sub76, double* %e1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %cond.end
  %71 = load i32, i32* %j, align 4
  %cmp78 = icmp slt i32 %71, 3
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.77
  %72 = load double, double* %d0, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %73 to i64
  %74 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %74 to i64
  %75 = load i32, i32* %i1, align 4
  %idxprom83 = sext i32 %75 to i64
  %76 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx84 = getelementptr inbounds %struct.control_point, %struct.control_point* %76, i64 %idxprom83
  %cmap = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx84, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap, i32 0, i64 %idxprom82
  %arrayidx86 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx85, i32 0, i64 %idxprom81
  %77 = load double, double* %arrayidx86, align 8
  %mul87 = fmul double %72, %77
  %78 = load double, double* %d1, align 8
  %79 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %80 to i64
  %81 = load i32, i32* %i2, align 4
  %idxprom90 = sext i32 %81 to i64
  %82 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.control_point, %struct.control_point* %82, i64 %idxprom90
  %cmap92 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap92, i32 0, i64 %idxprom89
  %arrayidx94 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx93, i32 0, i64 %idxprom88
  %83 = load double, double* %arrayidx94, align 8
  %mul95 = fmul double %78, %83
  %add96 = fadd double %mul87, %mul95
  %84 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %85 to i64
  %86 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %cmap99 = getelementptr inbounds %struct.control_point, %struct.control_point* %86, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap99, i32 0, i64 %idxprom98
  %arrayidx101 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx100, i32 0, i64 %idxprom97
  store double %add96, double* %arrayidx101, align 8
  %87 = load double, double* %e1, align 8
  %88 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %89 to i64
  %90 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %cmap104 = getelementptr inbounds %struct.control_point, %struct.control_point* %90, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap104, i32 0, i64 %idxprom103
  %arrayidx106 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx105, i32 0, i64 %idxprom102
  %91 = load double, double* %arrayidx106, align 8
  %mul107 = fmul double %87, %91
  %92 = load double, double* %e0, align 8
  %mul108 = fmul double %92, 1.000000e+00
  %add109 = fadd double %mul107, %mul108
  %93 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %94 to i64
  %95 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %cmap112 = getelementptr inbounds %struct.control_point, %struct.control_point* %95, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx113, i32 0, i64 %idxprom110
  store double %add109, double* %arrayidx114, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.80
  %96 = load i32, i32* %j, align 4
  %inc115 = add nsw i32 %96, 1
  store i32 %inc115, i32* %j, align 4
  br label %for.cond.77

for.end:                                          ; preds = %for.cond.77
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end
  %97 = load i32, i32* %i, align 4
  %inc117 = add nsw i32 %97, 1
  store i32 %inc117, i32* %i, align 4
  br label %for.cond

for.end.118:                                      ; preds = %for.cond
  br label %if.end.162

if.else.119:                                      ; preds = %if.end.31
  store i32 0, i32* %i, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.159, %if.else.119
  %98 = load i32, i32* %i, align 4
  %cmp121 = icmp slt i32 %98, 256
  br i1 %cmp121, label %for.body.123, label %for.end.161

for.body.123:                                     ; preds = %for.cond.120
  %99 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %99 to i64
  %100 = load i32, i32* %i1, align 4
  %idxprom126 = sext i32 %100 to i64
  %101 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx127 = getelementptr inbounds %struct.control_point, %struct.control_point* %101, i64 %idxprom126
  %cmap128 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap128, i32 0, i64 %idxprom125
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %arrayidx129, i32 0, i32 0
  %arraydecay130 = getelementptr inbounds [3 x double], [3 x double]* %s, i32 0, i32 0
  call void @rgb2hsv(double* %arraydecay, double* %arraydecay130)
  %102 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %102 to i64
  %103 = load i32, i32* %i2, align 4
  %idxprom132 = sext i32 %103 to i64
  %104 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx133 = getelementptr inbounds %struct.control_point, %struct.control_point* %104, i64 %idxprom132
  %cmap134 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx133, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap134, i32 0, i64 %idxprom131
  %arraydecay136 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx135, i32 0, i32 0
  %arraydecay137 = getelementptr inbounds [3 x double], [3 x double]* %t124, i32 0, i32 0
  call void @rgb2hsv(double* %arraydecay136, double* %arraydecay137)
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.151, %for.body.123
  %105 = load i32, i32* %j, align 4
  %cmp139 = icmp slt i32 %105, 3
  br i1 %cmp139, label %for.body.141, label %for.end.153

for.body.141:                                     ; preds = %for.cond.138
  %106 = load double, double* %c0, align 8
  %107 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %107 to i64
  %arrayidx143 = getelementptr inbounds [3 x double], [3 x double]* %s, i32 0, i64 %idxprom142
  %108 = load double, double* %arrayidx143, align 8
  %mul144 = fmul double %106, %108
  %109 = load double, double* %c1, align 8
  %110 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %110 to i64
  %arrayidx146 = getelementptr inbounds [3 x double], [3 x double]* %t124, i32 0, i64 %idxprom145
  %111 = load double, double* %arrayidx146, align 8
  %mul147 = fmul double %109, %111
  %add148 = fadd double %mul144, %mul147
  %112 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %112 to i64
  %arrayidx150 = getelementptr inbounds [3 x double], [3 x double]* %t124, i32 0, i64 %idxprom149
  store double %add148, double* %arrayidx150, align 8
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.141
  %113 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %113, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.138

for.end.153:                                      ; preds = %for.cond.138
  %arraydecay154 = getelementptr inbounds [3 x double], [3 x double]* %t124, i32 0, i32 0
  %114 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %114 to i64
  %115 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %cmap156 = getelementptr inbounds %struct.control_point, %struct.control_point* %115, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap156, i32 0, i64 %idxprom155
  %arraydecay158 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx157, i32 0, i32 0
  call void @hsv2rgb(double* %arraydecay154, double* %arraydecay158)
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.153
  %116 = load i32, i32* %i, align 4
  %inc160 = add nsw i32 %116, 1
  store i32 %inc160, i32* %i, align 4
  br label %for.cond.120

for.end.161:                                      ; preds = %for.cond.120
  br label %if.end.162

if.end.162:                                       ; preds = %for.end.161, %for.end.118
  %117 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %cmap_index = getelementptr inbounds %struct.control_point, %struct.control_point* %117, i32 0, i32 3
  store i32 -1, i32* %cmap_index, align 4
  %118 = load double, double* %c0, align 8
  %119 = load i32, i32* %i1, align 4
  %idxprom163 = sext i32 %119 to i64
  %120 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.control_point, %struct.control_point* %120, i64 %idxprom163
  %brightness = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx164, i32 0, i32 4
  %121 = load double, double* %brightness, align 8
  %mul165 = fmul double %118, %121
  %122 = load double, double* %c1, align 8
  %123 = load i32, i32* %i2, align 4
  %idxprom166 = sext i32 %123 to i64
  %124 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx167 = getelementptr inbounds %struct.control_point, %struct.control_point* %124, i64 %idxprom166
  %brightness168 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx167, i32 0, i32 4
  %125 = load double, double* %brightness168, align 8
  %mul169 = fmul double %122, %125
  %add170 = fadd double %mul165, %mul169
  %126 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %brightness171 = getelementptr inbounds %struct.control_point, %struct.control_point* %126, i32 0, i32 4
  store double %add170, double* %brightness171, align 8
  %127 = load double, double* %c0, align 8
  %128 = load i32, i32* %i1, align 4
  %idxprom172 = sext i32 %128 to i64
  %129 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx173 = getelementptr inbounds %struct.control_point, %struct.control_point* %129, i64 %idxprom172
  %contrast = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx173, i32 0, i32 5
  %130 = load double, double* %contrast, align 8
  %mul174 = fmul double %127, %130
  %131 = load double, double* %c1, align 8
  %132 = load i32, i32* %i2, align 4
  %idxprom175 = sext i32 %132 to i64
  %133 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct.control_point, %struct.control_point* %133, i64 %idxprom175
  %contrast177 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx176, i32 0, i32 5
  %134 = load double, double* %contrast177, align 8
  %mul178 = fmul double %131, %134
  %add179 = fadd double %mul174, %mul178
  %135 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %contrast180 = getelementptr inbounds %struct.control_point, %struct.control_point* %135, i32 0, i32 5
  store double %add179, double* %contrast180, align 8
  %136 = load double, double* %c0, align 8
  %137 = load i32, i32* %i1, align 4
  %idxprom181 = sext i32 %137 to i64
  %138 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.control_point, %struct.control_point* %138, i64 %idxprom181
  %gamma = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx182, i32 0, i32 6
  %139 = load double, double* %gamma, align 8
  %mul183 = fmul double %136, %139
  %140 = load double, double* %c1, align 8
  %141 = load i32, i32* %i2, align 4
  %idxprom184 = sext i32 %141 to i64
  %142 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx185 = getelementptr inbounds %struct.control_point, %struct.control_point* %142, i64 %idxprom184
  %gamma186 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx185, i32 0, i32 6
  %143 = load double, double* %gamma186, align 8
  %mul187 = fmul double %140, %143
  %add188 = fadd double %mul183, %mul187
  %144 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %gamma189 = getelementptr inbounds %struct.control_point, %struct.control_point* %144, i32 0, i32 6
  store double %add188, double* %gamma189, align 8
  %145 = load double, double* %c0, align 8
  %146 = load i32, i32* %i1, align 4
  %idxprom190 = sext i32 %146 to i64
  %147 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx191 = getelementptr inbounds %struct.control_point, %struct.control_point* %147, i64 %idxprom190
  %width = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx191, i32 0, i32 7
  %148 = load i32, i32* %width, align 4
  %conv192 = sitofp i32 %148 to double
  %mul193 = fmul double %145, %conv192
  %149 = load double, double* %c1, align 8
  %150 = load i32, i32* %i2, align 4
  %idxprom194 = sext i32 %150 to i64
  %151 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx195 = getelementptr inbounds %struct.control_point, %struct.control_point* %151, i64 %idxprom194
  %width196 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx195, i32 0, i32 7
  %152 = load i32, i32* %width196, align 4
  %conv197 = sitofp i32 %152 to double
  %mul198 = fmul double %149, %conv197
  %add199 = fadd double %mul193, %mul198
  %conv200 = fptosi double %add199 to i32
  %153 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %width201 = getelementptr inbounds %struct.control_point, %struct.control_point* %153, i32 0, i32 7
  store i32 %conv200, i32* %width201, align 4
  %154 = load double, double* %c0, align 8
  %155 = load i32, i32* %i1, align 4
  %idxprom202 = sext i32 %155 to i64
  %156 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx203 = getelementptr inbounds %struct.control_point, %struct.control_point* %156, i64 %idxprom202
  %height = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx203, i32 0, i32 8
  %157 = load i32, i32* %height, align 4
  %conv204 = sitofp i32 %157 to double
  %mul205 = fmul double %154, %conv204
  %158 = load double, double* %c1, align 8
  %159 = load i32, i32* %i2, align 4
  %idxprom206 = sext i32 %159 to i64
  %160 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx207 = getelementptr inbounds %struct.control_point, %struct.control_point* %160, i64 %idxprom206
  %height208 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx207, i32 0, i32 8
  %161 = load i32, i32* %height208, align 4
  %conv209 = sitofp i32 %161 to double
  %mul210 = fmul double %158, %conv209
  %add211 = fadd double %mul205, %mul210
  %conv212 = fptosi double %add211 to i32
  %162 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %height213 = getelementptr inbounds %struct.control_point, %struct.control_point* %162, i32 0, i32 8
  store i32 %conv212, i32* %height213, align 4
  %163 = load double, double* %c0, align 8
  %164 = load i32, i32* %i1, align 4
  %idxprom214 = sext i32 %164 to i64
  %165 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx215 = getelementptr inbounds %struct.control_point, %struct.control_point* %165, i64 %idxprom214
  %spatial_oversample = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx215, i32 0, i32 9
  %166 = load i32, i32* %spatial_oversample, align 4
  %conv216 = sitofp i32 %166 to double
  %mul217 = fmul double %163, %conv216
  %167 = load double, double* %c1, align 8
  %168 = load i32, i32* %i2, align 4
  %idxprom218 = sext i32 %168 to i64
  %169 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx219 = getelementptr inbounds %struct.control_point, %struct.control_point* %169, i64 %idxprom218
  %spatial_oversample220 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx219, i32 0, i32 9
  %170 = load i32, i32* %spatial_oversample220, align 4
  %conv221 = sitofp i32 %170 to double
  %mul222 = fmul double %167, %conv221
  %add223 = fadd double %mul217, %mul222
  %conv224 = fptosi double %add223 to i32
  %171 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %spatial_oversample225 = getelementptr inbounds %struct.control_point, %struct.control_point* %171, i32 0, i32 9
  store i32 %conv224, i32* %spatial_oversample225, align 4
  %172 = load double, double* %c0, align 8
  %173 = load i32, i32* %i1, align 4
  %idxprom226 = sext i32 %173 to i64
  %174 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx227 = getelementptr inbounds %struct.control_point, %struct.control_point* %174, i64 %idxprom226
  %center = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx227, i32 0, i32 10
  %arrayidx228 = getelementptr inbounds [2 x double], [2 x double]* %center, i32 0, i64 0
  %175 = load double, double* %arrayidx228, align 8
  %mul229 = fmul double %172, %175
  %176 = load double, double* %c1, align 8
  %177 = load i32, i32* %i2, align 4
  %idxprom230 = sext i32 %177 to i64
  %178 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx231 = getelementptr inbounds %struct.control_point, %struct.control_point* %178, i64 %idxprom230
  %center232 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx231, i32 0, i32 10
  %arrayidx233 = getelementptr inbounds [2 x double], [2 x double]* %center232, i32 0, i64 0
  %179 = load double, double* %arrayidx233, align 8
  %mul234 = fmul double %176, %179
  %add235 = fadd double %mul229, %mul234
  %180 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %center236 = getelementptr inbounds %struct.control_point, %struct.control_point* %180, i32 0, i32 10
  %arrayidx237 = getelementptr inbounds [2 x double], [2 x double]* %center236, i32 0, i64 0
  store double %add235, double* %arrayidx237, align 8
  %181 = load double, double* %c0, align 8
  %182 = load i32, i32* %i1, align 4
  %idxprom238 = sext i32 %182 to i64
  %183 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx239 = getelementptr inbounds %struct.control_point, %struct.control_point* %183, i64 %idxprom238
  %center240 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx239, i32 0, i32 10
  %arrayidx241 = getelementptr inbounds [2 x double], [2 x double]* %center240, i32 0, i64 1
  %184 = load double, double* %arrayidx241, align 8
  %mul242 = fmul double %181, %184
  %185 = load double, double* %c1, align 8
  %186 = load i32, i32* %i2, align 4
  %idxprom243 = sext i32 %186 to i64
  %187 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx244 = getelementptr inbounds %struct.control_point, %struct.control_point* %187, i64 %idxprom243
  %center245 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx244, i32 0, i32 10
  %arrayidx246 = getelementptr inbounds [2 x double], [2 x double]* %center245, i32 0, i64 1
  %188 = load double, double* %arrayidx246, align 8
  %mul247 = fmul double %185, %188
  %add248 = fadd double %mul242, %mul247
  %189 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %center249 = getelementptr inbounds %struct.control_point, %struct.control_point* %189, i32 0, i32 10
  %arrayidx250 = getelementptr inbounds [2 x double], [2 x double]* %center249, i32 0, i64 1
  store double %add248, double* %arrayidx250, align 8
  %190 = load double, double* %c0, align 8
  %191 = load i32, i32* %i1, align 4
  %idxprom251 = sext i32 %191 to i64
  %192 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx252 = getelementptr inbounds %struct.control_point, %struct.control_point* %192, i64 %idxprom251
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx252, i32 0, i32 12
  %193 = load double, double* %pixels_per_unit, align 8
  %mul253 = fmul double %190, %193
  %194 = load double, double* %c1, align 8
  %195 = load i32, i32* %i2, align 4
  %idxprom254 = sext i32 %195 to i64
  %196 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx255 = getelementptr inbounds %struct.control_point, %struct.control_point* %196, i64 %idxprom254
  %pixels_per_unit256 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx255, i32 0, i32 12
  %197 = load double, double* %pixels_per_unit256, align 8
  %mul257 = fmul double %194, %197
  %add258 = fadd double %mul253, %mul257
  %198 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %pixels_per_unit259 = getelementptr inbounds %struct.control_point, %struct.control_point* %198, i32 0, i32 12
  store double %add258, double* %pixels_per_unit259, align 8
  %199 = load double, double* %c0, align 8
  %200 = load i32, i32* %i1, align 4
  %idxprom260 = sext i32 %200 to i64
  %201 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx261 = getelementptr inbounds %struct.control_point, %struct.control_point* %201, i64 %idxprom260
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx261, i32 0, i32 13
  %202 = load double, double* %spatial_filter_radius, align 8
  %mul262 = fmul double %199, %202
  %203 = load double, double* %c1, align 8
  %204 = load i32, i32* %i2, align 4
  %idxprom263 = sext i32 %204 to i64
  %205 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx264 = getelementptr inbounds %struct.control_point, %struct.control_point* %205, i64 %idxprom263
  %spatial_filter_radius265 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx264, i32 0, i32 13
  %206 = load double, double* %spatial_filter_radius265, align 8
  %mul266 = fmul double %203, %206
  %add267 = fadd double %mul262, %mul266
  %207 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %spatial_filter_radius268 = getelementptr inbounds %struct.control_point, %struct.control_point* %207, i32 0, i32 13
  store double %add267, double* %spatial_filter_radius268, align 8
  %208 = load double, double* %c0, align 8
  %209 = load i32, i32* %i1, align 4
  %idxprom269 = sext i32 %209 to i64
  %210 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx270 = getelementptr inbounds %struct.control_point, %struct.control_point* %210, i64 %idxprom269
  %sample_density = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx270, i32 0, i32 14
  %211 = load double, double* %sample_density, align 8
  %mul271 = fmul double %208, %211
  %212 = load double, double* %c1, align 8
  %213 = load i32, i32* %i2, align 4
  %idxprom272 = sext i32 %213 to i64
  %214 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx273 = getelementptr inbounds %struct.control_point, %struct.control_point* %214, i64 %idxprom272
  %sample_density274 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx273, i32 0, i32 14
  %215 = load double, double* %sample_density274, align 8
  %mul275 = fmul double %212, %215
  %add276 = fadd double %mul271, %mul275
  %216 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %sample_density277 = getelementptr inbounds %struct.control_point, %struct.control_point* %216, i32 0, i32 14
  store double %add276, double* %sample_density277, align 8
  %217 = load double, double* %c0, align 8
  %218 = load i32, i32* %i1, align 4
  %idxprom278 = sext i32 %218 to i64
  %219 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx279 = getelementptr inbounds %struct.control_point, %struct.control_point* %219, i64 %idxprom278
  %zoom = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx279, i32 0, i32 11
  %220 = load double, double* %zoom, align 8
  %mul280 = fmul double %217, %220
  %221 = load double, double* %c1, align 8
  %222 = load i32, i32* %i2, align 4
  %idxprom281 = sext i32 %222 to i64
  %223 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx282 = getelementptr inbounds %struct.control_point, %struct.control_point* %223, i64 %idxprom281
  %zoom283 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx282, i32 0, i32 11
  %224 = load double, double* %zoom283, align 8
  %mul284 = fmul double %221, %224
  %add285 = fadd double %mul280, %mul284
  %225 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %zoom286 = getelementptr inbounds %struct.control_point, %struct.control_point* %225, i32 0, i32 11
  store double %add285, double* %zoom286, align 8
  %226 = load double, double* %c0, align 8
  %227 = load i32, i32* %i1, align 4
  %idxprom287 = sext i32 %227 to i64
  %228 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx288 = getelementptr inbounds %struct.control_point, %struct.control_point* %228, i64 %idxprom287
  %nbatches = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx288, i32 0, i32 15
  %229 = load i32, i32* %nbatches, align 4
  %conv289 = sitofp i32 %229 to double
  %mul290 = fmul double %226, %conv289
  %230 = load double, double* %c1, align 8
  %231 = load i32, i32* %i2, align 4
  %idxprom291 = sext i32 %231 to i64
  %232 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx292 = getelementptr inbounds %struct.control_point, %struct.control_point* %232, i64 %idxprom291
  %nbatches293 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx292, i32 0, i32 15
  %233 = load i32, i32* %nbatches293, align 4
  %conv294 = sitofp i32 %233 to double
  %mul295 = fmul double %230, %conv294
  %add296 = fadd double %mul290, %mul295
  %conv297 = fptosi double %add296 to i32
  %234 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %nbatches298 = getelementptr inbounds %struct.control_point, %struct.control_point* %234, i32 0, i32 15
  store i32 %conv297, i32* %nbatches298, align 4
  %235 = load double, double* %c0, align 8
  %236 = load i32, i32* %i1, align 4
  %idxprom299 = sext i32 %236 to i64
  %237 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx300 = getelementptr inbounds %struct.control_point, %struct.control_point* %237, i64 %idxprom299
  %white_level = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx300, i32 0, i32 16
  %238 = load i32, i32* %white_level, align 4
  %conv301 = sitofp i32 %238 to double
  %mul302 = fmul double %235, %conv301
  %239 = load double, double* %c1, align 8
  %240 = load i32, i32* %i2, align 4
  %idxprom303 = sext i32 %240 to i64
  %241 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx304 = getelementptr inbounds %struct.control_point, %struct.control_point* %241, i64 %idxprom303
  %white_level305 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx304, i32 0, i32 16
  %242 = load i32, i32* %white_level305, align 4
  %conv306 = sitofp i32 %242 to double
  %mul307 = fmul double %239, %conv306
  %add308 = fadd double %mul302, %mul307
  %conv309 = fptosi double %add308 to i32
  %243 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %white_level310 = getelementptr inbounds %struct.control_point, %struct.control_point* %243, i32 0, i32 16
  store i32 %conv309, i32* %white_level310, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.364, %if.end.162
  %244 = load i32, i32* %i, align 4
  %cmp312 = icmp slt i32 %244, 2
  br i1 %cmp312, label %for.body.314, label %for.end.366

for.body.314:                                     ; preds = %for.cond.311
  store i32 0, i32* %j, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.361, %for.body.314
  %245 = load i32, i32* %j, align 4
  %cmp316 = icmp slt i32 %245, 2
  br i1 %cmp316, label %for.body.318, label %for.end.363

for.body.318:                                     ; preds = %for.cond.315
  %246 = load double, double* %c0, align 8
  %247 = load i32, i32* %j, align 4
  %idxprom319 = sext i32 %247 to i64
  %248 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %248 to i64
  %249 = load i32, i32* %i1, align 4
  %idxprom321 = sext i32 %249 to i64
  %250 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx322 = getelementptr inbounds %struct.control_point, %struct.control_point* %250, i64 %idxprom321
  %pulse = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx322, i32 0, i32 18
  %arrayidx323 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse, i32 0, i64 %idxprom320
  %arrayidx324 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx323, i32 0, i64 %idxprom319
  %251 = load double, double* %arrayidx324, align 8
  %mul325 = fmul double %246, %251
  %252 = load double, double* %c1, align 8
  %253 = load i32, i32* %j, align 4
  %idxprom326 = sext i32 %253 to i64
  %254 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %254 to i64
  %255 = load i32, i32* %i2, align 4
  %idxprom328 = sext i32 %255 to i64
  %256 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx329 = getelementptr inbounds %struct.control_point, %struct.control_point* %256, i64 %idxprom328
  %pulse330 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx329, i32 0, i32 18
  %arrayidx331 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse330, i32 0, i64 %idxprom327
  %arrayidx332 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx331, i32 0, i64 %idxprom326
  %257 = load double, double* %arrayidx332, align 8
  %mul333 = fmul double %252, %257
  %add334 = fadd double %mul325, %mul333
  %258 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %258 to i64
  %259 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %259 to i64
  %260 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %pulse337 = getelementptr inbounds %struct.control_point, %struct.control_point* %260, i32 0, i32 18
  %arrayidx338 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse337, i32 0, i64 %idxprom336
  %arrayidx339 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx338, i32 0, i64 %idxprom335
  store double %add334, double* %arrayidx339, align 8
  %261 = load double, double* %c0, align 8
  %262 = load i32, i32* %j, align 4
  %idxprom340 = sext i32 %262 to i64
  %263 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %263 to i64
  %264 = load i32, i32* %i1, align 4
  %idxprom342 = sext i32 %264 to i64
  %265 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx343 = getelementptr inbounds %struct.control_point, %struct.control_point* %265, i64 %idxprom342
  %wiggle = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx343, i32 0, i32 19
  %arrayidx344 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle, i32 0, i64 %idxprom341
  %arrayidx345 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx344, i32 0, i64 %idxprom340
  %266 = load double, double* %arrayidx345, align 8
  %mul346 = fmul double %261, %266
  %267 = load double, double* %c1, align 8
  %268 = load i32, i32* %j, align 4
  %idxprom347 = sext i32 %268 to i64
  %269 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %269 to i64
  %270 = load i32, i32* %i2, align 4
  %idxprom349 = sext i32 %270 to i64
  %271 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx350 = getelementptr inbounds %struct.control_point, %struct.control_point* %271, i64 %idxprom349
  %wiggle351 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx350, i32 0, i32 19
  %arrayidx352 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle351, i32 0, i64 %idxprom348
  %arrayidx353 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx352, i32 0, i64 %idxprom347
  %272 = load double, double* %arrayidx353, align 8
  %mul354 = fmul double %267, %272
  %add355 = fadd double %mul346, %mul354
  %273 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %273 to i64
  %274 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %274 to i64
  %275 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %wiggle358 = getelementptr inbounds %struct.control_point, %struct.control_point* %275, i32 0, i32 19
  %arrayidx359 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle358, i32 0, i64 %idxprom357
  %arrayidx360 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx359, i32 0, i64 %idxprom356
  store double %add355, double* %arrayidx360, align 8
  br label %for.inc.361

for.inc.361:                                      ; preds = %for.body.318
  %276 = load i32, i32* %j, align 4
  %inc362 = add nsw i32 %276, 1
  store i32 %inc362, i32* %j, align 4
  br label %for.cond.315

for.end.363:                                      ; preds = %for.cond.315
  br label %for.inc.364

for.inc.364:                                      ; preds = %for.end.363
  %277 = load i32, i32* %i, align 4
  %inc365 = add nsw i32 %277, 1
  store i32 %inc365, i32* %i, align 4
  br label %for.cond.311

for.end.366:                                      ; preds = %for.cond.311
  store i32 0, i32* %i, align 4
  br label %for.cond.367

for.cond.367:                                     ; preds = %for.inc.595, %for.end.366
  %278 = load i32, i32* %i, align 4
  %cmp368 = icmp slt i32 %278, 6
  br i1 %cmp368, label %for.body.370, label %for.end.597

for.body.370:                                     ; preds = %for.cond.367
  %279 = load double, double* %c0, align 8
  %280 = load i32, i32* %i, align 4
  %idxprom371 = sext i32 %280 to i64
  %281 = load i32, i32* %i1, align 4
  %idxprom372 = sext i32 %281 to i64
  %282 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx373 = getelementptr inbounds %struct.control_point, %struct.control_point* %282, i64 %idxprom372
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx373, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom371
  %density = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx374, i32 0, i32 2
  %283 = load double, double* %density, align 8
  %mul375 = fmul double %279, %283
  %284 = load double, double* %c1, align 8
  %285 = load i32, i32* %i, align 4
  %idxprom376 = sext i32 %285 to i64
  %286 = load i32, i32* %i2, align 4
  %idxprom377 = sext i32 %286 to i64
  %287 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx378 = getelementptr inbounds %struct.control_point, %struct.control_point* %287, i64 %idxprom377
  %xform379 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx378, i32 0, i32 0
  %arrayidx380 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform379, i32 0, i64 %idxprom376
  %density381 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx380, i32 0, i32 2
  %288 = load double, double* %density381, align 8
  %mul382 = fmul double %284, %288
  %add383 = fadd double %mul375, %mul382
  %289 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %289 to i64
  %290 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform385 = getelementptr inbounds %struct.control_point, %struct.control_point* %290, i32 0, i32 0
  %arrayidx386 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform385, i32 0, i64 %idxprom384
  %density387 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx386, i32 0, i32 2
  store double %add383, double* %density387, align 8
  %291 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %291 to i64
  %292 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform389 = getelementptr inbounds %struct.control_point, %struct.control_point* %292, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform389, i32 0, i64 %idxprom388
  %density391 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx390, i32 0, i32 2
  %293 = load double, double* %density391, align 8
  %cmp392 = fcmp ogt double %293, 0.000000e+00
  br i1 %cmp392, label %if.then.394, label %if.end.399

if.then.394:                                      ; preds = %for.body.370
  %294 = load i32, i32* %i, align 4
  %idxprom395 = sext i32 %294 to i64
  %295 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform396 = getelementptr inbounds %struct.control_point, %struct.control_point* %295, i32 0, i32 0
  %arrayidx397 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform396, i32 0, i64 %idxprom395
  %density398 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx397, i32 0, i32 2
  store double 1.000000e+00, double* %density398, align 8
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.394, %for.body.370
  %296 = load double, double* %c0, align 8
  %297 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %297 to i64
  %298 = load i32, i32* %i1, align 4
  %idxprom401 = sext i32 %298 to i64
  %299 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx402 = getelementptr inbounds %struct.control_point, %struct.control_point* %299, i64 %idxprom401
  %xform403 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx402, i32 0, i32 0
  %arrayidx404 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform403, i32 0, i64 %idxprom400
  %color = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx404, i32 0, i32 3
  %300 = load double, double* %color, align 8
  %mul405 = fmul double %296, %300
  %301 = load double, double* %c1, align 8
  %302 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %302 to i64
  %303 = load i32, i32* %i2, align 4
  %idxprom407 = sext i32 %303 to i64
  %304 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx408 = getelementptr inbounds %struct.control_point, %struct.control_point* %304, i64 %idxprom407
  %xform409 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx408, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform409, i32 0, i64 %idxprom406
  %color411 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx410, i32 0, i32 3
  %305 = load double, double* %color411, align 8
  %mul412 = fmul double %301, %305
  %add413 = fadd double %mul405, %mul412
  %306 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %306 to i64
  %307 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform415 = getelementptr inbounds %struct.control_point, %struct.control_point* %307, i32 0, i32 0
  %arrayidx416 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform415, i32 0, i64 %idxprom414
  %color417 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx416, i32 0, i32 3
  store double %add413, double* %color417, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.446, %if.end.399
  %308 = load i32, i32* %j, align 4
  %cmp419 = icmp slt i32 %308, 29
  br i1 %cmp419, label %for.body.421, label %for.end.448

for.body.421:                                     ; preds = %for.cond.418
  %309 = load double, double* %c0, align 8
  %310 = load i32, i32* %j, align 4
  %idxprom422 = sext i32 %310 to i64
  %311 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %311 to i64
  %312 = load i32, i32* %i1, align 4
  %idxprom424 = sext i32 %312 to i64
  %313 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx425 = getelementptr inbounds %struct.control_point, %struct.control_point* %313, i64 %idxprom424
  %xform426 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx425, i32 0, i32 0
  %arrayidx427 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform426, i32 0, i64 %idxprom423
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx427, i32 0, i32 0
  %arrayidx428 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 %idxprom422
  %314 = load double, double* %arrayidx428, align 8
  %mul429 = fmul double %309, %314
  %315 = load double, double* %c1, align 8
  %316 = load i32, i32* %j, align 4
  %idxprom430 = sext i32 %316 to i64
  %317 = load i32, i32* %i, align 4
  %idxprom431 = sext i32 %317 to i64
  %318 = load i32, i32* %i2, align 4
  %idxprom432 = sext i32 %318 to i64
  %319 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx433 = getelementptr inbounds %struct.control_point, %struct.control_point* %319, i64 %idxprom432
  %xform434 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx433, i32 0, i32 0
  %arrayidx435 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform434, i32 0, i64 %idxprom431
  %var436 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [29 x double], [29 x double]* %var436, i32 0, i64 %idxprom430
  %320 = load double, double* %arrayidx437, align 8
  %mul438 = fmul double %315, %320
  %add439 = fadd double %mul429, %mul438
  %321 = load i32, i32* %j, align 4
  %idxprom440 = sext i32 %321 to i64
  %322 = load i32, i32* %i, align 4
  %idxprom441 = sext i32 %322 to i64
  %323 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform442 = getelementptr inbounds %struct.control_point, %struct.control_point* %323, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform442, i32 0, i64 %idxprom441
  %var444 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx443, i32 0, i32 0
  %arrayidx445 = getelementptr inbounds [29 x double], [29 x double]* %var444, i32 0, i64 %idxprom440
  store double %add439, double* %arrayidx445, align 8
  br label %for.inc.446

for.inc.446:                                      ; preds = %for.body.421
  %324 = load i32, i32* %j, align 4
  %inc447 = add nsw i32 %324, 1
  store i32 %inc447, i32* %j, align 4
  br label %for.cond.418

for.end.448:                                      ; preds = %for.cond.418
  store double 0.000000e+00, double* %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.460, %for.end.448
  %325 = load i32, i32* %j, align 4
  %cmp450 = icmp slt i32 %325, 29
  br i1 %cmp450, label %for.body.452, label %for.end.462

for.body.452:                                     ; preds = %for.cond.449
  %326 = load i32, i32* %j, align 4
  %idxprom453 = sext i32 %326 to i64
  %327 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %327 to i64
  %328 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform455 = getelementptr inbounds %struct.control_point, %struct.control_point* %328, i32 0, i32 0
  %arrayidx456 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform455, i32 0, i64 %idxprom454
  %var457 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx456, i32 0, i32 0
  %arrayidx458 = getelementptr inbounds [29 x double], [29 x double]* %var457, i32 0, i64 %idxprom453
  %329 = load double, double* %arrayidx458, align 8
  %330 = load double, double* %t, align 8
  %add459 = fadd double %330, %329
  store double %add459, double* %t, align 8
  br label %for.inc.460

for.inc.460:                                      ; preds = %for.body.452
  %331 = load i32, i32* %j, align 4
  %inc461 = add nsw i32 %331, 1
  store i32 %inc461, i32* %j, align 4
  br label %for.cond.449

for.end.462:                                      ; preds = %for.cond.449
  %332 = load double, double* %t, align 8
  %div463 = fdiv double 1.000000e+00, %332
  store double %div463, double* %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.475, %for.end.462
  %333 = load i32, i32* %j, align 4
  %cmp465 = icmp slt i32 %333, 29
  br i1 %cmp465, label %for.body.467, label %for.end.477

for.body.467:                                     ; preds = %for.cond.464
  %334 = load double, double* %t, align 8
  %335 = load i32, i32* %j, align 4
  %idxprom468 = sext i32 %335 to i64
  %336 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %336 to i64
  %337 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform470 = getelementptr inbounds %struct.control_point, %struct.control_point* %337, i32 0, i32 0
  %arrayidx471 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform470, i32 0, i64 %idxprom469
  %var472 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx471, i32 0, i32 0
  %arrayidx473 = getelementptr inbounds [29 x double], [29 x double]* %var472, i32 0, i64 %idxprom468
  %338 = load double, double* %arrayidx473, align 8
  %mul474 = fmul double %338, %334
  store double %mul474, double* %arrayidx473, align 8
  br label %for.inc.475

for.inc.475:                                      ; preds = %for.body.467
  %339 = load i32, i32* %j, align 4
  %inc476 = add nsw i32 %339, 1
  store i32 %inc476, i32* %j, align 4
  br label %for.cond.464

for.end.477:                                      ; preds = %for.cond.464
  %340 = load double, double* %c1, align 8
  %341 = load i32, i32* %i, align 4
  %idxprom478 = sext i32 %341 to i64
  %342 = load i32, i32* %i1, align 4
  %idxprom479 = sext i32 %342 to i64
  %343 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx480 = getelementptr inbounds %struct.control_point, %struct.control_point* %343, i64 %idxprom479
  %xform481 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx480, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform481, i32 0, i64 %idxprom478
  %c483 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx482, i32 0, i32 1
  %arraydecay484 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c483, i32 0, i32 0
  %344 = load i32, i32* %i, align 4
  %idxprom485 = sext i32 %344 to i64
  %345 = load i32, i32* %i2, align 4
  %idxprom486 = sext i32 %345 to i64
  %346 = load %struct.control_point*, %struct.control_point** %cps.addr, align 8
  %arrayidx487 = getelementptr inbounds %struct.control_point, %struct.control_point* %346, i64 %idxprom486
  %xform488 = getelementptr inbounds %struct.control_point, %struct.control_point* %arrayidx487, i32 0, i32 0
  %arrayidx489 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform488, i32 0, i64 %idxprom485
  %c490 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx489, i32 0, i32 1
  %arraydecay491 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c490, i32 0, i32 0
  %347 = load i32, i32* %i, align 4
  %idxprom492 = sext i32 %347 to i64
  %348 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform493 = getelementptr inbounds %struct.control_point, %struct.control_point* %348, i32 0, i32 0
  %arrayidx494 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform493, i32 0, i64 %idxprom492
  %c495 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx494, i32 0, i32 1
  %arraydecay496 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c495, i32 0, i32 0
  call void @interpolate_matrix(double %340, [2 x double]* %arraydecay484, [2 x double]* %arraydecay491, [2 x double]* %arraydecay496)
  %349 = load double, double* %time.addr, align 8
  %mul497 = fmul double %349, 2.000000e+00
  %mul498 = fmul double %mul497, 0x400921FB54442D18
  %div499 = fdiv double %mul498, 1.800000e+03
  store double %div499, double* %rh_time, align 8
  store double 1.000000e+00, double* %r, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.516, %for.end.477
  %350 = load i32, i32* %j, align 4
  %cmp501 = icmp slt i32 %350, 2
  br i1 %cmp501, label %for.body.503, label %for.end.518

for.body.503:                                     ; preds = %for.cond.500
  %351 = load i32, i32* %j, align 4
  %idxprom504 = sext i32 %351 to i64
  %352 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %pulse505 = getelementptr inbounds %struct.control_point, %struct.control_point* %352, i32 0, i32 18
  %arrayidx506 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse505, i32 0, i64 %idxprom504
  %arrayidx507 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx506, i32 0, i64 0
  %353 = load double, double* %arrayidx507, align 8
  %354 = load i32, i32* %j, align 4
  %idxprom508 = sext i32 %354 to i64
  %355 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %pulse509 = getelementptr inbounds %struct.control_point, %struct.control_point* %355, i32 0, i32 18
  %arrayidx510 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse509, i32 0, i64 %idxprom508
  %arrayidx511 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx510, i32 0, i64 1
  %356 = load double, double* %arrayidx511, align 8
  %357 = load double, double* %rh_time, align 8
  %mul512 = fmul double %356, %357
  %call513 = call double @sin(double %mul512) #3
  %mul514 = fmul double %353, %call513
  %358 = load double, double* %r, align 8
  %add515 = fadd double %358, %mul514
  store double %add515, double* %r, align 8
  br label %for.inc.516

for.inc.516:                                      ; preds = %for.body.503
  %359 = load i32, i32* %j, align 4
  %inc517 = add nsw i32 %359, 1
  store i32 %inc517, i32* %j, align 4
  br label %for.cond.500

for.end.518:                                      ; preds = %for.cond.500
  store i32 0, i32* %j, align 4
  br label %for.cond.519

for.cond.519:                                     ; preds = %for.inc.539, %for.end.518
  %360 = load i32, i32* %j, align 4
  %cmp520 = icmp slt i32 %360, 3
  br i1 %cmp520, label %for.body.522, label %for.end.541

for.body.522:                                     ; preds = %for.cond.519
  %361 = load double, double* %r, align 8
  %362 = load i32, i32* %j, align 4
  %idxprom523 = sext i32 %362 to i64
  %363 = load i32, i32* %i, align 4
  %idxprom524 = sext i32 %363 to i64
  %364 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform525 = getelementptr inbounds %struct.control_point, %struct.control_point* %364, i32 0, i32 0
  %arrayidx526 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform525, i32 0, i64 %idxprom524
  %c527 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx526, i32 0, i32 1
  %arrayidx528 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c527, i32 0, i64 %idxprom523
  %arrayidx529 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx528, i32 0, i64 0
  %365 = load double, double* %arrayidx529, align 8
  %mul530 = fmul double %365, %361
  store double %mul530, double* %arrayidx529, align 8
  %366 = load double, double* %r, align 8
  %367 = load i32, i32* %j, align 4
  %idxprom531 = sext i32 %367 to i64
  %368 = load i32, i32* %i, align 4
  %idxprom532 = sext i32 %368 to i64
  %369 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform533 = getelementptr inbounds %struct.control_point, %struct.control_point* %369, i32 0, i32 0
  %arrayidx534 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform533, i32 0, i64 %idxprom532
  %c535 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx534, i32 0, i32 1
  %arrayidx536 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c535, i32 0, i64 %idxprom531
  %arrayidx537 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx536, i32 0, i64 1
  %370 = load double, double* %arrayidx537, align 8
  %mul538 = fmul double %370, %366
  store double %mul538, double* %arrayidx537, align 8
  br label %for.inc.539

for.inc.539:                                      ; preds = %for.body.522
  %371 = load i32, i32* %j, align 4
  %inc540 = add nsw i32 %371, 1
  store i32 %inc540, i32* %j, align 4
  br label %for.cond.519

for.end.541:                                      ; preds = %for.cond.519
  store i32 0, i32* %j, align 4
  br label %for.cond.542

for.cond.542:                                     ; preds = %for.inc.592, %for.end.541
  %372 = load i32, i32* %j, align 4
  %cmp543 = icmp slt i32 %372, 2
  br i1 %cmp543, label %for.body.545, label %for.end.594

for.body.545:                                     ; preds = %for.cond.542
  %373 = load i32, i32* %j, align 4
  %idxprom546 = sext i32 %373 to i64
  %374 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %wiggle547 = getelementptr inbounds %struct.control_point, %struct.control_point* %374, i32 0, i32 19
  %arrayidx548 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle547, i32 0, i64 %idxprom546
  %arrayidx549 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx548, i32 0, i64 1
  %375 = load double, double* %arrayidx549, align 8
  %376 = load double, double* %rh_time, align 8
  %mul550 = fmul double %375, %376
  store double %mul550, double* %tt, align 8
  %377 = load i32, i32* %j, align 4
  %idxprom551 = sext i32 %377 to i64
  %378 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %wiggle552 = getelementptr inbounds %struct.control_point, %struct.control_point* %378, i32 0, i32 19
  %arrayidx553 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle552, i32 0, i64 %idxprom551
  %arrayidx554 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx553, i32 0, i64 0
  %379 = load double, double* %arrayidx554, align 8
  store double %379, double* %m, align 8
  %380 = load double, double* %m, align 8
  %381 = load double, double* %tt, align 8
  %call555 = call double @cos(double %381) #3
  %mul556 = fmul double %380, %call555
  %382 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %382 to i64
  %383 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform558 = getelementptr inbounds %struct.control_point, %struct.control_point* %383, i32 0, i32 0
  %arrayidx559 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform558, i32 0, i64 %idxprom557
  %c560 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx559, i32 0, i32 1
  %arrayidx561 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c560, i32 0, i64 0
  %arrayidx562 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx561, i32 0, i64 0
  %384 = load double, double* %arrayidx562, align 8
  %add563 = fadd double %384, %mul556
  store double %add563, double* %arrayidx562, align 8
  %385 = load double, double* %m, align 8
  %386 = load double, double* %tt, align 8
  %call564 = call double @sin(double %386) #3
  %sub565 = fsub double -0.000000e+00, %call564
  %mul566 = fmul double %385, %sub565
  %387 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %387 to i64
  %388 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform568 = getelementptr inbounds %struct.control_point, %struct.control_point* %388, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform568, i32 0, i64 %idxprom567
  %c570 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx569, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c570, i32 0, i64 1
  %arrayidx572 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx571, i32 0, i64 0
  %389 = load double, double* %arrayidx572, align 8
  %add573 = fadd double %389, %mul566
  store double %add573, double* %arrayidx572, align 8
  %390 = load double, double* %m, align 8
  %391 = load double, double* %tt, align 8
  %call574 = call double @sin(double %391) #3
  %mul575 = fmul double %390, %call574
  %392 = load i32, i32* %i, align 4
  %idxprom576 = sext i32 %392 to i64
  %393 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform577 = getelementptr inbounds %struct.control_point, %struct.control_point* %393, i32 0, i32 0
  %arrayidx578 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform577, i32 0, i64 %idxprom576
  %c579 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx578, i32 0, i32 1
  %arrayidx580 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c579, i32 0, i64 0
  %arrayidx581 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx580, i32 0, i64 1
  %394 = load double, double* %arrayidx581, align 8
  %add582 = fadd double %394, %mul575
  store double %add582, double* %arrayidx581, align 8
  %395 = load double, double* %m, align 8
  %396 = load double, double* %tt, align 8
  %call583 = call double @cos(double %396) #3
  %mul584 = fmul double %395, %call583
  %397 = load i32, i32* %i, align 4
  %idxprom585 = sext i32 %397 to i64
  %398 = load %struct.control_point*, %struct.control_point** %result.addr, align 8
  %xform586 = getelementptr inbounds %struct.control_point, %struct.control_point* %398, i32 0, i32 0
  %arrayidx587 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform586, i32 0, i64 %idxprom585
  %c588 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx587, i32 0, i32 1
  %arrayidx589 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c588, i32 0, i64 1
  %arrayidx590 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx589, i32 0, i64 1
  %399 = load double, double* %arrayidx590, align 8
  %add591 = fadd double %399, %mul584
  store double %add591, double* %arrayidx590, align 8
  br label %for.inc.592

for.inc.592:                                      ; preds = %for.body.545
  %400 = load i32, i32* %j, align 4
  %inc593 = add nsw i32 %400, 1
  store i32 %inc593, i32* %j, align 4
  br label %for.cond.542

for.end.594:                                      ; preds = %for.cond.542
  br label %for.inc.595

for.inc.595:                                      ; preds = %for.end.594
  %401 = load i32, i32* %i, align 4
  %inc596 = add nsw i32 %401, 1
  store i32 %inc596, i32* %i, align 4
  br label %for.cond.367

for.end.597:                                      ; preds = %if.then, %if.then.26, %for.cond.367
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare void @rgb2hsv(double*, double*) #1

declare void @hsv2rgb(double*, double*) #1

; Function Attrs: nounwind uwtable
define internal void @interpolate_matrix(double %t, [2 x double]* %m1, [2 x double]* %m2, [2 x double]* %m3) #0 {
entry:
  %t.addr = alloca double, align 8
  %m1.addr = alloca [2 x double]*, align 8
  %m2.addr = alloca [2 x double]*, align 8
  %m3.addr = alloca [2 x double]*, align 8
  %s = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store [2 x double]* %m1, [2 x double]** %m1.addr, align 8
  store [2 x double]* %m2, [2 x double]** %m2.addr, align 8
  store [2 x double]* %m3, [2 x double]** %m3.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %sub = fsub double 1.000000e+00, %0
  store double %sub, double* %s, align 8
  %1 = load double, double* %t.addr, align 8
  %2 = load double, double* %s, align 8
  %3 = load [2 x double]*, [2 x double]** %m1.addr, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %3, i64 0
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %4 = load [2 x double]*, [2 x double]** %m2.addr, align 8
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx2, i32 0, i64 0
  %5 = load [2 x double]*, [2 x double]** %m3.addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %5, i64 0
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx4, i32 0, i64 0
  call void @interpolate_complex(double %1, double %2, double* %arrayidx1, double* %arrayidx3, double* %arrayidx5, i32 0, i32 0, i32 0)
  %6 = load double, double* %t.addr, align 8
  %7 = load double, double* %s, align 8
  %8 = load [2 x double]*, [2 x double]** %m1.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 1
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx6, i32 0, i64 0
  %9 = load [2 x double]*, [2 x double]** %m2.addr, align 8
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 1
  %arrayidx9 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx8, i32 0, i64 0
  %10 = load [2 x double]*, [2 x double]** %m3.addr, align 8
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 1
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx10, i32 0, i64 0
  call void @interpolate_complex(double %6, double %7, double* %arrayidx7, double* %arrayidx9, double* %arrayidx11, i32 1, i32 1, i32 0)
  %11 = load double, double* %s, align 8
  %12 = load [2 x double]*, [2 x double]** %m1.addr, align 8
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %12, i64 2
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx12, i32 0, i64 0
  %13 = load double, double* %arrayidx13, align 8
  %mul = fmul double %11, %13
  %14 = load double, double* %t.addr, align 8
  %15 = load [2 x double]*, [2 x double]** %m2.addr, align 8
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 2
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx14, i32 0, i64 0
  %16 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double %14, %16
  %add = fadd double %mul, %mul16
  %17 = load [2 x double]*, [2 x double]** %m3.addr, align 8
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %17, i64 2
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 0
  store double %add, double* %arrayidx18, align 8
  %18 = load double, double* %s, align 8
  %19 = load [2 x double]*, [2 x double]** %m1.addr, align 8
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %19, i64 2
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx19, i32 0, i64 1
  %20 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %18, %20
  %21 = load double, double* %t.addr, align 8
  %22 = load [2 x double]*, [2 x double]** %m2.addr, align 8
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %22, i64 2
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 1
  %23 = load double, double* %arrayidx23, align 8
  %mul24 = fmul double %21, %23
  %add25 = fadd double %mul21, %mul24
  %24 = load [2 x double]*, [2 x double]** %m3.addr, align 8
  %arrayidx26 = getelementptr inbounds [2 x double], [2 x double]* %24, i64 2
  %arrayidx27 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx26, i32 0, i64 1
  store double %add25, double* %arrayidx27, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @tokenize(i8** %ss, i8** %argv, i32* %argc) #0 {
entry:
  %ss.addr = alloca i8**, align 8
  %argv.addr = alloca i8**, align 8
  %argc.addr = alloca i32*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %state = alloca i32, align 4
  %c = alloca i8, align 1
  store i8** %ss, i8*** %ss.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i32* %argc, i32** %argc.addr, align 8
  %0 = load i8**, i8*** %ss.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %s, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %state, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 59
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %c, align 1
  %6 = load i32, i32* %state, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
    i32 2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i8, i8* %c, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 35
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 2, i32* %state, align 4
  br label %if.end.11

if.else:                                          ; preds = %sw.bb
  %8 = load i8, i8* %c, align 1
  %idxprom = zext i8 %8 to i64
  %9 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %10 to i32
  %and = and i32 %conv5, 256
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %11 = load i8*, i8** %s, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 %idxprom9
  store i8* %11, i8** %arrayidx10, align 8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  store i32 1, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  br label %sw.bb.12

sw.bb.12:                                         ; preds = %while.body, %if.end.11
  %15 = load i8, i8* %c, align 1
  %idxprom13 = zext i8 %15 to i64
  %16 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %16, i64 %idxprom13
  %17 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %17 to i32
  %and16 = and i32 %conv15, 256
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.12
  %18 = load i8*, i8** %s, align 8
  store i8 0, i8* %18, align 1
  store i32 0, i32* %state, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.12
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %while.body, %if.end.20
  %19 = load i8, i8* %c, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 10
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.bb.21
  store i32 0, i32* %state, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %sw.bb.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.26, %while.body
  %20 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %s, align 8
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8**, i8*** %ss.addr, align 8
  store i8* %add.ptr, i8** %23, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i32*, i32** %argc.addr, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @parse_control_point(i8** %ss, %struct.control_point* %cp) #0 {
entry:
  %ss.addr = alloca i8**, align 8
  %cp.addr = alloca %struct.control_point*, align 8
  %argv = alloca [1000 x i8*], align 16
  %argc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %set_cm = alloca i32, align 4
  %set_image_size = alloca i32, align 4
  %set_nbatches = alloca i32, align 4
  %set_white_level = alloca i32, align 4
  %set_cmap_inter = alloca i32, align 4
  %set_spatial_oversample = alloca i32, align 4
  %slot = alloca double*, align 8
  %xf = alloca double, align 8
  %cm = alloca double, align 8
  %t = alloca double, align 8
  %nbatches = alloca double, align 8
  %white_level = alloca double, align 8
  %spatial_oversample = alloca double, align 8
  %cmap_inter = alloca double, align 8
  %image_size = alloca [2 x double], align 16
  store i8** %ss, i8*** %ss.addr, align 8
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  store i32 0, i32* %set_cm, align 4
  store i32 0, i32* %set_image_size, align 4
  store i32 0, i32* %set_nbatches, align 4
  store i32 0, i32* %set_white_level, align 4
  store i32 0, i32* %set_cmap_inter, align 4
  store i32 0, i32* %set_spatial_oversample, align 4
  store double* null, double** %slot, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom
  %density = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx, i32 0, i32 2
  store double 0.000000e+00, double* %density, align 8
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %3, 0
  %conv = zext i1 %cmp1 to i32
  %conv2 = sitofp i32 %conv to double
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform4 = getelementptr inbounds %struct.control_point, %struct.control_point* %5, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform4, i32 0, i64 %idxprom3
  %color = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx5, i32 0, i32 3
  store double %conv2, double* %color, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform7 = getelementptr inbounds %struct.control_point, %struct.control_point* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform7, i32 0, i64 %idxprom6
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx9, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %8, 29
  br i1 %cmp11, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %9 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %10 to i64
  %11 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform16 = getelementptr inbounds %struct.control_point, %struct.control_point* %11, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform16, i32 0, i64 %idxprom15
  %var18 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [29 x double], [29 x double]* %var18, i32 0, i64 %idxprom14
  store double 0.000000e+00, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.13
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %13 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %14 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform21 = getelementptr inbounds %struct.control_point, %struct.control_point* %14, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform21, i32 0, i64 %idxprom20
  %c = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx24, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %15 to i64
  %16 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform26 = getelementptr inbounds %struct.control_point, %struct.control_point* %16, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform26, i32 0, i64 %idxprom25
  %c28 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx27, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c28, i32 0, i64 0
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx29, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx30, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %17 to i64
  %18 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform32 = getelementptr inbounds %struct.control_point, %struct.control_point* %18, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform32, i32 0, i64 %idxprom31
  %c34 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx33, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c34, i32 0, i64 1
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx36, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %19 to i64
  %20 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform38 = getelementptr inbounds %struct.control_point, %struct.control_point* %20, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform38, i32 0, i64 %idxprom37
  %c40 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx39, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c40, i32 0, i64 1
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx41, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx42, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %21 to i64
  %22 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform44 = getelementptr inbounds %struct.control_point, %struct.control_point* %22, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform44, i32 0, i64 %idxprom43
  %c46 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c46, i32 0, i64 2
  %arrayidx48 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx47, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx48, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %23 to i64
  %24 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform50 = getelementptr inbounds %struct.control_point, %struct.control_point* %24, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform50, i32 0, i64 %idxprom49
  %c52 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx51, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c52, i32 0, i64 2
  %arrayidx54 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx53, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %25, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.76, %for.end.57
  %26 = load i32, i32* %j, align 4
  %cmp59 = icmp slt i32 %26, 2
  br i1 %cmp59, label %for.body.61, label %for.end.78

for.body.61:                                      ; preds = %for.cond.58
  %27 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %27 to i64
  %28 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %pulse = getelementptr inbounds %struct.control_point, %struct.control_point* %28, i32 0, i32 18
  %arrayidx63 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse, i32 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx63, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx64, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %29 to i64
  %30 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %pulse66 = getelementptr inbounds %struct.control_point, %struct.control_point* %30, i32 0, i32 18
  %arrayidx67 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse66, i32 0, i64 %idxprom65
  %arrayidx68 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx67, i32 0, i64 1
  store double 6.000000e+01, double* %arrayidx68, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %31 to i64
  %32 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %wiggle = getelementptr inbounds %struct.control_point, %struct.control_point* %32, i32 0, i32 19
  %arrayidx70 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx70, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx71, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %33 to i64
  %34 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %wiggle73 = getelementptr inbounds %struct.control_point, %struct.control_point* %34, i32 0, i32 19
  %arrayidx74 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle73, i32 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx74, i32 0, i64 1
  store double 6.000000e+01, double* %arrayidx75, align 8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.61
  %35 = load i32, i32* %j, align 4
  %inc77 = add nsw i32 %35, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond.58

for.end.78:                                       ; preds = %for.cond.58
  %36 = load i8**, i8*** %ss.addr, align 8
  %arraydecay = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i32 0
  call void @tokenize(i8** %36, i8** %arraydecay, i32* %argc)
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.269, %for.end.78
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %argc, align 4
  %cmp80 = icmp slt i32 %37, %38
  br i1 %cmp80, label %for.body.82, label %for.end.271

for.body.82:                                      ; preds = %for.cond.79
  %39 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %39 to i64
  %arrayidx84 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom83
  %40 = load i8*, i8** %arrayidx84, align 8
  %call = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* %40) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.82
  store double* %xf, double** %slot, align 8
  br label %if.end.268

if.else:                                          ; preds = %for.body.82
  %41 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %41 to i64
  %arrayidx86 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom85
  %42 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* %42) #5
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %if.else
  %43 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %time = getelementptr inbounds %struct.control_point, %struct.control_point* %43, i32 0, i32 2
  store double* %time, double** %slot, align 8
  br label %if.end.267

if.else.90:                                       ; preds = %if.else
  %44 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %44 to i64
  %arrayidx92 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom91
  %45 = load i8*, i8** %arrayidx92, align 8
  %call93 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* %45) #5
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.else.96, label %if.then.95

if.then.95:                                       ; preds = %if.else.90
  %46 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %brightness = getelementptr inbounds %struct.control_point, %struct.control_point* %46, i32 0, i32 4
  store double* %brightness, double** %slot, align 8
  br label %if.end.266

if.else.96:                                       ; preds = %if.else.90
  %47 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %47 to i64
  %arrayidx98 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom97
  %48 = load i8*, i8** %arrayidx98, align 8
  %call99 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %48) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.else.102, label %if.then.101

if.then.101:                                      ; preds = %if.else.96
  %49 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %contrast = getelementptr inbounds %struct.control_point, %struct.control_point* %49, i32 0, i32 5
  store double* %contrast, double** %slot, align 8
  br label %if.end.265

if.else.102:                                      ; preds = %if.else.96
  %50 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %50 to i64
  %arrayidx104 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom103
  %51 = load i8*, i8** %arrayidx104, align 8
  %call105 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %51) #5
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.else.108, label %if.then.107

if.then.107:                                      ; preds = %if.else.102
  %52 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %gamma = getelementptr inbounds %struct.control_point, %struct.control_point* %52, i32 0, i32 6
  store double* %gamma, double** %slot, align 8
  br label %if.end.264

if.else.108:                                      ; preds = %if.else.102
  %53 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %53 to i64
  %arrayidx110 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom109
  %54 = load i8*, i8** %arrayidx110, align 8
  %call111 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %54) #5
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %if.else.108
  %55 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %zoom = getelementptr inbounds %struct.control_point, %struct.control_point* %55, i32 0, i32 11
  store double* %zoom, double** %slot, align 8
  br label %if.end.263

if.else.114:                                      ; preds = %if.else.108
  %56 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %56 to i64
  %arrayidx116 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom115
  %57 = load i8*, i8** %arrayidx116, align 8
  %call117 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* %57) #5
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.else.121, label %if.then.119

if.then.119:                                      ; preds = %if.else.114
  %arraydecay120 = getelementptr inbounds [2 x double], [2 x double]* %image_size, i32 0, i32 0
  store double* %arraydecay120, double** %slot, align 8
  store i32 1, i32* %set_image_size, align 4
  br label %if.end.262

if.else.121:                                      ; preds = %if.else.114
  %58 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %58 to i64
  %arrayidx123 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom122
  %59 = load i8*, i8** %arrayidx123, align 8
  %call124 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %59) #5
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.else.128, label %if.then.126

if.then.126:                                      ; preds = %if.else.121
  %60 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %center = getelementptr inbounds %struct.control_point, %struct.control_point* %60, i32 0, i32 10
  %arraydecay127 = getelementptr inbounds [2 x double], [2 x double]* %center, i32 0, i32 0
  store double* %arraydecay127, double** %slot, align 8
  br label %if.end.261

if.else.128:                                      ; preds = %if.else.121
  %61 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %61 to i64
  %arrayidx130 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom129
  %62 = load i8*, i8** %arrayidx130, align 8
  %call131 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* %62) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.else.136, label %if.then.133

if.then.133:                                      ; preds = %if.else.128
  %63 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %pulse134 = getelementptr inbounds %struct.control_point, %struct.control_point* %63, i32 0, i32 18
  %arraydecay135 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %pulse134, i32 0, i32 0
  %64 = bitcast [2 x double]* %arraydecay135 to double*
  store double* %64, double** %slot, align 8
  br label %if.end.260

if.else.136:                                      ; preds = %if.else.128
  %65 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %65 to i64
  %arrayidx138 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom137
  %66 = load i8*, i8** %arrayidx138, align 8
  %call139 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %66) #5
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.else.144, label %if.then.141

if.then.141:                                      ; preds = %if.else.136
  %67 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %wiggle142 = getelementptr inbounds %struct.control_point, %struct.control_point* %67, i32 0, i32 19
  %arraydecay143 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %wiggle142, i32 0, i32 0
  %68 = bitcast [2 x double]* %arraydecay143 to double*
  store double* %68, double** %slot, align 8
  br label %if.end.259

if.else.144:                                      ; preds = %if.else.136
  %69 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %69 to i64
  %arrayidx146 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom145
  %70 = load i8*, i8** %arrayidx146, align 8
  %call147 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* %70) #5
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.else.150, label %if.then.149

if.then.149:                                      ; preds = %if.else.144
  %71 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %71, i32 0, i32 12
  store double* %pixels_per_unit, double** %slot, align 8
  br label %if.end.258

if.else.150:                                      ; preds = %if.else.144
  %72 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %72 to i64
  %arrayidx152 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom151
  %73 = load i8*, i8** %arrayidx152, align 8
  %call153 = call i32 @strcmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* %73) #5
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.else.156, label %if.then.155

if.then.155:                                      ; preds = %if.else.150
  %74 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %74, i32 0, i32 13
  store double* %spatial_filter_radius, double** %slot, align 8
  br label %if.end.257

if.else.156:                                      ; preds = %if.else.150
  %75 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %75 to i64
  %arrayidx158 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom157
  %76 = load i8*, i8** %arrayidx158, align 8
  %call159 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %76) #5
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.else.162, label %if.then.161

if.then.161:                                      ; preds = %if.else.156
  %77 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %sample_density = getelementptr inbounds %struct.control_point, %struct.control_point* %77, i32 0, i32 14
  store double* %sample_density, double** %slot, align 8
  br label %if.end.256

if.else.162:                                      ; preds = %if.else.156
  %78 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %78 to i64
  %arrayidx164 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom163
  %79 = load i8*, i8** %arrayidx164, align 8
  %call165 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* %79) #5
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.else.168, label %if.then.167

if.then.167:                                      ; preds = %if.else.162
  store double* %nbatches, double** %slot, align 8
  store i32 1, i32* %set_nbatches, align 4
  br label %if.end.255

if.else.168:                                      ; preds = %if.else.162
  %80 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %80 to i64
  %arrayidx170 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom169
  %81 = load i8*, i8** %arrayidx170, align 8
  %call171 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %81) #5
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.else.174, label %if.then.173

if.then.173:                                      ; preds = %if.else.168
  store double* %white_level, double** %slot, align 8
  store i32 1, i32* %set_white_level, align 4
  br label %if.end.254

if.else.174:                                      ; preds = %if.else.168
  %82 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %82 to i64
  %arrayidx176 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom175
  %83 = load i8*, i8** %arrayidx176, align 8
  %call177 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i8* %83) #5
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.else.180, label %if.then.179

if.then.179:                                      ; preds = %if.else.174
  store double* %spatial_oversample, double** %slot, align 8
  store i32 1, i32* %set_spatial_oversample, align 4
  br label %if.end.253

if.else.180:                                      ; preds = %if.else.174
  %84 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %84 to i64
  %arrayidx182 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom181
  %85 = load i8*, i8** %arrayidx182, align 8
  %call183 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* %85) #5
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.else.186, label %if.then.185

if.then.185:                                      ; preds = %if.else.180
  store double* %cm, double** %slot, align 8
  store i32 1, i32* %set_cm, align 4
  br label %if.end.252

if.else.186:                                      ; preds = %if.else.180
  %86 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %86 to i64
  %arrayidx188 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom187
  %87 = load i8*, i8** %arrayidx188, align 8
  %call189 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* %87) #5
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.else.197, label %if.then.191

if.then.191:                                      ; preds = %if.else.186
  %88 = load double, double* %xf, align 8
  %conv192 = fptosi double %88 to i32
  %idxprom193 = sext i32 %conv192 to i64
  %89 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform194 = getelementptr inbounds %struct.control_point, %struct.control_point* %89, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform194, i32 0, i64 %idxprom193
  %density196 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx195, i32 0, i32 2
  store double* %density196, double** %slot, align 8
  br label %if.end.251

if.else.197:                                      ; preds = %if.else.186
  %90 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %90 to i64
  %arrayidx199 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom198
  %91 = load i8*, i8** %arrayidx199, align 8
  %call200 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* %91) #5
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.else.208, label %if.then.202

if.then.202:                                      ; preds = %if.else.197
  %92 = load double, double* %xf, align 8
  %conv203 = fptosi double %92 to i32
  %idxprom204 = sext i32 %conv203 to i64
  %93 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform205 = getelementptr inbounds %struct.control_point, %struct.control_point* %93, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform205, i32 0, i64 %idxprom204
  %color207 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx206, i32 0, i32 3
  store double* %color207, double** %slot, align 8
  br label %if.end.250

if.else.208:                                      ; preds = %if.else.197
  %94 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %94 to i64
  %arrayidx210 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom209
  %95 = load i8*, i8** %arrayidx210, align 8
  %call211 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %95) #5
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.else.226, label %if.then.213

if.then.213:                                      ; preds = %if.else.208
  %96 = load double, double* %xf, align 8
  %conv214 = fptosi double %96 to i32
  %idxprom215 = sext i32 %conv214 to i64
  %97 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform216 = getelementptr inbounds %struct.control_point, %struct.control_point* %97, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform216, i32 0, i64 %idxprom215
  %c218 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx217, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c218, i32 0, i64 0
  %arraydecay220 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx219, i32 0, i32 0
  store double* %arraydecay220, double** %slot, align 8
  %98 = load double, double* %xf, align 8
  %conv221 = fptosi double %98 to i32
  %idxprom222 = sext i32 %conv221 to i64
  %99 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform223 = getelementptr inbounds %struct.control_point, %struct.control_point* %99, i32 0, i32 0
  %arrayidx224 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform223, i32 0, i64 %idxprom222
  %density225 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx224, i32 0, i32 2
  store double 1.000000e+00, double* %density225, align 8
  br label %if.end.249

if.else.226:                                      ; preds = %if.else.208
  %100 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %100 to i64
  %arrayidx228 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom227
  %101 = load i8*, i8** %arrayidx228, align 8
  %call229 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %101) #5
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.else.238, label %if.then.231

if.then.231:                                      ; preds = %if.else.226
  %102 = load double, double* %xf, align 8
  %conv232 = fptosi double %102 to i32
  %idxprom233 = sext i32 %conv232 to i64
  %103 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform234 = getelementptr inbounds %struct.control_point, %struct.control_point* %103, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform234, i32 0, i64 %idxprom233
  %var236 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx235, i32 0, i32 0
  %arraydecay237 = getelementptr inbounds [29 x double], [29 x double]* %var236, i32 0, i32 0
  store double* %arraydecay237, double** %slot, align 8
  br label %if.end.248

if.else.238:                                      ; preds = %if.else.226
  %104 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %104 to i64
  %arrayidx240 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom239
  %105 = load i8*, i8** %arrayidx240, align 8
  %call241 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* %105) #5
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %if.else.244, label %if.then.243

if.then.243:                                      ; preds = %if.else.238
  store double* %cmap_inter, double** %slot, align 8
  store i32 1, i32* %set_cmap_inter, align 4
  br label %if.end

if.else.244:                                      ; preds = %if.else.238
  %106 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %106 to i64
  %arrayidx246 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %argv, i32 0, i64 %idxprom245
  %107 = load i8*, i8** %arrayidx246, align 8
  %call247 = call double @g_strtod(i8* %107, i8** null)
  %108 = load double*, double** %slot, align 8
  %incdec.ptr = getelementptr inbounds double, double* %108, i32 1
  store double* %incdec.ptr, double** %slot, align 8
  store double %call247, double* %108, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.244, %if.then.243
  br label %if.end.248

if.end.248:                                       ; preds = %if.end, %if.then.231
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.213
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.202
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.then.191
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.then.185
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.then.179
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %if.then.173
  br label %if.end.255

if.end.255:                                       ; preds = %if.end.254, %if.then.167
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %if.then.161
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.155
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.149
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.141
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.133
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.126
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.then.119
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.113
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.107
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.101
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.95
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.then.89
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %109 = load i32, i32* %i, align 4
  %inc270 = add nsw i32 %109, 1
  store i32 %inc270, i32* %i, align 4
  br label %for.cond.79

for.end.271:                                      ; preds = %for.cond.79
  %110 = load i32, i32* %set_cm, align 4
  %tobool272 = icmp ne i32 %110, 0
  br i1 %tobool272, label %if.then.273, label %if.end.278

if.then.273:                                      ; preds = %for.end.271
  %111 = load double, double* %cm, align 8
  %conv274 = fptosi double %111 to i32
  %112 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_index = getelementptr inbounds %struct.control_point, %struct.control_point* %112, i32 0, i32 3
  store i32 %conv274, i32* %cmap_index, align 4
  %113 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_index275 = getelementptr inbounds %struct.control_point, %struct.control_point* %113, i32 0, i32 3
  %114 = load i32, i32* %cmap_index275, align 4
  %115 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap = getelementptr inbounds %struct.control_point, %struct.control_point* %115, i32 0, i32 1
  %arraydecay276 = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap, i32 0, i32 0
  %call277 = call i32 @get_cmap(i32 %114, [3 x double]* %arraydecay276, i32 256)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.273, %for.end.271
  %116 = load i32, i32* %set_image_size, align 4
  %tobool279 = icmp ne i32 %116, 0
  br i1 %tobool279, label %if.then.280, label %if.end.285

if.then.280:                                      ; preds = %if.end.278
  %arrayidx281 = getelementptr inbounds [2 x double], [2 x double]* %image_size, i32 0, i64 0
  %117 = load double, double* %arrayidx281, align 8
  %conv282 = fptosi double %117 to i32
  %118 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %width = getelementptr inbounds %struct.control_point, %struct.control_point* %118, i32 0, i32 7
  store i32 %conv282, i32* %width, align 4
  %arrayidx283 = getelementptr inbounds [2 x double], [2 x double]* %image_size, i32 0, i64 1
  %119 = load double, double* %arrayidx283, align 8
  %conv284 = fptosi double %119 to i32
  %120 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %height = getelementptr inbounds %struct.control_point, %struct.control_point* %120, i32 0, i32 8
  store i32 %conv284, i32* %height, align 4
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.280, %if.end.278
  %121 = load i32, i32* %set_cmap_inter, align 4
  %tobool286 = icmp ne i32 %121, 0
  br i1 %tobool286, label %if.then.287, label %if.end.290

if.then.287:                                      ; preds = %if.end.285
  %122 = load double, double* %cmap_inter, align 8
  %conv288 = fptosi double %122 to i32
  %123 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_inter289 = getelementptr inbounds %struct.control_point, %struct.control_point* %123, i32 0, i32 17
  store i32 %conv288, i32* %cmap_inter289, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.287, %if.end.285
  %124 = load i32, i32* %set_nbatches, align 4
  %tobool291 = icmp ne i32 %124, 0
  br i1 %tobool291, label %if.then.292, label %if.end.295

if.then.292:                                      ; preds = %if.end.290
  %125 = load double, double* %nbatches, align 8
  %conv293 = fptosi double %125 to i32
  %126 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %nbatches294 = getelementptr inbounds %struct.control_point, %struct.control_point* %126, i32 0, i32 15
  store i32 %conv293, i32* %nbatches294, align 4
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.292, %if.end.290
  %127 = load i32, i32* %set_spatial_oversample, align 4
  %tobool296 = icmp ne i32 %127, 0
  br i1 %tobool296, label %if.then.297, label %if.end.300

if.then.297:                                      ; preds = %if.end.295
  %128 = load double, double* %spatial_oversample, align 8
  %conv298 = fptosi double %128 to i32
  %129 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %spatial_oversample299 = getelementptr inbounds %struct.control_point, %struct.control_point* %129, i32 0, i32 9
  store i32 %conv298, i32* %spatial_oversample299, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.297, %if.end.295
  %130 = load i32, i32* %set_white_level, align 4
  %tobool301 = icmp ne i32 %130, 0
  br i1 %tobool301, label %if.then.302, label %if.end.305

if.then.302:                                      ; preds = %if.end.300
  %131 = load double, double* %white_level, align 8
  %conv303 = fptosi double %131 to i32
  %132 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %white_level304 = getelementptr inbounds %struct.control_point, %struct.control_point* %132, i32 0, i32 16
  store i32 %conv303, i32* %white_level304, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.302, %if.end.300
  store i32 0, i32* %i, align 4
  br label %for.cond.306

for.cond.306:                                     ; preds = %for.inc.336, %if.end.305
  %133 = load i32, i32* %i, align 4
  %cmp307 = icmp slt i32 %133, 6
  br i1 %cmp307, label %for.body.309, label %for.end.338

for.body.309:                                     ; preds = %for.cond.306
  store double 0.000000e+00, double* %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.320, %for.body.309
  %134 = load i32, i32* %j, align 4
  %cmp311 = icmp slt i32 %134, 29
  br i1 %cmp311, label %for.body.313, label %for.end.322

for.body.313:                                     ; preds = %for.cond.310
  %135 = load i32, i32* %j, align 4
  %idxprom314 = sext i32 %135 to i64
  %136 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %136 to i64
  %137 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform316 = getelementptr inbounds %struct.control_point, %struct.control_point* %137, i32 0, i32 0
  %arrayidx317 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform316, i32 0, i64 %idxprom315
  %var318 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx317, i32 0, i32 0
  %arrayidx319 = getelementptr inbounds [29 x double], [29 x double]* %var318, i32 0, i64 %idxprom314
  %138 = load double, double* %arrayidx319, align 8
  %139 = load double, double* %t, align 8
  %add = fadd double %139, %138
  store double %add, double* %t, align 8
  br label %for.inc.320

for.inc.320:                                      ; preds = %for.body.313
  %140 = load i32, i32* %j, align 4
  %inc321 = add nsw i32 %140, 1
  store i32 %inc321, i32* %j, align 4
  br label %for.cond.310

for.end.322:                                      ; preds = %for.cond.310
  %141 = load double, double* %t, align 8
  %div = fdiv double 1.000000e+00, %141
  store double %div, double* %t, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.333, %for.end.322
  %142 = load i32, i32* %j, align 4
  %cmp324 = icmp slt i32 %142, 29
  br i1 %cmp324, label %for.body.326, label %for.end.335

for.body.326:                                     ; preds = %for.cond.323
  %143 = load double, double* %t, align 8
  %144 = load i32, i32* %j, align 4
  %idxprom327 = sext i32 %144 to i64
  %145 = load i32, i32* %i, align 4
  %idxprom328 = sext i32 %145 to i64
  %146 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform329 = getelementptr inbounds %struct.control_point, %struct.control_point* %146, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform329, i32 0, i64 %idxprom328
  %var331 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx330, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [29 x double], [29 x double]* %var331, i32 0, i64 %idxprom327
  %147 = load double, double* %arrayidx332, align 8
  %mul = fmul double %147, %143
  store double %mul, double* %arrayidx332, align 8
  br label %for.inc.333

for.inc.333:                                      ; preds = %for.body.326
  %148 = load i32, i32* %j, align 4
  %inc334 = add nsw i32 %148, 1
  store i32 %inc334, i32* %j, align 4
  br label %for.cond.323

for.end.335:                                      ; preds = %for.cond.323
  br label %for.inc.336

for.inc.336:                                      ; preds = %for.end.335
  %149 = load i32, i32* %i, align 4
  %inc337 = add nsw i32 %149, 1
  store i32 %inc337, i32* %i, align 4
  br label %for.cond.306

for.end.338:                                      ; preds = %for.cond.306
  %150 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform339 = getelementptr inbounds %struct.control_point, %struct.control_point* %150, i32 0, i32 0
  %arraydecay340 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform339, i32 0, i32 0
  %151 = bitcast %struct.xform* %arraydecay340 to i8*
  call void @qsort(i8* %151, i64 6, i64 296, i32 (i8*, i8*)* @compare_xforms)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare double @g_strtod(i8*, i8**) #1

declare i32 @get_cmap(i32, [3 x double]*, i32) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_xforms(i8* %va, i8* %vb) #0 {
entry:
  %retval = alloca i32, align 4
  %va.addr = alloca i8*, align 8
  %vb.addr = alloca i8*, align 8
  %aa = alloca [2 x [2 x double]], align 16
  %bb = alloca [2 x [2 x double]], align 16
  %ad = alloca double, align 8
  %bd = alloca double, align 8
  %a = alloca %struct.xform*, align 8
  %b = alloca %struct.xform*, align 8
  store i8* %va, i8** %va.addr, align 8
  store i8* %vb, i8** %vb.addr, align 8
  %0 = load i8*, i8** %va.addr, align 8
  %1 = bitcast i8* %0 to %struct.xform*
  store %struct.xform* %1, %struct.xform** %a, align 8
  %2 = load i8*, i8** %vb.addr, align 8
  %3 = bitcast i8* %2 to %struct.xform*
  store %struct.xform* %3, %struct.xform** %b, align 8
  %4 = load %struct.xform*, %struct.xform** %a, align 8
  %c = getelementptr inbounds %struct.xform, %struct.xform* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %5 = load double, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %aa, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx2, i32 0, i64 0
  store double %5, double* %arrayidx3, align 8
  %6 = load %struct.xform*, %struct.xform** %a, align 8
  %c4 = getelementptr inbounds %struct.xform, %struct.xform* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c4, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx5, i32 0, i64 1
  %7 = load double, double* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %aa, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx7, i32 0, i64 1
  store double %7, double* %arrayidx8, align 8
  %8 = load %struct.xform*, %struct.xform** %a, align 8
  %c9 = getelementptr inbounds %struct.xform, %struct.xform* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx10, i32 0, i64 0
  %9 = load double, double* %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %aa, i32 0, i64 1
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx12, i32 0, i64 0
  store double %9, double* %arrayidx13, align 8
  %10 = load %struct.xform*, %struct.xform** %a, align 8
  %c14 = getelementptr inbounds %struct.xform, %struct.xform* %10, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx15, i32 0, i64 1
  %11 = load double, double* %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %aa, i32 0, i64 1
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx17, i32 0, i64 1
  store double %11, double* %arrayidx18, align 8
  %12 = load %struct.xform*, %struct.xform** %b, align 8
  %c19 = getelementptr inbounds %struct.xform, %struct.xform* %12, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx20, i32 0, i64 0
  %13 = load double, double* %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %bb, i32 0, i64 0
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx22, i32 0, i64 0
  store double %13, double* %arrayidx23, align 8
  %14 = load %struct.xform*, %struct.xform** %b, align 8
  %c24 = getelementptr inbounds %struct.xform, %struct.xform* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c24, i32 0, i64 0
  %arrayidx26 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx25, i32 0, i64 1
  %15 = load double, double* %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %bb, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx27, i32 0, i64 1
  store double %15, double* %arrayidx28, align 8
  %16 = load %struct.xform*, %struct.xform** %b, align 8
  %c29 = getelementptr inbounds %struct.xform, %struct.xform* %16, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c29, i32 0, i64 1
  %arrayidx31 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx30, i32 0, i64 0
  %17 = load double, double* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %bb, i32 0, i64 1
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx32, i32 0, i64 0
  store double %17, double* %arrayidx33, align 8
  %18 = load %struct.xform*, %struct.xform** %b, align 8
  %c34 = getelementptr inbounds %struct.xform, %struct.xform* %18, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c34, i32 0, i64 1
  %arrayidx36 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx35, i32 0, i64 1
  %19 = load double, double* %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %bb, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx37, i32 0, i64 1
  store double %19, double* %arrayidx38, align 8
  %arraydecay = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %aa, i32 0, i32 0
  %call = call double @det_matrix([2 x double]* %arraydecay)
  store double %call, double* %ad, align 8
  %arraydecay39 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %bb, i32 0, i32 0
  %call40 = call double @det_matrix([2 x double]* %arraydecay39)
  store double %call40, double* %bd, align 8
  %20 = load double, double* %ad, align 8
  %21 = load double, double* %bd, align 8
  %cmp = fcmp olt double %20, %21
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %22 = load double, double* %ad, align 8
  %23 = load double, double* %bd, align 8
  %cmp41 = fcmp ogt double %22, %23
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @print_control_point(%struct._IO_FILE* %f, %struct.control_point* %cp, i32 %quote) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %cp.addr = alloca %struct.control_point*, align 8
  %quote.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %q = alloca i8*, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  store i32 %quote, i32* %quote.addr, align 4
  %0 = load i32, i32* %quote.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0)
  store i8* %cond, i8** %q, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %2 = load i8*, i8** %q, align 8
  %3 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %time = getelementptr inbounds %struct.control_point, %struct.control_point* %3, i32 0, i32 2
  %4 = load double, double* %time, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* %2, double %4)
  %5 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_index = getelementptr inbounds %struct.control_point, %struct.control_point* %5, i32 0, i32 3
  %6 = load i32, i32* %cmap_index, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %8 = load i8*, i8** %q, align 8
  %9 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_index1 = getelementptr inbounds %struct.control_point, %struct.control_point* %9, i32 0, i32 3
  %10 = load i32, i32* %cmap_index1, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* %8, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %12 = load i8*, i8** %q, align 8
  %13 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %width = getelementptr inbounds %struct.control_point, %struct.control_point* %13, i32 0, i32 7
  %14 = load i32, i32* %width, align 4
  %15 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %height = getelementptr inbounds %struct.control_point, %struct.control_point* %15, i32 0, i32 8
  %16 = load i32, i32* %height, align 4
  %17 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %center = getelementptr inbounds %struct.control_point, %struct.control_point* %17, i32 0, i32 10
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %center, i32 0, i64 0
  %18 = load double, double* %arrayidx, align 8
  %19 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %center3 = getelementptr inbounds %struct.control_point, %struct.control_point* %19, i32 0, i32 10
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %center3, i32 0, i64 1
  %20 = load double, double* %arrayidx4, align 8
  %21 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %pixels_per_unit = getelementptr inbounds %struct.control_point, %struct.control_point* %21, i32 0, i32 12
  %22 = load double, double* %pixels_per_unit, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i32 0, i32 0), i8* %12, i32 %14, i32 %16, double %18, double %20, double %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %24 = load i8*, i8** %q, align 8
  %25 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %spatial_oversample = getelementptr inbounds %struct.control_point, %struct.control_point* %25, i32 0, i32 9
  %26 = load i32, i32* %spatial_oversample, align 4
  %27 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %spatial_filter_radius = getelementptr inbounds %struct.control_point, %struct.control_point* %27, i32 0, i32 13
  %28 = load double, double* %spatial_filter_radius, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i32 0, i32 0), i8* %24, i32 %26, double %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %30 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %sample_density = getelementptr inbounds %struct.control_point, %struct.control_point* %30, i32 0, i32 14
  %31 = load double, double* %sample_density, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), double %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %33 = load i8*, i8** %q, align 8
  %34 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %nbatches = getelementptr inbounds %struct.control_point, %struct.control_point* %34, i32 0, i32 15
  %35 = load i32, i32* %nbatches, align 4
  %36 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %white_level = getelementptr inbounds %struct.control_point, %struct.control_point* %36, i32 0, i32 16
  %37 = load i32, i32* %white_level, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i8* %33, i32 %35, i32 %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %39 = load i8*, i8** %q, align 8
  %40 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %brightness = getelementptr inbounds %struct.control_point, %struct.control_point* %40, i32 0, i32 4
  %41 = load double, double* %brightness, align 8
  %42 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %gamma = getelementptr inbounds %struct.control_point, %struct.control_point* %42, i32 0, i32 6
  %43 = load double, double* %gamma, align 8
  %44 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap_inter = getelementptr inbounds %struct.control_point, %struct.control_point* %44, i32 0, i32 17
  %45 = load i32, i32* %cmap_inter, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0), i8* %39, double %41, double %43, i32 %45)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %if.end
  %46 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %46, 6
  br i1 %cmp10, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %i, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %48, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom
  %density = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx11, i32 0, i32 2
  %49 = load double, double* %density, align 8
  %cmp12 = fcmp ogt double %49, 0.000000e+00
  br i1 %cmp12, label %if.then.13, label %if.end.54

if.then.13:                                       ; preds = %for.body
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %51 = load i8*, i8** %q, align 8
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %53 to i64
  %54 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform15 = getelementptr inbounds %struct.control_point, %struct.control_point* %54, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform15, i32 0, i64 %idxprom14
  %density17 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx16, i32 0, i32 2
  %55 = load double, double* %density17, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %56 to i64
  %57 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform19 = getelementptr inbounds %struct.control_point, %struct.control_point* %57, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform19, i32 0, i64 %idxprom18
  %color = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx20, i32 0, i32 3
  %58 = load double, double* %color, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), i8* %51, i32 %52, double %55, double %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %60 = load i8*, i8** %q, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %60)
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then.13
  %61 = load i32, i32* %j, align 4
  %cmp24 = icmp slt i32 %61, 29
  br i1 %cmp24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.23
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %63 to i64
  %64 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %64 to i64
  %65 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform28 = getelementptr inbounds %struct.control_point, %struct.control_point* %65, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform28, i32 0, i64 %idxprom27
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx29, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 %idxprom26
  %66 = load double, double* %arrayidx30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), double %66)
  br label %for.inc

for.inc:                                          ; preds = %for.body.25
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %69 = load i8*, i8** %q, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* %69)
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.50, %for.end
  %70 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %70, 3
  br i1 %cmp34, label %for.body.35, label %for.end.52

for.body.35:                                      ; preds = %for.cond.33
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %73 to i64
  %74 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform38 = getelementptr inbounds %struct.control_point, %struct.control_point* %74, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform38, i32 0, i64 %idxprom37
  %c = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx39, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 %idxprom36
  %arrayidx41 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx40, i32 0, i64 0
  %75 = load double, double* %arrayidx41, align 8
  %76 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %76 to i64
  %77 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %77 to i64
  %78 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform44 = getelementptr inbounds %struct.control_point, %struct.control_point* %78, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform44, i32 0, i64 %idxprom43
  %c46 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c46, i32 0, i64 %idxprom42
  %arrayidx48 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx47, i32 0, i64 1
  %79 = load double, double* %arrayidx48, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), double %75, double %79)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.35
  %80 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %80, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.33

for.end.52:                                       ; preds = %for.cond.33
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.52, %for.body
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %82 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %82, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %84 = load i8*, i8** %q, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* %84)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define double @random_uniform01() #0 {
entry:
  %call = call double @g_random_double()
  ret double %call
}

declare double @g_random_double() #1

; Function Attrs: nounwind uwtable
define double @random_uniform11() #0 {
entry:
  %call = call double @g_random_double_range(double -1.000000e+00, double 1.000000e+00)
  ret double %call
}

declare double @g_random_double_range(double, double) #1

; Function Attrs: nounwind uwtable
define double @random_gaussian() #0 {
entry:
  %retval = alloca double, align 8
  %fac = alloca double, align 8
  %r = alloca double, align 8
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %0 = load i32, i32* @random_gaussian.iset, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then
  %call = call double @random_uniform11()
  store double %call, double* %v1, align 8
  %call1 = call double @random_uniform11()
  store double %call1, double* %v2, align 8
  %1 = load double, double* %v1, align 8
  %2 = load double, double* %v1, align 8
  %mul = fmul double %1, %2
  %3 = load double, double* %v2, align 8
  %4 = load double, double* %v2, align 8
  %mul2 = fmul double %3, %4
  %add = fadd double %mul, %mul2
  store double %add, double* %r, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load double, double* %r, align 8
  %cmp3 = fcmp oge double %5, 1.000000e+00
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %6 = load double, double* %r, align 8
  %cmp4 = fcmp oeq double %6, 0.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %7 = phi i1 [ true, %do.cond ], [ %cmp4, %lor.rhs ]
  br i1 %7, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %8 = load double, double* %r, align 8
  %call5 = call double @log(double %8) #3
  %mul6 = fmul double -2.000000e+00, %call5
  %9 = load double, double* %r, align 8
  %div = fdiv double %mul6, %9
  %call7 = call double @sqrt(double %div) #3
  store double %call7, double* %fac, align 8
  %10 = load double, double* %v1, align 8
  %11 = load double, double* %fac, align 8
  %mul8 = fmul double %10, %11
  store double %mul8, double* @random_gaussian.gset, align 8
  store i32 1, i32* @random_gaussian.iset, align 4
  %12 = load double, double* %v2, align 8
  %13 = load double, double* %fac, align 8
  %mul9 = fmul double %12, %13
  store double %mul9, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* @random_gaussian.iset, align 4
  %14 = load double, double* @random_gaussian.gset, align 8
  store double %14, double* %retval
  br label %return

return:                                           ; preds = %if.end, %do.end
  %15 = load double, double* %retval
  ret double %15
}

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define void @copy_variation(%struct.control_point* %cp0, %struct.control_point* %cp1) #0 {
entry:
  %cp0.addr = alloca %struct.control_point*, align 8
  %cp1.addr = alloca %struct.control_point*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.control_point* %cp0, %struct.control_point** %cp0.addr, align 8
  store %struct.control_point* %cp1, %struct.control_point** %cp1.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 29
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct.control_point*, %struct.control_point** %cp1.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom4
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx5, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct.control_point*, %struct.control_point** %cp0.addr, align 8
  %xform8 = getelementptr inbounds %struct.control_point, %struct.control_point* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform8, i32 0, i64 %idxprom7
  %var10 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [29 x double], [29 x double]* %var10, i32 0, i64 %idxprom6
  store double %5, double* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @random_control_point(%struct.control_point* %cp, i32 %ivar) #0 {
entry:
  %cp.addr = alloca %struct.control_point*, align 8
  %ivar.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nxforms = alloca i32, align 4
  %var = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  store i32 %ivar, i32* %ivar.addr, align 4
  %0 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %cmap = getelementptr inbounds %struct.control_point, %struct.control_point* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x [3 x double]], [256 x [3 x double]]* %cmap, i32 0, i32 0
  %call = call i32 @get_cmap(i32 -1, [3 x double]* %arraydecay, i32 256)
  %1 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %time = getelementptr inbounds %struct.control_point, %struct.control_point* %1, i32 0, i32 2
  store double 0.000000e+00, double* %time, align 8
  %call1 = call i32 @g_random_int_range(i32 0, i32 9)
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @random_control_point.xform_distrib, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %nxforms, align 4
  %3 = load i32, i32* %ivar.addr, align 4
  %cmp = icmp sgt i32 0, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call2 = call i32 @g_random_int_range(i32 0, i32 18)
  %idxprom3 = sext i32 %call2 to i64
  %arrayidx4 = getelementptr inbounds [18 x i32], [18 x i32]* @random_control_point.var_distrib, i32 0, i64 %idxprom3
  %4 = load i32, i32* %arrayidx4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %ivar.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %var, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.63, %cond.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nxforms, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %nxforms, align 4
  %conv = sitofp i32 %8 to double
  %div = fdiv double 1.000000e+00, %conv
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %10, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom6
  %density = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx7, i32 0, i32 2
  store double %div, double* %density, align 8
  %11 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %11, 0
  %conv9 = zext i1 %cmp8 to i32
  %conv10 = sitofp i32 %conv9 to double
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform12 = getelementptr inbounds %struct.control_point, %struct.control_point* %13, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform12, i32 0, i64 %idxprom11
  %color = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx13, i32 0, i32 3
  store double %conv10, double* %color, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.body
  %14 = load i32, i32* %j, align 4
  %cmp15 = icmp slt i32 %14, 3
  br i1 %cmp15, label %for.body.17, label %for.end.32

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.17
  %15 = load i32, i32* %k, align 4
  %cmp19 = icmp slt i32 %15, 2
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %call22 = call double @random_uniform11()
  %16 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %19 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform26 = getelementptr inbounds %struct.control_point, %struct.control_point* %19, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform26, i32 0, i64 %idxprom25
  %c = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx27, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 %idxprom24
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx28, i32 0, i64 %idxprom23
  store double %call22, double* %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, i32* %j, align 4
  br label %for.cond.14

for.end.32:                                       ; preds = %for.cond.14
  store i32 0, i32* %j, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %for.end.32
  %22 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %22, 29
  br i1 %cmp34, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.33
  %23 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %24 to i64
  %25 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform39 = getelementptr inbounds %struct.control_point, %struct.control_point* %25, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform39, i32 0, i64 %idxprom38
  %var41 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [29 x double], [29 x double]* %var41, i32 0, i64 %idxprom37
  store double 0.000000e+00, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %26 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %26, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %27 = load i32, i32* %var, align 4
  %cmp46 = icmp sge i32 %27, 0
  br i1 %cmp46, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.45
  %28 = load i32, i32* %var, align 4
  %idxprom48 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %29 to i64
  %30 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform50 = getelementptr inbounds %struct.control_point, %struct.control_point* %30, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform50, i32 0, i64 %idxprom49
  %var52 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [29 x double], [29 x double]* %var52, i32 0, i64 %idxprom48
  store double 1.000000e+00, double* %arrayidx53, align 8
  br label %if.end

if.else:                                          ; preds = %for.end.45
  %call54 = call i32 @g_random_int_range(i32 0, i32 15)
  %idxprom55 = sext i32 %call54 to i64
  %arrayidx56 = getelementptr inbounds [15 x i32], [15 x i32]* @random_control_point.mixed_var_distrib, i32 0, i64 %idxprom55
  %31 = load i32, i32* %arrayidx56, align 4
  %idxprom57 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %32 to i64
  %33 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform59 = getelementptr inbounds %struct.control_point, %struct.control_point* %33, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform59, i32 0, i64 %idxprom58
  %var61 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx60, i32 0, i32 0
  %arrayidx62 = getelementptr inbounds [29 x double], [29 x double]* %var61, i32 0, i64 %idxprom57
  store double 1.000000e+00, double* %arrayidx62, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end
  %34 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %34, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.74, %for.end.65
  %35 = load i32, i32* %i, align 4
  %cmp67 = icmp slt i32 %35, 6
  br i1 %cmp67, label %for.body.69, label %for.end.76

for.body.69:                                      ; preds = %for.cond.66
  %36 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %36 to i64
  %37 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %xform71 = getelementptr inbounds %struct.control_point, %struct.control_point* %37, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform71, i32 0, i64 %idxprom70
  %density73 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx72, i32 0, i32 2
  store double 0.000000e+00, double* %density73, align 8
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.69
  %38 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.66

for.end.76:                                       ; preds = %for.cond.66
  ret void
}

; Function Attrs: nounwind uwtable
define void @estimate_bounding_box(%struct.control_point* %cp, double %eps, double* %bmin, double* %bmax) #0 {
entry:
  %cp.addr = alloca %struct.control_point*, align 8
  %eps.addr = alloca double, align 8
  %bmin.addr = alloca double*, align 8
  %bmax.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %batch = alloca i32, align 4
  %low_target = alloca i32, align 4
  %high_target = alloca i32, align 4
  %min = alloca [3 x double], align 16
  %max = alloca [3 x double], align 16
  %delta = alloca [3 x double], align 16
  %points = alloca [3 x double]*, align 8
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %e = alloca i32, align 4
  %w = alloca i32, align 4
  store %struct.control_point* %cp, %struct.control_point** %cp.addr, align 8
  store double %eps, double* %eps.addr, align 8
  store double* %bmin, double** %bmin.addr, align 8
  store double* %bmax, double** %bmax.addr, align 8
  %0 = load double, double* %eps.addr, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load double, double* %eps.addr, align 8
  %div = fdiv double 1.000000e+01, %1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+04, %cond.true ], [ %div, %cond.false ]
  %conv = fptosi double %cond to i32
  store i32 %conv, i32* %batch, align 4
  %2 = load i32, i32* %batch, align 4
  %conv1 = sitofp i32 %2 to double
  %3 = load double, double* %eps.addr, align 8
  %mul = fmul double %conv1, %3
  %conv2 = fptosi double %mul to i32
  store i32 %conv2, i32* %low_target, align 4
  %4 = load i32, i32* %batch, align 4
  %5 = load i32, i32* %low_target, align 4
  %sub = sub nsw i32 %4, %5
  store i32 %sub, i32* %high_target, align 4
  %6 = load i32, i32* %batch, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = mul i64 24, %conv3
  %call = call noalias i8* @malloc(i64 %mul4) #3
  %7 = bitcast i8* %call to [3 x double]*
  store [3 x double]* %7, [3 x double]** %points, align 8
  %8 = load %struct.control_point*, %struct.control_point** %cp.addr, align 8
  %9 = load i32, i32* %batch, align 4
  %10 = load [3 x double]*, [3 x double]** %points, align 8
  call void @iterate(%struct.control_point* %8, i32 %9, i32 20, [3 x double]* %10)
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  store double 1.000000e+10, double* %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  store double 1.000000e+10, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 1
  store double -1.000000e+10, double* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 0
  store double -1.000000e+10, double* %arrayidx7, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %batch, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 %idxprom
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx10, i32 0, i64 0
  %15 = load double, double* %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  %16 = load double, double* %arrayidx12, align 8
  %cmp13 = fcmp olt double %15, %16
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i64 0
  %19 = load double, double* %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  store double %19, double* %arrayidx18, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %21 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx20, i32 0, i64 1
  %22 = load double, double* %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  %23 = load double, double* %arrayidx22, align 8
  %cmp23 = fcmp olt double %22, %23
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %25, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx27, i32 0, i64 1
  %26 = load double, double* %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  store double %26, double* %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end
  %27 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx32, i32 0, i64 0
  %29 = load double, double* %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 0
  %30 = load double, double* %arrayidx34, align 8
  %cmp35 = fcmp ogt double %29, %30
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %if.end.30
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %32 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %32, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx39, i32 0, i64 0
  %33 = load double, double* %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 0
  store double %33, double* %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %if.end.30
  %34 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %34 to i64
  %35 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx44, i32 0, i64 1
  %36 = load double, double* %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 1
  %37 = load double, double* %arrayidx46, align 8
  %cmp47 = fcmp ogt double %36, %37
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %if.end.42
  %38 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %38 to i64
  %39 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx51, i32 0, i64 1
  %40 = load double, double* %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 1
  store double %40, double* %arrayidx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %low_target, align 4
  %cmp55 = icmp eq i32 %42, 0
  br i1 %cmp55, label %if.then.57, label %if.end.66

if.then.57:                                       ; preds = %for.end
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  %43 = load double, double* %arrayidx58, align 8
  %44 = load double*, double** %bmin.addr, align 8
  %arrayidx59 = getelementptr inbounds double, double* %44, i64 0
  store double %43, double* %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  %45 = load double, double* %arrayidx60, align 8
  %46 = load double*, double** %bmin.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %46, i64 1
  store double %45, double* %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 0
  %47 = load double, double* %arrayidx62, align 8
  %48 = load double*, double** %bmax.addr, align 8
  %arrayidx63 = getelementptr inbounds double, double* %48, i64 0
  store double %47, double* %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 1
  %49 = load double, double* %arrayidx64, align 8
  %50 = load double*, double** %bmax.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %50, i64 1
  store double %49, double* %arrayidx65, align 8
  br label %for.end.187

if.end.66:                                        ; preds = %for.end
  %arrayidx67 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 0
  %51 = load double, double* %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  %52 = load double, double* %arrayidx68, align 8
  %sub69 = fsub double %51, %52
  %mul70 = fmul double %sub69, 2.500000e-01
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  store double %mul70, double* %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %max, i32 0, i64 1
  %53 = load double, double* %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  %54 = load double, double* %arrayidx73, align 8
  %sub74 = fsub double %53, %54
  %mul75 = fmul double %sub74, 2.500000e-01
  %arrayidx76 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  store double %mul75, double* %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 0
  %55 = load double, double* %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %56 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double 2.000000e+00, %56
  %add = fadd double %55, %mul79
  %57 = load double*, double** %bmin.addr, align 8
  %arrayidx80 = getelementptr inbounds double, double* %57, i64 0
  store double %add, double* %arrayidx80, align 8
  %58 = load double*, double** %bmax.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %58, i64 0
  store double %add, double* %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds [3 x double], [3 x double]* %min, i32 0, i64 1
  %59 = load double, double* %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %60 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double 2.000000e+00, %60
  %add85 = fadd double %59, %mul84
  %61 = load double*, double** %bmin.addr, align 8
  %arrayidx86 = getelementptr inbounds double, double* %61, i64 1
  store double %add85, double* %arrayidx86, align 8
  %62 = load double*, double** %bmax.addr, align 8
  %arrayidx87 = getelementptr inbounds double, double* %62, i64 1
  store double %add85, double* %arrayidx87, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.185, %if.end.66
  %63 = load i32, i32* %i, align 4
  %cmp89 = icmp slt i32 %63, 14
  br i1 %cmp89, label %for.body.91, label %for.end.187

for.body.91:                                      ; preds = %for.cond.88
  store i32 0, i32* %w, align 4
  store i32 0, i32* %e, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.132, %for.body.91
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %batch, align 4
  %cmp93 = icmp slt i32 %64, %65
  br i1 %cmp93, label %for.body.95, label %for.end.134

for.body.95:                                      ; preds = %for.cond.92
  %66 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %66 to i64
  %67 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx97 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx97, i32 0, i64 0
  %68 = load double, double* %arrayidx98, align 8
  %69 = load double*, double** %bmin.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %69, i64 0
  %70 = load double, double* %arrayidx99, align 8
  %cmp100 = fcmp olt double %68, %70
  br i1 %cmp100, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %for.body.95
  %71 = load i32, i32* %n, align 4
  %inc103 = add nsw i32 %71, 1
  store i32 %inc103, i32* %n, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %for.body.95
  %72 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx106 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx106, i32 0, i64 0
  %74 = load double, double* %arrayidx107, align 8
  %75 = load double*, double** %bmax.addr, align 8
  %arrayidx108 = getelementptr inbounds double, double* %75, i64 0
  %76 = load double, double* %arrayidx108, align 8
  %cmp109 = fcmp ogt double %74, %76
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.104
  %77 = load i32, i32* %s, align 4
  %inc112 = add nsw i32 %77, 1
  store i32 %inc112, i32* %s, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.104
  %78 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %78 to i64
  %79 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx115 = getelementptr inbounds [3 x double], [3 x double]* %79, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx115, i32 0, i64 1
  %80 = load double, double* %arrayidx116, align 8
  %81 = load double*, double** %bmin.addr, align 8
  %arrayidx117 = getelementptr inbounds double, double* %81, i64 1
  %82 = load double, double* %arrayidx117, align 8
  %cmp118 = fcmp olt double %80, %82
  br i1 %cmp118, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.113
  %83 = load i32, i32* %w, align 4
  %inc121 = add nsw i32 %83, 1
  store i32 %inc121, i32* %w, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.113
  %84 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %84 to i64
  %85 = load [3 x double]*, [3 x double]** %points, align 8
  %arrayidx124 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx124, i32 0, i64 1
  %86 = load double, double* %arrayidx125, align 8
  %87 = load double*, double** %bmax.addr, align 8
  %arrayidx126 = getelementptr inbounds double, double* %87, i64 1
  %88 = load double, double* %arrayidx126, align 8
  %cmp127 = fcmp ogt double %86, %88
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.122
  %89 = load i32, i32* %e, align 4
  %inc130 = add nsw i32 %89, 1
  store i32 %inc130, i32* %e, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.122
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %90 = load i32, i32* %j, align 4
  %inc133 = add nsw i32 %90, 1
  store i32 %inc133, i32* %j, align 4
  br label %for.cond.92

for.end.134:                                      ; preds = %for.cond.92
  %91 = load i32, i32* %n, align 4
  %92 = load i32, i32* %low_target, align 4
  %cmp135 = icmp slt i32 %91, %92
  br i1 %cmp135, label %cond.true.137, label %cond.false.139

cond.true.137:                                    ; preds = %for.end.134
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %93 = load double, double* %arrayidx138, align 8
  br label %cond.end.142

cond.false.139:                                   ; preds = %for.end.134
  %arrayidx140 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %94 = load double, double* %arrayidx140, align 8
  %sub141 = fsub double -0.000000e+00, %94
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.137
  %cond143 = phi double [ %93, %cond.true.137 ], [ %sub141, %cond.false.139 ]
  %95 = load double*, double** %bmin.addr, align 8
  %arrayidx144 = getelementptr inbounds double, double* %95, i64 0
  %96 = load double, double* %arrayidx144, align 8
  %add145 = fadd double %96, %cond143
  store double %add145, double* %arrayidx144, align 8
  %97 = load i32, i32* %s, align 4
  %98 = load i32, i32* %high_target, align 4
  %cmp146 = icmp slt i32 %97, %98
  br i1 %cmp146, label %cond.true.148, label %cond.false.150

cond.true.148:                                    ; preds = %cond.end.142
  %arrayidx149 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %99 = load double, double* %arrayidx149, align 8
  br label %cond.end.153

cond.false.150:                                   ; preds = %cond.end.142
  %arrayidx151 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %100 = load double, double* %arrayidx151, align 8
  %sub152 = fsub double -0.000000e+00, %100
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.150, %cond.true.148
  %cond154 = phi double [ %99, %cond.true.148 ], [ %sub152, %cond.false.150 ]
  %101 = load double*, double** %bmax.addr, align 8
  %arrayidx155 = getelementptr inbounds double, double* %101, i64 0
  %102 = load double, double* %arrayidx155, align 8
  %add156 = fadd double %102, %cond154
  store double %add156, double* %arrayidx155, align 8
  %103 = load i32, i32* %w, align 4
  %104 = load i32, i32* %low_target, align 4
  %cmp157 = icmp slt i32 %103, %104
  br i1 %cmp157, label %cond.true.159, label %cond.false.161

cond.true.159:                                    ; preds = %cond.end.153
  %arrayidx160 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %105 = load double, double* %arrayidx160, align 8
  br label %cond.end.164

cond.false.161:                                   ; preds = %cond.end.153
  %arrayidx162 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %106 = load double, double* %arrayidx162, align 8
  %sub163 = fsub double -0.000000e+00, %106
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.161, %cond.true.159
  %cond165 = phi double [ %105, %cond.true.159 ], [ %sub163, %cond.false.161 ]
  %107 = load double*, double** %bmin.addr, align 8
  %arrayidx166 = getelementptr inbounds double, double* %107, i64 1
  %108 = load double, double* %arrayidx166, align 8
  %add167 = fadd double %108, %cond165
  store double %add167, double* %arrayidx166, align 8
  %109 = load i32, i32* %e, align 4
  %110 = load i32, i32* %high_target, align 4
  %cmp168 = icmp slt i32 %109, %110
  br i1 %cmp168, label %cond.true.170, label %cond.false.172

cond.true.170:                                    ; preds = %cond.end.164
  %arrayidx171 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %111 = load double, double* %arrayidx171, align 8
  br label %cond.end.175

cond.false.172:                                   ; preds = %cond.end.164
  %arrayidx173 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %112 = load double, double* %arrayidx173, align 8
  %sub174 = fsub double -0.000000e+00, %112
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.172, %cond.true.170
  %cond176 = phi double [ %111, %cond.true.170 ], [ %sub174, %cond.false.172 ]
  %113 = load double*, double** %bmax.addr, align 8
  %arrayidx177 = getelementptr inbounds double, double* %113, i64 1
  %114 = load double, double* %arrayidx177, align 8
  %add178 = fadd double %114, %cond176
  store double %add178, double* %arrayidx177, align 8
  %arrayidx179 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  %115 = load double, double* %arrayidx179, align 8
  %div180 = fdiv double %115, 2.000000e+00
  %arrayidx181 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 0
  store double %div180, double* %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  %116 = load double, double* %arrayidx182, align 8
  %div183 = fdiv double %116, 2.000000e+00
  %arrayidx184 = getelementptr inbounds [3 x double], [3 x double]* %delta, i32 0, i64 1
  store double %div183, double* %arrayidx184, align 8
  br label %for.inc.185

for.inc.185:                                      ; preds = %cond.end.175
  %117 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %117, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.88

for.end.187:                                      ; preds = %if.then.57, %for.cond.88
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define double @standard_metric(%struct.control_point* %cp1, %struct.control_point* %cp2) #0 {
entry:
  %cp1.addr = alloca %struct.control_point*, align 8
  %cp2.addr = alloca %struct.control_point*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca double, align 8
  %dist = alloca double, align 8
  %var_dist = alloca double, align 8
  %coef_dist = alloca double, align 8
  store %struct.control_point* %cp1, %struct.control_point** %cp1.addr, align 8
  store %struct.control_point* %cp2, %struct.control_point** %cp2.addr, align 8
  store double 0.000000e+00, double* %dist, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %var_dist, align 8
  store double 0.000000e+00, double* %coef_dist, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 29
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load %struct.control_point*, %struct.control_point** %cp1.addr, align 8
  %xform = getelementptr inbounds %struct.control_point, %struct.control_point* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform, i32 0, i64 %idxprom4
  %var = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [29 x double], [29 x double]* %var, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx5, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct.control_point*, %struct.control_point** %cp2.addr, align 8
  %xform8 = getelementptr inbounds %struct.control_point, %struct.control_point* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform8, i32 0, i64 %idxprom7
  %var10 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [29 x double], [29 x double]* %var10, i32 0, i64 %idxprom6
  %9 = load double, double* %arrayidx11, align 8
  %sub = fsub double %5, %9
  store double %sub, double* %t, align 8
  %10 = load double, double* %t, align 8
  %11 = load double, double* %t, align 8
  %mul = fmul double %10, %11
  %12 = load double, double* %var_dist, align 8
  %add = fadd double %12, %mul
  store double %add, double* %var_dist, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.39, %for.end
  %14 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %14, 3
  br i1 %cmp13, label %for.body.14, label %for.end.41

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %k, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.36, %for.body.14
  %15 = load i32, i32* %k, align 4
  %cmp16 = icmp slt i32 %15, 2
  br i1 %cmp16, label %for.body.17, label %for.end.38

for.body.17:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %19 = load %struct.control_point*, %struct.control_point** %cp1.addr, align 8
  %xform21 = getelementptr inbounds %struct.control_point, %struct.control_point* %19, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform21, i32 0, i64 %idxprom20
  %c = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c, i32 0, i64 %idxprom19
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx23, i32 0, i64 %idxprom18
  %20 = load double, double* %arrayidx24, align 8
  %21 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %24 = load %struct.control_point*, %struct.control_point** %cp2.addr, align 8
  %xform28 = getelementptr inbounds %struct.control_point, %struct.control_point* %24, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [6 x %struct.xform], [6 x %struct.xform]* %xform28, i32 0, i64 %idxprom27
  %c30 = getelementptr inbounds %struct.xform, %struct.xform* %arrayidx29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x [2 x double]], [3 x [2 x double]]* %c30, i32 0, i64 %idxprom26
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx31, i32 0, i64 %idxprom25
  %25 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double %20, %25
  store double %sub33, double* %t, align 8
  %26 = load double, double* %t, align 8
  %27 = load double, double* %t, align 8
  %mul34 = fmul double %26, %27
  %28 = load double, double* %coef_dist, align 8
  %add35 = fadd double %28, %mul34
  store double %add35, double* %coef_dist, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.17
  %29 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond.15

for.end.38:                                       ; preds = %for.cond.15
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %30 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.12

for.end.41:                                       ; preds = %for.cond.12
  %31 = load double, double* %var_dist, align 8
  %32 = load double, double* %coef_dist, align 8
  %add42 = fadd double %31, %32
  %33 = load double, double* %dist, align 8
  %add43 = fadd double %33, %add42
  store double %add43, double* %dist, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.41
  %34 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %35 = load double, double* %dist, align 8
  ret double %35
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_complex(double %t, double %s, double* %r1, double* %r2, double* %r3, i32 %flip, i32 %tie, i32 %cross) #0 {
entry:
  %t.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %r1.addr = alloca double*, align 8
  %r2.addr = alloca double*, align 8
  %r3.addr = alloca double*, align 8
  %flip.addr = alloca i32, align 4
  %tie.addr = alloca i32, align 4
  %cross.addr = alloca i32, align 4
  %c1 = alloca [2 x double], align 16
  %c2 = alloca [2 x double], align 16
  %c3 = alloca [2 x double], align 16
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  %a3 = alloca double, align 8
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  %d3 = alloca double, align 8
  %t8 = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store double %s, double* %s.addr, align 8
  store double* %r1, double** %r1.addr, align 8
  store double* %r2, double** %r2.addr, align 8
  store double* %r3, double** %r3.addr, align 8
  store i32 %flip, i32* %flip.addr, align 4
  store i32 %tie, i32* %tie.addr, align 4
  store i32 %cross, i32* %cross.addr, align 4
  %0 = load double*, double** %r1.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  store double %1, double* %arrayidx1, align 8
  %2 = load double*, double** %r1.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  store double %3, double* %arrayidx3, align 8
  %4 = load double*, double** %r2.addr, align 8
  %arrayidx4 = getelementptr inbounds double, double* %4, i64 0
  %5 = load double, double* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  store double %5, double* %arrayidx5, align 8
  %6 = load double*, double** %r2.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %6, i64 1
  %7 = load double, double* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  store double %7, double* %arrayidx7, align 8
  %8 = load i32, i32* %flip.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx9 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  %9 = load double, double* %arrayidx9, align 8
  store double %9, double* %t8, align 8
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  %10 = load double, double* %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  store double %10, double* %arrayidx11, align 8
  %11 = load double, double* %t8, align 8
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  store double %11, double* %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  %12 = load double, double* %arrayidx13, align 8
  store double %12, double* %t8, align 8
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  %13 = load double, double* %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  store double %13, double* %arrayidx15, align 8
  %14 = load double, double* %t8, align 8
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  store double %14, double* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  %15 = load double, double* %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  %16 = load double, double* %arrayidx18, align 8
  %call = call double @atan2(double %15, double %16) #3
  store double %call, double* %a1, align 8
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  %17 = load double, double* %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  %18 = load double, double* %arrayidx20, align 8
  %call21 = call double @atan2(double %17, double %18) #3
  store double %call21, double* %a2, align 8
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  %19 = load double, double* %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 0
  %20 = load double, double* %arrayidx23, align 8
  %mul = fmul double %19, %20
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  %21 = load double, double* %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds [2 x double], [2 x double]* %c1, i32 0, i64 1
  %22 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %21, %22
  %add = fadd double %mul, %mul26
  %call27 = call double @log(double %add) #3
  %mul28 = fmul double 5.000000e-01, %call27
  store double %mul28, double* %d1, align 8
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  %23 = load double, double* %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 0
  %24 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %23, %24
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  %25 = load double, double* %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds [2 x double], [2 x double]* %c2, i32 0, i64 1
  %26 = load double, double* %arrayidx33, align 8
  %mul34 = fmul double %25, %26
  %add35 = fadd double %mul31, %mul34
  %call36 = call double @log(double %add35) #3
  %mul37 = fmul double 5.000000e-01, %call36
  store double %mul37, double* %d2, align 8
  %27 = load double, double* %t.addr, align 8
  %28 = load double, double* %s.addr, align 8
  %29 = load i32, i32* %tie.addr, align 4
  %30 = load i32, i32* %cross.addr, align 4
  call void @interpolate_angle(double %27, double %28, double* %a1, double* %a2, double* %a3, i32 %29, i32 %30)
  %31 = load double, double* %s.addr, align 8
  %32 = load double, double* %d1, align 8
  %mul38 = fmul double %31, %32
  %33 = load double, double* %t.addr, align 8
  %34 = load double, double* %d2, align 8
  %mul39 = fmul double %33, %34
  %add40 = fadd double %mul38, %mul39
  store double %add40, double* %d3, align 8
  %35 = load double, double* %d3, align 8
  %call41 = call double @exp(double %35) #3
  store double %call41, double* %d3, align 8
  %36 = load double, double* %a3, align 8
  %call42 = call double @cos(double %36) #3
  %37 = load double, double* %d3, align 8
  %mul43 = fmul double %call42, %37
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 0
  store double %mul43, double* %arrayidx44, align 8
  %38 = load double, double* %a3, align 8
  %call45 = call double @sin(double %38) #3
  %39 = load double, double* %d3, align 8
  %mul46 = fmul double %call45, %39
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 1
  store double %mul46, double* %arrayidx47, align 8
  %40 = load i32, i32* %flip.addr, align 4
  %tobool48 = icmp ne i32 %40, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end
  %arrayidx50 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 0
  %41 = load double, double* %arrayidx50, align 8
  %42 = load double*, double** %r3.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %42, i64 1
  store double %41, double* %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 1
  %43 = load double, double* %arrayidx52, align 8
  %44 = load double*, double** %r3.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %44, i64 0
  store double %43, double* %arrayidx53, align 8
  br label %if.end.58

if.else:                                          ; preds = %if.end
  %arrayidx54 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 0
  %45 = load double, double* %arrayidx54, align 8
  %46 = load double*, double** %r3.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %46, i64 0
  store double %45, double* %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds [2 x double], [2 x double]* %c3, i32 0, i64 1
  %47 = load double, double* %arrayidx56, align 8
  %48 = load double*, double** %r3.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %48, i64 1
  store double %47, double* %arrayidx57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.49
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @interpolate_angle(double %t, double %s, double* %v1, double* %v2, double* %v3, i32 %tie, i32 %cross) #0 {
entry:
  %t.addr = alloca double, align 8
  %s.addr = alloca double, align 8
  %v1.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %v3.addr = alloca double*, align 8
  %tie.addr = alloca i32, align 4
  %cross.addr = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %d = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store double %s, double* %s.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %v3, double** %v3.addr, align 8
  store i32 %tie, i32* %tie.addr, align 4
  store i32 %cross, i32* %cross.addr, align 4
  %0 = load double*, double** %v1.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %x, align 8
  %2 = load double*, double** %v2.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %y, align 8
  %4 = load double, double* %x, align 8
  %5 = load double, double* %y, align 8
  %cmp = fcmp ogt double %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load double, double* %x, align 8
  %7 = load double, double* %y, align 8
  %sub = fsub double %6, %7
  store double %sub, double* %d, align 8
  %8 = load double, double* %d, align 8
  %cmp1 = fcmp ogt double %8, 0x400921FB54479CB4
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %9 = load double, double* %d, align 8
  %cmp2 = fcmp ogt double %9, 0x400921FB5440BD7C
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i32, i32* %tie.addr, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true, %if.then
  %11 = load double, double* %y, align 8
  %add = fadd double %11, 0x401921FB54442D18
  store double %add, double* %y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %lor.lhs.false
  br label %if.end.13

if.else:                                          ; preds = %entry
  %12 = load double, double* %y, align 8
  %13 = load double, double* %x, align 8
  %sub4 = fsub double %12, %13
  store double %sub4, double* %d, align 8
  %14 = load double, double* %d, align 8
  %cmp5 = fcmp ogt double %14, 0x400921FB54479CB4
  br i1 %cmp5, label %if.then.10, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %if.else
  %15 = load double, double* %d, align 8
  %cmp7 = fcmp ogt double %15, 0x400921FB5440BD7C
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.12

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %16 = load i32, i32* %tie.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true.8, %if.else
  %17 = load double, double* %x, align 8
  %add11 = fadd double %17, 0x401921FB54442D18
  store double %add11, double* %x, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true.8, %lor.lhs.false.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %18 = load i32, i32* %cross.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then.15, label %if.else.28

if.then.15:                                       ; preds = %if.end.13
  %19 = load double, double* @interpolate_angle.lastx, align 8
  %20 = load double, double* %x, align 8
  %cmp16 = fcmp ogt double %19, %20
  br i1 %cmp16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.then.15
  %21 = load double, double* @interpolate_angle.lasty, align 8
  %22 = load double, double* %y, align 8
  %cmp18 = fcmp olt double %21, %22
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.17
  %23 = load double, double* %y, align 8
  %sub20 = fsub double %23, 0x401921FB54442D18
  store double %sub20, double* %y, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.27

if.else.22:                                       ; preds = %if.then.15
  %24 = load double, double* @interpolate_angle.lasty, align 8
  %25 = load double, double* %y, align 8
  %cmp23 = fcmp ogt double %24, %25
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.else.22
  %26 = load double, double* %y, align 8
  %add25 = fadd double %26, 0x401921FB54442D18
  store double %add25, double* %y, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.else.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.21
  br label %if.end.29

if.else.28:                                       ; preds = %if.end.13
  %27 = load double, double* %x, align 8
  store double %27, double* @interpolate_angle.lastx, align 8
  %28 = load double, double* %y, align 8
  store double %28, double* @interpolate_angle.lasty, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.end.27
  %29 = load double, double* %s.addr, align 8
  %30 = load double, double* %x, align 8
  %mul = fmul double %29, %30
  %31 = load double, double* %t.addr, align 8
  %32 = load double, double* %y, align 8
  %mul30 = fmul double %31, %32
  %add31 = fadd double %mul, %mul30
  %33 = load double*, double** %v3.addr, align 8
  store double %add31, double* %33, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @det_matrix([2 x double]* %s) #0 {
entry:
  %s.addr = alloca [2 x double]*, align 8
  store [2 x double]* %s, [2 x double]** %s.addr, align 8
  %0 = load [2 x double]*, [2 x double]** %s.addr, align 8
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i32 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [2 x double]*, [2 x double]** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %2, i64 1
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx2, i32 0, i64 1
  %3 = load double, double* %arrayidx3, align 8
  %mul = fmul double %1, %3
  %4 = load [2 x double]*, [2 x double]** %s.addr, align 8
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx4, i32 0, i64 1
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [2 x double]*, [2 x double]** %s.addr, align 8
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 1
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx6, i32 0, i64 0
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %sub = fsub double %mul, %mul8
  ret double %sub
}

declare i32 @g_random_int() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
