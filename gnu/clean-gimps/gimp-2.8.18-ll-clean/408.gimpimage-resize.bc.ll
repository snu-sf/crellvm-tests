; ModuleID = './app/core/gimpimage-resize.bc'
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpProgress = type opaque
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpGuide = type { %struct._GObject, i32, i32, i32 }
%struct._GimpSamplePoint = type { i32, i32, i32, i32 }
%struct._GimpUndo = type opaque
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpDrawablePrivate = type opaque
%struct._GeglNode = type opaque
%struct._BoundSeg = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_image_resize_with_layers = private unnamed_addr constant [30 x i8] c"gimp_image_resize_with_layers\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"GIMP_IS_CONTEXT (context)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"new_width > 0 && new_height > 0\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"progress == NULL || GIMP_IS_PROGRESS (progress)\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"undo-type\04Resize Image\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@__func__.gimp_image_resize_to_layers = private unnamed_addr constant [28 x i8] c"gimp_image_resize_to_layers\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_image_resize(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %2 = load i32, i32* %new_width.addr, align 4
  %3 = load i32, i32* %new_height.addr, align 4
  %4 = load i32, i32* %offset_x.addr, align 4
  %5 = load i32, i32* %offset_y.addr, align 4
  %6 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_resize_with_layers(%struct._GimpImage* %0, %struct._GimpContext* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 0, %struct._GimpProgress* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_image_resize_with_layers(%struct._GimpImage* %image, %struct._GimpContext* %context, i32 %new_width, i32 %new_height, i32 %offset_x, i32 %offset_y, i32 %layer_set, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %new_width.addr = alloca i32, align 4
  %new_height.addr = alloca i32, align 4
  %offset_x.addr = alloca i32, align 4
  %offset_y.addr = alloca i32, align 4
  %layer_set.addr = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %list = alloca %struct._GList*, align 8
  %resize_layers = alloca %struct._GList*, align 8
  %progress_max = alloca double, align 8
  %progress_current = alloca double, align 8
  %old_width = alloca i32, align 4
  %old_height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst50 = alloca %struct._GTypeInstance*, align 8
  %__t52 = alloca i64, align 8
  %__r55 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %item = alloca %struct._GimpItem*, align 8
  %item106 = alloca %struct._GimpItem*, align 8
  %item134 = alloca %struct._GimpItem*, align 8
  %item153 = alloca %struct._GimpItem*, align 8
  %old_offset_x = alloca i32, align 4
  %old_offset_y = alloca i32, align 4
  %guide = alloca %struct._GimpGuide*, align 8
  %remove_guide = alloca i32, align 4
  %new_position = alloca i32, align 4
  %sample_point = alloca %struct._GimpSamplePoint*, align 8
  %remove_sample_point = alloca i32, align 4
  %new_x = alloca i32, align 4
  %new_y = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store i32 %new_width, i32* %new_width.addr, align 4
  store i32 %new_height, i32* %new_height.addr, align 4
  store i32 %offset_x, i32* %offset_x.addr, align 4
  store i32 %offset_y, i32* %offset_y.addr, align 4
  store i32 %layer_set, i32* %layer_set.addr, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double 1.000000e+00, double* %progress_current, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_resize_with_layers, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_resize_with_layers, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load i32, i32* %new_width.addr, align 4
  %cmp40 = icmp sgt i32 %26, 0
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.44

land.lhs.true.41:                                 ; preds = %do.body.39
  %27 = load i32, i32* %new_height.addr, align 4
  %cmp42 = icmp sgt i32 %27, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %land.lhs.true.41
  br label %if.end.45

if.else.44:                                       ; preds = %land.lhs.true.41, %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_resize_with_layers, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end.45:                                        ; preds = %if.then.43
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %28 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp48 = icmp eq %struct._GimpProgress* %28, null
  br i1 %cmp48, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.47
  %29 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %30 = bitcast %struct._GimpProgress* %29 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %30, %struct._GTypeInstance** %__inst50, align 8
  %call53 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call53, i64* %__t52, align 8
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %tobool56 = icmp ne %struct._GTypeInstance* %31, null
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r55, align 4
  br label %if.end.69

if.else.58:                                       ; preds = %lor.lhs.false
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class59 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class59, align 8
  %tobool60 = icmp ne %struct._GTypeClass* %33, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.66

land.lhs.true.61:                                 ; preds = %if.else.58
  %34 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %g_class62 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class62, align 8
  %g_type63 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type63, align 8
  %37 = load i64, i64* %__t52, align 8
  %cmp64 = icmp eq i64 %36, %37
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true.61
  store i32 1, i32* %__r55, align 4
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true.61, %if.else.58
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst50, align 8
  %39 = load i64, i64* %__t52, align 8
  %call67 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %38, i64 %39) #5
  store i32 %call67, i32* %__r55, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.57
  %40 = load i32, i32* %__r55, align 4
  store i32 %40, i32* %tmp70
  %41 = load i32, i32* %tmp70
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.end.69, %do.body.47
  br label %if.end.74

if.else.73:                                       ; preds = %if.end.69
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_image_resize_with_layers, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.74:                                        ; preds = %if.then.72
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_set_busy(%struct._Gimp* %43)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %45 = bitcast %struct._GimpImage* %44 to %struct._GTypeInstance*
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 80)
  %46 = bitcast %struct._GTypeInstance* %call76 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %46)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call77 = call i8* @g_dpgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i64 10)
  %call78 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %47, i32 2, i8* %call77)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %49 = load i32, i32* %layer_set.addr, align 4
  %call79 = call %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage* %48, i32 1, i32 %49)
  store %struct._GList* %call79, %struct._GList** %resize_layers, align 8
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call80 = call %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage* %50)
  %call81 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call80)
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call82 = call %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage* %51)
  %call83 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call82)
  %add = add nsw i32 %call81, %call83
  %52 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call84 = call %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage* %52)
  %call85 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %call84)
  %add86 = add nsw i32 %add, %call85
  %53 = load %struct._GList*, %struct._GList** %resize_layers, align 8
  %call87 = call i32 @g_list_length(%struct._GList* %53)
  %add88 = add i32 %add86, %call87
  %add89 = add i32 %add88, 1
  %conv = uitofp i32 %add89 to double
  store double %conv, double* %progress_max, align 8
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call90 = call i32 @gimp_image_get_width(%struct._GimpImage* %54)
  store i32 %call90, i32* %old_width, align 4
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call91 = call i32 @gimp_image_get_height(%struct._GimpImage* %55)
  store i32 %call91, i32* %old_height, align 4
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %57 = load i32, i32* %offset_x.addr, align 4
  %sub = sub nsw i32 0, %57
  %58 = load i32, i32* %offset_y.addr, align 4
  %sub92 = sub nsw i32 0, %58
  %59 = load i32, i32* %new_width.addr, align 4
  %60 = load i32, i32* %new_height.addr, align 4
  %call93 = call %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage* %56, i8* null, i32 %sub, i32 %sub92, i32 %59, i32 %60)
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %62 = bitcast %struct._GimpImage* %61 to i8*
  %63 = load i32, i32* %new_width.addr, align 4
  %64 = load i32, i32* %new_height.addr, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %64, i8* null)
  %65 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call94 = call %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage* %65)
  store %struct._GList* %call94, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.75
  %66 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool95 = icmp ne %struct._GList* %66, null
  br i1 %tobool95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %67, i32 0, i32 0
  %68 = load i8*, i8** %data, align 8
  %69 = bitcast i8* %68 to %struct._GimpItem*
  store %struct._GimpItem* %69, %struct._GimpItem** %item, align 8
  %70 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %71 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %72 = load i32, i32* %new_width.addr, align 4
  %73 = load i32, i32* %new_height.addr, align 4
  %74 = load i32, i32* %offset_x.addr, align 4
  %75 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %70, %struct._GimpContext* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %76 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool97 = icmp ne %struct._GimpProgress* %76, null
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body
  %77 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %78 = load double, double* %progress_current, align 8
  %inc = fadd double %78, 1.000000e+00
  store double %inc, double* %progress_current, align 8
  %79 = load double, double* %progress_max, align 8
  %div = fdiv double %78, %79
  call void @gimp_progress_set_value(%struct._GimpProgress* %77, double %div)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %80 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool100 = icmp ne %struct._GList* %80, null
  br i1 %tobool100, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %81 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %81, i32 0, i32 1
  %82 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %82, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call101 = call %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage* %83)
  store %struct._GList* %call101, %struct._GList** %list, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %cond.end.118, %for.end
  %84 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool103 = icmp ne %struct._GList* %84, null
  br i1 %tobool103, label %for.body.104, label %for.end.120

