; ModuleID = './plug-ins/map-object/map-object-shade.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpRGB = type { double, double, double, double }
%struct._GimpVector3 = type { double, double, double }
%struct.MapObjectValues = type { %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpVector3, %struct.LightSettings, %struct.MaterialSettings, %struct.MaterialSettings, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [6 x i32], [2 x i32] }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double }
%struct.MaterialSettings = type { double, double, double, double, double, %struct._GimpRGB }
%struct.FaceIntersectInfo = type { double, double, double, %struct._GimpVector3, %struct._GimpVector3, i32 }

@background = external global %struct._GimpRGB, align 8
@get_ray_color_plane.inside = internal global i32 0, align 4
@get_ray_color_plane.ray = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_plane.spos = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_plane.vx = internal global double 0.000000e+00, align 8
@get_ray_color_plane.vy = internal global double 0.000000e+00, align 8
@mapvals = external global %struct.MapObjectValues, align 8
@get_ray_color_sphere.color2 = internal global %struct._GimpRGB zeroinitializer, align 8
@get_ray_color_sphere.inside = internal global i32 0, align 4
@get_ray_color_sphere.normal = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_sphere.ray = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_sphere.spos1 = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_sphere.spos2 = internal global %struct._GimpVector3 zeroinitializer, align 8
@get_ray_color_sphere.vx = internal global double 0.000000e+00, align 8
@get_ray_color_sphere.vy = internal global double 0.000000e+00, align 8
@bx1 = internal global double 0.000000e+00, align 8
@bx2 = internal global double 0.000000e+00, align 8
@by1 = internal global double 0.000000e+00, align 8
@by2 = internal global double 0.000000e+00, align 8
@rotmat = external global [16 x float], align 16
@get_ray_color = global void (%struct._GimpRGB*, %struct._GimpVector3*)* null, align 8
@plane_intersect.det = internal global double 0.000000e+00, align 8
@plane_intersect.det1 = internal global double 0.000000e+00, align 8
@plane_intersect.det2 = internal global double 0.000000e+00, align 8
@plane_intersect.det3 = internal global double 0.000000e+00, align 8
@plane_intersect.t = internal global double 0.000000e+00, align 8
@imat = external global [4 x [4 x double]], align 16
@sphere_intersect.alpha = internal global double 0.000000e+00, align 8
@sphere_intersect.beta = internal global double 0.000000e+00, align 8
@sphere_intersect.tau = internal global double 0.000000e+00, align 8
@sphere_intersect.s1 = internal global double 0.000000e+00, align 8
@sphere_intersect.s2 = internal global double 0.000000e+00, align 8
@sphere_intersect.tmp = internal global double 0.000000e+00, align 8
@sphere_intersect.t = internal global %struct._GimpVector3 zeroinitializer, align 8
@sphere_to_image.alpha = internal global double 0.000000e+00, align 8
@sphere_to_image.fac = internal global double 0.000000e+00, align 8
@sphere_to_image.cross_prod = internal global %struct._GimpVector3 zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @get_ray_color_plane(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %pos) #0 {
entry:
  %pos.addr = alloca %struct._GimpVector3*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp6 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %pos, %struct._GimpVector3** %pos.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* @get_ray_color_plane.ray, %struct._GimpVector3* %1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0))
  call void @gimp_vector3_normalize(%struct._GimpVector3* @get_ray_color_plane.ray)
  %call = call i32 @plane_intersect(%struct._GimpVector3* @get_ray_color_plane.ray, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* @get_ray_color_plane.spos, double* @get_ray_color_plane.vx, double* @get_ray_color_plane.vy)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %2 = load double, double* @get_ray_color_plane.vx, align 8
  %3 = load double, double* @get_ray_color_plane.vy, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp, double %2, double %3, i32* @get_ray_color_plane.inside)
  %4 = bitcast %struct._GimpRGB* %color to i8*
  %5 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %6 = load double, double* %a, align 8
  %cmp1 = fcmp une double %6, 0.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* @get_ray_color_plane.inside, align 4
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp4 = icmp ne i32 %8, 2
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true.3
  %9 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp6, %struct._GimpVector3* @get_ray_color_plane.spos, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 3), %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %9)
  %10 = bitcast %struct._GimpRGB* %color to i8*
  %11 = bitcast %struct._GimpRGB* %tmp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true.3, %land.lhs.true, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %12 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.end.7
  %a10 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %13 = load double, double* %a10, align 8
  %cmp11 = fcmp olt double %13, 1.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* @background, i32 2)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %land.lhs.true.9, %if.end.7
  %14 = bitcast %struct._GimpRGB* %agg.result to i8*
  %15 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @gimp_vector3_sub(%struct._GimpVector3*, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @gimp_vector3_normalize(%struct._GimpVector3*) #2

; Function Attrs: nounwind uwtable
define internal i32 @plane_intersect(%struct._GimpVector3* %dir, %struct._GimpVector3* %viewp, %struct._GimpVector3* %ipos, double* %u, double* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct._GimpVector3*, align 8
  %viewp.addr = alloca %struct._GimpVector3*, align 8
  %ipos.addr = alloca %struct._GimpVector3*, align 8
  %u.addr = alloca double*, align 8
  %v.addr = alloca double*, align 8
  store %struct._GimpVector3* %dir, %struct._GimpVector3** %dir.addr, align 8
  store %struct._GimpVector3* %viewp, %struct._GimpVector3** %viewp.addr, align 8
  store %struct._GimpVector3* %ipos, %struct._GimpVector3** %ipos.addr, align 8
  store double* %u, double** %u.addr, align 8
  store double* %v, double** %v.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  store double %1, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  store double %3, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 2
  %5 = load double, double* %z, align 8
  store double %5, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %6 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %7 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul = fmul double %6, %7
  %8 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %mul1 = fmul double %mul, %8
  %9 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %10 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %mul2 = fmul double %9, %10
  %11 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul3 = fmul double %mul2, %11
  %add = fadd double %mul1, %mul3
  %12 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %13 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul4 = fmul double %12, %13
  %14 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul5 = fmul double %mul4, %14
  %add6 = fadd double %add, %mul5
  %15 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %16 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul7 = fmul double %15, %16
  %17 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul8 = fmul double %mul7, %17
  %sub = fsub double %add6, %mul8
  %18 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %19 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %mul9 = fmul double %18, %19
  %20 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul10 = fmul double %mul9, %20
  %sub11 = fsub double %sub, %mul10
  %21 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %22 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %mul12 = fmul double %21, %22
  %23 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul13 = fmul double %mul12, %23
  %sub14 = fsub double %sub11, %mul13
  store double %sub14, double* @plane_intersect.det, align 8
  %24 = load double, double* @plane_intersect.det, align 8
  %cmp = fcmp une double %24, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.89

if.then:                                          ; preds = %entry
  %25 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %26 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul15 = fmul double %25, %26
  %27 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %mul16 = fmul double %mul15, %27
  %28 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %29 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %mul17 = fmul double %28, %29
  %30 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %mul18 = fmul double %mul17, %30
  %add19 = fadd double %mul16, %mul18
  %31 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %32 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %mul20 = fmul double %31, %32
  %33 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul21 = fmul double %mul20, %33
  %add22 = fadd double %add19, %mul21
  %34 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %35 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul23 = fmul double %34, %35
  %36 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %mul24 = fmul double %mul23, %36
  %sub25 = fsub double %add22, %mul24
  %37 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %38 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul26 = fmul double %37, %38
  %39 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %mul27 = fmul double %mul26, %39
  %sub28 = fsub double %sub25, %mul27
  %40 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %41 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %mul29 = fmul double %40, %41
  %42 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %mul30 = fmul double %mul29, %42
  %sub31 = fsub double %sub28, %mul30
  store double %sub31, double* @plane_intersect.det1, align 8
  %43 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %44 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %mul32 = fmul double %43, %44
  %45 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %mul33 = fmul double %mul32, %45
  %46 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %47 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %mul34 = fmul double %46, %47
  %48 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul35 = fmul double %mul34, %48
  %add36 = fadd double %mul33, %mul35
  %49 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %50 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul37 = fmul double %49, %50
  %51 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %mul38 = fmul double %mul37, %51
  %add39 = fadd double %add36, %mul38
  %52 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 2), align 8
  %53 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %mul40 = fmul double %52, %53
  %54 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul41 = fmul double %mul40, %54
  %sub42 = fsub double %add39, %mul41
  %55 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 2), align 8
  %56 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %mul43 = fmul double %55, %56
  %57 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %mul44 = fmul double %mul43, %57
  %sub45 = fsub double %sub42, %mul44
  %58 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 2), align 8
  %59 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %mul46 = fmul double %58, %59
  %60 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul47 = fmul double %mul46, %60
  %sub48 = fsub double %sub45, %mul47
  store double %sub48, double* @plane_intersect.det2, align 8
  %61 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %62 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul49 = fmul double %61, %62
  %63 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %mul50 = fmul double %mul49, %63
  %64 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %65 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %mul51 = fmul double %64, %65
  %66 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul52 = fmul double %mul51, %66
  %add53 = fadd double %mul50, %mul52
  %67 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %68 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul54 = fmul double %67, %68
  %69 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul55 = fmul double %mul54, %69
  %add56 = fadd double %add53, %mul55
  %70 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 3), align 8
  %71 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 1), align 8
  %mul57 = fmul double %70, %71
  %72 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 0), align 8
  %mul58 = fmul double %mul57, %72
  %sub59 = fsub double %add56, %mul58
  %73 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 3), align 8
  %74 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 1), align 8
  %mul60 = fmul double %73, %74
  %75 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 0), align 8
  %mul61 = fmul double %mul60, %75
  %sub62 = fsub double %sub59, %mul61
  %76 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 2, i64 3), align 8
  %77 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 0, i64 1), align 8
  %mul63 = fmul double %76, %77
  %78 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @imat, i32 0, i64 1, i64 0), align 8
  %mul64 = fmul double %mul63, %78
  %sub65 = fsub double %sub62, %mul64
  store double %sub65, double* @plane_intersect.det3, align 8
  %79 = load double, double* @plane_intersect.det1, align 8
  %80 = load double, double* @plane_intersect.det, align 8
  %div = fdiv double %79, %80
  store double %div, double* @plane_intersect.t, align 8
  %81 = load double, double* @plane_intersect.t, align 8
  %cmp66 = fcmp ogt double %81, 0.000000e+00
  br i1 %cmp66, label %if.then.67, label %if.end

if.then.67:                                       ; preds = %if.then
  %82 = load double, double* @plane_intersect.det2, align 8
  %83 = load double, double* @plane_intersect.det, align 8
  %div68 = fdiv double %82, %83
  %sub69 = fsub double %div68, 5.000000e-01
  %add70 = fadd double 1.000000e+00, %sub69
  %84 = load double*, double** %u.addr, align 8
  store double %add70, double* %84, align 8
  %85 = load double, double* @plane_intersect.det3, align 8
  %86 = load double, double* @plane_intersect.det, align 8
  %div71 = fdiv double %85, %86
  %sub72 = fsub double %div71, 5.000000e-01
  %add73 = fadd double 1.000000e+00, %sub72
  %87 = load double*, double** %v.addr, align 8
  store double %add73, double* %87, align 8
  %88 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %x74 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %88, i32 0, i32 0
  %89 = load double, double* %x74, align 8
  %90 = load double, double* @plane_intersect.t, align 8
  %91 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %x75 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %91, i32 0, i32 0
  %92 = load double, double* %x75, align 8
  %mul76 = fmul double %90, %92
  %add77 = fadd double %89, %mul76
  %93 = load %struct._GimpVector3*, %struct._GimpVector3** %ipos.addr, align 8
  %x78 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %93, i32 0, i32 0
  store double %add77, double* %x78, align 8
  %94 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %y79 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %94, i32 0, i32 1
  %95 = load double, double* %y79, align 8
  %96 = load double, double* @plane_intersect.t, align 8
  %97 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %y80 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %97, i32 0, i32 1
  %98 = load double, double* %y80, align 8
  %mul81 = fmul double %96, %98
  %add82 = fadd double %95, %mul81
  %99 = load %struct._GimpVector3*, %struct._GimpVector3** %ipos.addr, align 8
  %y83 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %99, i32 0, i32 1
  store double %add82, double* %y83, align 8
  %100 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %z84 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %100, i32 0, i32 2
  %101 = load double, double* %z84, align 8
  %102 = load double, double* @plane_intersect.t, align 8
  %103 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %z85 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %103, i32 0, i32 2
  %104 = load double, double* %z85, align 8
  %mul86 = fmul double %102, %104
  %add87 = fadd double %101, %mul86
  %105 = load %struct._GimpVector3*, %struct._GimpVector3** %ipos.addr, align 8
  %z88 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %105, i32 0, i32 2
  store double %add87, double* %z88, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.89

if.end.89:                                        ; preds = %if.end, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.67
  %106 = load i32, i32* %retval
  ret i32 %106
}

