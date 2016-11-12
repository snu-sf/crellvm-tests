; ModuleID = './app/core/gimpimage-scale.bc'
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpProgress = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpUndo = type opaque
%struct._GimpSubProgress = type { %struct._GObject, %struct._GimpProgress*, double, double }
%struct._GimpChannel = type opaque
%struct._GimpGroupLayer = type { %struct._GimpLayer }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpUndoStack = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_scale = private unnamed_addr constant [17 x i8] c"gimp_image_scale\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"new_width > 0 && new_height > 0\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"undo-type\04Scale Image\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@__func__.gimp_image_scale_check = private unnamed_addr constant [23 x i8] c"gimp_image_scale_check\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"new_memsize != NULL\00", align 1
@gimp_log_flags = external global i32, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"scalable_size = %li  scaled_size = %li\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"old_size = %li  new_size = %li\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_scale(%struct._GimpImage* %image, i32 %new_width, i32 %new_height, i32 %interpolation_type, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %interpolation_type.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %sub_progress = alloca %struct._GimpProgress*, align 8
  %all_layers = alloca %struct._GList*, align 8
  %all_channels = alloca %struct._GList*, align 8
  %all_vectors = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %offset_x = alloca i32, align 4
  %offset_y = alloca i32, align 4
  %img_scale_w = alloca double, align 8
  %img_scale_h = alloca double, align 8
  %progress_steps = alloca i32, align 4
  %progress_current = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst22 = alloca %struct._GTypeInstance*, align 8
  %__t24 = alloca i64, align 8
  %__r27 = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %item79 = alloca %struct._GimpItem*, align 8
  %item102 = alloca %struct._GimpItem*, align 8
  %guide = alloca %struct._GimpGuide*, align 8
  %position = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %interpolation_type, i32* %interpolation_type.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double 1.000000e+00, double* %img_scale_w, align 8
  store double 1.000000e+00, double* %img_scale_h, align 8
  store i32 0, i32* %progress_current, align 4
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_image_scale, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %new_width.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.else.16

land.lhs.true.13:                                 ; preds = %do.body.11
  %14 = load i32, i32* %new_height.addr, align 4
  %cmp14 = icmp sgt i32 %14, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true.13
  br label %if.end.17

if.else.16:                                       ; preds = %land.lhs.true.13, %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_image_scale, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %15 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp20 = icmp eq %struct._GimpProgress* %15, null
  br i1 %cmp20, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.19
  %16 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %17 = bitcast %struct._GimpProgress* %16 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %17, %struct._GTypeInstance** %__inst22, align 8
  %call25 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call25, i64* %__t24, align 8
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %tobool28 = icmp ne %struct._GTypeInstance* %18, null
  br i1 %tobool28, label %if.else.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r27, align 4
  br label %if.end.41

if.else.30:                                       ; preds = %lor.lhs.false
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class31 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class31, align 8
  %tobool32 = icmp ne %struct._GTypeClass* %20, null
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.else.30
  %21 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %g_class34 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %21, i32 0, i32 0
  %22 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class34, align 8
  %g_type35 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %22, i32 0, i32 0
  %23 = load i64, i64* %g_type35, align 8
  %24 = load i64, i64* %__t24, align 8
  %cmp36 = icmp eq i64 %23, %24
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %__r27, align 4
  br label %if.end.40

if.else.38:                                       ; preds = %land.lhs.true.33, %if.else.30
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst22, align 8
  %26 = load i64, i64* %__t24, align 8
  %call39 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %25, i64 %26) #5
  store i32 %call39, i32* %__r27, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.29
  %27 = load i32, i32* %__r27, align 4
  store i32 %27, i32* %tmp42
  %28 = load i32, i32* %tmp42
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41, %do.body.19
  br label %if.end.46

