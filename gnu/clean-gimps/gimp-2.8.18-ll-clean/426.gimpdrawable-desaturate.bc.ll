; ModuleID = './app/core/gimpdrawable-desaturate.bc'
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
%struct._GeglNode = type opaque
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
@__func__.gimp_drawable_desaturate = private unnamed_addr constant [25 x i8] c"gimp_drawable_desaturate\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"GIMP_IS_DRAWABLE (drawable)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"gimp_drawable_is_rgb (drawable)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"gimp_item_is_attached (GIMP_ITEM (drawable))\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gimp:desaturate\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Desaturate\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_drawable_desaturate(%struct._GimpDrawable* %drawable, %struct._GimpProgress* %progress, i32 %mode) #0 {
entry:
  %drawable.addr = alloca %struct._GimpDrawable*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %mode.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst21 = alloca %struct._GTypeInstance*, align 8
  %__t23 = alloca i64, align 8
  %__r26 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %desaturate = alloca %struct._GeglNode*, align 8
  %config = alloca %struct._GObject*, align 8
  store %struct._GimpDrawable* %drawable, %struct._GimpDrawable** %drawable.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_drawable_desaturate, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.71

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %call12 = call i32 @gimp_drawable_is_rgb(%struct._GimpDrawable* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_drawable_desaturate, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.71

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp19 = icmp eq %struct._GimpProgress* %14, null
  br i1 %cmp19, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.18
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %16 = bitcast %struct._GimpProgress* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst21, align 8
  %call24 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call24, i64* %__t23, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %tobool27 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool27, label %if.else.29, label %if.then.28

if.then.28:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r26, align 4
  br label %if.end.40

if.else.29:                                       ; preds = %lor.lhs.false
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %tobool31 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.else.37

land.lhs.true.32:                                 ; preds = %if.else.29
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %g_class33 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class33, align 8
  %g_type34 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type34, align 8
  %23 = load i64, i64* %__t23, align 8
  %cmp35 = icmp eq i64 %22, %23
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %__r26, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %land.lhs.true.32, %if.else.29
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst21, align 8
  %25 = load i64, i64* %__t23, align 8
  %call38 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #6
  store i32 %call38, i32* %__r26, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.28
  %26 = load i32, i32* %__r26, align 4
  store i32 %26, i32* %tmp41
  %27 = load i32, i32* %tmp41
  %tobool42 = icmp ne i32 %27, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.end.40, %do.body.18
  br label %if.end.45

if.else.44:                                       ; preds = %if.end.40
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_drawable_desaturate, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.71

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %29 = bitcast %struct._GimpDrawable* %28 to %struct._GTypeInstance*
  %call48 = call i64 @gimp_item_get_type() #5
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call48)
  %30 = bitcast %struct._GTypeInstance* %call49 to %struct._GimpItem*
  %call50 = call i32 @gimp_item_is_attached(%struct._GimpItem* %30)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %do.body.47
  br label %if.end.54

if.else.53:                                       ; preds = %do.body.47
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_drawable_desaturate, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.71

if.end.54:                                        ; preds = %if.then.52
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %31 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %32 = bitcast %struct._GimpDrawable* %31 to %struct._GTypeInstance*
  %call56 = call i64 @gimp_item_get_type() #5
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call56)
  %33 = bitcast %struct._GTypeInstance* %call57 to %struct._GimpItem*
  %call58 = call %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem* %33)
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %call58, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call59 = call i32 @gimp_use_gegl(%struct._Gimp* %34)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.69

if.then.61:                                       ; preds = %do.end.55
  %call64 = call i64 @gegl_node_get_type() #5
  %call65 = call i8* (i64, i8*, ...) @g_object_new(i64 %call64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i8* null)
  %35 = bitcast i8* %call65 to %struct._GeglNode*
  store %struct._GeglNode* %35, %struct._GeglNode** %desaturate, align 8
  %call66 = call i64 @gimp_desaturate_config_get_type() #5
  %36 = load i32, i32* %mode.addr, align 4
  %call67 = call i8* (i64, i8*, ...) @g_object_new(i64 %call66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %36, i8* null)
  %37 = bitcast i8* %call67 to %struct._GObject*
  store %struct._GObject* %37, %struct._GObject** %config, align 8
  %38 = load %struct._GeglNode*, %struct._GeglNode** %desaturate, align 8
  %39 = load %struct._GObject*, %struct._GObject** %config, align 8
  call void (%struct._GeglNode*, i8*, ...) @gegl_node_set(%struct._GeglNode* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), %struct._GObject* %39, i8* null)
  %40 = load %struct._GObject*, %struct._GObject** %config, align 8
  %41 = bitcast %struct._GObject* %40 to i8*
  call void @g_object_unref(i8* %41)
  %42 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %43 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call68 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #7
  %44 = load %struct._GeglNode*, %struct._GeglNode** %desaturate, align 8
  call void @gimp_drawable_apply_operation(%struct._GimpDrawable* %42, %struct._GimpProgress* %43, i8* %call68, %struct._GeglNode* %44, i32 1)
  %45 = load %struct._GeglNode*, %struct._GeglNode** %desaturate, align 8
  %46 = bitcast %struct._GeglNode* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %if.end.71

if.else.69:                                       ; preds = %do.end.55
  %47 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable.addr, align 8
  %48 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call70 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #7
  %49 = bitcast i32* %mode.addr to i8*
  call void @gimp_drawable_process(%struct._GimpDrawable* %47, %struct._GimpProgress* %48, i8* %call70, void ()* bitcast (void (i32*, %struct._PixelRegion*, %struct._PixelRegion*)* @desaturate_region to void ()*), i8* %49)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.9, %if.else.15, %if.else.44, %if.else.53, %if.else.69, %if.then.61
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_drawable_is_rgb(%struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare i32 @gimp_item_is_attached(%struct._GimpItem*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_use_gegl(%struct._Gimp*) #3

declare %struct._GimpImage* @gimp_item_get_image(%struct._GimpItem*) #3

declare i8* @g_object_new(i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gegl_node_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_desaturate_config_get_type() #1

declare void @gegl_node_set(%struct._GeglNode*, i8*, ...) #3

declare void @g_object_unref(i8*) #3

declare void @gimp_drawable_apply_operation(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, %struct._GeglNode*, i32) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @gimp_drawable_process(%struct._GimpDrawable*, %struct._GimpProgress*, i8*, void ()*, i8*) #3

declare void @desaturate_region(i32*, %struct._PixelRegion*, %struct._PixelRegion*) #3

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
