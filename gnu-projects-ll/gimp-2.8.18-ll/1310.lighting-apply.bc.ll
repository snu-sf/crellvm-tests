; ModuleID = './plug-ins/lighting/lighting-apply.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LightingValues = type { i32, i32, i32, %struct._GimpVector3, %struct._GimpVector3, [6 x %struct.LightSettings], %struct.MaterialSettings, %struct.MaterialSettings, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double }
%struct._GimpVector3 = type { double, double, double }
%struct.LightSettings = type { i32, %struct._GimpVector3, %struct._GimpVector3, %struct._GimpRGB, double, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.MaterialSettings = type { double, double, double, double, double, i32, %struct._GimpRGB }
%struct._GimpDrawable = type { i32, i32, i32, i32, i32, i32, %struct._GimpTile*, %struct._GimpTile* }
%struct._GimpTile = type { i32, i32, i32, i32, i16, i8, i8*, %struct._GimpDrawable* }
%struct._GimpPixelRgn = type { i8*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32, i8, i32 }

@mapvals = external global %struct.LightingValues, align 8
@input_drawable = external global %struct._GimpDrawable*, align 8
@width = external global i32, align 4
@height = external global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@output_drawable = external global %struct._GimpDrawable*, align 8
@bump_region = external global %struct._GimpPixelRgn, align 8
@env_width = external global i32, align 4
@env_height = external global i32, align 4
@env_region = external global %struct._GimpPixelRgn, align 8
@dest_region = external global %struct._GimpPixelRgn, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Lighting Effects\00", align 1
@maxcounter = external global i64, align 8

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
  %index = alloca i32, align 4
  %row = alloca i8*, align 8
  %obpp = alloca i8, align 1
  %has_alpha = alloca i32, align 4
  %ray_func = alloca void (%struct._GimpRGB*, %struct._GimpVector3*)*, align 8
  %tmp = alloca %struct._GimpVector3, align 8
  %tmp57 = alloca %struct._GimpRGB, align 8
  store i64 0, i64* %progress_counter, align 8
  store i32 -1, i32* %new_image_id, align 4
  store i32 -1, i32* %new_layer_id, align 4
  store i8* null, i8** %row, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 14), align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load %struct._GimpDrawable*, %struct._GimpDrawable** @input_drawable, align 8
  %drawable_id = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %2, i32 0, i32 0
  %3 = load i32, i32* %drawable_id, align 4
  %call = call i32 @gimp_drawable_has_alpha(i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @width, align 4
  %5 = load i32, i32* @height, align 4
  %call2 = call i32 @gimp_image_new(i32 %4, i32 %5, i32 0)
  store i32 %call2, i32* %new_image_id, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 15), align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %new_image_id, align 4
  %8 = load i32, i32* @width, align 4
  %9 = load i32, i32* @height, align 4
  %call5 = call i32 @gimp_layer_new(i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %9, i32 1, double 1.000000e+02, i32 0)
  store i32 %call5, i32* %new_layer_id, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %new_image_id, align 4
  %11 = load i32, i32* @width, align 4
  %12 = load i32, i32* @height, align 4
  %call6 = call i32 @gimp_layer_new(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %12, i32 0, double 1.000000e+02, i32 0)
  store i32 %call6, i32* %new_layer_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %13 = load i32, i32* %new_image_id, align 4
  %14 = load i32, i32* %new_layer_id, align 4
  %call7 = call i32 @gimp_image_insert_layer(i32 %13, i32 %14, i32 -1, i32 0)
  %15 = load i32, i32* %new_layer_id, align 4
  %call8 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %15)
  store %struct._GimpDrawable* %call8, %struct._GimpDrawable** @output_drawable, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %lor.lhs.false
  %16 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp10 = icmp eq i32 %16, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %if.end.9
  %17 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp12 = icmp ne i32 %17, -1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %land.lhs.true.11
  %18 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %call14 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %18)
  %19 = load i32, i32* @width, align 4
  %20 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @bump_region, %struct._GimpDrawable* %call14, i32 0, i32 0, i32 %19, i32 %20, i32 0, i32 0)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.end.9
  %21 = load i32, i32* @width, align 4
  %22 = load i32, i32* @height, align 4
  call void @precompute_init(i32 %21, i32 %22)
  %23 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 17), align 4
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.19

lor.lhs.false.17:                                 ; preds = %if.end.15
  %24 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %cmp18 = icmp eq i32 %24, -1
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %lor.lhs.false.17, %if.end.15
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.24

