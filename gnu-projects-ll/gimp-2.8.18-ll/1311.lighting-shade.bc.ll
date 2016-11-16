; ModuleID = './plug-ins/lighting/lighting-shade.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpVector3 = type { double, double, double }
%struct.LightingValues = type { i32, i32, i32, %struct._GimpVector3, %struct._GimpVector3, [6 x %struct.LightSettings], %struct.MaterialSettings, %struct.MaterialSettings, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, i32, %struct._GimpRGB }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }

@width = external global i32, align 4
@xstep = internal global double 0.000000e+00, align 8
@height = external global i32, align 4
@ystep = internal global double 0.000000e+00, align 8
@pre_w = internal global i32 -1, align 4
@pre_h = internal global i32 -1, align 4
@vertex_normals = internal global [3 x %struct._GimpVector3*] zeroinitializer, align 16
@heights = internal global [3 x double*] zeroinitializer, align 16
@triangle_normals = internal global [2 x %struct._GimpVector3*] zeroinitializer, align 16
@bumprow = internal global i8* null, align 8
@mapvals = external global %struct.LightingValues, align 8
@bump_region = external global %struct._GimpPixelRgn, align 8
@logmap = external global [256 x i8], align 16
@sinemap = external global [256 x i8], align 16
@spheremap = external global [256 x i8], align 16
@env_width = external global i32, align 4
@env_height = external global i32, align 4
@sphere_to_image.alpha = internal global double 0.000000e+00, align 8
@sphere_to_image.fac = internal global double 0.000000e+00, align 8
@sphere_to_image.cross_prod = internal global %struct._GimpVector3 zeroinitializer, align 8
@sphere_to_image.firstaxis = internal global %struct._GimpVector3 { double 1.000000e+00, double 0.000000e+00, double 0.000000e+00 }, align 8
@sphere_to_image.secondaxis = internal global %struct._GimpVector3 { double 0.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 8

; Function Attrs: nounwind uwtable
define void @precompute_init(i32 %w, i32 %h) #0 {
entry:
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %bpp = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  store i32 1, i32* %bpp, align 4
  %0 = load i32, i32* @width, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* @xstep, align 8
  %1 = load i32, i32* @height, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double 1.000000e+00, %conv1
  store double %div2, double* @ystep, align 8
  %2 = load i32, i32* %w.addr, align 4
  store i32 %2, i32* @pre_w, align 4
  %3 = load i32, i32* %h.addr, align 4
  store i32 %3, i32* @pre_h, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %n, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 %idxprom
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %arrayidx, align 8
  %cmp4 = icmp ne %struct._GimpVector3* %6, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %n, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 %idxprom6
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %arrayidx7, align 8
  %9 = bitcast %struct._GimpVector3* %8 to i8*
  call void @g_free(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load i32, i32* %n, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [3 x double*], [3 x double*]* @heights, i32 0, i64 %idxprom8
  %11 = load double*, double** %arrayidx9, align 8
  %cmp10 = icmp ne double* %11, null
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %12 = load i32, i32* %n, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [3 x double*], [3 x double*]* @heights, i32 0, i64 %idxprom13
  %13 = load double*, double** %arrayidx14, align 8
  %14 = bitcast double* %13 to i8*
  call void @g_free(i8* %14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %15 = load i32, i32* %w.addr, align 4
  %conv16 = sext i32 %15 to i64
  %call = call noalias i8* @g_malloc_n(i64 %conv16, i64 8)
  %16 = bitcast i8* %call to double*
  %17 = load i32, i32* %n, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [3 x double*], [3 x double*]* @heights, i32 0, i64 %idxprom17
  store double* %16, double** %arrayidx18, align 8
  %18 = load i32, i32* %w.addr, align 4
  %conv19 = sext i32 %18 to i64
  %call20 = call noalias i8* @g_malloc_n(i64 %conv19, i64 24)
  %19 = bitcast i8* %call20 to %struct._GimpVector3*
  %20 = load i32, i32* %n, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 %idxprom21
  store %struct._GimpVector3* %19, %struct._GimpVector3** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %21 = load i32, i32* %n, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.35, %for.end
  %22 = load i32, i32* %n, align 4
  %cmp24 = icmp slt i32 %22, 2
  br i1 %cmp24, label %for.body.26, label %for.end.37

for.body.26:                                      ; preds = %for.cond.23
  %23 = load i32, i32* %n, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 %idxprom27
  %24 = load %struct._GimpVector3*, %struct._GimpVector3** %arrayidx28, align 8
  %cmp29 = icmp ne %struct._GimpVector3* %24, null
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %for.body.26
  %25 = load i32, i32* %n, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 %idxprom32
  %26 = load %struct._GimpVector3*, %struct._GimpVector3** %arrayidx33, align 8
  %27 = bitcast %struct._GimpVector3* %26 to i8*
  call void @g_free(i8* %27)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %for.body.26
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %28 = load i32, i32* %n, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %n, align 4
  br label %for.cond.23

for.end.37:                                       ; preds = %for.cond.23
  %29 = load i8*, i8** @bumprow, align 8
  %cmp38 = icmp ne i8* %29, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end.37
  %30 = load i8*, i8** @bumprow, align 8
  call void @g_free(i8* %30)
  store i8* null, i8** @bumprow, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %for.end.37
  %31 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp42 = icmp ne i32 %31, -1
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %32 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call45 = call i32 @gimp_drawable_bpp(i32 %32)
  store i32 %call45, i32* %bpp, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %33 = load i32, i32* %w.addr, align 4
  %34 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %33, %34
  %conv47 = sext i32 %mul to i64
  %call48 = call noalias i8* @g_malloc_n(i64 %conv47, i64 1)
  store i8* %call48, i8** @bumprow, align 8
  %35 = load i32, i32* %w.addr, align 4
  %shl = shl i32 %35, 1
  %add = add nsw i32 %shl, 2
  %conv49 = sext i32 %add to i64
  %call50 = call noalias i8* @g_malloc_n(i64 %conv49, i64 24)
  %36 = bitcast i8* %call50 to %struct._GimpVector3*
  store %struct._GimpVector3* %36, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %37 = load i32, i32* %w.addr, align 4
  %shl51 = shl i32 %37, 1
  %add52 = add nsw i32 %shl51, 2
  %conv53 = sext i32 %add52 to i64
  %call54 = call noalias i8* @g_malloc_n(i64 %conv53, i64 24)
  %38 = bitcast i8* %call54 to %struct._GimpVector3*
  store %struct._GimpVector3* %38, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  store i32 0, i32* %n, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.65, %if.end.46
  %39 = load i32, i32* %n, align 4
  %40 = load i32, i32* %w.addr, align 4
  %shl56 = shl i32 %40, 1
  %add57 = add nsw i32 %shl56, 1
  %cmp58 = icmp slt i32 %39, %add57
  br i1 %cmp58, label %for.body.60, label %for.end.67

for.body.60:                                      ; preds = %for.cond.55
  %41 = load i32, i32* %n, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %arrayidx62 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %42, i64 %idxprom61
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx62, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %43 = load i32, i32* %n, align 4
  %idxprom63 = sext i32 %43 to i64
  %44 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx64 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %44, i64 %idxprom63
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx64, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.60
  %45 = load i32, i32* %n, align 4
  %inc66 = add nsw i32 %45, 1
  store i32 %inc66, i32* %n, align 4
  br label %for.cond.55

for.end.67:                                       ; preds = %for.cond.55
  store i32 0, i32* %n, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.84, %for.end.67
  %46 = load i32, i32* %n, align 4
  %47 = load i32, i32* %w.addr, align 4
  %cmp69 = icmp slt i32 %46, %47
  br i1 %cmp69, label %for.body.71, label %for.end.86

for.body.71:                                      ; preds = %for.cond.68
  %48 = load i32, i32* %n, align 4
  %idxprom72 = sext i32 %48 to i64
  %49 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 0), align 8
  %arrayidx73 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %49, i64 %idxprom72
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx73, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %50 = load i32, i32* %n, align 4
  %idxprom74 = sext i32 %50 to i64
  %51 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx75 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %51, i64 %idxprom74
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx75, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %52 = load i32, i32* %n, align 4
  %idxprom76 = sext i32 %52 to i64
  %53 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 2), align 8
  %arrayidx77 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %53, i64 %idxprom76
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx77, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %54 = load i32, i32* %n, align 4
  %idxprom78 = sext i32 %54 to i64
  %55 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 0), align 8
  %arrayidx79 = getelementptr inbounds double, double* %55, i64 %idxprom78
  store double 0.000000e+00, double* %arrayidx79, align 8
  %56 = load i32, i32* %n, align 4
  %idxprom80 = sext i32 %56 to i64
  %57 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx81 = getelementptr inbounds double, double* %57, i64 %idxprom80
  store double 0.000000e+00, double* %arrayidx81, align 8
  %58 = load i32, i32* %n, align 4
  %idxprom82 = sext i32 %58 to i64
  %59 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx83 = getelementptr inbounds double, double* %59, i64 %idxprom82
  store double 0.000000e+00, double* %arrayidx83, align 8
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.71
  %60 = load i32, i32* %n, align 4
  %inc85 = add nsw i32 %60, 1
  store i32 %inc85, i32* %n, align 4
  br label %for.cond.68

for.end.86:                                       ; preds = %for.cond.68
  ret void
}

declare void @g_free(i8*) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #1