declare void @get_image_color(%struct._GimpRGB* sret, double, double, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @phong_shade(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %pos, %struct._GimpVector3* %viewpoint, %struct._GimpVector3* %normal, %struct._GimpRGB* %diff_col, %struct._GimpRGB* %spec_col, i32 %type) #0 {
entry:
  %pos.addr = alloca %struct._GimpVector3*, align 8
  %viewpoint.addr = alloca %struct._GimpVector3*, align 8
  %normal.addr = alloca %struct._GimpVector3*, align 8
  %diff_col.addr = alloca %struct._GimpRGB*, align 8
  %spec_col.addr = alloca %struct._GimpRGB*, align 8
  %type.addr = alloca i32, align 4
  %ambientcolor = alloca %struct._GimpRGB, align 8
  %diffusecolor = alloca %struct._GimpRGB, align 8
  %specularcolor = alloca %struct._GimpRGB, align 8
  %NL = alloca double, align 8
  %RV = alloca double, align 8
  %dist = alloca double, align 8
  %L = alloca %struct._GimpVector3, align 8
  %NN = alloca %struct._GimpVector3, align 8
  %V = alloca %struct._GimpVector3, align 8
  %N = alloca %struct._GimpVector3, align 8
  %light = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %pos, %struct._GimpVector3** %pos.addr, align 8
  store %struct._GimpVector3* %viewpoint, %struct._GimpVector3** %viewpoint.addr, align 8
  store %struct._GimpVector3* %normal, %struct._GimpVector3** %normal.addr, align 8
  store %struct._GimpRGB* %diff_col, %struct._GimpRGB** %diff_col.addr, align 8
  store %struct._GimpRGB* %spec_col, %struct._GimpRGB** %spec_col.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp = icmp eq i32 %0, 1
  %cond = select i1 %cmp, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 2), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 1)
  store %struct._GimpVector3* %cond, %struct._GimpVector3** %light, align 8
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %2 = bitcast %struct._GimpVector3* %N to i8*
  %3 = bitcast %struct._GimpVector3* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %5 = bitcast %struct._GimpRGB* %ambientcolor to i8*
  %6 = bitcast %struct._GimpRGB* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %7 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 0), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %ambientcolor, double %7)
  %8 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpVector3*, %struct._GimpVector3** %light, align 8
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %L, %struct._GimpVector3* %9, %struct._GimpVector3* %10)
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct._GimpVector3*, %struct._GimpVector3** %light, align 8
  %12 = bitcast %struct._GimpVector3* %L to i8*
  %13 = bitcast %struct._GimpVector3* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call double @gimp_vector3_length(%struct._GimpVector3* %L)
  store double %call, double* %dist, align 8
  %14 = load double, double* %dist, align 8
  %cmp2 = fcmp une double %14, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %15 = load double, double* %dist, align 8
  %div = fdiv double 1.000000e+00, %15
  call void @gimp_vector3_mul(%struct._GimpVector3* %L, double %div)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %call5 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %N, %struct._GimpVector3* %L)
  %mul = fmul double 2.000000e+00, %call5
  store double %mul, double* %NL, align 8
  %16 = load double, double* %NL, align 8
  %cmp6 = fcmp oge double %16, 0.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  %17 = load %struct._GimpVector3*, %struct._GimpVector3** %viewpoint.addr, align 8
  %18 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %V, %struct._GimpVector3* %17, %struct._GimpVector3* %18)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %V)
  %19 = load double, double* %NL, align 8
  call void @gimp_vector3_mul(%struct._GimpVector3* %N, double %19)
  call void @gimp_vector3_sub(%struct._GimpVector3* %NN, %struct._GimpVector3* %N, %struct._GimpVector3* %L)
  %call8 = call double @gimp_vector3_inner_product(%struct._GimpVector3* %NN, %struct._GimpVector3* %V)
  store double %call8, double* %RV, align 8
  %20 = load double, double* %RV, align 8
  %cmp9 = fcmp olt double 0.000000e+00, %20
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %21 = load double, double* %RV, align 8
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 4), align 8
  %call10 = call double @pow(double %21, double %22) #1
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11 = phi double [ %call10, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond11, double* %RV, align 8
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %diff_col.addr, align 8
  %24 = bitcast %struct._GimpRGB* %diffusecolor to i8*
  %25 = bitcast %struct._GimpRGB* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 32, i32 8, i1 false)
  %26 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 2), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %diffusecolor, double %26)
  %27 = load double, double* %NL, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %diffusecolor, double %27)
  %28 = load %struct._GimpRGB*, %struct._GimpRGB** %spec_col.addr, align 8
  %29 = bitcast %struct._GimpRGB* %specularcolor to i8*
  %30 = bitcast %struct._GimpRGB* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false)
  %31 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 3), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %specularcolor, double %31)
  %32 = load double, double* %RV, align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %specularcolor, double %32)
  call void @gimp_rgb_add(%struct._GimpRGB* %diffusecolor, %struct._GimpRGB* %specularcolor)
  %33 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 7, i32 1), align 8
  call void @gimp_rgb_multiply(%struct._GimpRGB* %diffusecolor, double %33)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %diffusecolor)
  call void @gimp_rgb_add(%struct._GimpRGB* %ambientcolor, %struct._GimpRGB* %diffusecolor)
  br label %if.end.12

if.end.12:                                        ; preds = %cond.end, %if.end.4
  %34 = bitcast %struct._GimpRGB* %agg.result to i8*
  %35 = bitcast %struct._GimpRGB* %ambientcolor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 32, i32 8, i1 false)
  ret void
}

declare void @gimp_rgb_clamp(%struct._GimpRGB*) #2

declare void @gimp_rgb_composite(%struct._GimpRGB*, %struct._GimpRGB*, i32) #2

; Function Attrs: nounwind uwtable
define void @get_ray_color_sphere(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %pos) #0 {
entry:
  %pos.addr = alloca %struct._GimpVector3*, align 8
  %color = alloca %struct._GimpRGB, align 8
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp12 = alloca %struct._GimpRGB, align 8
  %tmp13 = alloca %struct._GimpRGB, align 8
  %tmp14 = alloca %struct._GimpRGB, align 8
  %tmp21 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %pos, %struct._GimpVector3** %pos.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %3 = load double, double* @bx1, align 8
  %cmp = fcmp olt double %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 0
  %5 = load double, double* %x1, align 8
  %6 = load double, double* @bx2, align 8
  %cmp2 = fcmp ogt double %5, %6
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %7 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %7, i32 0, i32 1
  %8 = load double, double* %y, align 8
  %9 = load double, double* @by1, align 8
  %cmp4 = fcmp olt double %8, %9
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %y6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 1
  %11 = load double, double* %y6, align 8
  %12 = load double, double* @by2, align 8
  %cmp7 = fcmp ogt double %11, %12
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %13 = bitcast %struct._GimpRGB* %agg.result to i8*
  %14 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %15 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* @get_ray_color_sphere.ray, %struct._GimpVector3* %15, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0))
  call void @gimp_vector3_normalize(%struct._GimpVector3* @get_ray_color_sphere.ray)
  %call = call i32 @sphere_intersect(%struct._GimpVector3* @get_ray_color_sphere.ray, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* @get_ray_color_sphere.spos1, %struct._GimpVector3* @get_ray_color_sphere.spos2)
  %cmp8 = icmp eq i32 %call, 1
  br i1 %cmp8, label %if.then.9, label %if.end.24

if.then.9:                                        ; preds = %if.end
  call void @gimp_vector3_sub(%struct._GimpVector3* @get_ray_color_sphere.normal, %struct._GimpVector3* @get_ray_color_sphere.spos1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  call void @gimp_vector3_normalize(%struct._GimpVector3* @get_ray_color_sphere.normal)
  call void @sphere_to_image(%struct._GimpVector3* @get_ray_color_sphere.normal, double* @get_ray_color_sphere.vx, double* @get_ray_color_sphere.vy)
  %16 = load double, double* @get_ray_color_sphere.vx, align 8
  %17 = load double, double* @get_ray_color_sphere.vy, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp, double %16, double %17, i32* @get_ray_color_sphere.inside)
  %18 = bitcast %struct._GimpRGB* %color to i8*
  %19 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %20 = load double, double* %a, align 8
  %cmp10 = fcmp olt double %20, 1.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then.9
  %21 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp12, %struct._GimpVector3* @get_ray_color_sphere.spos1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* @get_ray_color_sphere.normal, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %21)
  %22 = bitcast %struct._GimpRGB* %color to i8*
  %23 = bitcast %struct._GimpRGB* %tmp12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  call void @gimp_vector3_sub(%struct._GimpVector3* @get_ray_color_sphere.normal, %struct._GimpVector3* @get_ray_color_sphere.spos2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4))
  call void @gimp_vector3_normalize(%struct._GimpVector3* @get_ray_color_sphere.normal)
  call void @sphere_to_image(%struct._GimpVector3* @get_ray_color_sphere.normal, double* @get_ray_color_sphere.vx, double* @get_ray_color_sphere.vy)
  %24 = load double, double* @get_ray_color_sphere.vx, align 8
  %25 = load double, double* @get_ray_color_sphere.vy, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp13, double %24, double %25, i32* @get_ray_color_sphere.inside)
  %26 = bitcast %struct._GimpRGB* %tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* @get_ray_color_sphere.color2 to i8*), i8* %26, i64 32, i32 8, i1 false)
  call void @gimp_vector3_mul(%struct._GimpVector3* @get_ray_color_sphere.normal, double -1.000000e+00)
  %27 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp14, %struct._GimpVector3* @get_ray_color_sphere.spos2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* @get_ray_color_sphere.normal, %struct._GimpRGB* @get_ray_color_sphere.color2, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %27)
  %28 = bitcast %struct._GimpRGB* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpRGB* @get_ray_color_sphere.color2 to i8*), i8* %28, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* @get_ray_color_sphere.color2)
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* @get_ray_color_sphere.color2, i32 1)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.23

if.else:                                          ; preds = %if.then.9
  %a15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %29 = load double, double* %a15, align 8
  %cmp16 = fcmp une double %29, 0.000000e+00
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.else
  %30 = load i32, i32* @get_ray_color_sphere.inside, align 4
  %cmp17 = icmp eq i32 %30, 1
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %31 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp19 = icmp ne i32 %31, 2
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true.18
  %32 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp21, %struct._GimpVector3* @get_ray_color_sphere.spos1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* @get_ray_color_sphere.normal, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %32)
  %33 = bitcast %struct._GimpRGB* %color to i8*
  %34 = bitcast %struct._GimpRGB* %tmp21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true.18, %land.lhs.true, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.11
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end
  %35 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp25 = icmp eq i32 %35, 0
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.30

land.lhs.true.26:                                 ; preds = %if.end.24
  %a27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %36 = load double, double* %a27, align 8
  %cmp28 = fcmp olt double %36, 1.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.26
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* @background, i32 2)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.end.24
  %37 = bitcast %struct._GimpRGB* %agg.result to i8*
  %38 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sphere_intersect(%struct._GimpVector3* %dir, %struct._GimpVector3* %viewp, %struct._GimpVector3* %spos1, %struct._GimpVector3* %spos2) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca %struct._GimpVector3*, align 8
  %viewp.addr = alloca %struct._GimpVector3*, align 8
  %spos1.addr = alloca %struct._GimpVector3*, align 8
  %spos2.addr = alloca %struct._GimpVector3*, align 8
  store %struct._GimpVector3* %dir, %struct._GimpVector3** %dir.addr, align 8
  store %struct._GimpVector3* %viewp, %struct._GimpVector3** %viewp.addr, align 8
  store %struct._GimpVector3* %spos1, %struct._GimpVector3** %spos1.addr, align 8
  store %struct._GimpVector3* %spos2, %struct._GimpVector3** %spos2.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* @sphere_intersect.t, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4), %struct._GimpVector3* %0)
  %1 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %call = call double @gimp_vector3_inner_product(%struct._GimpVector3* %1, %struct._GimpVector3* @sphere_intersect.t)
  store double %call, double* @sphere_intersect.alpha, align 8
  %call1 = call double @gimp_vector3_inner_product(%struct._GimpVector3* @sphere_intersect.t, %struct._GimpVector3* @sphere_intersect.t)
  store double %call1, double* @sphere_intersect.beta, align 8
  %2 = load double, double* @sphere_intersect.alpha, align 8
  %3 = load double, double* @sphere_intersect.alpha, align 8
  %mul = fmul double %2, %3
  %4 = load double, double* @sphere_intersect.beta, align 8
  %sub = fsub double %mul, %4
  %5 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %mul2 = fmul double %5, %6
  %add = fadd double %sub, %mul2
  store double %add, double* @sphere_intersect.tau, align 8
  %7 = load double, double* @sphere_intersect.tau, align 8
  %cmp = fcmp oge double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %8 = load double, double* @sphere_intersect.tau, align 8
  %call3 = call double @sqrt(double %8) #1
  store double %call3, double* @sphere_intersect.tau, align 8
  %9 = load double, double* @sphere_intersect.alpha, align 8
  %10 = load double, double* @sphere_intersect.tau, align 8
  %add4 = fadd double %9, %10
  store double %add4, double* @sphere_intersect.s1, align 8
  %11 = load double, double* @sphere_intersect.alpha, align 8
  %12 = load double, double* @sphere_intersect.tau, align 8
  %sub5 = fsub double %11, %12
  store double %sub5, double* @sphere_intersect.s2, align 8
  %13 = load double, double* @sphere_intersect.s2, align 8
  %14 = load double, double* @sphere_intersect.s1, align 8
  %cmp6 = fcmp olt double %13, %14
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load double, double* @sphere_intersect.s1, align 8
  store double %15, double* @sphere_intersect.tmp, align 8
  %16 = load double, double* @sphere_intersect.s2, align 8
  store double %16, double* @sphere_intersect.s1, align 8
  %17 = load double, double* @sphere_intersect.tmp, align 8
  store double %17, double* @sphere_intersect.s2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %18 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %18, i32 0, i32 0
  %19 = load double, double* %x, align 8
  %20 = load double, double* @sphere_intersect.s1, align 8
  %21 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %21, i32 0, i32 0
  %22 = load double, double* %x8, align 8
  %mul9 = fmul double %20, %22
  %add10 = fadd double %19, %mul9
  %23 = load %struct._GimpVector3*, %struct._GimpVector3** %spos1.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %23, i32 0, i32 0
  store double %add10, double* %x11, align 8
  %24 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %24, i32 0, i32 1
  %25 = load double, double* %y, align 8
  %26 = load double, double* @sphere_intersect.s1, align 8
  %27 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %y12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %27, i32 0, i32 1
  %28 = load double, double* %y12, align 8
  %mul13 = fmul double %26, %28
  %add14 = fadd double %25, %mul13
  %29 = load %struct._GimpVector3*, %struct._GimpVector3** %spos1.addr, align 8
  %y15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %29, i32 0, i32 1
  store double %add14, double* %y15, align 8
  %30 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %30, i32 0, i32 2
  %31 = load double, double* %z, align 8
  %32 = load double, double* @sphere_intersect.s1, align 8
  %33 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %z16 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %33, i32 0, i32 2
  %34 = load double, double* %z16, align 8
  %mul17 = fmul double %32, %34
  %add18 = fadd double %31, %mul17
  %35 = load %struct._GimpVector3*, %struct._GimpVector3** %spos1.addr, align 8
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %35, i32 0, i32 2
  store double %add18, double* %z19, align 8
  %36 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %x20 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %36, i32 0, i32 0
  %37 = load double, double* %x20, align 8
  %38 = load double, double* @sphere_intersect.s2, align 8
  %39 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %x21 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %39, i32 0, i32 0
  %40 = load double, double* %x21, align 8
  %mul22 = fmul double %38, %40
  %add23 = fadd double %37, %mul22
  %41 = load %struct._GimpVector3*, %struct._GimpVector3** %spos2.addr, align 8
  %x24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %41, i32 0, i32 0
  store double %add23, double* %x24, align 8
  %42 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %y25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %42, i32 0, i32 1
  %43 = load double, double* %y25, align 8
  %44 = load double, double* @sphere_intersect.s2, align 8
  %45 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %y26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %45, i32 0, i32 1
  %46 = load double, double* %y26, align 8
  %mul27 = fmul double %44, %46
  %add28 = fadd double %43, %mul27
  %47 = load %struct._GimpVector3*, %struct._GimpVector3** %spos2.addr, align 8
  %y29 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %47, i32 0, i32 1
  store double %add28, double* %y29, align 8
  %48 = load %struct._GimpVector3*, %struct._GimpVector3** %viewp.addr, align 8
  %z30 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %48, i32 0, i32 2
  %49 = load double, double* %z30, align 8
  %50 = load double, double* @sphere_intersect.s2, align 8
  %51 = load %struct._GimpVector3*, %struct._GimpVector3** %dir.addr, align 8
  %z31 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %51, i32 0, i32 2
  %52 = load double, double* %z31, align 8
  %mul32 = fmul double %50, %52
  %add33 = fadd double %49, %mul32
  %53 = load %struct._GimpVector3*, %struct._GimpVector3** %spos2.addr, align 8
  %z34 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %53, i32 0, i32 2
  store double %add33, double* %z34, align 8
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.end
  %54 = load i32, i32* %retval
  ret i32 %54
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
  %call = call double @gimp_vector3_inner_product(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), %struct._GimpVector3* %0)
  %sub = fsub double -0.000000e+00, %call
  %call1 = call double @acos(double %sub) #1
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
  br label %if.end.18