if.else.20:                                       ; preds = %lor.lhs.false.17
  %25 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call21 = call i32 @gimp_drawable_width(i32 %25)
  store i32 %call21, i32* @env_width, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call22 = call i32 @gimp_drawable_height(i32 %26)
  store i32 %call22, i32* @env_height, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 2), align 4
  %call23 = call %struct._GimpDrawable* @gimp_drawable_get(i32 %27)
  %28 = load i32, i32* @env_width, align 4
  %29 = load i32, i32* @env_height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @env_region, %struct._GimpDrawable* %call23, i32 0, i32 0, i32 %28, i32 %29, i32 0, i32 0)
  store void (%struct._GimpRGB*, %struct._GimpVector3*)* @get_ray_color_ref, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.20, %if.then.19
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %31 = load i32, i32* @width, align 4
  %32 = load i32, i32* @height, align 4
  call void @gimp_pixel_rgn_init(%struct._GimpPixelRgn* @dest_region, %struct._GimpDrawable* %30, i32 0, i32 0, i32 %31, i32 %32, i32 1, i32 1)
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id25 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %33, i32 0, i32 0
  %34 = load i32, i32* %drawable_id25, align 4
  %call26 = call i32 @gimp_drawable_bpp(i32 %34)
  %conv = trunc i32 %call26 to i8
  store i8 %conv, i8* %obpp, align 1
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id27 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %35, i32 0, i32 0
  %36 = load i32, i32* %drawable_id27, align 4
  %call28 = call i32 @gimp_drawable_has_alpha(i32 %36)
  store i32 %call28, i32* %has_alpha, align 4
  %37 = load i8, i8* %obpp, align 1
  %conv29 = zext i8 %37 to i32
  %38 = load i32, i32* @width, align 4
  %mul = mul nsw i32 %conv29, %38
  %conv30 = sext i32 %mul to i64
  %call31 = call noalias i8* @g_malloc_n(i64 %conv30, i64 1)
  store i8* %call31, i8** %row, align 8
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  %call33 = call i32 @gimp_progress_init(i8* %call32)
  %39 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp34 = icmp eq i32 %39, 1
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %if.end.24
  %40 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp37 = icmp ne i32 %40, -1
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %41 = load i32, i32* @height, align 4
  %cmp40 = icmp sge i32 %41, 2
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  %42 = load i32, i32* @width, align 4
  call void @interpol_row(i32 0, i32 %42, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %land.lhs.true.39, %land.lhs.true.36, %if.end.24
  store i32 0, i32* %ycount, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %if.end.43
  %43 = load i32, i32* %ycount, align 4
  %44 = load i32, i32* @height, align 4
  %cmp44 = icmp slt i32 %43, %44
  br i1 %cmp44, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  %45 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 16), align 4
  %cmp46 = icmp eq i32 %45, 1
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.52

land.lhs.true.48:                                 ; preds = %for.body
  %46 = load i32, i32* getelementptr inbounds (%struct.LightingValues, %struct.LightingValues* @mapvals, i32 0, i32 1), align 4
  %cmp49 = icmp ne i32 %46, -1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  %47 = load i32, i32* @width, align 4
  %48 = load i32, i32* %ycount, align 4
  call void @precompute_normals(i32 0, i32 %47, i32 %48)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.48, %for.body
  store i32 0, i32* %index, align 4
  store i32 0, i32* %xcount, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.end.52
  %49 = load i32, i32* %xcount, align 4
  %50 = load i32, i32* @width, align 4
  %cmp54 = icmp slt i32 %49, %50
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.53
  %51 = load i32, i32* %xcount, align 4
  %52 = load i32, i32* %ycount, align 4
  call void @int_to_pos(%struct._GimpVector3* sret %tmp, i32 %51, i32 %52)
  %53 = bitcast %struct._GimpVector3* %p to i8*
  %54 = bitcast %struct._GimpVector3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 24, i32 8, i1 false)
  %55 = load void (%struct._GimpRGB*, %struct._GimpVector3*)*, void (%struct._GimpRGB*, %struct._GimpVector3*)** %ray_func, align 8
  call void %55(%struct._GimpRGB* sret %tmp57, %struct._GimpVector3* %p)
  %56 = bitcast %struct._GimpRGB* %color to i8*
  %57 = bitcast %struct._GimpRGB* %tmp57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 32, i32 8, i1 false)
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 0
  %58 = load double, double* %r, align 8
  %mul58 = fmul double %58, 2.550000e+02
  %conv59 = fptoui double %mul58 to i8
  %59 = load i32, i32* %index, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %index, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load i8*, i8** %row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %60, i64 %idxprom
  store i8 %conv59, i8* %arrayidx, align 1
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 1
  %61 = load double, double* %g, align 8
  %mul60 = fmul double %61, 2.550000e+02
  %conv61 = fptoui double %mul60 to i8
  %62 = load i32, i32* %index, align 4
  %inc62 = add nsw i32 %62, 1
  store i32 %inc62, i32* %index, align 4
  %idxprom63 = sext i32 %62 to i64
  %63 = load i8*, i8** %row, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %63, i64 %idxprom63
  store i8 %conv61, i8* %arrayidx64, align 1
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 2
  %64 = load double, double* %b, align 8
  %mul65 = fmul double %64, 2.550000e+02
  %conv66 = fptoui double %mul65 to i8
  %65 = load i32, i32* %index, align 4
  %inc67 = add nsw i32 %65, 1
  store i32 %inc67, i32* %index, align 4
  %idxprom68 = sext i32 %65 to i64
  %66 = load i8*, i8** %row, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %66, i64 %idxprom68
  store i8 %conv66, i8* %arrayidx69, align 1
  %67 = load i32, i32* %has_alpha, align 4
  %tobool70 = icmp ne i32 %67, 0
  br i1 %tobool70, label %if.then.71, label %if.end.77