if.else.45:                                       ; preds = %if.end.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_image_scale, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %30)
  %31 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call48 = call %struct._GimpProgress* @gimp_sub_progress_new(%struct._GimpProgress* %31)
  store %struct._GimpProgress* %call48, %struct._GimpProgress** %sub_progress, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call49 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %32)
  store %struct._GList* %call49, %struct._GList** %all_layers, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call50 = call %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage* %33)
  store %struct._GList* %call50, %struct._GList** %all_channels, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage* %34)
  store %struct._GList* %call51, %struct._GList** %all_vectors, align 8
  %35 = load %struct._GList*, %struct._GList** %all_layers, align 8
  %call52 = call i32 @g_list_length(%struct._GList* %35)
  %36 = load %struct._GList*, %struct._GList** %all_channels, align 8
  %call53 = call i32 @g_list_length(%struct._GList* %36)
  %add = add i32 %call52, %call53
  %37 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  %call54 = call i32 @g_list_length(%struct._GList* %37)
  %add55 = add i32 %add, %call54
  %add56 = add i32 %add55, 1
  store i32 %add56, i32* %progress_steps, align 4
  %38 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %39 = bitcast %struct._GimpImage* %38 to %struct._GTypeInstance*
  %call57 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call57 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %40)
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call58 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 10)
  %call59 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %41, i32 1, i8* %call58)
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call60 = call i32 @gimp_image_get_width(%struct._GimpImage* %42)
  store i32 %call60, i32* %old_width, align 4
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call61 = call i32 @gimp_image_get_height(%struct._GimpImage* %43)
  store i32 %call61, i32* %old_height, align 4
  %44 = load i32, i32* %new_width.addr, align 4
  %conv = sitofp i32 %44 to double
  %45 = load i32, i32* %old_width, align 4
  %conv62 = sitofp i32 %45 to double
  %div = fdiv double %conv, %conv62
  store double %div, double* %img_scale_w, align 8
  %46 = load i32, i32* %new_height.addr, align 4
  %conv63 = sitofp i32 %46 to double
  %47 = load i32, i32* %old_height, align 4
  %conv64 = sitofp i32 %47 to double
  %div65 = fdiv double %conv63, %conv64
  store double %div65, double* %img_scale_h, align 8
  %48 = load i32, i32* %old_width, align 4
  %49 = load i32, i32* %new_width.addr, align 4
  %sub = sub nsw i32 %48, %49
  %div66 = sdiv i32 %sub, 2
  store i32 %div66, i32* %offset_x, align 4
  %50 = load i32, i32* %old_height, align 4
  %51 = load i32, i32* %new_height.addr, align 4
  %sub67 = sub nsw i32 %50, %51
  %div68 = sdiv i32 %sub67, 2
  store i32 %div68, i32* %offset_y, align 4
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %53 = load i32, i32* %offset_x, align 4
  %54 = load i32, i32* %offset_y, align 4
  %55 = load i32, i32* %new_width.addr, align 4
  %56 = load i32, i32* %new_height.addr, align 4
  %call69 = call %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage* %52, i8* null, i32 %53, i32 %54, i32 %55, i32 %56)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %58 = bitcast %struct._GimpImage* %57 to i8*
  %59 = load i32, i32* %new_width.addr, align 4
  %60 = load i32, i32* %new_height.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %60, i8* null)
  %61 = load %struct._GList*, %struct._GList** %all_channels, align 8
  store %struct._GList* %61, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.47
  %62 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool70 = icmp ne %struct._GList* %62, null
  br i1 %tobool70, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 0
  %64 = load i8*, i8** %data, align 8
  %65 = bitcast i8* %64 to %struct._GimpItem*
  store %struct._GimpItem* %65, %struct._GimpItem** %item, align 8
  %66 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %67 = bitcast %struct._GimpProgress* %66 to %struct._GTypeInstance*
  %call72 = call i64 @gimp_sub_progress_get_type() #4
  %call73 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call72)
  %68 = bitcast %struct._GTypeInstance* %call73 to %struct._GimpSubProgress*
  %69 = load i32, i32* %progress_current, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %progress_current, align 4
  %70 = load i32, i32* %progress_steps, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %68, i32 %69, i32 %70)
  %71 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %72 = load i32, i32* %new_width.addr, align 4
  %73 = load i32, i32* %new_height.addr, align 4
  %74 = load i32, i32* %interpolation_type.addr, align 4
  %75 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  call void @gimp_item_scale(%struct._GimpItem* %71, i32 %72, i32 %73, i32 0, i32 0, i32 %74, %struct._GimpProgress* %75)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool74 = icmp ne %struct._GList* %76, null
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %77 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %77, i32 0, i32 1
  %78 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %78, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %79 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  store %struct._GList* %79, %struct._GList** %list, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %cond.end.89, %for.end
  %80 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool76 = icmp ne %struct._GList* %80, null
  br i1 %tobool76, label %for.body.77, label %for.end.91

for.body.77:                                      ; preds = %for.cond.75
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %data80 = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 0
  %82 = load i8*, i8** %data80, align 8
  %83 = bitcast i8* %82 to %struct._GimpItem*
  store %struct._GimpItem* %83, %struct._GimpItem** %item79, align 8
  %84 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %85 = bitcast %struct._GimpProgress* %84 to %struct._GTypeInstance*
  %call81 = call i64 @gimp_sub_progress_get_type() #4
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %85, i64 %call81)
  %86 = bitcast %struct._GTypeInstance* %call82 to %struct._GimpSubProgress*
  %87 = load i32, i32* %progress_current, align 4
  %inc83 = add nsw i32 %87, 1
  store i32 %inc83, i32* %progress_current, align 4
  %88 = load i32, i32* %progress_steps, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %86, i32 %87, i32 %88)
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item79, align 8
  %90 = load i32, i32* %new_width.addr, align 4
  %91 = load i32, i32* %new_height.addr, align 4
  %92 = load i32, i32* %interpolation_type.addr, align 4
  %93 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  call void @gimp_item_scale(%struct._GimpItem* %89, i32 %90, i32 %91, i32 0, i32 0, i32 %92, %struct._GimpProgress* %93)
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.77
  %94 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool85 = icmp ne %struct._GList* %94, null
  br i1 %tobool85, label %cond.true.86, label %cond.false.88