if.else:                                          ; preds = %lor.lhs.false
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %call3 = call double @gimp_vector3_inner_product(%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1), %struct._GimpVector3* %8)
  %9 = load double, double* @sphere_to_image.alpha, align 8
  %call4 = call double @sin(double %9) #1
  %div5 = fdiv double %call3, %call4
  store double %div5, double* @sphere_to_image.fac, align 8
  %10 = load double, double* @sphere_to_image.fac, align 8
  %cmp6 = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end.10

cond.false:                                       ; preds = %if.else
  %11 = load double, double* @sphere_to_image.fac, align 8
  %cmp7 = fcmp olt double %11, -1.000000e+00
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.false
  br label %cond.end

cond.false.9:                                     ; preds = %cond.false
  %12 = load double, double* @sphere_to_image.fac, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.9, %cond.true.8
  %cond = phi double [ -1.000000e+00, %cond.true.8 ], [ %12, %cond.false.9 ]
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.end, %cond.true
  %cond11 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond11, double* @sphere_to_image.fac, align 8
  %13 = load double, double* @sphere_to_image.fac, align 8
  %call12 = call double @acos(double %13) #1
  %div13 = fdiv double %call12, 0x401921FB54442D18
  %14 = load double*, double** %u.addr, align 8
  store double %div13, double* %14, align 8
  call void @gimp_vector3_cross_product(%struct._GimpVector3* sret %tmp, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 2), %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 1))
  %15 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GimpVector3* @sphere_to_image.cross_prod to i8*), i8* %15, i64 24, i32 8, i1 false)
  %16 = load %struct._GimpVector3*, %struct._GimpVector3** %normal.addr, align 8
  %call14 = call double @gimp_vector3_inner_product(%struct._GimpVector3* @sphere_to_image.cross_prod, %struct._GimpVector3* %16)
  %cmp15 = fcmp olt double %call14, 0.000000e+00
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %cond.end.10
  %17 = load double*, double** %u.addr, align 8
  %18 = load double, double* %17, align 8
  %sub17 = fsub double 1.000000e+00, %18
  %19 = load double*, double** %u.addr, align 8
  store double %sub17, double* %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %cond.end.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_vector3_mul(%struct._GimpVector3*, double) #2

; Function Attrs: nounwind uwtable
define void @compute_bounding_box() #0 {
entry:
  %p1 = alloca %struct._GimpVector3, align 8
  %p2 = alloca %struct._GimpVector3, align 8
  %t = alloca double, align 8
  %dir = alloca %struct._GimpVector3, align 8
  %0 = bitcast %struct._GimpVector3* %p1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  %1 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %add = fadd double %1, 1.000000e-02
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %sub = fsub double %2, %add
  store double %sub, double* %x, align 8
  %3 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %add1 = fadd double %3, 1.000000e-02
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %sub2 = fsub double %4, %add1
  store double %sub2, double* %y, align 8
  %5 = bitcast %struct._GimpVector3* %p2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4) to i8*), i64 24, i32 8, i1 false)
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %add3 = fadd double %6, 1.000000e-02
  %x4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  %7 = load double, double* %x4, align 8
  %add5 = fadd double %7, %add3
  store double %add5, double* %x4, align 8
  %8 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 24), align 8
  %add6 = fadd double %8, 1.000000e-02
  %y7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  %9 = load double, double* %y7, align 8
  %add8 = fadd double %9, %add6
  store double %add8, double* %y7, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %dir, %struct._GimpVector3* %p1, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0))
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir)
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %10 = load double, double* %z, align 8
  %cmp = fcmp une double %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 2), align 8
  %mul = fmul double -1.000000e+00, %11
  %z9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %12 = load double, double* %z9, align 8
  %div = fdiv double %mul, %12
  store double %div, double* %t, align 8
  %13 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 0), align 8
  %14 = load double, double* %t, align 8
  %x10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %15 = load double, double* %x10, align 8
  %mul11 = fmul double %14, %15
  %add12 = fadd double %13, %mul11
  %x13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  store double %add12, double* %x13, align 8
  %16 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 1), align 8
  %17 = load double, double* %t, align 8
  %y14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %18 = load double, double* %y14, align 8
  %mul15 = fmul double %17, %18
  %add16 = fadd double %16, %mul15
  %y17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  store double %add16, double* %y17, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gimp_vector3_sub(%struct._GimpVector3* %dir, %struct._GimpVector3* %p2, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0))
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir)
  %z18 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %19 = load double, double* %z18, align 8
  %cmp19 = fcmp une double %19, 0.000000e+00
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end
  %20 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 2), align 8
  %mul21 = fmul double -1.000000e+00, %20
  %z22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %21 = load double, double* %z22, align 8
  %div23 = fdiv double %mul21, %21
  store double %div23, double* %t, align 8
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 0), align 8
  %23 = load double, double* %t, align 8
  %x24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %24 = load double, double* %x24, align 8
  %mul25 = fmul double %23, %24
  %add26 = fadd double %22, %mul25
  %x27 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  store double %add26, double* %x27, align 8
  %25 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0, i32 1), align 8
  %26 = load double, double* %t, align 8
  %y28 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %27 = load double, double* %y28, align 8
  %mul29 = fmul double %26, %27
  %add30 = fadd double %25, %mul29
  %y31 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  store double %add30, double* %y31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.20, %if.end
  %x33 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 0
  %28 = load double, double* %x33, align 8
  store double %28, double* @bx1, align 8
  %y34 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p1, i32 0, i32 1
  %29 = load double, double* %y34, align 8
  store double %29, double* @by1, align 8
  %x35 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 0
  %30 = load double, double* %x35, align 8
  store double %30, double* @bx2, align 8
  %y36 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p2, i32 0, i32 1
  %31 = load double, double* %y36, align 8
  store double %31, double* @by2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @vecmulmat(%struct._GimpVector3* %u, %struct._GimpVector3* %v, float* %m) #0 {
entry:
  %u.addr = alloca %struct._GimpVector3*, align 8
  %v.addr = alloca %struct._GimpVector3*, align 8
  %m.addr = alloca float*, align 8
  %v0 = alloca float, align 4
  %v1 = alloca float, align 4
  %v2 = alloca float, align 4
  store %struct._GimpVector3* %u, %struct._GimpVector3** %u.addr, align 8
  store %struct._GimpVector3* %v, %struct._GimpVector3** %v.addr, align 8
  store float* %m, float** %m.addr, align 8
  %0 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %conv = fptrunc double %1 to float
  store float %conv, float* %v0, align 4
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %conv1 = fptrunc double %3 to float
  store float %conv1, float* %v1, align 4
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %conv2 = fptrunc double %5 to float
  store float %conv2, float* %v2, align 4
  %6 = load float, float* %v0, align 4
  %7 = load float*, float** %m.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx, align 4
  %mul = fmul float %6, %8
  %9 = load float, float* %v1, align 4
  %10 = load float*, float** %m.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %10, i64 1
  %11 = load float, float* %arrayidx3, align 4
  %mul4 = fmul float %9, %11
  %add = fadd float %mul, %mul4
  %12 = load float, float* %v2, align 4
  %13 = load float*, float** %m.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %13, i64 2
  %14 = load float, float* %arrayidx5, align 4
  %mul6 = fmul float %12, %14
  %add7 = fadd float %add, %mul6
  %15 = load float*, float** %m.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %15, i64 3
  %16 = load float, float* %arrayidx8, align 4
  %add9 = fadd float %add7, %16
  %conv10 = fpext float %add9 to double
  %17 = load %struct._GimpVector3*, %struct._GimpVector3** %u.addr, align 8
  %x11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %17, i32 0, i32 0
  store double %conv10, double* %x11, align 8
  %18 = load float, float* %v0, align 4
  %19 = load float*, float** %m.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %19, i64 4
  %20 = load float, float* %arrayidx12, align 4
  %mul13 = fmul float %18, %20
  %21 = load float, float* %v1, align 4
  %22 = load float*, float** %m.addr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %22, i64 5
  %23 = load float, float* %arrayidx14, align 4
  %mul15 = fmul float %21, %23
  %add16 = fadd float %mul13, %mul15
  %24 = load float, float* %v2, align 4
  %25 = load float*, float** %m.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %25, i64 6
  %26 = load float, float* %arrayidx17, align 4
  %mul18 = fmul float %24, %26
  %add19 = fadd float %add16, %mul18
  %27 = load float*, float** %m.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 7
  %28 = load float, float* %arrayidx20, align 4
  %add21 = fadd float %add19, %28
  %conv22 = fpext float %add21 to double
  %29 = load %struct._GimpVector3*, %struct._GimpVector3** %u.addr, align 8
  %y23 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %29, i32 0, i32 1
  store double %conv22, double* %y23, align 8
  %30 = load float, float* %v0, align 4
  %31 = load float*, float** %m.addr, align 8
  %arrayidx24 = getelementptr inbounds float, float* %31, i64 8
  %32 = load float, float* %arrayidx24, align 4
  %mul25 = fmul float %30, %32
  %33 = load float, float* %v1, align 4
  %34 = load float*, float** %m.addr, align 8
  %arrayidx26 = getelementptr inbounds float, float* %34, i64 9
  %35 = load float, float* %arrayidx26, align 4
  %mul27 = fmul float %33, %35
  %add28 = fadd float %mul25, %mul27
  %36 = load float, float* %v2, align 4
  %37 = load float*, float** %m.addr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %37, i64 10
  %38 = load float, float* %arrayidx29, align 4
  %mul30 = fmul float %36, %38
  %add31 = fadd float %add28, %mul30
  %39 = load float*, float** %m.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %39, i64 11
  %40 = load float, float* %arrayidx32, align 4
  %add33 = fadd float %add31, %40
  %conv34 = fpext float %add33 to double
  %41 = load %struct._GimpVector3*, %struct._GimpVector3** %u.addr, align 8
  %z35 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %41, i32 0, i32 2
  store double %conv34, double* %z35, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @rotatemat(float %angle, %struct._GimpVector3* %v, float* %m) #0 {