for.body.104:                                     ; preds = %for.cond.102
  %85 = load %struct._GList*, %struct._GList** %list, align 8
  %data107 = getelementptr inbounds %struct._GList, %struct._GList* %85, i32 0, i32 0
  %86 = load i8*, i8** %data107, align 8
  %87 = bitcast i8* %86 to %struct._GimpItem*
  store %struct._GimpItem* %87, %struct._GimpItem** %item106, align 8
  %88 = load %struct._GimpItem*, %struct._GimpItem** %item106, align 8
  %89 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %90 = load i32, i32* %new_width.addr, align 4
  %91 = load i32, i32* %new_height.addr, align 4
  %92 = load i32, i32* %offset_x.addr, align 4
  %93 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %88, %struct._GimpContext* %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %94 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool108 = icmp ne %struct._GimpProgress* %94, null
  br i1 %tobool108, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %for.body.104
  %95 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %96 = load double, double* %progress_current, align 8
  %inc110 = fadd double %96, 1.000000e+00
  store double %inc110, double* %progress_current, align 8
  %97 = load double, double* %progress_max, align 8
  %div111 = fdiv double %96, %97
  call void @gimp_progress_set_value(%struct._GimpProgress* %95, double %div111)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %for.body.104
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %98 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool114 = icmp ne %struct._GList* %98, null
  br i1 %tobool114, label %cond.true.115, label %cond.false.117

