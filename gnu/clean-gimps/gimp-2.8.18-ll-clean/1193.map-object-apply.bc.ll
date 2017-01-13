; ModuleID = './plug-ins/map-object/map-object-apply.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@mapvals = external global %struct.MapObjectValues, align 8
@get_ray_color = external global void (%struct._GimpRGB*, %struct._GimpVector3*)*, align 8
@imat = global [4 x [4 x double]] zeroinitializer, align 16
@rotmat = global [16 x float] zeroinitializer, align 16
@a = internal global [16 x float] zeroinitializer, align 16
@b = internal global [16 x float] zeroinitializer, align 16
@box_drawables = external global [6 x %struct._GimpDrawable*], align 16
@box_regions = external global [6 x %struct._GimpPixelRgn], align 16
@cylinder_drawables = external global [2 x %struct._GimpDrawable*], align 16
@cylinder_regions = external global [2 x %struct._GimpPixelRgn], align 16
@max_depth = external global i64, align 8
@width = external global i32, align 4
@height = external global i32, align 4
@image_id = external global i32, align 4
@output_drawable = external global %struct._GimpDrawable*, align 8
@.str = private unnamed_addr constant [13 x i8] c"Map to plane\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Map to sphere\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Map to box\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Map to cylinder\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@dest_region = external global %struct._GimpPixelRgn, align 8
@maxcounter = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @init_compute() #0 {
entry:
  %i = alloca i32, align 4
  %tmp = alloca %struct._GimpVector3, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.11
    i32 2, label %sw.bb.32
    i32 3, label %sw.bb.47
  ]