; Function Attrs: nounwind uwtable
define void @interpol_row(i32 %x1, i32 %x2, i32 %y) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %p1 = alloca %struct._GimpVector3, align 8
  %p2 = alloca %struct._GimpVector3, align 8
  %p3 = alloca %struct._GimpVector3, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %map = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %bumprow1 = alloca i8*, align 8
  %bumprow2 = alloca i8*, align 8
  %diff = alloca double, align 8
  %mapval = alloca i8, align 1
  %mapval1 = alloca i8, align 1
  %mapval2 = alloca i8, align 1
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp147 = alloca %struct._GimpVector3, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* null, i8** %map, align 8
  store i32 1, i32* %bpp, align 4
  store i8* null, i8** %bumprow1, align 8
  store i8* null, i8** %bumprow2, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call = call i32 @gimp_drawable_bpp(i32 %1)
  store i32 %call, i32* %bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* @pre_w, align 4
  %3 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  %call1 = call noalias i8* @g_malloc_n(i64 %conv, i64 1)
  store i8* %call1, i8** %bumprow1, align 8
  %4 = load i32, i32* @pre_w, align 4
  %5 = load i32, i32* %bpp, align 4
  %mul2 = mul nsw i32 %4, %5
  %conv3 = sext i32 %mul2 to i64
  %call4 = call noalias i8* @g_malloc_n(i64 %conv3, i64 1)
  store i8* %call4, i8** %bumprow2, align 8
  %6 = load i8*, i8** %bumprow1, align 8
  %7 = load i32, i32* %x1.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %x2.addr, align 4
  %10 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %9, %10
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* @bump_region, i8* %6, i32 %7, i32 %8, i32 %sub)
  %11 = load i8*, i8** %bumprow2, align 8
  %12 = load i32, i32* %x1.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  %add = add nsw i32 %13, 1
  %14 = load i32, i32* %x2.addr, align 4
  %15 = load i32, i32* %x1.addr, align 4
  %sub5 = sub nsw i32 %14, %15
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* @bump_region, i8* %11, i32 %12, i32 %add, i32 %sub5)
  %16 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  %cmp6 = icmp sgt i32 %16, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %17 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.then.8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logmap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then.8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sinemap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @spheremap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.9, %sw.bb
  br label %if.end.10

if.end.10:                                        ; preds = %sw.epilog, %if.end
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %18 = load i32, i32* %n, align 4
  %19 = load i32, i32* %x2.addr, align 4
  %20 = load i32, i32* %x1.addr, align 4
  %sub11 = sub nsw i32 %19, %20
  %cmp12 = icmp slt i32 %18, %sub11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %bpp, align 4
  %cmp14 = icmp sgt i32 %21, 1
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %for.body
  %22 = load i32, i32* %n, align 4
  %23 = load i32, i32* %bpp, align 4
  %mul17 = mul nsw i32 %22, %23
  %idxprom = sext i32 %mul17 to i64
  %24 = load i8*, i8** %bumprow1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv18 = zext i8 %25 to i32
  %26 = load i32, i32* %n, align 4
  %27 = load i32, i32* %bpp, align 4
  %mul19 = mul nsw i32 %26, %27
  %add20 = add nsw i32 %mul19, 1
  %idxprom21 = sext i32 %add20 to i64
  %28 = load i8*, i8** %bumprow1, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %28, i64 %idxprom21
  %29 = load i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %29 to i32
  %add24 = add nsw i32 %conv18, %conv23
  %30 = load i32, i32* %n, align 4
  %31 = load i32, i32* %bpp, align 4
  %mul25 = mul nsw i32 %30, %31
  %add26 = add nsw i32 %mul25, 2
  %idxprom27 = sext i32 %add26 to i64
  %32 = load i8*, i8** %bumprow1, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 %idxprom27
  %33 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %33 to i32
  %add30 = add nsw i32 %add24, %conv29
  %conv31 = sitofp i32 %add30 to double
  %div = fdiv double %conv31, 3.000000e+00
  %conv32 = fptrunc double %div to float
  %conv33 = fptoui float %conv32 to i8
  store i8 %conv33, i8* %mapval1, align 1
  %34 = load i32, i32* %n, align 4
  %35 = load i32, i32* %bpp, align 4
  %mul34 = mul nsw i32 %34, %35
  %idxprom35 = sext i32 %mul34 to i64
  %36 = load i8*, i8** %bumprow2, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %36, i64 %idxprom35
  %37 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %37 to i32
  %38 = load i32, i32* %n, align 4
  %39 = load i32, i32* %bpp, align 4
  %mul38 = mul nsw i32 %38, %39
  %add39 = add nsw i32 %mul38, 1
  %idxprom40 = sext i32 %add39 to i64
  %40 = load i8*, i8** %bumprow2, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %40, i64 %idxprom40
  %41 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %41 to i32
  %add43 = add nsw i32 %conv37, %conv42
  %42 = load i32, i32* %n, align 4
  %43 = load i32, i32* %bpp, align 4
  %mul44 = mul nsw i32 %42, %43
  %add45 = add nsw i32 %mul44, 2
  %idxprom46 = sext i32 %add45 to i64
  %44 = load i8*, i8** %bumprow2, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %44, i64 %idxprom46
  %45 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %45 to i32
  %add49 = add nsw i32 %add43, %conv48
  %conv50 = sitofp i32 %add49 to double
  %div51 = fdiv double %conv50, 3.000000e+00
  %conv52 = fptrunc double %div51 to float
  %conv53 = fptoui float %conv52 to i8
  store i8 %conv53, i8* %mapval2, align 1
  br label %if.end.60

if.else:                                          ; preds = %for.body
  %46 = load i32, i32* %n, align 4
  %47 = load i32, i32* %bpp, align 4
  %mul54 = mul nsw i32 %46, %47
  %idxprom55 = sext i32 %mul54 to i64
  %48 = load i8*, i8** %bumprow1, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %48, i64 %idxprom55
  %49 = load i8, i8* %arrayidx56, align 1
  store i8 %49, i8* %mapval1, align 1
  %50 = load i32, i32* %n, align 4
  %51 = load i32, i32* %bpp, align 4
  %mul57 = mul nsw i32 %50, %51
  %idxprom58 = sext i32 %mul57 to i64
  %52 = load i8*, i8** %bumprow2, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %52, i64 %idxprom58
  %53 = load i8, i8* %arrayidx59, align 1
  store i8 %53, i8* %mapval2, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.16
  %54 = load i8, i8* %mapval1, align 1
  %conv61 = zext i8 %54 to i32
  %55 = load i8, i8* %mapval2, align 1
  %conv62 = zext i8 %55 to i32
  %sub63 = sub nsw i32 %conv61, %conv62
  %conv64 = sitofp i32 %sub63 to double
  store double %conv64, double* %diff, align 8
  %56 = load i8, i8* %mapval1, align 1
  %conv65 = zext i8 %56 to i32
  %conv66 = sitofp i32 %conv65 to double
  %57 = load double, double* %diff, align 8
  %add67 = fadd double %conv66, %57
  %cmp68 = fcmp ogt double %add67, 2.550000e+02
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.60
  br label %cond.end.80

cond.false:                                       ; preds = %if.end.60
  %58 = load i8, i8* %mapval1, align 1
  %conv70 = zext i8 %58 to i32
  %conv71 = sitofp i32 %conv70 to double
  %59 = load double, double* %diff, align 8
  %add72 = fadd double %conv71, %59
  %cmp73 = fcmp olt double %add72, 0.000000e+00
  br i1 %cmp73, label %cond.true.75, label %cond.false.76

cond.true.75:                                     ; preds = %cond.false
  br label %cond.end

cond.false.76:                                    ; preds = %cond.false
  %60 = load i8, i8* %mapval1, align 1
  %conv77 = zext i8 %60 to i32
  %conv78 = sitofp i32 %conv77 to double
  %61 = load double, double* %diff, align 8
  %add79 = fadd double %conv78, %61
  br label %cond.end