cond.true.115:                                    ; preds = %for.inc.113
  %99 = load %struct._GList*, %struct._GList** %list, align 8
  %next116 = getelementptr inbounds %struct._GList, %struct._GList* %99, i32 0, i32 1
  %100 = load %struct._GList*, %struct._GList** %next116, align 8
  br label %cond.end.118

cond.false.117:                                   ; preds = %for.inc.113
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.115
  %cond119 = phi %struct._GList* [ %100, %cond.true.115 ], [ null, %cond.false.117 ]
  store %struct._GList* %cond119, %struct._GList** %list, align 8
  br label %for.cond.102

for.end.120:                                      ; preds = %for.cond.102
  %101 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call121 = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %101)
  %102 = bitcast %struct._GimpChannel* %call121 to %struct._GTypeInstance*
  %call122 = call i64 @gimp_item_get_type() #4
  %call123 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %102, i64 %call122)
  %103 = bitcast %struct._GTypeInstance* %call123 to %struct._GimpItem*
  %104 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %105 = load i32, i32* %new_width.addr, align 4
  %106 = load i32, i32* %new_height.addr, align 4
  %107 = load i32, i32* %offset_x.addr, align 4
  %108 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_resize(%struct._GimpItem* %103, %struct._GimpContext* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %109 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool124 = icmp ne %struct._GimpProgress* %109, null
  br i1 %tobool124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %for.end.120
  %110 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %111 = load double, double* %progress_current, align 8
  %inc126 = fadd double %111, 1.000000e+00
  store double %inc126, double* %progress_current, align 8
  %112 = load double, double* %progress_max, align 8
  %div127 = fdiv double %111, %112
  call void @gimp_progress_set_value(%struct._GimpProgress* %110, double %div127)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %for.end.120
  %113 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call129 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %113)
  store %struct._GList* %call129, %struct._GList** %list, align 8
  br label %for.cond.130

for.cond.130:                                     ; preds = %cond.end.146, %if.end.128
  %114 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool131 = icmp ne %struct._GList* %114, null
  br i1 %tobool131, label %for.body.132, label %for.end.148

for.body.132:                                     ; preds = %for.cond.130
  %115 = load %struct._GList*, %struct._GList** %list, align 8
  %data135 = getelementptr inbounds %struct._GList, %struct._GList* %115, i32 0, i32 0
  %116 = load i8*, i8** %data135, align 8
  %117 = bitcast i8* %116 to %struct._GimpItem*
  store %struct._GimpItem* %117, %struct._GimpItem** %item134, align 8
  %118 = load %struct._GimpItem*, %struct._GimpItem** %item134, align 8
  %119 = load i32, i32* %offset_x.addr, align 4
  %120 = load i32, i32* %offset_y.addr, align 4
  call void @gimp_item_translate(%struct._GimpItem* %118, i32 %119, i32 %120, i32 1)
  %121 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool136 = icmp ne %struct._GimpProgress* %121, null
  br i1 %tobool136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %for.body.132
  %122 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %123 = load double, double* %progress_current, align 8
  %inc138 = fadd double %123, 1.000000e+00
  store double %inc138, double* %progress_current, align 8
  %124 = load double, double* %progress_max, align 8
  %div139 = fdiv double %123, %124
  call void @gimp_progress_set_value(%struct._GimpProgress* %122, double %div139)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %for.body.132
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %125 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool142 = icmp ne %struct._GList* %125, null
  br i1 %tobool142, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %for.inc.141
  %126 = load %struct._GList*, %struct._GList** %list, align 8
  %next144 = getelementptr inbounds %struct._GList, %struct._GList* %126, i32 0, i32 1
  %127 = load %struct._GList*, %struct._GList** %next144, align 8
  br label %cond.end.146

