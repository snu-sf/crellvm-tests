; ModuleID = './app/core/gimpdrawable-threshold.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpDrawablePrivate = type opaque
%struct._GimpProgress = type opaque
%struct._GimpThresholdConfig = type { %struct._GimpImageMapConfig, double, double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GeglNode = type opaque
%struct._Threshold = type { i32, i32, i32 }
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._PixelRegion = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_drawable_threshold = private unnamed_addr constant [24 x i8] c"gimp_drawable_threshold\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"! gimp_drawable_is_indexed (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"gimp:threshold\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_threshold(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i32 %low, i32 %high) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %config = alloca %struct._GimpThresholdConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %node = alloca %struct._GeglNode*, align 8
  %cruft = alloca %struct._Threshold, align 4
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %1 = bitcast %struct._GimpDrawable* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_drawable_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_threshold, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_indexed(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else.15, label %if.then.14

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_threshold, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %15 = bitcast %struct._GimpDrawable* %14 to %struct._GTypeInstance*
  %call19 = call i64 @gimp_item_get_type() #5
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call19)
  %16 = bitcast %struct._GTypeInstance* %call20 to %struct._GimpItem*
  %call21 = call i32 @gimp_item_is_attached(%struct._GimpItem* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.25

if.else.24:                                       ; preds = %do.body.18
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_drawable_threshold, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.25:                                        ; preds = %if.then.23
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %call27 = call i64 @gimp_threshold_config_get_type() #5
  %17 = load i32, i32* %low.addr, align 4
  %conv = sitofp i32 %17 to double
  %div = fdiv double %conv, 2.550000e+02
  %18 = load i32, i32* %high.addr, align 4
  %conv28 = sitofp i32 %18 to double
  %div29 = fdiv double %conv28, 2.550000e+02
  %call30 = call i8* (i64, i8*, ...) @g_object_new(i64 %call27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), double %div, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), double %div29, i8* null)
  %19 = bitcast i8* %call30 to %struct._GimpThresholdConfig*
  store %struct._GimpThresholdConfig* %19, %struct._GimpThresholdConfig** %config, align 8
  %20 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %21 = bitcast %struct._GimpDrawable* %20 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call31)
  %22 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %22)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call33, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call34 = call i32 @gimp_use_gegl(%struct._Gimp* %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %do.end.26
  %call38 = call i64 @gegl_node_get_type() #5
  %call39 = call i8* (i64, i8*, ...) @g_object_new(i64 %call38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null)
  %24 = bitcast i8* %call39 to %struct._GeglNode*
  store %struct._GeglNode* %24, %struct._GeglNode** %node, align 8
  %25 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %26 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct._GimpThresholdConfig* %26, i8* null)
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #7
  %29 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  call void @gimp_drawable_apply_operation(%struct._GimpDrawable* %27, %struct._GimpProgress* %28, i8* %call40, %struct._GeglNode* %29, i32 1)
  %30 = load %struct._GeglNode*, %struct._GeglNode** %node, align 8
  %31 = bitcast %struct._GeglNode* %30 to i8*
  call void @g_object_unref(i8* %31)
  br label %if.end.45

if.else.41:                                       ; preds = %do.end.26
  %32 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call43 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %33)
  call void @gimp_threshold_config_to_cruft(%struct._GimpThresholdConfig* %32, %struct._Threshold* %cruft, i32 %call43)
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %35 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #7
  %36 = bitcast %struct._Threshold* %cruft to i8*
  call void @gimp_drawable_process(%struct._GimpDrawable* %34, %struct._GimpProgress* %35, i8* %call44, void ()* bitcast (void (%struct._Threshold*, %struct._PixelRegion*, %struct._PixelRegion*)* @threshold to void ()*), i8* %36)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.then.36
  %37 = load %struct._GimpThresholdConfig*, %struct._GimpThresholdConfig** %config, align 8
  %38 = bitcast %struct._GimpThresholdConfig* %37 to i8*
  call void @g_object_unref(i8* %38)
  br label %return

return:                                           ; preds = %if.end.45, %if.else.24, %if.else.15, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_drawable_is_indexed(%struct._GimpDrawable*) #3

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_threshold_config_get_type() #1

declare i32 @gimp_use_gegl(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #3

declare void @gimp_drawable_apply_operation(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GeglNode*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_object_unref(i8*) #3

declare void @gimp_threshold_config_to_cruft(%struct._GimpThresholdConfig*, %struct._Threshold*, i32) #3

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #3

declare void @gimp_drawable_process(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, void ()*, i8*) #3

declare void @threshold(%struct._Threshold*, %struct._PixelRegion*, %struct._PixelRegion*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