cond.end:                                         ; preds = %cond.false.76, %cond.true.75
  %cond = phi double [ 0.000000e+00, %cond.true.75 ], [ %add79, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end, %cond.true
  %cond81 = phi double [ 2.550000e+02, %cond.true ], [ %cond, %cond.end ]
  %conv82 = fptoui double %cond81 to i8
  store i8 %conv82, i8* %mapval, align 1
  %62 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  %cmp83 = icmp sgt i32 %62, 0
  br i1 %cmp83, label %if.then.85, label %if.else.100

if.then.85:                                       ; preds = %cond.end.80
  %63 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %64 = load i8, i8* %mapval1, align 1
  %idxprom86 = zext i8 %64 to i64
  %65 = load i8*, i8** %map, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %65, i64 %idxprom86
  %66 = load i8, i8* %arrayidx87, align 1
  %conv88 = uitofp i8 %66 to double
  %mul89 = fmul double %63, %conv88
  %div90 = fdiv double %mul89, 2.550000e+02
  %67 = load i32, i32* %n, align 4
  %idxprom91 = sext i32 %67 to i64
  %68 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx92 = getelementptr inbounds double, double* %68, i64 %idxprom91
  store double %div90, double* %arrayidx92, align 8
  %69 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %70 = load i8, i8* %mapval, align 1
  %idxprom93 = zext i8 %70 to i64
  %71 = load i8*, i8** %map, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %71, i64 %idxprom93
  %72 = load i8, i8* %arrayidx94, align 1
  %conv95 = uitofp i8 %72 to double
  %mul96 = fmul double %69, %conv95
  %div97 = fdiv double %mul96, 2.550000e+02
  %73 = load i32, i32* %n, align 4
  %idxprom98 = sext i32 %73 to i64
  %74 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx99 = getelementptr inbounds double, double* %74, i64 %idxprom98
  store double %div97, double* %arrayidx99, align 8
  br label %if.end.111

if.else.100:                                      ; preds = %cond.end.80
  %75 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %76 = load i8, i8* %mapval1, align 1
  %conv101 = uitofp i8 %76 to double
  %mul102 = fmul double %75, %conv101
  %div103 = fdiv double %mul102, 2.550000e+02
  %77 = load i32, i32* %n, align 4
  %idxprom104 = sext i32 %77 to i64
  %78 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx105 = getelementptr inbounds double, double* %78, i64 %idxprom104
  store double %div103, double* %arrayidx105, align 8
  %79 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %80 = load i8, i8* %mapval, align 1
  %conv106 = uitofp i8 %80 to double
  %mul107 = fmul double %79, %conv106
  %div108 = fdiv double %mul107, 2.550000e+02
  %81 = load i32, i32* %n, align 4
  %idxprom109 = sext i32 %81 to i64
  %82 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx110 = getelementptr inbounds double, double* %82, i64 %idxprom109
  store double %div108, double* %arrayidx110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.100, %if.then.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %83 = load i32, i32* %n, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.154, %for.end
  %84 = load i32, i32* %n, align 4
  %85 = load i32, i32* %x2.addr, align 4
  %86 = load i32, i32* %x1.addr, align 4
  %sub113 = sub nsw i32 %85, %86
  %sub114 = sub nsw i32 %sub113, 1
  %cmp115 = icmp slt i32 %84, %sub114
  br i1 %cmp115, label %for.body.117, label %for.end.156

for.body.117:                                     ; preds = %for.cond.112
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %87 = load double, double* @ystep, align 8
  %y118 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  store double %87, double* %y118, align 8
  %88 = load i32, i32* %n, align 4
  %idxprom119 = sext i32 %88 to i64
  %89 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx120 = getelementptr inbounds double, double* %89, i64 %idxprom119
  %90 = load double, double* %arrayidx120, align 8
  %91 = load i32, i32* %n, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx122 = getelementptr inbounds double, double* %92, i64 %idxprom121
  %93 = load double, double* %arrayidx122, align 8
  %sub123 = fsub double %90, %93
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 2
  store double %sub123, double* %z, align 8
  %94 = load double, double* @xstep, align 8
  %x124 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  store double %94, double* %x124, align 8
  %95 = load double, double* @ystep, align 8
  %y125 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  store double %95, double* %y125, align 8
  %96 = load i32, i32* %n, align 4
  %add126 = add nsw i32 %96, 1
  %idxprom127 = sext i32 %add126 to i64
  %97 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx128 = getelementptr inbounds double, double* %97, i64 %idxprom127
  %98 = load double, double* %arrayidx128, align 8
  %99 = load i32, i32* %n, align 4
  %idxprom129 = sext i32 %99 to i64
  %100 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx130 = getelementptr inbounds double, double* %100, i64 %idxprom129
  %101 = load double, double* %arrayidx130, align 8
  %sub131 = fsub double %98, %101
  %z132 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 2
  store double %sub131, double* %z132, align 8
  %102 = load double, double* @xstep, align 8
  %x133 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 0
  store double %102, double* %x133, align 8
  %y134 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 1
  store double 0.000000e+00, double* %y134, align 8
  %103 = load i32, i32* %n, align 4
  %add135 = add nsw i32 %103, 1
  %idxprom136 = sext i32 %add135 to i64
  %104 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx137 = getelementptr inbounds double, double* %104, i64 %idxprom136
  %105 = load double, double* %arrayidx137, align 8
  %106 = load i32, i32* %n, align 4
  %idxprom138 = sext i32 %106 to i64
  %107 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx139 = getelementptr inbounds double, double* %107, i64 %idxprom138
  %108 = load double, double* %arrayidx139, align 8
  %sub140 = fsub double %105, %108
  %z141 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 2
  store double %sub140, double* %z141, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %109 to i64
  %110 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx143 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %110, i64 %idxprom142
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp, %struct._GimpVector3* %p2, %struct._GimpVector3* %p1)
  %111 = bitcast %struct._GimpVector3* %arrayidx143 to i8*
  %112 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 24, i32 8, i1 false)
  %113 = load i32, i32* %i, align 4
  %add144 = add nsw i32 %113, 1
  %idxprom145 = sext i32 %add144 to i64
  %114 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx146 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %114, i64 %idxprom145
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp147, %struct._GimpVector3* %p3, %struct._GimpVector3* %p2)
  %115 = bitcast %struct._GimpVector3* %arrayidx146 to i8*
  %116 = bitcast %struct._GimpVector3* %tmp147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 24, i32 8, i1 false)
  %117 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %117 to i64
  %118 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx149 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %118, i64 %idxprom148
  call void @gimp_vector3_normalize(%struct._GimpVector3* %arrayidx149)
  %119 = load i32, i32* %i, align 4
  %add150 = add nsw i32 %119, 1
  %idxprom151 = sext i32 %add150 to i64
  %120 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx152 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %120, i64 %idxprom151
  call void @gimp_vector3_normalize(%struct._GimpVector3* %arrayidx152)
  %121 = load i32, i32* %i, align 4
  %add153 = add nsw i32 %121, 2
  store i32 %add153, i32* %i, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.117
  %122 = load i32, i32* %n, align 4
  %inc155 = add nsw i32 %122, 1
  store i32 %inc155, i32* %n, align 4
  br label %for.cond.112

for.end.156:                                      ; preds = %for.cond.112
  %123 = load i8*, i8** %bumprow1, align 8
  call void @g_free(i8* %123)
  %124 = load i8*, i8** %bumprow2, align 8
  call void @g_free(i8* %124)
  ret void
}

declare void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @gimp_vector3_cross_product(%struct._GimpVector3* sret, %struct._GimpVector3*, %struct._GimpVector3*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gimp_vector3_normalize(%struct._GimpVector3*) #1

; Function Attrs: nounwind uwtable
define void @precompute_normals(i32 %x1, i32 %x2, i32 %y) #0 {
entry:
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tmpv = alloca %struct._GimpVector3*, align 8
  %p1 = alloca %struct._GimpVector3, align 8
  %p2 = alloca %struct._GimpVector3, align 8
  %p3 = alloca %struct._GimpVector3, align 8
  %normal = alloca %struct._GimpVector3, align 8
  %tmpd = alloca double*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %nv = alloca i32, align 4
  %map = alloca i8*, align 8
  %bpp = alloca i32, align 4
  %mapval = alloca i8, align 1
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp111 = alloca %struct._GimpVector3, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* null, i8** %map, align 8
  store i32 1, i32* %bpp, align 4
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  store %struct._GimpVector3* %0, %struct._GimpVector3** %tmpv, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  store %struct._GimpVector3* %1, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %tmpv, align 8
  store %struct._GimpVector3* %2, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %3 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 0), align 8
  store %struct._GimpVector3* %3, %struct._GimpVector3** %tmpv, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  store %struct._GimpVector3* %4, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 0), align 8
  %5 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 2), align 8
  store %struct._GimpVector3* %5, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %tmpv, align 8
  store %struct._GimpVector3* %6, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 2), align 8
  %7 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 0), align 8
  store double* %7, double** %tmpd, align 8
  %8 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  store double* %8, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 0), align 8
  %9 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  store double* %9, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %10 = load double*, double** %tmpd, align 8
  store double* %10, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %11, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call = call i32 @gimp_drawable_bpp(i32 %12)
  store i32 %call, i32* %bpp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8*, i8** @bumprow, align 8
  %14 = load i32, i32* %x1.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %16 = load i32, i32* %x2.addr, align 4
  %17 = load i32, i32* %x1.addr, align 4
  %sub = sub nsw i32 %16, %17
  call void @gimp_pixel_rgn_get_row(%struct._GimpPixelRgn* @bump_region, i8* %13, i32 %14, i32 %15, i32 %sub)
  %18 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  %cmp1 = icmp sgt i32 %18, 0
  br i1 %cmp1, label %if.then.2, label %if.else.33

if.then.2:                                        ; preds = %if.end
  %19 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 12), align 4
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.then.2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @logmap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then.2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @sinemap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.2
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @spheremap, i32 0, i32 0), i8** %map, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.3, %sw.bb
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %20 = load i32, i32* %n, align 4
  %21 = load i32, i32* %x2.addr, align 4
  %22 = load i32, i32* %x1.addr, align 4
  %sub4 = sub nsw i32 %21, %22
  %cmp5 = icmp slt i32 %20, %sub4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %bpp, align 4
  %cmp6 = icmp sgt i32 %23, 1
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body
  %24 = load i32, i32* %n, align 4
  %25 = load i32, i32* %bpp, align 4
  %mul = mul nsw i32 %24, %25
  %idxprom = sext i32 %mul to i64
  %26 = load i8*, i8** @bumprow, align 8
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %27 to i32
  %28 = load i32, i32* %n, align 4
  %29 = load i32, i32* %bpp, align 4
  %mul8 = mul nsw i32 %28, %29
  %add = add nsw i32 %mul8, 1
  %idxprom9 = sext i32 %add to i64
  %30 = load i8*, i8** @bumprow, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %30, i64 %idxprom9
  %31 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %31 to i32
  %add12 = add nsw i32 %conv, %conv11
  %32 = load i32, i32* %n, align 4
  %33 = load i32, i32* %bpp, align 4
  %mul13 = mul nsw i32 %32, %33
  %add14 = add nsw i32 %mul13, 2
  %idxprom15 = sext i32 %add14 to i64
  %34 = load i8*, i8** @bumprow, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %34, i64 %idxprom15
  %35 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %35 to i32
  %add18 = add nsw i32 %add12, %conv17
  %conv19 = sitofp i32 %add18 to double
  %div = fdiv double %conv19, 3.000000e+00
  %conv20 = fptrunc double %div to float
  %conv21 = fptoui float %conv20 to i8
  store i8 %conv21, i8* %mapval, align 1
  br label %if.end.25