if.then.71:                                       ; preds = %for.body.56
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %color, i32 0, i32 3
  %68 = load double, double* %a, align 8
  %mul72 = fmul double %68, 2.550000e+02
  %conv73 = fptoui double %mul72 to i8
  %69 = load i32, i32* %index, align 4
  %inc74 = add nsw i32 %69, 1
  store i32 %inc74, i32* %index, align 4
  %idxprom75 = sext i32 %69 to i64
  %70 = load i8*, i8** %row, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %70, i64 %idxprom75
  store i8 %conv73, i8* %arrayidx76, align 1
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %for.body.56
  %71 = load i64, i64* %progress_counter, align 8
  %inc78 = add nsw i64 %71, 1
  store i64 %inc78, i64* %progress_counter, align 8
  %72 = load i32, i32* @width, align 4
  %conv79 = sext i32 %72 to i64
  %rem = srem i64 %71, %conv79
  %cmp80 = icmp eq i64 %rem, 0
  br i1 %cmp80, label %if.then.82, label %if.end.86

if.then.82:                                       ; preds = %if.end.77
  %73 = load i64, i64* %progress_counter, align 8
  %conv83 = sitofp i64 %73 to double
  %74 = load i64, i64* @maxcounter, align 8
  %conv84 = sitofp i64 %74 to double
  %div = fdiv double %conv83, %conv84
  %call85 = call i32 @gimp_progress_update(double %div)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.82, %if.end.77
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %75 = load i32, i32* %xcount, align 4
  %inc87 = add nsw i32 %75, 1
  store i32 %inc87, i32* %xcount, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  %76 = load i8*, i8** %row, align 8
  %77 = load i32, i32* %ycount, align 4
  %78 = load i32, i32* @width, align 4
  call void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn* @dest_region, i8* %76, i32 0, i32 %77, i32 %78)
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end
  %79 = load i32, i32* %ycount, align 4
  %inc89 = add nsw i32 %79, 1
  store i32 %inc89, i32* %ycount, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  %call91 = call i32 @gimp_progress_update(double 1.000000e+00)
  %80 = load i8*, i8** %row, align 8
  call void @g_free(i8* %80)
  %81 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  call void @gimp_drawable_flush(%struct._GimpDrawable* %81)
  %82 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id92 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %82, i32 0, i32 0
  %83 = load i32, i32* %drawable_id92, align 4
  %call93 = call i32 @gimp_drawable_merge_shadow(i32 %83, i32 1)
  %84 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  %drawable_id94 = getelementptr inbounds %struct._GimpDrawable, %struct._GimpDrawable* %84, i32 0, i32 0
  %85 = load i32, i32* %drawable_id94, align 4
  %86 = load i32, i32* @width, align 4
  %87 = load i32, i32* @height, align 4
  %call95 = call i32 @gimp_drawable_update(i32 %85, i32 0, i32 0, i32 %86, i32 %87)
  %88 = load i32, i32* %new_image_id, align 4
  %cmp96 = icmp ne i32 %88, -1
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %for.end.90
  %89 = load i32, i32* %new_image_id, align 4
  %call99 = call i32 @gimp_display_new(i32 %89)
  %call100 = call i32 @gimp_displays_flush()
  %90 = load %struct._GimpDrawable*, %struct._GimpDrawable** @output_drawable, align 8
  call void @gimp_drawable_detach(%struct._GimpDrawable* %90)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %for.end.90
  ret void
}

declare i32 @gimp_drawable_has_alpha(i32) #1

declare i32 @gimp_image_new(i32, i32, i32) #1

declare i32 @gimp_layer_new(i32, i8*, i32, i32, i32, double, i32) #1

declare i32 @gimp_image_insert_layer(i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_drawable_get(i32) #1

declare void @gimp_pixel_rgn_init(%struct._GimpPixelRgn*, %struct._GimpDrawable*, i32, i32, i32, i32, i32, i32) #1

declare void @precompute_init(i32, i32) #1

declare void @get_ray_color(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

declare i32 @gimp_drawable_width(i32) #1

declare i32 @gimp_drawable_height(i32) #1

declare void @get_ray_color_ref(%struct._GimpRGB* sret, %struct._GimpVector3*) #1

declare i32 @gimp_drawable_bpp(i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @interpol_row(i32, i32, i32) #1

declare void @precompute_normals(i32, i32, i32) #1

declare void @int_to_pos(%struct._GimpVector3* sret, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @gimp_progress_update(double) #1

declare void @gimp_pixel_rgn_set_row(%struct._GimpPixelRgn*, i8*, i32, i32, i32) #1

declare void @g_free(i8*) #1

declare void @gimp_drawable_flush(%struct._GimpDrawable*) #1

declare i32 @gimp_drawable_merge_shadow(i32, i32) #1

declare i32 @gimp_drawable_update(i32, i32, i32, i32, i32) #1

declare i32 @gimp_display_new(i32) #1

declare i32 @gimp_displays_flush() #1

declare void @gimp_drawable_detach(%struct._GimpDrawable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