cond.false.145:                                   ; preds = %for.inc.141
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.143
  %cond147 = phi %struct._GList* [ %127, %cond.true.143 ], [ null, %cond.false.145 ]
  store %struct._GList* %cond147, %struct._GList** %list, align 8
  br label %for.cond.130

for.end.148:                                      ; preds = %for.cond.130
  %128 = load %struct._GList*, %struct._GList** %resize_layers, align 8
  store %struct._GList* %128, %struct._GList** %list, align 8
  br label %for.cond.149

for.cond.149:                                     ; preds = %cond.end.173, %for.end.148
  %129 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool150 = icmp ne %struct._GList* %129, null
  br i1 %tobool150, label %for.body.151, label %for.end.175

for.body.151:                                     ; preds = %for.cond.149
  %130 = load %struct._GList*, %struct._GList** %list, align 8
  %data154 = getelementptr inbounds %struct._GList, %struct._GList* %130, i32 0, i32 0
  %131 = load i8*, i8** %data154, align 8
  %132 = bitcast i8* %131 to %struct._GimpItem*
  store %struct._GimpItem* %132, %struct._GimpItem** %item153, align 8
  %133 = load %struct._GimpItem*, %struct._GimpItem** %item153, align 8
  %134 = bitcast %struct._GimpItem* %133 to %struct._GTypeInstance*
  %call157 = call i64 @gimp_viewable_get_type() #4
  %call158 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %134, i64 %call157)
  %135 = bitcast %struct._GTypeInstance* %call158 to %struct._GimpViewable*
  %call159 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %135)
  %tobool160 = icmp ne %struct._GimpContainer* %call159, null
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.body.151
  br label %for.inc.168

if.end.162:                                       ; preds = %for.body.151
  %136 = load %struct._GimpItem*, %struct._GimpItem** %item153, align 8
  call void @gimp_item_get_offset(%struct._GimpItem* %136, i32* %old_offset_x, i32* %old_offset_y)
  %137 = load %struct._GimpItem*, %struct._GimpItem** %item153, align 8
  %138 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %139 = load i32, i32* %new_width.addr, align 4
  %140 = load i32, i32* %new_height.addr, align 4
  %141 = load i32, i32* %old_offset_x, align 4
  %142 = load i32, i32* %old_offset_y, align 4
  call void @gimp_item_resize(%struct._GimpItem* %137, %struct._GimpContext* %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %143 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %tobool163 = icmp ne %struct._GimpProgress* %143, null
  br i1 %tobool163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %if.end.162
  %144 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %145 = load double, double* %progress_current, align 8
  %inc165 = fadd double %145, 1.000000e+00
  store double %inc165, double* %progress_current, align 8
  %146 = load double, double* %progress_max, align 8
  %div166 = fdiv double %145, %146
  call void @gimp_progress_set_value(%struct._GimpProgress* %144, double %div166)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %if.end.162
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167, %if.then.161
  %147 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool169 = icmp ne %struct._GList* %147, null
  br i1 %tobool169, label %cond.true.170, label %cond.false.172

cond.true.170:                                    ; preds = %for.inc.168
  %148 = load %struct._GList*, %struct._GList** %list, align 8
  %next171 = getelementptr inbounds %struct._GList, %struct._GList* %148, i32 0, i32 1
  %149 = load %struct._GList*, %struct._GList** %next171, align 8
  br label %cond.end.173

cond.false.172:                                   ; preds = %for.inc.168
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.172, %cond.true.170
  %cond174 = phi %struct._GList* [ %149, %cond.true.170 ], [ null, %cond.false.172 ]
  store %struct._GList* %cond174, %struct._GList** %list, align 8
  br label %for.cond.149

for.end.175:                                      ; preds = %for.cond.149
  %150 = load %struct._GList*, %struct._GList** %resize_layers, align 8
  call void @g_list_free(%struct._GList* %150)
  %151 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call176 = call %struct._GList* @gimp_image_get_guides(%struct._GimpImage* %151)
  store %struct._GList* %call176, %struct._GList** %list, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.215, %for.end.175
  %152 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool177 = icmp ne %struct._GList* %152, null
  br i1 %tobool177, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %153 = load %struct._GList*, %struct._GList** %list, align 8
  %data179 = getelementptr inbounds %struct._GList, %struct._GList* %153, i32 0, i32 0
  %154 = load i8*, i8** %data179, align 8
  %155 = bitcast i8* %154 to %struct._GimpGuide*
  store %struct._GimpGuide* %155, %struct._GimpGuide** %guide, align 8
  store i32 0, i32* %remove_guide, align 4
  %156 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call182 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %156)
  store i32 %call182, i32* %new_position, align 4
  %157 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool183 = icmp ne %struct._GList* %157, null
  br i1 %tobool183, label %cond.true.184, label %cond.false.186

