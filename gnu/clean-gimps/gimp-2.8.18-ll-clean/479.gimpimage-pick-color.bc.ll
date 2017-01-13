; ModuleID = './app/core/gimpimage-pick-color.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpPickable = type opaque
%struct._GimpProjection = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_pick_color = private unnamed_addr constant [22 x i8] c"gimp_image_pick_color\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"drawable == NULL || GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"drawable == NULL || gimp_item_get_image (GIMP_ITEM (drawable)) == image\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_pick_color(%struct._GimpImage* %image, %struct._GimpDrawable* %drawable, i32 %x, i32 %y, i32 %sample_merged, i32 %sample_average, double %average_radius, i32* %sample_type, %struct._GimpRGB* %color, i32* %color_index) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %sample_merged.addr = alloca i32, align 4
  %sample_average.addr = alloca i32, align 4
  %average_radius.addr = alloca double, align 8
  %sample_type.addr = alloca i32*, align 8
  %color.addr = alloca %struct._GimpRGB*, align 8
  %color_index.addr = alloca i32*, align 8
  %pickable = alloca %struct._GimpPickable*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %sample_merged, i32* %sample_merged.addr, align 4
  store i32 %sample_average, i32* %sample_average.addr, align 4
  store double %average_radius, double* %average_radius.addr, align 8
  store i32* %sample_type, i32** %sample_type.addr, align 8
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i32* %color_index, i32** %color_index.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_image_get_type() #4
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #5
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp12 = icmp eq %struct._GimpDrawable* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_drawable_get_type() #4
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #5
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %cmp41 = icmp eq %struct._GimpDrawable* %27, null
  br i1 %cmp41, label %if.then.47, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %do.body.40
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_item_get_type() #4
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call43)
  %30 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpItem*
  %call45 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %30)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp46 = icmp eq %struct._GimpImage* %call45, %31
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %lor.lhs.false.42, %do.body.40
  br label %if.end.49

if.else.48:                                       ; preds = %lor.lhs.false.42
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_image_pick_color, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.47
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %32 = load i32, i32* %sample_merged.addr, align 4
  %tobool51 = icmp ne i32 %32, 0
  br i1 %tobool51, label %if.end.60, label %if.then.52

if.then.52:                                       ; preds = %do.end.50
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool53 = icmp ne %struct._GimpDrawable* %33, null
  br i1 %tobool53, label %if.end.56, label %if.then.54

if.then.54:                                       ; preds = %if.then.52
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call55 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %34)
  store %struct._GimpDrawable* %call55, %struct._GimpDrawable** %drawable.addr, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.52
  %35 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %tobool57 = icmp ne %struct._GimpDrawable* %35, null
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %do.end.50
  %36 = load i32, i32* %sample_merged.addr, align 4
  %tobool61 = icmp ne i32 %36, 0
  br i1 %tobool61, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %if.end.60
  %37 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call63 = call %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage* %37)
  %38 = bitcast %struct._GimpProjection* %call63 to %struct._GTypeInstance*
  %call64 = call i64 @gimp_pickable_interface_get_type() #4
  %call65 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %38, i64 %call64)
  %39 = bitcast %struct._GTypeInstance* %call65 to %struct._GimpPickable*
  store %struct._GimpPickable* %39, %struct._GimpPickable** %pickable, align 8
  br label %if.end.74

if.else.66:                                       ; preds = %if.end.60
  %40 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %41 = bitcast %struct._GimpDrawable* %40 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_item_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call69)
  %42 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpItem*
  call void @gimp_item_get_offset(%struct._GimpItem* %42, i32* %off_x, i32* %off_y)
  %43 = load i32, i32* %off_x, align 4
  %44 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %44, %43
  store i32 %sub, i32* %x.addr, align 4
  %45 = load i32, i32* %off_y, align 4
  %46 = load i32, i32* %y.addr, align 4
  %sub71 = sub nsw i32 %46, %45
  store i32 %sub71, i32* %y.addr, align 4
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = bitcast %struct._GimpDrawable* %47 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_pickable_interface_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call72)
  %49 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpPickable*
  store %struct._GimpPickable* %49, %struct._GimpPickable** %pickable, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.66, %if.then.62
  %50 = load i32*, i32** %sample_type.addr, align 8
  %tobool75 = icmp ne i32* %50, null
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.74
  %51 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %call77 = call i32 @gimp_pickable_get_image_type(%struct._GimpPickable* %51)
  %52 = load i32*, i32** %sample_type.addr, align 8
  store i32 %call77, i32* %52, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.74
  %53 = load %struct._GimpPickable*, %struct._GimpPickable** %pickable, align 8
  %54 = load i32, i32* %x.addr, align 4
  %55 = load i32, i32* %y.addr, align 4
  %56 = load i32, i32* %sample_average.addr, align 4
  %57 = load double, double* %average_radius.addr, align 8
  %58 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %59 = load i32*, i32** %color_index.addr, align 8
  %call79 = call i32 @gimp_pickable_pick_color(%struct._GimpPickable* %53, i32 %54, i32 %55, i32 %56, double %57, %struct._GimpRGB* %58, i32* %59)
  store i32 %call79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.58, %if.else.48, %if.else.37, %if.else.9
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare %struct._GimpProjection* @gimp_image_get_projection(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_pickable_interface_get_type() #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare i32 @gimp_pickable_get_image_type(%struct._GimpPickable*) #3

declare i32 @gimp_pickable_pick_color(%struct._GimpPickable*, i32, i32, i32, double, %struct._GimpRGB*, i32*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