if.else:                                          ; preds = %for.body
  %36 = load i32, i32* %n, align 4
  %37 = load i32, i32* %bpp, align 4
  %mul22 = mul nsw i32 %36, %37
  %idxprom23 = sext i32 %mul22 to i64
  %38 = load i8*, i8** @bumprow, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %38, i64 %idxprom23
  %39 = load i8, i8* %arrayidx24, align 1
  store i8 %39, i8* %mapval, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.7
  %40 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %41 = load i8, i8* %mapval, align 1
  %idxprom26 = zext i8 %41 to i64
  %42 = load i8*, i8** %map, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %42, i64 %idxprom26
  %43 = load i8, i8* %arrayidx27, align 1
  %conv28 = uitofp i8 %43 to double
  %mul29 = fmul double %40, %conv28
  %div30 = fdiv double %mul29, 2.550000e+02
  %44 = load i32, i32* %n, align 4
  %idxprom31 = sext i32 %44 to i64
  %45 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx32 = getelementptr inbounds double, double* %45, i64 %idxprom31
  store double %div30, double* %arrayidx32, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %46 = load i32, i32* %n, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.75

if.else.33:                                       ; preds = %if.end
  store i32 0, i32* %n, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.72, %if.else.33
  %47 = load i32, i32* %n, align 4
  %48 = load i32, i32* %x2.addr, align 4
  %49 = load i32, i32* %x1.addr, align 4
  %sub35 = sub nsw i32 %48, %49
  %cmp36 = icmp slt i32 %47, %sub35
  br i1 %cmp36, label %for.body.38, label %for.end.74

for.body.38:                                      ; preds = %for.cond.34
  %50 = load i32, i32* %bpp, align 4
  %cmp39 = icmp sgt i32 %50, 1
  br i1 %cmp39, label %if.then.41, label %if.else.62

if.then.41:                                       ; preds = %for.body.38
  %51 = load i32, i32* %n, align 4
  %52 = load i32, i32* %bpp, align 4
  %mul42 = mul nsw i32 %51, %52
  %idxprom43 = sext i32 %mul42 to i64
  %53 = load i8*, i8** @bumprow, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %53, i64 %idxprom43
  %54 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %54 to i32
  %55 = load i32, i32* %n, align 4
  %56 = load i32, i32* %bpp, align 4
  %mul46 = mul nsw i32 %55, %56
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %57 = load i8*, i8** @bumprow, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %57, i64 %idxprom48
  %58 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %58 to i32
  %add51 = add nsw i32 %conv45, %conv50
  %59 = load i32, i32* %n, align 4
  %60 = load i32, i32* %bpp, align 4
  %mul52 = mul nsw i32 %59, %60
  %add53 = add nsw i32 %mul52, 2
  %idxprom54 = sext i32 %add53 to i64
  %61 = load i8*, i8** @bumprow, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %61, i64 %idxprom54
  %62 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %62 to i32
  %add57 = add nsw i32 %add51, %conv56
  %conv58 = sitofp i32 %add57 to double
  %div59 = fdiv double %conv58, 3.000000e+00
  %conv60 = fptrunc double %div59 to float
  %conv61 = fptoui float %conv60 to i8
  store i8 %conv61, i8* %mapval, align 1
  br label %if.end.66

if.else.62:                                       ; preds = %for.body.38
  %63 = load i32, i32* %n, align 4
  %64 = load i32, i32* %bpp, align 4
  %mul63 = mul nsw i32 %63, %64
  %idxprom64 = sext i32 %mul63 to i64
  %65 = load i8*, i8** @bumprow, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %65, i64 %idxprom64
  %66 = load i8, i8* %arrayidx65, align 1
  store i8 %66, i8* %mapval, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.62, %if.then.41
  %67 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 9), align 8
  %68 = load i8, i8* %mapval, align 1
  %conv67 = uitofp i8 %68 to double
  %mul68 = fmul double %67, %conv67
  %div69 = fdiv double %mul68, 2.550000e+02
  %69 = load i32, i32* %n, align 4
  %idxprom70 = sext i32 %69 to i64
  %70 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx71 = getelementptr inbounds double, double* %70, i64 %idxprom70
  store double %div69, double* %arrayidx71, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.66
  %71 = load i32, i32* %n, align 4
  %inc73 = add nsw i32 %71, 1
  store i32 %inc73, i32* %n, align 4
  br label %for.cond.34

for.end.74:                                       ; preds = %for.cond.34
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %for.end
  store i32 0, i32* %i, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.118, %if.end.75
  %72 = load i32, i32* %n, align 4
  %73 = load i32, i32* %x2.addr, align 4
  %74 = load i32, i32* %x1.addr, align 4
  %sub77 = sub nsw i32 %73, %74
  %sub78 = sub nsw i32 %sub77, 1
  %cmp79 = icmp slt i32 %72, %sub78
  br i1 %cmp79, label %for.body.81, label %for.end.120

for.body.81:                                      ; preds = %for.cond.76
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8
  %75 = load double, double* @ystep, align 8
  %y82 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  store double %75, double* %y82, align 8
  %76 = load i32, i32* %n, align 4
  %idxprom83 = sext i32 %76 to i64
  %77 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx84 = getelementptr inbounds double, double* %77, i64 %idxprom83
  %78 = load double, double* %arrayidx84, align 8
  %79 = load i32, i32* %n, align 4
  %idxprom85 = sext i32 %79 to i64
  %80 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx86 = getelementptr inbounds double, double* %80, i64 %idxprom85
  %81 = load double, double* %arrayidx86, align 8
  %sub87 = fsub double %78, %81
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 2
  store double %sub87, double* %z, align 8
  %82 = load double, double* @xstep, align 8
  %x88 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  store double %82, double* %x88, align 8
  %83 = load double, double* @ystep, align 8
  %y89 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  store double %83, double* %y89, align 8
  %84 = load i32, i32* %n, align 4
  %add90 = add nsw i32 %84, 1
  %idxprom91 = sext i32 %add90 to i64
  %85 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 2), align 8
  %arrayidx92 = getelementptr inbounds double, double* %85, i64 %idxprom91
  %86 = load double, double* %arrayidx92, align 8
  %87 = load i32, i32* %n, align 4
  %idxprom93 = sext i32 %87 to i64
  %88 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx94 = getelementptr inbounds double, double* %88, i64 %idxprom93
  %89 = load double, double* %arrayidx94, align 8
  %sub95 = fsub double %86, %89
  %z96 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 2
  store double %sub95, double* %z96, align 8
  %90 = load double, double* @xstep, align 8
  %x97 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 0
  store double %90, double* %x97, align 8
  %y98 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 1
  store double 0.000000e+00, double* %y98, align 8
  %91 = load i32, i32* %n, align 4
  %add99 = add nsw i32 %91, 1
  %idxprom100 = sext i32 %add99 to i64
  %92 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx101 = getelementptr inbounds double, double* %92, i64 %idxprom100
  %93 = load double, double* %arrayidx101, align 8
  %94 = load i32, i32* %n, align 4
  %idxprom102 = sext i32 %94 to i64
  %95 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx103 = getelementptr inbounds double, double* %95, i64 %idxprom102
  %96 = load double, double* %arrayidx103, align 8
  %sub104 = fsub double %93, %96
  %z105 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p3, i32 0, i32 2
  store double %sub104, double* %z105, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %97 to i64
  %98 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx107 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %98, i64 %idxprom106
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp, %struct._GimpVector3* %p2, %struct._GimpVector3* %p1)
  %99 = bitcast %struct._GimpVector3* %arrayidx107 to i8*
  %100 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 24, i32 8, i1 false)
  %101 = load i32, i32* %i, align 4
  %add108 = add nsw i32 %101, 1
  %idxprom109 = sext i32 %add108 to i64
  %102 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx110 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %102, i64 %idxprom109
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp111, %struct._GimpVector3* %p3, %struct._GimpVector3* %p2)
  %103 = bitcast %struct._GimpVector3* %arrayidx110 to i8*
  %104 = bitcast %struct._GimpVector3* %tmp111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 24, i32 8, i1 false)
  %105 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %105 to i64
  %106 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx113 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %106, i64 %idxprom112
  call void @gimp_vector3_normalize(%struct._GimpVector3* %arrayidx113)
  %107 = load i32, i32* %i, align 4
  %add114 = add nsw i32 %107, 1
  %idxprom115 = sext i32 %add114 to i64
  %108 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx116 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %108, i64 %idxprom115
  call void @gimp_vector3_normalize(%struct._GimpVector3* %arrayidx116)
  %109 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %109, 2
  store i32 %add117, i32* %i, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.81
  %110 = load i32, i32* %n, align 4
  %inc119 = add nsw i32 %110, 1
  store i32 %inc119, i32* %n, align 4
  br label %for.cond.76

for.end.120:                                      ; preds = %for.cond.76
  store i32 0, i32* %i, align 4
  call void @gimp_vector3_set(%struct._GimpVector3* %normal, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 0, i32* %n, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.179, %for.end.120
  %111 = load i32, i32* %n, align 4
  %112 = load i32, i32* %x2.addr, align 4
  %113 = load i32, i32* %x1.addr, align 4
  %sub122 = sub nsw i32 %112, %113
  %sub123 = sub nsw i32 %sub122, 1
  %cmp124 = icmp slt i32 %111, %sub123
  br i1 %cmp124, label %for.body.126, label %for.end.181

for.body.126:                                     ; preds = %for.cond.121
  store i32 0, i32* %nv, align 4
  %114 = load i32, i32* %n, align 4
  %cmp127 = icmp sgt i32 %114, 0
  br i1 %cmp127, label %if.then.129, label %if.end.149

if.then.129:                                      ; preds = %for.body.126
  %115 = load i32, i32* %y.addr, align 4
  %cmp130 = icmp sgt i32 %115, 0
  br i1 %cmp130, label %if.then.132, label %if.end.140

if.then.132:                                      ; preds = %if.then.129
  %116 = load i32, i32* %i, align 4
  %sub133 = sub nsw i32 %116, 1
  %idxprom134 = sext i32 %sub133 to i64
  %117 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %arrayidx135 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %117, i64 %idxprom134
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx135)
  %118 = load i32, i32* %i, align 4
  %sub136 = sub nsw i32 %118, 2
  %idxprom137 = sext i32 %sub136 to i64
  %119 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %arrayidx138 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %119, i64 %idxprom137
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx138)
  %120 = load i32, i32* %nv, align 4
  %add139 = add nsw i32 %120, 2
  store i32 %add139, i32* %nv, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.132, %if.then.129
  %121 = load i32, i32* %y.addr, align 4
  %122 = load i32, i32* @pre_h, align 4
  %cmp141 = icmp slt i32 %121, %122
  br i1 %cmp141, label %if.then.143, label %if.end.148