sw.bb:                                            ; preds = %entry
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double 0.000000e+00, double 0.000000e+00, double -1.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %1 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul = fmul double %1, 0x401921FB54442D18
  %div = fdiv double %mul, 3.600000e+02
  %2 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul1 = fmul double %2, 0x401921FB54442D18
  %div2 = fdiv double %mul1, 3.600000e+02
  %3 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul3 = fmul double %3, 0x401921FB54442D18
  %div4 = fdiv double %mul3, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double %div, double %div2, double %div4)
  %4 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul5 = fmul double %4, 0x401921FB54442D18
  %div6 = fdiv double %mul5, 3.600000e+02
  %5 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul7 = fmul double %5, 0x401921FB54442D18
  %div8 = fdiv double %mul7, 3.600000e+02
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul9 = fmul double %6, 0x401921FB54442D18
  %div10 = fdiv double %mul9, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double %div6, double %div8, double %div10)
  call void @compute_bounding_box()
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_sphere, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %7 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul12 = fmul double %7, 0x401921FB54442D18
  %div13 = fdiv double %mul12, 3.600000e+02
  %8 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul14 = fmul double %8, 0x401921FB54442D18
  %div15 = fdiv double %mul14, 3.600000e+02
  %9 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul16 = fmul double %9, 0x401921FB54442D18
  %div17 = fdiv double %mul16, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double %div13, double %div15, double %div17)
  %10 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %mul18 = fmul double %10, 0x401921FB54442D18
  %div19 = fdiv double %mul18, 3.600000e+02
  %11 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %mul20 = fmul double %11, 0x401921FB54442D18
  %div21 = fdiv double %mul20, 3.600000e+02
  %12 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %mul22 = fmul double %12, 0x401921FB54442D18
  %div23 = fdiv double %mul22, 3.600000e+02
  call void @gimp_vector3_rotate(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double %div19, double %div21, double %div23)
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2))
  %13 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3) to i8*), i8* %13, i64 24, i32 8, i1 false)
  %14 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3, i32 2), align 8
  %cmp = fcmp olt double %14, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.11
  call void @gimp_vector3_mul(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), double -1.000000e+00)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.11
  %15 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 0), align 8
  %sub = fsub double -0.000000e+00, %15
  store double %sub, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %16 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 1), align 8
  %sub24 = fsub double -0.000000e+00, %16
  store double %sub24, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %17 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1, i32 2), align 8
  %sub25 = fsub double -0.000000e+00, %17
  store double %sub25, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %18 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 0), align 8
  %sub26 = fsub double -0.000000e+00, %18
  store double %sub26, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %19 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 1), align 8
  %sub27 = fsub double -0.000000e+00, %19
  store double %sub27, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %20 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2, i32 2), align 8
  %sub28 = fsub double -0.000000e+00, %20
  store double %sub28, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %21 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 0), align 8
  %sub29 = fsub double %21, %22
  store double %sub29, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %23 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %24 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 1), align 8
  %sub30 = fsub double %23, %24
  store double %sub30, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %25 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %26 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 2), align 8
  %sub31 = fsub double %25, %26
  store double %sub31, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_plane, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_box, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @ident_mat(float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %27 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %conv = fptrunc double %27 to float
  call void @rotatemat(float %conv, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  %28 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %conv33 = fptrunc double %28 to float
  call void @rotatemat(float %conv33, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  %29 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %conv34 = fptrunc double %29 to float
  call void @rotatemat(float %conv34, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.32
  %30 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %30, 6
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 27), i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4
  %call = call %struct._GimpDrawable* @gimp_drawable_get(i32 %32)
  %33 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom37
  store %struct._GimpDrawable* %call, %struct._GimpDrawable** %arrayidx38, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [6 x %struct._GimpPixelRgn], [6 x %struct._GimpPixelRgn]* @box_regions, i32 0, i64 %idxprom39
  %35 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom41
  %36 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx42, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom43
  %38 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx44, align 8
  %width = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %38, i32 0, i32 1
  %39 = load i32, i32* %width, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [6 x %struct._GimpDrawable*], [6 x %struct._GimpDrawable*]* @box_drawables, i32 0, i64 %idxprom45
  %41 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx46, align 8
  %height = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %41, i32 0, i32 2
  %42 = load i32, i32* %height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %arrayidx40, %struct._GimpDrawable* %36, i32 0, i32 0, i32 %39, i32 %42, i32 0, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_cylinder, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  call void @gimp_vector3_set(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  call void @ident_mat(float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %44 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 19), align 8
  %conv48 = fptrunc double %44 to float
  call void @rotatemat(float %conv48, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  %45 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 20), align 8
  %conv49 = fptrunc double %45 to float
  call void @rotatemat(float %conv49, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  %46 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 21), align 8
  %conv50 = fptrunc double %46 to float
  call void @rotatemat(float %conv50, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0))
  call void @matmul(float* getelementptr inbounds ([16 x float], [16 x float]* @a, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0), float* getelementptr inbounds ([16 x float], [16 x float]* @b, i32 0, i32 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([16 x float]* @rotmat to i8*), i8* bitcast ([16 x float]* @b to i8*), i64 64, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.70, %sw.bb.47
  %47 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %47, 2
  br i1 %cmp52, label %for.body.54, label %for.end.72

for.body.54:                                      ; preds = %for.cond.51
  %48 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %48 to i64
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 28), i32 0, i64 %idxprom55
  %49 = load i32, i32* %arrayidx56, align 4
  %call57 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %49)
  %50 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom58
  store %struct._GimpDrawable* %call57, %struct._GimpDrawable** %arrayidx59, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %51 to i64
  %arrayidx61 = getelementptr inbounds [2 x %struct._GimpPixelRgn], [2 x %struct._GimpPixelRgn]* @cylinder_regions, i32 0, i64 %idxprom60
  %52 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom62
  %53 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx63, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %54 to i64
  %arrayidx65 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom64
  %55 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx65, align 8
  %width66 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %55, i32 0, i32 1
  %56 = load i32, i32* %width66, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %57 to i64
  %arrayidx68 = getelementptr inbounds [2 x %struct._GimpDrawable*], [2 x %struct._GimpDrawable*]* @cylinder_drawables, i32 0, i64 %idxprom67
  %58 = load %struct._GimpDrawable*, %struct._GimpDrawable** %arrayidx68, align 8
  %height69 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %58, i32 0, i32 2
  %59 = load i32, i32* %height69, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* %arrayidx61, %struct._GimpDrawable* %53, i32 0, i32 0, i32 %56, i32 %59, i32 0, i32 0)
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.54
  %60 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %60, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.51

for.end.72:                                       ; preds = %for.cond.51
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.72, %for.end, %if.end, %sw.bb
  %61 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 22), align 8
  %conv73 = fptosi double %61 to i32
  %conv74 = sext i32 %conv73 to i64
  store i64 %conv74, i64* @max_depth, align 8
  ret void
}

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #1