cond.true.184:                                    ; preds = %while.body
  %158 = load %struct._GList*, %struct._GList** %list, align 8
  %next185 = getelementptr inbounds %struct._GList, %struct._GList* %158, i32 0, i32 1
  %159 = load %struct._GList*, %struct._GList** %next185, align 8
  br label %cond.end.187

cond.false.186:                                   ; preds = %while.body
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.186, %cond.true.184
  %cond188 = phi %struct._GList* [ %159, %cond.true.184 ], [ null, %cond.false.186 ]
  store %struct._GList* %cond188, %struct._GList** %list, align 8
  %160 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call189 = call i32 @gimp_guide_get_orientation(%struct._GimpGuide* %160)
  switch i32 %call189, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.198
  ]

sw.bb:                                            ; preds = %cond.end.187
  %161 = load i32, i32* %offset_y.addr, align 4
  %162 = load i32, i32* %new_position, align 4
  %add190 = add nsw i32 %162, %161
  store i32 %add190, i32* %new_position, align 4
  %163 = load i32, i32* %new_position, align 4
  %cmp191 = icmp slt i32 %163, 0
  br i1 %cmp191, label %if.then.196, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %sw.bb
  %164 = load i32, i32* %new_position, align 4
  %165 = load i32, i32* %new_height.addr, align 4
  %cmp194 = icmp sgt i32 %164, %165
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %lor.lhs.false.193, %sw.bb
  store i32 1, i32* %remove_guide, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %lor.lhs.false.193
  br label %sw.epilog

sw.bb.198:                                        ; preds = %cond.end.187
  %166 = load i32, i32* %offset_x.addr, align 4
  %167 = load i32, i32* %new_position, align 4
  %add199 = add nsw i32 %167, %166
  store i32 %add199, i32* %new_position, align 4
  %168 = load i32, i32* %new_position, align 4
  %cmp200 = icmp slt i32 %168, 0
  br i1 %cmp200, label %if.then.205, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %sw.bb.198
  %169 = load i32, i32* %new_position, align 4
  %170 = load i32, i32* %new_width.addr, align 4
  %cmp203 = icmp sgt i32 %169, %170
  br i1 %cmp203, label %if.then.205, label %if.end.206

if.then.205:                                      ; preds = %lor.lhs.false.202, %sw.bb.198
  store i32 1, i32* %remove_guide, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.205, %lor.lhs.false.202
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.187
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.206, %if.end.197
  %171 = load i32, i32* %remove_guide, align 4
  %tobool207 = icmp ne i32 %171, 0
  br i1 %tobool207, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %sw.epilog
  %172 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %173 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  call void @gimp_image_remove_guide(%struct._GimpImage* %172, %struct._GimpGuide* %173, i32 1)
  br label %if.end.215

if.else.209:                                      ; preds = %sw.epilog
  %174 = load i32, i32* %new_position, align 4
  %175 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %call210 = call i32 @gimp_guide_get_position(%struct._GimpGuide* %175)
  %cmp211 = icmp ne i32 %174, %call210
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.else.209
  %176 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %177 = load %struct._GimpGuide*, %struct._GimpGuide** %guide, align 8
  %178 = load i32, i32* %new_position, align 4
  call void @gimp_image_move_guide(%struct._GimpImage* %176, %struct._GimpGuide* %177, i32 %178, i32 1)
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %if.else.209
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.then.208
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %179 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call216 = call %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage* %179)
  store %struct._GList* %call216, %struct._GList** %list, align 8
  br label %while.cond.217

while.cond.217:                                   ; preds = %if.end.263, %while.end
  %180 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool218 = icmp ne %struct._GList* %180, null
  br i1 %tobool218, label %while.body.219, label %while.end.264

while.body.219:                                   ; preds = %while.cond.217
  %181 = load %struct._GList*, %struct._GList** %list, align 8
  %data221 = getelementptr inbounds %struct._GList, %struct._GList* %181, i32 0, i32 0
  %182 = load i8*, i8** %data221, align 8
  %183 = bitcast i8* %182 to %struct._GimpSamplePoint*
  store %struct._GimpSamplePoint* %183, %struct._GimpSamplePoint** %sample_point, align 8
  store i32 0, i32* %remove_sample_point, align 4
  %184 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %184, i32 0, i32 2
  %185 = load i32, i32* %x, align 4
  store i32 %185, i32* %new_x, align 4
  %186 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %186, i32 0, i32 3
  %187 = load i32, i32* %y, align 4
  store i32 %187, i32* %new_y, align 4
  %188 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool225 = icmp ne %struct._GList* %188, null
  br i1 %tobool225, label %cond.true.226, label %cond.false.228

