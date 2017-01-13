; ModuleID = './app/core/gimpitem-preview.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_item_get_preview_size(%struct._GimpViewable* %viewable, i32 %size, i32 %is_popup, i32 %dot_for_dot, i32* %width, i32* %height) #0 {
entry:
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %size.addr = alloca i32, align 4
  %is_popup.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %item = alloca %struct._GimpItem*, align 8
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
  %call = call i64 @gimp_item_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 1
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 42
  %8 = load i32, i32* %layer_previews, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %is_popup.addr, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.4
  %10 = load i32, i32* %size.addr, align 4
  %11 = load i32*, i32** %width.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %size.addr, align 4
  %13 = load i32*, i32** %height.addr, align 8
  store i32 %12, i32* %13, align 4
  br label %if.end.14

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool6 = icmp ne %struct._GimpImage* %14, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %if.end
  %15 = load i32, i32* %is_popup.addr, align 4
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.7
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %16, double* %xres, double* %yres)
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call i32 @gimp_image_get_width(%struct._GimpImage* %17)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call11 = call i32 @gimp_image_get_height(%struct._GimpImage* %18)
  %19 = load i32, i32* %size.addr, align 4
  %20 = load i32, i32* %size.addr, align 4
  %21 = load i32, i32* %dot_for_dot.addr, align 4
  %22 = load double, double* %xres, align 8
  %23 = load double, double* %yres, align 8
  %24 = load i32*, i32** %width.addr, align 8
  %25 = load i32*, i32** %height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call10, i32 %call11, i32 %19, i32 %20, i32 %21, double %22, double %23, i32* %24, i32* %25, i32* null)
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true.7, %if.end
  %26 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_width(%struct._GimpItem* %26)
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call13 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %28 = load i32, i32* %size.addr, align 4
  %29 = load i32, i32* %size.addr, align 4
  %30 = load i32, i32* %dot_for_dot.addr, align 4
  %31 = load i32*, i32** %width.addr, align 8
  %32 = load i32*, i32** %height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call12, i32 %call13, i32 %28, i32 %29, i32 %30, double 1.000000e+00, double 1.000000e+00, i32* %31, i32* %32, i32* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.else, %if.then.9
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #2

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #1

declare void @gimp_image_get_resolution(%struct._GimpImage*, double*, double*) #1

declare void @gimp_viewable_calc_preview_size(i32, i32, i32, i32, i32, double, double, i32*, i32*, i32*) #1

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare i32 @gimp_item_get_width(%struct._GimpItem*) #1

declare i32 @gimp_item_get_height(%struct._GimpItem*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_item_get_popup_size(%struct._GimpViewable* %viewable, i32 %width, i32 %height, i32 %dot_for_dot, i32* %popup_width, i32* %popup_height) #0 {
entry:
  %retval = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dot_for_dot.addr = alloca i32, align 4
  %popup_width.addr = alloca i32*, align 8
  %popup_height.addr = alloca i32*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %scaling_up = alloca i32, align 4
  %xres = alloca double, align 8
  %yres = alloca double, align 8
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %dot_for_dot, i32* %dot_for_dot.addr, align 4
  store i32* %popup_width, i32** %popup_width.addr, align 8
  store i32* %popup_height, i32** %popup_height.addr, align 8
  %0 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %1 = bitcast %struct._GimpViewable* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_item_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpItem*
  store %struct._GimpItem* %2, %struct._GimpItem** %item, align 8
  %3 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call2 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %3)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 1
  %7 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %layer_previews = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %7, i32 0, i32 42
  %8 = load i32, i32* %layer_previews, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call4 = call i32 @gimp_item_get_width(%struct._GimpItem* %9)
  %10 = load i32, i32* %width.addr, align 4
  %cmp = icmp sgt i32 %call4, %10
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call5 = call i32 @gimp_item_get_height(%struct._GimpItem* %11)
  %12 = load i32, i32* %height.addr, align 4
  %cmp6 = icmp sgt i32 %call5, %12
  br i1 %cmp6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  store double 1.000000e+00, double* %xres, align 8
  store double 1.000000e+00, double* %yres, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool8 = icmp ne %struct._GimpImage* %13, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_get_resolution(%struct._GimpImage* %14, double* %xres, double* %yres)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  %15 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call11 = call i32 @gimp_item_get_width(%struct._GimpItem* %15)
  %16 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call12 = call i32 @gimp_item_get_height(%struct._GimpItem* %16)
  %17 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 %17, 2
  %18 = load i32, i32* %height.addr, align 4
  %mul13 = mul nsw i32 %18, 2
  %19 = load i32, i32* %dot_for_dot.addr, align 4
  %20 = load double, double* %xres, align 8
  %21 = load double, double* %yres, align 8
  %22 = load i32*, i32** %popup_width.addr, align 8
  %23 = load i32*, i32** %popup_height.addr, align 8
  call void @gimp_viewable_calc_preview_size(i32 %call11, i32 %call12, i32 %mul, i32 %mul13, i32 %19, double %20, double %21, i32* %22, i32* %23, i32* %scaling_up)
  %24 = load i32, i32* %scaling_up, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.10
  %25 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call16 = call i32 @gimp_item_get_width(%struct._GimpItem* %25)
  %26 = load i32*, i32** %popup_width.addr, align 8
  store i32 %call16, i32* %26, align 4
  %27 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call17 = call i32 @gimp_item_get_height(%struct._GimpItem* %27)
  %28 = load i32*, i32** %popup_width.addr, align 8
  store i32 %call17, i32* %28, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.end.18, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