cond.true.86:                                     ; preds = %for.inc.84
  %95 = load %struct._GList*, %struct._GList** %list, align 8
  %next87 = getelementptr inbounds %struct._GList, %struct._GList* %95, i32 0, i32 1
  %96 = load %struct._GList*, %struct._GList** %next87, align 8
  br label %cond.end.89

cond.false.88:                                    ; preds = %for.inc.84
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.88, %cond.true.86
  %cond90 = phi %struct._GList* [ %96, %cond.true.86 ], [ null, %cond.false.88 ]
  store %struct._GList* %cond90, %struct._GList** %list, align 8
  br label %for.cond.75

for.end.91:                                       ; preds = %for.cond.75
  %97 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %98 = bitcast %struct._GimpProgress* %97 to %struct._GTypeInstance*
  %call92 = call i64 @gimp_sub_progress_get_type() #4
  %call93 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %98, i64 %call92)
  %99 = bitcast %struct._GTypeInstance* %call93 to %struct._GimpSubProgress*
  %100 = load i32, i32* %progress_current, align 4
  %inc94 = add nsw i32 %100, 1
  store i32 %inc94, i32* %progress_current, align 4
  %101 = load i32, i32* %progress_steps, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %99, i32 %100, i32 %101)
  %102 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call95 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %102)
  %103 = bitcast %struct._GimpChannel* %call95 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_item_get_type() #4
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %103, i64 %call96)
  %104 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpItem*
  %105 = load i32, i32* %new_width.addr, align 4
  %106 = load i32, i32* %new_height.addr, align 4
  %107 = load i32, i32* %interpolation_type.addr, align 4
  %108 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  call void @gimp_item_scale(%struct._GimpItem* %104, i32 %105, i32 %106, i32 0, i32 0, i32 %107, %struct._GimpProgress* %108)
  %109 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %109, %struct._GList** %list, align 8
  br label %for.cond.98

for.cond.98:                                      ; preds = %cond.end.126, %for.end.91
  %110 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool99 = icmp ne %struct._GList* %110, null
  br i1 %tobool99, label %for.body.100, label %for.end.128

for.body.100:                                     ; preds = %for.cond.98
  %111 = load %struct._GList*, %struct._GList** %list, align 8
  %data103 = getelementptr inbounds %struct._GList, %struct._GList* %111, i32 0, i32 0
  %112 = load i8*, i8** %data103, align 8
  %113 = bitcast i8* %112 to %struct._GimpItem*
  store %struct._GimpItem* %113, %struct._GimpItem** %item102, align 8
  %114 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %115 = bitcast %struct._GimpProgress* %114 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_sub_progress_get_type() #4
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %115, i64 %call104)
  %116 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpSubProgress*
  %117 = load i32, i32* %progress_current, align 4
  %inc106 = add nsw i32 %117, 1
  store i32 %inc106, i32* %progress_current, align 4
  %118 = load i32, i32* %progress_steps, align 4
  call void @gimp_sub_progress_set_step(%struct._GimpSubProgress* %116, i32 %117, i32 %118)
  %119 = load %struct._GimpItem*, %struct._GimpItem** %item102, align 8
  %120 = bitcast %struct._GimpItem* %119 to %struct._GTypeInstance*
  %call107 = call i64 @gimp_viewable_get_type() #4
  %call108 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call107)
  %121 = bitcast %struct._GTypeInstance* %call108 to %struct._GimpViewable*
  %call109 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %121)
  %tobool110 = icmp ne %struct._GimpContainer* %call109, null
  br i1 %tobool110, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %for.body.100
  %122 = load %struct._GimpItem*, %struct._GimpItem** %item102, align 8
  %123 = bitcast %struct._GimpItem* %122 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_group_layer_get_type() #4
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %123, i64 %call112)
  %124 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpGroupLayer*
  call void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer* %124, i32 0)
  br label %for.inc.121