entry:
  %angle.addr = alloca float, align 4
  %v.addr = alloca %struct._GimpVector3*, align 8
  %m.addr = alloca float*, align 8
  %mag = alloca float, align 4
  %s = alloca float, align 4
  %c = alloca float, align 4
  %xx = alloca float, align 4
  %yy = alloca float, align 4
  %zz = alloca float, align 4
  %xy = alloca float, align 4
  %yz = alloca float, align 4
  %zx = alloca float, align 4
  %xs = alloca float, align 4
  %ys = alloca float, align 4
  %zs = alloca float, align 4
  %one_c = alloca float, align 4
  %IdentityMat = alloca [16 x float], align 16
  %cnt = alloca i32, align 4
  store float %angle, float* %angle.addr, align 4
  store %struct._GimpVector3* %v, %struct._GimpVector3** %v.addr, align 8
  store float* %m, float** %m.addr, align 8
  %0 = load float, float* %angle.addr, align 4
  %conv = fpext float %0 to double
  %mul = fmul double %conv, 0x3F91DF46A2529D39
  %call = call double @sin(double %mul) #1
  %conv1 = fptrunc double %call to float
  store float %conv1, float* %s, align 4
  %1 = load float, float* %angle.addr, align 4
  %conv2 = fpext float %1 to double
  %mul3 = fmul double %conv2, 0x3F91DF46A2529D39
  %call4 = call double @cos(double %mul3) #1
  %conv5 = fptrunc double %call4 to float
  store float %conv5, float* %c, align 4
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %2, i32 0, i32 0
  %3 = load double, double* %x, align 8
  %4 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %4, i32 0, i32 0
  %5 = load double, double* %x6, align 8
  %mul7 = fmul double %3, %5
  %6 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %8, i32 0, i32 1
  %9 = load double, double* %y8, align 8
  %mul9 = fmul double %7, %9
  %add = fadd double %mul7, %mul9
  %10 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %10, i32 0, i32 2
  %11 = load double, double* %z, align 8
  %12 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %12, i32 0, i32 2
  %13 = load double, double* %z10, align 8
  %mul11 = fmul double %11, %13
  %add12 = fadd double %add, %mul11
  %call13 = call double @sqrt(double %add12) #1
  %conv14 = fptrunc double %call13 to float
  store float %conv14, float* %mag, align 4
  %14 = load float, float* %mag, align 4
  %conv15 = fpext float %14 to double
  %cmp = fcmp oeq double %conv15, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %cnt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %cnt, align 4
  %cmp17 = icmp slt i32 %15, 16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %cnt, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %IdentityMat, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds [16 x float], [16 x float]* %IdentityMat, i32 0, i64 0
  store float 1.000000e+00, float* %arrayidx19, align 4
  %arrayidx20 = getelementptr inbounds [16 x float], [16 x float]* %IdentityMat, i32 0, i64 5
  store float 1.000000e+00, float* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [16 x float], [16 x float]* %IdentityMat, i32 0, i64 10
  store float 1.000000e+00, float* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [16 x float], [16 x float]* %IdentityMat, i32 0, i64 15
  store float 1.000000e+00, float* %arrayidx22, align 4
  %18 = load float*, float** %m.addr, align 8
  %19 = bitcast float* %18 to i8*
  %20 = bitcast [16 x float]* %IdentityMat to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 64, i32 4, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %21 = load float, float* %mag, align 4
  %conv23 = fpext float %21 to double
  %22 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %22, i32 0, i32 0
  %23 = load double, double* %x24, align 8
  %div = fdiv double %23, %conv23
  store double %div, double* %x24, align 8
  %24 = load float, float* %mag, align 4
  %conv25 = fpext float %24 to double
  %25 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %25, i32 0, i32 1
  %26 = load double, double* %y26, align 8
  %div27 = fdiv double %26, %conv25
  store double %div27, double* %y26, align 8
  %27 = load float, float* %mag, align 4
  %conv28 = fpext float %27 to double
  %28 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z29 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %28, i32 0, i32 2
  %29 = load double, double* %z29, align 8
  %div30 = fdiv double %29, %conv28
  store double %div30, double* %z29, align 8
  %30 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x31 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %30, i32 0, i32 0
  %31 = load double, double* %x31, align 8
  %32 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x32 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %32, i32 0, i32 0
  %33 = load double, double* %x32, align 8
  %mul33 = fmul double %31, %33
  %conv34 = fptrunc double %mul33 to float
  store float %conv34, float* %xx, align 4
  %34 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y35 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %34, i32 0, i32 1
  %35 = load double, double* %y35, align 8
  %36 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y36 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %36, i32 0, i32 1
  %37 = load double, double* %y36, align 8
  %mul37 = fmul double %35, %37
  %conv38 = fptrunc double %mul37 to float
  store float %conv38, float* %yy, align 4
  %38 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %38, i32 0, i32 2
  %39 = load double, double* %z39, align 8
  %40 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z40 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %40, i32 0, i32 2
  %41 = load double, double* %z40, align 8
  %mul41 = fmul double %39, %41
  %conv42 = fptrunc double %mul41 to float
  store float %conv42, float* %zz, align 4
  %42 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x43 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %42, i32 0, i32 0
  %43 = load double, double* %x43, align 8
  %44 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y44 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %44, i32 0, i32 1
  %45 = load double, double* %y44, align 8
  %mul45 = fmul double %43, %45
  %conv46 = fptrunc double %mul45 to float
  store float %conv46, float* %xy, align 4
  %46 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y47 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %46, i32 0, i32 1
  %47 = load double, double* %y47, align 8
  %48 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z48 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %48, i32 0, i32 2
  %49 = load double, double* %z48, align 8
  %mul49 = fmul double %47, %49
  %conv50 = fptrunc double %mul49 to float
  store float %conv50, float* %yz, align 4
  %50 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z51 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %50, i32 0, i32 2
  %51 = load double, double* %z51, align 8
  %52 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x52 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %52, i32 0, i32 0
  %53 = load double, double* %x52, align 8
  %mul53 = fmul double %51, %53
  %conv54 = fptrunc double %mul53 to float
  store float %conv54, float* %zx, align 4
  %54 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %x55 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %54, i32 0, i32 0
  %55 = load double, double* %x55, align 8
  %56 = load float, float* %s, align 4
  %conv56 = fpext float %56 to double
  %mul57 = fmul double %55, %conv56
  %conv58 = fptrunc double %mul57 to float
  store float %conv58, float* %xs, align 4
  %57 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %y59 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %57, i32 0, i32 1
  %58 = load double, double* %y59, align 8
  %59 = load float, float* %s, align 4
  %conv60 = fpext float %59 to double
  %mul61 = fmul double %58, %conv60
  %conv62 = fptrunc double %mul61 to float
  store float %conv62, float* %ys, align 4
  %60 = load %struct._GimpVector3*, %struct._GimpVector3** %v.addr, align 8
  %z63 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %60, i32 0, i32 2
  %61 = load double, double* %z63, align 8
  %62 = load float, float* %s, align 4
  %conv64 = fpext float %62 to double
  %mul65 = fmul double %61, %conv64
  %conv66 = fptrunc double %mul65 to float
  store float %conv66, float* %zs, align 4
  %63 = load float, float* %c, align 4
  %sub = fsub float 1.000000e+00, %63
  store float %sub, float* %one_c, align 4
  %64 = load float, float* %one_c, align 4
  %65 = load float, float* %xx, align 4
  %mul67 = fmul float %64, %65
  %66 = load float, float* %c, align 4
  %add68 = fadd float %mul67, %66
  %67 = load float*, float** %m.addr, align 8
  %arrayidx69 = getelementptr inbounds float, float* %67, i64 0
  store float %add68, float* %arrayidx69, align 4
  %68 = load float, float* %one_c, align 4
  %69 = load float, float* %xy, align 4
  %mul70 = fmul float %68, %69
  %70 = load float, float* %zs, align 4
  %sub71 = fsub float %mul70, %70
  %71 = load float*, float** %m.addr, align 8
  %arrayidx72 = getelementptr inbounds float, float* %71, i64 4
  store float %sub71, float* %arrayidx72, align 4
  %72 = load float, float* %one_c, align 4
  %73 = load float, float* %zx, align 4
  %mul73 = fmul float %72, %73
  %74 = load float, float* %ys, align 4
  %add74 = fadd float %mul73, %74
  %75 = load float*, float** %m.addr, align 8
  %arrayidx75 = getelementptr inbounds float, float* %75, i64 8
  store float %add74, float* %arrayidx75, align 4
  %76 = load float*, float** %m.addr, align 8
  %arrayidx76 = getelementptr inbounds float, float* %76, i64 12
  store float 0.000000e+00, float* %arrayidx76, align 4
  %77 = load float, float* %one_c, align 4
  %78 = load float, float* %xy, align 4
  %mul77 = fmul float %77, %78
  %79 = load float, float* %zs, align 4
  %add78 = fadd float %mul77, %79
  %80 = load float*, float** %m.addr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %80, i64 1
  store float %add78, float* %arrayidx79, align 4
  %81 = load float, float* %one_c, align 4
  %82 = load float, float* %yy, align 4
  %mul80 = fmul float %81, %82
  %83 = load float, float* %c, align 4
  %add81 = fadd float %mul80, %83
  %84 = load float*, float** %m.addr, align 8
  %arrayidx82 = getelementptr inbounds float, float* %84, i64 5
  store float %add81, float* %arrayidx82, align 4
  %85 = load float, float* %one_c, align 4
  %86 = load float, float* %yz, align 4
  %mul83 = fmul float %85, %86
  %87 = load float, float* %xs, align 4
  %sub84 = fsub float %mul83, %87
  %88 = load float*, float** %m.addr, align 8
  %arrayidx85 = getelementptr inbounds float, float* %88, i64 9
  store float %sub84, float* %arrayidx85, align 4
  %89 = load float*, float** %m.addr, align 8
  %arrayidx86 = getelementptr inbounds float, float* %89, i64 13
  store float 0.000000e+00, float* %arrayidx86, align 4
  %90 = load float, float* %one_c, align 4
  %91 = load float, float* %zx, align 4
  %mul87 = fmul float %90, %91
  %92 = load float, float* %ys, align 4
  %sub88 = fsub float %mul87, %92
  %93 = load float*, float** %m.addr, align 8
  %arrayidx89 = getelementptr inbounds float, float* %93, i64 2
  store float %sub88, float* %arrayidx89, align 4
  %94 = load float, float* %one_c, align 4
  %95 = load float, float* %yz, align 4
  %mul90 = fmul float %94, %95
  %96 = load float, float* %xs, align 4
  %add91 = fadd float %mul90, %96
  %97 = load float*, float** %m.addr, align 8
  %arrayidx92 = getelementptr inbounds float, float* %97, i64 6
  store float %add91, float* %arrayidx92, align 4
  %98 = load float, float* %one_c, align 4
  %99 = load float, float* %zz, align 4
  %mul93 = fmul float %98, %99
  %100 = load float, float* %c, align 4
  %add94 = fadd float %mul93, %100
  %101 = load float*, float** %m.addr, align 8
  %arrayidx95 = getelementptr inbounds float, float* %101, i64 10
  store float %add94, float* %arrayidx95, align 4
  %102 = load float*, float** %m.addr, align 8
  %arrayidx96 = getelementptr inbounds float, float* %102, i64 14
  store float 0.000000e+00, float* %arrayidx96, align 4
  %103 = load float*, float** %m.addr, align 8
  %arrayidx97 = getelementptr inbounds float, float* %103, i64 3
  store float 0.000000e+00, float* %arrayidx97, align 4
  %104 = load float*, float** %m.addr, align 8
  %arrayidx98 = getelementptr inbounds float, float* %104, i64 7
  store float 0.000000e+00, float* %arrayidx98, align 4
  %105 = load float*, float** %m.addr, align 8
  %arrayidx99 = getelementptr inbounds float, float* %105, i64 11
  store float 0.000000e+00, float* %arrayidx99, align 4
  %106 = load float*, float** %m.addr, align 8
  %arrayidx100 = getelementptr inbounds float, float* %106, i64 15
  store float 1.000000e+00, float* %arrayidx100, align 4
  br label %return

return:                                           ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define void @transpose_mat(float* %m) #0 {
entry:
  %m.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca float, align 4
  store float* %m, float** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %3, 4
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %5 = load float*, float** %m.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  store float %6, float* %t, align 4
  %7 = load i32, i32* %i, align 4
  %mul4 = mul nsw i32 %7, 4
  %8 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %mul4, %8
  %idxprom6 = sext i32 %add5 to i64
  %9 = load float*, float** %m.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %11, 4
  %12 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %mul8, %12
  %idxprom10 = sext i32 %add9 to i64
  %13 = load float*, float** %m.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %13, i64 %idxprom10
  store float %10, float* %arrayidx11, align 4
  %14 = load float, float* %t, align 4
  %15 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %15, 4
  %16 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %mul12, %16
  %idxprom14 = sext i32 %add13 to i64
  %17 = load float*, float** %m.addr, align 8
  %arrayidx15 = getelementptr inbounds float, float* %17, i64 %idxprom14
  store float %14, float* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @matmul(float* %a, float* %b, float* %c) #0 {
entry:
  %a.addr = alloca float*, align 8
  %b.addr = alloca float*, align 8
  %c.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %value = alloca float, align 4
  store float* %a, float** %a.addr, align 8
  store float* %b, float** %b.addr, align 8
  store float* %c, float** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.19

for.body.3:                                       ; preds = %for.cond.1
  store float 0.000000e+00, float* %value, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %3, 4
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %5 = load float*, float** %a.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %5, i64 %idxprom
  %6 = load float, float* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %mul7 = mul nsw i32 %7, 4
  %8 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %8
  %idxprom9 = sext i32 %add8 to i64
  %9 = load float*, float** %b.addr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %9, i64 %idxprom9
  %10 = load float, float* %arrayidx10, align 4
  %mul11 = fmul float %6, %10
  %11 = load float, float* %value, align 4
  %add12 = fadd float %11, %mul11
  store float %add12, float* %value, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %13 = load float, float* %value, align 4
  %14 = load i32, i32* %j, align 4
  %mul13 = mul nsw i32 %14, 4
  %15 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %mul13, %15
  %idxprom15 = sext i32 %add14 to i64
  %16 = load float*, float** %c.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %16, i64 %idxprom15
  store float %13, float* %arrayidx16, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.1