declare void @gimp_vector3_rotate(%struct._GimpVector3*, double, double, double) #1

declare void @compute_bounding_box() #1

declare void @get_ray_color_sphere(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

declare void @gimp_vector3_cross_product(%struct._GimpVector3* sret, %struct._GimpVector3*, %struct._GimpVector3*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gimp_vector3_mul(%struct._GimpVector3*, double) #1

declare void @get_ray_color_plane(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

declare void @get_ray_color_box(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

declare void @ident_mat(float*) #1

declare void @rotatemat(float, %struct._GimpVector3*, float*) #1

declare void @matmul(float*, float*, float*) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @get_ray_color_cylinder(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

; Function Attrs: nounwind uwtable
define void @compute_image() #0 {
entry:
  %xcount = alloca i32, align 4
  %ycount = alloca i32, align 4
  %color = alloca %struct._GimpRGB, align 8
  %progress_counter = alloca i64, align 8
  %p = alloca %struct._GimpVector3, align 8
  %new_image_id = alloca i32, align 4
  %new_layer_id = alloca i32, align 4
  %insert_layer = alloca i32, align 4
  %layername = alloca [5 x i8*], align 16
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp38 = alloca %struct._GimpRGB, align 8
  store i64 0, i64* %progress_counter, align 8
  store i32 -1, i32* %new_image_id, align 4
  store i32 -1, i32* %new_layer_id, align 4
  store i32 0, i32* %insert_layer, align 4
  call void @init_compute()
  %0 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @width, align 4
  %2 = load i32, i32* @height, align 4
  %call = call i32 @gimp_image_new(i32 %1, i32 %2, i32 0)
  store i32 %call, i32* %new_image_id, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @image_id, align 4
  store i32 %3, i32* %new_image_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %new_image_id, align 4
  %call1 = call i32 @gimp_image_undo_group_start(i32 %4)
  %5 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 12), align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false.4
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %bpp = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %8, i32 0, i32 3
  %9 = load i32, i32* %bpp, align 4
  %cmp = icmp ne i32 %9, 4
  br i1 %cmp, label %if.then.6, label %if.end.20

if.then.6:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %arrayinit.begin = getelementptr inbounds [5 x i8*], [5 x i8*]* %layername, i64 0, i64 0
  %call7 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #2
  store i8* %call7, i8** %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #2
  store i8* %call8, i8** %arrayinit.element
  %arrayinit.element9 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #2
  store i8* %call10, i8** %arrayinit.element9
  %arrayinit.element11 = getelementptr inbounds i8*, i8** %arrayinit.element9, i64 1
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #2
  store i8* %call12, i8** %arrayinit.element11
  %arrayinit.element13 = getelementptr inbounds i8*, i8** %arrayinit.element11, i64 1
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #2
  store i8* %call14, i8** %arrayinit.element13
  %10 = load i32, i32* %new_image_id, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 11), align 4
  %tobool15 = icmp ne i32 %11, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %12 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %12, %cond.false ]
  %idxprom = zext i32 %cond to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %layername, i32 0, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %14 = load i32, i32* @width, align 4
  %15 = load i32, i32* @height, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %tobool16 = icmp ne i32 %16, 0
  %cond17 = select i1 %tobool16, i32 1, i32 0
  %call18 = call i32 @gimp_layer_new(i32 %10, i8* %13, i32 %14, i32 %15, i32 %cond17, double 1.000000e+02, i32 0)
  store i32 %call18, i32* %new_layer_id, align 4
  store i32 1, i32* %insert_layer, align 4
  %17 = load i32, i32* %new_layer_id, align 4
  %call19 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %17)
  store %struct._GimpDrawable* %call19, %struct._GimpDrawable** @output_drawable, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %cond.end, %land.lhs.true, %lor.lhs.false.4
  %18 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %19 = load i32, i32* @width, align 4
  %20 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @dest_region, %struct._GimpDrawable* %18, i32 0, i32 0, i32 %19, i32 %20, i32 1, i32 1)
  %21 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 9), align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.26
    i32 3, label %sw.bb.29
  ]