if.then.143:                                      ; preds = %if.end.140
  %123 = load i32, i32* %i, align 4
  %sub144 = sub nsw i32 %123, 1
  %idxprom145 = sext i32 %sub144 to i64
  %124 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx146 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %124, i64 %idxprom145
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx146)
  %125 = load i32, i32* %nv, align 4
  %inc147 = add nsw i32 %125, 1
  store i32 %inc147, i32* %nv, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.143, %if.end.140
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %for.body.126
  %126 = load i32, i32* %n, align 4
  %127 = load i32, i32* @pre_w, align 4
  %cmp150 = icmp slt i32 %126, %127
  br i1 %cmp150, label %if.then.152, label %if.end.173

if.then.152:                                      ; preds = %if.end.149
  %128 = load i32, i32* %y.addr, align 4
  %cmp153 = icmp sgt i32 %128, 0
  br i1 %cmp153, label %if.then.155, label %if.end.162

if.then.155:                                      ; preds = %if.then.152
  %129 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %129 to i64
  %130 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %arrayidx157 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %130, i64 %idxprom156
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx157)
  %131 = load i32, i32* %i, align 4
  %add158 = add nsw i32 %131, 1
  %idxprom159 = sext i32 %add158 to i64
  %132 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 0), align 8
  %arrayidx160 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %132, i64 %idxprom159
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx160)
  %133 = load i32, i32* %nv, align 4
  %add161 = add nsw i32 %133, 2
  store i32 %add161, i32* %nv, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.155, %if.then.152
  %134 = load i32, i32* %y.addr, align 4
  %135 = load i32, i32* @pre_h, align 4
  %cmp163 = icmp slt i32 %134, %135
  br i1 %cmp163, label %if.then.165, label %if.end.172

if.then.165:                                      ; preds = %if.end.162
  %136 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %136 to i64
  %137 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx167 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %137, i64 %idxprom166
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx167)
  %138 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %138, 1
  %idxprom169 = sext i32 %add168 to i64
  %139 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([2 x %struct._GimpVector3*], [2 x %struct._GimpVector3*]* @triangle_normals, i32 0, i64 1), align 8
  %arrayidx170 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %139, i64 %idxprom169
  call void @gimp_vector3_add(%struct._GimpVector3* %normal, %struct._GimpVector3* %normal, %struct._GimpVector3* %arrayidx170)
  %140 = load i32, i32* %nv, align 4
  %add171 = add nsw i32 %140, 2
  store i32 %add171, i32* %nv, align 4
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.165, %if.end.162
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.149
  %141 = load i32, i32* %nv, align 4
  %conv174 = sitofp i32 %141 to double
  %div175 = fdiv double 1.000000e+00, %conv174
  call void @gimp_vector3_mul(%struct._GimpVector3* %normal, double %div175)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %normal)
  %142 = load i32, i32* %n, align 4
  %idxprom176 = sext i32 %142 to i64
  %143 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx177 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %143, i64 %idxprom176
  %144 = bitcast %struct._GimpVector3* %arrayidx177 to i8*
  %145 = bitcast %struct._GimpVector3* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 24, i32 8, i1 false)
  %146 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %146, 2
  store i32 %add178, i32* %i, align 4
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.173
  %147 = load i32, i32* %n, align 4
  %inc180 = add nsw i32 %147, 1
  store i32 %inc180, i32* %n, align 4
  br label %for.cond.121

for.end.181:                                      ; preds = %for.cond.121
  ret void
}

declare void @gimp_vector3_add(%struct._GimpVector3*, %struct._GimpVector3*, %struct._GimpVector3*) #1

declare void @gimp_vector3_mul(%struct._GimpVector3*, double) #1

; Function Attrs: nounwind uwtable
define void @get_ray_color(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %position) #0 {
entry:
  %position.addr = alloca %struct._GimpVector3*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color_int = alloca %struct._GimpRGB, align 8
  %color_sum = alloca %struct._GimpRGB, align 8
  %light_color = alloca %struct._GimpRGB, align 8
  %x = alloca i32, align 4
  %f = alloca i32, align 4
  %xf = alloca double, align 8
  %yf = alloca double, align 8
  %normal = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3*, align 8
  %k = alloca i32, align 4
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp41 = alloca %struct._GimpRGB, align 8
  %tmp50 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %position, %struct._GimpVector3** %position.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  call void @pos_to_float(double %1, double %3, double* %xf, double* %yf)
  %4 = load double, double* %xf, align 8
  %call = call double @rint(double %4) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color_sum, double 0.000000e+00)
  br label %if.end.52

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load double, double* %xf, align 8
  %10 = load double, double* %yf, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp, double %9, double %10, i32* %f)
  %11 = bitcast %struct._GimpRGB* %color to i8*
  %12 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = bitcast %struct._GimpRGB* %color_sum to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_sum, double %15)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %k, align 4
  %cmp3 = icmp slt i32 %16, 6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom5
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx6, i32 0, i32 5
  %18 = load i32, i32* %active, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %for.body
  %19 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom8
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx9, i32 0, i32 0
  %20 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %20, 3
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.else.13:                                       ; preds = %lor.lhs.false
  %21 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom14
  %type16 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx15, i32 0, i32 0
  %22 = load i32, i32* %type16, align 4
  %cmp17 = icmp eq i32 %22, 0
  br i1 %cmp17, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.else.13
  %23 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom20
  %position22 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx21, i32 0, i32 1
  store %struct._GimpVector3* %position22, %struct._GimpVector3** %p, align 8
  br label %if.end

if.else.23:                                       ; preds = %if.else.13
  %24 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom24
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx25, i32 0, i32 2
  store %struct._GimpVector3* %direction, %struct._GimpVector3** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.23, %if.then.19
  br label %if.end.26

if.end.26:                                        ; preds = %if.end
  %25 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom27
  %color29 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx28, i32 0, i32 3
  %26 = bitcast %struct._GimpRGB* %color_int to i8*
  %27 = bitcast %struct._GimpRGB* %color29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %28 to i64
  %arrayidx31 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom30
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx31, i32 0, i32 4
  %29 = load double, double* %intensity, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_int, double %29)
  %30 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp32 = icmp eq i32 %30, 0
  br i1 %cmp32, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.26
  %31 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp35 = icmp eq i32 %31, -1
  br i1 %cmp35, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %lor.lhs.false.34, %if.end.26
  %32 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %33 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %34 to i64
  %arrayidx39 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom38
  %type40 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx39, i32 0, i32 0
  %35 = load i32, i32* %type40, align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp41, %struct._GimpVector3* %32, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 4), %struct._GimpVector3* %33, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %35)
  %36 = bitcast %struct._GimpRGB* %light_color to i8*
  %37 = bitcast %struct._GimpRGB* %tmp41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %if.end.51

if.else.42:                                       ; preds = %lor.lhs.false.34
  %38 = load double, double* %xf, align 8
  %call43 = call double @rint(double %38) #5
  %conv44 = fptosi double %call43 to i32
  %idxprom45 = sext i32 %conv44 to i64
  %39 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx46 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %39, i64 %idxprom45
  %40 = bitcast %struct._GimpVector3* %normal to i8*
  %41 = bitcast %struct._GimpVector3* %arrayidx46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 24, i32 8, i1 false)
  %42 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %43 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %44 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %44 to i64
  %arrayidx48 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom47
  %type49 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx48, i32 0, i32 0
  %45 = load i32, i32* %type49, align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp50, %struct._GimpVector3* %42, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %43, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %45)
  %46 = bitcast %struct._GimpRGB* %light_color to i8*
  %47 = bitcast %struct._GimpRGB* %tmp50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.42, %if.then.37
  call void @gimp_rgb_add(%struct._GimpRGB* %color_sum, %struct._GimpRGB* %light_color)
  br label %for.inc

for.inc:                                          ; preds = %if.end.51, %if.then.12
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.52

if.end.52:                                        ; preds = %for.end, %if.then
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color_sum)
  %49 = bitcast %struct._GimpRGB* %agg.result to i8*
  %50 = bitcast %struct._GimpRGB* %color_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  ret void
}