for.end.19:                                       ; preds = %for.cond.1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ident_mat(float* %m) #0 {
entry:
  %m.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %m, float** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %cmp4 = icmp eq i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.3
  %4 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %5
  %idxprom = sext i32 %add to i64
  %6 = load float*, float** %m.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %6, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.3
  %7 = load i32, i32* %j, align 4
  %mul5 = mul nsw i32 %7, 4
  %8 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %mul5, %8
  %idxprom7 = sext i32 %add6 to i64
  %9 = load float*, float** %m.addr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %9, i64 %idxprom7
  store float 0.000000e+00, float* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @get_ray_color_box(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %pos) #0 {
entry:
  %pos.addr = alloca %struct._GimpVector3*, align 8
  %lvp = alloca %struct._GimpVector3, align 8
  %ldir = alloca %struct._GimpVector3, align 8
  %vp = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3, align 8
  %dir = alloca %struct._GimpVector3, align 8
  %ns = alloca %struct._GimpVector3, align 8
  %nn = alloca %struct._GimpVector3, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color2 = alloca %struct._GimpRGB, align 8
  %m = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %face_intersect = alloca [2 x %struct.FaceIntersectInfo], align 16
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp47 = alloca %struct._GimpRGB, align 8
  %tmp54 = alloca %struct._GimpRGB, align 8
  %tmp61 = alloca %struct._GimpRGB, align 8
  %tmp75 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %pos, %struct._GimpVector3** %pos.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  %1 = bitcast %struct._GimpVector3* %vp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.MapObjectValues* @mapvals to i8*), i64 24, i32 8, i1 false)
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %3 = bitcast %struct._GimpVector3* %p to i8*
  %4 = bitcast %struct._GimpVector3* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %sub = fsub double %5, %6
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  store double %sub, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %sub2 = fsub double %7, %8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  store double %sub2, double* %y3, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %sub4 = fsub double %9, %10
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  store double %sub4, double* %z5, align 8
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 0
  %11 = load double, double* %x6, align 8
  %12 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %sub7 = fsub double %11, %12
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 0
  store double %sub7, double* %x8, align 8
  %y9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 1
  %13 = load double, double* %y9, align 8
  %14 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %sub10 = fsub double %13, %14
  %y11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  %z12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 2
  %15 = load double, double* %z12, align 8
  %16 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %sub13 = fsub double %15, %16
  %z14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 2
  store double %sub13, double* %z14, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %dir, %struct._GimpVector3* %p, %struct._GimpVector3* %vp)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir)
  %17 = bitcast [16 x float]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([16 x float]* @rotmat to i8*), i64 64, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay)
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %lvp, %struct._GimpVector3* %vp, float* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %ldir, %struct._GimpVector3* %dir, float* %arraydecay16)
  %arrayidx = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %t = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx, i32 0, i32 2
  store double 1.000000e+06, double* %t, align 8
  %arrayidx17 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %t18 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx17, i32 0, i32 2
  store double 1.000000e+06, double* %t18, align 8
  %arraydecay19 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i32 0
  %call = call i32 @intersect_box(%struct._GimpVector3* byval align 8 getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 5), %struct._GimpVector3* byval align 8 %lvp, %struct._GimpVector3* byval align 8 %ldir, %struct.FaceIntersectInfo* %arraydecay19)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else.78

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %18, 2
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx21, i32 0, i32 3
  call void @vecmulmat(%struct._GimpVector3* %ns, %struct._GimpVector3* %s, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom22
  %n = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx23, i32 0, i32 4
  call void @vecmulmat(%struct._GimpVector3* %nn, %struct._GimpVector3* %n, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %x24 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 0
  %21 = load double, double* %x24, align 8
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %add = fadd double %21, %22
  %x25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 0
  store double %add, double* %x25, align 8
  %y26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 1
  %23 = load double, double* %y26, align 8
  %24 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %add27 = fadd double %23, %24
  %y28 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 1
  store double %add27, double* %y28, align 8
  %z29 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 2
  %25 = load double, double* %z29, align 8
  %26 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %add30 = fadd double %25, %26
  %z31 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 2
  store double %add30, double* %z31, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom32
  %s34 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx33, i32 0, i32 3
  %28 = bitcast %struct._GimpVector3* %s34 to i8*
  %29 = bitcast %struct._GimpVector3* %ns to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 8, i1 false)
  %30 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom35
  %n37 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx36, i32 0, i32 4
  %31 = bitcast %struct._GimpVector3* %n37 to i8*
  %32 = bitcast %struct._GimpVector3* %nn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 24, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx38 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %face = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx38, i32 0, i32 5
  %34 = load i32, i32* %face, align 4
  %arrayidx39 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %u = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx39, i32 0, i32 0
  %35 = load double, double* %u, align 8
  %arrayidx40 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %v = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx40, i32 0, i32 1
  %36 = load double, double* %v, align 8
  call void @get_box_image_color(%struct._GimpRGB* sret %tmp, i32 %34, double %35, double %36)
  %37 = bitcast %struct._GimpRGB* %color to i8*
  %38 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %39 = load double, double* %a, align 8
  %cmp41 = fcmp olt double %39, 1.000000e+00
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.end
  %arrayidx43 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %s44 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx43, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %n46 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx45, i32 0, i32 4
  %40 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp47, %struct._GimpVector3* %s44, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n46, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %40)
  %41 = bitcast %struct._GimpRGB* %color to i8*
  %42 = bitcast %struct._GimpRGB* %tmp47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  %arrayidx48 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %face49 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx48, i32 0, i32 5
  %43 = load i32, i32* %face49, align 4
  %arrayidx50 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %u51 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx50, i32 0, i32 0
  %44 = load double, double* %u51, align 8
  %arrayidx52 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %v53 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx52, i32 0, i32 1
  %45 = load double, double* %v53, align 8
  call void @get_box_image_color(%struct._GimpRGB* sret %tmp54, i32 %43, double %44, double %45)
  %46 = bitcast %struct._GimpRGB* %color2 to i8*
  %47 = bitcast %struct._GimpRGB* %tmp54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  %arrayidx55 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %n56 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx55, i32 0, i32 4
  call void @gimp_vector3_mul(%struct._GimpVector3* %n56, double -1.000000e+00)
  %arrayidx57 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %s58 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx57, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %n60 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx59, i32 0, i32 4
  %48 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp61, %struct._GimpVector3* %s58, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n60, %struct._GimpRGB* %color2, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %48)
  %49 = bitcast %struct._GimpRGB* %color2 to i8*
  %50 = bitcast %struct._GimpRGB* %tmp61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color2)
  %51 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp62 = icmp eq i32 %51, 0
  br i1 %cmp62, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.42
  %a63 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 3
  %52 = load double, double* %a63, align 8
  %cmp64 = fcmp olt double %52, 1.000000e+00
  br i1 %cmp64, label %if.then.65, label %if.end

if.then.65:                                       ; preds = %land.lhs.true
  call void @gimp_rgb_composite(%struct._GimpRGB* %color2, %struct._GimpRGB* @background, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.65, %land.lhs.true, %if.then.42
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %color2, i32 1)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.77

if.else:                                          ; preds = %for.end
  %a66 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %53 = load double, double* %a66, align 8
  %cmp67 = fcmp une double %53, 0.000000e+00
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.76

land.lhs.true.68:                                 ; preds = %if.else
  %54 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp69 = icmp ne i32 %54, 2
  br i1 %cmp69, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %land.lhs.true.68
  %arrayidx71 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %s72 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx71, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %n74 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx73, i32 0, i32 4
  %55 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp75, %struct._GimpVector3* %s72, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n74, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %55)
  %56 = bitcast %struct._GimpRGB* %color to i8*
  %57 = bitcast %struct._GimpRGB* %tmp75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.70, %land.lhs.true.68, %if.else
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end
  br label %if.end.82

if.else.78:                                       ; preds = %entry
  %58 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp79 = icmp eq i32 %58, 1
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.else.78
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 0.000000e+00)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.else.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.77
  %59 = bitcast %struct._GimpRGB* %agg.result to i8*
  %60 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_box(%struct._GimpVector3* byval align 8 %scale, %struct._GimpVector3* byval align 8 %viewp, %struct._GimpVector3* byval align 8 %dir, %struct.FaceIntersectInfo* %face_intersect) #0 {
entry:
  %face_intersect.addr = alloca %struct.FaceIntersectInfo*, align 8
  %v = alloca %struct._GimpVector3, align 8
  %d = alloca %struct._GimpVector3, align 8
  %tmp = alloca %struct._GimpVector3, align 8
  %axis = alloca [3 x %struct._GimpVector3], align 16
  %face_tmp = alloca %struct.FaceIntersectInfo, align 8
  %result = alloca i32, align 4
  %m = alloca [16 x float], align 16
  %i = alloca i32, align 4
  store %struct.FaceIntersectInfo* %face_intersect, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  %arrayidx = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 0
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %arrayidx6 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 1
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx6, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %arrayidx7 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 2
  call void @gimp_vector3_set(%struct._GimpVector3* %arrayidx7, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %div = fdiv double %2, 2.000000e+00
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %4, i64 %idxprom
  %call = call i32 @intersect_rect(double %0, double %1, double %div, %struct._GimpVector3* byval align 8 %viewp, %struct._GimpVector3* byval align 8 %dir, %struct.FaceIntersectInfo* %arrayidx8)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %5 to i64
  %6 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %6, i64 %idxprom9
  %face = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx10, i32 0, i32 5
  store i32 0, i32* %face, align 4
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom11 = sext i32 %7 to i64
  %8 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %8, i64 %idxprom11
  %n = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx12, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %x13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %9 = load double, double* %x13, align 8
  %y14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %10 = load double, double* %y14, align 8
  %z15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %11 = load double, double* %z15, align 8
  %sub = fsub double -0.000000e+00, %11
  %div16 = fdiv double %sub, 2.000000e+00
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %13 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %13, i64 %idxprom17
  %call19 = call i32 @intersect_rect(double %9, double %10, double %div16, %struct._GimpVector3* byval align 8 %viewp, %struct._GimpVector3* byval align 8 %dir, %struct.FaceIntersectInfo* %arrayidx18)
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %14 to i64
  %15 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %15, i64 %idxprom22
  %face24 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx23, i32 0, i32 5
  store i32 1, i32* %face24, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %16 to i64
  %17 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %17, i64 %idxprom25
  %u = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx26, i32 0, i32 0
  %18 = load double, double* %u, align 8
  %sub27 = fsub double 1.000000e+00, %18
  %19 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %19 to i64
  %20 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %20, i64 %idxprom28
  %u30 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx29, i32 0, i32 0
  store double %sub27, double* %u30, align 8
  %21 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, i32* %i, align 4
  %idxprom32 = sext i32 %21 to i64
  %22 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %22, i64 %idxprom32
  %n34 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx33, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n34, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.21, %if.end
  %23 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %23, 2
  br i1 %cmp36, label %if.then.37, label %if.end.65

if.then.37:                                       ; preds = %if.end.35
  %arrayidx38 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 0
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @rotatemat(float 9.000000e+01, %struct._GimpVector3* %arrayidx38, float* %arraydecay)
  %arraydecay39 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %v, %struct._GimpVector3* %viewp, float* %arraydecay39)
  %arraydecay40 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %d, %struct._GimpVector3* %dir, float* %arraydecay40)
  %x41 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %24 = load double, double* %x41, align 8
  %z42 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %25 = load double, double* %z42, align 8
  %y43 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %26 = load double, double* %y43, align 8
  %div44 = fdiv double %26, 2.000000e+00
  %27 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %27 to i64
  %28 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %28, i64 %idxprom45
  %call47 = call i32 @intersect_rect(double %24, double %25, double %div44, %struct._GimpVector3* byval align 8 %v, %struct._GimpVector3* byval align 8 %d, %struct.FaceIntersectInfo* %arrayidx46)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %if.then.49, label %if.end.64

if.then.49:                                       ; preds = %if.then.37
  %29 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %29 to i64
  %30 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %30, i64 %idxprom50
  %face52 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx51, i32 0, i32 5
  store i32 2, i32* %face52, align 4
  %arraydecay53 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay53)
  %31 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %31 to i64
  %32 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %32, i64 %idxprom54
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx55, i32 0, i32 3
  %arraydecay56 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %tmp, %struct._GimpVector3* %s, float* %arraydecay56)
  %33 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %33 to i64
  %34 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %34, i64 %idxprom57
  %s59 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx58, i32 0, i32 3
  %35 = bitcast %struct._GimpVector3* %s59 to i8*
  %36 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 24, i32 8, i1 false)
  %37 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %37, 1
  store i32 %inc60, i32* %i, align 4
  %idxprom61 = sext i32 %37 to i64
  %38 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %38, i64 %idxprom61
  %n63 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx62, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n63, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.49, %if.then.37
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.35
  %39 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %39, 2
  br i1 %cmp66, label %if.then.67, label %if.end.105

