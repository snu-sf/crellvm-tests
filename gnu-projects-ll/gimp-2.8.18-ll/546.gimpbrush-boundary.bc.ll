; ModuleID = './app/core/gimpbrush-boundary.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque
%struct._BoundSeg = type { i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
define %struct.cairo_path* @gimp_brush_real_transform_boundary(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness, i32* %width, i32* %height) #0 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = load double, double* %scale.addr, align 8
  %2 = load double, double* %aspect_ratio.addr, align 8
  %3 = load double, double* %angle.addr, align 8
  %4 = load i32*, i32** %width.addr, align 8
  %5 = load i32*, i32** %height.addr, align 8
  call void @gimp_brush_transform_size(%struct._GimpBrush* %0, double %1, double %2, double %3, i32* %4, i32* %5)
  %6 = load i32*, i32** %width.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp slt i32 %7, 256
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32*, i32** %height.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp1 = icmp slt i32 %9, 256
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %11 = load double, double* %scale.addr, align 8
  %12 = load double, double* %aspect_ratio.addr, align 8
  %13 = load double, double* %angle.addr, align 8
  %14 = load double, double* %hardness.addr, align 8
  %call = call %struct.cairo_path* @gimp_brush_transform_boundary_exact(%struct._GimpBrush* %10, double %11, double %12, double %13, double %14)
  store %struct.cairo_path* %call, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %16 = load double, double* %scale.addr, align 8
  %17 = load double, double* %aspect_ratio.addr, align 8
  %18 = load double, double* %angle.addr, align 8
  %19 = load double, double* %hardness.addr, align 8
  %call2 = call %struct.cairo_path* @gimp_brush_transform_boundary_approx(%struct._GimpBrush* %15, double %16, double %17, double %18, double %19)
  store %struct.cairo_path* %call2, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %20
}

declare void @gimp_brush_transform_size(%struct._GimpBrush*, double, double, double, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal %struct.cairo_path* @gimp_brush_transform_boundary_exact(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #0 {
entry:
  %retval = alloca %struct.cairo_path*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %mask = alloca %struct._TempBuf*, align 8
  %maskPR = alloca %struct._PixelRegion, align 8
  %bound_segs = alloca %struct._BoundSeg*, align 8
  %n_bound_segs = alloca i32, align 4
  %stroke_segs = alloca %struct._BoundSeg*, align 8
  %n_stroke_groups = alloca i32, align 4
  %path = alloca %struct.cairo_path*, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = load double, double* %scale.addr, align 8
  %2 = load double, double* %aspect_ratio.addr, align 8
  %3 = load double, double* %angle.addr, align 8
  %4 = load double, double* %hardness.addr, align 8
  %call = call %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush* %0, double %1, double %2, double %3, double %4)
  store %struct._TempBuf* %call, %struct._TempBuf** %mask, align 8
  %5 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %tobool = icmp ne %struct._TempBuf* %5, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %7 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %7, i32 0, i32 1
  %8 = load i32, i32* %width, align 4
  %9 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %9, i32 0, i32 2
  %10 = load i32, i32* %height, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %maskPR, %struct._TempBuf* %6, i32 0, i32 0, i32 %8, i32 %10)
  %w = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 8
  %11 = load i32, i32* %w, align 4
  %h = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %maskPR, i32 0, i32 9
  %12 = load i32, i32* %h, align 4
  %call1 = call %struct._BoundSeg* @boundary_find(%struct._PixelRegion* %maskPR, i32 0, i32 0, i32 0, i32 %11, i32 %12, i8 zeroext 0, i32* %n_bound_segs)
  store %struct._BoundSeg* %call1, %struct._BoundSeg** %bound_segs, align 8
  %13 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs, align 8
  %tobool2 = icmp ne %struct._BoundSeg* %13, null
  br i1 %tobool2, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.then
  %14 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs, align 8
  %15 = load i32, i32* %n_bound_segs, align 4
  %call4 = call %struct._BoundSeg* @boundary_sort(%struct._BoundSeg* %14, i32 %15, i32* %n_stroke_groups)
  store %struct._BoundSeg* %call4, %struct._BoundSeg** %stroke_segs, align 8
  %16 = load %struct._BoundSeg*, %struct._BoundSeg** %bound_segs, align 8
  %17 = bitcast %struct._BoundSeg* %16 to i8*
  call void @g_free(i8* %17)
  %18 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %tobool5 = icmp ne %struct._BoundSeg* %18, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.3
  %19 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %20 = load i32, i32* %n_bound_segs, align 4
  %21 = load i32, i32* %n_stroke_groups, align 4
  %call7 = call %struct.cairo_path* @gimp_bezier_desc_new_from_bound_segs(%struct._BoundSeg* %19, i32 %20, i32 %21)
  store %struct.cairo_path* %call7, %struct.cairo_path** %path, align 8
  %22 = load %struct._BoundSeg*, %struct._BoundSeg** %stroke_segs, align 8
  %23 = bitcast %struct._BoundSeg* %22 to i8*
  call void @g_free(i8* %23)
  %24 = load %struct.cairo_path*, %struct.cairo_path** %path, align 8
  store %struct.cairo_path* %24, %struct.cairo_path** %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  store %struct.cairo_path* null, %struct.cairo_path** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.6
  %25 = load %struct.cairo_path*, %struct.cairo_path** %retval
  ret %struct.cairo_path* %25
}

; Function Attrs: nounwind uwtable
define internal %struct.cairo_path* @gimp_brush_transform_boundary_approx(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #0 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %1 = load double, double* %scale.addr, align 8
  %2 = load double, double* %aspect_ratio.addr, align 8
  %3 = load double, double* %angle.addr, align 8
  %4 = load double, double* %hardness.addr, align 8
  %call = call %struct.cairo_path* @gimp_brush_transform_boundary_exact(%struct._GimpBrush* %0, double %1, double %2, double %3, double %4)
  ret %struct.cairo_path* %call
}

declare %struct._TempBuf* @gimp_brush_transform_mask(%struct._GimpBrush*, double, double, double, double) #1

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #1

declare %struct._BoundSeg* @boundary_find(%struct._PixelRegion*, i32, i32, i32, i32, i32, i8 zeroext, i32*) #1

declare %struct._BoundSeg* @boundary_sort(%struct._BoundSeg*, i32, i32*) #1

declare void @g_free(i8*) #1

declare %struct.cairo_path* @gimp_bezier_desc_new_from_bound_segs(%struct._BoundSeg*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
