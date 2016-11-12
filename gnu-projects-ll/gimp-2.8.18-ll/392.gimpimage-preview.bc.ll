; ModuleID = './app/core/gimpimage-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpContext = type opaque
%struct._GimpImagePrivate = type { i32, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure*, i8*, i8*, i32, i32, double, double, i32, i32, i8*, i32, %struct._GimpPalette*, i32, i32, i32, i32, i32, i32, i32, %struct._GimpProjection*, %struct._GeglNode*, %struct._GList*, %struct._GimpGrid*, %struct._GList*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GimpItemTree*, %struct._GSList*, i32, i32, i32, %struct._GimpLayer*, %struct._GimpChannel*, %struct._GimpParasiteList*, [4 x i32], [4 x i32], i32, i32, %struct._GimpRGB, %struct._GimpUndoStack*, %struct._GimpUndoStack*, i32, i32, %struct._TempBuf*, %struct._GimpImageFlushAccumulator }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpPalette = type opaque
%struct._GimpProjection = type { %struct._GimpObject, %struct._GimpProjectable*, %struct._TilePyramid*, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglProcessor*, %struct._GSList*, %struct._GimpProjectionIdleRender, i32, i32, i32 }
%struct._GimpProjectable = type opaque
%struct._TilePyramid = type opaque
%struct._GeglProcessor = type opaque
%struct._GimpProjectionIdleRender = type { i32, i32, i32, i32, i32, i32, i32, %struct._GSList* }
%struct._GeglNode = type opaque
%struct._GimpGrid = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpItemTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpLayer = type opaque
%struct._GimpChannel = type opaque
%struct._GimpParasiteList = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpUndoStack = type opaque
%struct._GimpImageFlushAccumulator = type { i32, i32, i32, i32 }
%struct._TileManager = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_image_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %is_popup, i32 %dot_for_dot, i32* %width, i32* %height) #0 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %is_popup, i32* %is_popup.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %3, double* %xres, double* %yres)
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %4)
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_height(%struct._GimpImage* %5)
  %6 = load i32, i32* %size.addr, align 4
  %7 = load i32, i32* %size.addr, align 4
  %8 = load i32, i32* %dot_for_dot.addr, align 4
  %9 = load double, double* %xres, align 8
  %10 = load double, double* %yres, align 8
  %11 = load i32*, i32** %width.addr, align 8
  %12 = load i32*, i32** %height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call2, i32 %call3, i32 %6, i32 %7, i32 %8, double %9, double %10, i32* %11, i32* %12, i32* null)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #0 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %scaling_up = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %3)
  %4 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %call2, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_height(%struct._GimpImage* %5)
  %6 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp sgt i32 %call3, %6
  br i1 %cmp4, label %if.then, label %if.end.11

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %7)
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_height(%struct._GimpImage* %8)
  %9 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %9, 2
  %10 = load i32, i32* %height.addr, align 4
  %mul7 = mul nsw i32 %10, 2
  %11 = load i32, i32* %dot_for_dot.addr, align 4
  %12 = load i32*, i32** %popup_width.addr, align 8
  %13 = load i32*, i32** %popup_height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call5, i32 %call6, i32 %mul, i32 %mul7, i32 %11, double 1.000000e+00, double 1.000000e+00, i32* %12, i32* %13, i32* %scaling_up)
  %14 = load i32, i32* %scaling_up, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_get_width(%struct._GimpImage* %15)
  %16 = load i32*, i32** %popup_width.addr, align 8
  store i32 %call9, i32* %16, align 4
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_height(%struct._GimpImage* %17)
  %18 = load i32*, i32** %popup_height.addr, align 8
  store i32 %call10, i32* %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_image_get_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %private = alloca %struct._GimpImagePrivate*, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #3
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpImagePrivate*
  store %struct._GimpImagePrivate* %2, %struct._GimpImagePrivate** %private, align 8
  %3 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %3, i32 0, i32 46
  %4 = load %struct._TempBuf*, %struct._TempBuf** %preview, align 8
  %tobool = icmp ne %struct._TempBuf* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview2 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %5, i32 0, i32 46
  %6 = load %struct._TempBuf*, %struct._TempBuf** %preview2, align 8
  %width3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %6, i32 0, i32 1
  %7 = load i32, i32* %width3, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview5 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %9, i32 0, i32 46
  %10 = load %struct._TempBuf*, %struct._TempBuf** %preview5, align 8
  %height6 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 2
  %11 = load i32, i32* %height6, align 4
  %12 = load i32, i32* %height.addr, align 4
  %cmp7 = icmp eq i32 %11, %12
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  %13 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview8 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %13, i32 0, i32 46
  %14 = load %struct._TempBuf*, %struct._TempBuf** %preview8, align 8
  store %struct._TempBuf* %14, %struct._TempBuf** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %15 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview9 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %15, i32 0, i32 46
  %16 = load %struct._TempBuf*, %struct._TempBuf** %preview9, align 8
  %tobool10 = icmp ne %struct._TempBuf* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else
  %17 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview12 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %17, i32 0, i32 46
  %18 = load %struct._TempBuf*, %struct._TempBuf** %preview12, align 8
  call void @temp_buf_free(%struct._TempBuf* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.else
  %19 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %20 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %21 = load i32, i32* %width.addr, align 4
  %22 = load i32, i32* %height.addr, align 4
  %call13 = call %struct._TempBuf* @gimp_image_get_new_preview(%struct._GimpViewable* %19, %struct._GimpContext* %20, i32 %21, i32 %22)
  %23 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview14 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %23, i32 0, i32 46
  store %struct._TempBuf* %call13, %struct._TempBuf** %preview14, align 8
  %24 = load %struct._GimpImagePrivate*, %struct._GimpImagePrivate** %private, align 8
  %preview15 = getelementptr inbounds %struct._GimpImagePrivate, %struct._GimpImagePrivate* %24, i32 0, i32 46
  %25 = load %struct._TempBuf*, %struct._TempBuf** %preview15, align 8
  store %struct._TempBuf* %25, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %26
}

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare void @temp_buf_free(%struct._TempBuf*) #1

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_image_get_new_preview(%struct._GimpViewable* %viewable, %struct._GimpContext* %context, i32 %width, i32 %height) #0 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %projection = alloca %struct._GimpProjection*, align 8
  %buf = alloca %struct._TempBuf*, align 8
  %tiles = alloca %struct._TileManager*, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  %level = alloca i32, align 4
  %is_premult = alloca i32, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %3)
  store %struct._GimpProjection* %call2, %struct._GimpProjection** %projection, align 8
  %4 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %4 to double
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %5)
  %conv4 = sitofp i32 %call3 to double
  %div = fdiv double %conv, %conv4
  store double %div, double* %scale_x, align 8
  %6 = load i32, i32* %height.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call6 = call i32 @gimp_image_get_height(%struct._GimpImage* %7)
  %conv7 = sitofp i32 %call6 to double
  %div8 = fdiv double %conv5, %conv7
  store double %div8, double* %scale_y, align 8
  %8 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %9 = load double, double* %scale_x, align 8
  %10 = load double, double* %scale_y, align 8
  %call9 = call i32 @gimp_projection_get_level(%struct._GimpProjection* %8, double %9, double %10)
  store i32 %call9, i32* %level, align 4
  %11 = load %struct._GimpProjection*, %struct._GimpProjection** %projection, align 8
  %12 = load i32, i32* %level, align 4
  %call10 = call %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection* %11, i32 %12, i32* %is_premult)
  store %struct._TileManager* %call10, %struct._TileManager** %tiles, align 8
  %13 = load %struct._TileManager*, %struct._TileManager** %tiles, align 8
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %height.addr, align 4
  %call11 = call %struct._TempBuf* @tile_manager_get_preview(%struct._TileManager* %13, i32 %14, i32 %15)
  store %struct._TempBuf* %call11, %struct._TempBuf** %buf, align 8
  %16 = load i32, i32* %is_premult, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  call void @temp_buf_demultiply(%struct._TempBuf* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct._TempBuf*, %struct._TempBuf** %buf, align 8
  ret %struct._TempBuf* %18
}

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #1

declare i32 @gimp_projection_get_level(%struct._GimpProjection*, double, double) #1

declare %struct._TileManager* @gimp_projection_get_tiles_at_level(%struct._GimpProjection*, i32, i32*) #1

declare %struct._TempBuf* @tile_manager_get_preview(%struct._TileManager*, i32, i32) #1

declare void @temp_buf_demultiply(%struct._TempBuf*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