if.then.67:                                       ; preds = %if.end.65
  %arrayidx68 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 0
  %arraydecay69 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @rotatemat(float 9.000000e+01, %struct._GimpVector3* %arrayidx68, float* %arraydecay69)
  %arraydecay70 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %v, %struct._GimpVector3* %viewp, float* %arraydecay70)
  %arraydecay71 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %d, %struct._GimpVector3* %dir, float* %arraydecay71)
  %x72 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %40 = load double, double* %x72, align 8
  %z73 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %41 = load double, double* %z73, align 8
  %y74 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %42 = load double, double* %y74, align 8
  %sub75 = fsub double -0.000000e+00, %42
  %div76 = fdiv double %sub75, 2.000000e+00
  %43 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %43 to i64
  %44 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %44, i64 %idxprom77
  %call79 = call i32 @intersect_rect(double %40, double %41, double %div76, %struct._GimpVector3* byval align 8 %v, %struct._GimpVector3* byval align 8 %d, %struct.FaceIntersectInfo* %arrayidx78)
  %cmp80 = icmp eq i32 %call79, 1
  br i1 %cmp80, label %if.then.81, label %if.end.104

if.then.81:                                       ; preds = %if.then.67
  %45 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %45 to i64
  %46 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %46, i64 %idxprom82
  %face84 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx83, i32 0, i32 5
  store i32 3, i32* %face84, align 4
  %arraydecay85 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay85)
  %47 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %47 to i64
  %48 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %48, i64 %idxprom86
  %s88 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx87, i32 0, i32 3
  %arraydecay89 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %tmp, %struct._GimpVector3* %s88, float* %arraydecay89)
  %49 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %49 to i64
  %50 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %50, i64 %idxprom90
  %s92 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx91, i32 0, i32 3
  %51 = bitcast %struct._GimpVector3* %s92 to i8*
  %52 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 24, i32 8, i1 false)
  %53 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %53 to i64
  %54 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %54, i64 %idxprom93
  %v95 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx94, i32 0, i32 1
  %55 = load double, double* %v95, align 8
  %sub96 = fsub double 1.000000e+00, %55
  %56 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %56 to i64
  %57 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %57, i64 %idxprom97
  %v99 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx98, i32 0, i32 1
  store double %sub96, double* %v99, align 8
  %58 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %58, 1
  store i32 %inc100, i32* %i, align 4
  %idxprom101 = sext i32 %58 to i64
  %59 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx102 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %59, i64 %idxprom101
  %n103 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx102, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n103, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.81, %if.then.67
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.65
  %60 = load i32, i32* %i, align 4
  %cmp106 = icmp slt i32 %60, 2
  br i1 %cmp106, label %if.then.107, label %if.end.137

if.then.107:                                      ; preds = %if.end.105
  %arrayidx108 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 1
  %arraydecay109 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @rotatemat(float 9.000000e+01, %struct._GimpVector3* %arrayidx108, float* %arraydecay109)
  %arraydecay110 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %v, %struct._GimpVector3* %viewp, float* %arraydecay110)
  %arraydecay111 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %d, %struct._GimpVector3* %dir, float* %arraydecay111)
  %z112 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %61 = load double, double* %z112, align 8
  %y113 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %62 = load double, double* %y113, align 8
  %x114 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %63 = load double, double* %x114, align 8
  %div115 = fdiv double %63, 2.000000e+00
  %64 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %64 to i64
  %65 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %65, i64 %idxprom116
  %call118 = call i32 @intersect_rect(double %61, double %62, double %div115, %struct._GimpVector3* byval align 8 %v, %struct._GimpVector3* byval align 8 %d, %struct.FaceIntersectInfo* %arrayidx117)
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.then.120, label %if.end.136

if.then.120:                                      ; preds = %if.then.107
  %66 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %66 to i64
  %67 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx122 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %67, i64 %idxprom121
  %face123 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx122, i32 0, i32 5
  store i32 4, i32* %face123, align 4
  %arraydecay124 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay124)
  %68 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %68 to i64
  %69 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %69, i64 %idxprom125
  %s127 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx126, i32 0, i32 3
  %arraydecay128 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %tmp, %struct._GimpVector3* %s127, float* %arraydecay128)
  %70 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %70 to i64
  %71 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx130 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %71, i64 %idxprom129
  %s131 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx130, i32 0, i32 3
  %72 = bitcast %struct._GimpVector3* %s131 to i8*
  %73 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 24, i32 8, i1 false)
  %74 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %74, 1
  store i32 %inc132, i32* %i, align 4
  %idxprom133 = sext i32 %74 to i64
  %75 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx134 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %75, i64 %idxprom133
  %n135 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx134, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n135, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.120, %if.then.107
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.105
  %76 = load i32, i32* %i, align 4
  %cmp138 = icmp slt i32 %76, 2
  br i1 %cmp138, label %if.then.139, label %if.end.174

if.then.139:                                      ; preds = %if.end.137
  %arrayidx140 = getelementptr inbounds [3 x %struct._GimpVector3], [3 x %struct._GimpVector3]* %axis, i32 0, i64 1
  %arraydecay141 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @rotatemat(float 9.000000e+01, %struct._GimpVector3* %arrayidx140, float* %arraydecay141)
  %arraydecay142 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %v, %struct._GimpVector3* %viewp, float* %arraydecay142)
  %arraydecay143 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %d, %struct._GimpVector3* %dir, float* %arraydecay143)
  %z144 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 2
  %77 = load double, double* %z144, align 8
  %y145 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 1
  %78 = load double, double* %y145, align 8
  %x146 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %scale, i32 0, i32 0
  %79 = load double, double* %x146, align 8
  %sub147 = fsub double -0.000000e+00, %79
  %div148 = fdiv double %sub147, 2.000000e+00
  %80 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %80 to i64
  %81 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx150 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %81, i64 %idxprom149
  %call151 = call i32 @intersect_rect(double %77, double %78, double %div148, %struct._GimpVector3* byval align 8 %v, %struct._GimpVector3* byval align 8 %d, %struct.FaceIntersectInfo* %arrayidx150)
  %cmp152 = icmp eq i32 %call151, 1
  br i1 %cmp152, label %if.then.153, label %if.end.173

if.then.153:                                      ; preds = %if.then.139
  %82 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %82 to i64
  %83 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %83, i64 %idxprom154
  %face156 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx155, i32 0, i32 5
  store i32 5, i32* %face156, align 4
  %arraydecay157 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay157)
  %84 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %84 to i64
  %85 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx159 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %85, i64 %idxprom158
  %s160 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx159, i32 0, i32 3
  %arraydecay161 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %tmp, %struct._GimpVector3* %s160, float* %arraydecay161)
  %86 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %86 to i64
  %87 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx163 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %87, i64 %idxprom162
  %u164 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx163, i32 0, i32 0
  %88 = load double, double* %u164, align 8
  %sub165 = fsub double 1.000000e+00, %88
  %89 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %89 to i64
  %90 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx167 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %90, i64 %idxprom166
  %u168 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx167, i32 0, i32 0
  store double %sub165, double* %u168, align 8
  %91 = load i32, i32* %i, align 4
  %inc169 = add nsw i32 %91, 1
  store i32 %inc169, i32* %i, align 4
  %idxprom170 = sext i32 %91 to i64
  %92 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx171 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %92, i64 %idxprom170
  %n172 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx171, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n172, double -1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 1, i32* %result, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.153, %if.then.139
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.137
  %93 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx175 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %93, i64 0
  %t = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx175, i32 0, i32 2
  %94 = load double, double* %t, align 8
  %95 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx176 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %95, i64 1
  %t177 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx176, i32 0, i32 2
  %96 = load double, double* %t177, align 8
  %cmp178 = fcmp ogt double %94, %96
  br i1 %cmp178, label %if.then.179, label %if.end.184

if.then.179:                                      ; preds = %if.end.174
  %97 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %97, i64 0
  %98 = bitcast %struct.FaceIntersectInfo* %face_tmp to i8*
  %99 = bitcast %struct.FaceIntersectInfo* %arrayidx180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %98, i8* %99, i64 80, i32 8, i1 false)
  %100 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx181 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %100, i64 0
  %101 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx182 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %101, i64 1
  %102 = bitcast %struct.FaceIntersectInfo* %arrayidx181 to i8*
  %103 = bitcast %struct.FaceIntersectInfo* %arrayidx182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 80, i32 8, i1 false)
  %104 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx183 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %104, i64 1
  %105 = bitcast %struct.FaceIntersectInfo* %arrayidx183 to i8*
  %106 = bitcast %struct.FaceIntersectInfo* %face_tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %105, i8* %106, i64 80, i32 8, i1 false)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.179, %if.end.174
  %107 = load i32, i32* %result, align 4
  ret i32 %107
}

declare void @get_box_image_color(%struct._GimpRGB* sret, i32, double, double) #2

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #2

; Function Attrs: nounwind uwtable
define void @get_ray_color_cylinder(%struct._GimpRGB* noalias sret %agg.result, %struct._GimpVector3* %pos) #0 {
entry:
  %pos.addr = alloca %struct._GimpVector3*, align 8
  %lvp = alloca %struct._GimpVector3, align 8
  %ldir = alloca %struct._GimpVector3, align 8
  %vp = alloca %struct._GimpVector3, align 8
  %p = alloca %struct._GimpVector3, align 8
  %dir = alloca %struct._GimpVector3, align 8
  %ns = alloca %struct._GimpVector3, align 8
  %nn = alloca %struct._GimpVector3, align 8
  %color = alloca %struct._GimpRGB, align 8
  %color2 = alloca %struct._GimpRGB, align 8
  %m = alloca [16 x float], align 16
  %i = alloca i32, align 4
  %face_intersect = alloca [2 x %struct.FaceIntersectInfo], align 16
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp44 = alloca %struct._GimpRGB, align 8
  %tmp51 = alloca %struct._GimpRGB, align 8
  %tmp58 = alloca %struct._GimpRGB, align 8
  %tmp72 = alloca %struct._GimpRGB, align 8
  store %struct._GimpVector3* %pos, %struct._GimpVector3** %pos.addr, align 8
  %0 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct._GimpRGB* @background to i8*), i64 32, i32 8, i1 false)
  %1 = bitcast %struct._GimpVector3* %vp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.MapObjectValues* @mapvals to i8*), i64 24, i32 8, i1 false)
  %2 = load %struct._GimpVector3*, %struct._GimpVector3** %pos.addr, align 8
  %3 = bitcast %struct._GimpVector3* %p to i8*
  %4 = bitcast %struct._GimpVector3* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %6 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %sub = fsub double %5, %6
  %x1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  store double %sub, double* %x1, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %7 = load double, double* %y, align 8
  %8 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %sub2 = fsub double %7, %8
  %y3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  store double %sub2, double* %y3, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %9 = load double, double* %z, align 8
  %10 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %sub4 = fsub double %9, %10
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  store double %sub4, double* %z5, align 8
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 0
  %11 = load double, double* %x6, align 8
  %12 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %sub7 = fsub double %11, %12
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 0
  store double %sub7, double* %x8, align 8
  %y9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 1
  %13 = load double, double* %y9, align 8
  %14 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %sub10 = fsub double %13, %14
  %y11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  %z12 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 2
  %15 = load double, double* %z12, align 8
  %16 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %sub13 = fsub double %15, %16
  %z14 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %p, i32 0, i32 2
  store double %sub13, double* %z14, align 8
  call void @gimp_vector3_sub(%struct._GimpVector3* %dir, %struct._GimpVector3* %p, %struct._GimpVector3* %vp)
  call void @gimp_vector3_normalize(%struct._GimpVector3* %dir)
  %17 = bitcast [16 x float]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([16 x float]* @rotmat to i8*), i64 64, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @transpose_mat(float* %arraydecay)
  %arraydecay15 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %lvp, %struct._GimpVector3* %vp, float* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [16 x float], [16 x float]* %m, i32 0, i32 0
  call void @vecmulmat(%struct._GimpVector3* %ldir, %struct._GimpVector3* %dir, float* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i32 0
  %call = call i32 @intersect_cylinder(%struct._GimpVector3* byval align 8 %lvp, %struct._GimpVector3* byval align 8 %ldir, %struct.FaceIntersectInfo* %arraydecay17)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else.75

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %18, 2
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx, i32 0, i32 3
  call void @vecmulmat(%struct._GimpVector3* %ns, %struct._GimpVector3* %s, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %20 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom19
  %n = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx20, i32 0, i32 4
  call void @vecmulmat(%struct._GimpVector3* %nn, %struct._GimpVector3* %n, float* getelementptr inbounds ([16 x float], [16 x float]* @rotmat, i32 0, i32 0))
  %x21 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 0
  %21 = load double, double* %x21, align 8
  %22 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 0), align 8
  %add = fadd double %21, %22
  %x22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 0
  store double %add, double* %x22, align 8
  %y23 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 1
  %23 = load double, double* %y23, align 8
  %24 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 1), align 8
  %add24 = fadd double %23, %24
  %y25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 1
  store double %add24, double* %y25, align 8
  %z26 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 2
  %25 = load double, double* %z26, align 8
  %26 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 4, i32 2), align 8
  %add27 = fadd double %25, %26
  %z28 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %ns, i32 0, i32 2
  store double %add27, double* %z28, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom29
  %s31 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx30, i32 0, i32 3
  %28 = bitcast %struct._GimpVector3* %s31 to i8*
  %29 = bitcast %struct._GimpVector3* %ns to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 8, i1 false)
  %30 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 %idxprom32
  %n34 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx33, i32 0, i32 4
  %31 = bitcast %struct._GimpVector3* %n34 to i8*
  %32 = bitcast %struct._GimpVector3* %nn to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 24, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx35 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %face = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx35, i32 0, i32 5
  %34 = load i32, i32* %face, align 4
  %arrayidx36 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %u = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx36, i32 0, i32 0
  %35 = load double, double* %u, align 8
  %arrayidx37 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %v = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx37, i32 0, i32 1
  %36 = load double, double* %v, align 8
  call void @get_cylinder_color(%struct._GimpRGB* sret %tmp, i32 %34, double %35, double %36)
  %37 = bitcast %struct._GimpRGB* %color to i8*
  %38 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 32, i32 8, i1 false)
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %39 = load double, double* %a, align 8
  %cmp38 = fcmp olt double %39, 1.000000e+00
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %for.end
  %arrayidx40 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %s41 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx40, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %n43 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx42, i32 0, i32 4
  %40 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp44, %struct._GimpVector3* %s41, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n43, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %40)
  %41 = bitcast %struct._GimpRGB* %color to i8*
  %42 = bitcast %struct._GimpRGB* %tmp44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  %arrayidx45 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %face46 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx45, i32 0, i32 5
  %43 = load i32, i32* %face46, align 4
  %arrayidx47 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %u48 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx47, i32 0, i32 0
  %44 = load double, double* %u48, align 8
  %arrayidx49 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %v50 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx49, i32 0, i32 1
  %45 = load double, double* %v50, align 8
  call void @get_cylinder_color(%struct._GimpRGB* sret %tmp51, i32 %43, double %44, double %45)
  %46 = bitcast %struct._GimpRGB* %color2 to i8*
  %47 = bitcast %struct._GimpRGB* %tmp51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 32, i32 8, i1 false)
  %arrayidx52 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %n53 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx52, i32 0, i32 4
  call void @gimp_vector3_mul(%struct._GimpVector3* %n53, double -1.000000e+00)
  %arrayidx54 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %s55 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx54, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 1
  %n57 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx56, i32 0, i32 4
  %48 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp58, %struct._GimpVector3* %s55, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n57, %struct._GimpRGB* %color2, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %48)
  %49 = bitcast %struct._GimpRGB* %color2 to i8*
  %50 = bitcast %struct._GimpRGB* %tmp58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color2)
  %51 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp59 = icmp eq i32 %51, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.39
  %a60 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color2, i32 0, i32 3
  %52 = load double, double* %a60, align 8
  %cmp61 = fcmp olt double %52, 1.000000e+00
  br i1 %cmp61, label %if.then.62, label %if.end