if.end.114:                                       ; preds = %for.body.100
  %125 = load %struct._GimpItem*, %struct._GimpItem** %item102, align 8
  %126 = load double, double* %img_scale_w, align 8
  %127 = load double, double* %img_scale_h, align 8
  %128 = load i32, i32* %interpolation_type.addr, align 4
  %129 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %call115 = call i32 @gimp_item_scale_by_factors(%struct._GimpItem* %125, double %126, double %127, i32 %128, %struct._GimpProgress* %129)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.120, label %if.then.117

if.then.117:                                      ; preds = %if.end.114
  %130 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %131 = load %struct._GimpItem*, %struct._GimpItem** %item102, align 8
  %132 = bitcast %struct._GimpItem* %131 to %struct._GTypeInstance*
  %call118 = call i64 @gimp_layer_get_type() #4
  %call119 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call118)
  %133 = bitcast %struct._GTypeInstance* %call119 to %struct._GimpLayer*
  call void @gimp_image_remove_layer(%struct._GimpImage* %130, %struct._GimpLayer* %133, i32 1, %struct._GimpLayer* null)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.114
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120, %if.then.111
  %134 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool122 = icmp ne %struct._GList* %134, null
  br i1 %tobool122, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %for.inc.121
  %135 = load %struct._GList*, %struct._GList** %list, align 8
  %next124 = getelementptr inbounds %struct._GList, %struct._GList* %135, i32 0, i32 1
  %136 = load %struct._GList*, %struct._GList** %next124, align 8
  br label %cond.end.126

cond.false.125:                                   ; preds = %for.inc.121
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.125, %cond.true.123
  %cond127 = phi %struct._GList* [ %136, %cond.true.123 ], [ null, %cond.false.125 ]
  store %struct._GList* %cond127, %struct._GList** %list, align 8
  br label %for.cond.98

for.end.128:                                      ; preds = %for.cond.98
  %137 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %137, %struct._GList** %list, align 8
  br label %for.cond.129

for.cond.129:                                     ; preds = %cond.end.143, %for.end.128
  %138 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool130 = icmp ne %struct._GList* %138, null
  br i1 %tobool130, label %for.body.131, label %for.end.145

for.body.131:                                     ; preds = %for.cond.129
  %139 = load %struct._GList*, %struct._GList** %list, align 8
  %data132 = getelementptr inbounds %struct._GList, %struct._GList* %139, i32 0, i32 0
  %140 = load i8*, i8** %data132, align 8
  %141 = bitcast i8* %140 to %struct._GimpViewable*
  %call133 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %141)
  %tobool134 = icmp ne %struct._GimpContainer* %call133, null
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %for.body.131
  %142 = load %struct._GList*, %struct._GList** %list, align 8
  %data136 = getelementptr inbounds %struct._GList, %struct._GList* %142, i32 0, i32 0
  %143 = load i8*, i8** %data136, align 8
  %144 = bitcast i8* %143 to %struct._GimpGroupLayer*
  call void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer* %144, i32 0)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %for.body.131
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %145 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool139 = icmp ne %struct._GList* %145, null
  br i1 %tobool139, label %cond.true.140, label %cond.false.142

cond.true.140:                                    ; preds = %for.inc.138
  %146 = load %struct._GList*, %struct._GList** %list, align 8
  %next141 = getelementptr inbounds %struct._GList, %struct._GList* %146, i32 0, i32 1
  %147 = load %struct._GList*, %struct._GList** %next141, align 8
  br label %cond.end.143

cond.false.142:                                   ; preds = %for.inc.138
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.142, %cond.true.140
  %cond144 = phi %struct._GList* [ %147, %cond.true.140 ], [ null, %cond.false.142 ]
  store %struct._GList* %cond144, %struct._GList** %list, align 8
  br label %for.cond.129

for.end.145:                                      ; preds = %for.cond.129
  %148 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call146 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %148)
  store %struct._GList* %call146, %struct._GList** %list, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %cond.end.164, %for.end.145
  %149 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool148 = icmp ne %struct._GList* %149, null
  br i1 %tobool148, label %for.body.149, label %for.end.166

for.body.149:                                     ; preds = %for.cond.147
  %150 = load %struct._GList*, %struct._GList** %list, align 8
  %data151 = getelementptr inbounds %struct._GList, %struct._GList* %150, i32 0, i32 0
  %151 = load i8*, i8** %data151, align 8
  %152 = bitcast i8* %151 to %struct._GimpGuide*
  store %struct._GimpGuide* %152, %struct._GimpGuide** %guide, align 8
  %153 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call153 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %153)
  store i32 %call153, i32* %position, align 4
  %154 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call154 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %154)
  switch i32 %call154, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.156
  ]