declare void @pos_to_float(double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @rint(double) #3

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @get_image_color(%struct._GimpRGB* sret, double, double, i32*) #1

declare void @gimp_rgb_multiply(%struct._GimpRGB*, double) #1

; Function Attrs: nounwind uwtable
define internal void @phong_shade(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %position, %struct._GimpVector3* %viewpoint, %struct._GimpVector3* %normal, %struct._GimpVector3* %lightposition, %struct._GimpRGB* %diff_col, %struct._GimpRGB* %light_col, i32 %light_type) #0 {
entry:
  %position.addr = alloca %struct._GimpVector3*, align 8
  %viewpoint.addr = alloca %struct._GimpVector3*, align 8
  %normal.addr = alloca %struct._GimpVector3*, align 8
  %lightposition.addr = alloca %struct._GimpVector3*, align 8
  %diff_col.addr = alloca %struct._GimpRGB*, align 8
  %light_col.addr = alloca %struct._GimpRGB*, align 8
  %light_type.addr = alloca i32, align 4
  %diffuse_color = alloca %struct._GimpRGB, align 8
  %specular_color = alloca %struct._GimpRGB, align 8
  %nl = alloca double, align 8
  %rv = alloca double, align 8
  %dist = alloca double, align 8
  %l = alloca %struct._GimpVector3, align 8
  %v = alloca %struct._GimpVector3, align 8
  %n = alloca %struct._GimpVector3, align 8
  %lnormal = alloca %struct._GimpVector3, align 8
  %h = alloca %struct._GimpVector3, align 8
  store %struct._GimpVector3* %position, %struct._GimpVector3** %position.addr, align 8
  store %struct._GimpVector3* %viewpoint, %struct._GimpVector3** %viewpoint.addr, align 8
  store %struct._GimpVector3* %normal, %struct._GimpVector3** %normal.addr, align 8
  store %struct._GimpVector3* %lightposition, %struct._GimpVector3** %lightposition.addr, align 8
  store %struct._GimpRGB* %diff_col, %struct._GimpRGB** %diff_col.addr, align 8
  store %struct._GimpRGB* %light_col, %struct._GimpRGB** %light_col.addr, align 8
  store i32 %light_type, i32* %light_type.addr, align 4
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %1 = bitcast %struct._GimpVector3* %n to i8*
  %2 = bitcast %struct._GimpVector3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %3 = load i32, i32* %light_type.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %lightposition.addr, align 8
  %5 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %l, %struct._GimpVector3* %4, %struct._GimpVector3* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %lightposition.addr, align 8
  %7 = bitcast %struct._GimpVector3* %l to i8*
  %8 = bitcast %struct._GimpVector3* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %l)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call double @gimp_vector3_length(%struct._GimpVector3* %l)
  store double %call, double* %dist, align 8
  %9 = load double, double* %dist, align 8
  %cmp1 = fcmp une double %9, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %10 = load double, double* %dist, align 8
  %div = fdiv double 1.000000e+00, %10
  call void @gimp_vector3_mul(%struct._GimpVector3* %l, double %div)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %call4 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %n, %struct._GimpVector3* %l)
  %mul = fmul double 2.000000e+00, %call4
  %cmp5 = fcmp ogt double 0.000000e+00, %mul
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %call6 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %n, %struct._GimpVector3* %l)
  %mul7 = fmul double 2.000000e+00, %call6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %mul7, %cond.false ]
  store double %cond, double* %nl, align 8
  %11 = bitcast %struct._GimpVector3* %lnormal to i8*
  %12 = bitcast %struct._GimpVector3* %l to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %lnormal)
  %13 = load double, double* %nl, align 8
  %cmp8 = fcmp oge double %13, 0.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.end.36

if.then.9:                                        ; preds = %cond.end
  %14 = load %struct._GimpVector3*, %struct._GimpVector3** %viewpoint.addr, align 8
  %15 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %v, %struct._GimpVector3* %14, %struct._GimpVector3* %15)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %v)
  call void @gimp_vector3_add(%struct._GimpVector3* %h, %struct._GimpVector3* %lnormal, %struct._GimpVector3* %v)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %h)
  %call10 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %n, %struct._GimpVector3* %h)
  %cmp11 = fcmp ogt double 1.000000e-02, %call10
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %if.then.9
  br label %cond.end.15

cond.false.13:                                    ; preds = %if.then.9
  %call14 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %n, %struct._GimpVector3* %h)
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi double [ 1.000000e-02, %cond.true.12 ], [ %call14, %cond.false.13 ]
  store double %cond16, double* %rv, align 8
  %16 = load double, double* %rv, align 8
  %17 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 4), align 8
  %call17 = call double @pow(double %16, double %17) #2
  store double %call17, double* %rv, align 8
  %18 = load double, double* %nl, align 8
  %19 = load double, double* %rv, align 8
  %mul18 = fmul double %19, %18
  store double %mul18, double* %rv, align 8
  %20 = load %struct._GimpRGB*, %struct._GimpRGB** %light_col.addr, align 8
  %21 = bitcast %struct._GimpRGB* %diffuse_color to i8*
  %22 = bitcast %struct._GimpRGB* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  %23 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %diffuse_color, double %23)
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %24, i32 0, i32 0
  %25 = load double, double* %r, align 8
  %r19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %diffuse_color, i32 0, i32 0
  %26 = load double, double* %r19, align 8
  %mul20 = fmul double %26, %25
  store double %mul20, double* %r19, align 8
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %27, i32 0, i32 1
  %28 = load double, double* %g, align 8
  %g21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %diffuse_color, i32 0, i32 1
  %29 = load double, double* %g21, align 8
  %mul22 = fmul double %29, %28
  store double %mul22, double* %g21, align 8
  %30 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %30, i32 0, i32 2
  %31 = load double, double* %b, align 8
  %b23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %diffuse_color, i32 0, i32 2
  %32 = load double, double* %b23, align 8
  %mul24 = fmul double %32, %31
  store double %mul24, double* %b23, align 8
  %33 = load double, double* %nl, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %diffuse_color, double %33)
  %34 = load %struct._GimpRGB*, %struct._GimpRGB** %light_col.addr, align 8
  %35 = bitcast %struct._GimpRGB* %specular_color to i8*
  %36 = bitcast %struct._GimpRGB* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 32, i32 8, i1 false)
  %37 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 5), align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then.25, label %if.end.35

if.then.25:                                       ; preds = %cond.end.15
  %38 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %r26 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %38, i32 0, i32 0
  %39 = load double, double* %r26, align 8
  %r27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %specular_color, i32 0, i32 0
  %40 = load double, double* %r27, align 8
  %mul28 = fmul double %40, %39
  store double %mul28, double* %r27, align 8
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %g29 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 1
  %42 = load double, double* %g29, align 8
  %g30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %specular_color, i32 0, i32 1
  %43 = load double, double* %g30, align 8
  %mul31 = fmul double %43, %42
  store double %mul31, double* %g30, align 8
  %44 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %b32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %44, i32 0, i32 2
  %45 = load double, double* %b32, align 8
  %b33 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %specular_color, i32 0, i32 2
  %46 = load double, double* %b33, align 8
  %mul34 = fmul double %46, %45
  store double %mul34, double* %b33, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.25, %cond.end.15
  %47 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 3), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %specular_color, double %47)
  %48 = load double, double* %rv, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %specular_color, double %48)
  call void @gimp_rgb_add(%struct._GimpRGB* %diffuse_color, %struct._GimpRGB* %specular_color)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %diffuse_color)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %cond.end
  call void @gimp_rgb_clamp(%struct._GimpRGB* %diffuse_color)
  %49 = bitcast %struct._GimpRGB* %agg.result to i8*
  %50 = bitcast %struct._GimpRGB* %diffuse_color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  ret void
}

declare void @gimp_rgb_add(%struct._GimpRGB*, %struct._GimpRGB*) #1

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #1

; Function Attrs: nounwind uwtable
define void @get_ray_color_ref(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %position) #0 {
entry:
  %position.addr = alloca %struct._GimpVector3*, align 8
  %color_sum = alloca %struct._GimpRGB, align 8
  %color_int = alloca %struct._GimpRGB, align 8
  %light_color = alloca %struct._GimpRGB, align 8
  %color = alloca %struct._GimpRGB, align 8
  %env_color = alloca %struct._GimpRGB, align 8
  %x = alloca i32, align 4
  %f = alloca i32, align 4
  %xf = alloca double, align 8
  %yf = alloca double, align 8
  %normal = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3*, align 8
  %v = alloca %struct._GimpVector3, align 8
  %r = alloca %struct._GimpVector3, align 8
  %k = alloca i32, align 4
  %tmpval = alloca double, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp43 = alloca %struct._GimpRGB, align 8
  %tmp44 = alloca %struct._GimpVector3, align 8
  %tmp52 = alloca %struct._GimpRGB, align 8
  %tmp53 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %position, %struct._GimpVector3** %position.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  call void @pos_to_float(double %1, double %3, double* %xf, double* %yf)
  %4 = load double, double* %xf, align 8
  %call = call double @rint(double %4) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = bitcast %struct._GimpVector3* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load double, double* %xf, align 8
  %call5 = call double @rint(double %8) #5
  %conv6 = fptosi double %call5 to i32
  %idxprom = sext i32 %conv6 to i64
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %9, i64 %idxprom
  %10 = bitcast %struct._GimpVector3* %normal to i8*
  %11 = bitcast %struct._GimpVector3* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @gimp_vector3_normalize(%struct._GimpVector3* %normal)
  %12 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 %idxprom7
  %15 = load double, double* %arrayidx8, align 8
  %cmp9 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color_sum, double 0.000000e+00)
  br label %if.end.54

if.else.12:                                       ; preds = %land.lhs.true, %if.end
  %16 = load double, double* %xf, align 8
  %17 = load double, double* %yf, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp, double %16, double %17, i32* %f)
  %18 = bitcast %struct._GimpRGB* %color to i8*
  %19 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = bitcast %struct._GimpRGB* %color_sum to i8*
  %21 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_sum, double %22)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.12
  %23 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %23, 6
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom15
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx16, i32 0, i32 2
  store %struct._GimpVector3* %direction, %struct._GimpVector3** %p, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom17
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx18, i32 0, i32 5
  %26 = load i32, i32* %active, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %lor.lhs.false.20, label %if.then.25

lor.lhs.false.20:                                 ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom21
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx22, i32 0, i32 0
  %28 = load i32, i32* %type, align 4
  %cmp23 = icmp eq i32 %28, 3
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %lor.lhs.false.20, %for.body
  br label %for.inc