sw.bb:                                            ; preds = %if.end.20
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #2
  %call22 = call i32 @gimp_progress_init(i8* %call21)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.20
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #2
  %call25 = call i32 @gimp_progress_init(i8* %call24)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.20
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #2
  %call28 = call i32 @gimp_progress_init(i8* %call27)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.20
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)) #2
  %call31 = call i32 @gimp_progress_init(i8* %call30)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.20, %sw.bb.29, %sw.bb.26, %sw.bb.23, %sw.bb
  %22 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 10), align 4
  %cmp32 = icmp eq i32 %22, 0
  br i1 %cmp32, label %if.then.33, label %if.else.50

if.then.33:                                       ; preds = %sw.epilog
  store i32 0, i32* %ycount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.then.33
  %23 = load i32, i32* %ycount, align 4
  %24 = load i32, i32* @height, align 4
  %cmp34 = icmp slt i32 %23, %24
  br i1 %cmp34, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %xcount, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body
  %25 = load i32, i32* %xcount, align 4
  %26 = load i32, i32* @width, align 4
  %cmp36 = icmp slt i32 %25, %26
  br i1 %cmp36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.35
  %27 = load i32, i32* %xcount, align 4
  %28 = load i32, i32* %ycount, align 4
  call void @int_to_pos(%struct._GimpVector3* sret %tmp, i32 %27, i32 %28)
  %29 = bitcast %struct._GimpVector3* %p to i8*
  %30 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 24, i32 8, i1 false)
  %31 = load void (%struct._GimpRGB*, %struct._GimpVector3*)*, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  call void %31(%struct._GimpRGB* sret %tmp38, %struct._GimpVector3* %p)
  %32 = bitcast %struct._GimpRGB* %color to i8*
  %33 = bitcast %struct._GimpRGB* %tmp38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  %34 = load i32, i32* %xcount, align 4
  %35 = load i32, i32* %ycount, align 4
  call void @poke(i32 %34, i32 %35, %struct._GimpRGB* %color, i8* null)
  %36 = load i64, i64* %progress_counter, align 8
  %inc = add nsw i64 %36, 1
  store i64 %inc, i64* %progress_counter, align 8
  %37 = load i32, i32* @width, align 4
  %conv = sext i32 %37 to i64
  %rem = srem i64 %36, %conv
  %cmp39 = icmp eq i64 %rem, 0
  br i1 %cmp39, label %if.then.41, label %if.end.45

if.then.41:                                       ; preds = %for.body.37
  %38 = load i64, i64* %progress_counter, align 8
  %conv42 = sitofp i64 %38 to double
  %39 = load i64, i64* @maxcounter, align 8
  %conv43 = sitofp i64 %39 to double
  %div = fdiv double %conv42, %conv43
  %call44 = call i32 @gimp_progress_update(double %div)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.41, %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %40 = load i32, i32* %xcount, align 4
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* %xcount, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %41 = load i32, i32* %ycount, align 4
  %inc48 = add nsw i32 %41, 1
  store i32 %inc48, i32* %ycount, align 4
  br label %for.cond

for.end.49:                                       ; preds = %for.cond
  br label %if.end.54