sw.bb:                                            ; preds = %for.body.149
  %155 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %156 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %157 = load i32, i32* %position, align 4
  %158 = load i32, i32* %new_height.addr, align 4
  %mul = mul nsw i32 %157, %158
  %159 = load i32, i32* %old_height, align 4
  %div155 = sdiv i32 %mul, %159
  call void @gimp_image_move_guide(%struct._GimpImage* %155, %struct._GimpGuide* %156, i32 %div155, i32 1)
  br label %sw.epilog

sw.bb.156:                                        ; preds = %for.body.149
  %160 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %161 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %162 = load i32, i32* %position, align 4
  %163 = load i32, i32* %new_width.addr, align 4
  %mul157 = mul nsw i32 %162, %163
  %164 = load i32, i32* %old_width, align 4
  %div158 = sdiv i32 %mul157, %164
  call void @gimp_image_move_guide(%struct._GimpImage* %160, %struct._GimpGuide* %161, i32 %div158, i32 1)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.149
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.156, %sw.bb
  br label %for.inc.159

for.inc.159:                                      ; preds = %sw.epilog
  %165 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool160 = icmp ne %struct._GList* %165, null
  br i1 %tobool160, label %cond.true.161, label %cond.false.163

cond.true.161:                                    ; preds = %for.inc.159
  %166 = load %struct._GList*, %struct._GList** %list, align 8
  %next162 = getelementptr inbounds %struct._GList, %struct._GList* %166, i32 0, i32 1
  %167 = load %struct._GList*, %struct._GList** %next162, align 8
  br label %cond.end.164

cond.false.163:                                   ; preds = %for.inc.159
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.163, %cond.true.161
  %cond165 = phi %struct._GList* [ %167, %cond.true.161 ], [ null, %cond.false.163 ]
  store %struct._GList* %cond165, %struct._GList** %list, align 8
  br label %for.cond.147

for.end.166:                                      ; preds = %for.cond.147
  %168 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call167 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %168)
  store %struct._GList* %call167, %struct._GList** %list, align 8
  br label %for.cond.168

for.cond.168:                                     ; preds = %cond.end.182, %for.end.166
  %169 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool169 = icmp ne %struct._GList* %169, null
  br i1 %tobool169, label %for.body.170, label %for.end.184

for.body.170:                                     ; preds = %for.cond.168
  %170 = load %struct._GList*, %struct._GList** %list, align 8
  %data172 = getelementptr inbounds %struct._GList, %struct._GList* %170, i32 0, i32 0
  %171 = load i8*, i8** %data172, align 8
  %172 = bitcast i8* %171 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %172, %struct._GimpSamplePoint** %sample_point, align 8
  %173 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %174 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %175 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %175, i32 0, i32 2
  %176 = load i32, i32* %x, align 4
  %177 = load i32, i32* %new_width.addr, align 4
  %mul173 = mul nsw i32 %176, %177
  %178 = load i32, i32* %old_width, align 4
  %div174 = sdiv i32 %mul173, %178
  %179 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %179, i32 0, i32 3
  %180 = load i32, i32* %y, align 4
  %181 = load i32, i32* %new_height.addr, align 4
  %mul175 = mul nsw i32 %180, %181
  %182 = load i32, i32* %old_height, align 4
  %div176 = sdiv i32 %mul175, %182
  call void @gimp_image_move_sample_point(%struct._GimpImage* %173, %struct._GimpSamplePoint* %174, i32 %div174, i32 %div176, i32 1)
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.170
  %183 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool178 = icmp ne %struct._GList* %183, null
  br i1 %tobool178, label %cond.true.179, label %cond.false.181

cond.true.179:                                    ; preds = %for.inc.177
  %184 = load %struct._GList*, %struct._GList** %list, align 8
  %next180 = getelementptr inbounds %struct._GList, %struct._GList* %184, i32 0, i32 1
  %185 = load %struct._GList*, %struct._GList** %next180, align 8
  br label %cond.end.182

cond.false.181:                                   ; preds = %for.inc.177
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.181, %cond.true.179
  %cond183 = phi %struct._GList* [ %185, %cond.true.179 ], [ null, %cond.false.181 ]
  store %struct._GList* %cond183, %struct._GList** %list, align 8
  br label %for.cond.168