cond.true.226:                                    ; preds = %while.body.219
  %189 = load %struct._GList*, %struct._GList** %list, align 8
  %next227 = getelementptr inbounds %struct._GList, %struct._GList* %189, i32 0, i32 1
  %190 = load %struct._GList*, %struct._GList** %next227, align 8
  br label %cond.end.229

cond.false.228:                                   ; preds = %while.body.219
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.228, %cond.true.226
  %cond230 = phi %struct._GList* [ %190, %cond.true.226 ], [ null, %cond.false.228 ]
  store %struct._GList* %cond230, %struct._GList** %list, align 8
  %191 = load i32, i32* %offset_y.addr, align 4
  %192 = load i32, i32* %new_y, align 4
  %add231 = add nsw i32 %192, %191
  store i32 %add231, i32* %new_y, align 4
  %193 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y232 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %193, i32 0, i32 3
  %194 = load i32, i32* %y232, align 4
  %cmp233 = icmp slt i32 %194, 0
  br i1 %cmp233, label %if.then.239, label %lor.lhs.false.235

lor.lhs.false.235:                                ; preds = %cond.end.229
  %195 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y236 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %195, i32 0, i32 3
  %196 = load i32, i32* %y236, align 4
  %197 = load i32, i32* %new_height.addr, align 4
  %cmp237 = icmp sgt i32 %196, %197
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %lor.lhs.false.235, %cond.end.229
  store i32 1, i32* %remove_sample_point, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.239, %lor.lhs.false.235
  %198 = load i32, i32* %offset_x.addr, align 4
  %199 = load i32, i32* %new_x, align 4
  %add241 = add nsw i32 %199, %198
  store i32 %add241, i32* %new_x, align 4
  %200 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x242 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %200, i32 0, i32 2
  %201 = load i32, i32* %x242, align 4
  %cmp243 = icmp slt i32 %201, 0
  br i1 %cmp243, label %if.then.249, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %if.end.240
  %202 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x246 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %202, i32 0, i32 2
  %203 = load i32, i32* %x246, align 4
  %204 = load i32, i32* %new_width.addr, align 4
  %cmp247 = icmp sgt i32 %203, %204
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %lor.lhs.false.245, %if.end.240
  store i32 1, i32* %remove_sample_point, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.249, %lor.lhs.false.245
  %205 = load i32, i32* %remove_sample_point, align 4
  %tobool251 = icmp ne i32 %205, 0
  br i1 %tobool251, label %if.then.252, label %if.else.253

if.then.252:                                      ; preds = %if.end.250
  %206 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %207 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  call void @gimp_image_remove_sample_point(%struct._GimpImage* %206, %struct._GimpSamplePoint* %207, i32 1)
  br label %if.end.263

if.else.253:                                      ; preds = %if.end.250
  %208 = load i32, i32* %new_x, align 4
  %209 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %x254 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %209, i32 0, i32 2
  %210 = load i32, i32* %x254, align 4
  %cmp255 = icmp ne i32 %208, %210
  br i1 %cmp255, label %if.then.261, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %if.else.253
  %211 = load i32, i32* %new_y, align 4
  %212 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %y258 = getelementptr inbounds %struct._GimpSamplePoint, %struct._GimpSamplePoint* %212, i32 0, i32 3
  %213 = load i32, i32* %y258, align 4
  %cmp259 = icmp ne i32 %211, %213
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %lor.lhs.false.257, %if.else.253
  %214 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %215 = load %struct._GimpSamplePoint*, %struct._GimpSamplePoint** %sample_point, align 8
  %216 = load i32, i32* %new_x, align 4
  %217 = load i32, i32* %new_y, align 4
  call void @gimp_image_move_sample_point(%struct._GimpImage* %214, %struct._GimpSamplePoint* %215, i32 %216, i32 %217, i32 1)
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.261, %lor.lhs.false.257
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %if.then.252
  br label %while.cond.217

while.end.264:                                    ; preds = %while.cond.217
  %218 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call265 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %218)
  %219 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %220 = load i32, i32* %offset_x.addr, align 4
  %221 = load i32, i32* %offset_y.addr, align 4
  %222 = load i32, i32* %old_width, align 4
  %223 = load i32, i32* %old_height, align 4
  call void @gimp_image_size_changed_detailed(%struct._GimpImage* %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %224 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %225 = bitcast %struct._GimpImage* %224 to %struct._GTypeInstance*
  %call266 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %225, i64 80)
  %226 = bitcast %struct._GTypeInstance* %call266 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %226)
  %227 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp267 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %227, i32 0, i32 1
  %228 = load %struct._Gimp*, %struct._Gimp** %gimp267, align 8
  call void @gimp_unset_busy(%struct._Gimp* %228)
  br label %return