if.else.26:                                       ; preds = %lor.lhs.false.20
  %29 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom27
  %type29 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx28, i32 0, i32 0
  %30 = load i32, i32* %type29, align 4
  %cmp30 = icmp eq i32 %30, 0
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.else.26
  %31 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom33
  %position35 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx34, i32 0, i32 1
  store %struct._GimpVector3* %position35, %struct._GimpVector3** %p, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.else.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  %32 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom38
  %color40 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx39, i32 0, i32 3
  %33 = bitcast %struct._GimpRGB* %color_int to i8*
  %34 = bitcast %struct._GimpRGB* %color40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  %35 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom41
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx42, i32 0, i32 4
  %36 = load double, double* %intensity, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_int, double %36)
  %37 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %38 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp43, %struct._GimpVector3* %37, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %38, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %39)
  %40 = bitcast %struct._GimpRGB* %light_color to i8*
  %41 = bitcast %struct._GimpRGB* %tmp43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.37, %if.then.25
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %v, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %43)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %v)
  call void @compute_reflected_ray(%struct._GimpVector3* sret %tmp44, %struct._GimpVector3* %normal, %struct._GimpVector3* %v)
  %44 = bitcast %struct._GimpVector3* %r to i8*
  %45 = bitcast %struct._GimpVector3* %tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 24, i32 8, i1 false)
  call void @sphere_to_image(%struct._GimpVector3* %r, double* %xf, double* %yf)
  %46 = load i32, i32* @env_width, align 4
  %conv45 = sitofp i32 %46 to double
  %47 = load double, double* %xf, align 8
  %mul = fmul double %conv45, %47
  %call46 = call double @rint(double %mul) #5
  %conv47 = fptosi double %call46 to i32
  %48 = load i32, i32* @env_height, align 4
  %conv48 = sitofp i32 %48 to double
  %49 = load double, double* %yf, align 8
  %mul49 = fmul double %conv48, %49
  %call50 = call double @rint(double %mul49) #5
  %conv51 = fptosi double %call50 to i32
  call void @peek_env_map(%struct._GimpRGB* sret %tmp52, i32 %conv47, i32 %conv51)
  %50 = bitcast %struct._GimpRGB* %env_color to i8*
  %51 = bitcast %struct._GimpRGB* %tmp52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  %52 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  store double %52, double* %tmpval, align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  %53 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @phong_shade(%struct._GimpRGB* sret %tmp53, %struct._GimpVector3* %53, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %r, %struct._GimpRGB* %color, %struct._GimpRGB* %env_color, i32 1)
  %54 = bitcast %struct._GimpRGB* %light_color to i8*
  %55 = bitcast %struct._GimpRGB* %tmp53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  %56 = load double, double* %tmpval, align 8
  store double %56, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  call void @gimp_rgb_add(%struct._GimpRGB* %color_sum, %struct._GimpRGB* %light_color)
  br label %if.end.54

if.end.54:                                        ; preds = %for.end, %if.then.11
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color_sum)
  %57 = bitcast %struct._GimpRGB* %agg.result to i8*
  %58 = bitcast %struct._GimpRGB* %color_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  ret void
}

declare void @gimp_vector3_sub(%struct._GimpVector3*, %struct._GimpVector3*, %struct._GimpVector3*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_reflected_ray(%struct._GimpVector3* noalias sret %agg.result, %struct._GimpVector3* %normal, %struct._GimpVector3* %view) #0 {
entry:
  %normal.addr = alloca %struct._GimpVector3*, align 8
  %view.addr = alloca %struct._GimpVector3*, align 8
  %ref = alloca %struct._GimpVector3, align 8
  %nl = alloca double, align 8
  store %struct._GimpVector3* %normal, %struct._GimpVector3** %normal.addr, align 8
  store %struct._GimpVector3* %view, %struct._GimpVector3** %view.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %view.addr, align 8
  %call = call double @gimp_vector3_inner_product(%struct._GimpVector3* %0, %struct._GimpVector3* %1)
  %mul = fmul double 2.000000e+00, %call
  store double %mul, double* %nl, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %3 = bitcast %struct._GimpVector3* %ref to i8*
  %4 = bitcast %struct._GimpVector3* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  %5 = load double, double* %nl, align 8
  call void @gimp_vector3_mul(%struct._GimpVector3* %ref, double %5)
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %view.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %ref, %struct._GimpVector3* %ref, %struct._GimpVector3* %6)
  %7 = bitcast %struct._GimpVector3* %agg.result to i8*
  %8 = bitcast %struct._GimpVector3* %ref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sphere_to_image(%struct._GimpVector3* %normal, double* %u, double* %v) #0 {
entry:
  %normal.addr = alloca %struct._GimpVector3*, align 8
  %u.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  %tmp = alloca %struct._GimpVector3, align 8
  store %struct._GimpVector3* %normal, %struct._GimpVector3** %normal.addr, align 8
  store double* %u, double** %u.addr, align 8
  store double* %v, double** %v.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %call = call double @gimp_vector3_inner_product(%struct._GimpVector3* @sphere_to_image.secondaxis, %struct._GimpVector3* %0)
  %sub = fsub double -0.000000e+00, %call
  %call1 = call double @acos(double %sub) #2
  store double %call1, double* @sphere_to_image.alpha, align 8
  %1 = load double, double* @sphere_to_image.alpha, align 8
  %div = fdiv double %1, 0x400921FB54442D18
  %2 = load double*, double** %v.addr, align 8
  store double %div, double* %2, align 8
  %3 = load double*, double** %v.addr, align 8
  %4 = load double, double* %3, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load double*, double** %v.addr, align 8
  %6 = load double, double* %5, align 8
  %cmp2 = fcmp oeq double %6, 1.000000e+00
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load double*, double** %u.addr, align 8
  store double 0.000000e+00, double* %7, align 8
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %call3 = call double @gimp_vector3_inner_product(%struct._GimpVector3* @sphere_to_image.firstaxis, %struct._GimpVector3* %8)
  %9 = load double, double* @sphere_to_image.alpha, align 8
  %call4 = call double @sin(double %9) #2
  %div5 = fdiv double %call3, %call4
  store double %div5, double* @sphere_to_image.fac, align 8
  %10 = load double, double* @sphere_to_image.fac, align 8
  %cmp6 = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store double 1.000000e+00, double* @sphere_to_image.fac, align 8
  br label %if.end.11

if.else.8:                                        ; preds = %if.else
  %11 = load double, double* @sphere_to_image.fac, align 8
  %cmp9 = fcmp olt double %11, -1.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else.8
  store double -1.000000e+00, double* @sphere_to_image.fac, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.7
  %12 = load double, double* @sphere_to_image.fac, align 8
  %call12 = call double @acos(double %12) #2
  %div13 = fdiv double %call12, 0x401921FB54442D18
  %13 = load double*, double** %u.addr, align 8
  store double %div13, double* %13, align 8
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp, %struct._GimpVector3* @sphere_to_image.secondaxis, %struct._GimpVector3* @sphere_to_image.firstaxis)
  %14 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpVector3* @sphere_to_image.cross_prod to i8*), i8* %14, i64 24, i32 8, i1 false)
  %15 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %call14 = call double @gimp_vector3_inner_product(%struct._GimpVector3* @sphere_to_image.cross_prod, %struct._GimpVector3* %15)
  %cmp15 = fcmp olt double %call14, 0.000000e+00
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.11
  %16 = load double*, double** %u.addr, align 8
  %17 = load double, double* %16, align 8
  %sub17 = fsub double 1.000000e+00, %17
  %18 = load double*, double** %u.addr, align 8
  store double %sub17, double* %18, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  ret void
}

declare void @peek_env_map(%struct._GimpRGB* sret, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @get_ray_color_no_bilinear(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %position) #0 {
entry:
  %position.addr = alloca %struct._GimpVector3*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color_int = alloca %struct._GimpRGB, align 8
  %color_sum = alloca %struct._GimpRGB, align 8
  %light_color = alloca %struct._GimpRGB, align 8
  %x = alloca i32, align 4
  %xf = alloca double, align 8
  %yf = alloca double, align 8
  %normal = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3*, align 8
  %k = alloca i32, align 4
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp42 = alloca %struct._GimpRGB, align 8
  %tmp49 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %position, %struct._GimpVector3** %position.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  call void @pos_to_float(double %1, double %3, double* %xf, double* %yf)
  %4 = load double, double* %xf, align 8
  %call = call double @rint(double %4) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %cmp = fcmp oeq double %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color_sum, double 0.000000e+00)
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load i32, i32* %x, align 4
  %10 = load double, double* %yf, align 8
  %call3 = call double @rint(double %10) #5
  %conv4 = fptosi double %call3 to i32
  call void @peek(%struct._GimpRGB* sret %tmp, i32 %9, i32 %conv4)
  %11 = bitcast %struct._GimpRGB* %color to i8*
  %12 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 32, i32 8, i1 false)
  %13 = bitcast %struct._GimpRGB* %color_sum to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  %15 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_sum, double %15)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %16, 6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom7
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx8, i32 0, i32 2
  store %struct._GimpVector3* %direction, %struct._GimpVector3** %p, align 8
  %18 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom9
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx10, i32 0, i32 5
  %19 = load i32, i32* %active, align 4
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom12
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx13, i32 0, i32 0
  %21 = load i32, i32* %type, align 4
  %cmp14 = icmp eq i32 %21, 3
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.else.17:                                       ; preds = %lor.lhs.false
  %22 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom18
  %type20 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx19, i32 0, i32 0
  %23 = load i32, i32* %type20, align 4
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.else.17
  %24 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom24
  %position26 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx25, i32 0, i32 1
  store %struct._GimpVector3* %position26, %struct._GimpVector3** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %if.else.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end
  %25 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom28
  %color30 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx29, i32 0, i32 3
  %26 = bitcast %struct._GimpRGB* %color_int to i8*
  %27 = bitcast %struct._GimpRGB* %color30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom31
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx32, i32 0, i32 4
  %29 = load double, double* %intensity, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_int, double %29)
  %30 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp33 = icmp eq i32 %30, 0
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.27
  %31 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp36 = icmp eq i32 %31, -1
  br i1 %cmp36, label %if.then.38, label %if.else.43

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.end.27
  %32 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %33 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %34 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom39
  %type41 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx40, i32 0, i32 0
  %35 = load i32, i32* %type41, align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp42, %struct._GimpVector3* %32, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 4), %struct._GimpVector3* %33, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %35)
  %36 = bitcast %struct._GimpRGB* %light_color to i8*
  %37 = bitcast %struct._GimpRGB* %tmp42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 32, i32 8, i1 false)
  br label %if.end.50