for.end.184:                                      ; preds = %for.cond.168
  %186 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call185 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %186)
  %187 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %187)
  %188 = load %struct._GList*, %struct._GList** %all_channels, align 8
  call void @g_list_free(%struct._GList* %188)
  %189 = load %struct._GList*, %struct._GList** %all_vectors, align 8
  call void @g_list_free(%struct._GList* %189)
  %190 = load %struct._GimpProgress*, %struct._GimpProgress** %sub_progress, align 8
  %191 = bitcast %struct._GimpProgress* %190 to i8*
  call void @g_object_unref(i8* %191)
  %192 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %193 = load i32, i32* %offset_x, align 4
  %sub186 = sub nsw i32 0, %193
  %194 = load i32, i32* %offset_y, align 4
  %sub187 = sub nsw i32 0, %194
  %195 = load i32, i32* %old_width, align 4
  %196 = load i32, i32* %old_height, align 4
  call void @gimp_image_size_changed_detailed(%struct._GimpImage* %192, i32 %sub186, i32 %sub187, i32 %195, i32 %196)
  %197 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %198 = bitcast %struct._GimpImage* %197 to %struct._GTypeInstance*
  %call188 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %198, i64 80)
  %199 = bitcast %struct._GTypeInstance* %call188 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %199)
  %200 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp189 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %200, i32 0, i32 1
  %201 = load %struct._Gimp*, %struct._Gimp** %gimp189, align 8
  call void @gimp_unset_busy(%struct._Gimp* %201)
  br label %return

return:                                           ; preds = %for.end.184, %if.else.45, %if.else.16, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gimp_set_busy(%struct._Gimp*) #3

declare %struct._GimpProgress* @gimp_sub_progress_new(%struct._GimpProgress*) #3

declare %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_channel_list(%struct._GimpImage*) #3

declare %struct._GList* @gimp_image_get_vectors_list(%struct._GimpImage*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage*, i8*, i32, i32, i32, i32) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare void @gimp_sub_progress_set_step(%struct._GimpSubProgress*, i32, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_sub_progress_get_type() #1

declare void @gimp_item_scale(%struct._GimpItem*, i32, i32, i32, i32, i32, %struct._GimpProgress*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gimp_group_layer_suspend_resize(%struct._GimpGroupLayer*, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_group_layer_get_type() #1

declare i32 @gimp_item_scale_by_factors(%struct._GimpItem*, double, double, i32, %struct._GimpProgress*) #3

declare void @gimp_image_remove_layer(%struct._GimpImage*, %struct._GimpLayer*, i32, %struct._GimpLayer*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

declare void @gimp_group_layer_resume_resize(%struct._GimpGroupLayer*, i32) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare void @gimp_image_move_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @g_list_free(%struct._GList*) #3

declare void @g_object_unref(i8*) #3

declare void @gimp_image_size_changed_detailed(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_image_scale_check(%struct._GimpImage* %image, i32 %new_width, i32 %new_height, i64 %max_memsize, i64* %new_memsize) #0 {
entry:
  %retval = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %max_memsize.addr = alloca i64, align 8
  %new_memsize.addr = alloca i64*, align 8
  %drawables = alloca %struct._GList*, align 8
  %all_layers = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %current_size = alloca i64, align 8
  %scalable_size = alloca i64, align 8
  %scaled_size = alloca i64, align 8
  %undo_size = alloca i64, align 8
  %redo_size = alloca i64, align 8
  %fixed_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %drawable = alloca %struct._GimpDrawable*, align 8
  %width = alloca double, align 8
  %height = alloca double, align 8
  %item = alloca %struct._GimpItem*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i64 %max_memsize, i64* %max_memsize.addr, align 8
  store i64* %new_memsize, i64** %new_memsize.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_scale_check, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i64*, i64** %new_memsize.addr, align 8
  %cmp12 = icmp ne i64* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_scale_check, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call17)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  %call19 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %16, i64* null)
  store i64 %call19, i64* %current_size, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call20 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %17, i32 3, i32 1)
  store %struct._GList* %call20, %struct._GList** %drawables, align 8
  %18 = load %struct._GList*, %struct._GList** %drawables, align 8
  %call21 = call %struct._GList* @gimp_image_item_list_filter(%struct._GList* %18)
  store %struct._GList* %call21, %struct._GList** %drawables, align 8
  %19 = load %struct._GList*, %struct._GList** %drawables, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call22 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %20)
  %21 = bitcast %struct._GimpChannel* %call22 to i8*
  %call23 = call %struct._GList* @g_list_prepend(%struct._GList* %19, i8* %21)
  store %struct._GList* %call23, %struct._GList** %drawables, align 8
  store i64 0, i64* %scalable_size, align 8
  store i64 0, i64* %scaled_size, align 8
  %22 = load %struct._GList*, %struct._GList** %drawables, align 8
  store %struct._GList* %22, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.16
  %23 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool24 = icmp ne %struct._GList* %23, null
  br i1 %tobool24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0
  %25 = load i8*, i8** %data, align 8
  %26 = bitcast i8* %25 to %struct._GimpDrawable*
  store %struct._GimpDrawable* %26, %struct._GimpDrawable** %drawable, align 8
  %27 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %28 = bitcast %struct._GimpDrawable* %27 to %struct._GTypeInstance*
  %call27 = call i64 @gimp_item_get_type() #4
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call27)
  %29 = bitcast %struct._GTypeInstance* %call28 to %struct._GimpItem*
  %call29 = call i32 @gimp_item_get_width(%struct._GimpItem* %29)
  %conv = sitofp i32 %call29 to double
  store double %conv, double* %width, align 8
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call31)
  %32 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_get_height(%struct._GimpItem* %32)
  %conv34 = sitofp i32 %call33 to double
  store double %conv34, double* %height, align 8
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = load double, double* %width, align 8
  %conv35 = fptosi double %34 to i32
  %35 = load double, double* %height, align 8
  %conv36 = fptosi double %35 to i32
  %call37 = call i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable* %33, i32 %conv35, i32 %conv36)
  %36 = load i64, i64* %scalable_size, align 8
  %add = add nsw i64 %36, %call37
  store i64 %add, i64* %scalable_size, align 8
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = load double, double* %width, align 8
  %39 = load i32, i32* %new_width.addr, align 4
  %conv38 = sitofp i32 %39 to double
  %mul = fmul double %38, %conv38
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call39 = call i32 @gimp_image_get_width(%struct._GimpImage* %40)
  %conv40 = sitofp i32 %call39 to double
  %div = fdiv double %mul, %conv40
  %conv41 = fptosi double %div to i32
  %41 = load double, double* %height, align 8
  %42 = load i32, i32* %new_height.addr, align 4
  %conv42 = sitofp i32 %42 to double
  %mul43 = fmul double %41, %conv42
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call44 = call i32 @gimp_image_get_height(%struct._GimpImage* %43)
  %conv45 = sitofp i32 %call44 to double
  %div46 = fdiv double %mul43, %conv45
  %conv47 = fptosi double %div46 to i32
  %call48 = call i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable* %37, i32 %conv41, i32 %conv47)
  %44 = load i64, i64* %scaled_size, align 8
  %add49 = add nsw i64 %44, %call48
  store i64 %add49, i64* %scaled_size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool50 = icmp ne %struct._GList* %45, null
  br i1 %tobool50, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %46, i32 0, i32 1
  %47 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %47, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load %struct._GList*, %struct._GList** %drawables, align 8
  call void @g_list_free(%struct._GList* %48)
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call51 = call i32 @gimp_image_base_type(%struct._GimpImage* %49)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call52 = call i32 @gimp_image_get_width(%struct._GimpImage* %50)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call53 = call i32 @gimp_image_get_height(%struct._GimpImage* %51)
  %call54 = call i64 @gimp_projection_estimate_memsize(i32 %call51, i32 %call52, i32 %call53)
  %52 = load i64, i64* %scalable_size, align 8
  %add55 = add nsw i64 %52, %call54
  store i64 %add55, i64* %scalable_size, align 8
  %53 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call56 = call i32 @gimp_image_base_type(%struct._GimpImage* %53)
  %54 = load i32, i32* %new_width.addr, align 4
  %55 = load i32, i32* %new_height.addr, align 4
  %call57 = call i64 @gimp_projection_estimate_memsize(i32 %call56, i32 %54, i32 %55)
  %56 = load i64, i64* %scaled_size, align 8
  %add58 = add nsw i64 %56, %call57
  store i64 %add58, i64* %scaled_size, align 8
  br label %do.body.59