return:                                           ; preds = %while.end.264, %if.else.73, %if.else.44, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_context_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gimp_set_busy(%struct._Gimp*) #3

declare void @g_object_freeze_notify(%struct._GObject*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

declare i8* @g_dpgettext(i8*, i8*, i64) #3

declare %struct._GList* @gimp_image_item_list_get_list(%struct._GimpImage*, i32, i32) #3

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #3

declare %struct._GimpContainer* @gimp_image_get_layers(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_channels(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_image_get_vectors(%struct._GimpImage*) #3

declare i32 @g_list_length(%struct._GList*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare %struct._GimpUndo* @gimp_image_undo_push_image_size(%struct._GimpImage*, i8*, i32, i32, i32, i32) #3

declare void @g_object_set(i8*, i8*, ...) #3

declare %struct._GList* @gimp_image_get_channel_iter(%struct._GimpImage*) #3

declare void @gimp_item_resize(%struct._GimpItem*, %struct._GimpContext*, i32, i32, i32, i32) #3

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #3

declare %struct._GList* @gimp_image_get_vectors_iter(%struct._GimpImage*) #3

declare %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage*) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare void @gimp_item_get_offset(%struct._GimpItem*, i32*, i32*) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GList* @gimp_image_get_guides(%struct._GimpImage*) #3

declare i32 @gimp_guide_get_position(%struct._GimpGuide*) #3

declare i32 @gimp_guide_get_orientation(%struct._GimpGuide*) #3

declare void @gimp_image_remove_guide(%struct._GimpImage*, %struct._GimpGuide*, i32) #3

declare void @gimp_image_move_guide(%struct._GimpImage*, %struct._GimpGuide*, i32, i32) #3

declare %struct._GList* @gimp_image_get_sample_points(%struct._GimpImage*) #3

declare void @gimp_image_remove_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32) #3

declare void @gimp_image_move_sample_point(%struct._GimpImage*, %struct._GimpSamplePoint*, i32, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

declare void @gimp_image_size_changed_detailed(%struct._GimpImage*, i32, i32, i32, i32) #3

declare void @g_object_thaw_notify(%struct._GObject*) #3

declare void @gimp_unset_busy(%struct._Gimp*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_resize_to_layers(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %list = alloca %struct._GList*, align 8
  %item = alloca %struct._GimpItem*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %__inst42 = alloca %struct._GTypeInstance*, align 8
  %__t44 = alloca i64, align 8
  %__r47 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_resize_to_layers, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %14 = bitcast %struct._GimpContext* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_context_get_type() #4
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #5
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_resize_to_layers, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %cmp40 = icmp eq %struct._GimpProgress* %26, null
  br i1 %cmp40, label %if.then.64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.39
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst42, align 8
  %call45 = call i64 @gimp_progress_interface_get_type() #4
  store i64 %call45, i64* %__t44, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %tobool48 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool48, label %if.else.50, label %if.then.49

if.then.49:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r47, align 4
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class51 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class51, align 8
  %tobool52 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.else.58

land.lhs.true.53:                                 ; preds = %if.else.50
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %g_type55 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type55, align 8
  %35 = load i64, i64* %__t44, align 8
  %cmp56 = icmp eq i64 %34, %35
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %__r47, align 4
  br label %if.end.60

if.else.58:                                       ; preds = %land.lhs.true.53, %if.else.50
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst42, align 8
  %37 = load i64, i64* %__t44, align 8
  %call59 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #5
  store i32 %call59, i32* %__r47, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.49
  %38 = load i32, i32* %__r47, align 4
  store i32 %38, i32* %tmp62
  %39 = load i32, i32* %tmp62
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61, %do.body.39
  br label %if.end.66

if.else.65:                                       ; preds = %if.end.61
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_image_resize_to_layers, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.66:                                        ; preds = %if.then.64
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %40 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call68 = call %struct._GList* @gimp_image_get_layer_iter(%struct._GimpImage* %40)
  store %struct._GList* %call68, %struct._GList** %list, align 8
  %41 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool69 = icmp ne %struct._GList* %41, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %do.end.67
  br label %return

if.end.71:                                        ; preds = %do.end.67
  %42 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %42, i32 0, i32 0
  %43 = load i8*, i8** %data, align 8
  %44 = bitcast i8* %43 to %struct._GimpItem*
  store %struct._GimpItem* %44, %struct._GimpItem** %item, align 8
  %45 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call72 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %45)
  store i32 %call72, i32* %x, align 4
  %46 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call73 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %46)
  store i32 %call73, i32* %y, align 4
  %47 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call74 = call i32 @gimp_item_get_width(%struct._GimpItem* %47)
  store i32 %call74, i32* %width, align 4
  %48 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call75 = call i32 @gimp_item_get_height(%struct._GimpItem* %48)
  store i32 %call75, i32* %height, align 4
  %49 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool76 = icmp ne %struct._GList* %49, null
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.71
  %50 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %50, i32 0, i32 1
  %51 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %51, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.87, %cond.end
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool77 = icmp ne %struct._GList* %52, null
  br i1 %tobool77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load %struct._GList*, %struct._GList** %list, align 8
  %data78 = getelementptr inbounds %struct._GList, %struct._GList* %53, i32 0, i32 0
  %54 = load i8*, i8** %data78, align 8
  %55 = bitcast i8* %54 to %struct._GimpItem*
  store %struct._GimpItem* %55, %struct._GimpItem** %item, align 8
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %width, align 4
  %59 = load i32, i32* %height, align 4
  %60 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call79 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %60)
  %61 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call80 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %61)
  %62 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call81 = call i32 @gimp_item_get_width(%struct._GimpItem* %62)
  %63 = load %struct._GimpItem*, %struct._GimpItem** %item, align 8
  %call82 = call i32 @gimp_item_get_height(%struct._GimpItem* %63)
  call void @gimp_rectangle_union(i32 %56, i32 %57, i32 %58, i32 %59, i32 %call79, i32 %call80, i32 %call81, i32 %call82, i32* %x, i32* %y, i32* %width, i32* %height)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool83 = icmp ne %struct._GList* %64, null
  br i1 %tobool83, label %cond.true.84, label %cond.false.86

cond.true.84:                                     ; preds = %for.inc
  %65 = load %struct._GList*, %struct._GList** %list, align 8
  %next85 = getelementptr inbounds %struct._GList, %struct._GList* %65, i32 0, i32 1
  %66 = load %struct._GList*, %struct._GList** %next85, align 8
  br label %cond.end.87

cond.false.86:                                    ; preds = %for.inc
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.84
  %cond88 = phi %struct._GList* [ %66, %cond.true.84 ], [ null, %cond.false.86 ]
  store %struct._GList* %cond88, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %68 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %69 = load i32, i32* %width, align 4
  %70 = load i32, i32* %height, align 4
  %71 = load i32, i32* %x, align 4
  %sub = sub nsw i32 0, %71
  %72 = load i32, i32* %y, align 4
  %sub89 = sub nsw i32 0, %72
  %73 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_resize(%struct._GimpImage* %67, %struct._GimpContext* %68, i32 %69, i32 %70, i32 %sub, i32 %sub89, %struct._GimpProgress* %73)
  br label %return

return:                                           ; preds = %for.end, %if.then.70, %if.else.65, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #3

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #3

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare void @gimp_rectangle_union(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #3

; Function Attrs: nounwind uwtable
define void @gimp_image_resize_to_selection(%struct._GimpImage* %image, %struct._GimpContext* %context, %struct._GimpProgress* %progress) #0 {
entry:
  %image.addr = alloca %struct._GimpImage*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %selection = alloca %struct._GimpChannel*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call = call %struct._GimpChannel* @gimp_image_get_mask(%struct._GimpImage* %0)
  store %struct._GimpChannel* %call, %struct._GimpChannel** %selection, align 8
  %1 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call1 = call i32 @gimp_channel_is_empty(%struct._GimpChannel* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpChannel*, %struct._GimpChannel** %selection, align 8
  %call2 = call i32 @gimp_channel_bounds(%struct._GimpChannel* %2, i32* %x1, i32* %y1, i32* %x2, i32* %y2)
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %5 = load i32, i32* %x2, align 4
  %6 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, i32* %y2, align 4
  %8 = load i32, i32* %y1, align 4
  %sub3 = sub nsw i32 %7, %8
  %9 = load i32, i32* %x1, align 4
  %sub4 = sub nsw i32 0, %9
  %10 = load i32, i32* %y1, align 4
  %sub5 = sub nsw i32 0, %10
  %11 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  call void @gimp_image_resize(%struct._GimpImage* %3, %struct._GimpContext* %4, i32 %sub, i32 %sub3, i32 %sub4, i32 %sub5, %struct._GimpProgress* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @gimp_channel_is_empty(%struct._GimpChannel*) #3

declare i32 @gimp_channel_bounds(%struct._GimpChannel*, i32*, i32*, i32*, i32*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