if.then.62:                                       ; preds = %land.lhs.true
  call void @gimp_rgb_composite(%struct._GimpRGB* %color2, %struct._GimpRGB* @background, i32 2)
  br label %if.end

if.end:                                           ; preds = %if.then.62, %land.lhs.true, %if.then.39
  call void @gimp_rgb_composite(%struct._GimpRGB* %color, %struct._GimpRGB* %color2, i32 1)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.74

if.else:                                          ; preds = %for.end
  %a63 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %53 = load double, double* %a63, align 8
  %cmp64 = fcmp une double %53, 0.000000e+00
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.73

land.lhs.true.65:                                 ; preds = %if.else
  %54 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  %cmp66 = icmp ne i32 %54, 2
  br i1 %cmp66, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %land.lhs.true.65
  %arrayidx68 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %s69 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx68, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [2 x %struct.FaceIntersectInfo], [2 x %struct.FaceIntersectInfo]* %face_intersect, i32 0, i64 0
  %n71 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx70, i32 0, i32 4
  %55 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 0), align 4
  call void @phong_shade(%struct._GimpRGB* sret %tmp72, %struct._GimpVector3* %s69, %struct._GimpVector3* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 0), %struct._GimpVector3* %n71, %struct._GimpRGB* %color, %struct._GimpRGB* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 6, i32 3), i32 %55)
  %56 = bitcast %struct._GimpRGB* %color to i8*
  %57 = bitcast %struct._GimpRGB* %tmp72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  call void @gimp_rgb_clamp(%struct._GimpRGB* %color)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.67, %land.lhs.true.65, %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end
  br label %if.end.79

if.else.75:                                       ; preds = %entry
  %58 = load i32, i32* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 13), align 4
  %cmp76 = icmp eq i32 %58, 1
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else.75
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %color, double 0.000000e+00)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.else.75
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.74
  %59 = bitcast %struct._GimpRGB* %agg.result to i8*
  %60 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @intersect_cylinder(%struct._GimpVector3* byval align 8 %vp, %struct._GimpVector3* byval align 8 %dir, %struct.FaceIntersectInfo* %face_intersect) #0 {
entry:
  %face_intersect.addr = alloca %struct.FaceIntersectInfo*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %f = alloca double, align 8
  %tmp = alloca double, align 8
  %l = alloca double, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.FaceIntersectInfo* %face_intersect, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  store i32 0, i32* %result, align 4
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %1 = load double, double* %x4, align 8
  %mul = fmul double %0, %1
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %z5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %3 = load double, double* %z5, align 8
  %mul6 = fmul double %2, %3
  %add = fadd double %mul, %mul6
  store double %add, double* %a, align 8
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %4 = load double, double* %x7, align 8
  %x8 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %5 = load double, double* %x8, align 8
  %mul9 = fmul double %4, %5
  %z10 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %6 = load double, double* %z10, align 8
  %z11 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %7 = load double, double* %z11, align 8
  %mul12 = fmul double %6, %7
  %add13 = fadd double %mul9, %mul12
  %mul14 = fmul double 2.000000e+00, %add13
  store double %mul14, double* %b, align 8
  %x15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %8 = load double, double* %x15, align 8
  %x16 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %9 = load double, double* %x16, align 8
  %mul17 = fmul double %8, %9
  %z18 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %10 = load double, double* %z18, align 8
  %z19 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %11 = load double, double* %z19, align 8
  %mul20 = fmul double %10, %11
  %add21 = fadd double %mul17, %mul20
  %12 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %13 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %mul22 = fmul double %12, %13
  %sub = fsub double %add21, %mul22
  store double %sub, double* %c, align 8
  %14 = load double, double* %b, align 8
  %15 = load double, double* %b, align 8
  %mul23 = fmul double %14, %15
  %16 = load double, double* %a, align 8
  %mul24 = fmul double 4.000000e+00, %16
  %17 = load double, double* %c, align 8
  %mul25 = fmul double %mul24, %17
  %sub26 = fsub double %mul23, %mul25
  store double %sub26, double* %d, align 8
  %18 = load double, double* %d, align 8
  %cmp = fcmp oge double %18, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.173

if.then:                                          ; preds = %entry
  %19 = load double, double* %d, align 8
  %call = call double @sqrt(double %19) #1
  store double %call, double* %e, align 8
  %20 = load double, double* %a, align 8
  %mul27 = fmul double 2.000000e+00, %20
  store double %mul27, double* %f, align 8
  %21 = load double, double* %f, align 8
  %cmp28 = fcmp une double %21, 0.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.end.172

if.then.29:                                       ; preds = %if.then
  store i32 1, i32* %result, align 4
  %22 = load double, double* %b, align 8
  %sub30 = fsub double -0.000000e+00, %22
  %23 = load double, double* %e, align 8
  %add31 = fadd double %sub30, %23
  %24 = load double, double* %f, align 8
  %div = fdiv double %add31, %24
  %25 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %25, i64 0
  %t = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx, i32 0, i32 2
  store double %div, double* %t, align 8
  %26 = load double, double* %b, align 8
  %sub32 = fsub double -0.000000e+00, %26
  %27 = load double, double* %e, align 8
  %sub33 = fsub double %sub32, %27
  %28 = load double, double* %f, align 8
  %div34 = fdiv double %sub33, %28
  %29 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %29, i64 1
  %t36 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx35, i32 0, i32 2
  store double %div34, double* %t36, align 8
  %30 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %30, i64 0
  %t38 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx37, i32 0, i32 2
  %31 = load double, double* %t38, align 8
  %32 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %32, i64 1
  %t40 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx39, i32 0, i32 2
  %33 = load double, double* %t40, align 8
  %cmp41 = fcmp ogt double %31, %33
  br i1 %cmp41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then.29
  %34 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx43 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %34, i64 0
  %t44 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx43, i32 0, i32 2
  %35 = load double, double* %t44, align 8
  store double %35, double* %tmp, align 8
  %36 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %36, i64 1
  %t46 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx45, i32 0, i32 2
  %37 = load double, double* %t46, align 8
  %38 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %38, i64 0
  %t48 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx47, i32 0, i32 2
  store double %37, double* %t48, align 8
  %39 = load double, double* %tmp, align 8
  %40 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %40, i64 1
  %t50 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx49, i32 0, i32 2
  store double %39, double* %t50, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then.29
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %41 = load i32, i32* %i, align 4
  %cmp51 = icmp slt i32 %41, 2
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x52 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %42 = load double, double* %x52, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %44, i64 %idxprom
  %t54 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx53, i32 0, i32 2
  %45 = load double, double* %t54, align 8
  %x55 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %46 = load double, double* %x55, align 8
  %mul56 = fmul double %45, %46
  %add57 = fadd double %42, %mul56
  %47 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %47 to i64
  %48 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %48, i64 %idxprom58
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx59, i32 0, i32 3
  %x60 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 0
  store double %add57, double* %x60, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %49 = load double, double* %y, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %50 to i64
  %51 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %51, i64 %idxprom61
  %t63 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx62, i32 0, i32 2
  %52 = load double, double* %t63, align 8
  %y64 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %53 = load double, double* %y64, align 8
  %mul65 = fmul double %52, %53
  %add66 = fadd double %49, %mul65
  %54 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %54 to i64
  %55 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %55, i64 %idxprom67
  %s69 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx68, i32 0, i32 3
  %y70 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s69, i32 0, i32 1
  store double %add66, double* %y70, align 8
  %z71 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %56 = load double, double* %z71, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %57 to i64
  %58 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %58, i64 %idxprom72
  %t74 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx73, i32 0, i32 2
  %59 = load double, double* %t74, align 8
  %z75 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %60 = load double, double* %z75, align 8
  %mul76 = fmul double %59, %60
  %add77 = fadd double %56, %mul76
  %61 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %61 to i64
  %62 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %62, i64 %idxprom78
  %s80 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx79, i32 0, i32 3
  %z81 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s80, i32 0, i32 2
  store double %add77, double* %z81, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %63 to i64
  %64 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %64, i64 %idxprom82
  %n = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx83, i32 0, i32 4
  %65 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %65 to i64
  %66 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %66, i64 %idxprom84
  %s86 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx85, i32 0, i32 3
  %67 = bitcast %struct._GimpVector3* %n to i8*
  %68 = bitcast %struct._GimpVector3* %s86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 24, i32 8, i1 false)
  %69 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %69 to i64
  %70 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx88 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %70, i64 %idxprom87
  %n89 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx88, i32 0, i32 4
  %y90 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %n89, i32 0, i32 1
  store double 0.000000e+00, double* %y90, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx92 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %72, i64 %idxprom91
  %n93 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx92, i32 0, i32 4
  call void @gimp_vector3_normalize(%struct._GimpVector3* %n93)
  %73 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  %div94 = fdiv double %73, 2.000000e+00
  store double %div94, double* %l, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %74 to i64
  %75 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %75, i64 %idxprom95
  %s97 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx96, i32 0, i32 3
  %x98 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s97, i32 0, i32 0
  %76 = load double, double* %x98, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %77 to i64
  %78 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %78, i64 %idxprom99
  %s101 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx100, i32 0, i32 3
  %z102 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s101, i32 0, i32 2
  %79 = load double, double* %z102, align 8
  %call103 = call double @atan2(double %76, double %79) #1
  %add104 = fadd double %call103, 0x400921FB54442D18
  %div105 = fdiv double %add104, 0x401921FB54442D18
  %80 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %80 to i64
  %81 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %81, i64 %idxprom106
  %u = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx107, i32 0, i32 0
  store double %div105, double* %u, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %82 to i64
  %83 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx109 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %83, i64 %idxprom108
  %s110 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx109, i32 0, i32 3
  %y111 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s110, i32 0, i32 1
  %84 = load double, double* %y111, align 8
  %85 = load double, double* %l, align 8
  %add112 = fadd double %84, %85
  %86 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 26), align 8
  %div113 = fdiv double %add112, %86
  %87 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %87 to i64
  %88 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %88, i64 %idxprom114
  %v = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx115, i32 0, i32 1
  store double %div113, double* %v, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %89 to i64
  %90 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %90, i64 %idxprom116
  %face = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx117, i32 0, i32 5
  store i32 0, i32* %face, align 4
  %91 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %91 to i64
  %92 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %92, i64 %idxprom118
  %s120 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx119, i32 0, i32 3
  %y121 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s120, i32 0, i32 1
  %93 = load double, double* %y121, align 8
  %94 = load double, double* %l, align 8
  %cmp122 = fcmp ogt double %93, %94
  br i1 %cmp122, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %95 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %95 to i64
  %96 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %96, i64 %idxprom123
  %s125 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx124, i32 0, i32 3
  %y126 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s125, i32 0, i32 1
  %97 = load double, double* %y126, align 8
  %98 = load double, double* %l, align 8
  %sub127 = fsub double -0.000000e+00, %98
  %cmp128 = fcmp olt double %97, %sub127
  br i1 %cmp128, label %if.then.129, label %if.end.171

if.then.129:                                      ; preds = %lor.lhs.false, %for.body
  %99 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %99 to i64
  %100 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %100, i64 %idxprom130
  %s132 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx131, i32 0, i32 3
  %y133 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s132, i32 0, i32 1
  %101 = load double, double* %y133, align 8
  %102 = load double, double* %l, align 8
  %cmp134 = fcmp ogt double %101, %102
  br i1 %cmp134, label %if.then.135, label %if.else.155