do.body.59:                                       ; preds = %for.end
  %57 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %57, 128
  %tobool60 = icmp ne i32 %and, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body.59
  %58 = load i64, i64* %scalable_size, align 8
  %59 = load i64, i64* %scaled_size, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_scale_check, i32 0, i32 0), i32 327, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i64 %58, i64 %59)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %do.body.59
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %60 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call64 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %60)
  %61 = bitcast %struct._GimpUndoStack* %call64 to %struct._GTypeInstance*
  %call65 = call i64 @gimp_object_get_type() #4
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call65)
  %62 = bitcast %struct._GTypeInstance* %call66 to %struct._GimpObject*
  %call67 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %62, i64* null)
  store i64 %call67, i64* %undo_size, align 8
  %63 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %63)
  %64 = bitcast %struct._GimpUndoStack* %call68 to %struct._GTypeInstance*
  %call69 = call i64 @gimp_object_get_type() #4
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 %call69)
  %65 = bitcast %struct._GTypeInstance* %call70 to %struct._GimpObject*
  %call71 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %65, i64* null)
  store i64 %call71, i64* %redo_size, align 8
  %66 = load i64, i64* %current_size, align 8
  %67 = load i64, i64* %undo_size, align 8
  %sub = sub nsw i64 %66, %67
  %68 = load i64, i64* %redo_size, align 8
  %sub72 = sub nsw i64 %sub, %68
  %69 = load i64, i64* %scalable_size, align 8
  %sub73 = sub nsw i64 %sub72, %69
  store i64 %sub73, i64* %fixed_size, align 8
  %70 = load i64, i64* %fixed_size, align 8
  %71 = load i64, i64* %scaled_size, align 8
  %add74 = add nsw i64 %70, %71
  store i64 %add74, i64* %new_size, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.63
  %72 = load i32, i32* @gimp_log_flags, align 4
  %and76 = and i32 %72, 128
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %do.body.75
  %73 = load i64, i64* %current_size, align 8
  %74 = load i64, i64* %undo_size, align 8
  %sub79 = sub nsw i64 %73, %74
  %75 = load i64, i64* %redo_size, align 8
  %sub80 = sub nsw i64 %sub79, %75
  %76 = load i64, i64* %new_size, align 8
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_image_scale_check, i32 0, i32 0), i32 341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), i64 %sub80, i64 %76)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %do.body.75
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %77 = load i64, i64* %new_size, align 8
  %78 = load i64*, i64** %new_memsize.addr, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %new_size, align 8
  %80 = load i64, i64* %current_size, align 8
  %cmp83 = icmp sgt i64 %79, %80
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.89