if.else.43:                                       ; preds = %lor.lhs.false.35
  %38 = load i32, i32* %x, align 4
  %idxprom44 = sext i32 %38 to i64
  %39 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx45 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %39, i64 %idxprom44
  %40 = bitcast %struct._GimpVector3* %normal to i8*
  %41 = bitcast %struct._GimpVector3* %arrayidx45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 24, i32 8, i1 false)
  %42 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %43 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %44 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %44 to i64
  %arrayidx47 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom46
  %type48 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx47, i32 0, i32 0
  %45 = load i32, i32* %type48, align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp49, %struct._GimpVector3* %42, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %43, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %45)
  %46 = bitcast %struct._GimpRGB* %light_color to i8*
  %47 = bitcast %struct._GimpRGB* %tmp49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.43, %if.then.38
  call void @gimp_rgb_add(%struct._GimpRGB* %color_sum, %struct._GimpRGB* %light_color)
  br label %for.inc

for.inc:                                          ; preds = %if.end.50, %if.then.16
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.then
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color_sum)
  %49 = bitcast %struct._GimpRGB* %agg.result to i8*
  %50 = bitcast %struct._GimpRGB* %color_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  ret void
}

declare void @peek(%struct._GimpRGB* sret, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @get_ray_color_no_bilinear_ref(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %position) #0 {
entry:
  %position.addr = alloca %struct._GimpVector3*, align 8
  %color_sum = alloca %struct._GimpRGB, align 8
  %color_int = alloca %struct._GimpRGB, align 8
  %light_color = alloca %struct._GimpRGB, align 8
  %color = alloca %struct._GimpRGB, align 8
  %env_color = alloca %struct._GimpRGB, align 8
  %x = alloca i32, align 4
  %xf = alloca double, align 8
  %yf = alloca double, align 8
  %normal = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3*, align 8
  %v = alloca %struct._GimpVector3, align 8
  %r = alloca %struct._GimpVector3, align 8
  %k = alloca i32, align 4
  %tmpval = alloca double, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp47 = alloca %struct._GimpRGB, align 8
  %tmp48 = alloca %struct._GimpVector3, align 8
  %tmp56 = alloca %struct._GimpRGB, align 8
  %tmp57 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %position, %struct._GimpVector3** %position.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  call void @pos_to_float(double %1, double %3, double* %xf, double* %yf)
  %4 = load double, double* %xf, align 8
  %call = call double @rint(double %4) #5
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %x, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = bitcast %struct._GimpVector3* %normal to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %8 = load double, double* %xf, align 8
  %call5 = call double @rint(double %8) #5
  %conv6 = fptosi double %call5 to i32
  %idxprom = sext i32 %conv6 to i64
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** getelementptr inbounds ([3 x %struct._GimpVector3*], [3 x %struct._GimpVector3*]* @vertex_normals, i32 0, i64 1), align 8
  %arrayidx = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %9, i64 %idxprom
  %10 = bitcast %struct._GimpVector3* %normal to i8*
  %11 = bitcast %struct._GimpVector3* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @gimp_vector3_normalize(%struct._GimpVector3* %normal)
  %12 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load double*, double** getelementptr inbounds ([3 x double*], [3 x double*]* @heights, i32 0, i64 1), align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 %idxprom7
  %15 = load double, double* %arrayidx8, align 8
  %cmp9 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp9, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %land.lhs.true
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color_sum, double 0.000000e+00)
  br label %if.end.58

if.else.12:                                       ; preds = %land.lhs.true, %if.end
  %16 = load double, double* %xf, align 8
  %call13 = call double @rint(double %16) #5
  %conv14 = fptosi double %call13 to i32
  %17 = load double, double* %yf, align 8
  %call15 = call double @rint(double %17) #5
  %conv16 = fptosi double %call15 to i32
  call void @peek(%struct._GimpRGB* sret %tmp, i32 %conv14, i32 %conv16)
  %18 = bitcast %struct._GimpRGB* %color to i8*
  %19 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %20 = bitcast %struct._GimpRGB* %color_sum to i8*
  %21 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  %22 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 0), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_sum, double %22)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.12
  %23 = load i32, i32* %k, align 4
  %cmp17 = icmp slt i32 %23, 6
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom19
  %direction = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx20, i32 0, i32 2
  store %struct._GimpVector3* %direction, %struct._GimpVector3** %p, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom21
  %active = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx22, i32 0, i32 5
  %26 = load i32, i32* %active, align 4
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.29

lor.lhs.false.24:                                 ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom25
  %type = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx26, i32 0, i32 0
  %28 = load i32, i32* %type, align 4
  %cmp27 = icmp eq i32 %28, 3
  br i1 %cmp27, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false.24, %for.body
  br label %for.inc

if.else.30:                                       ; preds = %lor.lhs.false.24
  %29 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom31
  %type33 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx32, i32 0, i32 0
  %30 = load i32, i32* %type33, align 4
  %cmp34 = icmp eq i32 %30, 0
  br i1 %cmp34, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.else.30
  %31 = load i32, i32* %k, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom37
  %position39 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx38, i32 0, i32 1
  store %struct._GimpVector3* %position39, %struct._GimpVector3** %p, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.else.30
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  %32 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom42
  %color44 = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx43, i32 0, i32 3
  %33 = bitcast %struct._GimpRGB* %color_int to i8*
  %34 = bitcast %struct._GimpRGB* %color44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  %35 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [6 x %struct.LightSettings], [6 x %struct.LightSettings]* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5), i32 0, i64 %idxprom45
  %intensity = getelementptr inbounds %struct.LightSettings, %struct.LightSettings* %arrayidx46, i32 0, i32 4
  %36 = load double, double* %intensity, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %color_int, double %36)
  %37 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  %38 = load %struct._GimpVector3*, %struct._GimpVector3** %p, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 5, i64 0, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp47, %struct._GimpVector3* %37, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %38, %struct._GimpRGB* %color, %struct._GimpRGB* %color_int, i32 %39)
  %40 = bitcast %struct._GimpRGB* %light_color to i8*
  %41 = bitcast %struct._GimpRGB* %tmp47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 32, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.41, %if.then.29
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %v, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %43)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %v)
  call void @compute_reflected_ray(%struct._GimpVector3* sret %tmp48, %struct._GimpVector3* %normal, %struct._GimpVector3* %v)
  %44 = bitcast %struct._GimpVector3* %r to i8*
  %45 = bitcast %struct._GimpVector3* %tmp48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 24, i32 8, i1 false)
  call void @sphere_to_image(%struct._GimpVector3* %r, double* %xf, double* %yf)
  %46 = load i32, i32* @env_width, align 4
  %conv49 = sitofp i32 %46 to double
  %47 = load double, double* %xf, align 8
  %mul = fmul double %conv49, %47
  %call50 = call double @rint(double %mul) #5
  %conv51 = fptosi double %call50 to i32
  %48 = load i32, i32* @env_height, align 4
  %conv52 = sitofp i32 %48 to double
  %49 = load double, double* %yf, align 8
  %mul53 = fmul double %conv52, %49
  %call54 = call double @rint(double %mul53) #5
  %conv55 = fptosi double %call54 to i32
  call void @peek_env_map(%struct._GimpRGB* sret %tmp56, i32 %conv51, i32 %conv55)
  %50 = bitcast %struct._GimpRGB* %env_color to i8*
  %51 = bitcast %struct._GimpRGB* %tmp56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 32, i32 8, i1 false)
  %52 = load double, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  store double %52, double* %tmpval, align 8
  store double 0.000000e+00, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  %53 = load %struct._GimpVector3*, %struct._GimpVector3** %position.addr, align 8
  call void @phong_shade(%struct._GimpRGB* sret %tmp57, %struct._GimpVector3* %53, %struct._GimpVector3* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 3), %struct._GimpVector3* %normal, %struct._GimpVector3* %r, %struct._GimpRGB* %color, %struct._GimpRGB* %env_color, i32 1)
  %54 = bitcast %struct._GimpRGB* %light_color to i8*
  %55 = bitcast %struct._GimpRGB* %tmp57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 32, i32 8, i1 false)
  %56 = load double, double* %tmpval, align 8
  store double %56, double* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 6, i32 1), align 8
  call void @gimp_rgb_add(%struct._GimpRGB* %color_sum, %struct._GimpRGB* %light_color)
  br label %if.end.58

if.end.58:                                        ; preds = %for.end, %if.then.11
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color_sum)
  %57 = bitcast %struct._GimpRGB* %agg.result to i8*
  %58 = bitcast %struct._GimpRGB* %color_sum to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  ret void
}

declare double @gimp_vector3_length(%struct._GimpVector3*) #1

declare double @gimp_vector3_inner_product(%struct._GimpVector3*, %struct._GimpVector3*) #1

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @acos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