if.else.50:                                       ; preds = %sw.epilog
  %42 = load i32, i32* @width, align 4
  %sub = sub nsw i32 %42, 1
  %43 = load i32, i32* @height, align 4
  %sub51 = sub nsw i32 %43, 1
  %44 = load i64, i64* @max_depth, align 8
  %conv52 = trunc i64 %44 to i32
  %45 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 23), align 8
  %call53 = call i64 @gimp_adaptive_supersample_area(i32 0, i32 0, i32 %sub, i32 %sub51, i32 %conv52, double %45, void (double, double, %struct._GimpRGB*, i8*)* @render, i8* null, void (i32, i32, %struct._GimpRGB*, i8*)* @poke, i8* null, void (i32, i32, i32, i8*)* @show_progress, i8* null)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %for.end.49
  %call55 = call i32 @gimp_progress_update(double 1.000000e+00)
  %46 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %46)
  %47 = load i32, i32* %insert_layer, align 4
  %tobool56 = icmp ne i32 %47, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %48 = load i32, i32* %new_image_id, align 4
  %49 = load i32, i32* %new_layer_id, align 4
  %call58 = call i32 @gimp_image_insert_layer(i32 %48, i32 %49, i32 -1, i32 0)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  %50 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %50, i32 0, i32 0
  %51 = load i32, i32* %drawable_id, align 4
  %call60 = call i32 @gimp_drawable_merge_shadow(i32 %51, i32 1)
  %52 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id61 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %52, i32 0, i32 0
  %53 = load i32, i32* %drawable_id61, align 4
  %54 = load i32, i32* @width, align 4
  %55 = load i32, i32* @height, align 4
  %call62 = call i32 @gimp_drawable_update(i32 %53, i32 0, i32 0, i32 %54, i32 %55)
  %56 = load i32, i32* %new_image_id, align 4
  %57 = load i32, i32* @image_id, align 4
  %cmp63 = icmp ne i32 %56, %57
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.59
  %58 = load i32, i32* %new_image_id, align 4
  %call66 = call i32 @gimp_display_new(i32 %58)
  %call67 = call i32 @gimp_displays_flush()
  %59 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %59)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.59
  %60 = load i32, i32* %new_image_id, align 4
  %call69 = call i32 @gimp_image_undo_group_end(i32 %60)
  ret void
}

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_image_undo_group_start(i32) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_progress_init(i8*) #1

declare void @int_to_pos(%struct._GimpVector3* sret, i32, i32) #1

declare void @poke(i32, i32, %struct._GimpRGB*, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare i64 @gimp_adaptive_supersample_area(i32, i32, i32, i32, i32, double, void (double, double, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, %struct._GimpRGB*, i8*)*, i8*, void (i32, i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @render(double %x, double %y, %struct._GimpRGB* %col, i8* %data) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %col.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  %pos = alloca %struct._GimpVector3, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpRGB* %col, %struct._GimpRGB** %col.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load i32, i32* @width, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %0, %conv
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 0
  store double %div, double* %x1, align 8
  %2 = load double, double* %y.addr, align 8
  %3 = load i32, i32* @height, align 4
  %conv2 = sitofp i32 %3 to double
  %div3 = fdiv double %2, %conv2
  %y4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 1
  store double %div3, double* %y4, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %pos, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %col.addr, align 8
  %5 = load void (%struct._GimpRGB*, %struct._GimpVector3*)*, void (%struct._GimpRGB*, %struct._GimpVector3*)** @get_ray_color, align 8
  call void %5(%struct._GimpRGB* sret %tmp, %struct._GimpVector3* %pos)
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  %7 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @show_progress(i32 %min, i32 %max, i32 %curr, i8* %data) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %curr.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %curr, i32* %curr.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %curr.addr, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* %max.addr, align 4
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv1
  %call = call i32 @gimp_progress_update(double %div)
  ret void
}

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_display_new(i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

declare i32 @gimp_image_undo_group_end(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