land.lhs.true.85:                                 ; preds = %do.end.82
  %81 = load i64, i64* %new_size, align 8
  %82 = load i64, i64* %max_memsize.addr, align 8
  %cmp86 = icmp sgt i64 %81, %82
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true.85
  store i32 2, i32* %retval
  br label %return

if.end.89:                                        ; preds = %land.lhs.true.85, %do.end.82
  %83 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call90 = call %struct._GList* @gimp_image_get_layer_list(%struct._GimpImage* %83)
  store %struct._GList* %call90, %struct._GList** %all_layers, align 8
  %84 = load %struct._GList*, %struct._GList** %all_layers, align 8
  store %struct._GList* %84, %struct._GList** %list, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %cond.end.111, %if.end.89
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool92 = icmp ne %struct._GList* %85, null
  br i1 %tobool92, label %for.body.93, label %for.end.113

for.body.93:                                      ; preds = %for.cond.91
  %86 = load %struct._GList*, %struct._GList** %list, align 8
  %data95 = getelementptr inbounds %struct._GList, %struct._GList* %86, i32 0, i32 0
  %87 = load i8*, i8** %data95, align 8
  %88 = bitcast i8* %87 to %struct._GimpItem*
  store %struct._GimpItem* %88, %struct._GimpItem** %item, align 8
  %89 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %90 = bitcast %struct._GimpItem* %89 to %struct._GTypeInstance*
  %call96 = call i64 @gimp_viewable_get_type() #4
  %call97 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %90, i64 %call96)
  %91 = bitcast %struct._GTypeInstance* %call97 to %struct._GimpViewable*
  %call98 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %91)
  %tobool99 = icmp ne %struct._GimpContainer* %call98, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body.93
  br label %for.inc.106

if.end.101:                                       ; preds = %for.body.93
  %92 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %93 = load i32, i32* %new_width.addr, align 4
  %94 = load i32, i32* %new_height.addr, align 4
  %call102 = call i32 @gimp_item_check_scaling(%struct._GimpItem* %92, i32 %93, i32 %94)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.105, label %if.then.104

if.then.104:                                      ; preds = %if.end.101
  %95 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %95)
  store i32 1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.101
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105, %if.then.100
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool107 = icmp ne %struct._GList* %96, null
  br i1 %tobool107, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %for.inc.106
  %97 = load %struct._GList*, %struct._GList** %list, align 8
  %next109 = getelementptr inbounds %struct._GList, %struct._GList* %97, i32 0, i32 1
  %98 = load %struct._GList*, %struct._GList** %next109, align 8
  br label %cond.end.111

cond.false.110:                                   ; preds = %for.inc.106
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.110, %cond.true.108
  %cond112 = phi %struct._GList* [ %98, %cond.true.108 ], [ null, %cond.false.110 ]
  store %struct._GList* %cond112, %struct._GList** %list, align 8
  br label %for.cond.91

for.end.113:                                      ; preds = %for.cond.91
  %99 = load %struct._GList*, %struct._GList** %all_layers, align 8
  call void @g_list_free(%struct._GList* %99)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.113, %if.then.104, %if.then.88, %if.else.14, %if.else.9
  %100 = load i32, i32* %retval
  ret i32 %100
}

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage*, i32, i32) #3

declare %struct._GList* @gimp_image_item_list_filter(%struct._GList*) #3

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i64 @gimp_drawable_estimate_memsize(%struct._GimpDrawable*, i32, i32) #3

declare i64 @gimp_projection_estimate_memsize(i32, i32, i32) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #3

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #3

declare i32 @gimp_item_check_scaling(%struct._GimpItem*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