if.then.135:                                      ; preds = %if.then.129
  %103 = load double, double* %l, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %104 to i64
  %105 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %105, i64 %idxprom136
  %call138 = call i32 @intersect_circle(%struct._GimpVector3* byval align 8 %vp, %struct._GimpVector3* byval align 8 %dir, double %103, %struct.FaceIntersectInfo* %arrayidx137)
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.then.140, label %if.else

if.then.140:                                      ; preds = %if.then.135
  store i32 0, i32* %result, align 4
  br label %if.end.154

if.else:                                          ; preds = %if.then.135
  %106 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %106 to i64
  %107 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx142 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %107, i64 %idxprom141
  %face143 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx142, i32 0, i32 5
  store i32 2, i32* %face143, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %108 to i64
  %109 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %109, i64 %idxprom144
  %v146 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx145, i32 0, i32 1
  %110 = load double, double* %v146, align 8
  %sub147 = fsub double 1.000000e+00, %110
  %111 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %111 to i64
  %112 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx149 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %112, i64 %idxprom148
  %v150 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx149, i32 0, i32 1
  store double %sub147, double* %v150, align 8
  %113 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %113 to i64
  %114 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %114, i64 %idxprom151
  %n153 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx152, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n153, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else, %if.then.140
  br label %if.end.170

if.else.155:                                      ; preds = %if.then.129
  %115 = load double, double* %l, align 8
  %sub156 = fsub double -0.000000e+00, %115
  %116 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %116 to i64
  %117 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx158 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %117, i64 %idxprom157
  %call159 = call i32 @intersect_circle(%struct._GimpVector3* byval align 8 %vp, %struct._GimpVector3* byval align 8 %dir, double %sub156, %struct.FaceIntersectInfo* %arrayidx158)
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then.161, label %if.else.162

if.then.161:                                      ; preds = %if.else.155
  store i32 0, i32* %result, align 4
  br label %if.end.169

if.else.162:                                      ; preds = %if.else.155
  %118 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %118 to i64
  %119 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx164 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %119, i64 %idxprom163
  %face165 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx164, i32 0, i32 5
  store i32 1, i32* %face165, align 4
  %120 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %120 to i64
  %121 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_intersect.addr, align 8
  %arrayidx167 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %121, i64 %idxprom166
  %n168 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %arrayidx167, i32 0, i32 4
  call void @gimp_vector3_set(%struct._GimpVector3* %n168, double 0.000000e+00, double -1.000000e+00, double 0.000000e+00)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.162, %if.then.161
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.154
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.171
  %122 = load i32, i32* %i, align 4
  %inc = add nsw i32 %122, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.172

if.end.172:                                       ; preds = %for.end, %if.then
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %entry
  %123 = load i32, i32* %result, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal void @get_cylinder_color(%struct._GimpRGB* noalias sret %agg.result, i32 %face, double %u, double %v) #0 {
entry:
  %face.addr = alloca i32, align 4
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %color = alloca %struct._GimpRGB, align 8
  %inside = alloca i32, align 4
  %tmp = alloca %struct._GimpRGB, align 8
  %tmp1 = alloca %struct._GimpRGB, align 8
  store i32 %face, i32* %face.addr, align 4
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  %0 = load i32, i32* %face.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %u.addr, align 8
  %2 = load double, double* %v.addr, align 8
  call void @get_image_color(%struct._GimpRGB* sret %tmp, double %1, double %2, i32* %inside)
  %3 = bitcast %struct._GimpRGB* %color to i8*
  %4 = bitcast %struct._GimpRGB* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %face.addr, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load double, double* %u.addr, align 8
  %7 = load double, double* %v.addr, align 8
  call void @get_cylinder_image_color(%struct._GimpRGB* sret %tmp1, i32 %sub, double %6, double %7)
  %8 = bitcast %struct._GimpRGB* %color to i8*
  %9 = bitcast %struct._GimpRGB* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = bitcast %struct._GimpRGB* %agg.result to i8*
  %11 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  ret void
}

declare void @gimp_rgb_multiply(%struct._GimpRGB*, double) #2

declare double @gimp_vector3_length(%struct._GimpVector3*) #2

declare double @gimp_vector3_inner_product(%struct._GimpVector3*, %struct._GimpVector3*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @gimp_rgb_add(%struct._GimpRGB*, %struct._GimpRGB*) #2

; Function Attrs: nounwind
declare double @acos(double) #3

declare void @gimp_vector3_cross_product(%struct._GimpVector3* sret, %struct._GimpVector3*, %struct._GimpVector3*) #2

declare void @gimp_vector3_set(%struct._GimpVector3*, double, double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @intersect_rect(double %u, double %v, double %w, %struct._GimpVector3* byval align 8 %viewp, %struct._GimpVector3* byval align 8 %dir, %struct.FaceIntersectInfo* %face_info) #0 {
entry:
  %u.addr = alloca double, align 8
  %v.addr = alloca double, align 8
  %w.addr = alloca double, align 8
  %face_info.addr = alloca %struct.FaceIntersectInfo*, align 8
  %result = alloca i32, align 4
  %u2 = alloca double, align 8
  %v2 = alloca double, align 8
  store double %u, double* %u.addr, align 8
  store double %v, double* %v.addr, align 8
  store double %w, double* %w.addr, align 8
  store %struct.FaceIntersectInfo* %face_info, %struct.FaceIntersectInfo** %face_info.addr, align 8
  store i32 0, i32* %result, align 4
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %0 = load double, double* %z, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %1 = load double, double* %u.addr, align 8
  %div = fdiv double %1, 2.000000e+00
  store double %div, double* %u2, align 8
  %2 = load double, double* %v.addr, align 8
  %div1 = fdiv double %2, 2.000000e+00
  store double %div1, double* %v2, align 8
  %3 = load double, double* %w.addr, align 8
  %z2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewp, i32 0, i32 2
  %4 = load double, double* %z2, align 8
  %sub = fsub double %3, %4
  %z3 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %5 = load double, double* %z3, align 8
  %div4 = fdiv double %sub, %5
  %6 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %6, i32 0, i32 2
  store double %div4, double* %t, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewp, i32 0, i32 0
  %7 = load double, double* %x, align 8
  %8 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t5 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %8, i32 0, i32 2
  %9 = load double, double* %t5, align 8
  %x6 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %10 = load double, double* %x6, align 8
  %mul = fmul double %9, %10
  %add = fadd double %7, %mul
  %11 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %11, i32 0, i32 3
  %x7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 0
  store double %add, double* %x7, align 8
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %viewp, i32 0, i32 1
  %12 = load double, double* %y, align 8
  %13 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t8 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %13, i32 0, i32 2
  %14 = load double, double* %t8, align 8
  %y9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %15 = load double, double* %y9, align 8
  %mul10 = fmul double %14, %15
  %add11 = fadd double %12, %mul10
  %16 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s12 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %16, i32 0, i32 3
  %y13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s12, i32 0, i32 1
  store double %add11, double* %y13, align 8
  %17 = load double, double* %w.addr, align 8
  %18 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s14 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %18, i32 0, i32 3
  %z15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s14, i32 0, i32 2
  store double %17, double* %z15, align 8
  %19 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s16 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %19, i32 0, i32 3
  %x17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s16, i32 0, i32 0
  %20 = load double, double* %x17, align 8
  %21 = load double, double* %u2, align 8
  %sub18 = fsub double -0.000000e+00, %21
  %cmp19 = fcmp oge double %20, %sub18
  br i1 %cmp19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s20 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %22, i32 0, i32 3
  %x21 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s20, i32 0, i32 0
  %23 = load double, double* %x21, align 8
  %24 = load double, double* %u2, align 8
  %cmp22 = fcmp ole double %23, %24
  br i1 %cmp22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %25 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s24 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %25, i32 0, i32 3
  %y25 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s24, i32 0, i32 1
  %26 = load double, double* %y25, align 8
  %27 = load double, double* %v2, align 8
  %sub26 = fsub double -0.000000e+00, %27
  %cmp27 = fcmp oge double %26, %sub26
  br i1 %cmp27, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true.23
  %28 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s29 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %28, i32 0, i32 3
  %y30 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s29, i32 0, i32 1
  %29 = load double, double* %y30, align 8
  %30 = load double, double* %v2, align 8
  %cmp31 = fcmp ole double %29, %30
  br i1 %cmp31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %land.lhs.true.28
  %31 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s33 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %31, i32 0, i32 3
  %x34 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s33, i32 0, i32 0
  %32 = load double, double* %x34, align 8
  %33 = load double, double* %u2, align 8
  %add35 = fadd double %32, %33
  %34 = load double, double* %u.addr, align 8
  %div36 = fdiv double %add35, %34
  %35 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %u37 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %35, i32 0, i32 0
  store double %div36, double* %u37, align 8
  %36 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s38 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %36, i32 0, i32 3
  %y39 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s38, i32 0, i32 1
  %37 = load double, double* %y39, align 8
  %38 = load double, double* %v2, align 8
  %add40 = fadd double %37, %38
  %39 = load double, double* %v.addr, align 8
  %div41 = fdiv double %add40, %39
  %40 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %v42 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %40, i32 0, i32 1
  store double %div41, double* %v42, align 8
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %land.lhs.true.28, %land.lhs.true.23, %land.lhs.true, %if.then
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %entry
  %41 = load i32, i32* %result, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @intersect_circle(%struct._GimpVector3* byval align 8 %vp, %struct._GimpVector3* byval align 8 %dir, double %w, %struct.FaceIntersectInfo* %face_info) #0 {
entry:
  %w.addr = alloca double, align 8
  %face_info.addr = alloca %struct.FaceIntersectInfo*, align 8
  %result = alloca i32, align 4
  %r = alloca double, align 8
  %d = alloca double, align 8
  store double %w, double* %w.addr, align 8
  store %struct.FaceIntersectInfo* %face_info, %struct.FaceIntersectInfo** %face_info.addr, align 8
  store i32 0, i32* %result, align 4
  %y = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %1 = load double, double* %w.addr, align 8
  %y1 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 1
  %2 = load double, double* %y1, align 8
  %sub = fsub double %1, %2
  %y2 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %div = fdiv double %sub, %3
  %4 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %4, i32 0, i32 2
  store double %div, double* %t, align 8
  %x = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 0
  %5 = load double, double* %x, align 8
  %6 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t3 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %6, i32 0, i32 2
  %7 = load double, double* %t3, align 8
  %x4 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 0
  %8 = load double, double* %x4, align 8
  %mul = fmul double %7, %8
  %add = fadd double %5, %mul
  %9 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %9, i32 0, i32 3
  %x5 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s, i32 0, i32 0
  store double %add, double* %x5, align 8
  %10 = load double, double* %w.addr, align 8
  %11 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s6 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %11, i32 0, i32 3
  %y7 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s6, i32 0, i32 1
  store double %10, double* %y7, align 8
  %z = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %vp, i32 0, i32 2
  %12 = load double, double* %z, align 8
  %13 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %t8 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %13, i32 0, i32 2
  %14 = load double, double* %t8, align 8
  %z9 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %dir, i32 0, i32 2
  %15 = load double, double* %z9, align 8
  %mul10 = fmul double %14, %15
  %add11 = fadd double %12, %mul10
  %16 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s12 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %16, i32 0, i32 3
  %z13 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s12, i32 0, i32 2
  store double %add11, double* %z13, align 8
  %17 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s14 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %17, i32 0, i32 3
  %x15 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s14, i32 0, i32 0
  %18 = load double, double* %x15, align 8
  %19 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s16 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %19, i32 0, i32 3
  %x17 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s16, i32 0, i32 0
  %20 = load double, double* %x17, align 8
  %mul18 = fmul double %18, %20
  %21 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s19 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %21, i32 0, i32 3
  %z20 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s19, i32 0, i32 2
  %22 = load double, double* %z20, align 8
  %23 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s21 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %23, i32 0, i32 3
  %z22 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s21, i32 0, i32 2
  %24 = load double, double* %z22, align 8
  %mul23 = fmul double %22, %24
  %add24 = fadd double %mul18, %mul23
  %call = call double @sqrt(double %add24) #1
  store double %call, double* %r, align 8
  %25 = load double, double* %r, align 8
  %26 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %cmp25 = fcmp ole double %25, %26
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then
  %27 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %mul27 = fmul double 2.000000e+00, %27
  store double %mul27, double* %d, align 8
  %28 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s28 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %28, i32 0, i32 3
  %x29 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s28, i32 0, i32 0
  %29 = load double, double* %x29, align 8
  %30 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %add30 = fadd double %29, %30
  %31 = load double, double* %d, align 8
  %div31 = fdiv double %add30, %31
  %32 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %u = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %32, i32 0, i32 0
  store double %div31, double* %u, align 8
  %33 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %s32 = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %33, i32 0, i32 3
  %z33 = getelementptr inbounds %struct._GimpVector3, %struct._GimpVector3* %s32, i32 0, i32 2
  %34 = load double, double* %z33, align 8
  %35 = load double, double* getelementptr inbounds (%struct.MapObjectValues, %struct.MapObjectValues* @mapvals, i32 0, i32 25), align 8
  %add34 = fadd double %34, %35
  %36 = load double, double* %d, align 8
  %div35 = fdiv double %add34, %36
  %37 = load %struct.FaceIntersectInfo*, %struct.FaceIntersectInfo** %face_info.addr, align 8
  %v = getelementptr inbounds %struct.FaceIntersectInfo, %struct.FaceIntersectInfo* %37, i32 0, i32 1
  store double %div35, double* %v, align 8
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %entry
  %38 = load i32, i32* %result, align 4
  ret i32 %38
}

declare void @get_cylinder_image_color(%struct._GimpRGB* sret, i32, double, double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
